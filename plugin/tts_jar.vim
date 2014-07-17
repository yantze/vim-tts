func! TTS()
    let path=globpath(&rtp, 'tts.bat')
    exe "! ".expand(path)." -p "."%:p"
endfunction
func! TTSGBK()
    let path=globpath(&rtp, 'tts.bat')
    exe "! ".expand(path)." -c cp936 -p "."%:p"
endfunction
command! -nargs=0 TTS call TTS()
command! -nargs=0 TTSGBK call TTSGBK()

" author : yantze
" mail : yantze@126.com

