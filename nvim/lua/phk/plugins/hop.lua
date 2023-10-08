return {
  'phaazon/hop.nvim',
  branch = 'v2', -- optional but strongly recommended
  config = function()
    -- you can configure Hop the way you like here; see :h hop-config
    require('hop').setup({ keys = 'etovxqpdygfblzhckisuran' })

    -- set keymaps
    local hop = require('hop')
    local directions = require('hop.hint').HintDirection
    local keymap = vim.keymap

    keymap.set("n", "s", ":HopWord<CR>", { noremap = false })
    keymap.set("v", "s", ":HopWord<CR>", { noremap = false })

    keymap.set('', 'f', function()
      hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true })
    end, { remap = true })
    keymap.set('', 'F', function()
      hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true })
    end, { remap = true })
    keymap.set('', 't', function()
      hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })
    end, { remap = true })
    keymap.set('', 'T', function()
      hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })
    end, { remap = true })
  end
}
