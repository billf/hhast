/*
 *  Copyright (c) 2017-present, Facebook, Inc.
 *  All rights reserved.
 *
 *  This source code is licensed under the MIT license found in the
 *  LICENSE file in the root directory of this source tree.
 *
 */

namespace Facebook\HHAST\Linters;

use namespace HH\Lib\{C, Vec, Str};
use type Facebook\HHAST\{
  AwaitToken,
  IHasFunctionBody,
  ILoopStatement,
  PrefixUnaryExpression,
};
use function Facebook\HHAST\find_position;

final class DontAwaitInALoopLinter
  extends ASTLinter<PrefixUnaryExpression> {

  const type TContext = ILoopStatement;

  <<__Override>>
  protected static function getTargetType(): classname<PrefixUnaryExpression> {
    return PrefixUnaryExpression::class;
  }

  <<__Override>>
  public function getLintErrorForNode(
    ILoopStatement $context,
    PrefixUnaryExpression $node,
  ): ?ASTLintError<PrefixUnaryExpression> {
    if (!$node->getOperator() instanceof AwaitToken) {
      return null;
    }
    $parents = $context->getAncestorsOfDescendant($node);
    if (C\any($parents, $p ==> $p instanceof IHasFunctionBody)) {
      return null;
    }

    return new ASTLintError(
      $this,
      "Don't use await in a loop",
      $node,
    );
  }

  <<__Override>>
  public function getPrettyTextForNode(
    PrefixUnaryExpression $blame,
  ): string {
    $loops = $this->getAST()->getAncestorsOfDescendant($blame)
      |> Vec\map($$, $x ==> $x instanceof ILoopStatement ? $x : null)
      |> Vec\filter_nulls($$);

    $lines = $this->getFile()->getContents() |> Str\split($$, "\n");

    list(
      $blame_line,
      $_col,
    ) = find_position($this->getAST(), $blame);

    if (C\count($loops) === 1) {
      list(
        $line,
        $_col,
      ) = find_position($this->getAST(), C\onlyx($loops));
      if ($line === $blame_line) {
        return $lines[$line - 1];
      }
    }

    $output = vec[];
    foreach ($loops as $loop) {
      list(
        $line,
        $_col,
      ) = find_position($this->getAST(), $loop);
      $output[] = 'Line '.$line.': '.$lines[$line - 1];
    }
    $output[] = 'Line '.$blame_line.': '.$lines[$blame_line - 1];

    return Str\join($output, "\n");
  }
}
