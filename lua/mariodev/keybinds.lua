local function map(m, k, v)
    vim.keymap.set(m, k, v, { silent = true })
end

-- <leader> , disables higlighting
map('n', '<leader>,', ':noh<CR>')
map('n', '<leader>s', ':Format<CR>')

-- Fix * (Keep the cursor position, don't move to next match)
map('n', '*', '*N')

-- Set jk to escape every mode
map('i', 'jk', '<ESC>')
map('x', 'jk', '<ESC>')

-- Fix n and N. Keeping cursor in center
map('n', 'n', 'nzz')
map('n', 'N', 'Nzz')

-- Mimic shell movements
map('i', '<C-E>', '<ESC>A')
map('i', '<C-A>', '<ESC>I')

-- Quickly save the current buffer or all buffers
map('n', '<leader>w', '<CMD>update<CR>')
map('n', '<leader>W', '<CMD>wall<CR>')

-- Move to the next/previous buffer
map('n', '<leader>[', '<CMD>bp<CR>')
map('n', '<leader>]', '<CMD>bn<CR>')

-- Move to last buffer
map('n', "''", '<CMD>b#<CR>')

-- Copying the vscode behaviour of making tab splits
map('n', '<leader>v', ':vsplit<CR>')
map('n', '<leader>h', ':split<CR>')
map('n', '<leader>c', ':q<CR>')
-- Move line up and down in NORMAL and VISUAL modes
-- Reference: https://vim.fandom.com/wiki/Moving_lines_up_or_down
map('n', '<C-j>', '<CMD>move .+1<CR>')
map('n', '<C-k>', '<CMD>move .-2<CR>')
map('x', '<C-j>', ":move '>+1<CR>gv=gv")
map('x', '<C-k>', ":move '<-2<CR>gv=gv")

-- Use operator pending mode to visually select the whole buffer
-- e.g. dA = delete buffer ALL, yA = copy whole buffer ALL
map('o', 'A', ':<C-U>normal! mzggVG<CR>`z')
map('x', 'A', ':<C-U>normal! ggVG<CR>')
