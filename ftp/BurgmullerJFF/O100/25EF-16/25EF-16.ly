%\version "1.4.9.uu1"
\include "paper16.ly"
\include "nederlands.ly"
\header {
  title             = "Douce Plainte"
  subtitle          = "Klagelied  *  Lamentation"
  composer          = "Johann Friedrich Franz Burgmüller (1806-1874)"
  piece             = "25 Etudes faciles"
  opus              = "Opus 100."
  meter             = "Allegro moderato"
  copyright         = "Public domain"
  mutopiatitle      = "Douce Plainte"
  mutopiacomposer   = "J.F.F. Burgmüller (1806-1874)"
  mutopiainstrument = "Piano"
  date              = "19th century"
  source            = "Collection Litolff, 19th century"
  style             = "Romantic"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@zonnet.com"
  lastupdated       = "2002/Apr/09"

  tagline           = "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
  footer            = "Mutopia-2002/04/09-228"
}


Global = \notes {\key g\minor \time 4/4}
phraseUp = \property Voice.PhrasingSlur \override #'direction = #1
phraseBoth = \property Voice.PhrasingSlur \override #'direction = #0
phraseDown = \property Voice.PhrasingSlur \override #'direction = #-1
Treble = \clef treble
Bass = \clef bass

tsUpII = \property Voice.TextScript \override #'extra-offset = #'( 0 . 2)
tsUpI = \property Voice.TextScript \override #'extra-offset = #'( 0 . 1)
tsUph = \property Voice.TextScript \override #'extra-offset = #'( 0 . 0.5)
tsZero = \property Voice.TextScript \revert #'extra-offset
tsDownI = \property Voice.TextScript \override #'extra-offset = #'( 0 . -1)
tsDownII = \property Voice.TextScript \override #'extra-offset = #'( 0 . -2)

crescendo = #'(italic "cresc.")

VoiceI = \notes \relative c'' {
  \repeat volta 2{
  
  \stemBoth \slurBoth \tieBoth d2^"5" ( ~ d8 c bes a
  g2 ~ ) g8 [d'^"2" ( g f]
  es2 ~ es8 es d c
  d2 ~ ) d8 r r4
  
  a16^"1" ( c a c d c d c ) a8 r r4
  \tsDownII g16_\crescendo ( \tsZero bes g bes d bes d bes ) g8 r r4
  r g'8^"5"_\sf\decr e^"3" cis^"2" a^"1" g^"4" e^"2"\rced
  }
  
  \alternative {
    {\tsDownI d8_#'(italic "dim. e poco rit.") \tsZero d' a d g, d' fis, d'}
    {d d' fis,_"2" d' a^"1" d^"3" ( cis d}
  }
  
  \repeat volta 2 {
  
  \property Voice.DynamicText \override #'extra-offset = #'(0 . -2) \property Voice.Hairpin \override #'extra-offset = #'(0 . -2) <c'!8_\p\cr ) es-.^"1"^"4"> <c d-.^"1"^"3"> <c es-.> <c d> <c es-.> <c d-.> <c es-.> <c\rc d>
  d^"2"\decr ( g f es ) d-.\rced d^"1" ( es e
  <es!\cr ) g-.^"2"^"5"> <es f-.^"2"^"4"> <es g-.> <es f-.> <es g-.> <es f-.> <es g-.> <es\rc f-.>
  f^"1"\decr ( bes a g ) f-.\rced [bes^"3"\cr ( c ) d\rc]
  
  d4._\f ( a8 bes4. \tsUpI g8^"1" \tsZero
  fis4.^"2" a8 \tsDownI ) g4._\crescendo \tsZero d8
  \property Voice.Hairpin \set #'extra-offset = #'(0 . -1) \property Voice.DynamicText \set #'extra-offset = #'(0 . -1) f^"4"\decr es d c^"1"\rced bes^"3"_\p g d' fis,^"2"
  }
  
  \alternative {
    {g16_"1" bes d bes g-. r r8 r d'^"3" cis d}
    {g16_"1" bes d bes g-. r r8 r2}
  }
  \bar "|."
  }

VoiceII = \notes \relative c' {
  \slurDown \property Voice.DynamicText \override #'extra-offset = #'(0 . 2) g16^"5"^\p ( \tsUpII  bes^#'(italic "dolente") \tsZero g bes d bes d bes ) g8 r r4
  g16^"5" ( bes g bes d bes d bes ) g8 r r4
  c16 ( es c es g es g es ) c8 r r4
  g16^"5" ( bes g bes d bes d bes ) g8 [d'^"1" ( es^"2" d^"1"]
  
  fis,2^"2" ~ ) fis8 [d'^"1" ( es^"2" d^"1"]
  g,2^"5" ~ ) g8 \Treble [bes_"4" ( \property Voice.TextScript \override #'extra-offset = #'(0.5 . 0.5) d_"2" \tsZero g_"1"]
  bes^"2" ) a^"1" r4 r2
  
  \Bass d,,4_"5" c'_"1" bes_"3" a
  d,4 r r2
  
  \Treble <fis'8_"1"_"3" a> <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> 
  <g2_"2"_"4" bes> ~ <g8 bes> r r4
  <a8 c_"1"_"3"> <a c> <a c> <a c> <a c> <a c> <a c> <a c>
  <bes2 d_"1"_"2"> ~ <bes8 d> r r4
  
  \Bass fis,16^"3" ( a^"1" fis a ) fis8-. r g16^"4" ( bes g bes ) g8-. r
  a16^"3" ( c a c ) a8-. r bes16^"4" ( d^"1" bes d b^"3" d b d
  c4^"2" d8 es^"2" ) d^"1" r <d,4 c'>
  
  <g4 bes> r16 cis16 ( d bes ) g8 r r4
  <g4 bes> r16 cis16 ( d bes ) g8 r r4
  }

\score {\notes {
\context PianoStaff <
  \property PianoStaff.midiInstrument = "acoustic grand"
  \property PianoStaff.instrument = #'(Large "16. ")
  \context Staff = "up" <
    \Global \clef treble
    \context Voice=VcI \VoiceI
  >
  \context Staff = "down" <
    \property Staff.VoltaBracket = \turnOff
    \Global \clef bass
    \context Voice=VcII \VoiceII
  >
>
}
\paper {}
\midi {\tempo 4=126}
}

