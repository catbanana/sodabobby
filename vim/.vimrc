execute pathogen#infect()
"set statusline=+=%{resolve(expand('%:p'))}\ %*
"colo elflord
filetype plugin indent on
syntax on
set timeoutlen=10 ttimeoutlen=0
" make Vim behave in a more useful way
 set nocompatible
set number
"
autocmd FileType python map <buffer> <S-e> :w<CR>:!/usr/bin/env python %<CR>

" " define number of colors
 set t_Co=256
"
" " define initial background (light/dark)
 set background=dark
"
" " define color scheme
 colorscheme landscape
"
" " always display status line
 set laststatus=2
"
" " do not show mode
 set noshowmode
"
" " define lightline configuration
 let g:lightline = {
       \ 'colorscheme': 'landscape',
             \ }
"
"             " define function to toggle solarized theme 
"             " change background and update lightline color scheme
             function! ToggleSolarizedTheme()
               let &background = ( &background == "dark"? "light" : "dark" )
                 if exists("g:lightline")
                     runtime autoload/lightline/colorscheme/solarized.vim
                         call lightline#colorscheme()
                           endif
                           endfunction

"                           " map F12 to ToggleSolarizedTheme() function
                           map <F12> :call ToggleSolarizedTheme()<CR>

