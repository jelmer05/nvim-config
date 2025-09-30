-- Your Copilot config
-- NOTE: to disbale copilot, :Copilot disable
-- NOTE: to enable copilot, :Copilot enable
return {
  "github/copilot.vim",
  event = "InsertEnter",
  config = function()
    -- Disable the default Tab mapping
    vim.g.copilot_no_tab_map = true

    -- Set a custom key mapping to accept Copilot suggestion
    vim.api.nvim_set_keymap("i", "<C-l>", 'copilot#Accept("<CR>")', {
      expr = true,
      silent = true,
      noremap = true,
    })
  end,
}
