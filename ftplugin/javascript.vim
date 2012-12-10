setlocal shiftwidth=4
setlocal tabstop=4
setlocal makeprg=jslint\ %
setlocal errorformat=%-P%f,
         \%E%>%\\s%##%n\ %m,%Z%.%#Line\ %l\\,\ Pos\ %c,
         \%-G%f\ is\ OK.,%-Q
