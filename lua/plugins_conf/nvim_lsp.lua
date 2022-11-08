require'lspconfig'.ansiblels.setup{}

require'lspconfig'.perlnavigator.setup{
    cmd = {'node', '/opt/nvim/repos/PerlNavigator/server/out/server.js', '--stdio'},
    settings = {
      perlnavigator = {
          perlPath = 'perl',
          enableWarnings = true,
          perlcriticEnabled = true,
          perltidyProfile = '/home/pab/.config/nvim/others/.perltidyrc',
          perlcriticProfile = '/home/pab/.config/nvim/others/.perlcriticrc',
          perlcriticEnabled = true,
      }
    }
}

require'lspconfig'.pylsp.setup{}

require'lspconfig'.tsserver.setup{}
