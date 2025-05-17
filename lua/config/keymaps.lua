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
  keymap.set("n", "gr", "<cmd>call VSCodeNotify('editor.action.goToReferences')<CR>")
  keymap.set("n", "gD", "<cmd>call VSCodeNotify('editor.action.goToTypeDefinition')<CR>")
  keymap.set("n", "gd", "<cmd>call VSCodeNotify('editor.action.goToDeclaration')<CR>")
  keymap.set("n", "gh", "<cmd>call VSCodeNotify('editor.action.showHover')<CR>")
  keymap.set("n", "gH", "<cmd>call VSCodeNotify('editor.action.referenceSearch.trigger')<CR>")
  keymap.set("n", "gi", "<cmd>call VSCodeNotify('editor.action.goToLastEditLocation')<CR>")
  keymap.set("n", "gI", "<cmd>call VSCodeNotify('editor.action.goToImplementation')<CR>")
  keymap.set("n", "gX", "<cmd>call VSCodeNotify('revealFileInOS')<CR>")
  keymap.set("n", "<leader>sg", "<cmd>call VSCodeNotify('workbench.action.findInFiles')<CR>")
  -- Explorer
  keymap.set(
    "n",
    "<leader>e",
    "<cmd>call VSCodeNotify('workbench.action.toggleSidebarVisibility')<CR>",
    { desc = "Toggle file explorer" }
  )
  keymap.set(
    "n",
    "<leader>E",
    "<cmd>call VSCodeNotify('workbench.view.explorer')<CR>",
    { desc = "Toggle file explorer and focus" }
  )
  -- Code formatting
  keymap.set("n", "<leader>cf", "<cmd>call VSCodeNotify('editor.action.formatDocument')<CR>")

  -- Terminal
  keymap.set("n", "<leader>tt", "<cmd>call VSCodeNotify('workbench.action.terminal.toggleTerminal')<CR>")

  -- bottom panel
  keymap.set(
    "n",
    "<leader>tc",
    '<cmd>call VSCodeNotify("workbench.action.closePanel")<CR>',
    { noremap = true, silent = true }
  )

  -- LSP actions
  keymap.set("n", "<leader>ca", "<cmd>call VSCodeNotify('editor.action.quickFix')<CR>")
  keymap.set("n", "<leader>cr", "<cmd>call VSCodeNotify('editor.action.rename')<CR>")

  -- Run
  keymap.set("n", "<leader>rr", "<cmd>call VSCodeNotify('code-runner.run')<CR>", { desc = "Run code" })

  --Task
  keymap.set("n", "<leader>tr", "<cmd>call VSCodeNotify('workbench.action.tasks.runTask')<CR>", { desc = "Run task" })

  -- Debug
  keymap.set("n", "<leader>da", "<cmd>call VSCodeNotify('workbench.action.debug.start')<CR>", { desc = "Debug: Start/Continue" })
  keymap.set("n", "<leader>dc", "<cmd>call VSCodeNotify('workbench.action.debug.continue')<CR>", { desc = "Debug: Continue" })
  keymap.set("n", "<leader>ds", "<cmd>call VSCodeNotify('workbench.action.debug.stepOver')<CR>", { desc = "Debug: Step Over" })
  keymap.set("n", "<leader>di", "<cmd>call VSCodeNotify('workbench.action.debug.stepInto')<CR>", { desc = "Debug: Step Into" })
  keymap.set("n", "<leader>do", "<cmd>call VSCodeNotify('workbench.action.debug.stepOut')<CR>", { desc = "Debug: Step Out" })
  keymap.set("n", "<leader>db", "<cmd>call VSCodeNotify('editor.debug.action.toggleBreakpoint')<CR>", { desc = "Debug: Toggle Breakpoint" })
  keymap.set("n", "<leader>dB", "<cmd>call VSCodeNotify('editor.debug.action.conditionalBreakpoint')<CR>", { desc = "Debug: Conditional Breakpoint" })
  keymap.set("n", "<leader>dx", "<cmd>call VSCodeNotify('workbench.action.debug.stop')<CR>", { desc = "Debug: Stop" })
  keymap.set("n", "<leader>dr", "<cmd>call VSCodeNotify('workbench.action.debug.restart')<CR>", { desc = "Debug: Restart" })
  keymap.set("n", "<leader>dd", "<cmd>call VSCodeNotify('workbench.action.debug.disconnect')<CR>", { desc = "Debug: Disconnect" })
  keymap.set("n", "<leader>dC", "<cmd>call VSCodeNotify('editor.debug.action.runToCursor')<CR>", { desc = "Debug: Run to Cursor" })

  -- Debug Watch/Evaluate
  keymap.set("n", "<leader>dwa", "<cmd>call VSCodeNotify('editor.debug.action.selectionToWatch')<CR>", { desc = "Debug: Watch word under cursor" })
  keymap.set("v", "<leader>dwa", "<cmd>call VSCodeNotify('editor.debug.action.selectionToWatch')<CR>", { desc = "Debug: Watch selection" })
  keymap.set("n", "<leader>dwp", "<cmd>call VSCodeNotify('workbench.debug.action.focusWatchView')<CR>", { desc = "Debug: Focus Watch view" })
  keymap.set("n", "<leader>dwr", "<cmd>call VSCodeNotify('workbench.debug.viewlet.action.removeAllWatchExpressions')<CR>", { desc = "Debug: Remove watch expression" })
  keymap.set("n", "<leader>dwc", "<cmd>call VSCodeNotify('workbench.debug.viewlet.action.removeAllWatchExpressions')<CR>", { desc = "Debug: Clear all watches" })


  -- Quit
  keymap.set(
    "n",
    "<leader>qq",
    "<cmd>call VSCodeNotify('workbench.action.closeWindow')<CR>;<cmd>call VSCodeNotify('workbench.action.closeFolder')<CR>",
    { desc = "Quit window and close project" }
  )
  keymap.set("n", "<leader>qQ", "<cmd>call VSCodeNotify('workbench.action.quit')<CR>", { desc = "Quit VSCode" })

  -- Fold
  keymap.set("n", "zc", "<cmd>call VSCodeNotify('editor.fold')<CR>")
  keymap.set("n", "zo", "<cmd>call VSCodeNotify('editor.unfold')<CR>")
  keymap.set("n", "zC", "<cmd>call VSCodeNotify('editor.foldAll')<CR>")
  keymap.set("n", "zO", "<cmd>call VSCodeNotify('editor.unfoldAll')<CR>")

  -- Git
  keymap.set("n", "<leader>ghS", "<cmd>call VSCodeNotify('git.stage')<CR>")
  keymap.set("n", "<leader>ghs", "<cmd>call VSCodeNotify('git.stageAll')<CR>")
  keymap.set(
    "n",
    "<leader>ghb",
    "<cmd>call VSCodeNotify('gitlens.toggleLineBlame')<CR>",
    { desc = "Toggle line blame" }
  )
  keymap.set(
    "n",
    "<leader>ghB",
    "<cmd>call VSCodeNotify('gitlens.toggleFileBlame')<CR>",
    { desc = "Toggle file blame" }
  )
  keymap.set("n", "<leader>ghd", "<cmd>call VSCodeNotify('git.openChange')<CR>", { desc = "Open git diff" })
  keymap.set(
    "n",
    "<leader>ghD",
    "<cmd>call VSCodeNotify('gitlens.diffWithPrevious')<CR>",
    { desc = "Show diff of last commit" }
  )

  -- Buffer
  keymap.set(
    "n",
    "<leader>bd",
    "<cmd>call VSCodeNotify('workbench.action.closeActiveEditor')<CR>",
    { desc = "Close current buffer" }
  )
  keymap.set(
    "n",
    "<leader>bD",
    "<cmd>call VSCodeNotify('workbench.action.closeAllEditors')<CR>",
    { desc = "Close all buffers" }
  )


end
