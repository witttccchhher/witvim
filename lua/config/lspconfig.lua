local lspconfig = require("lspconfig")
local servers = lspconfig.util.available_servers()

local on_init = function(client, _)
  if client.supports_method "textDocument/semanticTokens" then
    client.server_capabilities.semanticTokensProvider = nil
  end
end

local capabilities = vim.tbl_deep_extend("force", {},
  vim.lsp.protocol.make_client_capabilities(),
  require("cmp_nvim_lsp").default_capabilities() or {}
)

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_init = on_init,
    capabilities = capabilities
  }
end

lspconfig.lua_ls.setup {
  on_init = on_init,
  capabilities = capabilities,
}

lspconfig.cssls.setup {
  on_init = on_init,
  capabilities = capabilities
}

lspconfig.bashls.setup {
  on_init = on_init,
  capabilities = capabilities
}

lspconfig.clangd.setup {
  on_init = on_init,
  capabilities = capabilities,
}

lspconfig.ts_ls.setup {
  on_init = on_init,
  capabilities = capabilities
}

lspconfig.basedpyright.setup {
  on_init = on_init,
  capabilities = capabilities,
  settings = {
    basedpyright = {
      analysis = {
        typeCheckingMode = "off",
        autoSearchPaths = true,
        diagnosticMode = "openFilesOnly",
        useLibraryCodeForTypes = true
      }
    }
  }
}

lspconfig.nixd.setup {
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
          expr = "(builtins.getFlake \"/home/som/nix\").nixosConfigurations.nixos.options"
        },
        home_manager = {
          expr = "(builtins.getFlake \"/home/som/nix\").homeConfigurations.som.options"
        }
      }
    }
  }
}

lspconfig.gopls.setup {
  on_init = on_init,
  capabilities = capabilities
}

lspconfig.html.setup {
  on_init = on_init,
  capabilities = capabilities
}
