return {
    'saecki/crates.nvim',
    tag = 'v0.3.0',
    dependencies = { 'nvim-lua/plenary.nvim' },
    ft = {"rust", "toml"},
    config = function(_, opts)
        local crates = require('crates')
        crates.setup(opts)
        crates.show()
    end,
}
