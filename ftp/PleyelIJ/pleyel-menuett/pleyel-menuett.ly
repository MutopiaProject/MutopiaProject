\version "2.16.1"
#(set-global-staff-size 16)
\include "nederlands.ly"
\header {
  title             = "Menuett"
  composer          = "Ignaz Joseph Pleyel (1757-1831)"
  meter             = "Moderato."
  copyright         = "Public Domain"
  mutopiatitle      = "Rondo"
  mutopiacomposer   = "PleyelIJ"
  mutopiainstrument = "Piano"
  date              = "18th Century"
  source            = "Unknown, late 19th Century"
  style             = "Classical"
  copyright         = "Public Domain"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@zonnet.com"

 footer = "Mutopia-2013/01/06-191"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

Global =  {\key c\major \time 3/4}
slurUp = \override Slur   #'direction = #1
slurDown = \override Slur   #'direction = #-1
phraseUp = \override PhrasingSlur   #'direction = #1
phraseDown = \override PhrasingSlur   #'direction = #-1

VoiceI =  \relative c' {
  \repeat volta 2 {
  \stemNeutral <e c'>4 <e c'> <e c'>
  \slurDown \phraseUp <e  c'  >2(\( <d b'>4\))-.
  <f a> <f a> <f a>
  <f  a  >2(\( <e g>4\))-.
  
  <c' e> <c e> <c e>
  \slurUp <c e >2( <d f>4
  <e g> <d f> <c e>)
  <c e >2( <b d>4)
  }
  
  \repeat volta 2 {
  <b d> <b d> <cis e>
  <cis e >2( <d f>4)-.
  <a c!> <a c> <b d>
  \slurDown <b  d >2(\( <c e>4\))-.
  
  <e, c'> <e c'> <e c'>
  <e c'>2 <f d'>4
  <g e'>2 <f d'>4
  <e c'> r_ \markup{\large {\italic {"Fine."}}} r
  }
  
  \repeat volta 2 {
  \slurUp f'8-> ( e d c bes a
  g4 a bes
   a8) ( g a bes c d
  e4 f g
  
   f)-. e8-> ( g e c
   f4)-. e8-> ( g e c
  f c <e g> c <f a> c
  <f a>2 <e g>4)
  }
  
  \repeat volta 2 {
  c8 ( d e f g e
  c4 bes a
   g) g8 ( a bes g
  f4 a  c)
  
  g ( a bes
  c8 a f a c a
  bes g a f g e
   f2) r4
  }
  }
VoiceII =  \relative c {
  \stemNeutral \slurUp c4 ( e c
  g'8 fis g fis  g4)-.
  f! ( a b
  c8 b c b  c4)-.
  
  c, ( c' b
  a g f
  e f fis
  g8 fis g fis  g4) 
  
  g ( g' e
  d8 cis d e  d4)-.
  f, ( f' d
  c8 b c d  c4)-.
  
  c, ( c' b
  a g f
  \phraseDown e8 f g4 g,
   c)-. \( g-.  c,\)-. 
  
  <f' a> r r
  e8 c' f, c' g c
  f,4 r r
  g8 c a c bes c
  
  a c bes2->
  a8 c bes2->
  a4 g f
  c'8 b! c b c4
  
  c, r r
  e8 c' e, c' f, c'
  bes c bes c bes c
  a c a c a c
  
  e, c' f, c' g c
  a2 r4
  bes ( c c,
   f)-._ \markup{\large {\italic {"D.C. al Fine."}}} c-. f,-.
  }

\score { {
\context PianoStaff <<
  \set PianoStaff.midiInstrument = "bright acoustic"
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
