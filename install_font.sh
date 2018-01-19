#!/bin/bash
otftotfm -a RadikalWUT-Bold.otf radikalwut -e T1-WGL4.enc 

#=== DLA ZAAWANSOWANYCH ===
#
#**Q: Jak zainstalować customową czcionkę której nie ma w pakietach?**
#
#A: Otóż młody padawanie, jest to bardzo trudne. Próbowałem wiele sposobów, ale ten który ostatecznie mi zadziałał to [[https://www.lcdf.org/type/otftotfm.1.html|komenda otftotfm]] która zainstalowała wszystko co trzeba. Sprowadza się to do dwóch komend:
#
#''otftotfm -a nazwa_czcionki.otf nazwa_czcionki_w_tex'', gdyby nie zadziałało warto dodać ściągnąć i dodać kodowanie, np T1-WGL4.enc ''-e T1-WGL4.enc''.
#
#Następnie w pliku .tex wystarczy wpisać:
#
#  \font\nazwa_komendy=nazwa_czcionki_w_tex at 11pt
#  \nazwa_komendy{text w nowej czcionce!}
