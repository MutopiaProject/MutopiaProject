\version "2.16.1"

\include "nederlands.ly"
#(set-global-staff-size 16)
\header {
  title             = "Sonata I"
  subtitle          = "6 Sonate 1776"
  composer          = "Franz Joseph Haydn (1732-1809)"
  opus              = "Hob. XVI:27"
  meter             = "III - Presto"
  copyright         = "Public Domain"
  mutopiatitle      = "Sonate I, III - Presto"
  mutopiacomposer   = "HaydnFJ"
  mutopiainstrument = "Harpsichord, Piano"
  date              = "18th Century"
  source            = "C. F. Peters, 1880s"
  style             = "Classical"
  copyright         = "Public Domain"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@zonnet.com"

 footer = "Mutopia-2013/07/07-187"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \abs-fontsize #10 \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 MutopiaProject \abs-fontsize #8 .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \abs-fontsize #10 \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 LilyPond \abs-fontsize #8 .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \abs-fontsize #8 \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

Global =  {\key g\major \time 2/4 \partial 8}
Treble = \clef treble
Bass = \clef bass
staffUp = \change Staff = "up"
staffDown = \change Staff = "down"

MD =  \relative c' {
  \repeat volta 2 {
  d8-|
  
  g ( b d  g,)
  g4 ( fis8) d-|
  a' ( c e <a, c>)
  <a  c>4( < g b>8\noBeam b)-|
  
  b' ( g dis  e)
  a ( fis cis  d!)
  e8 ( g4) cis,8
  d4\mordent r8
  }
  
  \repeat volta 2 {

  d,8-|
  
  d' ( b gis  e)
  d4 ( cis8) c-|
  c' ( a fis  d)
  c4 ( b8)\noBeam d-|
  
  e8 ( gis a g
  fis ais b a
  g d' c  b)
  <g  b>4( < fis a>8\noBeam d)-|
  
  g8 ( b d  g,)
  g4 ( fis8) d-|
  a' ( c e <a, c>)
  <a  c>4( < g b>8\noBeam g)-|
  
  c ( e g  e)
  cis ( d g  b)
  dis, ( e  c') <c, fis>-|
  <b g'>4 r8
  }
  
  \repeat volta 2 {
  
  d,8-|
  
  g16 ( d b' g  d'8)-| g,-|
  g4 ( fis8)-| a-|
  c ( <c e> <b d> <a c>)
  <a  c>4( < g b>8\noBeam g)-|
  
  b'16 ( g fis e dis e dis  e)
  a ( fis e d! cis d cis  d)
  b8 ( g') r8 <g, cis>-|
  <fis d'>4 r8
  }
  
  \repeat volta 2 {
  d8-|
  
  d'16 ( b a b  e,8) b'-|
  b4 ( c8) c,-|
  c'16 ( a g a  d,8) ( a')-|
  a4 ( b8)\noBeam g-|
  
  fis16 ( e dis e  a4)
  g16 ( fis eis fis  b4)
  g8 ( d' c  b)
  <g  b>4( < fis a>8\noBeam d)-|
  
  g16 ( d b' g  d'8) g,-|
  g4 ( fis8) a-|
  c ( <c e> <b d> <a c>)
  <a  c>4( < g b>8\noBeam g)-|
  
  e'16 ( dis e fis g e d  c)
  d8 ( g16 b  d8) <b, d>
  <b d  >16( <a c>) <g b>4 <fis a>8
  g4 r8
  }
  
  \repeat volta 2 {
  
  d'8
  
  g16 fis e d c b a g
  fis d g d a' d, b' d,
  c' b a g fis e d c
  b4 r8 b'
  
  b'16 b, a' b, g' b, fis' b,
  g' b, gis' b, a' a, g' a,
  fis' a, g' e fis d e cis
  d4 r8  
  }
  
  \repeat volta 2 {
  d8
  
  d'16 d, c'! d, b'8-| gis16 e
  a e b' e, c'8-| c,
  c'16 c, b' c, a'8-| fis16 d
  g d a' d, b'8-|\noBeam d,16 g,
  
  e' g, f' g, e'8-| e16 a,
  fis' a, g' a, fis'8-| fis16 b,
  g' b, c a' c,8 ( b)
  b4\trill ( a8)\noBeam d
  
  g16 fis e d c b a g
  fis d g d a' d, b' d,
  c' b a g fis e d c
  b g c g d' g, b g
  
  e' g, dis' g, e' g, fis' g,
  g' fis e d! c b a g
  a8 c16 ( a) b ( g) a ( fis)
  g4 r8
  }
  
  d'8-|
  
  g ( b d  g,)
  g4 ( fis8) d-|
  a' ( c e <a, c>)
  <a  c>4( < g b>8\noBeam b)-|
  
  b' ( g dis  e)
  a ( fis cis  d!)
  e8 ( g4) cis,8
  d4 r8 d,-|
  
  g ( bes d  g,)
  g4 ( fis8) d-|
  a' ( c es <a, c>)
  <a  c>4( < g bes>8\noBeam g)-|
  
  bes ( d  es) bes' (
  a cis,  d) <f a>
  <e! g> <d f>4 <cis e>8
  d4 r8 d-|
  
  f ( as, g  d')
  f,4 ( es8) es'-|
  g,4 ( fis8) a'-|
  c,4 ( bes8) d-|
  
  es ( g bes  d,)
  cis4 ( d8) c-|
  bes ( g) a ( fis)
  g4 r8 d'-|
  
  f ( as, g  d')
  f,4 ( es8) es'-|
  g,4 ( fis8) a'-|
  c,4 ( bes8) d-|
  
  es ( g bes  d,)
  cis4 ( d8) c-|
  bes ( g) a ( fis)
  g4 r8 d-|
  
  g8-| b-| d-| g,-|
  g4 ( fis8) a-|
  c-| fis-| a-| c,-|
  c4 ( b8) b-|
  
  b'-| g-| dis ( e)
  a-| fis cis ( d!)
  e ( g) r <g, cis>
  <fis d'>4 r8 \voiceOne r
  
  d'16 g b d c b a g
  g4 ( fis8) c'16 a
  fis  c r8 r <a d>
  <a c  >4( <g b>8)\noBeam \oneVoice b-|
  
  b'16 g fis e dis e b' g
  a g fis e d! cis b a
  g fis e d cis b a g
  fis4 r8 d''-|
  
  d'-| b-| gis-| e-|
  d4 ( cis8) c-|
  c'-| a-| fis-| d-|
  c4 ( b8) d-|
  
  e16 c b a gis a e' a,
  fis' d c b ais b fis' b,
  g' e d c a' c, g' b,
  b4\trill ( a8)\noBeam d,-|
  
  g-| b-| d-| g,-|
  g4 ( fis8) a-|
  c-| fis-| a-| c,-|
  c4 ( b8) g-|
  
  c-| e-| g-| e-|
  d ( g16 b d8)-|\noBeam <b, d>
  <b d  >16( <a c>) <g b>4 <fis a>8
  g4 r8 \voiceOne r
  
  r16 d' gis b d8 <b, d>
  <b d  >4( <a c>8)\noBeam \oneVoice  c'16[ a]
  \voiceOne fis c r8 r <a c>
  <a c  >4( <g b>8)\noBeam \oneVoice d'-|
  
  e16 c b a gis a e' a,
  fis' d c b ais b fis' b,
  g' e d c a' c, b' b,
  b4\trill ( a8)\noBeam d,-|
  
  g-| b-| d-| g,-|
  g4 ( fis8) a-|
  c-| fis-| a-| c,-|
  c4 ( b8) g-|
  
  c-| e-| g-| e-|
  d[ ( g16 b]  d8)-|\noBeam <b, d>
  <b d  >16( <a c>) <g b>4 <c, fis a>8
  <b d g>4 r8
  \bar "|."
  }

MS =  \relative c' {
  
  r8 
  
  <g b>4 r8 <b d>
  <a c>4 r
  r r8 fis
  g4 g,8 r
  
  \Treble g''4 r8 g
  fis4 r8 fis
  g4 a
  \Bass d, d,8
  
  r8
  
  r2
  r8 gis ( a) a,
  r2
  r8 fis' ( g) b,
  
  c4 r8 cis' (
  d4) r8 dis (
  e fis g  cis,)
  d!4 ( d8) r
  
  <g, b>4 r8 <b d>
  <a c>4 r
  r r8 fis
  g4 g,8 r
  
  r4 r8 c'
  b4 r8 g
  c4 r8 d,
  g4 g,8
  
  r8
  
  <g' b>4 r8 <b d>
  <a c>4 r
  r r8 fis
  g4 g,8 r
  
  \Treble g''4 r
  fis r
  g8 r \Bass a, r
  d,16 fis a d d,8
  
  r8
  
  r4 r8 <gis d'>
  \tieDown
  <a~ d>4( <a c>8) r
  r4 r8 <fis c'>
  <g~ c>4( <g b>8) b
  
  c4 r8 cis (
   d4) r8 dis (
  e fis g  cis,)
  d4 ~ d8 r
  
  <g, b>4 r8 <b d>
  <a c>4 r
  r r8 fis
  g4 g,8 r
  
  <c c'>4 r
  <b b'> r
  c' d
  g, r8
  
  r8
  
  <g b>4 r
  <a c>8-| <g b>-| <fis a>-| <e g>-|
  <d fis>4 r
  r16 g, b d g4
  
  g'8-| fis-| e-| dis-|
  e-| d!-| cis-| e-|
  d-| g,-| a-| a,-|
   d[-| a-| d,-|]
  
  r8
  
  \Treble b'''8-| a-| gis-| d'-|
  c-| b-| a-| r
  a-| g-| fis-| c'-|
   b[-| a-| g-|] b,-|
  
  c-| d-| c-| cis-|
  d-| e-| d-| dis-|
  e4 fis8 ( g)
  <d~ g  >4( <d fis>8 r)
   
  \Bass <g, b>4 r
  <a c>8-| <g b>-| <fis a>-| <e g>-|
  <d fis>4 r
  g,8-| a-| b-| g-|
  
  c-| b-| c-| a-|
  b4 r
  r8 c-| d-| d,-|
   g[-| d g,-|]
  
  r8
  
  r4 r8 <b'' d>
  <a c>4 r
  r r8 fis
  g4 g,8 r
  
  \Treble g''4 r8 g
  fis4 r8 fis
  g4 a
  \Bass d,4 d,8 r
  
  r4 r8 <bes' d>
  <a c>4 r
  r2
  r8 f ( g4)
  
  r4 \Treble r8 g'
  f4 r8 f
  g4 a
  \Bass d,4 d,8 r
  
  r2
  r8 b'! ( c) r
  r cis ( d) r
  r fis ( g) r
  
  r2
  r8 g, ( fis) fis'
  g bes, c d
  g, d g, r
  
  r2
  r8 b'! ( c) r
  r cis ( d) r
  r fis ( g) r
  
  r2
  r8 g, ( fis) fis'
  g bes, c d
  g, d g, r
  
  g'16 d' b! d g, d' b d
  a d c d a d c d
  fis, d' a d fis, d' a d
  g, d' b d g, d' b d
  
  g, e' b e g, e' b e
  fis, d' a d fis, d' a d
  g,4 a
  d,16 fis a d d,8-| \staffUp \voiceTwo g'16[ b] 
  
  r2
  \slurUp
  <d,~ b'>4( <d a'>8) r
  r a'16 fis d8 fis
  g4 \staffDown \oneVoice g,8 r
  
  <g, g'>4 r8 g'
  fis4 g
  a a,
  d d,8 r

  gis'16 e' b e gis, e' b e
  a, e' cis e a, e' c e
  fis, d' a d fis, d' a d
  g, d' b d g, d' b d
  
  c4 r8 c
  d4 r8 d
  e4 fis8 g
  <<{g4 ( fis8)} \\ d4.>> r8
  
  g,16 d' b d g, d' b d
  a d c d a d c d
  fis, d' a d fis, d' a d
  g, d' b d g, d' b d
  
  c, g' e g c, g' e g
  b,4 r8 b
  c4 d
  g g,8\noBeam \staffUp \voiceTwo  e''16[ gis]
  
  b r r8 r gis
  a4 \staffDown \oneVoice a,8 r
  \staffUp \voiceTwo r8 a'16 fis d8 fis
  g4 \staffDown \oneVoice g,8 b
  
  c4 r8 c
  d4 r8 d
  e4 fis8 g
  <<{g4 ( fis8)} \\ d4.>> r8
  
  g,16 d' b d g, d' b d
  a d c d a d c d
  fis, d' a d fis, d' a d
  g, d' b d g, d' b d
  
  c, g' e g c, g' e g
  b,4 r8 b
  c4 d
  <g, g'>4 r8 
  }
  
\score { {
\new PianoStaff <<
  \set PianoStaff.midiInstrument = "harpsichord"
  \new Staff = "up" <<
    \Global \Treble
    \MD
    >>
  \new Staff = "down" <<
    \Global \Bass
    \MS
    >>
>>
}
\layout {}

  \midi {
    \tempo 4 = 120
    }


}

