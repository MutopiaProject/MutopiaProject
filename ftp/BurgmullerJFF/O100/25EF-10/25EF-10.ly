\version "2.16.0"
#(set-global-staff-size 16)
\include "nederlands.ly"
\header {
  title             = "Tendre Fleur"
  subtitle          = "Zartes Blümlein  *  A dainty Flower"
  composer          = "Johann Friedrich Franz Burgmüller (1806-1874)"
  piece             = "25 Etudes faciles"
  opus              = "Opus 100."
  meter             = "Moderato"
  copyright         = "Public Domain"
  mutopiatitle      = "Tendre Fleur"
  mutopiacomposer   = "BurgmullerJFF"
  mutopiainstrument = "Piano"
  date              = "19th Century"
  source            = "Collection Litolff, 19th Century"
  style             = "Romantic"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@zonnet.com"

 footer = "Mutopia-2013/01/12-221"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

Global =  {\key d\major \time 4/4}
Treble = \clef treble
Bass = \clef bass

dimpoc = \markup{\italic "dim. e poco rall."}
delicato = \markup{\italic "delicato"}

VoiceI =  \relative c' {
  \repeat volta 2 {
  
  \stemNeutral \slurNeutral d8-1_\p ( e)-.-3_\delicato fis-2 ( a)-.-4 a-1 ( d)-.-3 d-2 ( fis)-.-4
  fis-4 ( e cis a  a'2)-5
  a8-1 ( fis')-.-4 fis ( d)-. d-3 ( a)-.-1 a-4 ( fis)-.-2
  fis-4 ( e cis a  a'2)
  
  a8-5 ( g fis e d4\cr e8 fis
  g\decr fis e d\!  cis)-2 ( e-1 a-2 cis-4
  d-5 b-3 a g fis-3 g fis e
  d b-3 a g <fis d'>4) r
  }
  
  \repeat volta 2 {
  
  cis'2-2_\mf ~ cis8 cis\< ( e a
  gis2\> ~ gis8\! fis e d
  cis2-2 ~  cis8) cis\< ( e a
  gis2\> ~ gis8\! fis e d
  
  cis-2 e)-4 \grace{d16[( e]} d8 cis b  d)-4 \grace{cis16[( d]} cis8 b
  a e' cis a gis-3 e fis gis
   a) gis b a g_\dimpoc fis a g
  fis e g-4 fis a-. g-. ( fis-. e-.
  
  d)-1_\p^ \markup{\italic "a tempo"} ( fis)-.-3_\delicato fis-2 ( a)-.-4 a-1 ( d)-.-3 d-2 ( fis)-.-4
  fis-4 ( e cis a  a'2)-5
  a8-1 ( fis')-.-4 fis ( d)-. d-3 ( a)-.-1 a-4 ( fis)-.-2
  fis-4 ( e cis a  a'2)
  
  a8-5 ( g fis e d4\< e8 fis
  g\> fis e d\!  cis)-2 ( e-1 a-2 cis-4
  d-5 b a g fis-3 g fis e
  d b-3 a g <fis d'>4) r 
  }
  
  
  }

VoiceII =  \relative c' {
  \stemNeutral \slurNeutral r1
  \Treble <a g'>2 g'8 ( e cis a
  <d fis>4 r) r2
  <a g'>2 g'8 ( e cis a
  
  <d fis>4 r) b'8-1 ( a g fis
  e fis g gis a4.  g8)-2 (
  fis g fis b a^\dimpoc b a g
  fis g-1 fis e  d4) r
  
  \Bass a8-5 ( cis) cis ( e) e2
  b8-4 ( d) d ( e) e2
  a,8 ( cis) cis ( e) e2
  b8 ( d) d ( e) e2
  
  a,4 r <d fis> r
  <e, cis'> r <e d'> r
  <a cis> r r2
  r1
  
  r1
  \Treble <a g'>2 g'8 ( e cis a
  <d fis>4 r) r2
  <a g'>2 g'8 ( e cis a
  
  <d fis>4 r) b'8-1 ( a g fis
  e fis g gis a4.  g8)-2 (
  fis g fis b a^\dimpoc b a g
  fis g-1 fis e  d4) r
  
  }

\score { {
\context PianoStaff <<
  \set PianoStaff.midiInstrument = "acoustic grand"
  \set PianoStaff.instrumentName = \markup{\large "10."}
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
    \tempo 4 = 152
    }
}
