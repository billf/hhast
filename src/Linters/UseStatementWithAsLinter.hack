/*
 *  Copyright (c) 2017-present, Facebook, Inc.
 *  All rights reserved.
 *
 *  This source code is licensed under the MIT license found in the
 *  LICENSE file in the root directory of this source tree.
 *
 */

namespace Facebook\HHAST\Linters;

use type Facebook\HHAST\{NamespaceUseClause, Script};

final class UseStatementWithAsLinter extends ASTLinter<NamespaceUseClause> {
  <<__Override>>
  protected static function getTargetType(): classname<NamespaceUseClause> {
    return NamespaceUseClause::class;
  }

  const type TContext = Script;

  <<__Override>>
  public function getLintErrorForNode(
    Script $_context,
    NamespaceUseClause $node,
  ): ?ASTLintError<NamespaceUseClause> {
    if (!$node->hasAlias()) {
      return null;
    }
    return new ASTLintError(
      $this,
      "Don't use `as` in `use` statements: it makes code less readable and ".
      "less greppable.",
      $node,
    );
  }
}
