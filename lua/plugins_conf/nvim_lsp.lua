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
          perlcriticEnabled = true,
      }
    }
}

require'lspconfig'.pylsp.setup{}

require'lspconfig'.tsserver.setup{}
