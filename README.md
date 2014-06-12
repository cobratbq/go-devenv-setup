# Go

Setting up a Go development environment with tooling.

## update.sh operations

1. Install or update Go 
1. Get additional Go package repositories
1. Get several additional tools for style checking, code checking, coverage analysis, etc.

## Set scripting environment

Set environment variables:

* GOROOT
* GOPATH
* GOBIN
* PATH=$GOPATH/bin:$GOROOT/bin:$PATH

## Vim configuration

Set static location for vim temporary backup files.
~~~
" Set common directory for backup files.
set backupdir=$HOME/.vim-tmp
set directory=$HOME/.vim-tmp

" or don't do backups at all ...
set nobackup
set nowritebackup

" Add Go support.
filetype off
filetype plugin indent off
set runtimepath+=$GOROOT/misc/vim
filetype plugin indent on
syntax on

" Automatically gofmt on save.
autocmd FileType go autocmd BufWritePre <buffer> Fmt

" Automatically manage imports during saving (requires goimports)
let g:gofmt_command = "goimports"

" Make go vet accessible.
function! s:GoVet()
	cexpr system("go tool vet " . shellescape(expand('%')))
	copen
endfunction
command! GoVet :call s:GoVet()

" Make golint accessible.
function! s:GoLint()
	cexpr system("golint " . shellescape(expand('%')))
	copen
endfunction
command! GoLint :call s:GoLint()
~~~

*This configuration assumes that golint, goimports, vet are installed and available.*
