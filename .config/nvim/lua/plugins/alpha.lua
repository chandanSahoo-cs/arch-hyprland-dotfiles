return {
	"goolord/alpha-nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},

	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		-- Custom ASCII header
		dashboard.section.header.val = {
			[[                                                    ]],
			[[ ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ]],
			[[ ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ]],
			[[ ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ]],
			[[ ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ]],
			[[ ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ]],
			[[ ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ]],
			[[                                                    ]],
		}

		-- Dashboard buttons
		dashboard.section.buttons.val = {
			dashboard.button("f", "🔍  Find file", ":Telescope find_files<CR>"),
			dashboard.button("r", "🕘  Recent files", ":Telescope oldfiles<CR>"),
			dashboard.button("g", "🔎  Live grep", ":Telescope live_grep<CR>"),
			dashboard.button("n", "📄  New file", ":ene <BAR> startinsert<CR>"),
			dashboard.button("c", "⚙️  Configuration", ":edit $MYVIMRC<CR>"),
			dashboard.button("q", "🚪  Quit", ":qa<CR>"),
		}

		dashboard.section.footer.val = "⚡ Happy coding with Neovim!"

		-- Center everything
		dashboard.opts.layout[1].val = 8

		alpha.setup(dashboard.opts)
	end,
}
