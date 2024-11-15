{
  plugins = {
    cmp-buffer.enable = true;
    cmp-nvim-lsp.enable = true;
    cmp-nvim-lsp-document-symbol.enable = true;
    cmp-nvim-lsp-signature-help.enable = true;
    cmp-path.enable = true;
    cmp_luasnip.enable = true;
    cmp-git.enable = true;
  };

  plugins.cmp = {
    enable = true;
    autoEnableSources = false;
    settings = {
      experimental = { ghost_text = true; };
      sources = [
        {
          name = "nvim_lsp";
          keywordLength = 3;
        }
        # { name = "codium"; }
        {
          name = "buffer"; # text within current buffer
          option.get_bufnrs.__raw = "vim.api.nvim_list_bufs";
          keywordLength = 3;
        }
        {
          name = "path";
          keywordLength = 3;
        }
        { name = "nvim_lsp_document_symbol"; }
        { name = "luasnip"; }
      ];

      window = {
        completion = {
          border = "rounded";
          scrollbar = false;
          winhighlight =
            "Normal:Normal,FloatBorder:FloatBorder,CursorLine:Visual,Search:None";
        };
        documentation = { border = "rounded"; };
      };

      snippet.expand = ''
        function(args)
          require('luasnip').lsp_expand(args.body)
        end
      '';

      mapping = {
        "<C-b>" = "cmp.mapping.scroll_docs(-4)";
        "<C-f>" = "cmp.mapping.scroll_docs(4)";
        "<C-Space>" = "cmp.mapping.complete()";
        "<C-e>" = "cmp.mapping.abort()";
        "<CR>" = "cmp.mapping.confirm({ select = true })";
        "<C-p>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
        "<C-n>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
        "<S-Tab>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
        "<Tab>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
        "<C-h>" = ''
          function()
            if cmp.visible_docs() then
            cmp.close_docs()
            else
            cmp.open_docs()
            end
          end
        '';
      };
      mappingPresets = [ "insert" ];
    };
  };
}
