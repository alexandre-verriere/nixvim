{
  plugins.fzf-lua = {
    enable = true;
    profile = "telescope";
    keymaps = {
      "<leader>ff" = {
        action = "files";
      };
      "<leader>fg" = "live_grep";
      "<leader>fG" = "lgrep_curbuf";
      "<leader><space>" = "buffers";
      "<leader>fh" = "help_tags";
      "<leader>ld" = "lsp_definitions";
      "<leader>ls" = "lsp_document_symbols";
      "<leader>lr" = "lsp_references";
      "<leader>ic" = "lsp_incoming_calls";
      "<leader>oc" = "lsp_outgoing_calls";
    };
  };
}
