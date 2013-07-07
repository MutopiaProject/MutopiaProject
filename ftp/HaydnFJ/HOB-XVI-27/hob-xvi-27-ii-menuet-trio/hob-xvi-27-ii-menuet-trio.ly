\version "2.16.1"

\include "nederlands.ly"
#(set-global-staff-size 16)
\header {
  title             = "Sonata I"
  subtitle          = "6 Sonate 1776"
  composer          = "Franz Joseph Haydn (1732-1809)"
  opus              = "Hob. XVI:27"
  meter             = "II - Menuetto"
  copyright         = "Public Domain"
  mutopiatitle      = "Sonate I, II - Menuetto"
  mutopiacomposer   = "HaydnFJ"
  mutopiainstrument = "Harpsichord, Piano"
  date              = "18th Century"
  source            = "C. F. Peters, 1880s"
  style             = "Classical"
  copyright         = "Public Domain"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@zonnet.com"

 footer = "Mutopia-2013/07/07-186"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \abs-fontsize #10 \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 MutopiaProject \abs-fontsize #8 .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \abs-fontsize #10 \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 LilyPond \abs-fontsize #8 .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \abs-fontsize #8 \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

Global =  {\key g\major \time 3/4}
Treble = \clef treble
Bass = \clef bass
staffUp = \change Staff = "up"
staffDown = \change Staff = "down"
flat = \markup {\flat}
sharp = \markup {\sharp}

MD =  \relative c'' {
  \repeat volta 2 {
  d4^\sharp\turn \times 2/3 { g8[ d b]} \times 2/3 { d8[ b g]}
  \times 2/3 { g8[ fis d]} <a'  c>4(  < g b>)
  \times 2/3 { e8[ gis a]} \times 2/3 { b[ c d]} \times 2/3 { e[ c a]}
  g!2 ( fis4)

  d'4^\sharp\turn \times 2/3 { g8[ d b]} \times 2/3 { d[ b g]}
  \times 2/3 { g[ fis d]} <a'  c>4(  < g b>)
  \times 2/3 { c8[ b a]} <cis g'  >4( < d fis>)
  \times 2/3 { b8[ e dis]} \times 2/3 { fis[ e g]} \times 2/3 { b[ g e]}

  \times 2/3 { d![ cis e]} \tieUp a4 ~ \times 2/3 { a8[ fis d]}
  \times 2/3 { cis[ a e']} a4 ~ \times 2/3 { a8[ fis d]}
  \times 2/3 { d[ cis e]} a4 ~ \times 2/3 { a8[ fis d]}
  \times 2/3 { cis[ a e']} a4 ~ \times 2/3 { a8[ fis d]}

  \times 2/3 { cis[ b ais']} \times 2/3 { b[ g e]} \times 2/3 { g[ e cis]}
  cis2 ( d4)
  }

  \repeat volta 2 {
  d4^\sharp\turn \times 2/3 { d'8[ b g]} \times 2/3 { a[ fis d]}
  d2 ( cis4)\turn
  r \times 2/3 { d8[ fis a]} \times 2/3 { c![ a fis]}
  c4 ( b)\turn g'

  dis8 ( e) e4 g
  cis,8 ( d!) d4 \times 2/3 { d'8[ b g]}
  fis4 ( e)\turn \times 2/3 { g8[ fis e]}
  e4 ( d) \times 2/3 { fis8[ g b]}

  \times 2/3 { dis,[ e g]} \times 2/3 { b,[ c e]} \times 2/3 { gis,[ a c]}
  g!2 ( fis4)
  d'4^\sharp\turn \times 2/3 { g8[ d b]} \times 2/3 { d[ b g]}
  \times 2/3 { g[ fis d]} <a'  c>4( < g b>)

  \times 2/3 { e8[ gis a]} \times 2/3 { b[ c d]} \times 2/3 { e[ c a]}
  g!2 ( fis4)
  \staffDown \voiceOne \times 2/3 { g,8[ fis d]} <fis c'  >4( <g b>)
  \staffUp \oneVoice \times 2/3 { g'8[ fis d]} <fis c'  >4( <g b>)

  \voiceOne \times 2/3 { g'8[ fis d]} <fis c'  >4( <g b>)
  \oneVoice \times 2/3 { g,8[ fis d]} <c' e\fermata  >4( <b d\fermata>)
  \times 2/3 { gis8[ a c]} \times 2/3 { e[ c a]} \times 2/3 { c[ a fis]}
  <c  fis>2( < b g'>4)

  \times 2/3 { g''8[ fis a]} d4 ~ \times 2/3 { d8[ b g]}
  \times 2/3 { fis8[ d a']} d4 ~ \times 2/3 { d8[ b g]}
  \times 2/3 { g8[ fis a]} d4 ~ \times 2/3 { d8[ b g]}
  \times 2/3 { fis8[ d a']} d4 ~ \times 2/3 { d8[ b g]}

  \times 2/3 { e8[ fis g]} \times 2/3 { d[ fis g]} \times 2/3 { c,[ gis' a]}
  \times 2/3 { b,[ b' a]} \times 2/3 { g![ fis e]} \times 2/3 { d[ c b]}
  \times 2/3 { a[ c e]} g,4 fis\trill
  <c  fis>2( < b g'>4)
  }

  \repeat volta 2 {
  \key g\minor \mark \markup "Trio" \voiceOne d'2 \slashedGrace f8 es4
  d8 bes' ( a g fis  g)
  d2 \slashedGrace f8 es4
  d8 ( c' a fis d  c)

  \oneVoice bes4\trill ~ bes8. ( a32 bes  a8) r
  c4\trill ~ c8. ( bes32 a  bes8) r
  g ( g' f es d cis
   cis2) ( d4)
  }

  \repeat volta 2 {
  <d, f>2 \slashedGrace a'8 <es g>4
  <d f> r \slashedGrace f'8 <a, es>4
  <bes d> r \slashedGrace a'8 <es g>4
  <d f> r bes'8 ( a)

  a ( g) g ( f) f ( es)
  es2\turn \slashedGrace f8 es8 ( d)
  \slashedGrace es8 d8 ( c) \slashedGrace d8 c8 ( bes) \slashedGrace c8 bes8 ( a)
  a4 ( bes) r
  
  \voiceOne d2 \slashedGrace f8 es4
  d8 bes' ( a g fis  g)
  d2 \slashedGrace f8 es4
  d8 ( c' a fis d  c)

  \oneVoice bes4\trill ~ bes8. ( a32 bes  a8) r
  c4\trill ~ c8. ( bes32 a  bes8) r
  bes8\prall ( a) a\prall ( g) g\prall ( fis)
  fis4 ( g) r
  }
  
  }

MSI =  \relative c' {
  <g b>4 r <b d>
  <a c> fis ( g)
  c,2.
  d4 \times 2/3 { d'8[ e d]} \times 2/3 { c[ b a]}

  <g b>4 r <b d>
  <a c> fis ( g)
  r e' ( d)
  g2 r4

  r <cis, g'  >( < d fis>)
  r <cis g'  >( < d fis>)
  r <g, cis  >( < fis d'>)
  r <g cis  >( < fis d'>)

  g r <a g'>
  <<{g'2 ( fis4)} \\ {d2.}>>

  \Treble \times 2/3 { d8[ fis a]} \times 2/3 { d,8[ fis a]} \times 2/3 { d,8[ fis a]}
  \times 2/3 { e[ g a]} \times 2/3 { e[ g a]} \times 2/3 { e[ g a]}
  \times 2/3 { fis[ a c]} r4 r
  \times 2/3 { g,8[ d' g]} \times 2/3 { g,[ d' g]} \times 2/3 { g,[ d' g]}

  \times 2/3 { c,[ e g]} \times 2/3 { c,[ e g]} \times 2/3 { c,[ e g]}
  \times 2/3 { b,[ d g]} \times 2/3 { b,[ d g]} \times 2/3 { b,[ d g]}
  \times 2/3 { c,[ e g]} \times 2/3 { c,[ e g]} \times 2/3 { c,[ e g]}
  \times 2/3 { b,[ d g]} \times 2/3 { b,[ d g]} \times 2/3 { b,[ d g]}

  c,4 r r
  \Bass d, \times 2/3 { d'8[ e d]} \times 2/3 { c[ b a]}
  <g b>4 r <b d>
  <a c> fis ( g)

  c,2.
  d4 a d,
  \voiceTwo r a' ( g)
  \oneVoice r a' ( g)

  \staffUp \voiceTwo r4 a' ( g)
  \staffDown \oneVoice r4 fis,\fermata ( g)\fermata
  c,4 r d
  e2.

  r4 \Treble <fis'  c'>4( < g b>)
  r <fis  c'>( < g b>)
  r <c,  fis>( < b g'>)
  r <c  fis>( < b g'>)

  <<{g'2 fis4} \\ {c b a}>>
  <g g'> r r
  \Bass <c, c'> <d b'> <d a' c>
  g d g,

  \key g\minor <g' bes>4 \staffUp \voiceTwo <g'  bes>( < fis a>)
  <g bes> r r
  \staffDown \oneVoice <fis, a> \staffUp \voiceTwo <fis'  a>( < g bes>)
  <fis a> r r

  \staffDown \oneVoice r4 <g, d'> <fis d'>
  r <fis d'> <g d'>
  es r \Treble <es' g>
  <<{g2 ( fis4)} \\ d2.>>
  
  \Bass bes,8 bes' bes, bes' bes, bes'
  bes, bes' bes, bes' bes, bes'
  bes, bes' bes, bes' bes, bes'
  bes, bes' bes, bes' <d, bes'>4
  
  <<{bes'2.
  r4 f'2} \\
  {es,4 f g
  a2 bes4}>>
  <es, es'>4 <f d'> <f c'>
  bes4 d8 c bes a
  
  <g bes>4 \staffUp \voiceTwo <g'  bes>( < fis a>)
  <g bes> r r
  \staffDown \oneVoice <fis, a> \staffUp \voiceTwo <fis'  a>( < g bes>)
  <fis a> r r

  \staffDown \oneVoice r4 <g, d'> <fis d'>
  r <fis d'> <g d'>
  <c, c'> <d bes'> <d a'>
  g_ \markup{\italic "Men. d. C."} d g,
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
    \MSI
    >>
>>
}
\layout {}

  \midi {
    \tempo 4 = 92
    }


}

