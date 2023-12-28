return{

   -- statusline
   {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = {
      options = {
        theme = "solarized_dark",
      },
    },
  },
  -- animations
{
  "echasnovski/mini.animate",
  event = "VeryLazy",
  opts = function(_, opts)
    opts.scroll = {
      enable = false,
    }
  end,
},

-- colorschemes
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      opts.presets.lsp_doc_border = true
    end,
  },



{
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    opts = function(_, opts)
      local logo = [[

            ███╗   ███╗██╗███████╗ █████╗ ██████╗ 
            ████╗ ████║██║██╔════╝██╔══██╗██╔══██╗
            ██╔████╔██║██║███████╗███████║██████╔╝
            ██║╚██╔╝██║██║╚════██║██╔══██║██╔══██╗
            ██║ ╚═╝ ██║██║███████║██║  ██║██║  ██║
            ╚═╝     ╚═╝╚═╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝
                                                                                                                 
      ]]

      logo = string.rep("\n", 8) .. logo .. "\n\n"
      opts.config.header = vim.split(logo, "\n")
    end,
},


}