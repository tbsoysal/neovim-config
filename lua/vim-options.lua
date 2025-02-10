vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set nowrap")
vim.cmd("set smartindent")
vim.cmd("set autoindent")
vim.cmd("set ignorecase")
vim.cmd("set completeopt=menuone,noinsert,noselect")
vim.cmd("set showmatch")

vim.g.mapleader=" "

-- Disable netrw plugin
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.o.fillchars = "eob: "

-- Switch between windows using Ctrl + h/j/k/l
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })

-- Switch between buffers using Shift + h/l
vim.api.nvim_set_keymap('n', '<S-h>', ':bprevious<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-l>', ':bnext<CR>', { noremap = true, silent = true })

-- Close current window and buffer with Ctrl + x
vim.api.nvim_set_keymap('n', '<C-x>', ':bdelete<CR>:close<CR>', { noremap = true, silent = true })


-- Close the current buffer using Shift + x
vim.api.nvim_set_keymap('n', '<S-x>', ':bdelete<CR>', { noremap = true, silent = true })

-- Save with Ctrl + s
vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-s>', '<Esc>:w<CR>', { noremap = true, silent = true })

-- Save and quit all with <leader>q
vim.api.nvim_set_keymap('n', '<leader>q', ':wqa<CR>', { noremap = true, silent = true })

-- no highlight after search with esc 
vim.api.nvim_set_keymap('n', '<Esc>', ':nohlsearch<CR>', { noremap = true, silent = true })
