-- set vim options here (vim.<first_key>.<second_key> = value)
return function(astronvim)
  astronvim.opt.relativenumber = true -- sets vim.opt.relativenumber
  astronvim.opt.number = true -- sets vim.opt.number
  astronvim.opt.spell = false -- sets vim.opt.spell
  astronvim.opt.signcolumn = "auto" -- sets vim.opt.signcolumn to auto
  astronvim.opt.wrap = false -- sets vim.opt.wrap
  if vim.fn.executable('pwsh') == 1 then
    astronvim.opt.shell = "pwsh"
    astronvim.opt.shellcmdflag = "-NoLogo -NoProfile -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;"
    astronvim.opt.shellredir = "-RedirectStandardOutput %s -NoNewWindow -Wait"
    astronvim.opt.shellpipe = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode"
    astronvim.opt.shellquote = ""
    astronvim.opt.shellxquote = ""
  end

  astronvim.g.mapleader = " " -- sets vim.g.mapleader
  astronvim.g.autoformat_enabled = true -- enable or disable auto formatting at start (lsp.formatting.format_on_save must be enabled)
  astronvim.g.cmp_enabled = true -- enable completion at start
  astronvim.g.autopairs_enabled = true -- enable autopairs at start
  astronvim.g.diagnostics_mode = 3 -- set the visibility of diagnostics in the UI (0=off, 1=only show in status line, 2=virtual text off, 3=all on)
  astronvim.g.icons_enabled = true -- disable icons in the UI (disable if no nerd font is available, requires :PackerSync after changing)
  astronvim.g.ui_notifications_enabled = true -- disable notifications when toggling UI elements
  astronvim.g.resession_enabled = false -- enable experimental resession.nvim session management (will be default in AstroNvim v4)
  return astronvim
end
