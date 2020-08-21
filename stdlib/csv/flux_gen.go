// DO NOT EDIT: This file is autogenerated via the builtin command.

package csv

import (
	ast "github.com/influxdata/flux/ast"
	runtime "github.com/influxdata/flux/runtime"
)

func init() {
	runtime.RegisterPackage(pkgAST)
}

var pkgAST = &ast.Package{
	BaseNode: ast.BaseNode{
		Errors: nil,
		Loc:    nil,
	},
	Files: []*ast.File{&ast.File{
		BaseNode: ast.BaseNode{
			Errors: nil,
			Loc: &ast.SourceLocation{
				End: ast.Position{
					Column: 13,
					Line:   3,
				},
				File:   "csv.flux",
				Source: "package csv\n\nbuiltin from",
				Start: ast.Position{
					Column: 1,
					Line:   1,
				},
			},
		},
		Body: []ast.Statement{&ast.BuiltinStatement{
			BaseNode: ast.BaseNode{
				Errors: nil,
				Loc: &ast.SourceLocation{
					End: ast.Position{
						Column: 13,
						Line:   3,
					},
					File:   "csv.flux",
					Source: "builtin from",
					Start: ast.Position{
						Column: 1,
						Line:   3,
					},
				},
			},
			ID: &ast.Identifier{
				BaseNode: ast.BaseNode{
					Errors: nil,
					Loc: &ast.SourceLocation{
						End: ast.Position{
							Column: 13,
							Line:   3,
						},
						File:   "csv.flux",
						Source: "from",
						Start: ast.Position{
							Column: 9,
							Line:   3,
						},
					},
				},
				Name: "from",
			},
			Ty: ast.TypeExpression{
				BaseNode: ast.BaseNode{
					Errors: nil,
					Loc: &ast.SourceLocation{
						End: ast.Position{
							Column: 68,
							Line:   3,
						},
						File:   "csv.flux",
						Source: "(?csv: string, ?file: string) => [A] where A: Record",
						Start: ast.Position{
							Column: 16,
							Line:   3,
						},
					},
				},
				Constraints: []*ast.TypeConstraint{&ast.TypeConstraint{
					BaseNode: ast.BaseNode{
						Errors: nil,
						Loc: &ast.SourceLocation{
							End: ast.Position{
								Column: 68,
								Line:   3,
							},
							File:   "csv.flux",
							Source: "A: Record",
							Start: ast.Position{
								Column: 59,
								Line:   3,
							},
						},
					},
					Kinds: []*ast.Identifier{&ast.Identifier{
						BaseNode: ast.BaseNode{
							Errors: nil,
							Loc: &ast.SourceLocation{
								End: ast.Position{
									Column: 68,
									Line:   3,
								},
								File:   "csv.flux",
								Source: "Record",
								Start: ast.Position{
									Column: 62,
									Line:   3,
								},
							},
						},
						Name: "Record",
					}},
					Tvar: &ast.Identifier{
						BaseNode: ast.BaseNode{
							Errors: nil,
							Loc: &ast.SourceLocation{
								End: ast.Position{
									Column: 60,
									Line:   3,
								},
								File:   "csv.flux",
								Source: "A",
								Start: ast.Position{
									Column: 59,
									Line:   3,
								},
							},
						},
						Name: "A",
					},
				}},
				Ty: &ast.FunctionType{
					BaseNode: ast.BaseNode{
						Errors: nil,
						Loc: &ast.SourceLocation{
							End: ast.Position{
								Column: 52,
								Line:   3,
							},
							File:   "csv.flux",
							Source: "(?csv: string, ?file: string) => [A]",
							Start: ast.Position{
								Column: 16,
								Line:   3,
							},
						},
					},
					Parameters: []*ast.ParameterType{&ast.ParameterType{
						BaseNode: ast.BaseNode{
							Errors: nil,
							Loc: &ast.SourceLocation{
								End: ast.Position{
									Column: 29,
									Line:   3,
								},
								File:   "csv.flux",
								Source: "?csv: string",
								Start: ast.Position{
									Column: 17,
									Line:   3,
								},
							},
						},
						Kind: "Optional",
						Name: &ast.Identifier{
							BaseNode: ast.BaseNode{
								Errors: nil,
								Loc: &ast.SourceLocation{
									End: ast.Position{
										Column: 21,
										Line:   3,
									},
									File:   "csv.flux",
									Source: "csv",
									Start: ast.Position{
										Column: 18,
										Line:   3,
									},
								},
							},
							Name: "csv",
						},
						Ty: &ast.NamedType{
							BaseNode: ast.BaseNode{
								Errors: nil,
								Loc: &ast.SourceLocation{
									End: ast.Position{
										Column: 29,
										Line:   3,
									},
									File:   "csv.flux",
									Source: "string",
									Start: ast.Position{
										Column: 23,
										Line:   3,
									},
								},
							},
							ID: &ast.Identifier{
								BaseNode: ast.BaseNode{
									Errors: nil,
									Loc: &ast.SourceLocation{
										End: ast.Position{
											Column: 29,
											Line:   3,
										},
										File:   "csv.flux",
										Source: "string",
										Start: ast.Position{
											Column: 23,
											Line:   3,
										},
									},
								},
								Name: "string",
							},
						},
					}, &ast.ParameterType{
						BaseNode: ast.BaseNode{
							Errors: nil,
							Loc: &ast.SourceLocation{
								End: ast.Position{
									Column: 44,
									Line:   3,
								},
								File:   "csv.flux",
								Source: "?file: string",
								Start: ast.Position{
									Column: 31,
									Line:   3,
								},
							},
						},
						Kind: "Optional",
						Name: &ast.Identifier{
							BaseNode: ast.BaseNode{
								Errors: nil,
								Loc: &ast.SourceLocation{
									End: ast.Position{
										Column: 36,
										Line:   3,
									},
									File:   "csv.flux",
									Source: "file",
									Start: ast.Position{
										Column: 32,
										Line:   3,
									},
								},
							},
							Name: "file",
						},
						Ty: &ast.NamedType{
							BaseNode: ast.BaseNode{
								Errors: nil,
								Loc: &ast.SourceLocation{
									End: ast.Position{
										Column: 44,
										Line:   3,
									},
									File:   "csv.flux",
									Source: "string",
									Start: ast.Position{
										Column: 38,
										Line:   3,
									},
								},
							},
							ID: &ast.Identifier{
								BaseNode: ast.BaseNode{
									Errors: nil,
									Loc: &ast.SourceLocation{
										End: ast.Position{
											Column: 44,
											Line:   3,
										},
										File:   "csv.flux",
										Source: "string",
										Start: ast.Position{
											Column: 38,
											Line:   3,
										},
									},
								},
								Name: "string",
							},
						},
					}},
					Return: &ast.ArrayType{
						BaseNode: ast.BaseNode{
							Errors: nil,
							Loc: &ast.SourceLocation{
								End: ast.Position{
									Column: 52,
									Line:   3,
								},
								File:   "csv.flux",
								Source: "[A]",
								Start: ast.Position{
									Column: 49,
									Line:   3,
								},
							},
						},
						ElementType: &ast.TvarType{
							BaseNode: ast.BaseNode{
								Errors: nil,
								Loc: &ast.SourceLocation{
									End: ast.Position{
										Column: 51,
										Line:   3,
									},
									File:   "csv.flux",
									Source: "A",
									Start: ast.Position{
										Column: 50,
										Line:   3,
									},
								},
							},
							ID: &ast.Identifier{
								BaseNode: ast.BaseNode{
									Errors: nil,
									Loc: &ast.SourceLocation{
										End: ast.Position{
											Column: 51,
											Line:   3,
										},
										File:   "csv.flux",
										Source: "A",
										Start: ast.Position{
											Column: 50,
											Line:   3,
										},
									},
								},
								Name: "A",
							},
						},
					},
				},
			},
		}},
		Imports:  nil,
		Metadata: "parser-type=rust",
		Name:     "csv.flux",
		Package: &ast.PackageClause{
			BaseNode: ast.BaseNode{
				Errors: nil,
				Loc: &ast.SourceLocation{
					End: ast.Position{
						Column: 12,
						Line:   1,
					},
					File:   "csv.flux",
					Source: "package csv",
					Start: ast.Position{
						Column: 1,
						Line:   1,
					},
				},
			},
			Name: &ast.Identifier{
				BaseNode: ast.BaseNode{
					Errors: nil,
					Loc: &ast.SourceLocation{
						End: ast.Position{
							Column: 12,
							Line:   1,
						},
						File:   "csv.flux",
						Source: "csv",
						Start: ast.Position{
							Column: 9,
							Line:   1,
						},
					},
				},
				Name: "csv",
			},
		},
	}},
	Package: "csv",
	Path:    "csv",
}
