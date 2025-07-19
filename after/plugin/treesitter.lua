require("nvim-treesitter.configs").setup({
		--
	-- A list of parser names, or "all" (the five listed parsers should always be installed)
	ensure_installed = { 
		"bash",
		"vim", "vimdoc", 
		"javascript", "jsdoc", "typescript",
		"html", "css", "scss",
		"java", "javadoc",
		"c", 
		"lua", 
		"dockerfile", 
		"sql", "query", 
		"markdown", "markdown_inline",  
		"json"
	},

	-- Install parsers synchronously (only applied to `ensure_installed`)
	sync_install = false,

	-- Automatically install missing parsers when entering buffer
	-- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
	auto_install = true,

	indent = {
		enable = true
	},

	highlight = {
		enable = true, -- 'false' will disable the whole extension

		-- Setting this to true will run `:h syntax` and tree-sitter at the same time.
		-- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
		-- Using this option may slow down your editor, and you may see some duplicate highlights.
		-- Instead of true it can also be a list of languages
		additional_vim_regex_highlighting = { "markdown" },
	},
})
