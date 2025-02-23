-- Mason setup for managing LSP servers
require("mason").setup()

-- Mason LSPconfig setup with auto installation of servers
require("mason-lspconfig").setup({
  ensure_installed = {
    "bashls",
    "cssls",
    "eslint",
    "graphql",
    "html",
    "jsonls",
    "lua_ls",
    "prismals",
    "tailwindcss",
    "ts_ls", -- Corrected from ts_ls
    "clangd",
    "pylyzer",
    "pyright",
  },
  automatic_installation = true,
})

-- LSP configuration and completion setup
local cmp = require('cmp')
local luasnip = require('luasnip')
local lspconfig = require('lspconfig')

-- Ensure capabilities are set up for autocompletion
local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- Common on_attach function
local function on_attach(client, bufnr)
  -- Enable inlay hints if available
  if vim.lsp.buf.inlay_hint then
    vim.lsp.buf.inlay_hint(bufnr, true)
  end
end

-- Lua language server setup
lspconfig.lua_ls.setup({
	on_attach = on_attach,
	capabilities = capabilities,
	settings = {
		Lua = {
			diagnostics = {
				globals = { 'vim' }, -- Avoid warnings for Neovim globals like 'vim'
			},
		},
	},
})
lspconfig.ts_ls.setup({
	filetypes = { "typescript", "typescriptreact", "typescript.tsx" }, -- Ensure these are included
	on_attach = on_attach,
	capabilities = capabilities,
})
lspconfig.bashls.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})
lspconfig.eslint.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})
lspconfig.graphql.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})
lspconfig.html.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})
lspconfig.jsonls.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})
lspconfig.prismals.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})
lspconfig.tailwindcss.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})
lspconfig.clangd.setup({
	on_attach = on_attach,
	capabilities = capabilities,
	settings = {
		clangd = {
			includePath = { "/opt/homebrew/include/SDL2/" },
		},
	},
})
lspconfig.pylyzer.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})
lspconfig.pyright.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})

-- Completion setup (with corrected mapping key)
cmp.setup({
	snippet = {
		expand = function(args)
			require('luasnip').lsp_expand(args.body) -- Using LuaSnip for snippets
		end,
	},
	mapping = cmp.mapping.preset.insert({
		['<C-p>'] = cmp.mapping.select_prev_item(),
		['<C-n>'] = cmp.mapping.select_next_item(),
		['<C-y>'] = cmp.mapping.confirm({ select = true }),
		['<C-Space>'] = cmp.mapping.complete(),
	}),
	sources = {
		{ name = 'nvim_lsp' },
		{ name = 'luasnip' },
		{ name = 'buffer' }, -- Optional: Buffer completions
		{ name = 'path' }, -- Optional: Path completions
	},
})

-- LSP handlers setup
local handlers = {
  ["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
    silent = true,
  }),
  ["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help),
}

-- On-attach function (use vim.lsp.buf.inlay_hint if available in your version of Neovim)
local function on_attach(client, bufnr)
  if vim.lsp.buf.inlay_hint then
    vim.lsp.buf.inlay_hint(bufnr, true)
  end
end

--

