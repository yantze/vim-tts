" author : yantze
" mail : yantze@126.com
"
func! TTS()
    let path=globpath(&rtp, 'tts.bat')
    exe "! ".expand(path)." -p "."%:p"
endfunction
func! TTSGBK()
    let path=globpath(&rtp, 'tts.bat')
    exe "! ".expand(path)." -c cp936 -p "."%:p"
endfunction
func! MSTTS()
    let path=globpath(&rtp, 'tts.vbs')
    exe "! ".expand(path)." %:p"
endfunction
command! -nargs=0 TTS call TTS()
command! -nargs=0 MSTTS call MSTTS()
command! -nargs=0 TTSGBK call TTSGBK()


