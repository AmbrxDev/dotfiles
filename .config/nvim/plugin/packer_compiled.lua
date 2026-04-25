-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/_/.cache/nvim/packer_hererocks/2.1.1748459687/share/lua/5.1/?.lua;/home/_/.cache/nvim/packer_hererocks/2.1.1748459687/share/lua/5.1/?/init.lua;/home/_/.cache/nvim/packer_hererocks/2.1.1748459687/lib/luarocks/rocks-5.1/?.lua;/home/_/.cache/nvim/packer_hererocks/2.1.1748459687/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/_/.cache/nvim/packer_hererocks/2.1.1748459687/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  catppuccin = {
    loaded = true,
    path = "/home/_/.local/share/nvim/site/pack/packer/start/catppuccin",
    url = "https://github.com/catppuccin/nvim"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/_/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["obsidian.nvim"] = {
    config = { "\27LJ\2\n*\0\0\3\0\3\0\0046\0\0\0009\0\1\0'\2\2\0D\0\2\0\15%Y%m%d%H%M\tdate\aosn\0\1\6\0\6\0\v4\1\3\0009\2\0\0>\2\1\0015\2\1\0=\1\2\0026\3\3\0009\3\4\3'\5\5\0B\3\2\2=\3\4\2L\2\2\0\r%Y-%m-%d\tdate\aos\faliases\1\0\3\faliases\0\tdate\0\ttags\tnote\ntitleœ\2\1\0\5\0\v\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\5\0004\3\3\0005\4\3\0>\4\1\0035\4\4\0>\4\2\3=\3\6\0023\3\a\0=\3\b\0023\3\t\0=\3\n\2B\0\2\1K\0\1\0\26note_frontmatter_func\0\17note_id_func\0\15workspaces\1\0\4\26note_frontmatter_func\0\19alias_as_title\2\15workspaces\0\17note_id_func\0\1\0\2\tname\twork\tpath\17~/vault/work\1\0\2\tname\rpersonal\tpath\21~/vault/personal\nsetup\robsidian\frequire\0" },
    loaded = true,
    path = "/home/_/.local/share/nvim/site/pack/packer/start/obsidian.nvim",
    url = "https://github.com/epwalsh/obsidian.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/_/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/_/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/_/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: obsidian.nvim
time([[Config for obsidian.nvim]], true)
try_loadstring("\27LJ\2\n*\0\0\3\0\3\0\0046\0\0\0009\0\1\0'\2\2\0D\0\2\0\15%Y%m%d%H%M\tdate\aosn\0\1\6\0\6\0\v4\1\3\0009\2\0\0>\2\1\0015\2\1\0=\1\2\0026\3\3\0009\3\4\3'\5\5\0B\3\2\2=\3\4\2L\2\2\0\r%Y-%m-%d\tdate\aos\faliases\1\0\3\faliases\0\tdate\0\ttags\tnote\ntitleœ\2\1\0\5\0\v\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\5\0004\3\3\0005\4\3\0>\4\1\0035\4\4\0>\4\2\3=\3\6\0023\3\a\0=\3\b\0023\3\t\0=\3\n\2B\0\2\1K\0\1\0\26note_frontmatter_func\0\17note_id_func\0\15workspaces\1\0\4\26note_frontmatter_func\0\19alias_as_title\2\15workspaces\0\17note_id_func\0\1\0\2\tname\twork\tpath\17~/vault/work\1\0\2\tname\rpersonal\tpath\21~/vault/personal\nsetup\robsidian\frequire\0", "config", "obsidian.nvim")
time([[Config for obsidian.nvim]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
