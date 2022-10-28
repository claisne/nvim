local lsputil = require("lspconfig/util")

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

local function get_python_env()
  return vim.fn.trim(vim.fn.system("poetry env info -p"))
end

require("lspconfig").pylsp.setup {
  cmd = {"poetry", "run", "pylsp"},
  capabilities = capabilities,
  settings = {
    pylsp = {
      plugins = {
        pylint = {enabled = true},
        jedi = {environment = get_python_env()}
      }
    }
  }
}

local rt = require("rust-tools")

rt.setup(
  {
    server = {
      cmd = {"rustup", "run", "nightly", "rust-analyzer"},
      capabilities = capabilities,
      on_attach = function(_, bufnr)
        vim.keymap.set("n", "<C-a>", rt.hover_actions.hover_actions, {buffer = bufnr})
        vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, {buffer = bufnr})
      end
    }
  }
)

rt.inlay_hints.enable()
