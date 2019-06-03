/**
 * This file is generated. Do not modify it manually!
 *
 * @generated SignedSource<<8f34279a4c1a6fd21bbc06653547c514>>
 */
namespace Facebook\HHAST\__Private;
use namespace Facebook\HHAST;

function node_from_json(
  dict<string, mixed> $json,
  string $file,
  int $offset,
  string $source,
): HHAST\Node {
  $kind = $json["kind"] as string;
  if ($kind === "token") {
    return HHAST\Token::fromJSON(
      $json['token'] as dict<_, _>,
      $file,
      $offset,
      $source,
    );
  }
  $kind_to_class = dict[
    'list' => HHAST\NodeList::class,
    'list_item' => HHAST\ListItem::class,
    'missing' => HHAST\Missing::class,
    'after_halt_compiler' => HHAST\AfterHaltCompiler::class,
    'delimited_comment' => HHAST\DelimitedComment::class,
    'end_of_line' => HHAST\EndOfLine::class,
    'extra_token_error' => HHAST\ExtraTokenError::class,
    'fall_through' => HHAST\FallThrough::class,
    'fix_me' => HHAST\FixMe::class,
    'ignore_error' => HHAST\IgnoreError::class,
    'single_line_comment' => HHAST\SingleLineComment::class,
    'unsafe' => HHAST\Unsafe::class,
    'unsafe_expression' => HHAST\UnsafeExpression::class,
    'whitespace' => HHAST\WhiteSpace::class,
    'alias_declaration' => HHAST\AliasDeclaration::class,
    'alternate_else_clause' => HHAST\AlternateElseClause::class,
    'alternate_elseif_clause' => HHAST\AlternateElseifClause::class,
    'alternate_if_statement' => HHAST\AlternateIfStatement::class,
    'alternate_loop_statement' => HHAST\AlternateLoopStatement::class,
    'alternate_switch_statement' => HHAST\AlternateSwitchStatement::class,
    'anonymous_class' => HHAST\AnonymousClass::class,
    'anonymous_function' => HHAST\AnonymousFunction::class,
    'anonymous_function_use_clause' => HHAST\AnonymousFunctionUseClause::class,
    'array_creation_expression' => HHAST\ArrayCreationExpression::class,
    'array_intrinsic_expression' => HHAST\ArrayIntrinsicExpression::class,
    'as_expression' => HHAST\AsExpression::class,
    'attribute_specification' => HHAST\AttributeSpecification::class,
    'awaitable_creation_expression' => HHAST\AwaitableCreationExpression::class,
    'binary_expression' => HHAST\BinaryExpression::class,
    'braced_expression' => HHAST\BracedExpression::class,
    'break_statement' => HHAST\BreakStatement::class,
    'case_label' => HHAST\CaseLabel::class,
    'cast_expression' => HHAST\CastExpression::class,
    'catch_clause' => HHAST\CatchClause::class,
    'classish_body' => HHAST\ClassishBody::class,
    'classish_declaration' => HHAST\ClassishDeclaration::class,
    'classname_type_specifier' => HHAST\ClassnameTypeSpecifier::class,
    'closure_parameter_type_specifier' =>
      HHAST\ClosureParameterTypeSpecifier::class,
    'closure_type_specifier' => HHAST\ClosureTypeSpecifier::class,
    'collection_literal_expression' => HHAST\CollectionLiteralExpression::class,
    'compound_statement' => HHAST\CompoundStatement::class,
    'concurrent_statement' => HHAST\ConcurrentStatement::class,
    'conditional_expression' => HHAST\ConditionalExpression::class,
    'const_declaration' => HHAST\ConstDeclaration::class,
    'constant_declarator' => HHAST\ConstantDeclarator::class,
    'constructor_call' => HHAST\ConstructorCall::class,
    'continue_statement' => HHAST\ContinueStatement::class,
    'darray_intrinsic_expression' => HHAST\DarrayIntrinsicExpression::class,
    'darray_type_specifier' => HHAST\DarrayTypeSpecifier::class,
    'decorated_expression' => HHAST\DecoratedExpression::class,
    'default_label' => HHAST\DefaultLabel::class,
    'define_expression' => HHAST\DefineExpression::class,
    'dictionary_intrinsic_expression' =>
      HHAST\DictionaryIntrinsicExpression::class,
    'dictionary_type_specifier' => HHAST\DictionaryTypeSpecifier::class,
    'do_statement' => HHAST\DoStatement::class,
    'echo_statement' => HHAST\EchoStatement::class,
    'element_initializer' => HHAST\ElementInitializer::class,
    'else_clause' => HHAST\ElseClause::class,
    'elseif_clause' => HHAST\ElseifClause::class,
    'embedded_braced_expression' => HHAST\EmbeddedBracedExpression::class,
    'embedded_member_selection_expression' =>
      HHAST\EmbeddedMemberSelectionExpression::class,
    'embedded_subscript_expression' => HHAST\EmbeddedSubscriptExpression::class,
    'end_of_file' => HHAST\EndOfFile::class,
    'enum_declaration' => HHAST\EnumDeclaration::class,
    'enumerator' => HHAST\Enumerator::class,
    'error' => HHAST\ErrorSyntax::class,
    'eval_expression' => HHAST\EvalExpression::class,
    'expression_statement' => HHAST\ExpressionStatement::class,
    'field_initializer' => HHAST\FieldInitializer::class,
    'field_specifier' => HHAST\FieldSpecifier::class,
    'file_attribute_specification' => HHAST\FileAttributeSpecification::class,
    'finally_clause' => HHAST\FinallyClause::class,
    'for_statement' => HHAST\ForStatement::class,
    'foreach_statement' => HHAST\ForeachStatement::class,
    'function_call_expression' => HHAST\FunctionCallExpression::class,
    'function_declaration' => HHAST\FunctionDeclaration::class,
    'function_declaration_header' => HHAST\FunctionDeclarationHeader::class,
    'generic_type_specifier' => HHAST\GenericTypeSpecifier::class,
    'goto_label' => HHAST\GotoLabel::class,
    'goto_statement' => HHAST\GotoStatement::class,
    'halt_compiler_expression' => HHAST\HaltCompilerExpression::class,
    'if_statement' => HHAST\IfStatement::class,
    'inclusion_directive' => HHAST\InclusionDirective::class,
    'inclusion_expression' => HHAST\InclusionExpression::class,
    'instanceof_expression' => HHAST\InstanceofExpression::class,
    'is_expression' => HHAST\IsExpression::class,
    'isset_expression' => HHAST\IssetExpression::class,
    'keyset_intrinsic_expression' => HHAST\KeysetIntrinsicExpression::class,
    'keyset_type_specifier' => HHAST\KeysetTypeSpecifier::class,
    'lambda_expression' => HHAST\LambdaExpression::class,
    'lambda_signature' => HHAST\LambdaSignature::class,
    'let_statement' => HHAST\LetStatement::class,
    'like_type_specifier' => HHAST\LikeTypeSpecifier::class,
    'list_expression' => HHAST\ListExpression::class,
    'literal' => HHAST\LiteralExpression::class,
    'map_array_type_specifier' => HHAST\MapArrayTypeSpecifier::class,
    'markup_section' => HHAST\MarkupSection::class,
    'markup_suffix' => HHAST\MarkupSuffix::class,
    'member_selection_expression' => HHAST\MemberSelectionExpression::class,
    'methodish_declaration' => HHAST\MethodishDeclaration::class,
    'methodish_trait_resolution' => HHAST\MethodishTraitResolution::class,
    'namespace_body' => HHAST\NamespaceBody::class,
    'namespace_declaration' => HHAST\NamespaceDeclaration::class,
    'namespace_empty_body' => HHAST\NamespaceEmptyBody::class,
    'namespace_group_use_declaration' =>
      HHAST\NamespaceGroupUseDeclaration::class,
    'namespace_use_clause' => HHAST\NamespaceUseClause::class,
    'namespace_use_declaration' => HHAST\NamespaceUseDeclaration::class,
    'nullable_as_expression' => HHAST\NullableAsExpression::class,
    'nullable_type_specifier' => HHAST\NullableTypeSpecifier::class,
    'object_creation_expression' => HHAST\ObjectCreationExpression::class,
    'parameter_declaration' => HHAST\ParameterDeclaration::class,
    'parenthesized_expression' => HHAST\ParenthesizedExpression::class,
    'php7_anonymous_function' => HHAST\Php7AnonymousFunction::class,
    'pipe_variable' => HHAST\PipeVariableExpression::class,
    'pocket_atom' => HHAST\PocketAtomExpression::class,
    'pocket_atom_mapping' => HHAST\PocketAtomMappingDeclaration::class,
    'pocket_enum_declaration' => HHAST\PocketEnumDeclaration::class,
    'pocket_field_type_declaration' => HHAST\PocketFieldTypeDeclaration::class,
    'pocket_field_type_expr_declaration' =>
      HHAST\PocketFieldTypeExprDeclaration::class,
    'pocket_identifier' => HHAST\PocketIdentifierExpression::class,
    'pocket_mapping_id_declaration' => HHAST\PocketMappingIdDeclaration::class,
    'pocket_mapping_type_declaration' =>
      HHAST\PocketMappingTypeDeclaration::class,
    'postfix_unary_expression' => HHAST\PostfixUnaryExpression::class,
    'prefix_unary_expression' => HHAST\PrefixUnaryExpression::class,
    'prefixed_string' => HHAST\PrefixedStringExpression::class,
    'property_declaration' => HHAST\PropertyDeclaration::class,
    'property_declarator' => HHAST\PropertyDeclarator::class,
    'qualified_name' => HHAST\QualifiedName::class,
    'record_creation_expression' => HHAST\RecordCreationExpression::class,
    'record_declaration' => HHAST\RecordDeclaration::class,
    'record_field' => HHAST\RecordField::class,
    'reified_type_argument' => HHAST\ReifiedTypeArgument::class,
    'require_clause' => HHAST\RequireClause::class,
    'return_statement' => HHAST\ReturnStatement::class,
    'safe_member_selection_expression' =>
      HHAST\SafeMemberSelectionExpression::class,
    'scope_resolution_expression' => HHAST\ScopeResolutionExpression::class,
    'script' => HHAST\Script::class,
    'shape_expression' => HHAST\ShapeExpression::class,
    'shape_type_specifier' => HHAST\ShapeTypeSpecifier::class,
    'simple_initializer' => HHAST\SimpleInitializer::class,
    'simple_type_specifier' => HHAST\SimpleTypeSpecifier::class,
    'soft_type_specifier' => HHAST\SoftTypeSpecifier::class,
    'subscript_expression' => HHAST\SubscriptExpression::class,
    'switch_fallthrough' => HHAST\SwitchFallthrough::class,
    'switch_section' => HHAST\SwitchSection::class,
    'switch_statement' => HHAST\SwitchStatement::class,
    'throw_statement' => HHAST\ThrowStatement::class,
    'trait_use' => HHAST\TraitUse::class,
    'trait_use_alias_item' => HHAST\TraitUseAliasItem::class,
    'trait_use_conflict_resolution' => HHAST\TraitUseConflictResolution::class,
    'trait_use_precedence_item' => HHAST\TraitUsePrecedenceItem::class,
    'try_statement' => HHAST\TryStatement::class,
    'tuple_expression' => HHAST\TupleExpression::class,
    'tuple_type_explicit_specifier' => HHAST\TupleTypeExplicitSpecifier::class,
    'tuple_type_specifier' => HHAST\TupleTypeSpecifier::class,
    'type_arguments' => HHAST\TypeArguments::class,
    'type_const_declaration' => HHAST\TypeConstDeclaration::class,
    'type_constant' => HHAST\TypeConstant::class,
    'type_constraint' => HHAST\TypeConstraint::class,
    'type_parameter' => HHAST\TypeParameter::class,
    'type_parameters' => HHAST\TypeParameters::class,
    'unset_statement' => HHAST\UnsetStatement::class,
    'using_statement_block_scoped' => HHAST\UsingStatementBlockScoped::class,
    'using_statement_function_scoped' =>
      HHAST\UsingStatementFunctionScoped::class,
    'variable' => HHAST\VariableExpression::class,
    'variadic_parameter' => HHAST\VariadicParameter::class,
    'varray_intrinsic_expression' => HHAST\VarrayIntrinsicExpression::class,
    'varray_type_specifier' => HHAST\VarrayTypeSpecifier::class,
    'vector_array_type_specifier' => HHAST\VectorArrayTypeSpecifier::class,
    'vector_intrinsic_expression' => HHAST\VectorIntrinsicExpression::class,
    'vector_type_specifier' => HHAST\VectorTypeSpecifier::class,
    'where_clause' => HHAST\WhereClause::class,
    'where_constraint' => HHAST\WhereConstraint::class,
    'while_statement' => HHAST\WhileStatement::class,
    'xhp_category_declaration' => HHAST\XHPCategoryDeclaration::class,
    'xhp_children_declaration' => HHAST\XHPChildrenDeclaration::class,
    'xhp_children_parenthesized_list' =>
      HHAST\XHPChildrenParenthesizedList::class,
    'xhp_class_attribute' => HHAST\XHPClassAttribute::class,
    'xhp_class_attribute_declaration' =>
      HHAST\XHPClassAttributeDeclaration::class,
    'xhp_close' => HHAST\XHPClose::class,
    'xhp_enum_type' => HHAST\XHPEnumType::class,
    'xhp_expression' => HHAST\XHPExpression::class,
    'xhp_lateinit' => HHAST\XHPLateinit::class,
    'xhp_open' => HHAST\XHPOpen::class,
    'xhp_required' => HHAST\XHPRequired::class,
    'xhp_simple_attribute' => HHAST\XHPSimpleAttribute::class,
    'xhp_simple_class_attribute' => HHAST\XHPSimpleClassAttribute::class,
    'xhp_spread_attribute' => HHAST\XHPSpreadAttribute::class,
    'yield_expression' => HHAST\YieldExpression::class,
    'yield_from_expression' => HHAST\YieldFromExpression::class,
  ];
  $class = $kind_to_class[$kind] ?? null;
  if ($class is nonnull) {
    return $class::fromJSON($json, $file, $offset, $source);
  }
  throw new HHAST\UnsupportedASTNodeError(
    $file,
    $offset,
    (string)$json['kind'],
  );
}
