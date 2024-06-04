--zoxide plugin

return {
'nanotee/zoxide.vim',

cmd = { 'Z', 'Zi' },

config = 
--This lets zoxide use fzf-lua.nvim
    function()
        require('fzf-lua').register_ui_select()
        vim.g.zoxide_use_select = 1
    end,

}

