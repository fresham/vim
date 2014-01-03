setlocal shiftwidth=2
setlocal tabstop=2
setlocal expandtab
setlocal makeprg=jslint\ %
setlocal errorformat=%-P%f,
         \%E%>%\\s%##%n\ %m,%Z%.%#Line\ %l\\,\ Pos\ %c,
         \%-G%f\ is\ OK.,%-Q
