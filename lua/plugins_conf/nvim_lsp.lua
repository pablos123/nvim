require'lspconfig'.ansiblels.setup{}

require'lspconfig'.perlnavigator.setup{
    cmd = {'node', '/opt/nvim/repos/PerlNavigator/server/out/server.js', '--stdio'},
    settings = {
      perlnavigator = {
          perlPath = 'perl',
          enableWarnings = true,
          perlcriticEnabled = true,
          perltidyProfile = '~/.config/nvim/others/.perltidyrc',
          perlcriticProfile = '~/.config/nvim/others/.perlcriticrc',
          perlcriticEnabled = true,
      }
    }
}

require'lspconfig'.pyright.setup{}

require'lspconfig'.tsserver.setup{}
