function! codeium#util#LineEndingChars(...) abort
  return "\n"
endfunction

function! codeium#util#HasSupportedVersion() abort
  let s:nvim_virt_text_support = has('nvim-0.6') && exists('*nvim_buf_get_mark')
  let s:vim_virt_text_support = has('patch-9.0.0185') && has('textprop')

  return s:nvim_virt_text_support || s:vim_virt_text_support
endfunction

" A function that takes a string and escapes it to be used in shell code
function! codeium#util#Escape(string) abort
  let string = a:string
  let string = substitute(string, "'", "\\'", 'g')
  let string = substitute(string, '"', '\\"', 'g')
  return '"' . string . '"'
endfunction

