--fzf-lua plugin

return
{
  'ibhagwan/fzf-lua',
  -- optional for icon support
  dependencies = { 'nvim-tree/nvim-web-devicons' },

  config = 
  function()
    -- calling `setup` is optional for customization
    require('fzf-lua').setup({
        defaults = {
            file_icons = false
        }, 

        winopts = {
            preview = {
                default = 'bat',
                layout = 'vertical',
                vertical = 'up:45%'
            },

       },

        fzf_opts = {
                ['--layout'] = 'default'
            }
            
    })
  end
}
