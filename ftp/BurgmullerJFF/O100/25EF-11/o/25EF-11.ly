%\version "1.4.9.uu1"
\include "paper16.ly"
\include "nederlands.ly"
\header {
  title             = "La Bergeronnette"
  subtitle          = "Die Schäferin  *  The Sheperdess"
  composer          = "Johann Friedrich Franz Burgmüller (1806-1874)"
  piece             = "25 Etudes faciles"
  opus              = "Opus 100."
  meter             = "Allegretto"
  copyright         = "Public domain"
  mutopiatitle      = "La Bergeronnette"
  mutopiacomposer   = "J.F.F. Burgmüller (1806-1874)"
  mutopiainstrument = "Piano"
  date              = "19th century"
  source            = "Collection Litolff, 19th century"
  style             = "Romantic"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@zonnet.com"
  lastupdated       = "2002/Apr/09"

  tagline           = "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
  footer            = "Mutopia-2002/04/09-222"
}

Global = \notes {\key c\major \time 2/4}
Treble = \clef treble
Bass = \clef bass
crescendo = #'(italic "cresc.")
leggiermente = #'(italic "leggiermente")

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
tsDownOd = \property Voice.TextScript \override #'extra-offset = #'(0 . -0.3)


VoiceI = \notes \relative c'''' {
  \stemBoth \slurBoth g16 ( e ) c8-. e16 ( c ) g8-.
  c16 ( g ) e8-. g16 ( e ) c8-.
  \tsDownII <c_\crescendo fis-.> r <c f-.> r
  \tsZero <c e-.> r <c es a-.> r
  
  <c4 d-.> r
  <b g'-.> \scriptUp r\fermata
  \bar "||"
  
  \repeat volta 2 {
  
  \scriptBoth c16^"1" ( \tsUpI e^"2" \tsZero ) g8-.^"4" g-.^"4" g-.^"4"
  e16^"1" ( \tsUpIh g^"2" \tsZero ) c8-.^"5" c-.^"5" c-.^"5"
  c16^"5"\decr ( a ) f8-. c'16 ( as ) f8-.\rced
  c'16^"5" ( g ) e8-.^"1" e-.^"2" e-.^"2"
  
  g16^"4" ( f ) d8-. g16 ( f ) d8-.
  a'16^"5" ( g ) c,8-.^"1" c-.^"2" c-.^"2"
  e16^"4" ( d ) a8-. c16^"4" ( b ) g8-.
  c4 r
  }
  
  \repeat volta 2 {
  
  <c e^"2"^"4" (> <a ) c^"1"^"2">
  <c e (> <a ) c>
  \scriptDown <f'-> a^"5" (> \scriptBoth <d ) f>
  <c2 e^"1"^"2">
  
  e16^"5" ( c ) g8-. g'16 ( e ) c8-.
  c'16 ( g ) e8-. e'16 ( c ) g8-.
  \property Voice.TextSpanner \set #'type = #'dotted-line
  \property Voice.TextSpanner \set #'edge-height = #'(0 . 3)
  \property Voice.TextSpanner \set #'edge-text = #'("8va " . "")
  \property Staff.centralCPosition = #-13
  g'16^"5"\spanrequest \start "text" f e d e d c b^"2"
  }
  
  \alternative {
    {c4\spanrequest \stop "text" r}
    {c16\spanrequest \start "text" e g8-. g-. g-.}
  }
  
  g'4\decr () b,^"2"\rced
  c16^"1" ( e ) g8-. g-. g-.
  g4\decr () b,^"2"\rced
  c16 ( e ) g8-. \tsDownII b,16_\crescendo ( \tsZero d ) g8-.
  
  c,16 ( e ) g8-. b,16 ( d ) g8-.
  c,8\spanrequest \stop "text" \property Staff.centralCPosition = #-6 r <e,,4 c'>
  <e c'> r
  \bar "|."
  
  }

VoiceII = \notes \relative c'' {
  \stemBoth \slurBoth \Treble \property Voice.DynamicText \override #'extra-offset = #'(0 . 2) c16^\p ( \tsUpII e^\leggiermente ) g8-. \tsZero g,16 ( c ) e8-.
  e,16 ( g ) c8-. c,16 ( e ) g8-._"1"
  a-._"2" r as-._"3" r
  g-._"1" r fis-. r
  
  g4-.^\sf r
  <g,-. f'> r\fermata
  
  \property Voice.TextScript \override #'extra-offset = #'(2 . 2) <c8-. e^\p^\leggiermente > r r4
  \tsZero <c8-. e g> r r4
  <c8-. f a^"1"> r <c-. f as^"1"> r
  <c4 e g> r
  
  <b8-. g'> r <b-. g'> r
  <c4 e> r
  <c8-. fis> r <c-. f> r
  <c8-. e> r \Bass c, r  
  
  \Treble a'16_"5"^\mf ( c ) e8-. e-. e-.
  a,16 ( c ) e8-. e-. e-.
  d16 ( f ) a8-. d,16 ( f ) a8-.
  a,16 ( c ) e8-. e-. e-.
  
  \tsUpII g,16^\crescendo ( \tsZero c ) e8-. c16 ( e ) g8-.
  e16 ( g ) c8-. g16 ( c ) e8-.
  g,8^\f r <g,4 ( f'>
  
  <) c8 e> r \Bass c, r
  \Treble <c'4 e> r 
  
  g16 ( b ) d8-._"1" d-._"2" d-._"2"
  <c4 e> r
  g16 ( b ) d8-._"1" d-._"2" d-._"2"
  <c e> r d16 ( b ) g8-.
  
  e'16 ( c ) g8-. d'16 ( b ) g8-.
  <c e> r \Bass <c,4 g'^\f>
  <c g'> r
  }

\score {\notes {
\context PianoStaff <
  \property PianoStaff.midiInstrument = "acoustic grand"
  \property PianoStaff.instrument = #'(Large "11. ")
  \context Staff = "up" <
    \property Staff.VoltaBracket \override #'extra-offset = #'(0 . 2)
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
\midi {\tempo 4=158}
}

