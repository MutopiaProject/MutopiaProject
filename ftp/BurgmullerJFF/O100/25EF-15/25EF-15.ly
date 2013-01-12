\version "2.16.0"
#(set-global-staff-size 16)
\include "nederlands.ly"
\header {
  title             = "Ballade"
  composer          = "Johann Friedrich Franz Burgmüller (1806-1874)"
  opus              = "Opus 100."
  piece             = "25 Etudes faciles"
  meter             = "Allegro con brio"
  copyright         = "Public Domain"
  mutopiatitle      = "Ballade"
  mutopiacomposer   = "BurgmullerJFF"
  mutopiainstrument = "Piano"
  date              = "19th Century"
  source            = "Collection Litolff, 19th Century"
  style             = "Romantic"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@zonnet.com"

 footer = "Mutopia-2013/01/12-227"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

Global =  {\key c\minor \time 3/8}

VoiceI =  \relative c' {
  \stemNeutral \slurNeutral <c es g>8_\markup{\italic "misterioso"}_\p-. <c es g>-. <c es g>
  <c es g>-. <c es g>-. <c es g>
  <c es g>-. <c es g>-. <c es g>
  <c es g>-. <c es g>-. <c es g>
  
  <c es g>-. <c es g>-. <c es g>
  <c es g>-. <c es g>-. <c es g>
  <c es g>-. <c es g>-. <c es g>
  <c es fis>-. <c es fis>-. <c es fis>-.
  
  <c es g>-. <c es g>-. <c es g>
  <c es fis>-. <c es fis>-. <c es fis>-.
  <c es g>-. <c es g>-. <c es g>
  <c es g>-. <c es g>-. <c es g>
  
  <c es g>-. <c es g>-. <c es g>
  <c es g>-. <c es g>-. <c es g>
  <c es g>-. <c es g>-. <c es g>
  <c es fis>-. <c es fis>-. <c es fis>-.
  
  <c es g>-. <c es g>-. <c es g>
  <c es fis>-. <c es fis>-. <c es fis>-.
  <c es g>-. <c es g>-. r
  <g' c>\cresc-.-1-4 <g c>-.\! r
  
  <g b>-. <g b>-. r
  <g f'>-. <g f'>-. r
  <g es'>-. <g es'>-. r
  g'-.-5_\f es-.-3 c-.-2
  
  g-.-1 es-.-3 c-.-2
  R4.
  R
  <es g>4-^ r8
  
  g,4-^ r8
  <d' g>4-^ r8\fermata
  \bar "||"
  
  \repeat volta 2 {
  
  \key c\major
  g4.-1_\markup{\italic "dolce"} (
  c
  b-1
  g')-5
  
  g,-1 (
  c-3_\cresc
  b-1\!
  a'4  g8)
  
  g4.-4 (
  f4 e8
  g4-4\> f8^ \markup{\italic "poco rit."}
  e4) d8-1\! (
  
  c4.-2
  e4 d8
  c8)-.^ \markup{\italic "animato"} c-.-4\> b-.
  bes-. a-.-1 as-.-2\!
  }
  
  as4-3\> ( g8)\!
  as4\> ( g8)\!
  g-1\cresc ( c)-4\! b-.
  bes-. a!-. as-.-2
  
  as4-3\> ( g8)\!
  as4\> ( g8)\!
  as4.->-4_\sf (
  f\dim
  
  d-1\!
   g)-5
  \bar "||" 
  
  \key c\minor <c, es g>8_\pp-. <c es g>-. <c es g>
  <c es g>-. <c es g>-. <c es g>
  <c es g>-. <c es g>-. <c es g>
  <c es g>-. <c es g>-. <c es g>
  
  <c es g>-. <c es g>-. <c es g>
  <c es g>-. <c es g>-. <c es g>
  <c es g>-. <c es g>-. <c es g>
  <c es fis>-. <c es fis>-. <c es fis>-.
  
  <c es g>-. <c es g>-. <c es g>
  <c es fis>-. <c es fis>-. <c es fis>-.
  <c es g>-. <c es g>-. <c es g>
  <c es g>-. <c es g>-. <c es g>
  
  <c es g>-. <c es g>-. <c es g>
  <c es g>-. <c es g>-. <c es g>
  <c es g>-. <c es g>-. <c es g>
  <c es fis>-. <c es fis>-. <c es fis>-.
  
  <c es g>-. <c es g>-. <c es g>
  <c es fis>-. <c es fis>-. <c es fis>-.
  <c es g>-. <c es g>-. r
  <g' c>_\cresc-.-1-4 <g c>-.\! r
  
  <g b>-. <g b>-. r
  <g f'>-. <g f'>-. r
  <g es'>-. <g es'>-. r
  g'-.-5_\f es-.-3 c-.-2
  
  g-.-1 es-.-3 c-.-2
  R4.
  R
  <es g>4-^ r8
  
  g,4-^ r8
  <d' g>4-^ r8
  
  \slurUp c16-4_\f ( b c g a b
  c b c g a b
  c_\dim b\! c g a b
  c b c g a b
  
   c4) r8
  <g' c>8_\p-. <g c>-. r
  <g' c>_\dim-. <g c>-.\! r

  \ottava #1
  <g' c>-. <g c>-. r
  \ottava #0
  
  <c,,,\> es>4._\sf ~
  <c\! es>4 r8
  \bar "|."
  }

VoiceII =  \relative c {
  \stemNeutral \slurNeutral R4.
  R
  c16_\mp ( b c g a b
  c b c g a b
  
   c8)-.-1 r es-.-3
  g-. r c,-.
  a'4._\sf ~
  a4 c,8-.
  
  a'4. ~
  a4_\sf r8
  c,16-1_\mp ( b c g a b
  c b c g a b
  
   c8)-. r es-3
  g-. r c,-.
  a'4._\sf ~
  a4 c,8-.
  
  a'4._\sf ~
  a4 r8
  g g r
  <es g>-1-2 <es g> r
  
  <d g> <d g> r
  <b g'> <b g'> r
  <c g'> <c g'> r
  R4.
  
  R
  g'8-.-1 es-.-2 c-.-3
  g4-5 r8
  <g' c>4 r8
  
  g,4 r8
  <g' b>4 r8\fermata
  
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
  as4.-2
  f-3
  
  d-5
  g-1
  
  \key c\minor c,4 r8
  R4.
  c16-1_\mp ( b c g a b
  c b c g a b
  
   c8)-.-1 r es-.-3
  g-. r c,-.
  a'4._\sf ~
  a4 c,8-.
  
  a'4._\sf ~
  a4 r8
  c,16-1_\mp ( b c g a b
  c b c g a b
  
   c8)-. r es-3
  g-. r c,-.
  a'4._\sf ~
  a4 c,8-.
  
  a'4._\sf ~
  a4 r8
  g g r
  <es g>-1-2 <es g> r
  
  <d g> <d g> r
  <b g'> <b g'> r
  <c g'> <c g'> r
  R4.
  
  R
  g'8-.-1 es-.-2 c-.-3
  g4-5 r8
  <g' c>4 r8
  
  g,4 r8
  <g' b>4 r8
  
  c,16 b c g a b
  c b c g a b
  c b c g a b
  c b c g a b
  
  c4 r8
  \clef treble <c' es>8-. <c es>-. r
  <c' es>-. <c es>-. r
  <c' es>-. <c es>-. r
  
  \clef bass <c,,, g'>4. ~
  <c g'>4 r8
  }

\score { {
\context PianoStaff <<
  \set PianoStaff.midiInstrument = "acoustic grand"
  \set PianoStaff.instrumentName = \markup{\large "15."}
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
    \tempo 4 = 104
    }


}

