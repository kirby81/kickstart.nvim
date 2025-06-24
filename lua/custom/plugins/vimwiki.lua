return {
  'vimwiki/vimwiki',
  init = function()
    vim.g.vimwiki_list = {
      {
        path = '~/.docs/vimwiki',
        syntax = 'default',
        nested_syntaxes = {
          python = 'python',
          ['c++'] = 'cpp',
          sql = 'sql',
        },
        ext = '.wiki',
      },
    }
    vim.api.nvim_create_autocmd('FileType', {
      pattern = 'vimwiki',
      callback = function()
        vim.opt.tabstop = 4 -- Number of spaces for a tab
        vim.opt.shiftwidth = 4 -- Indentation width
        vim.opt.softtabstop = 4 -- Spaces when pressing Tab in insert mode
        vim.opt.expandtab = false -- Convert tabs to spaces
      end,
    })
  end,
}
