return {
  {
  'goolord/alpha-nvim',
  enabled = true,
  event = "VimEnter",
  config = function ()
    local present, alpha = pcall(require, "alpha")
    if not present then
      return "Alpha has an error"
    end

    local function button(sc, txt, keybind)
      local sc_ = sc:gsub("%s", ""):gsub("SPC", "<leader>")
      local opts = {
        position = "center",
        text = txt,
        shortcut = sc,
        cursor = 40,
        width = 40,
        align_shortcut = "right",
        hl_shortcut = "Number",
        hl = "Function",
      }
      if keybind then
        opts.keymap = { "n", sc_, keybind, {noremap = true, silent = true }}
      end
      return {
        type = "button",
        val = txt,
        on_press = function ()
          local key = vim.api.nvim_replace_termcodes(sc_, true, false, true)
          vim.api.nvim_feedkeys(key, "normal", false)
        end,
        opts = opts,
      }

    end
    local buttons = {
      type = "group",
      val = {
        button("e", "> New File", ":ene <BAR> startinsert <CR>"),
        button("u", "> Update Plugins", ":Lazy update<CR>"),
        button("s", "> Settings",
               ":e /home/maks/.config/nvim/init.lua | :cd %:p:h | wincmd k | :NvimTreeOpen<CR>"
        ),
        button("q", "> Quit JudeNvim", ":qa<CR>"),
      },
    }

    local section = {
      buttons = buttons,
    }

    local opts = {
      layout = {
        {type = "padding", val = 10 },
        section.header,
        {type = "padding", val = 2},
        section.buttons,
      },
      opts = {
        margin = 42,
      },
    }

      alpha.setup(opts)
  end,
  },

}
