" vim: ts=4 sw=4 et

function! neomake#makers#ft#chef#SupersetOf() abort
    return 'ruby'
endfunction

function! neomake#makers#ft#chef#EnabledMakers() abort
    return ['foodcritic']
endfunction

function! neomake#makers#ft#chef#foodcritic() abort
    return {
        \ 'errorformat': 'FC%n: %m: %f:%l',
        \ 'postprocess': function('neomake#makers#ft#chef#FoodcriticProcess')
        \ }
endfunction

function! neomake#makers#ft#chef#FoodcriticProcess(entry) abort
    let a:entry.type='W'
endfunction
