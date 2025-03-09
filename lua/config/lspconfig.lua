local lspconfig = require("lspconfig")

local on_attach = function(client, bufnr)
  if client.server_capabilities.inlayHintProvider then
    vim.lsp.inlay_hint.enable(true, nil, bufnr)
  end
end

local on_init = function(client, _)
  if client.supports_method "textDocument/semanticTokens" then
    client.server_capabilities.semanticTokensProvider = nil
  end
end

local capabilities = vim.tbl_deep_extend("force", {},
  vim.lsp.protocol.make_client_capabilities(),
  require('blink.cmp').get_lsp_capabilities() or {}
)

lspconfig.lua_ls.setup {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
  settings = {
    Lua = {
      diagnostics = {
        disable = { "lowercase-global" }
      }
    }
  }
}

lspconfig.cssls.setup {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities
}

lspconfig.bashls.setup {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities
}

lspconfig.clangd.setup {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
}

-- lspconfig.ts_ls.setup {
--   on_attach = on_attach,
--   on_init = on_init,
--   capabilities = capabilities
-- }

lspconfig.basedpyright.setup {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
  settings = {
    basedpyright = {
      analysis = {
        typeCheckingMode = "basic",
        autoSearchPaths = true,
        logLevel = "Warning",
        autoImportCompletions = false,
        diagnosticMode = "workspace",
        useLibraryCodeForTypes = true,
        diagnosticSeverityOverrides = {
          reportUnusedClass = false,
          reportUnusedFunction = false,
          reportUnusedVariable = false,
          reportUnusedCallResult = false,
          reportUnusedCoroutine = false,
          reportUnusedExcept = false,
          reportUnusedExpression = false,
          reportUnusedParameter = false
        }
      }
    }
  }
}

lspconfig.nixd.setup {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
  settings = {
    nixd = {
      nixpkgs = {
        expr = "import <nixpkgs> { }",
      },
      formatting = {
        command = { "nixfmt" }
      },
      options = {
        nixos = {
          expr = "(builtins.getFlake \"/home/witcher/nix\").nixosConfigurations.ms7996.options"
        },
        home_manager = {
          expr = "(builtins.getFlake \"/home/witcher/nix\").homeConfigurations.witcher.options"
        }
      }
    }
  }
}

lspconfig.gopls.setup {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities
}

lspconfig.html.setup {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities
}
