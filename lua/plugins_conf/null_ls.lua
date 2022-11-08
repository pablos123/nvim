require("null-ls").setup({
    sources = {
        require'null-ls'.builtins.diagnostics.pylint,
        require'null-ls'.builtins.diagnostics.mypy,
        require'null-ls'.builtins.diagnostics.shellcheck,

        require'null-ls'.builtins.formatting.isort,
        require'null-ls'.builtins.formatting.black,
        require'null-ls'.builtins.formatting.autopep8,
        require'null-ls'.builtins.formatting.trim_whitespace,
        require'null-ls'.builtins.formatting.trim_newlines,
    }
})
