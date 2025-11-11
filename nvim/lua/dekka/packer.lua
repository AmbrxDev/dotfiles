-- Only required if you have packer configured as `opt`
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use { "catppuccin/nvim", as = "catppuccin" }

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  use({
    "epwalsh/obsidian.nvim",
    tag = "*", 
    requires = {
        "nvim-lua/plenary.nvim",

           
    },
    config = function()
        require("obsidian").setup({
          workspaces = {
            {
                name = "personal",
                path = "~/vault/personal",
            },
            {
                name = "work",
                path = "~/vault/work",
            },
          },

          alias_as_title = true,
        
          note_id_func = function()
            return os.date("%Y%m%d%H%M")
          end,

          note_frontmatter_func = function(note)
            local an_alias = {note.title}

            return {
                aliases = an_alias,
                tags = "note",
                date = os.date("%Y-%m-%d"),
            }
          end,
        })
    end,
  })

  

  -- If packer was just installed, sync it
  if packer_bootstrap then
    require('packer').sync()
  end
end)
