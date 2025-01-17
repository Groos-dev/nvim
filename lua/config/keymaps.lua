-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap

keymap.set("i", "jk", "<Esc>", { desc = "Normal mode" })
keymap.set("i", ";;", "<C-o>", { desc = "Normal mode single operation" })

keymap.set("n", "<leader>sv", "<C-W>v")
keymap.set("n", "<leader>tt", "<cmd>ToggleTerm<cr>")
keymap.set("n", "<C-j>", "<cmd>TmuxNavigateDown<cr>")
keymap.set("n", "<C-k>", "<cmd>TmuxNavigateUp<cr>")

-- -- tab nav
-- keymap.set("n", "<leader>tn", "<cmd>tabnext<cr>")
-- keymap.set("n", "<leader>tp", "<cmd>tabprev<cr>")
-- keymap.set("n", "<leader>tl", "<cmd>tablast<cr>")
-- keymap.set("n", "<leader>tf", "<cmd>tabfirst<cr>")
--
-- -- telescope general
-- keymap.set("n", "<leader>lds", "<cmd>Telescope lsp_document_symbols<cr>")
-- keymap.set("n", "<leader>tgf", "<cmd>Telescope lsp_references<cr>")
-- keymap.set("n", "<leader>cbf", "<cmd>Telescope current_buffer_fuzzy_find<cr>")
-- -- telescope git commands
-- keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>") -- list all git commits (use <cr> to checkout) ["gc" for git commits]
-- keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
-- keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>") -- list git branches (use <cr> to checkout) ["gb" for git branch]
-- keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>") -- list current changes per file with diff preview ["gs" for git status]
--
-- -- telescope file
-- keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<CR>")
-- -- rust-tools
-- keymap.set("n", "<leader>ha", "<cmd>RustHoverActions<cr>") -- list current changes per file with diff preview ["gs" for git status]

-- lsp saga
keymap.set("n", "gp", "<cmd>Lspsaga peek_definition<CR>")
keymap.set("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>")
keymap.set("n", "[d", "<cmd>Lspsaga diagnostic_jump_prev<CR>") -- jump to previous diagnostic in buffer
keymap.set("n", "]d", "<cmd>Lspsaga diagnostic_jump_next<CR>")

-- keymap
keymap.set("n", "<leader>hw", ":HopWord<cr>")
keymap.set("n", "<leader>hww", ":HopWordMW<cr>")
keymap.set("n", "<leader>hc", ":HopChar1<cr>")
keymap.set("n", "<leader>hcw", ":HopChar1MW<cr>")

keymap.set("n", "<leader>ge", "<cmd>ChatGPTEditWithInstructions<cr>")
keymap.set("n", "gh", "<cmd>Lspsaga peek_definition<CR>")

-- emmet
keymap.set("i", "<C-e>", "<Plug>(emmet-expand-abbr)")

-- VSCode specific keymaps when running in VSCode with Neovim
if vim.g.vscode then
  local vscode = require('vscode')

  -- Code navigation
  keymap.set("n", "gh", "<cmd>call VSCodeNotify('editor.action.showHover')<CR>")
  keymap.set("n", "gd", "<cmd>call VSCodeNotify('editor.action.revealDefinition')<CR>")
  keymap.set("n", "gf", "<cmd>call VSCodeNotify('editor.action.revealDeclaration')<CR>")
  keymap.set("n", "gH", "<cmd>call VSCodeNotify('editor.action.referenceSearch.trigger')<CR>")

  -- Code formatting
  keymap.set("n", "<leader>cf", "<cmd>call VSCodeNotify('editor.action.formatDocument')<CR>")
-- Window management
  keymap.set("n", "<C-w>v", "<cmd>call VSCodeNotify('workbench.action.splitEditor')<CR>")
  keymap.set("n", "<C-w>s", "<cmd>call VSCodeNotify('workbench.action.splitEditorDown')<CR>")

  -- Terminal
  keymap.set("n", "<leader>tt", "<cmd>call VSCodeNotify('workbench.action.terminal.toggleTerminal')<CR>")

  -- LSP actions
  keymap.set("n", "<leader>ca", "<cmd>call VSCodeNotify('editor.action.quickFix')<CR>")
  keymap.set("n", "<leader>rn", "<cmd>call VSCodeNotify('editor.action.rename')<CR>")
end
