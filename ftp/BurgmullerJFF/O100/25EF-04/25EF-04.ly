\version "2.16.0"
#(set-global-staff-size 16)
\include "nederlands.ly"
\header {
  title             = "La Petite Réunion"
  subtitle          = "Kleine Gesellschaft  *  Festive Gathering"
  composer          = "Johann Friedrich Franz Burgmüller (1806-1874)"
  opus              = "Opus 100."
  piece             = "25 Etudes faciles"
  meter             = "Allegro non troppo"
  copyright         = "Public Domain"
  mutopiatitle      = "La Petite Réunion"
  mutopiacomposer   = "BurgmullerJFF"
  mutopiainstrument = "Piano"
  date              = "19th Century"
  source            = "Collection Litolff, 19th Century"
  style             = "Romantic"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@zonnet.com"

 footer = "Mutopia-2013/01/12-219"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

Global =  {\key c\major \time 4/4}
Treble = \clef treble
Bass = \clef bass

VoiceI =  \relative c'' {
  \stemNeutral \slurNeutral \tieNeutral r1
  <d-3 f-3>8-.\> <c e>-. <b d>-. <a-3 c-5>-. <g b>-. <f a>-. <e-3 g-5>-. <d f>-.\!
  <c e>4 r r2
  <d'-3 f-5>8-.\> <c e>-. <b d>-. <a-3 c-5>-. <g b>-. <f a>-. <e-3 g-5>-. <d f>-.\!
  
  <c e>4 r <e c'>-. r
  <c d>-. r <b g'>-. r\fermata
  
  \repeat volta 2 {
  <c''-3 e-5>4(_\sf\> <b d>8 <a c>)\! <a-3 c-5>4(_\p <g b>8 <f a>
  <e-3 g-5>4 <c e>8 <d f> <e g>4) <d f >8( <c-1 e-3>)
  <c-2 e-4>4( <b d>8 <c e> <d f>4) <d f >8( <c e>
  <b-1 d-3>)-.\< <c-2 e-4>-. <d-2 f-4>-. <e-2 g-4>-. <f-2 a-4>-. <g-2 b-4>-. <a-2 c-4>-. <b-2 d-4>-.\! 

  <c-3 e-5>4(_\sf\> <b d>8 <a c>)\! <a-3 c-5>4(_\p <g b>8 <f a>
  <e-3 g-5>4 <c e>8 <d f> <e g>4) <d f >8( <c-1 e-3>)
  <a-1 f'-5>4_\f <g e'>8 <f d'> <f d'>4 <e c'>8 <d b'>
  <e c'>4 e8 ( d  c4) r
  }

  \repeat volta 2 {
  r1
  <g'-1 b-3 >4( <a c>8 <b d>) <b-1 d-3 >4( <c e>8 <d f>)
  <d f>2 r
  <g,-1 b-3>4(\cresc <a c>8\! <b d>) <b-1 d-3 >4( <c e>8 <d f>)
  
  <d f>4 <b d >8( <c e> <d f>2 ~
  <d f>4) <b d >8( <c e> <d f >2 ~
  <d f>4) <b d >8( <c e> <d f>4) <b d>8( <c e>
  <d-3 f-5>4)-. <d-2 f-4>8-.\< <e-2 g-4>-. <f-2 a-4>-. <g b>-. <a c>-. <b d>-.\!
  
  <c-3 e-5>4(_\sf\> <b d>8 <a c>)\! <a c >4(_\p <g b>8 <f a>
  <e g>4 <c e>8 <d f> <e g>4) <d f >8( <c e>)
  <c e >4( <b d>8 <c e> <d f>4) <d f >8( <c e>
  <b d>)-.\< <c e>-. <d f>-. <e g>-. <f a>-. <g b>-. <a c>-. <b d>-.\!  

  <c e >4(_\sf\> <b d>8 <a c>)\! <a c >4(_\p <g b>8 <f a>
  <e g>4 <c e>8 <d f> <e g>4) <d f >8( <c e>)
  <a f'>4_\f <g e'>8 <f d'> <f d'>4 <e c'>8 <d b'>
  <e c'>4 e8 ( d  c4) r
  
  }
  
  }
VoiceII =  \relative c' {
  \stemNeutral \slurNeutral \tieNeutral g4-4^\p ( a8 b c4 e,8 f
   g1)
  g4-4 ( a8 b c e, b' a
   g1)
  
  c,4 r a'-.^\f r
  f-. r g-. r_\fermata 
  
  \slurDown c,2 f4-3 ( a-2
   c2)-1 c,
  a'-1 d,
  g1-1
  
  c,2 f4-3 ( a-2
   c2)-1 c,
  f g
  \slurUp c,4 g'8 ( f <c e>4 r) 
  
  \slurDown <g'-3  b-5>(^\p <a c>8 <b d>) <b-3 d-5>4( <c e>8 <d f>)
  <d f>2 r
  <g,-3 b-5>4( <a c>8 <b d>) <b-3 d-5>4( <c e>8 <d f>)
  <d  f>4( <c e>8 <b d>) <b-1  d-3>4( <a c>8 <g b>)
  
  <g b>4 r r \Treble as'4 (
   g) r r \Bass \slurNeutral as, (
   g) r r2
  r1
  
  c,2 f4 ( a
   c2) c,
  a' d,
  g1
  
  c,2 f4 ( a
   c2) c,
  f g
  \slurUp c,4 g'8 ( f <c e>4) r 
  }

\score { {
\context PianoStaff <<
  \set PianoStaff.midiInstrument = "acoustic grand"
  \set PianoStaff.instrumentName = \markup{\large "4."}
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

