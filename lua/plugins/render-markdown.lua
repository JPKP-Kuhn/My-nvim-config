return {
  "MeanderingProgrammer/render-markdown.nvim",
  -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' }, -- if you use the mini.nvim suite
  -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
  dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" }, -- if you prefer nvim-web-devicons
  ---@module 'render-markdown'
  --@type render.md.UserConfig
  ft = { "markdown" },
  opts = {
    enabled = true,
  },
  config = function(_, opts)
    require("render-markdown").setup({
      opts,
      heading = {
        enabled = true,
        render_modes = false,
        atx = true,
        setext = true,
        sign = true,
        icons = { '󰲡 ', '󰲣 ', '󰲥 ', '󰲧 ', '󰲩 ', '󰲫 ' },
        position = 'overlay',
        signs = { '󰫎 ' },
        width = 'full',
        left_margin = 0,
        left_pad = 0,
        right_pad = 0,
        min_width = 0,
        border = false,
        border_virtual = false,
        border_prefix = false,
        above = '▄',
        below = '▀',
        backgrounds = {
            'RenderMarkdownH1Bg',
            'RenderMarkdownH2Bg',
            'RenderMarkdownH4Bg',
            'RenderMarkdownH3Bg',
            'RenderMarkdownH5Bg',
            'RenderMarkdownH6Bg',
        },
        foregrounds = {
            'RenderMarkdownH1',
            'RenderMarkdownH2',
            'RenderMarkdownH4',
            'RenderMarkdownH3',
            'RenderMarkdownH5',
            'RenderMarkdownH6',
        },
        custom = {},
    },
    })
  end,
}
