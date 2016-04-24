"=============================================================================
" File: topaste.vim
" Author: Carla Souza <contact@carlasouza.com>
" WebPage: https://github.com/carlasouza/podh
" License: GPL3

function TOpaste(line1, line2)
  let g:html_use_encoding = "utf-8"
  let name = system('echo $(mktemp -u).html')
  exe a:line1 . "," . a:line2 . "TOhtml" | exe "w ".name | exe "q!"
  silent !clear
  echo system(". ~/.podhrc; curl -s -k $SHORTENER -F s3key=$S3KEY -F s3secret=$S3SECRET -F file=@".name)
  exe system('rm '.name)
endfunction
command! -range=% TOpaste :call TOpaste(<line1>, <line2>)
