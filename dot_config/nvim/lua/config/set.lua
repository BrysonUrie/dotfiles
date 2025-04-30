-- Makes space the leader
vim.g.mapleader = " "

-- Makes the cursor a block always
vim.opt.guicursor = "n-v-c-sm:block,i-ci-ve:ver40-Cursor-blinkwait100-blinkon1000-blinkoff100,r-cr-o:hor20"

-- Enables relative line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- Makes tab width 2 spaces
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- Automatically indents
vim.opt.smartindent = true


vim.lsp.set_log_level("debug")

-- Disable line wrapping
vim.opt.wrap = false

-- Disables swap and backup
vim.opt.swapfile = false
vim.opt.backup = false

-- Enables and configures undofile
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Shows search as you're typing not after
vim.opt.incsearch = true
vim.opt.hlsearch = false

-- Enables true color support
vim.opt.termguicolors = true

-- Buts a dark line on the 80th character
vim.opt.colorcolumn = "80"

-- Highlights the line the cursor is on
vim.opt.cursorline = true

-- Shorten the wait for the CursorHold event
vim.opt.updatetime = 50

-- Leaves 8 lines above/below cursor while scrolling
vim.opt.scrolloff = 8

-- Makes the sign column always visable
vim.opt.signcolumn = "yes"

-- I have no idea tbh
vim.opt.isfname:append("@-@")

-- Configure username in instant.nvim
vim.g.instant_username = "brysonurie"

vim.g.markdown_fenced_languages = {
  "ts=typescript",
}

vim.sessionoptions = "blank,buffers,curdir,folds,help,options,tabpages,winsize,terminal"


vim.opt.foldmethod = 'marker'
vim.opt.foldmarker = { '#region', '#endregion' }
vim.opt.foldlevelstart = 99

vim.cmd [[
  augroup transparent_background
    autocmd!
    autocmd VimEnter * hi Normal ctermbg=none guibg=none
    autocmd VimEnter * hi NormalNC ctermbg=none guibg=none
    autocmd VimEnter * hi StatusLine ctermbg=none guibg=none
    autocmd VimEnter * hi VertSplit ctermbg=none guibg=none
    autocmd VimEnter * hi SignColumn ctermbg=none guibg=none
  augroup END
]]
