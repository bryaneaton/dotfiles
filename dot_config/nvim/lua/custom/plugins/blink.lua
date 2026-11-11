return {
  {
    'saghen/blink.cmp',
    dependencies = { 'saghen/blink.lib' },
    event = 'InsertEnter',
    -- v2 has no tagged release yet, it lives on `main` (requires nvim 0.12+)
    branch = 'main',
    build = function()
      require('blink.cmp').build():pwait()
    end,

    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
      keymap = { preset = 'super-tab' },
      appearance = {
        nerd_font_variant = 'mono',
      },
      completion = {
        documentation = {
          auto_show = true,
        },
      },
      fuzzy = { implementation = 'rust' },
      sources = {
        default = { 'lazydev', 'lsp', 'path', 'snippets', 'buffer' },
        providers = {
          lazydev = {
            name = 'LazyDev',
            module = 'lazydev.integrations.blink',
            score_offset = 100,
          },
        },
      },
    },
  },
}
