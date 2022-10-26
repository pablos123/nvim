-- I'm executin ansible lint with null ls all non-ls diagnostic i prefer
-- doing it that way
require'lspconfig'.ansiblels.setup({
    ansibleLint = {
      enabled = false,
    },
})

require'lspconfig'.perlnavigator.setup{
    cmd = {'node', '/opt/nvim/repos/PerlNavigator/server/out/server.js', '--stdio'},
    settings = {
      perlnavigator = {
          perlPath = 'perl',
          enableWarnings = true,
          -- perltidyProfile = '',
          -- perlcriticProfile = '',
          perlcriticEnabled = true,
      }
    }
}

-- disabling the format capabilities of the lsp to no get a prompt asking
-- if i want to format with pylsp or null-ls
require'lspconfig'.pylsp.setup({
  on_attach = function(client)
      client.server_capabilities.document_formatting = false
      client.server_capabilities.document_range_formatting = false
  end,
})

local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")

require'lspconfig'.sumneko_lua.setup {
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
        -- Setup your lua path
        path = runtime_path,
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim', 'augroup'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}

require'lspconfig'.tsserver.setup{}
