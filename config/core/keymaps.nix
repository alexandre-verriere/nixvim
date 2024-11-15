{
  config = {
    globals = {
      mapleader = " ";
      maplocalleader = " ";
    };
    keymaps = [
      {
        mode = "n";
        key = "<leader>/";
        options.silent = true;
        action = "<cmd>Commentary<cr>";
      }
      {
        mode = "n";
        key = "<leader>v";
        options.silent = true;
        # action = "<cmd>lua MiniFiles.open()<cr>";
        # action = "<cmd>Oil --float<cr>";
        action = "<cmd>Oil<cr>";
      }
      {
        mode = "n";
        key = "<A-c>";
        options.silent = true;
        action = "<cmd>BufferCloseAllButCurrentOrPinned<cr>";
      }
      {
        mode = "n";
        key = "<A-p>";
        options.silent = true;
        action = "<cmd>BufferPick<cr>";
      }
      {
        mode = "n";
        key = "<A-P>";
        options.silent = true;
        action = "<cmd>BufferPin<cr>";
      }
      # {
      #   mode = "i";
      #   key = "<C-;>";
      #   action = "codeium#Accept()";
      #   options = {
      #     silent = true;
      #     script = true;
      #     expr = true;
      #     nowait = true;
      #     desc = "Codium Accept";
      #   };
      # }
      # Smart-splits
      {
        mode = "n";
        key = "<C-h>";
        options.silent = true;
        action = "<cmd>SmartCursorMoveLeft<cr>";
      }
      {
        mode = "n";
        key = "<C-j>";
        options.silent = true;
        action = "<cmd>SmartCursorMoveDown<cr>";
      }
      {
        mode = "n";
        key = "<C-k>";
        options.silent = true;
        action = "<cmd>SmartCursorMoveUp<cr>";
      }
      {
        mode = "n";
        key = "<C-l>";
        options.silent = true;
        action = "<cmd>SmartCursorMoveRight<cr>";
      }

      {
        mode = "n";
        key = "<A-h>";
        options.silent = true;
        action = "<cmd>SmartResizeLeft<cr>";
      }
      {
        mode = "n";
        key = "<A-j>";
        options.silent = true;
        action = "<cmd>SmartResizeDown<cr>";
      }
      {
        mode = "n";
        key = "<A-k>";
        options.silent = true;
        action = "<cmd>SmartResizeUp<cr>";
      }
      {
        mode = "n";
        key = "<A-l>";
        options.silent = true;
        action = "<cmd>SmartResizeRight<cr>";
      }
      {
        mode = "n";
        key = "<leader>r";
        options.silent = true;
        action = "<cmd>TroubleToggle<cr>";
      }
      {
        mode = "n";
        key = "<Leader>ca";
        options.silent = true;
        action = "<cmd>lua vim.lsp.buf.code_action()<cr>";
      }
      {
        mode = "n";
        key = "<Leader>fc";
        options.silent = true;
        action = "<cmd>lua require('conform').format()<cr>";
      }
      {
        mode = "n";
        key = "<A-;>";
        action = ":FloatermToggle<cr>";
        options = {
          desc = "Toggle terminal";
          silent = true;
        };
      }
      {
        mode = "t";
        key = "<A-;>";
        action = "<C-\\><C-n>:FloatermToggle<cr>";
        options = {
          desc = "Toggle terminal";
          silent = true;
        };
      }
      {
        mode = "n";
        key = "<Leader>si";
        action = "<cmd>lua vim.lsp.buf.hover()<cr>";
      }
      {
        mode = "n";
        key = "<Leader>a";
        action = "<cmd>LazyGit<cr>";
      }
    ];
  };
}
