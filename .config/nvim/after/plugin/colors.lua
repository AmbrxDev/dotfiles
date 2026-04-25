-- ~/.config/nvim/after/plugin/colors.lua
-- Xresources-based Neovim colors, arranged for readability in code

local colors = {

--  fg            = "#a7a7a7",
--  bg            = "#141414",
--  black         = "#2d2d2d",
--  red           = "#9d5b61", -- good for keywords, errors
--  green         = "#2596be", -- good for types, function returns
--  yellow        = "#", -- good for strings
--  blue          = "#606d84", -- good for functions, identifiers
--  magenta       = "#766577", -- good for special/todo
--  cyan          = "#808fa0", -- good for constants, numbers
--  white         = "#9c9a9a",

  --bright_black  = "#141414",
  --bright_red    = "#9d5b61",
  --bright_green  = "#2596be",
  ---bright_yellow = "#b38d6a",
  --bright_blue   = "#606d84",
  --bright_magenta= "#766577",
  --bright_cyan   = "#808fa0",
  --bright_white  = "#9c9a9a",

  fg            = "#DDDDDD", -- foreground (light text)
  bg            = "#000000", -- background (dark background)

  black         = "#000000", -- black
  red           = "#c34043", -- red
  green         = "#76946a", -- green
  yellow        = "#c0a36e", -- yellow
  blue          = "#7e9cd8", -- blue
  magenta       = "#957fb8", -- magenta
  cyan          = "#6a9589", -- cyan
  white         = "#DDDDDD", -- light gray

  bright_black  = "#424149", -- dark gray
  bright_red    = "#e82424", -- bright red
  bright_green  = "#98bb6c", -- bright green
  bright_yellow = "#e6c384", -- bright yellow
  bright_blue   = "#7fb4ca", -- bright blue
  bright_magenta= "#938aa9", -- bright magenta
  bright_cyan   = "#7aa89f", -- bright cyan
  bright_white  = "#DDDDDD", -- bright white






  comment_fg    = "#7d7d7d", -- darker shade for comments
}

function ColorMyPencils()
  vim.cmd("highlight clear")

  -- UI
  vim.api.nvim_set_hl(0, "Normal",      { fg = colors.fg, bg = colors.bg })
  vim.api.nvim_set_hl(0, "NormalFloat", { fg = colors.fg, bg = colors.bg })
  vim.api.nvim_set_hl(0, "CursorLine",  { bg = colors.black })
  vim.api.nvim_set_hl(0, "Comment",     { fg = colors.comment_fg, italic = true }) -- updated

  -- Syntax (balanced for coding)
  vim.api.nvim_set_hl(0, "Statement",   { fg = colors.red, bold = true })     -- if, for, return
  vim.api.nvim_set_hl(0, "Keyword",     { fg = colors.red, bold = true })     -- def, class
  vim.api.nvim_set_hl(0, "Type",        { fg = colors.green })                -- int, float, custom types
  vim.api.nvim_set_hl(0, "Function",    { fg = colors.blue })                 -- function names
  vim.api.nvim_set_hl(0, "Identifier",  { fg = colors.blue })                 -- variables, parameters
  vim.api.nvim_set_hl(0, "Constant",    { fg = colors.cyan })                 -- true, false, nil, numbers
  vim.api.nvim_set_hl(0, "String",      { fg = colors.yellow })               -- strings
  vim.api.nvim_set_hl(0, "PreProc",     { fg = colors.magenta })              -- #include, macros
  vim.api.nvim_set_hl(0, "Special",     { fg = colors.magenta })              -- @decorators, annotations
  vim.api.nvim_set_hl(0, "Underlined",  { fg = colors.blue, underline = true })
  vim.api.nvim_set_hl(0, "Todo",        { fg = colors.yellow, bg = colors.black, bold = true })

  -- Functions, identifiers, directories → use darker blue
  vim.api.nvim_set_hl(0, "Directory",   { fg = colors.blue })

  -- Status line (bottom bar)
  vim.api.nvim_set_hl(0, "StatusLine",   { fg = colors.fg, bg = colors.black })
  vim.api.nvim_set_hl(0, "StatusLineNC", { fg = colors.white, bg = colors.bright_black })
end

-- Apply immediately
ColorMyPencils()
