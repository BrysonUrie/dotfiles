return {
  "neovim/nvim-lspconfig",
  dependencies = {
    {
      "nvim-telescope/telescope.nvim",
      "nvim-lua/plenary.nvim",
      "folke/lazydev.nvim",
      "sahgen/blink.cmp",
      ft = "lua",
      opts = {
        library = {
          { path = "${3rd}/luv/library", words = { "vim%.uv" } },
        },
      },
    },
  },
  opts = {
    servers = {
      lua_ls = {},
      pyright = {},
      html = {},
      emmet_ls = { filetypes = { "html", "typescriptreact" } },
      tailwindcss = { filetypes = { "html", "typescriptreact" } },
      clangd = {},
      templ = {},
      ts_ls = {},
      eslint = {},
      gopls = {},
      prismals = {},
    }

  },
  config = function(_, opts)
    local lspconfig = require('lspconfig')
    for server, config in pairs(opts.servers) do
      local capabilities = require('blink.cmp').get_lsp_capabilities(config.capabilities)
      config.capabilities = capabilities
      lspconfig[server].setup(config)
    end

    vim.keymap.set("n", "<leader>dg", vim.diagnostic.open_float, { noremap = true, silent = true })
    vim.keymap.set("n", "<leader>gd", require("telescope.builtin").lsp_definitions, { noremap = true, silent = true })
    vim.keymap.set("n", "<leader>ee", vim.diagnostic.goto_next, { noremap = true, silent = true })
    vim.keymap.set("n", "<leader>ep", vim.diagnostic.goto_prev, { noremap = true, silent = true })
    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { noremap = true, silent = true })
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { noremap = true, silent = true })
  end,
}
