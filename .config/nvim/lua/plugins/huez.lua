--huez colorscheme previews

return {
    'vague2k/huez.nvim',
    dependencies = {
        -- You probably already have this installed, highly reccomended you do.
        "nvim-telescope/telescope.nvim",
    },
    lazy = true,
    cmd = "Huez",
    version = "0.2.4",
    config = function ()
local colorscheme = require("huez.api").get_colorscheme()
vim.cmd("colorscheme " .. colorscheme)
end

}
