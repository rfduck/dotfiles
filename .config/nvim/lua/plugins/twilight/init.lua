--TWILIGHT CONFIG FILE
--Default options for twilight plugin
--lives at .config/nvim/lua/plugins/twilight/init.lua

return{
    'folke/twilight.nvim',
    opts = {
        dimming = {
        alpha = 0.25,
    },
    context = 2,
    treesitter = true
    }
}
