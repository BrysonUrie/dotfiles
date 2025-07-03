return {
  "saghen/blink.cmp",
  dependencies = {
    "L3MON4D3/LuaSnip",
    dependencies = { "rafamadriz/friendly-snippets" },
    config = function()
      require("luasnip.loaders.from_vscode").lazy_load()
      require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/lua/config/custom-snippets/" }) -- Load custom snippets
      local ls = require("luasnip")

      vim.keymap.set({ "i" }, "<C-L>", function() ls.expand() end, { silent = true })
      vim.keymap.set({ "i", "s" }, "<C-J>", function() ls.jump(1) end, { silent = true })
      vim.keymap.set({ "i", "s" }, "<C-K>", function() ls.jump(-1) end, { silent = true })

      vim.keymap.set({ "i", "s" }, "<C-E>", function()
        if ls.choice_active() then
          ls.change_choice(1)
        end
      end, { silent = true })
    end
  },
  version = "1.*",
  opts = {
    snippets = { preset = "luasnip" },
    keymap = { preset = "default" },
    appearance = {
      use_nvim_cmp_as_default = true,
      nerd_font_variant = "mono",
    },
    signature = { enabled = true },
    completion = {
      documentation = {
        auto_show = true
      },
      menu = {
        draw = {
          treesitter = { "lsp" },
          columns = {
            { "kind_icon" },
            { "label",    "label_description", gap = 1 },
          },
          components = {
            label_description = {
              width = { max = 30 },
              text = function(ctx)
                return ctx.item.detail
              end,
              highlight = 'BlinkCmpLabelDetail',
            },
          }
        },
      },
    },

    sources = {
      default = { "snippets", "lsp", "path" },
    },
  },

}
