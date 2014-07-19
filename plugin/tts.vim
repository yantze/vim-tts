" author : yantze
" mail : yantze@126.com
"
func! TTS()
    let path=globpath(&rtp, 'plugin\tts\tts.bat')
    if filereadable(globpath(&rtp, 'tts.bat'))
        let path=globpath(&rtp, 'tts.bat')
    endif
    let read=expand("%:p")
    if !filereadable(read)
        exe ":w! read.txt"
    endif
    exe "! ".expand(path)." -p ".expand("%:p")
endfunction
func! TTSGBK()
    let path=globpath(&rtp, 'plugin\tts\tts.bat')
    if filereadable(globpath(&rtp, 'tts.bat'))
        let path=globpath(&rtp, 'tts.bat')
    endif
    let read=expand("%:p")
    if !filereadable(read)
        exe ":w! read.txt"
    endif
    exe "! ".expand(path)." -c cp936 -p ".expand("%:p")
endfunction
func! MSTTS()
    let path=globpath(&rtp, 'plugin\tts\tts.vbs')
    if filereadable(globpath(&rtp, 'tts.vbs'))
        let path=globpath(&rtp, 'tts.vbs')
    endif
    let read=expand("%:p")
    if !filereadable(read)
        exe ":w! read.txt"
    endif
    exe "! ".expand(path)." ".expand("%:p")
endfunction
command! -nargs=0 TTS call TTS()
command! -nargs=0 MSTTS call MSTTS()
command! -nargs=0 TTSGBK call TTSGBK()
