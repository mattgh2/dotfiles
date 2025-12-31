local get_hex = require('cokeline.hlgroups').get_hl_attr

require('cokeline').setup({
 show_if_buffers_are_at_least = 2,
  default_hl = {
    fg = function(buffer)
        if buffer.is_focused then 
            return "#ffffff"
        end
        return get_hex("Comment","fg")
    end,
    bg = 'NONE',
  },
  components = {
    {
      text = function(buffer) return (buffer.index ~= 1) and '▏' or '' end,
      fg = function() return get_hex('Normal', 'bg') end
    },
    {
      text = function(buffer) return '    ' .. buffer.devicon.icon end,
      fg = function(buffer) return buffer.devicon.color end,
    },

    {
      text = function(buffer) return buffer.filename .. '    ' end,
      bold = function(buffer) return buffer.is_focused end
    },
    {
      text = '󰖭',
      on_click = function(_, _, _, _, buffer)
        buffer:delete()
      end
    },
    {
      text = '  ',
    },
  },
})
