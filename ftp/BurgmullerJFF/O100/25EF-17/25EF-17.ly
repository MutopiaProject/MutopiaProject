\version "2.16.0"
#(set-global-staff-size 16)
\include "nederlands.ly"
\header {
  title             = "La Babillarde"
  subtitle          = "Plappermäulchen  *  Chatterbox"
  composer          = "Johann Friedrich Franz Burgmüller (1806-1874)"
  piece             = "25 Etudes faciles"
  opus              = "Opus 100."
  meter             = "Allegro moderato"
  copyright         = "Public Domain"
  mutopiatitle      = "La Babillarde"
  mutopiacomposer   = "BurgmullerJFF"
  mutopiainstrument = "Piano"
  date              = "19th Century"
  source            = "Collection Litolff, 19th Century"
  style             = "Romantic"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@zonnet.com"

 footer = "Mutopia-2013/01/12-229"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

Global =  {\key f\major \time 3/8}

VoiceI =  \relative c' {
  <e g>4._\p-1-3 ~
  <e g>8 <<{ g8( bes
  <f a>4.-3-1 ~
  <f a>8) a8( d c4.-4 ~ c8 bes-3  g)-1}
          \\{ e4-1 s2
          f4-1 e4.-1\> ~ e4\! g8}>>
  
  \repeat volta 2 {\stemNeutral \slurNeutral \tieNeutral
  
  r8 c16-3 c-2 c-1 ( a'
   g8)-.  c,16[-3 c-2 c-1 ( g']
   f8)-. \stemDown  a,16[-3 a-2 a-1 ( d-5]
  \stemUp c-4 e,-1 dis-2 e-1 d'!-5  c)
  
  \stemNeutral r8 c16-3_\cresc c-2\! c-1 ( a'
   g8)-. \stemDown  g,16[-3 g-2 g-1 ( e']
  \stemNeutral  d8)-.  g,16[-3 g-2 g-1 ( d'-5]
   c8) b16 ( c d  c)
  }

  \repeat volta 2 {
  
  <e, g >4_\p-1-2( <f a>8-1-3
  <g bes>4-2-4 <e g>8)-1-2
  <bes'\> d >4-3-5( <a\! c>8
  <bes\> d>4 <a\! c>8)
  
  <g bes>4_\cresc-1-3 <g bes >8-2-4(\!
  <f a>4)-1-3 <f a >8-2-4(
  <e g> g16)[-3 ( fis g-1 a]
  bes\dim a-1\! bes-2 b d-5  c)
  
  r8 c16-3 c-2 c-1 ( a'
   g8)-.  c,16[ c c ( g']
   f8)-.  a,16[ a a ( d]
  c e, dis e d'!  c)
  
  r8 c16-3\cresc c-2 c-1\! ( a'
   g8)-.  g,16[-3 g-2 g-1 ( d']
   e,8)-.  e16[-3 e-2 e-1 ( c']
  }
  
  \alternative {
    {f,4) r8}
    {f8 \stemDown  a16[-3 a-2 a-1 ( c-2]}
  }
  
   f8)-. c16[-3\cresc c-2\! c-1 ( f-3]
   a8)-. f16[-3 f-2 f-1 ( a]
   c8)-.  a16[-3 a-2 a-1 ( c]
   f4)_\f r8
  \bar "|."
  }
   
VoiceII =  \relative c, {
  r8 c-.-5 c'-.-1
  c'4-2 r8
  r c,,-.-5^\cresc c'-1\!
  c'4-2 r8
  
  r c,,-.-5 c'-.-1
  c'4-2 r8
  
  <f, a c>^\p r <f a c>
  <e bes' c> r <e bes' c>
  <f a c> r <f a c>
  <g bes c>4.->
  
  <f a c>8 r <f a c>
  <g-1 c-2 e-5> r <g c e>
  <g b f'> r <g b f'>
  <c e> r r
  
  c,16-5 c'-1 c-2 c-1 c-2 c-1
  c, c' c c c c
  c, c' c c c c
  c, c' c c c c
  
  \slurDown e,-5 ( c'-1 b c e, c'
  f,-4 c'-1 b c f, c'
   c,8) r r
  R4.
  
  <f a c>8^\p r <f a c>
  <e bes' c> r <e bes' c>
  <f a c> r <f a c>
  <g bes c>4.->
  
  <f a c>8 r <f a c>
  <f b d> r <f b d>
  <f bes! c> r <f bes c>
  
    <f a c>4 r8
    <f a c>4.
    
  <f a c>
  <f a c>
  <f a c>
  f,4 r8
  }

\score { {
\context PianoStaff <<
  \set PianoStaff.midiInstrument = "acoustic grand"
  \set PianoStaff.instrumentName = \markup{\large "17."}
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
    \tempo 4 = 108
    }


}

