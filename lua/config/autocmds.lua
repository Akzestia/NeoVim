-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    -- close explorer if it opened automatically
    for _, picker in ipairs(Snacks.picker.get({ source = "explorer" })) do
      picker:close()
    end
  end,
})

vim.api.nvim_create_autocmd("BufReadPre", {
  callback = function()
    if vim.fn.getfsize(vim.fn.expand("%")) > 100000 then
      vim.cmd("syntax off")
    end
  end,
})

vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = { ".env", ".env.*", "*.env" },
  callback = function()
    vim.opt_local.conceallevel = 2
    vim.opt_local.concealcursor = "n"
    vim.cmd([[syntax match envSecret /=\zs.\+/ conceal cchar=*]])

    -- toggle with <leader>eh
    vim.keymap.set("n", "<leader>[[", function()
      vim.opt_local.conceallevel = vim.wo.conceallevel > 0 and 0 or 2
    end, { buffer = true, desc = "Toggle .env hiding" })
  end,
})
