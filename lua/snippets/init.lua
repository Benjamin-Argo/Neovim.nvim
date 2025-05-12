local ls = require 'luasnip'

-- Load snippets from files
ls.add_snippets('typescriptreact', require 'snippets.typescriptreact')

-- Optional: You can also set up filetype detection for tsx files
vim.api.nvim_create_autocmd('FileType', {
  pattern = 'typescript,typescriptreact',
  callback = function()
    vim.bo.filetype = 'typescriptreact'
  end,
})
