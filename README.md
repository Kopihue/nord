# Nord 🧊
___
# Lazy installation
```lua
return {
    "Kopihue/nord",
    config = function()
        require("nord").setup({})
    end
}
```
___
# Gallery 🎨
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/14a962d0-0906-4c78-8445-40bd68b6825e" />
<img width="1920" height="1079" alt="image" src="https://github.com/user-attachments/assets/f6d5ba7c-3290-4cfb-8715-eba12fff202d" />
___
<img width="1867" height="981" alt="image" src="https://github.com/user-attachments/assets/1a9197dc-0ed5-496f-9687-748640a848b6" />
<img width="1867" height="987" alt="image" src="https://github.com/user-attachments/assets/049ce7dd-c74f-43e1-bef0-2c891feef276" />

___
# Config ⚙️
```lua
require("nord").setup({
	transparency = false,
	bold = true,
	italic = true,
	line_number_pink = true,
})
```

___
# LSP note ⚠️
The LSP plugin will automatically paint some words in the file, to deactivate that feature and mantain the original colors put this in your init.lua:
```lua
vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
      	local client = vim.lsp.get_client_by_id(args.data.client_id)
      	if client then
	          client.server_capabilities.semanticTokensProvider = nil
      	end
    end,
})
```

# Enjoy 💙💙💙
