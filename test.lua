vim.filetype.add({ extension = { tree = "forester" } })

vim.cmd("edit trees/index.tree")

local client_id = vim.lsp.start({
	name = "forester-lsp",
	cmd = { "forester", "lsp" },
	root_dir = vim.fs.root(0, { "forest.toml" }),
})

