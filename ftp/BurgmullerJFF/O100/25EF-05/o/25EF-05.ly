%\version "1.4.9.uu1"
\include "paper16.ly"
\include "nederlands.ly"
\header {
  title             = "Innocence"
  subtitle          = "Unschuld"
  composer          = "Johann Friedrich Franz Burgmüller (1806-1874)"
  opus              = "Opus 100."
  piece             = "25 Etudes faciles"
  meter             = "Moderato"
  copyright         = "Public Domain"
  mutopiatitle      = "Innocence"
  mutopiacomposer   = "J.F.F. Burgmüller (1806-1874)"
  mutopiainstrument = "Piano"
  date              = "19th century"
  source            = "Collection Litolff, 19th century"
  style             = "Romantic"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@zonnet.com"
  lastupdated       = "2002/Mar/19"

  tagline           = "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
  footer            = "Mutopia-2002/03/19-214"
}

Global = \notes {\key f\major \time 3/4}
tsDownII = \property Voice.TextScript \override #'extra-offset = #'(0 . -2)
tsZero = \property Voice.TextScript \revert #'extra-offset
tsUph = \property Voice.TextScript \override #'extra-offset = #'(0 . 0.5)
tsUpI = \property Voice.TextScript \override #'extra-offset = #'(0 . 1)
tsUpIh = \property Voice.TextScript \override #'extra-offset = #'(0 . 1.5)
tsUpII = \property Voice.TextScript \override #'extra-offset = #'(0 . 2)
crescendo = #'(italic "cresc.")
diminuendo = #'(italic "dim.")

VoiceI = \notes \relative c''' {
  \repeat volta 2 {
  
  \property Voice.DynamicText \override #'extra-offset = #'(0 . -2) \stemBoth \slurBoth a16^"4"_\p ( \tsDownII g_#'(italic "grazioso") \tsZero f ) e f^"4" ( e d ) c d^"4" ( c bes a
  c8^"3"\decr ) bes\rced bes4 r
  g'16^"5" ( f e d c\cr d e f^"1" g a bes c\rc
  bes8\decr ) a\rced a4 r
  
  a16^"5" ( \property Voice.TextScript \override #'extra-offset =#'(-2 . -2) g_\crescendo f \property Voice.TextScript \revert #'extra-offset e \tsUpIh f^"3" \tsZero e d \tsUpI cis^"2" \tsZero ) d4^"1"
  g16^"4" ( f e ) d e^"4" ( d c ) b c^"4" ( b a ) g
  as8-> () g a-> () g e'-> ( d
  }
  
  \alternative {
    { ) c4 r r}
    {c8-. \tsDownII [c_\diminuendo ( \tsZero b c d ) c]}
  }
  
  \repeat volta 2 {
  
  \property Voice.DynamicText \set #'extra-offset = #'(0 . -1.5) c8-.^"2"_\p ( \tsUph c16^"1" \tsZero d ) e8-. e16^"1" ( f g4
  ) f8-. f16^"1" ( g ) a8-. a16^"1" ( bes ) c4
  \property Voice.TextSpanner \set #'type = #'dotted-line
  \property Voice.TextSpanner \set #'edge-height = #'(0 . 3.5)
  \property Voice.TextSpanner \set #'edge-text = #'("8va " . "")
  \property Staff.centralCPosition = #-13
  c8-.^"2"\spanrequest \start "text" c16^"1" ( d ) e8-. e16^"1" ( f g4 )
  f8-. f16^"1" ( g ) a8-. a16^"1" ( bes ) c4
  
  c16^"5"_\f ( bes a g f e^"3" d c\spanrequest \stop "text" \property Staff.centralCPosition = #-6 bes^"4" a g f
  ) d'8-.^"5" d16 ( c \tsDownII ) bes8-._\diminuendo \tsZero bes16^"3" ( a ) g8-. g16^"5" ( f
  \tsDownII e_\crescendo \tsZero d c d e f^"1" g a bes c^"1" d e
  ) f8-. r \property Voice.DynamicText \revert #'extra-offset <a,,,4_\f f'> r
  }
      
  }

VoiceII = \notes \relative c {
  \stemBoth \slurBoth \property Staff.VoltaBracket = \turnOff <f2. a c>
  <f4 g d'> <f g d'> <f g d'>
  <e2. bes' c>
  <f4_"1"_"3"_"5" a c> <f a c> <f a cis^"1">
  
  <f2_"1"_"3"_"5" a d> <f4 a d>
  <g2_"1"_"2"_"5" c e> <g4 c e>
  <g b f'> <g b f'> <g b f'>
  
    <c8_"1"_"2" e> [c^"1"^\diminuendo b c bes g]
    <c8 e> r r4 r
  
  [bes8 ( \tsUpIh c^#'(italic "leggiermente") bes \tsZero c bes c]
  [a c a c a ) c]
  \tsUpII [bes^\crescendo ( c \tsZero bes c bes c]
  [a c a c a ) c]
  
  <f,2. ( a>
  <) bes8 d> r8 r4 r
  <c,2. ( bes'>
  <) f8 a> r8 f,4 r
  }

\score {\notes {
\context PianoStaff <
  \property PianoStaff.midiInstrument = "acoustic grand"
  \property PianoStaff.instrument = #'(Large "5. ")
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
\midi {\tempo 4=112}
}

