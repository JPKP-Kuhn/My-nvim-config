return {
  "benomahony/uv.nvim",
  -- Optional filetype to lazy load when you open a python file
  ft = { "python" },
  -- Optional dependency, but recommended:
  dependencies = {
  --   "folke/snacks.nvim"
  -- or
    "nvim-telescope/telescope.nvim"
  },
  opts = {
    picker_integration = true,
    keymaps = {
      prefix = "<leader>uv",  -- Novo prefixo para todos os comandos uv
      -- Mantém os keymaps padrão ativados (opcional):
      run_file = true,       -- <leader>uvr
      run_selection = true,  -- <leader>uvs
      run_function = true,   -- <leader>uvf
      venv = true,           -- <leader>uve
      init = true,           -- <leader>uvi
      add = true,            -- <leader>uva
      remove = true,         -- <leader>uvd
      sync = true,           -- <leader>uvc
      commands = true,       -- <leader>uv (menu principal)
    },
  },
}
