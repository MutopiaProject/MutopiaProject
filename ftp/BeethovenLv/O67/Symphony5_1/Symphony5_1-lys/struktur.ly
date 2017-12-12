\version "2.16.2"


\header {
  title = "5. Symphonie, Op. 67"
%  subtitle = "Op. 67"
 subtitle = "1. Satz"
 % instrument = "Violoncello"
  composer =  "Ludwig van Beethoven" 
  %opus = "Op. 67"
  separator = "—"
  lifetime = "(1770-1827)" 
  tagline = "jhe:2017"
}

partiturUmbruch = {
  s2*17 \break
  s2*25 \break
}

struktur = {
 \time 2/4
 \key c \minor

 \set Score.markFormatter = #format-mark-box-alphabet

 s8^\markup{\fontsize #2 \bold "Allegro con brio"} s s4
 s2*20
 \mark\default % A
 s2*22
 \mark\default % B
 s2*15
 \mark\default % C
 s2*16
 \mark\default % D
 s2*19
 \mark\default % E
 s2*16
 \mark\default % F
 s2*15
 \mark\default % G
 s2*28
 \mark\default % H
 s2*15
 \mark\default  % I
 s2*11
 \mark #11 % K
 s2*19
 \mark\default % L
 s2*30
 \mark\default % M
 s2*25
 \mark\default % N
 s2*15
\cadenzaOn
 s2 % normale Noten
 s2*4 % Kadenz
\cadenzaOff
 s2 % halbe, damit der Takt richtig gezählt wird
 \mark\default % O

 s2*34
 \mark\default % P
 s2*28
 \mark\default % Q
 s2*15
 \mark\default % R
 s2*41
 \mark\default % S
 s2*36
 \mark\default % T
 s2*46
 \mark\default % U
 s2*14
 \mark\default % V


 
}
