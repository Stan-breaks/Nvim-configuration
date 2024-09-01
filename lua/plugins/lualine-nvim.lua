local config = function()
  local theme = require("lualine.themes.gruvbox")
  --set bg transparency in all modes
  if theme.normal.c then
    theme.normal.c.bg = nil
  end
  if theme.insert.c then
    theme.insert.c.bg = nil
  end
  if theme.visual.c then
    theme.visual.c.bg = nil
  end
  if theme.replace.c then
    theme.replace.c.bg = nil
  end
  if theme.command.c then
    theme.command.c.bg = nil
  end

  require("lualine").setup({
    options = {
      theme = theme,
      globalstatus = true,
    },
    tabline = {
      lualine_a = { "mode" },
      lualine_b = { "windows" },
      lualine_c = { "branch", "diagnostics" },
      lualine_x = { "encoding", "fileformat", "filetype" },
      lualine_y = { "progress" },
      lualine_z = { "location" },
    },
    sections = {},
  })
end

return {
  "nvim-lualine/lualine.nvim",
  lazy = false,
  config = config,
}
