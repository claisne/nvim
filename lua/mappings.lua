local function map(mode, lhs, rhs, opts)
  local options = {noremap = true, silent = true}

  if opts then
    options = vim.tbl_extend("force", options, opts)
  end

  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map("n", "<C-N>", ":NvimTreeToggle<CR>")
map("n", "<C-P>", ":Telescope find_files <CR>")
map("n", "<C-O>", ":Telescope live_grep<CR>")

map("n", "<S-Left>", "<C-W><C-H>")
map("n", "<S-Right>", "<C-W><C-L>")
map("n", "<S-Up>", "<C-W><C-K>")
map("n", "<S-Down>", "<C-W><C-J>")
