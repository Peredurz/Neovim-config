require("user.set")
require("user.lsp")
require("user.autopairs")
require("user.cmp")

require'nvim-treesitter.configs'.setup{
	ensure_installed = {"python"},
	  -- Install parsers synchronously (only applied to `ensure_installed`)
	  sync_install = false,

	  -- Automatically install missing parsers when entering buffer
	  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
	  auto_install = true,

	  -- List of parsers to ignore installing (for "all")
	  ignore_install = { "javascript" },

	  ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
	  -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

	  highlight = {
		-- `false` will disable the whole extension
		enable = true,
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}

vim.g.clipboard = {
  name = "win32yank-wsl",
  copy = {
    ["+"] = "win32yank.exe -i --crlf",
    ["*"] = "win32yank.exe -i --crlf"
  },
  paste = {
    ["+"] = "win32yank.exe -o --crlf",
    ["*"] = "win32yank.exe -o --crlf"
  },
  cache_enable = 0,
}

vim.opt.clipboard = "unnamedplus"

local nnoremap = require("user.keymap").nnoremap
local vnoremap = require("user.keymap").vnoremap
local inoremap = require("user.keymap").inoremap
local tnoremap = require("user.keymap").tnoremap
local xnoremap = require("user.keymap").xnoremap


--Shortcut naar built-in filebrowser van nvim
nnoremap("w;", "<cmd>Ex<CR>")

--Je kan dingen highlighten met een /'woord dat je wil highlighten' te doen
nnoremap("n", "nzz")--Naar de volgende highlight
nnoremap("N", "NZZ")--Naar de vorige highlight
nnoremap("j", "gj")
nnoremap("k", "gk")

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

vim.opt.clipboard = "unnamedplus"

-- empty setup using defaults
require("nvim-tree").setup()

-- Show NvimTree
vim.g.mapleader = " "
nnoremap("<leader>te", "<CMD>NvimTreeToggle<CR>")
nnoremap("<leader>tf", "<CMD>NvimTreeFocus<CR>")


vim.g.clipboard = {
  name = "win32yank-wsl",
  copy = {
    ["+"] = "win32yank.exe -i --crlf",
    ["*"] = "win32yank.exe -i --crlf"
  },
  paste = {
    ["+"] = "win32yank.exe -o --crlf",
    ["*"] = "win32yank.exe -o --crlf"
  },
  cache_enable = 1,
}

