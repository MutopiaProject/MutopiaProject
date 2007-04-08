%\version "1.4.9.uu1"
\include "paper16.ly"
\include "nederlands.ly"
\header {
  title             = "Sonatine"
  composer          = "Johann André (1741-1799)"
  opus              = "Opus 34. I."
  meter             = "Moderato ma con moto."
  copyright         = "Public Domain"
  tagline           = "Public Domain"
  mutopiatitle      = "Sonatine"
  mutopiacomposer   = "J. André (1741-1799)"
  mutopiainstrument = "Piano"
  date              = "18th century"
  source            = "Unknown, late 19th century"
  style             = "Classical"
  copyright         = "Public Domain"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@zonnet.com"
  lastupdated       = "2002/Feb/27"

  tagline           = "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
  footer            = "Mutopia-2002/02/27-207"
}

Global = \notes {\key c\major \time 2/2}
tieUp = \property Voice.Tie \override #'direction = #1
tieBoth = \property Voice.Tie \override #'direction = #0
tieDown = \property Voice.Tie \override #'direction = #-1
slurUp = \property Voice.Slur \override #'direction = #1
slurBoth = \property Voice.Slur \override #'direction = #0
slurDown = \property Voice.Slur \override #'direction = #-1
Treble = \clef treble
Bass = \clef bass

VoiceI = \notes \relative c'' {
  \repeat volta 2 {
  \stemBoth \slurBoth \property Voice.DynamicLineSpanner \override #'padding = #2.5 g4\fp ( c b c
  d2 f
  e4 c d b
  c2 ) g (
  
  ) e'4 ( b c a
  d a b2
  ) a4 \property Voice.DynamicLineSpanner \set #'padding = #1 <a\cr ( c> <g b> <)fis a>
  <fis2\rc\decr ( a> ) g4\rced r
  }
  
  \repeat volta 2 {
  g ( d' c d
  e2 c \property Voice.TextScript \override #'extra-offset = #'(0 . -3)
  ) g4_#'(italic "cresc.") ( e' d e
  f2 d
  
  ) g,4-. \tieUp g'2->\cr ( f4 ~
  f e2 d4\rc \property Voice.TextScript \set #'extra-offset = #'(0 . -1.5)
  c_#'(italic "decresc.") b a d
  c8-> b a g fis g a ) g-.
  
  \property Voice.TextScript \set #'extra-offset = #'(0 . -2.5) g4_#'(italic "dolce") ( c b c
  d2 f
  e4 c b c
  d2 ) f (
  
  \property Voice.TextScript \set #'extra-offset = #'(0 . -1) e4 ) c_#'(italic "cresc.") ( f c
  fis d g4. ) f8 (
  ) e4 <d f (> <c ) e> <f, d'>
  \property Voice.DynamicLineSpanner \set #'padding = #3 <f2\decr ( d'> <) e4\rced c'> r
  }
  
  \repeat volta 2 {
  \time 2/4 \property Voice.DynamicText \override #'extra-offset = #'(0 . -1)
  \property Voice.TextScript \revert #'extra-offset \property Voice.DynamicLineSpanner \set #'padding = #2 \partial 4 c'8\p^#'(large (lines ("Allegretto" " ")))^#'(Large "Rondo") ( b16 c
  ) d8-. d-. b16 ( c d b
  c8 ) g-. c\cr ( b16 c
  ) d8-. <a-. c> <g-. b> <fis-.\rc a>
  
  g4 \property Voice.DynamicText \set #'extra-offset = #'(0 . 1) c8\f ( b16 c
  ) d8-. d-. b16 ( c d b
  c8 ) g-. \property Voice.DynamicLineSpanner \set #'padding = #1 c16\cr ( d ) e-. c-.\rc
  a8-. <d f-.> <c e-.> <b d-.>
  \partial 4 c4
  }
  
  \repeat volta 2 {
  \partial 4 \property Voice.DynamicText \revert #'extra-offset <c8\p\cr e-.> <c e-.>
  
  <b4\rc d-> > \Bass <c,8\cr e-.> <c e-.>
  <b4\rc d-> > \Treble <c'8\f e-.> <c e-.>
  <b d-.> <b d-.> <a c-.> <a c-.>
  <g4 b> \property Voice.DynamicText \override #'extra-offset = #'(0 . -1.5) <g8-.\p a> <g-. a>
  
  <\context Voice=VA <\voiceOne\stemUp\slurUp {b8-. c () b-. a-.}> 
   \context Voice=VB <\voiceTwo\stemDown\slurDown {g8 \property Voice.DynamicLineSpanner \override #'padding = #-1 g4\decr fis8\rced}>>
  g4 b16\cr ( c d e\rc
  ) f8-. <d f-.> <c e-.> <c e-.>
  <b4 d> \Bass b,16\cr ( c d e\rc
  
  ) f8-. <d f-.> <c e-.> <c e-.>
  <b4 d> r
  f'16 ( e d c ) b8-. r
  \Treble f''16-> ( e d c b\cr c d e
  
  f e f e f e f e\rc
  ) f8-. r d-.\p r
  b4->\fermata c8\p ( b16 c
  ) d8-. d-. b16 ( c d b
  
  c8 ) g-. c\cr ( b16 c
  ) d8-. <a c-.> <g b-.> <fis\rc a-.>
  g4 \property Voice.DynamicText \revert #'extra-offset c8\f ( b16 c
  ) d8-. d-. b16\cr ( c d b\rc
  
  c8 ) g-. c16 ( d ) e-. c-.
  a8-. <d f-.> <c e-.> <b d-.>
  \partial 4 c4
  }
  
  \partial 4 \property Voice.DynamicText \override #'extra-offset = #'(0 . -1) c16\pp ( d e c
  ) g8-. g-. c16 ( d e c
  ) g8-. g-. c16\f ( d ) e-. c-.
  a8 <d f-.> <c e-.> <f, b d-.>
  \partial 4 <e4 c'>
  \bar "|."
  }

VoiceII = \notes \relative c {
  \stemBoth \slurBoth r4 e ( d c
  b d b g
  c e f g
  e g e ) c
  
  r gis' ( a g
  fis2 g4 e
  c a d d,
  g d ) g, r
  
  r b'' ( a b
  c g e' ) g,
  r c ( b c
  d g, b ) g
  
  r e' ( g, d'
  g, c g ) b (
  a2 d,
  ) g r
  
  r4 e8 ( g d g c, g'
  b, g' d g b, g' d g
  c, g' e g d g c, g'
  b, g' d g b, g' d g
  
  c, c' bes c a c a c
  d, d' c d b! d b d
  ) c4 f, ( g g,
  c g ) c, r
  
  \Treble \time 2/4 e''8 ( g
  f g d g
  ) e4 e8 ( c
  ) b-. c-. d-. d-.
  
  \Bass g,16 ( f! e d e g e g
  f g f g d g d g
  e g e g e d ) c-. e-.
  f8-. d-. g-. g,-.
  c4
  
  \Treble c'16 ( d e f
  ) g8-. g,-. \Bass c,16 ( d e f
  ) g8-. g,-. c16 ( d e fis
  g a b c ) d8-. dis-.
  e4-> cis16 ( d e cis
  
  ) d8-. e () d-. d,-.
  g4 g16 ( a b c
  ) d8-. b-. c-. c,-.
  g'4-> r
  
  r8 [b,-. c-. c,-.]
  g'4-> g16 ( a b c
  ) d8-. r \Treble g16 ( a b c
  ) d8-. r g16 ( a b c
  
  d cis d cis d cis d cis
  ) d8-. r b-. r
  g4->\fermata e8 ( g
  f g d g
  
  ) e4 e8 ( c
  ) b c-. d-. d-.
  \Bass g,16 ( f! e d e g e g
  f g f g d g d g
  
  e g e g e d ) c-. e-.
  f8-. d-. g-. g,-.
  c4
  
  \Treble r
  <b'8-. f'> <b-. f'> <c-. e> r
  \Bass <b, f'-.> <b f'-.> e16 ( d ) c-. e-.
  f8-. d-. g-. g,-.
  c4
  }

\score {\notes {
\context PianoStaff <
  \property PianoStaff.midiInstrument = "acoustic grand"
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
\midi {\tempo 4=104}
}

