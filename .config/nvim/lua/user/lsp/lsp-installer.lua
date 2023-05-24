local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not status_ok then
	return
end

lsp_installer.on_server_ready(function(server)
	local opts = {
		on_attach = require("user.lsp.handlers").on_attach,
		capabilities = require("user.lsp.handlers").capabilities,
	}

	if server.name == "jsonls" then
		local jsonls_opts = require("user.lsp.settings.jsonls")
		opts = vim.tbl_deep_extend("force", jsonls_opts, opts)
	end

	if server.name == "intelephense" then
		local intelephense_status_ok, intelephense_opts = pcall(require, "user.lsp.settings.intelephense")
		if intelephense_status_ok then
			opts = vim.tbl_deep_extend("force", intelephense_opts, opts)
		end
	end

	if server.name == "lua_ls" then
		local lua_opts = require("user.lsp.settings.lua_ls")
		opts = vim.tbl_deep_extend("force", lua_opts, opts)
	end

	server:setup(opts)
end)
