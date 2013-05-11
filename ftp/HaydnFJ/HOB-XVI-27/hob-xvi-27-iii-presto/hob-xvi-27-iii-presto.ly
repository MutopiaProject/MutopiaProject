%\version "1.4.9.uu1"
\include "nederlands.ly"
\include "paper16.ly"
\header {
  title             = "Sonata I"
  subtitle          = "6 Sonate 1776"
  composer          = "Franz Joseph Haydn (1732-1809)"
  opus              = "Hob. XVI:27"
  meter             = "III - Presto"
  tagline           = "Typeset using Lilypond 1.4.9.uu1"
  copyright         = "Public Domain"
  mutopiatitle      = "Sonate I"
  mutopiacomposer   = "HaydnFJ"
  mutopiainstrument = "Harpsichord"
  date              = "18th century"
  source            = "C.F. Peters, 1880s"
  style             = "Classical"
  copyright         = "Public Domain"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@zonnet.com"
  lastupdated       = "2002/Feb/22"

  tagline = "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
  footer = "Mutopia-2002/02/22-187"
}

Global = \notes {\key g\major \time 2/4 \partial 8}
beamingOff = \property Voice.noAutoBeaming = ##t
beamingOn = \property Voice.noAutoBeaming = ##f
Treble = \clef treble
Bass = \clef bass
tieUp = \property Voice.Tie \override #'direction = #1
tieBoth = \property Voice.Tie \override #'direction = #0
tieDown = \property Voice.Tie \override #'direction = #-1
staffUp = \translator Staff = "up"
staffDown = \translator Staff = "down"
slurUp = \property Voice.Slur \override #'direction = #1
slurBoth = \property Voice.Slur \override #'direction = #0
slurDown = \property Voice.Slur \override #'direction = #-1

MD = \notes \relative c' {
  \repeat volta 2 {
  \stemBoth \tieBoth \slurBoth d8-|
  
  g ( b d ) g,
  g4 () fis8 d-|
  a' ( c e <a, ) c>
  <a4 ( c> \beamingOff < ) g8 b> b-|
  
  \beamingOn b' ( g dis ) e
  a ( fis cis ) d!
  e8 () g4 cis,8
  \partial 8*3 d4\mordent r8
  }
  
  \repeat volta 2 {

  \partial 8 d,8-|
  
  d' ( b gis ) e
  d4 () cis8 c-|
  c' ( a fis ) d
  \beamingOff c4 () b8 d-|
  
  \beamingOn e8 ( gis a g
  fis ais b a
  g d' c ) b
  \beamingOff <g4 ( b> < ) fis8 a> d-|
  
  \beamingOn g8 ( b d ) g,
  g4 () fis8 d-|
  a' ( c e <a, ) c>
  \beamingOff <a4 ( c> < ) g8 b> g-|
  
  \beamingOn c ( e g ) e
  cis ( d g ) b
  dis, ( e ) c' <c, fis-|>
  \partial 8*3 <b4 g'> r8
  }
  
  \repeat volta 2 {
  
  \partial 8 d,8-|
  
  g16 ( d b' g ) d'8-| g,-|
  g4 () fis8-| a-|
  c ( <c e> <b d> <a ) c>
  \beamingOff <a4 ( c> < ) g8 b> g-|
  
  \beamingOn b'16 ( g fis e dis e dis ) e
  a ( fis e d! cis d cis ) d
  b8 () g' r8 <g,-| cis>
  \partial 8*3 <fis4 d'> r8
  }
  
  \repeat volta 2 {
  \partial 8 d8-|
  
  d'16 ( b a b ) e,8 b'-|
  b4 () c8 c,-|
  c'16 ( a g a ) d,8 () a'-|
  \beamingOff a4 () b8 g-|
  
  \beamingOn fis16 ( e dis e ) a4
  g16 ( fis eis fis ) b4
  g8 ( d' c ) b
  \beamingOff <g4 ( b> < ) fis8 a> d-|
  
  \beamingOn g16 ( d b' g ) d'8 g,-|
  g4 () fis8 a-|
  c ( <c e> <b d> <a ) c>
  \beamingOff <a4 ( c> < ) g8 b> g-|
  
  \beamingOn e'16 ( dis e fis g e d ) c
  d8 ( g16 b ) d8 <b, d>
  <b16 d ( > <a ) c> <g4 b> <fis8 a>
  \partial 8*3 g4 r8
  }
  
  \repeat volta 2 {
  
  \partial 8 d'8
  
  g16 fis e d c b a g
  fis d g d a' d, b' d,
  c' b a g fis e d c
  b4 r8 b'
  
  b'16 b, a' b, g' b, fis' b,
  g' b, gis' b, a' a, g' a,
  fis' a, g' e fis d e cis
  \partial 8*3 d4 r8  
  }
  
  \repeat volta 2 {
  \partial 8 d8
  
  d'16 d, c'! d, b'8-| gis16 e
  a e b' e, c'8-| c,
  c'16 c, b' c, a'8-| fis16 d
  g d a' d, \beamingOff b'8-| \beamingOn d,16 g,
  
  e' g, f' g, e'8-| e16 a,
  fis' a, g' a, fis'8-| fis16 b,
  g' b, c a' c,8 () b
  \beamingOff b4\trill () a8 d
  
  \beamingOn g16 fis e d c b a g
  fis d g d a' d, b' d,
  c' b a g fis e d c
  b g c g d' g, b g
  
  e' g, dis' g, e' g, fis' g,
  g' fis e d! c b a g
  a8 c16 () a b () g a () fis
  \partial 8*3 g4 r8
  }
  
  \partial 8 d'8-|
  
  g ( b d ) g,
  g4 () fis8 d-|
  a' ( c e <a, ) c>
  \beamingOff <a4 ( c> < ) g8 b> b-|
  
  \beamingOn b' ( g dis ) e
  a ( fis cis ) d!
  e8 () g4 cis,8
  d4 r8 d,-|
  
  g ( bes d ) g,
  g4 () fis8 d-|
  a' ( c es <a, ) c>
  \beamingOff <a4 ( c> < ) g8 bes> g-|
  
  \beamingOn bes ( d ) es bes' (
  a cis, ) d <f a>
  <e! g> <d4 f> <cis8 e>
  d4 r8 d-|
  
  f ( as, g ) d'
  f,4 () es8 es'-|
  g,4 () fis8 a'-|
  c,4 () bes8 d-|
  
  es ( g bes ) d,
  cis4 () d8 c-|
  bes () g a () fis
  g4 r8 d'-|
  
  f ( as, g ) d'
  f,4 () es8 es'-|
  g,4 () fis8 a'-|
  c,4 () bes8 d-|
  
  es ( g bes ) d,
  cis4 () d8 c-|
  bes () g a () fis
  g4 r8 d-|
  
  g8-| b-| d-| g,-|
  g4 () fis8 a-|
  c-| fis-| a-| c,-|
  c4 () b8 b-|
  
  b'-| g-| dis () e
  a-| fis cis () d!
  e () g r <g, cis>
  <fis4 d'> r8 \stemUp r
  
  d'16 g b d c b a g
  g4 () fis8 c'16 a
  fis  c r8 r <a d>
  \beamingOff \slurUp <a4 c ( > <g8 ) b> \stemBoth b-|
  
  \beamingOn b'16 g fis e dis e b' g
  a g fis e d! cis b a
  g fis e d cis b a g
  fis4 r8 d''-|
  
  d'-| b-| gis-| e-|
  d4 () cis8 c-|
  c'-| a-| fis-| d-|
  c4 () b8 d-|
  
  e16 c b a gis a e' a,
  fis' d c b ais b fis' b,
  g' e d c a' c, g' b,
  \beamingOff b4\trill () a8 d,-|
  
  \beamingOn g-| b-| d-| g,-|
  g4 () fis8 a-|
  c-| fis-| a-| c,-|
  c4 () b8 g-|
  
  c-| e-| g-| e-|
  d ( g16 b \beamingOff ) d8-| <b, d>
  \beamingOn <b16 d ( > <a ) c> <g4 b> <fis8 a>
  g4 r8 \stemUp r
  
  r16 d' gis b d8 <b, d>
  \beamingOff \slurUp <b4 d ( > <a8 ) c> \stemBoth [c'16 a]
  \beamingOn \stemUp fis c r8 r <a c>
  \beamingOff <a4 c ( > <g8 ) b> \stemBoth d'-|
  
  \beamingOn e16 c b a gis a e' a,
  fis' d c b ais b fis' b,
  g' e d c a' c, b' b,
  \beamingOff \slurBoth b4\trill () a8 d,-|
  
  \beamingOn g-| b-| d-| g,-|
  g4 () fis8 a-|
  c-| fis-| a-| c,-|
  c4 () b8 g-|
  
  c-| e-| g-| e-|
  \beamingOff [d ( g16 b] ) d8-| <b, d>
  \beamingOn <b16 d ( > <a ) c> <g4 b> <c,8 fis a>
  \partial 8*3 <b4 d g> r8
  \bar "|."
  }

MSI = \notes \relative c' {
  \stemBoth \tieBoth \slurBoth
  
  r8 
  
  <g4 b> r8 <b d>
  <a4 c> r
  r r8 fis
  g4 g,8 r
  
  \Treble g''4 r8 g
  fis4 r8 fis
  g4 a
  \Bass d, d,8
  
  r8
  
  r2
  r8 gis () a a,
  r2
  r8 fis' () g b,
  
  c4 r8 cis' ()
  d4 r8 dis (
  e fis g ) cis,
  d!4 () d8 r
  
  <g,4 b> r8 <b d>
  <a4 c> r
  r r8 fis
  g4 g,8 r
  
  r4 r8 c'
  b4 r8 g
  c4 r8 d,
  g4 g,8
  
  r8
  
  <g'4 b> r8 <b d>
  <a4 c> r
  r r8 fis
  g4 g,8 r
  
  \Treble g''4 r
  fis r
  g8 r \Bass a, r
  d,16 fis a d d,8
  
  r8
  
  r4 r8 <gis d'>
  \tieDown \slurUp <a4 d ( > ~ <a8 ) c> r
  r4 r8 <fis c'>
  <g4 c ( > ~ <g8 ) b> b
  
  c4 r8 cis (
  ) d4 r8 dis (
  e fis g ) cis,
  \tieUp d4 ~ d8 r
  
  \tieBoth \slurBoth <g,4 b> r8 <b d>
  <a4 c> r
  r r8 fis
  g4 g,8 r
  
  <c4 c'> r
  <b b'> r
  c' d
  g, r8
  
  r8
  
  <g4 b> r
  <a8 c-|> <g b-|> <fis a-|> <e g-|>
  <d4 fis> r
  r16 g, b d g4
  
  g'8-| fis-| e-| dis-|
  e-| d!-| cis-| e-|
  d-| g,-| a-| a,-|
  [d-| a-| d,-|]
  
  r8
  
  \Treble b'''8-| a-| gis-| d'-|
  c-| b-| a-| r
  a-| g-| fis-| c'-|
  [b-| a-| g-|] b,-|
  
  c-| d-| c-| cis-|
  d-| e-| d-| dis-|
  e4 fis8 () g
  \slurUp \tieDown <d4 g ( > ~ <d8 ) fis> r
   
  \Bass <g,4 b> r
  <a8 c-|> <g b-|> <fis a-|> <e g-|>
  <d4 fis> r
  g,8-| a-| b-| g-|
  
  c-| b-| c-| a-|
  b4 r
  r8 c-| d-| d,-|
  [g-| d g,-|]
  
  r8
  
  r4 r8 <b'' d>
  <a4 c> r
  r r8 fis
  g4 g,8 r
  
  \Treble g''4 r8 g
  fis4 r8 fis
  g4 a
  \Bass d,4 d,8 r
  
  r4 r8 <bes' d>
  <a4 c> r
  r2
  r8 f () g4
  
  r4 \Treble r8 g'
  f4 r8 f
  g4 a
  \Bass d,4 d,8 r
  
  r2
  r8 b'! () c r
  r cis () d r
  r fis () g r
  
  r2
  r8 g, () fis fis'
  g bes, c d
  g, d g, r
  
  r2
  r8 b'! () c r
  r cis () d r
  r fis () g r
  
  r2
  r8 g, () fis fis'
  g bes, c d
  g, d g, r
  
  g'16 d' b! d g, d' b d
  a d c d a d c d
  fis, d' a d fis, d' a d
  g, d' b d g, d' b d
  
  g, e' b e g, e' b e
  fis, d' a d fis, d' a d
  g,4 a
  d,16 fis a d d,8-| \staffUp \stemDown [g'16 b] 
  
  r2
  \property Voice.Slur \override #'attachment = #'(Head . Head) \slurDown \tieDown <d,4 b' ( > ~ <d8 ) a'> r
  \property Voice.Slur \revert #'attachment r a'16 fis d8 fis
  g4 \staffDown \stemBoth \slurBoth g,8 r
  
  <g,4 g'> r8 g'
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
  \stemUp \slurUp g4 () fis8 \stemBoth r
  
  g,16 d' b d g, d' b d
  a d c d a d c d
  fis, d' a d fis, d' a d
  g, d' b d g, d' b d
  
  c, g' e g c, g' e g
  b,4 r8 b
  c4 d
  g \beamingOff g,8 \staffUp \stemDown [e''16 gis]
  
  \beamingOn b r r8 r gis
  a4 \staffDown \stemBoth a,8 r
  \staffUp \stemDown r8 a'16 fis d8 fis
  g4 \staffDown \stemBoth g,8 b
  
  c4 r8 c
  d4 r8 d
  e4 fis8 g
  \stemUp g4 () fis8 \stemBoth r
  
  g,16 d' b d g, d' b d
  a d c d a d c d
  fis, d' a d fis, d' a d
  g, d' b d g, d' b d
  
  c, g' e g c, g' e g
  b,4 r8 b
  c4 d
  <g,4 g'> r8 
  }
  
MSII = \notes \relative c' {
  s8
  
  s2
  s
  s
  s
  
  s
  s
  s
  s4.
  
  s8
  
  s2
  s
  s
  s
  
  s
  s
  s
  s
  
  s
  s
  s
  s
  
  s
  s
  s
  s4.
  
  s8
  
  s2
  s
  s
  s
  
  s
  s
  s
  s4.
  
  s8
  
  s2
  s
  s
  s
  
  s
  s
  s
  s
  
  s
  s
  s
  s
  
  s
  s
  s
  s4.
  
  s8
  
  s2
  s
  s
  s
  
  s
  s
  s
  s4.
  
  s8
  
  s2
  s
  s
  s
  
  s
  s
  s
  s
  
  s
  s
  s
  s
  
  s
  s
  s
  s4.
  
  s8
  
  s2
  s
  s
  s
  
  s
  s
  s
  s
  
  s
  s
  s
  s
  
  s
  s
  s
  s
  
  s
  s
  s
  s
  
  s
  s
  s
  s
  
  s
  s
  s
  s
  
  s
  s
  s
  s
  
  s
  s
  s
  s
  
  s
  s
  s
  s
  
  s
  s
  s
  s
  
  s
  s
  s
  s
  
  s
  s
  s
  s
  
  s
  s
  s
  \stemDown d4. s8
  
  s2
  s
  s
  s
  
  s
  s
  s
  s
  
  s
  s
  s
  s
  
  s
  s
  s
  d4. s8

  s2
  s
  s
  s
  
  s
  s
  s
  s4.
  }

\score {\notes {
\context PianoStaff <
  \property PianoStaff.midiInstrument = "harpsichord"
  \context Staff = "up" <
    \Global \Treble
    \context Voice=One \MD>
  \context Staff = "down" <
    \Global \Bass
    \context Voice=Two \MSI
    \context Voice=Three \MSII>
>
}
\paper {}
\midi {\tempo 4=120}
}

