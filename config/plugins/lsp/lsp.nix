{
  plugins = {
    lsp-format.enable = true;

    lsp = {
      enable = true;

      keymaps = {
        silent = true;
        diagnostic = {
          # Navigate in diagnostics
          "<leader>k" = "goto_prev";
          "<leader>j" = "goto_next";
        };

        lspBuf = {
          gd = "definition";
          gD = "references";
          gt = "type_definition";
          gi = "implementation";
          K = "hover";
          "<F2>" = "rename";
        };
      };

      servers = {
        nixd.enable = true;
        ruff_lsp.enable = false;
        ansiblels.enable = true;
        docker_compose_language_service.enable = true;
        # yamlls.enable = true;
        bashls.enable = true;
        pyright = {
          enable = true;
          settings = {
            pyright = {
              disableOrganizeImports = true;
            };
            python = {
              analysis = {
                typeCheckingMode = "off";
                ignore = "*";
                diagnosticMode = "none"; # Disable all diagnostics
                diagnosticSeverityOverrides = {
                  reportMissingImports = "none";
                  reportUnusedImport = "none";
                  reportUnusedVariable = "none";
                  reportTypeErrors = "none";
                  reportGeneralTypeIssues = "none";
                  reportMissingTypeStubs = "none";
                  reportIncompatibleMethodOverride = "none";
                  reportUnnecessaryTypeIgnoreComment = "none";
                };
              };
            };

          };
        };
        dockerls = {
          enable = true;
          filetypes = [ "dockerfile" ];
        };
        jsonls = {
          enable = true;
          filetypes = [ "json" "jsonc" ];
        };
      };
    };

  };
}
