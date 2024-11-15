{
  config.extraConfigLua = ''
    require('arrow').setup({
      show_icons = true,
      leader_key = '<C-;>', -- Recommended to be a single key
      buffer_leader_key = 'm', -- Per Buffer Mappings
    })

    vim.api.nvim_create_user_command("Format", function(args)
      require("conform").format({ async = true, lsp_fallback = true })
    end, {})

  '';
}
