"=============================================================================
" File: topaste.vim
" Author: Carla Souza <contact@carlasouza.com>
" WebPage: https://github.com/carlasouza/podh
" License: GPL3

function TOpaste(line1, line2)
  silent !clear
  let g:html_use_encoding = "utf-8"
  let name = system('echo `mktemp -u`.html')
  execute a:line1 . "," . a:line2 . "TOhtml" | exe "w ".name | exec "q!"
  let url = system(". ~/.podhrc; curl -s -k $SHORTENER -F s3key=$S3KEY -F s3secret=$S3SECRET -F file=@".name)
  exe "topleft 2new"
  call append(0, url)
  let a = system('rm '.name)
endfunction
command! -range=% TOpaste :call TOpaste(<line1>, <line2>)
