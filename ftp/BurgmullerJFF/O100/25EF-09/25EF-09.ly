%\version "1.4.9.uu1"
\include "paper16.ly"
\include "nederlands.ly"
\header {
  title             = "La Chasse"
  subtitle          = "Die Jagd  *  The Chase"
  composer          = "Johann Friedrich Franz Burgmüller (1806-1874)"
  piece             = "25 Etudes faciles"
  opus              = "Opus 100."
  meter             = "Allegro vivace"
  copyright         = "Public domain"
  mutopiatitle      = "La Chasse"
  mutopiacomposer   = "J.F.F. Burgmüller (1806-1874)"
  mutopiainstrument = "Piano"
  date              = "19th century"
  source            = "Collection Litolff, 19th century"
  style             = "Romantic"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@zonnet.com"
  lastupdated       = "2002/Mar/20"

  tagline           = "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
  footer            = "Mutopia-2002/03/20-220"
}

Global = \notes {\key c\major \time 6/8 \partial 8}
Treble = \clef treble
Bass = \clef bass

tsDownIh = \property Voice.TextScript \override #'extra-offset = #'(0 . -1.5)
tsDownI = \property Voice.TextScript \override #'extra-offset = #'(0 . -1)
tsZero = \property Voice.TextScript \revert #'extra-offset 
tsUpI = \property Voice.TextScript \override #'extra-offset = #'(0 . 1)
tsUpIh = \property Voice.TextScript \override #'extra-offset = #'(0 . 1.5)
tsUpIIh = \property Voice.TextScript \override #'extra-offset = #'(0 . 2.5)

crescendo = #'(italic "cresc.")


VoiceI = \notes \relative c''' {
  \stemDown\slurBoth r8
  R2.
  R
  R
  R\fermata
  
  g8-.--^"5"_\f g,-.^"2" g-.^"1" g'-.--^"5" g,-.^"2" g-.^"1"
  g'-.--^"5" g,-.^"2" g-.^"1" g'-.-- g,-. g-.
  g'-.-- g,-. g-. g'-.-- g,-. g-.
  \stemBoth g'-|^"5"\decr f-. d-.^"2" b-.^"1" a-.^"2" g-.\rced
  
  \property Voice.DynamicText \override #'extra-offset = #'(0 . -1) \stemDown g'-.--_\p g,-. g-. g'-.-- g,-. g-.
  g'-.-- g,-. g-. g'-.-- g,-. g-.
  g'-.-- g,-. g-. g'-.-- g,-. g-.
  \stemBoth g' ( e c ) c'4 r8
  
  \bar "||"
  
  <b,4._\p d^"1"^"2"^#'(italic "un poco agitato")> <b d>
  <d\decr f^"2"^"4" (> <c\rced ) es>
  <es g (> <c ) es>
  <b2. d^"1"^"2">
  
  \tsDownI <b4._\crescendo d> \tsZero <b d>
  <d\decr f (> <c\rced ) es>
  <es g (> <c ) es>
  \tieBoth <b d> ~ <b8 d> r r
  
  \stemDown g'-.--^"5"_\f g,-.^"2" g-.^"1" g'-.-- g,-. g-.
  g'-.-- g,-. g-. g'-.-- g,-. g-.
  g'-.-- g,-. g-. g'-.-- g,-. g-.
  \stemBoth g'-|^"5"\decr f-. d-.^"2" b-. a-.^"2" g-.\rced
  
  \stemDown g'-.--_\p g,-. g-. g'-.-- g,-. g-.
  g'-.-- g,-. g-. g'-.-- g,-. g-.
  g'-.-- g,-. g-. g'-.-- g,-. g-.
  \stemBoth g' ( e c ) c'4 r8
  
  \repeat volta 2 {
  
  e,4.^"4" () a,
  c\decr () b\rced
  a^"1" () gis^"2"
  b^"4" () a^"1"
  
  e'^"2"\cr ( \tsUpI a^"5"\rc \tsZero
  g8\decr f e d c^"3" b\rced
  a f'^"5" e b^"1" d^"3" c
  a c^"2" e^"3" ) a4 r8
  }
  
  \stemDown g-.--^"5"_\f g,-.^"2" g-.^"1" g'-.-- g,-. g-.
  g'-.-- g,-. g-. g'-.-- g,-. g-.
  g'-.-- g,-. g-. g'-.-- g,-. g-.
  \stemBoth g'-|^"5"\decr f-. d-.^"2" b-. a-.^"2" g-.\rced
  
  \stemDown g'-.--_\p g,-. g-. g'-.-- g,-. g-.
  g'-.-- g,-. g-. g'-.-- g,-. g-.
  g'-.-- g,-. g-. g'-.-- g,-. g-.
  \stemBoth g' ( e c ) c'8 r r
  
  R2.
  R
  R
  \stemDown g8-.--^"5"_\f g,-.^"2" g-.^"1" g'-| r r
  
  R2.
  R
  R
  g8-.--^"5" g,-.^"2" g-.^"1" g'-| r r
  
  g8-.--^"5"_#'(italic (lines (" " "perdendosi"))) g,-.^"2" g-.^"1" g'-| r r
  g8-.--^"5" g,-.^"2" g-.^"1" g'-| r \stemBoth <c,, e-.>
  <c4 e-.-- > \tsDownIh <c8_#'(italic "rall.") e-.> \tsZero <c4 e-.-- > <c8 e-.>
  <c2. e\fermata>
  
  \bar "|."
  
  }

VoiceII = \notes \relative c {
  \property Voice.DynamicText \override #'extra-offset = #'(0 . 2) <c8 e g-.^\p>
  
  <c4 e g-.--> <c8 e g-.> <c4 e g-.--> <c8 e g-.>
  <c4 e g-.--> <e8_"1"_"3"_"5" g c-.> \tsUpIh <e4 g c-.--^\crescendo> \tsZero <g8_"1"_"2"_"5" c e-.>
  <g4 c e-.--> <e8 g c-.> <e4 g c-.--> <g8 b d-.>
  \property Voice.DynamicText \set #'extra-offset = #'(0 . 1) <g2. b d\fermata^\f>
  
  <e4._"1"_"5" c'> <g_"1"_"5" d'>
  <d'_"1"_"2" f> <c_"1"_"3" e>
  <e,_"1"_"5" c'> <c'_"1"_"2" e>
  <g2. d'>
  
  <e4. c'> <g d'>
  <d' f> <c e>
  <e, c'> <g d'>
  <e c'> c4 r8
  
  \Treble r8 fis'_"2" () g r fis () g
  r fis () g r fis () g
  r fis () g r fis () g
  \Bass r g,^"5" ( b d b ) g
  
  r8 fis^"2" () g r fis () g
  r fis () g r fis () g
  r fis () g r fis () g
  r fis () g g,-. r r
  
  <e'4. c'> <g d'>
  <d' f> <c e>
  <e,_"1"_"5" c'> <c'_"1"_"2" e>
  <g2. d'>
  
  <e4. c'> <g d'>
  \scriptDown <d'-> f> \scriptBoth <c e>
  <e, c'> <g d'>
  <e c'> c4 r8
  
  \property Voice.DynamicText \set #'extra-offset = #'(0 . 1.5) \Treble \tsUpIIh a'8^\p ( c^#'(italic "dolente") ) e \tsZero a, ( c ) e
  a, ( d ) f a, ( d ) f
  a, ( d ) f a, ( d ) f
  a, ( c ) e a, ( c ) e 
  
  a, ( cis ) g' a, ( cis ) g'
  <d4 f> r8 r4 r8
  \Bass <e,4 a c> r8 <e4 gis d'> r8
  <a4 c> r8 a,4 r8
  
  <e'4. c'> <g d'>
  <d' f> <c e>
  <e,_"1"_"5" c'> <c'_"1"_"2" e>
  <g2. d'>
  
  <e4. c'> <g d'>
  \scriptDown <d'-> f> \scriptBoth <c e>
  <e, c'> <g d'>
  <e c'> ~ <e8 c'> r <c e g-.^\p>
  
  <c4 e g-.--> <c8 e g-.> <c4 e g-.--> <c8 e g-.>
  \tsUpIh <c4 e g-.--^\crescendo> \tsZero <e8 g c-.> <e4 g c-.--> <g8 c e-.>
  <g4 c e-.--> <e8 g c-.> <e4 g c-.--> <g8 b d-.>
  <g4. b d> ~ <g8 b d> r <c, e g-.^\p>
  
  <c4 e g-.--> <c8 e g-.> <c4 e g-.--> <c8 e g-.>
  \tsUpIh <c4 e g-.--^\crescendo> \tsZero <e8 g c-.> <e4 g c-.--> <g8 c e-.>
  <g4 c e-.--> <e8 g c-.> <e4 g c-.--> <g8 b d-.>
  <g4. b d> ~ <g4 b d> <g8_"1"_"3" d'>
  
  <e4. c'> ~ <e4 c'> <g8 d'>
  <e4. c'> ~ <e8 c'> r <c g'^\pp>
  <c4 g'> <c8 g'> <c4 g'> <c8 g'>
  <c2.\fermata g'>
  }

\score {\notes {
\context PianoStaff <
  \property PianoStaff.midiInstrument = "acoustic grand"
  \property PianoStaff.instrument = #'(Large "9. ")
  \context Staff = "up" <
    \Global \clef treble
    \context Voice=VcI \VoiceI
  >
  \context Staff = "down" <
    \Global \clef bass
    \context Voice=VcII \VoiceII
  >
>
}
\paper {}
\midi {\tempo 4=200}
}

