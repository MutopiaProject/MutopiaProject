\version "2.16.0"
#(set-global-staff-size 16)
\include "nederlands.ly"
\header {
  title             = "Douce Plainte"
  subtitle          = "Klagelied  *  Lamentation"
  composer          = "Johann Friedrich Franz Burgmüller (1806-1874)"
  piece             = "25 Etudes faciles"
  opus              = "Opus 100."
  meter             = "Allegro moderato"
  copyright         = "Public Domain"
  mutopiatitle      = "Douce Plainte"
  mutopiacomposer   = "BurgmullerJFF"
  mutopiainstrument = "Piano"
  date              = "19th Century"
  source            = "Collection Litolff, 19th Century"
  style             = "Romantic"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@zonnet.com"

 footer = "Mutopia-2013/01/12-228"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}


Global =  {\key g\minor \time 4/4}
phraseUp = \override PhrasingSlur   #'direction = #1
phraseNeutral = \override PhrasingSlur   #'direction = #0
phraseDown = \override PhrasingSlur   #'direction = #-1
Treble = \clef treble
Bass = \clef bass

VoiceI =  \relative c'' {
  \repeat volta 2{
  
  \stemNeutral \slurNeutral \tieNeutral d2-5 ( ~ d8 c bes a
  g2 ~  g8)  d'[-2 ( g f]
  es2 ~ es8 es d c
  d2 ~  d8) r r4
  
  a16-1 ( c a c d c d c  a8) r r4
  g16_\cresc ( bes\! g bes d bes d bes  g8) r r4
  r g'8-5_\sf\> e-3 cis-2 a-1 g-4 e-2\!
  }
  
  \alternative {
    {d8_ \markup{\italic "dim. e poco rit."} d' a d g, d' fis, d'}
    {d, d' fis,-2 d' a-1 d-3 ( cis d}
  }
  
  \repeat volta 2 {
  
  <c!\< es>8)_\p-.-1-4 <c d>-.-1-3 <c es>-. <c d> <c es>-. <c d>-. <c es>-. <c\! d>
  d-2\> ( g f es  d)-.\! d-1 ( es e
  <es!\< g>)-.-2-5 <es f>-.-2-4 <es g>-. <es f>-. <es g>-. <es f>-. <es g>-. <es\! f>-.
  f-1\> ( bes a g  f)-.\!  bes[-3\< ( c  d)\!]
  
  d4._\f ( a8 bes4. g8-1
  fis4.-2 a8 g4.)_\cresc d8\!
  f-4\> es d c-1\! bes-3_\p g d' fis,-2
  }
  
  \alternative {
    {g16-1 bes d bes g-. r r8 r d'-3 cis d}
    {g,16-1 bes d bes g-. r r8 r2}
  }
  \bar "|."
  }

VoiceII =  \relative c' {
  \slurDown g16-5^\p ( bes^ \markup{\italic "dolente"} g bes d bes d bes  g8) r r4
  g16-5 ( bes g bes d bes d bes  g8) r r4
  c16 ( es c es g es g es  c8) r r4
  g16-5 ( bes g bes d bes d bes  g8)  d'[-1 ( es-2 d-1]
  
  fis,2-2 ~  fis8)  d'[-1 ( es-2 d-1]
  g,2-5 ~  g8) \Treble  bes[-4 ( d-2 g-1]
  bes-2  a)-1 r4 r2
  
  \Bass d,,4-5 c'-1 bes-3 a
  d,4 r r2
  
  \Treble <fis' a>8-1-3 <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> 
  <g bes>2-2-4 ~ <g bes>8 r r4
  <a c>8-1-3 <a c> <a c> <a c> <a c> <a c> <a c> <a c>
  <bes d>2-1-2 ~ <bes d>8 r r4
  
  \Bass fis,16-3 ( a-1 fis a  fis8)-. r g16-4 ( bes g bes  g8)-. r
  a16-3 ( c a c  a8)-. r bes16-4 ( d-1 bes d b-3 d b d
  c4-2 d8 es-2  d)-1 r <d, c'>4
  
  <g bes>4 r16 cis16 ( d bes  g8) r r4
  <g bes>4 r16 cis16 ( d bes  g8) r r4
  }

\score { {
\context PianoStaff <<
  \set PianoStaff.midiInstrument = "acoustic grand"
  \set PianoStaff.instrumentName = \markup{\large "16."}
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
    \tempo 4 = 126
    }
}
