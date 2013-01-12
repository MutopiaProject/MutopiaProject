\version "2.16.0"
#(set-global-staff-size 16)
\include "nederlands.ly"
\header {
  title             = "La Pastorale"
  subtitle          = "Hirtenlied  *  Pastoral"
  composer          = "Johann Friedrich Franz Burgmüller (1806-1874)"
  opus              = "Opus 100."
  piece             = "25 Etudes faciles"
  meter             = "Andantino"
  copyright         = "Public Domain"
  mutopiatitle      = "La Pastorale"
  mutopiacomposer   = "BurgmullerJFF"
  mutopiainstrument = "Piano"
  date              = "19th Century"
  source            = "Collection Litolff, 19th Century"
  style             = "Romantic"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@zonnet.com"

 footer = "Mutopia-2013/01/12-218"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

Global =  {\key g\major \time 6/8}
Treble = \clef treble
Bass = \clef bass

MD =  \relative c'' {
  \slurNeutral \stemDown g8-1_\p ( b-2_ \markup{\italic "dolce cantabile"} c d b-1 e-3
  d g-5 e-3 d b c-2
  
  \repeat volta 2 {
  
  \stemNeutral  d4.)_\p ( b8-1 d-2 \slashedGrace fis e
  d4.  g8) ( d b-1
  a4.-2 \grace{a16[ b]} c8 a b
   g4.) g8-1 ( b-2 c
  
  d4. b8-1 d-2 \slashedGrace fis e
  d4.  d8) ( b g'
  fis4._\cresc e8\! fis e
  d4.  d'4) r8
  }
  
  a4._\mf ( c,8-1 e-4 d
   b4.)-1 d8 ( cis d-1
  a'4. c,8-1 e-4 d
   b4.) d8 ( e d
  
  cis2.-2
   d8) es-3\> es-3 es-3 ( d c\!
  b!-2\> c-1 d\! fis-4\> e c-1\!
  b4.-2 a8)-1 d-4 d-3 
  
  d4._\p ( b8 d \slashedGrace fis e
  d4.  g8) ( d b-1
  a4.-2 \grace{a16[ b]} c8 a b
   g4.) g8-1 ( b-2 c
  
  d4.-4 b8-1 d-2 e
  d4.  c8)\>( e g-.\!
  g\> d  b)-1\! b4 ( a8
   g4.)_\p \slashedGrace b8 a8 ( e fis
  
   g4.) \slashedGrace b8 a8 ( e fis 
   g)-.-1 b-.-2 d-.-3 g-.-1 b-. d-.
  g4_\pp r8 r4 r8
  \bar "|."
  }

MSI =  \relative c' {
  \stemNeutral R2.
  R
  
  <g-5 b-3 d-1>8 <g b d> <g b d> <g b d>4.
  <g b d>8 <g b d> <g b d> <g b d>4.
  <g c d>8 <g c d> <g c d> <g c d>4.
  <g b d>8 <g b d> <g b d> <g b d>4.
  
  <g b d>8 <g b d> <g b d> <g b d>4.
  <g b d>8 <g b d> <g b d> <g b d>4.
  \Treble a8 ( a') a g ( a  g)
  fis ( a  fis) d4 r8
  
  \stemUp \Bass r8 d d d4.
  r8 d d d4.
  r8 d d d4.
  r8 d d d4.
  
  \Treble \stemNeutral r8 bes'-2\> bes-2 bes-2 ( a-1 g\!
   fis2.)
  g4. <c, e>
  \stemUp r8 g' g fis4 r8
  
  \stemNeutral \Bass <g, b d>8 <g b d>^\markup{\italic "dolce"} <g b d> <g b d>4.
  <g b d>8 <g b d> <g b d> <g b d>4.
  <g c d>8 <g c d> <g c d> <g c d>4.
  <g b d>8 <g b d> <g b d> <g b d>4.
  
  <f g b d>8^\cresc <f g b d>\! <f g b d> <f g b d>4.
  <e g c>8 <e g c> <e g c> <e g c>4.
  <d g b>4. d8 ( d'  c)
  <g b> <g b d> <g b d> <g c d>4.
  
  <g b d>8 <g b d> <g b d> <g c d>4.
  <g b d>4^\markup{\italic "dim.e poco rall."} r8 <g b d>4 r8
  g,4 r8 r4 r8
  }
MSII =  \relative c {
  s2. s 
  
  s s s s
  
  s s s s
  
  \stemDown <fis c'>2.
  <g b>
  <fis c'>
  <g b>
  
  s2.
  s
  s
  \tieDown d'4. ~ d4 s8
  
  s2. s s s
  s s s s
  
  s s s
  }

\score { {
\context PianoStaff <<
  \set PianoStaff.midiInstrument = "acoustic grand"
  \set PianoStaff.instrumentName = \markup{\large "3."}
  \context Staff = "up" <<
    \Global \clef treble
    \context Voice=VoiceI \MD
  >>
  \context Staff = "down" <<
    \Global \clef bass
    \context Voice=VoiceI \MSI
    \context Voice=VoiceII \MSII
  >>
>>
}
\layout {}

  \midi {
    \tempo 4 = 100
    }


}
