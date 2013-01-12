\version "2.16.0"
#(set-global-staff-size 16)
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
  mutopiacomposer   = "BurgmullerJFF"
  mutopiainstrument = "Piano"
  date              = "19th Century"
  source            = "Collection Litolff, 19th Century"
  style             = "Romantic"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@zonnet.com"

 footer = "Mutopia-2013/01/12-215"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

Global =  {\key c\major \time 4/4}

VoiceI =  \relative c' {
  \repeat volta 2 {
  \stemNeutral \slurNeutral e8-1_\p ( f16 g a-1 b c d e8  b-2 c-4 a-2
  g)_\cresc a16\! ( b c-1 d e f g8 fis g e-3
  f)-.-1 d'-. d,-.-1 b'-. b,-.-1 ( g' f d
  <c e>1)
  
  e,8-1_\p ( f16 g a-1 b c d e8 b-2 c-4 a-2
   g) a16 ( b c-1 d e f g8 fis g e-3
   f)-.-1 d'-. d,-.-1 b'-. b,-.-1 ( g' f d
  c8)_\cresc d16\! ( e f-1 g a b  c4)_\f r_ \markup{\large {\italic "Fine."}}
  }
  
  r8 c-2 ( e)-. a,-2 ( c)-. e,-1 ( a)-. c,-1 (
  <d f>1)
  r8 b'-2 ( d)-. g,-2 ( b)-. d,-1 ( g)-. b,-1 (
  <c e>1)
  
  r8 e,-1 ( f)-.-2 e ( fis)-.-3 e ( gis)-.-3 e (
   a)-.-3 e ( b')-.-4\cresc e, (\! c')-.-5 e, ( a)-. e (
   gis)-. e'-5 ( b)-.-2 e ( c)-. e ( a,)-. e'
  r_\f e4\> e e e8\!
  \bar "||"
  }

VoiceII =  \relative c {
  \stemNeutral \slurNeutral c8-5 ( d16 e f g a-3 b c8 gis-3 a-2 f-4
   e8) ( f16 g a b c-3 d e8 dis e c
  <g d'>1)
  c8-.-2 e-.-1 a,-.-4 c-.-1 g-.-4 c-.-1 e,-.-5 c'-.-1
  
  c,8-5 ( d16 e f g a-3 b c8 gis-3 a-2 f-4
   e8) ( f16 g a b c-3 d e8 dis e c
  <g d'>2.)-1-5 <g  b>4(
   c8)-1 b16 ( a g-1 f e d  c4) r
  
  <a' c>1^\f
  r8 d-2 ( f)-.-1 a,-4 ( d)-.-1 f,-4 ( a)-.-1 d,-5 (
  <g-1 b-2>1)
  r8 c-2 ( e)-.-1 g,-4 ( c)-.-1 e,-4 ( g)-. c,-5 (
  
  e2)^\p r4 d'-1
  c-2 gis-4 a-3 c-1
  b-2 gis-4 a-3 c-2
  e-1_ \markup{\large {\italic "D.C. al Fine."}} e e e
  
  }

\score { {
\context PianoStaff <<
  \set PianoStaff.midiInstrument = "acoustic grand"
  \set PianoStaff.instrumentName = \markup{\large "6."}
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
    \tempo 4 = 132
    }


}

