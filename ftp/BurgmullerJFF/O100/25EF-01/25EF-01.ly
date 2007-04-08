%\version "1.4.9.uu1"
\include "paper16.ly"
\include "nederlands.ly"
\header {
  title             = "La Candeur"
  subtitle          = "Aufrightigkeit  *  Sincerity"
  composer          = "Johann Friedrich Franz Burgmüller (1806-1874)"
  opus              = "Opus 100."
  piece             = "25 Etudes faciles"
  meter             = "Allegro moderato"
%  tagline           = "Public Domain"
  copyright         = "Public Domain"
  mutopiatitle      = "La Candeur"
  mutopiacomposer   = "J.F.F. Burgmüller (1806-1874)"
  mutopiainstrument = "Piano"
  date              = "19th century"
  source            = "Collection Litolff, 19th century"
  style             = "Romantic"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@zonnet.com"
  lastupdated       = "2002/Mar/07"

  tagline           = "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
  footer            = "Mutopia-2002/03/07-202"
}
Global = \notes {\key c\major \time 4/4} 
yOne = \property Voice.Slur \override #'y-free = #1
yTwo = \property Voice.Slur \override #'y-free = #2
yThree = \property Voice.Slur \override #'y-free = #3
yRevert = \property Voice.Slur \revert #'y-free

vOne = \notes \relative c''' {
  \repeat volta 2 {
  \stemBoth \slurBoth \property Voice.DynamicText \override #'extra-offset = #'(0 . -2.5) \yTwo g8^"5"_\p ( e^"3" d ) c \yRevert g' ( e d ) c
  c'^"5"\decr ( a g ) f\rced c' ( a g ) f
  \yTwo g^"5" ( e d c b^"2" c^"1" e^"3" ) f
  g ( e d c b^"2" c^"1" d ) e
  
  \yRevert \property Voice.TextScript \override #'extra-offset = #'(0 . -2.5) g_#'(italic "cresc.") ( \property Voice.TextScript \revert #'extra-offset f e ) d g ( f e ) d
  f^"4" ( e d ) c f ( e d ) c
  \yTwo b^"3"\decr ( a c^"4" b\rced d c b a
  g b c d ) g4 r 
  }
  
  \repeat volta 2 {
  
  \yRevert \property Voice.DynamicText \revert #'extra-offset f8^"5"_\p ( d c b f' d c b
  \property Voice.TextScript \override #'extra-offset = #'(0 . 1) <c1\cr ) e^#'(lines ("4" "2"))>
  \property Voice.TextScript \revert #'extra-offset f8^"5"\rc ( d c b f' d c b
  \property Voice.TextScript \override #'extra-offset = #'(0 . 1) \property Voice.DynamicText \override #'extra-offset = #'(0 . -1) \property Voice.Hairpin \override #'extra-offset = #'(0 . -1) <c1\cr ) e^#'(lines ("4" "2"))>
  
  \property Voice.TextScript \revert #'extra-offset \stemUp g'2^"5"\rc\decr fis\rced\decr
  \stemBoth a8^"5"\rced_\sf\decr () g c,^"1" ( d\rced \property Voice.TextScript \override #'extra-offset = #'(0 . 0.75) f^"5" ) e ( g,^"1" a
  \property Voice.TextScript \revert #'extra-offset \yTwo c^"4"_\p \property Voice.TextScript \override #'extra-offset = #'(0 . -2) ) b_#'(italic "dolce e poco rit.") ( \property Voice.TextScript \revert #'extra-offset g a c^"4" b^"1" e^"5" d
  }
  
  \alternative {
    { ) e2. r4}
    { c8^"3" b ( c^"3" d e f g c,^"1" }
  }
  
  \property Voice.Hairpin \revert #'extra-offset f^"5"\decr d c b\rced f'\decr d c b\rced
  c^"3" ) b ( \property Voice.TextScript \override #'extra-offset = #'(0 . -0.5) c^"1" d e f g c,
  \property Voice.TextScript \revert #'extra-offset f^"5"\decr d c b\rced f'\decr d c b\rced
  ) c4 r r2_\p
  
  <g2_#'(italic "dim. e poco rit.") c e> r
  <e1_\pp c'>
  \bar "|."
  }

vTwo = \notes \relative c'' {
  s1 s s s
  
  s s s s
  
  s s s s
  
  \stemDown \slurDown r8 es ( d ) c r es ( d ) c
  s1
  s
  
  s
  s
  
  s
  s
  s
  s
  
  s
  s
  }

vThree = \notes \relative c {
  \property Voice.TextScript \override #'extra-offset = #'(2 . 3) <c1^#'(italic "dolce") e g>
  \property Voice.TextScript \revert #'extra-offset <c f a>
  \tieBoth <c e g> ~
  <c e g>
  
  <b f'g >
  <c e g>
  <d fis c'>
  <g2. b> r4
  
  g8^"5" ( b c ) d g, ( b c ) d
  g,^"5" ( a b c d c^"2" e_"1" ) c_"2"
  g^"5" ( b c ) d g, ( b c ) d
  g,^"5" ( a b c d c^"2" e_"1" ) c_"2"
  
  a2 <a c>
  <g1 c e>
  \clef treble
  <g2 f'> <g f'>
  
  c8_"5" ( e f g ) c,4 r
  <c2 e> r
  
  <c f as> <c f as>
  <c1 e g>
  <c2 f as> <c f as>
  <c4 e g> r \clef bass \slurDown c,8^"5" ( e f g
  
  ) c,2
  c8 ( e f \tieUp g ~
  <) c,1 g'>   
  }
  

\score {\notes {
\context PianoStaff <
  \property PianoStaff.midiInstrument = "acoustic grand"
  \property PianoStaff.instrument = #'(Large "1. ")
  \context Staff = "up" <
    \Global \clef treble
    \context Voice=VoiceI \vOne
    \context Voice=VoiceII \vTwo
  >
  \context Staff = "down" <
    \property Staff.VoltaBracket = \turnOff
    \Global \clef bass
    \context Voice=VoiceIII \vThree
  >
>
}
\paper {}
\midi {\tempo 4=152}
}

