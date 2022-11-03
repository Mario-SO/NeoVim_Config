local format = require("null-ls").builtins.formatting

require("null-ls").setup({
	debug = false,
	sources = {
		format.stylua,
        format.rustfmt,
	},
})
