local F = require 'f'

require 'which-key'.register {
  ['<leader>nc'] = { function() F.nvimtree_cd(F.get_cur_file()) end, 'nvimtree_cd %:h', mode = { 'n', 'v', }, },
  ['<leader>nw'] = { function() F.nvimtree_cd(F.get_cwd()) end, 'nvimtree_cd cwd', mode = { 'n', 'v', }, },
  ['<leader>nu'] = { function() F.nvimtree_cd_sel(F.get_cur_proj_dirs()) end, 'nvimtree_cd sel', mode = { 'n', 'v', }, },
  ['<leader>n<leader>u'] = { function() F.nvimtree_cd_sel_DIRS() end, 'nvimtree_cd sel DIRS', mode = { 'n', 'v', }, },
  ['<leader>no'] = { function() vim.cmd 'NvimTreeOpen' end, 'NvimTreeOpen', mode = { 'n', 'v', }, },
  ['<leader>nq'] = { function() vim.cmd 'NvimTreeClose' end, 'NvimTreeClose', mode = { 'n', 'v', }, },
  ['<leader>np'] = { function() vim.cmd 'NvimTreeFocus' end, 'NvimTreeFocus', mode = { 'n', 'v', }, },
  ['<leader>nd'] = { function() F.nvimtree_findfile() end, 'nvimtree_findfile', mode = { 'n', 'v', }, },
  ['<leader>nf'] = { function() vim.cmd 'NvimTreeFindFile' end, 'nvimtree_findfile_just_update', mode = { 'n', 'v', }, },
}
