local custom_theme = {
  normal = {
    a = { bg = "NONE", fg = "#ffffff" }, -- Transparent background
    b = { bg = "NONE", fg = "#ffffff" },
    c = { bg = "NONE", fg = "#ffffff" },
  },
  insert = {
    a = { bg = "NONE", fg = "#ffffff" },
    b = { bg = "NONE", fg = "#ffffff" },
    c = { bg = "NONE", fg = "#ffffff" },
  },
  visual = {
    a = { bg = "NONE", fg = "#ffffff" },
    b = { bg = "NONE", fg = "#ffffff" },
    c = { bg = "NONE", fg = "#ffffff" },
  },
  replace = {
    a = { bg = "NONE", fg = "#ffffff" },
    b = { bg = "NONE", fg = "#ffffff" },
    c = { bg = "NONE", fg = "#ffffff" },
  },
  command = {
    a = { bg = "NONE", fg = "#ffffff" },
    b = { bg = "NONE", fg = "#ffffff" },
    c = { bg = "NONE", fg = "#ffffff" },
  },
}

return {
  "nvim-lualine/lualine.nvim",
  opts = {
    options = {
      theme = custom_theme,
      component_separators = { left = "|", right = "|" },
      section_separators = { left = "", right = "" },
      disabled_filetypes = { "alpha" },
    },
    sections = {
      lualine_a = { "mode" },
      lualine_b = { "branch", "diff", "diagnostics" },
      lualine_c = { "filename" },
      lualine_x = { "encoding", "fileformat", "filetype" },
      lualine_y = { "progress" },
      lualine_z = { "location" },
    },
    inactive_sections = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = { "filename" },
      lualine_x = { "location" },
      lualine_y = {},
      lualine_z = {},
    },
    tabline = {},
    extensions = {},
  },
}
