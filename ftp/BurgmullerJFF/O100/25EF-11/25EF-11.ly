\version "2.16.0"
#(set-global-staff-size 16)
\include "nederlands.ly"
\header {
  title             = "La Bergeronnette"
  subtitle          = "Die Schäferin  *  The Sheperdess"
  composer          = "Johann Friedrich Franz Burgmüller (1806-1874)"
  piece             = "25 Etudes faciles"
  opus              = "Opus 100."
  meter             = "Allegretto"
  copyright         = "Public Domain"
  mutopiatitle      = "La Bergeronnette"
  mutopiacomposer   = "BurgmullerJFF"
  mutopiainstrument = "Piano"
  date              = "19th Century"
  source            = "Collection Litolff, 19th Century"
  style             = "Romantic"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@zonnet.com"

 footer = "Mutopia-2013/01/12-222"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

Global =  {\key c\major \time 2/4}
Treble = \clef treble
Bass = \clef bass
leggiermente = \markup{\italic "leggiermente"}

VoiceI =  \relative c'''' {
  \stemNeutral \slurNeutral g16 ( e  c8)-. e16 ( c  g8)-.
  c16 ( g  e8)-. g16 ( e  c8)-.
  <c fis>_\cresc-. r\! <c f>-. r
  <c e>-. r <c es a>-. r
  
  <c d>4-. r
  <b g'>-.
  r\fermata
  
  \repeat volta 2 {
  
  c16-1 ( e-2 g8)-.-4 g-.-4 g-.-4
  e16-1 ( g-2 c8)-.-5 c-.-5 c-.-5
  c16-5\> ( a  f8)-. c'16 ( as  f8)-.\!
  c'16-5 ( g  e8)-.-1 e-.-2 e-.-2
  
  g16-4 ( f  d8)-. g16 ( f  d8)-.
  a'16-5 ( g  c,8)-.-1 c-.-2 c-.-2
  e16-4 ( d  a8)-. c16-4 ( b  g8)-.
  c4 r
  }
  
  \repeat volta 2 {
  
  <c e >-2-4( <a c>)-1-2
  <c e >( <a c>)
  <f' a >->-5(
  <d f>)
  <c e>2-1-2
  
  e16-5 ( c  g8)-. g'16 ( e  c8)-.
  c'16 ( g  e8)-. e'16 ( c  g8)-.

  \ottava #1
  g'16-5 f e d e d c b-2
  }
  
  \alternative {
    {c4 \ottava #0 r}
    {\ottava #1 c16 e g8-. g-. g-.}
  }
  
  g4\> ( b,)-2\!
  c16-1 ( e  g8)-. g-. g-.
  g4\> ( b,)-2\!
  c16 ( e  g8)-. b,16_\cresc ( d\!  g8)-.
  
  c,16 ( e  g8)-. b,16 ( d  g8)-.
  c,8 \ottava #0 r <e,, c'>4
  <e c'> r
  \bar "|."
  
  }

VoiceII =  \relative c'' {
  \stemNeutral \slurNeutral \Treble c16^\p ( e^\leggiermente  g8)-. g,16 ( c  e8)-.
  e,16 ( g  c8)-. c,16 ( e  g8)-.-1
  a-.-2 r as-.-3 r
  g-.-1 r fis-. r
  
  g4-.^\sf r
  <g, f'>-. r_\fermata
  
  <c e >8^\p^\leggiermente-. r r4
  <c e g>8-. r r4
  <c f a>8-.-1 r <c f as>-.-1 r
  <c e g>4 r
  
  <b g'>8-. r <b g'>-. r
  <c e>4 r
  <c fis>8-. r <c f>-. r
  <c e>8-. r \Bass c, r  
  
  \Treble a'16-5^\mf ( c  e8)-. e-. e-.
  a,16 ( c  e8)-. e-. e-.
  d16 ( f  a8)-. d,16 ( f  a8)-.
  a,16 ( c  e8)-. e-. e-.
  
  g,16^\cresc ( c\!  e8)-. c16 ( e  g8)-.
  e16 ( g  c8)-. g16 ( c  e8)-.
  g,8^\f r <g,  f'>4(
  
  <c e>8 r) \Bass c, r
  \Treble <c' e>4 r 
  
  g16 ( b  d8)-.-1 d-.-2 d-.-2
  <c e>4 r
  g16 ( b  d8)-.-1 d-.-2 d-.-2
  <c e> r d16 ( b  g8)-.
  
  e'16 ( c  g8)-. d'16 ( b  g8)-.
  <c e> r \Bass <c, g'>4^\f
  <c g'> r
  }

\score { {
\context PianoStaff <<
  \set PianoStaff.midiInstrument = "acoustic grand"
  \set PianoStaff.instrumentName = \markup{\large "11."}
  \context Staff = "up" <<
    \Global \clef treble
    \context Voice=VcI \VoiceI
  >>
  \context Staff = "down" <<
    \Global \clef bass
    \context Voice=VcII \VoiceII
  >>
>>
}
\layout {}

  \midi {
    \tempo 4 = 158
    }


}

