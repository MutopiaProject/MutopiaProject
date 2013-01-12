\version "2.16.0"
#(set-global-staff-size 16)
\include "nederlands.ly"
\header {
  title             = "Innocence"
  subtitle          = "Unschuld"
  composer          = "Johann Friedrich Franz Burgmüller (1806-1874)"
  opus              = "Opus 100."
  piece             = "25 Etudes faciles"
  meter             = "Moderato"
  copyright         = "Public Domain"
  mutopiatitle      = "Innocence"
  mutopiacomposer   = "BurgmullerJFF"
  mutopiainstrument = "Piano"
  date              = "19th Century"
  source            = "Collection Litolff, 19th Century"
  style             = "Romantic"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@zonnet.com"

 footer = "Mutopia-2013/01/12-214"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

Global =  {\key f\major \time 3/4}

VoiceI =  \relative c''' {
  \repeat volta 2 {
  
  \stemNeutral \slurNeutral a16-4_\p ( g_ \markup{\italic "grazioso"} f  e) f-4 ( e d  c) d-4 ( c bes a
  c8-3\>  bes)\! bes4 r
  g'16-5 ( f e d c\< d e f-1 g a bes c\!
  bes8\>  a)\! a4 r
  
  a16-5 ( g_\cresc f\! e f-3 e d cis-2 d4)-1
  g16-4 ( f e  d) e-4 ( d c  b) c-4 ( b a  g)
  as8-> ( g) a-> ( g) e'-> ( d
  }
  
  \alternative {
    {  c4) r r}
    {c8-.  c[_\dim ( b\! c d  c)]}
  }
  
  \repeat volta 2 {
  
  c8-.-2_\p ( c16-1 d  e8)-. e16-1 ( f g4
   f8)-. f16-1 ( g  a8)-. a16-1 ( bes  c4)

  \ottava #1
  c8-.-2 c16-1 ( d  e8)-. e16-1 ( f g4 )
  f8-. f16-1 ( g  a8)-. a16-1 ( bes  c4)
  
  c16-5_\f ( bes a g f e-3 d c \ottava #0 bes-4 a g f
   d'8)-.-5 d16 ( c  bes8)-._\dim bes16-3\! ( a  g8)-. g16-5 ( f
  e_\cresc d\! c d e f-1 g a bes c-1 d e
   f8)-. r <a,,, f'>4_\f r
  }
      
  }

VoiceII =  \relative c {
  \stemNeutral \slurNeutral <f a c>2.
  <f g d'>4 <f g d'> <f g d'>
  <e bes' c>2.
  <f-5 a-3 c-1>4 <f a c> <f a cis>-1
  
  <f-5 a-3 d-1>2 <f a d>4
  <g-5 c-2 e-1>2 <g c e>4
  <g b f'> <g b f'> <g b f'>
  
    <c-2 e-1>8  c[-1^\dim b\! c bes g]
    <c e>8 r r4 r
  
   bes8[ ( c^ \markup{\italic "leggiermente"} bes c bes c]
   a[ c a c a  c)]
  bes[^\cresc ( c\! bes c bes c]
   a[ c a c a  c)]
  
  <f,  a>2.(
  <bes d>8) r8 r4 r
  <c,  bes'>2.(
  <f a>8) r8 f,4 r
  }

\score { {
\context PianoStaff <<
  \set PianoStaff.midiInstrument = "acoustic grand"
  \set PianoStaff.instrumentName = \markup{\large "5."}
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
    \tempo 4 = 112
    }


}

