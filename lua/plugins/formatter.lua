require("formatter").setup {
  filetype = {
    lua = {
      function()
        return {
          exe = "luafmt",
          args = {"--indent-count", 2, "--stdin"},
          stdin = true
        }
      end
    },
    python = {
      function()
        return {
          exe = "black",
          args = {"-"},
          stdin = true
        }
      end
    },
    javascript = {
      function()
        return {
          exe = "prettier",
          args = {"--stdin-filepath", vim.api.nvim_buf_get_name(0), "--single-quote"},
          stdin = true
        }
      end
    },
    css = {
      function()
        return {
          exe = "prettier",
          args = {"--stdin-filepath", vim.api.nvim_buf_get_name(0), "--single-quote"},
          stdin = true
        }
      end
    },
    go = {
      function()
        return {exe = "gofmt", stdin = true}
      end
    },
    rust = {
      function()
        return {exe = "rustfmt", stdin = true, args = {"--edition=2021", "--emit=stdout"}}
      end
    }
  }
}

vim.api.nvim_exec(
  [[
augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost *.py,*.lua,*.js,*.css,*.go,*.rs FormatWrite
augroup END
]],
  true
)
