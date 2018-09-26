runtime! debian.vim

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

if has("syntax")
   syntax on
endif

colorscheme desert

set tabstop=4
set shiftwidth=4
set softtabstop=0
set autoindent
set noexpandtab
set number
set mouse=a

" Колонка, что бы показывать плюсики для скрытия блоков кода
set foldcolumn=1


if has("autocmd")
	filetype on
	autocmd FileType python setlocal ts=4 sts=0 sw=4 noexpandtab autoindent
	autocmd FileType yaml setlocal ts=2 sts=2 sw=2 et ai
endif
