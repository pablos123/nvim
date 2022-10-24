require("null-ls").setup({
    sources = {
        require'null-ls'.builtins.diagnostics.ansiblelint,
        require'null-ls'.builtins.diagnostics.pylint,
        require'null-ls'.builtins.diagnostics.cppcheck,
        require'null-ls'.builtins.diagnostics.mypy,
        require'null-ls'.builtins.diagnostics.shellcheck,

        require'null-ls'.builtins.formatting.isort,
        require'null-ls'.builtins.formatting.black,
        -- require'null-ls'.builtins.formatting.perltidy,
        require'null-ls'.builtins.formatting.trim_whitespace,
        require'null-ls'.builtins.formatting.trim_newlines,
    },
    -- Format on save behaviour
    on_attach = function(client, bufnr)
        if client.supports_method("textDocument/formatting") then
            vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
            vim.api.nvim_create_autocmd("BufWritePre", {
                group = augroup,
                buffer = bufnr,
                callback = function()
                    vim.lsp.buf.format({ bufnr = bufnr })
                    -- Just format the file if the formatter is listed in
                    -- the null-ls formatters
                    -- vim.lsp.buf.format({
                    --     bufnr = bufnr,
                    --     filter = function(clients)
                    --         return vim.tbl_filter(
                    --             function(clnt) return clnt.name == "null-ls" end,
                    --             clients
                    --         )
                    --     end
                    -- })
                end,
            })
        end
    end,
})
