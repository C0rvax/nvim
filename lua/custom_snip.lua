local ls = require("luasnip")
ls.add_snippets("cpp", {
    ls.parser.parse_snippet("classa", "class ${1:MyClass} {\npublic:\n\t$1();\n};")
})
