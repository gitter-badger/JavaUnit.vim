let s:save_cpo = &cpo
set cpo&vim

if exists('g:JavaUnit_loaded')
    finish
endif

let g:JavaUnit_loaded = 1

command! -nargs=*
            \ JavaUnitExec
            \ call javaunit#TestMethod(<q-args>)

command! -nargs=0
            \ JavaUnitTestMain
            \ call javaunit#TestMain()

command! -nargs=0
            \ JavaUnitTestAll
            \ call javaunit#TestAllMethods()

command! -nargs=0
            \ JavaUnitTestMaven
            \ call javaunit#MavenTest()

command! -nargs=0
            \ JavaUnitTestMavenAll
            \ call javaunit#MavenTestAll()

command! -nargs=? -complete=file
            \ JavaUnitNewTestClass
            \ call javaunit#NewTestClass(expand("%:t:r"))

command! -nargs=0
            \ JavaUnitServerCompile
            \ call javaunit#Compile()

let &cpo = s:save_cpo
unlet s:save_cpo
