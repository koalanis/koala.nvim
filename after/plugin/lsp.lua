local lsp = require('lsp-zero')

lsp.preset("recommended")

lsp.ensure_installed({
	'rust_analyzer',
})


lsp.on_attach(function(client, bufnr)
	lsp.default_keymaps({buffer = bufnr})
end)

lsp.setup_servers({
	"rust_analyzer"
})

lsp.set_preferences({
	sign_icons = { }
})

require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())


lsp.setup()
