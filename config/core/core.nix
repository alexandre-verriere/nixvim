{
  config = {
    colorschemes = {
      rose-pine = {
        enable = true;
        settings = { variant = "main"; };
        # settings = { variant = "dawn"; };
      };
    };

    opts = {
      # show line numbers
      number = true;
      # show relative line numbers
      relativenumber = true;
      # number of spaces for each tab
      shiftwidth = 2;
      # use spaces instead of tabs
      expandtab = true;
      # number of spaces a tab counts while editing
      tabstop = 2;
      # number of spaces inserted for indentation
      softtabstop = 2;
      clipboard = { provider = "xclip"; };
      ignorecase = true;
      smartcase = true;
      inccommand = "split";
      splitbelow = true;
      splitright = true;
      grepprg = "rg --no-heading --vimgrep --smart-case";
      grepformat = "%f:%l:%c:%m";
      cmdheight = 1;
    };

  };
}
