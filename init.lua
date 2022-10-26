-- Vanilla Config
vim.cmd[[colorscheme dracula]]

require('mariodev.plugins')
require('mariodev.settings')
require('mariodev.keybinds')


---Pretty print lua table
function _G.dump(...)
    local objects = vim.tbl_map(vim.inspect, { ... })
    print(unpack(objects))
end
