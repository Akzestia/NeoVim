vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
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

    vim.keymap.set("n", "<leader>[[", function()
      vim.opt_local.conceallevel = vim.wo.conceallevel > 0 and 0 or 2
    end, { buffer = true, desc = "Toggle .env hiding" })
  end,
})
