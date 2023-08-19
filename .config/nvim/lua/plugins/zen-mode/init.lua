--zen-mode config
--Settings for zen-mode plugin
--lives at .config/nvim/lua/plugins/zen-mode/init.lua

return {
        "folke/zen-mode.nvim",
        opts = {
            window = {
                backdrop = 0.3,
                width = 0.5,
                height = 0.7,
                options = {
                    number = false,
                },
            },
        plugins = {
            twilight = { enabled = true }
        },
    }
}
