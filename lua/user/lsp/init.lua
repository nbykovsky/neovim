local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  print("Unable to load lspconfig")
  return
end
print("lspconfig is loaded")

require'lspconfig'.rust_alalyzer.setup{}
--require "user.lsp.lsp-installer"
--require("user.lsp.handlers").setup()
--require "user.lsp.null-ls"
