%\version "1.4.9.uu1"
\include "paper16.ly"
\include "nederlands.ly"
\header {
  title             = "Progrès"
  subtitle          = "Fortschritt  *  Progress"
  composer          = "Johann Friedrich Franz Burgmüller (1806-1874)"
  opus              = "Opus 100."
  piece             = "25 Etudes faciles"
  meter             = "Allegro"
  copyright         = "Public Domain"
  mutopiatitle      = "Progrès"
  mutopiacomposer   = "J.F.F. Burgmüller (1806-1874)"
  mutopiainstrument = "Piano"
  date              = "19th century"
  source            = "Collection Litolff, 19th century"
  style             = "Romantic"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@zonnet.com"
  lastupdated       = "2002/Mar/19"

  tagline           = "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
  footer            = "Mutopia-2002/03/19-215"
}

Global = \notes {\key c\major \time 4/4}
tsDownIIh = \property Voice.TextScript \override #'extra-offset = #'(0 . -2.5)
tsDownII = \property Voice.TextScript \override #'extra-offset = #'(0 . -2)
tsDownIh = \property Voice.TextScript \override #'extra-offset = #'(0 . -1.5)
tsDownI = \property Voice.TextScript \override #'extra-offset = #'(0 . -1)
tsDownh = \property Voice.TextScript \override #'extra-offset = #'(0 . -0.5)
tsZero = \property Voice.TextScript \revert #'extra-offset 
tsUph = \property Voice.TextScript \override #'extra-offset = #'(0 . 0.5)
tsUpI = \property Voice.TextScript \override #'extra-offset = #'(0 . 1)
tsUpIh = \property Voice.TextScript \override #'extra-offset = #'(0 . 1.5)
tsUpII = \property Voice.TextScript \override #'extra-offset = #'(0 . 2)

crescendo = #'(italic "cresc.")

VoiceI = \notes \relative c' {
  \repeat volta 2 {
  \stemBoth \slurBoth \property Voice.DynamicText \override #'extra-offset = #'(0 . -2) e8_"1"_\p ( f16 g \tsDownI a^"1" \tsZero b c d e8 \tsDownIh b^"2" \tsZero c^"4" a^"2"
  \tsDownIIh ) g_\crescendo \tsZero a16 ( b \tsDownh c^"1" \tsZero d e f g8 fis g \property Voice.TextScript \override #'extra-offset = #'(0 . -0.3) e^"3"
  \tsZero ) f-.^"1" d'-. d,-.^"1" b'-. b,-.^"1" ( g' f d
  <c1 ) e>
  
  e,8_"1"_\p ( f16 g \tsDownI a^"1" \tsZero b c d e8 \tsDownIh b^"2" \tsZero c^"4" a^"2"
  ) g a16 ( b \tsDownh c^"1" \tsZero d e f g8 fis g \property Voice.TextScript \override #'extra-offset = #'(0 . -0.3) e^"3" \tsZero
  ) f-.^"1" d'-. d,-.^"1" b'-. b,-.^"1" ( g' f d
  \tsDownII ) c8_\crescendo \tsZero d16 ( e \tsUpIh f^"1" \property Voice.TextScript \set #'extra-offset = #'(-1 . -2) g a b ) c4_\f r_#'(large (italic "Fine."))
  \tsZero }
  
  r8 c^"2" () e-. a,^"2" () c-. e,^"1" () a-. c,^"1" (
  <d1 ) f>
  r8 b'^"2" () d-. g,^"2" () b-. d,^"1" () g-. b,^"1" (
  <c1 ) e>
  
  r8 e,_"1" () f-._"2" e () fis-._"3" e () gis-._"3" e (
  ) a-._"3" e () b'-._"4"_""_\crescendo e, () c'-._"5" e, () a-. e (
  ) gis-. e'^"5" () b-.^"2" e () c-. e () a,-. e'
  \property Voice.DynamicText \override #'extra-offset = #'(0 . 0.5) r_\f \property Voice.Hairpin \override #'extra-offset = #'(0 . -1) e4\decr e e e8\rced
  \bar "||"
  }

VoiceII = \notes \relative c {
  \stemBoth \slurBoth c8^"5" ( d16 e f g \property Voice.TextScript \override #'extra-offset = #'(0 . -0.1) a^"3" b c8 \property Voice.TextScript \set #'extra-offset = #'(0 . -0.2) gis^"3" \tsZero \tsUpI a^"2" f^"4"
  ) e8 ( f16 g a b \property Voice.TextScript \set #'extra-offset = #'(0 . 1.2) c^"3" \tsZero d e8 dis e c
  <) g1 d'>
  c8-.^"2" e-.^"1" a,-.^"4" c-.^"1" g-.^"4" c-.^"1" e,-.^"5" c'-.^"1"
  
  c,8^"5" ( d16 e f g \property Voice.TextScript \override #'extra-offset = #'(0 . -0.1) a^"3" b c8 \property Voice.TextScript \set #'extra-offset = #'(0 . -0.2) gis^"3" \tsZero \tsUpI a^"2" f^"4"
  ) e8 ( f16 g a b \property Voice.TextScript \set #'extra-offset = #'(0 . 1.2) c^"3" \tsZero d e8 dis e c
  <) g2._"1"_"5" d'> <g4 ( b>
  ) c8^"1" b16 ( a \tsUpIh g^"1" \tsZero f e d ) c4 r
  
  <a'1 c^\f>
  r8 d^"2" () f-.^"1" a,^"4" () d-.^"1" f,^"4" () a-.^"1" d,^"5" (
  <g1 ) b^"2"^"1">
  r8 c^"2" () e-.^"1" g,^"4" () c-.^"1" e,^"4" () g-. c,^"5" (
  
  \property Voice.DynamicText \override #'extra-offset = #'(0 . 2) ) e2^\p r4 d'^"1"
  c^"2" gis^"4" a^"3" c^"1"
  b^"2" gis^"4" a^"3" c^"2"
  e^"1"_#'(large (italic "D.C. al Fine.")) e e e
  
  }

\score {\notes {
\context PianoStaff <
  \property PianoStaff.midiInstrument = "acoustic grand"
  \property PianoStaff.instrument = #'(Large "6. ")
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
\midi {\tempo 4=132}
}

