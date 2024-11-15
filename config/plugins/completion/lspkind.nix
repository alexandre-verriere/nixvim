{
  plugins.lspkind = {
    enable = true;
    cmp = {
      enable = true;
      ellipsisChar = "...";
      menu = {
        buffer = "[Buffer]";
        nvim_lsp = "[LSP]";
        luasnip = "[LuaSnip]";
        nvim_lua = "[Lua]";
        latex_symbols = "[Latex]";
      };
      after = ''
        function(entry, vim_item, kind)
          local strings = vim.split(kind.kind, "%s", { trimempty = true })
          kind.kind = " " .. strings[1] .. " "
          kind.menu = "   " .. strings[2]
          return kind
        end
      '';
    };
  };
}

