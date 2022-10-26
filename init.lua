-- Vanilla Config
require('mariodev.settings')
require('mariodev.plugins')
require('mariodev.keybinds')

vim.cmd[[colorscheme dracula]]

---Pretty print lua table
function _G.dump(...)
    local objects = vim.tbl_map(vim.inspect, { ... })
    print(unpack(objects))
end
