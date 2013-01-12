\version "2.16.0"
#(set-global-staff-size 16)
\include "nederlands.ly"
\header {
  title             = "Inquiétude"
  subtitle          = "Unruhe  *  Restlessness"
  composer          = "Johann Friedrich Franz Burgmüller (1806-1874)"
  piece             = "25 Etudes faciles"
  opus              = "Opus 100."
  meter             = "Allegro agitato"
  copyright         = "Public Domain"
  mutopiatitle      = "Inquiétude"
  mutopiacomposer   = "BurgmullerJFF"
  mutopiainstrument = "Piano"
  date              = "19th Century"
  source            = "Collection Litolff, 19th Century"
  style             = "Romantic"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@zonnet.com"

 footer = "Mutopia-2013/01/12-230"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

Global =  {\key e\minor \time 2/4}

VoiceI =  \relative c''' {
  \stemNeutral \slurUp \tieNeutral
  r16 g-3 ( fis  e) r e-3 ( d  c)
  r b-3 ( ais  b) r b ( c  b)
  r g' ( fis  e) r e ( d  c)
  r b ( ais  b) r b ( c  b)
  
  r b-1 ( g'-4  fis) r b, ( g'  fis)
  r b,-1_\cresc ( fis'-4\! e) r b ( fis'  e)
  r d-2 ( e  d) r cis-2 ( d  cis)
  r b-1 ( ais-2 b-1  b'8)-|-5 r

  \repeat volta 2 {
  
  r16 b-3 ( a  g) r g-3 ( fis  e)
  r d-3 ( cis  d) r d( e  d)
  r b' ( a  g) r g ( fis  e)
  r d ( cis  d) r d ( e  d)
  
  r c-1 ( b'  a) r c, ( b'  a)
  r b,-1 ( a'  g) r b, ( a'  g)
  r b, ( g'  fis) r b, ( g'  fis)
  r b, ( fis'  e) r b ( fis'  e)
  
  r g-3 ( fis  e) r e-3 ( d  c)
  r b ( ais  b) r b ( c  b)
  r g' ( fis  e) r e ( d  c)
  r b ( ais  b) r b ( c  b)
  
  r b-1_\cresc ( g'-4\! fis) r b, ( g'  fis)
  r b,-1 ( fis'-4 e) r b ( fis'  e)
  r b-2 ( c  b) r fis-2 ( g  fis)
  }
  
  \alternative {
    {r e ( dis e  e'8)-| r}
    {r16 e, ( fis  e) r c ( d  c)}
  }
  
  r16 a-2 ( b  a) r b-2 ( c  b)
  r e-2 ( fis  e) r c-2 ( d  c)
  r a-2 ( b  a) r b ( c b
   e4) r16 b'-2\dim ( c\! b
  
   e8)-| r r16 b'_\p ( c b
   e8)-| r r4
  \bar "|."
  }

VoiceII =  \relative c {
  \stemNeutral \slurNeutral \tieNeutral
  <e g b>8^\p-. r <e a c>-. r
  <e g b>-. r <e g b>_ \markup{\italic "simile"} r
  <e g b> r <e a c> r
  <e g b> r <e g b> r
  
  <dis a' b> r <dis a' b> r
  <e g b> r <e g b> r
  <fis b> r
  <fis  ais e'>4->(
  <b d>8 r) b,-| r
  
  {
  \revert TextScript  #'direction
  \revert Script  #'direction
} <g' b d>^\mf r <g ais cis> r
  <g b d> r <g b d> r
  <g b d> r <g ais cis> r
  <g b d> r <g b d> r
  
  <fis c' d> r <fis c' d> r
  <g b d> r <g b d> r
  \clef treble <b dis a'>^ \markup{\italic "dim. e poco rall."} r <b dis a'> r
  <e g> r <e g> r
  
  \clef bass <e, g b>^\p r <e a c> r
  <e g b> r <e g b> r
  < e g b> r <e a c> r
  <e g b> r <e g b> r
  
  <dis a' b> r <dis a' b> r
  <e g b> r <e g b> r
  <b dis a'> r <b dis a'> r
  
    <e g> r e,-| r
    <e' g> r c4-2^\f
  
  a4 b-3
  e-1 c-2
  a-4 b-3
  e r
  
  <e g b>8-| r r4
  e,8-| r r4
  }

\score { {
\context PianoStaff <<
  \set PianoStaff.midiInstrument = "acoustic grand"
  \set PianoStaff.instrumentName = \markup{\large "18."}
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
    \tempo 4 = 138
    }


}

