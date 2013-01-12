%\version "1.4.9.uu1"
\include "paper16.ly"
\include "nederlands.ly"
\header {
  title             = "Ballade"
  composer          = "Johann Friedrich Franz Burgmüller (1806-1874)"
  opus              = "Opus 100."
  piece             = "25 Etudes faciles"
  meter             = "Allegro con brio"
  copyright         = "Public Domain"
  mutopiatitle      = "Ballade"
  mutopiacomposer   = "J.F.F. Burgmüller (1806-1874)"
  mutopiainstrument = "Piano"
  date              = "19th century"
  source            = "Collection Litolff, 19th century"
  style             = "Romantic"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@zonnet.com"
  lastupdated       = "2002/Apr/09"

  tagline           = "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
  footer            = "Mutopia-2002/04/09-227"
}

Global = \notes {\key c\minor \time 3/8}
tsZero = \property Voice.TextScript \revert #'extra-offset
dtZero = \property Voice.DynamicText \revert #'extra-offset
crescendo = #'(italic "cresc.")
dimenuendo = #'(italic "dim.")

tsUpII = \property Voice.TextScript \override #'extra-offset = #'( 0 . 2)
tsUpI = \property Voice.TextScript \override #'extra-offset = #'( 0 . 1)
tsUph = \property Voice.TextScript \override #'extra-offset = #'( 0 . 0.5)
tsDownI = \property Voice.TextScript \override #'extra-offset = #'( 0 . -1)
tsDownII = \property Voice.TextScript \override #'extra-offset = #'( 0 . -2)

VoiceI = \notes \relative c' {
  \stemBoth \slurBoth \property Voice.DynamicText \override #'extra-offset = #'(0 . -0.5) \property Voice.TextScript \override #'extra-offset = #'(2 . -1) <c8-._\p_#'(italic "misterioso") es g> <c-. es g> <c es g>
  \tsZero \dtZero <c-. es g> <c-. es g> <c es g>
  <c-. es g> <c-. es g> <c es g>
  <c-. es g> <c-. es g> <c es g>
  
  <c-. es g> <c-. es g> <c es g>
  <c-. es g> <c-. es g> <c es g>
  <c-. es g> <c-. es g> <c es g>
  <c-. es fis> <c-. es fis> <c-. es fis>
  
  <c-. es g> <c-. es g> <c es g>
  <c-. es fis> <c-. es fis> <c-. es fis>
  <c-. es g> <c-. es g> <c es g>
  <c-. es g> <c-. es g> <c es g>
  
  <c-. es g> <c-. es g> <c es g>
  <c-. es g> <c-. es g> <c es g>
  <c-. es g> <c-. es g> <c es g>
  <c-. es fis> <c-. es fis> <c-. es fis>
  
  <c-. es g> <c-. es g> <c es g>
  <c-. es fis> <c-. es fis> <c-. es fis>
  <c-. es g> <c-. es g> r
  <g'-._#'(italic (lines " " "cresc.")) c^"1"^"4"> <g-. c> r
  
  <g-. b> <g-. b> r
  <g f'-.> <g f'-.> r
  <g es'-.> <g es'-.> r
  g'-.^"5"_\f es-.^"3" c-.^"2"
  
  g-._"1" es-._"3" c-._"2"
  R4.
  R
  \scriptUp <es4 g-^> r8
  
  g,4-^ r8
  <d'4 g-^> r8\fermata
  \bar "||"
  
  \repeat volta 2 {
  
  \key c\major \scriptBoth g4.^"1"_#'(italic (lines " " "dolce")) (
  c
  \tsDownI b^"1"
  \tsZero ) g'^"5"
  
  g,^"1" (
  \tsUph c^"3"_""_""_\crescendo
  \tsZero \tsDownI b^"1"
  \tsZero a'4 ) g8
  
  g4.^"4" (
  f4 e8
  \tsUpI g4^"4"\decr \property Voice.TextScript \set #'extra-offset = #'(-3 . 1.5) f8^#'(italic "poco rit.")
  \tsZero ) e4 d8^"1"\rced (
  
  \tsUpI c4.^"2"
  \tsZero e4 d8
  \tsUpII ) c8-.^#'(italic "animato") \tsZero c-.^"4"\decr b-.
  bes-. a-._"1" as-._"2"\rced
  }
  
  as4^"3"\decr () g8\rced
  as4\decr () g8\rced
  g^"1"_""_""_""_\crescendo () c^"4" b-.
  bes-. a!-. as-.^"2"
  
  as4^"3"\decr () g8\rced
  as4\decr () g8\rced
  \property Voice.DynamicText \set #'extra-offset = #'(0 . -2) as4.->^"4"_\sf (
  f_""_""_""_\dimenuendo
  
  d^"1"
  ) g^"5"
  \bar "||" 
  
  \key c\minor <c,8-._\pp es g> <c-. es g> <c es g>
  <c-. es g> <c-. es g> <c es g>
  <c-. es g> <c-. es g> <c es g>
  <c-. es g> <c-. es g> <c es g>
  
  <c-. es g> <c-. es g> <c es g>
  <c-. es g> <c-. es g> <c es g>
  <c-. es g> <c-. es g> <c es g>
  <c-. es fis> <c-. es fis> <c-. es fis>
  
  <c-. es g> <c-. es g> <c es g>
  <c-. es fis> <c-. es fis> <c-. es fis>
  <c-. es g> <c-. es g> <c es g>
  <c-. es g> <c-. es g> <c es g>
  
  <c-. es g> <c-. es g> <c es g>
  <c-. es g> <c-. es g> <c es g>
  <c-. es g> <c-. es g> <c es g>
  <c-. es fis> <c-. es fis> <c-. es fis>
  
  <c-. es g> <c-. es g> <c es g>
  <c-. es fis> <c-. es fis> <c-. es fis>
  <c-. es g> <c-. es g> r
  <g'-._""_""_""_\crescendo c^"1"^"4"> <g-. c> r
  
  <g-. b> <g-. b> r
  <g f'-.> <g f'-.> r
  <g es'-.> <g es'-.> r
  g'-.^"5"_\f es-.^"3" c-.^"2"
  
  g-._"1" es-._"3" c-._"2"
  R4.
  R
  \scriptUp <es4 g-^> r8
  
  g,4-^ r8
  <d'4 g-^> r8
  
  \slurUp c16^"4"_\f ( b c g a b
  c b c g a b
  \tsDownI c_\dimenuendo \tsZero b c g a b
  c b c g a b
  
  ) c4 r8
  <g'8-._\p c> <g-. c> r
  \tsDownII <g'_\dimenuendo c-.> \tsZero <g c-.> r
  \property Voice.TextSpanner \set #'type = #'dotted-line
  \property Voice.TextSpanner \set #'edge-height = #'(0 . 1.5)
  \property Voice.TextSpanner \set #'edge-text = #'("8va " . "")
  \property Staff.centralCPosition = #-13  
  <g'\spanrequest \start "text" c-.> <g\spanrequest \stop "text" c-.> r
  
  \property Staff.centralCPosition = #-6 \property Voice.DynamicText \set #'extra-offset = #'(0 . -1) \property Voice.Hairpin \override #'extra-offset = #'(0 . -1) <c,,,4._\sf\decr es> ~
  <c4\rced es> r8
  \bar "|."
  }

VoiceII = \notes \relative c {
  \stemBoth \slurBoth R4.
  R
  c16_\mp ( b c g a b
  c b c g a b
  
  ) c8-.^"1" r es-.^"3"
  g-. r c,-.
  a'4._\sf ~
  a4 c,8-.
  
  a'4. ~
  a4_\sf r8
  c,16^"1"_\mp ( b c g a b
  c b c g a b
  
  ) c8-. r es^"3"
  g-. r c,-.
  a'4._\sf ~
  a4 c,8-.
  
  a'4._\sf ~
  a4 r8
  g g r
  <es_"1"_"2" g> <es g> r
  
  <d g> <d g> r
  <b g'> <b g'> r
  <c g'> <c g'> r
  R4.
  
  R
  g'8-.^"1" es-.^"2" c-.^"3"
  g4_"5" r8
  <g'4 c> r8
  
  g,4 r8
  <g'4 b> r8\fermata
  
  \key c\major r8 <e g c> <e g c>
  r <e g c> <e g c>
  r <f g d'> <f g d'>
  r <f g d'> <f g d'>
  
  r <e g c> <e g c>
  r <e g c> <e g c>
  r <f g d'> <f g d'>
  r <f g d'> <f g d'>
  
  r <e g c> <e g c>
  r <a cis> <a cis>
  r <d, f a> <d f a>
  r <f a d> <f a d>
  
  r <g c e> <g c e>
  r <g b f'> <g b f'>
  <c e> r r
  R4.
  
  r8 <g b d> <g b d>
  r <g b d> <g b d>
  <c e> r r
  R4.
  
  r8 <g b d> <g b d>
  r <g b d> <g b d>
  as4._"2"
  f_"3"
  
  d_"5"
  g_"1"
  
  \key c\minor c,4 r8
  R4.
  c16^"1"_\mp ( b c g a b
  c b c g a b
  
  ) c8-.^"1" r es-.^"3"
  g-. r c,-.
  a'4._\sf ~
  a4 c,8-.
  
  a'4._\sf ~
  a4 r8
  c,16^"1"_\mp ( b c g a b
  c b c g a b
  
  ) c8-. r es^"3"
  g-. r c,-.
  a'4._\sf ~
  a4 c,8-.
  
  a'4._\sf ~
  a4 r8
  g g r
  <es_"1"_"2" g> <es g> r
  
  <d g> <d g> r
  <b g'> <b g'> r
  <c g'> <c g'> r
  R4.
  
  R
  g'8-.^"1" es-.^"2" c-.^"3"
  g4_"5" r8
  <g'4 c> r8
  
  g,4 r8
  <g'4 b> r8
  
  c,16 b c g a b
  c b c g a b
  c b c g a b
  c b c g a b
  
  c4 r8
  \clef treble <c'8-. es> <c-. es> r
  <c' es-.> <c es-.> r
  <c' es-.> <c es-.> r
  
  \clef bass <c,,,4. g'> ~
  <c4 g'> r8
  }

\score {\notes {
\context PianoStaff <
  \property PianoStaff.midiInstrument = "acoustic grand"
  \property PianoStaff.instrument = #'(Large "15. ")
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

