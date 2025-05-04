local harpoon = require 'harpoon'

-- REQUIRED
harpoon:setup()
-- REQUIRED

vim.keymap.set('n', '<leader>a', function()
  harpoon:list():add()
end)
vim.keymap.set('n', '<C-e>', function()
  harpoon.ui:toggle_quick_menu(harpoon:list())
end)

vim.keymap.set('n', '<C-h>', function()
  harpoon:list():select(1)
end)
vim.keymap.set('n', '<C-t>', function()
  harpoon:list():select(2)
end)
vim.keymap.set('n', '<C-n>', function()
  harpoon:list():select(3)
end)
vim.keymap.set('n', '<C-s>', function()
  harpoon:list():select(4)
end)

vim.keymap.set('n', '<leader>r1', function()
  local item = harpoon:list():get(1)
  if item then
    harpoon:list():remove(item)
  end
end)

vim.keymap.set('n', '<leader>r2', function()
  local item = harpoon:list():get(2)
  if item then
    harpoon:list():remove(item)
  end
end)

vim.keymap.set('n', '<leader>r3', function()
  local item = harpoon:list():get(3)
  if item then
    harpoon:list():remove(item)
  end
end)

vim.keymap.set('n', '<leader>r4', function()
  local item = harpoon:list():get(4)
  if item then
    harpoon:list():remove(item)
  end
end)
-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set('n', '<C-S-P>', function()
  harpoon:list():prev()
end)
vim.keymap.set('n', '<C-S-N>', function()
  harpoon:list():next()
end)
