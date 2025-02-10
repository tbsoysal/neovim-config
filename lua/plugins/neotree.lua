return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
    },
  config = function()
    require("neo-tree").setup({
      filesystem = {
        follow_current_file_enabled = true,-- Make Neo-tree follow the file you're working on
        hijack_netrw_behavior = "open_default",  -- Open in the default file explorer
      },
    })
    vim.keymap.set('n', '<leader>e', ':Neotree toggle<CR>', { noremap = true, silent = true })
    vim.keymap.set('n', '<leader>cd', ':Neotree current reveal dir=%:p:h<CR>', { noremap = true, silent = true })
  end
}
