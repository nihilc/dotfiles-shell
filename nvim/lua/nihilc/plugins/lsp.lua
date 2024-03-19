return {
  'neovim/nvim-lspconfig',
  dependencies = {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'WhoIsSethDaniel/mason-tool-installer.nvim',
  },
  config = function()
    vim.api.nvim_create_autocmd('LspAttach', {
      group = vim.api.nvim_create_augroup('TheNihilcLspAttach', { clear = true }),
      callback = function(event)
        local telescope = require('telescope.builtin')
        local map = function(keys, func, desc)
          vim.keymap.set('n', keys, func, { buffer = event.buf, desc = 'LSP: ' .. desc })
        end
        map('K', vim.lsp.buf.hover, 'Hover Documentation')
        map('gD', vim.lsp.buf.declaration, 'Goto Declaration')
        map('gd', telescope.lsp_definitions, 'Goto Definition')
        map('gr', telescope.lsp_references, 'Goto References')
        map('gi', telescope.lsp_implementations, 'Goto Implementation')
        map('gy', telescope.lsp_type_definitions, 'Goto Type Definition')
        map('<leader>lr', vim.lsp.buf.rename, 'Rename')
        map('<leader>lf', vim.lsp.buf.format, 'Format')
        map('<leader>la', vim.lsp.buf.code_action, 'Code Action')
        map('<leader>ls', telescope.lsp_document_symbols, 'Symbols Buffer')
        map('<leader>lS', telescope.lsp_dynamic_workspace_symbols, 'Symbols Workspace')
        map(']d', vim.diagnostic.goto_next, 'Next Diagnostic')
        map('[d', vim.diagnostic.goto_prev, 'Prev Diagnostic')
        map('<leader>ld', function() telescope.diagnostics({ bufnr = 0 }) end, 'Diagnostics Buffer')
        map('<leader>lD', telescope.diagnostics, 'Diagnostics Workspace')
      end,
    })

    local capabilities = vim.tbl_deep_extend(
      "force",
      {},
      vim.lsp.protocol.make_client_capabilities(),
      require("cmp_nvim_lsp").default_capabilities()
    )

    local servers = {
      -- Web
      html = {},
      emmet_language_server = {},
      cssls = {},
      tsserver = {},
      jsonls = {},

      -- Languages
      clangd = {},
      bashls = {},
      lua_ls = {
        settings = {
          Lua = {
            runtime = { version = 'LuaJIT' },
            workspace = {
              checkThirdParty = false,
              library = {
                '${3rd}/luv/library',
                unpack(vim.api.nvim_get_runtime_file('', true)),
              },
            },
            completion = {
              callSnippet = 'Replace',
            },
          },
        },
      },
      -- sqls = {},
      pyright = {},
      intelephense = {
        init_options = {
          globalStoragePath =
              os.getenv('XDG_DATA_HOME') .. '/intelephense' or
              os.getenv('HOME') .. '/.local/share/intelephense'
        },
      },
      gopls = {},
      rust_analyzer = {},
      -- java_language_server = {},
      -- kotlin_language_server = {},
      -- dartls = {},
    }

    require('mason').setup({ ui = { border = "single" } })
    require('mason-lspconfig').setup({
      ensure_installed = vim.tbl_keys(servers or {}),
      handlers = {
        function(server_name)
          local server = servers[server_name] or {}
          server.capabilities = vim.tbl_deep_extend('force', {}, capabilities, server.capabilities or {})
          require('lspconfig')[server_name].setup(server)
        end,
      },
    })

    -- Configure borders for hover, signatureHelp
    vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = "single", })
    vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = "single" })
    -- Config diagnostics
    vim.diagnostic.config({
      float = {
        border = "single",
        source = "always",
        header = "",
        prefix = "",
      },
      virtual_text = {
        prefix = "●",
        severity = {
          max = vim.diagnostic.severity.ERROR,
          min = vim.diagnostic.severity.WARN,
        },
      },
    })
  end,
}
