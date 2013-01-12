\version "2.16.0"
#(set-global-staff-size 16)
\include "nederlands.ly"
\header {
  title             = "La Candeur"
  subtitle          = "Aufrightigkeit  *  Sincerity"
  composer          = "Johann Friedrich Franz Burgmüller (1806-1874)"
  opus              = "Opus 100."
  piece             = "25 Etudes faciles"
  meter             = "Allegro moderato"
  copyright         = "Public Domain"
  mutopiatitle      = "La Candeur"
  mutopiacomposer   = "BurgmullerJFF"
  mutopiainstrument = "Piano"
  date              = "19th Century"
  source            = "Collection Litolff, 19th Century"
  style             = "Romantic"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@zonnet.com"

 footer = "Mutopia-2013/01/12-202"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

Global =  {\key c\major \time 4/4} 

vOne =  \relative c''' {
  \repeat volta 2 {
  \stemNeutral \slurNeutral g8-5_\p ( e-3 d  c) g' ( e d  c)
  c'-5\> ( a g  f)\! c' ( a g  f)
  g-5 ( e d c b-2 c-1 e-3  f)
  g ( e d c b-2 c-1 d  e)
  
  g_ \markup{\italic "cresc."} ( f e  d) g ( f e  d)
  f-4 ( e d  c) f ( e d  c)
  b-3\< ( a c-4 b\! d c b a
  g b c d  g4) r 
  }
  
  \repeat volta 2 {
  
  f8-5_\p ( d c b f' d c b
  <c-2\< e-4 >1)(
  f8-5\! ( d c b f' d c b
  <c-2 e-4>1)\<
  
  \stemUp g'2-5\> fis\>
  \stemNeutral a8-5_\sf\> ( g) c,-1 ( d\! f-5  e) ( g,-1 a
  c-4_\p b)_ \markup{\italic "dolce e poco rit."} ( g a c-4 b-1 e-5 d
  }
  
  \alternative {
    {  e2.) r4}
    { c8-3 b ( c-3 d e f g c,-1 }
  }
  
  f-5\> d c b\! f'\> d c b\!
  c-3  b) ( c-1 d e f g c,
  f-5\> d c b\! f'\> d c b\!
   c4) r r2_\p
  
  <g c e>2_\markup{\italic "dim. e poco rit."} r
  <e c'>1_\pp
  \bar "|."
  }

vTwo =  \relative c'' {
  s1 s s s
  
  s s s s
  
  s s s s
  
  \stemDown \slurDown r8 es ( d  c) r es ( d  c)
  s1
  s
  
  s
  s
  
  s
  s
  s
  s
  
  s
  s
  }

vThree =  \relative c {
  <c e g>1^\markup{\italic "dolce"}
  <c f a>
  \tieNeutral <c e g> ~
  <c e g>
  
  <b f'g >
  <c e g>
  <d fis c'>
  <g b>2. r4
  
  g8-5 ( b c  d) g, ( b c  d)
  g,-5 ( a b c d c-2 e-1  c)-2
  g-5 ( b c  d) g, ( b c  d)
  g,-5 ( a b c d c-2 e-1  c)-2
  
  a2 <a c>
  <g c e>1
  \clef treble
  <g f'>2 <g f'>
  
  c8-5 ( e f g  c,4) r
  <c e>2 r
  
  <c f as> <c f as>
  <c e g>1
  <c f as>2 <c f as>
  <c e g>4 r \clef bass \slurDown c,8-5 ( e f g
  
   c,2)
  c8 ( e f \tieUp g ~
  <c, g'>1)   
  }
  

\score { {
\context PianoStaff <<
  \set PianoStaff.midiInstrument = "acoustic grand"
  \set PianoStaff.instrumentName = \markup{\large "1. "}
  \context Staff = "up" <<
    \Global \clef treble
    \context Voice=VoiceI \vOne
    \context Voice=VoiceII \vTwo
  >>
  \context Staff = "down" <<
    \Global \clef bass
    \context Voice=VoiceIII \vThree
  >>
>>
}
\layout {}

  \midi {
    \tempo 4 = 152
    }
}
