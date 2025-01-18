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
  --Move
  keymap.set("n", "j", "<cmd>call VSCodeNotify('cursorDown')<CR>")
  keymap.set("n", "k", "<cmd>call VSCodeNotify('cursorUp')<CR>")

  -- Code navigation
  keymap.set('n', 'gr', "<cmd>call VSCodeNotify('editor.action.goToReferences')<CR>")
  keymap.set("n", "gd", "<cmd>call VSCodeNotify('editor.action.goToTypeDefinition')<CR>")
  keymap.set("n", "gD", "<cmd>call VSCodeNotify('editor.action.goToDeclaration')<CR>")
  keymap.set("n", "gh", "<cmd>call VSCodeNotify('editor.action.showHover')<CR>")
  keymap.set("n", "gH", "<cmd>call VSCodeNotify('editor.action.referenceSearch.trigger')<CR>")
  keymap.set("n", "gi", "<cmd>call VSCodeNotify('editor.action.goToLastEditLocation')<CR>")
  keymap.set("n", "gI", "<cmd>call VSCodeNotify('editor.action.goToImplementation')<CR>")
  keymap.set("n", "gX", "<cmd>call VSCodeNotify('revealFileInOS')<CR>")

  -- Explorer
  keymap.set("n", "<leader>e", "<cmd>call VSCodeNotify('workbench.view.explorer')<CR>", { desc = "Toggle file explorer" })
  -- Code formatting
  keymap.set("n", "<leader>cf", "<cmd>call VSCodeNotify('editor.action.formatDocument')<CR>")

  -- Terminal
  keymap.set("n", "<leader>tt", "<cmd>call VSCodeNotify('workbench.action.terminal.toggleTerminal')<CR>")

  -- LSP actions
  keymap.set("n", "<leader>ca", "<cmd>call VSCodeNotify('editor.action.quickFix')<CR>")
  keymap.set("n", "<leader>cr", "<cmd>call VSCodeNotify('editor.action.rename')<CR>")

  -- Debug
  keymap.set("n", "<leader>da", "<cmd>call VSCodeNotify('workbench.action.debug.start')<CR>")
  keymap.set("n", "<leader>dc", "<cmd>call VSCodeNotify('workbench.action.debug.continue')<CR>")
  keymap.set("n", "<leader>dC", "<cmd>call VSCodeNotify('editor.debug.action.runToCursor')<CR>")
  keymap.set("n", "<leader>dd", "<cmd>call VSCodeNotify('workbench.action.debug.disconnect')<CR>")
  keymap.set("n", "<leader>ds", "<cmd>call VSCodeNotify('workbench.action.debug.stepOver')<CR>")
  keymap.set("n", "<leader>db", "<cmd>call VSCodeNotify('editor.debug.action.toggleBreakpoint')<CR>", { desc = "Toggle breakpoint" })
  keymap.set("n", "<leader>dB", "<cmd>call VSCodeNotify('editor.debug.action.conditionalBreakpoint')<CR>", { desc = "Toggle conditional breakpoint" })
  keymap.set("n", "<leader>qq", "<cmd>call VSCodeNotify('workbench.action.quit')<CR>")

  -- Fold
  keymap.set("n", "zc", "<cmd>call VSCodeNotify('editor.fold')<CR>")
  keymap.set("n", "zo", "<cmd>call VSCodeNotify('editor.unfold')<CR>")
  keymap.set("n", "zC", "<cmd>call VSCodeNotify('editor.foldAll')<CR>")
  keymap.set("n", "zO", "<cmd>call VSCodeNotify('editor.unfoldAll')<CR>")

  -- git
  keymap.set("n", "<leader>ghS", "<cmd>call VSCodeNotify('git.stage')<CR>")
  keymap.set("n", "<leader>ghs", "<cmd>call VSCodeNotify('git.stageAll')<CR>")
  keymap.set("n", "<leader>ghb", "<cmd>call VSCodeNotify('gitlens.toggleLineBlame')<CR>", { desc = "Toggle line blame" })
  keymap.set("n", "<leader>ghB", "<cmd>call VSCodeNotify('gitlens.toggleFileBlame')<CR>", { desc = "Toggle file blame" })
  keymap.set("n", "<leader>ghd", "<cmd>call VSCodeNotify('git.openChange')<CR>", { desc = "Open git diff" })


end
