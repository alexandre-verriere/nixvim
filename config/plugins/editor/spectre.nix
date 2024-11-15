{
  plugins.spectre = {
    enable = true;
    settings = {
      find_engine = {
        rg = {
          cmd = "rg";
          args = [
            "--color=never"
            "--no-heading"
            "--with-filename"
            "--line-number"
            "--column"
          ];
        };
      };
    };
  };
}
