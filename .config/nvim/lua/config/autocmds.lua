vim.api.nvim_create_user_command("LiveServer", function()
	vim.fn.jobstart("live-server", { detach = true })
end, {})

vim.api.nvim_create_user_command("LiveServerStop", function()
	vim.fn.jobstart("pkill -f live-server")
end, {})
