package asttest

// DO NOT EDIT: This file is autogenerated via the cmpgen command.

import (
	"github.com/google/go-cmp/cmp"
	"github.com/google/go-cmp/cmp/cmpopts"
	"github.com/influxdata/flux/ast"
)

var IgnoreBaseNodeOptions = []cmp.Option{
	cmpopts.IgnoreFields(ast.ArrayExpression{}, "BaseNode"),
	cmpopts.IgnoreFields(ast.ArrayType{}, "BaseNode"),
	cmpopts.IgnoreFields(ast.BadStatement{}, "BaseNode"),
	cmpopts.IgnoreFields(ast.BinaryExpression{}, "BaseNode"),
	cmpopts.IgnoreFields(ast.Block{}, "BaseNode"),
	cmpopts.IgnoreFields(ast.BooleanLiteral{}, "BaseNode"),
	cmpopts.IgnoreFields(ast.BuiltinStatement{}, "BaseNode"),
	cmpopts.IgnoreFields(ast.CallExpression{}, "BaseNode"),
	cmpopts.IgnoreFields(ast.ConditionalExpression{}, "BaseNode"),
	cmpopts.IgnoreFields(ast.DateTimeLiteral{}, "BaseNode"),
	cmpopts.IgnoreFields(ast.DictExpression{}, "BaseNode"),
	cmpopts.IgnoreFields(ast.DictType{}, "BaseNode"),
	cmpopts.IgnoreFields(ast.DurationLiteral{}, "BaseNode"),
	cmpopts.IgnoreFields(ast.ExpressionStatement{}, "BaseNode"),
	cmpopts.IgnoreFields(ast.File{}, "BaseNode"),
	cmpopts.IgnoreFields(ast.FloatLiteral{}, "BaseNode"),
	cmpopts.IgnoreFields(ast.FunctionExpression{}, "BaseNode"),
	cmpopts.IgnoreFields(ast.FunctionType{}, "BaseNode"),
	cmpopts.IgnoreFields(ast.Identifier{}, "BaseNode"),
	cmpopts.IgnoreFields(ast.ImportDeclaration{}, "BaseNode"),
	cmpopts.IgnoreFields(ast.IndexExpression{}, "BaseNode"),
	cmpopts.IgnoreFields(ast.IntegerLiteral{}, "BaseNode"),
	cmpopts.IgnoreFields(ast.InterpolatedPart{}, "BaseNode"),
	cmpopts.IgnoreFields(ast.LogicalExpression{}, "BaseNode"),
	cmpopts.IgnoreFields(ast.MemberAssignment{}, "BaseNode"),
	cmpopts.IgnoreFields(ast.MemberExpression{}, "BaseNode"),
	cmpopts.IgnoreFields(ast.NamedType{}, "BaseNode"),
	cmpopts.IgnoreFields(ast.ObjectExpression{}, "BaseNode"),
	cmpopts.IgnoreFields(ast.OptionStatement{}, "BaseNode"),
	cmpopts.IgnoreFields(ast.Package{}, "BaseNode"),
	cmpopts.IgnoreFields(ast.PackageClause{}, "BaseNode"),
	cmpopts.IgnoreFields(ast.ParameterType{}, "BaseNode"),
	cmpopts.IgnoreFields(ast.ParenExpression{}, "BaseNode"),
	cmpopts.IgnoreFields(ast.PipeExpression{}, "BaseNode"),
	cmpopts.IgnoreFields(ast.PipeLiteral{}, "BaseNode"),
	cmpopts.IgnoreFields(ast.Property{}, "BaseNode"),
	cmpopts.IgnoreFields(ast.PropertyType{}, "BaseNode"),
	cmpopts.IgnoreFields(ast.RecordType{}, "BaseNode"),
	cmpopts.IgnoreFields(ast.RegexpLiteral{}, "BaseNode"),
	cmpopts.IgnoreFields(ast.ReturnStatement{}, "BaseNode"),
	cmpopts.IgnoreFields(ast.StreamType{}, "BaseNode"),
	cmpopts.IgnoreFields(ast.StringExpression{}, "BaseNode"),
	cmpopts.IgnoreFields(ast.StringLiteral{}, "BaseNode"),
	cmpopts.IgnoreFields(ast.TestCaseStatement{}, "BaseNode"),
	cmpopts.IgnoreFields(ast.TestStatement{}, "BaseNode"),
	cmpopts.IgnoreFields(ast.TextPart{}, "BaseNode"),
	cmpopts.IgnoreFields(ast.TvarType{}, "BaseNode"),
	cmpopts.IgnoreFields(ast.TypeConstraint{}, "BaseNode"),
	cmpopts.IgnoreFields(ast.TypeExpression{}, "BaseNode"),
	cmpopts.IgnoreFields(ast.UnaryExpression{}, "BaseNode"),
	cmpopts.IgnoreFields(ast.UnsignedIntegerLiteral{}, "BaseNode"),
	cmpopts.IgnoreFields(ast.VariableAssignment{}, "BaseNode"),
}
