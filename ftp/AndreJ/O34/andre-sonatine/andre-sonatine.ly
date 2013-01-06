\version "2.16.1"

#(set-global-staff-size 17)
\include "nederlands.ly"
\header {
  title             = "Sonatine"
  composer          = "Johann André (1741-1799)"
  opus              = "Opus 34. I."
  meter             = "Moderato ma con moto."
  copyright         = "Public Domain"
  mutopiatitle      = "Sonatine"
  mutopiacomposer   = "AndreJ"
  mutopiainstrument = "Piano"
  date              = "18th Century"
  source            = "Unknown, late 19th Century"
  style             = "Classical"
  copyright         = "Public Domain"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@zonnet.com"

 footer = "Mutopia-2013/01/06-207"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

Global =  {\key c\major \time 2/2}
Treble = \clef treble
Bass = \clef bass

VoiceI =  \relative c'' {
  \repeat volta 2 {
  \stemNeutral \slurNeutral g4( c b c
  d2 f
  e4 c d b
  c2  g) (
  
   e'4) ( b c a
  d a b2
   a4) <a c>( <g b> <fis a>)
  <fis a>2(  g4) r
  }
  
  \repeat volta 2 {
  g( d' c d
  e2 c
  g4)( e' d e
  f2 d
  
   g,4)-. \tieUp g'2-> ( f4 ~
  f e2 d4
  c b a d
  c8-> b a g fis g a  g)-.
  
  g4_ \markup{\italic "dolce"} ( c b c
  d2 f
  e4 c b c
  d2  f) (
  
  e4  c) ( f c
  fis d g4.  f8) (
   e4) <d f >( <c e>) <f, d'>
  <f  d'>2( <e c'>4 r)
  }
  
  \repeat volta 2 {
  \time 2/4
  \set Timing.measurePosition = #(ly:make-moment -1 4)
  c'8^\markup{\center-column{Rondo \line{Allegretto}}} ( b16 c
   d8)-. d-. b16 ( c d b
  c8  g)-. c( b16 c
   d8)-. <a c>-. <g b>-. <fis a>-.
  
  g4 c8( b16 c
   d8)-. d-. b16 ( c d b
  c8  g)-. c16 ( d  e)-. c-.
  a8-. <d f>-. <c e>-. <b d>-.
  c4
  }
  
  \repeat volta 2 {
  <c e>8-. <c e>-.
  
  <b d >4-> \Bass <c, e>8-. <c e>-.
  <b d >4-> \Treble <c' e>8-. <c e>-.
  <b d>-. <b d>-. <a c>-. <a c>-.
  <g b>4 <g a>8-. <g a>-.
  
  <<\stemUp\slurUp {b8-. c( b)-. a-.} \\ 
  \stemDown\slurDown {g8 g4 fis8} >>
  g4 b16( c d e
   f8)-. <d f>-. <c e>-. <c e>-.
  <b d>4 \Bass b,16( c d e
  
   f8)-. <d f>-. <c e>-. <c e>-.
  <b d>4 r
  f'16 ( e d c  b8)-. r
  \Treble f''16-> ( e d c b c d e
  
  f e f e f e f e
   f8)-. r d-. r
  b4->_\fermata c8 ( b16 c
   d8)-. d-. b16 ( c d b
  
  c8  g)-. c ( b16 c
   d8)-. <a c>-. <g b>-. <fis a>-.
  g4 c8( b16 c
   d8)-. d-. b16 ( c d b
  
  c8  g)-. c16 ( d  e)-. c-.
  a8-. <d f>-. <c e>-. <b d>-.
  c4
  }
  
  c16( d e c
   g8)-. g-. c16 ( d e c
   g8)-. g-. c16( d  e)-. c-.
  a8 <d f>-. <c e>-. <f, b d>-.
  <e c'>4
  \bar "|."
  }

VoiceII =  \relative c {
  \repeat volta 2 {
  \stemNeutral \slurNeutral r4 e ( d c
  b d b g
  c e f g
  e g e  c)
  
  r gis' ( a g
  fis2 g4 e
  c a d d,
  g d  g,) r
  }
  
  \repeat volta 2 {
  r b'' ( a b
  c g e'  g,)
  r c ( b c
  d g, b  g)
  
  r e' ( g, d'
  g, c g  b) (
  a2 d,
   g) r
  
  r4 e8 ( g d g c, g'
  b, g' d g b, g' d g
  c, g' e g d g c, g'
  b, g' d g b, g' d g
  
  c, c' bes c a c a c
  d, d' c d b! d b d
   c4) f, ( g g,
  c g  c,) r
  }
  
  \repeat volta 2 {
  \set Timing.measurePosition = #(ly:make-moment -1 4)
  \Treble \time 2/4 e''8 ( g
  f g d g
   e4) e8 ( c
   b)-. c-. d-. d-.
  
  \Bass g,16 ( f! e d e g e g
  f g f g d g d g
  e g e g e d  c)-. e-.
  f8-. d-. g-. g,-.
  c4
  }
  
  \repeat volta 2 {
  \Treble c'16 ( d e f
   g8)-. g,-. \Bass c,16 ( d e f
   g8)-. g,-. c16 ( d e fis
  g a b c  d8)-. dis-.
  e4-> cis16 ( d e cis
  
   d8)-. e ( d)-. d,-.
  g4 g16 ( a b c
   d8)-. b-. c-. c,-.
  g'4-> r
  
  r8  b,[-. c-. c,-.]
  g'4-> g16 ( a b c
   d8)-. r \Treble g16 ( a b c
   d8)-. r g16 ( a b c
  
  d cis d cis d cis d cis
   d8)-. r b-. r
  g4->\fermata e8 ( g
  f g d g
  
   e4) e8 ( c
   b) c-. d-. d-.
  \Bass g,16 ( f! e d e g e g
  f g f g d g d g
  
  e g e g e d  c)-. e-.
  f8-. d-. g-. g,-.
  c4
  }
  
  \Treble r
  <b' f'>8-. <b f'>-. <c e>-. r
  \Bass <b, f'>-. <b f'>-. e16 ( d  c)-. e-.
  f8-. d-. g-. g,-.
  c4
  }

Dyns = \new Dynamics {
  \repeat volta 2 {
  s4\fp s2. |
  s1*5 |
  s4 s4\< s2 |
  s2\> s4\! s |
  }
  
  \repeat volta 2 {
  s1*2 |
  s4 s\cresc s s\! |
  s1 |
  s4 s2\< s4 |
  s2. s4\! |
  s\decresc s s\! s |
  s1*5 |
  s4 s\cresc s s\! |
  s1*2 |
  s2\> s4\! s
  }
  
  \repeat volta 2 {
  \time 2/4
  \set Timing.measurePosition = #(ly:make-moment -1 4)
  s4 |
  s2 |
  s4 s8\< s |
  s4. s8\! |
  s4 s8\f s |
  s2 |
  s4 s16\< s s s16\! |
  s2 |
  s4
  }
  
  \repeat volta 2 {
  s8\p\< s8 |
  
  s4\! s8\< s |
  s4\! s8\f s |
  s2 |
  s4 s8\p s |
  
  s8 s4\> s8\! |
  s4 s16\< s s s\! |
  s2 |
  s4 s16\< s s s\! |
  
  s2*3 |
  s4 b16\< s s8 |
  
  s s s s16 s\! |
  s4 s8\p s |
  s4 s8\p s |
  s2 |
  
  s4 s8\< s |
  s4 s8 s\! |
  s4 s8\f s |
  s4 s16\< s s s\! |
  
  s2*2 |
  s4
  }
  
  s16\pp s s8 |
  s2 |
  s4 s16\f s16 s8 |
}

\score { {
\context PianoStaff <<
  \set PianoStaff.midiInstrument = "acoustic grand"
  \new Staff = "up" {
    \Global \clef treble
    \new Voice=VcI \VoiceI
  }
  \Dyns
  \new Staff = "down" {
    \Global \clef bass
    \new Voice=VcII \VoiceII
  }
>>
}
\layout {}

  \midi {
    \tempo 4 = 104
    }
}
