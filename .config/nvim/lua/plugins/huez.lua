--huez colorscheme previews

return {
    "vague2k/huez.nvim",
    -- if you want registry related features, uncomment this
    import = "huez-manager.import",
    branch = "stable",
    event = "UIEnter",
    config = function()
        require("huez").setup({
        exclude = { "base16" },
        })
    end,
}
