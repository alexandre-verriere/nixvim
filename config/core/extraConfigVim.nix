{
  config.extraConfigVim = ''
    " Create Modeline

    function! AppendModeline()
      let l:modeline = printf(" vim: set ft=%s :", &filetype)
      let l:modeline = substitute(&commentstring, "%s", l:modeline, "")
      let line = getline('.')
      call append(line(".") -1, l:modeline)
    endfunction
    nnoremap <silent> <Leader>zz :call AppendModeline()<CR>

    noremap <leader>bd :%bd\|e#\|bd#<cr>\|'"

    " Better Whitespace
    " let g:current_line_whitespace_disabled_hard=1
    " let g:strip_whitespace_on_save=1
    let g:better_whitespace_ctermcolor='LightMagenta'
    let g:better_whitespace_guicolor='#e78284'

    "  Transparency
    " hi NonText ctermbg=none
    " hi Normal guibg=NONE ctermbg=NONE

  '';
}
