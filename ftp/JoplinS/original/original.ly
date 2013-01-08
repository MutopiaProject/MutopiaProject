\version "2.16.1"

\header {
 title = "Original Rags"
 composer = "Scott Joplin"

 mutopiatitle = "Original Rags"
 mutopiacomposer = "JoplinS"
 mutopiainstrument = "Piano"
 mutopiadate = "c. 1907"
 style = "Jazz"
 copyright = "Public Domain"
 source = "Unknown"

 filename = "original.ly"
 maintainer = "Tom Harke"
 maintainerEmail = "tom.harke@acm.org"
 maintainerWeb = "http://www.cse.ogi.edu/~harke"

 footer = "Mutopia-2013/01/08-345"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

top =  \relative c' {

 \key g \major
 \time 2/4
 \clef treble

 <ais'' ais'>16\f <b b'>8 <ais ais'>16 <b b'>8 <ais ais'>16 <b b'> |
 <fis fis'>16 <g g'>8 <e e'>16 ~ <e e'>4 |
 <fis fis'>16 <g g'>8 <fis fis'>16 <g g'>8 <fis fis'>16 <g g'> |
 <cis, cis'>16\< <d d'>8 <b b'>16 ~ <b b'>4\! |

 \voiceOne<c e c'>16 <c e c'>8 <c e c'>16 <c ees c'>8 <c ees c'>8 |
 <c d c'>8\> \slashedGrace gis8 a8 \oneVoice d,4->\!
 <c e c'>16\p <c e c'>8 <c e c'>16 <c ees c'>8 <c ees c'>8 |
 <c d c'>8 r8 r16 d' g b  |
 
 \repeat volta 2 {
  <d d,>16\p g, b <d d,> ~ <d d,> b <d d,> b |
  <d d,>16 g, b <d d,> ~ <d d,> b <d d,> b |
  <e e,>16 <e e,>8 <g, e>16 <a e> <g e> <a ees>8 | 
  <b d, >4-> r16 d, g b  |
  <d d,>16 g, b <d d,> ~ <d d,> b <d d,> b |
  <d d,>16 g, b <d d,> ~ <d d,> b <d d,>\< b |
  <b cis,>8 <a cis,> ~ <a cis,>\! <gis cis,>16 <a cis,> | 
  <b c,>16\f <a c,>8 <fis c>16\> <e c >8-> <d c>->\! | 
  <d' d,>16\p g, b <d d,> ~ <d d,> b <d d,> b |
  <d d,>16 g, b <d d,> ~ <d d,> b <d d,> b |
  <e e,>16 <e e,>8 <g, e>16 <a e> <g e> <a e>8 | 
  <b dis,>4\< r8 <b b,>\! | 
  <e e,>16\f <d d,>8 <b b,>16 <c c,>8 <b b,> | 
  <b b,>16 <a a,>8 <e e,>16 <b' b,>8 <a a,> | 
  <b d, b>16 <a c, a>8 <b d, b>16 <c e, c> <b d, b> <a c, a>8 | 
 } \alternative {
  { <g b, g>8 r r16 d g b }
  {
   <g b, g>8 r \ottava #1 <g' d b g>4-> \ottava #0
  }
 }
 
 \repeat volta 2 {
  <ais, fis>16\ff <b g>8 <ais fis>16 <b g>8 <ais fis>16 <b g> | 
  <fis dis>16 <g e>8 <e c>16 ~ <e c>4 |
  <fis dis>16 <g e>8 <fis dis>16 <g e>8 <fis dis>16 <g e> | 
  <cis, ais>16 <d b>8 <b g>16 ~ <b g>4 |
  <cis ais>16 <d b>8 <cis ais>16 <d b>8 <cis ais>16 <d b> | 
  <b g>8 b16 g ~ g b g8 |
  <cis ais>16 <d b>8 <cis ais>16 <d b>8 <cis ais>16 <d b> | 
  <b g>8 b16 g ~ g b g8 |
  <ais' fis>16 <b g>8 <ais fis>16 <b g>8 <ais fis>16 <b g> | 
  <fis dis>16 <g e>8 <e c>16 ~ <e c>4 |
  <fis dis>16 <g e>8 <fis dis>16 <g e>8 <fis dis>16 <g e> | 
  <cis, ais>16 <d b>8 <b g>16\< ~  <b g>4 |
  <a g e>16\f <a g e>8 <a g e>16 <e' ais, g>8 <e ais, g> |
  <d b g>16 g8 e16 d b g8 |

  <a c,>16 <b d,> <c e,> <b d,> ~ <b d,> <a c,>8 <b d,>16 |
  <g b,>8 r <g' d b g >4-> | 
 }
 
 \key c \major
 
 \repeat volta 2 {
  \override TextScript   #'padding = #0.5
  g16_\markup { \column { \line {"1st time" \dynamic "p"} \line {"2nd time" \dynamic "f"} } } a g e f d8 e16 | 
  \revert TextScript #'padding
  f16 g a e f d8 e16 | 
  c16 e g <a e c> ~ <a e c>4 | 
  r16 c,( e g a g e  c) | 
  b16 d f <a d, b> ~ <a d, b>4 | 
  r16 b,( d f a f d  b) | 
  c16 e g <c c,> <b dis, b>8 <a dis, a>8 | 
  <g e g,>8 g,16( a b c d  e) | 
  g16 a g e f d8 e16 | 
  f16 g a e f d8 e16 | 
  c16 e g <a e c> ~ <a e c>4 | 
  r8 <c c,> <b b,> <bes bes,> | 
  a,16 cis e <a a,> <bes bes, >8-> <a a, >-> | 
  d,16 f a <d d,> <e e,>8 <d d,> | 
  <c c,>16 e, dis e <a f b,>8 <g f b,>8 | 
  <c, g e>8 <g' d b g> <c g e c >4-> |
 }
 
 \key g \major

 \voiceOne <c, e c'>16 <c e c'>8 <c e c'>16 <c ees c'>8 <c ees c'>8 |
 <c d c'>8 \slashedGrace gis8 a8 \oneVoice d,4-> | 
 % <c d c'>8\> \slashedGrace gis8 a8 \oneVoice d,4->\! | 
 <c  e c'>16\> <c e c'>8 <c e c'>16 <c ees c'>8 <c ees c'>8 |
 <c d c'>8\! r8 r16 d' g b  |
  <d d,>16\p g, b <d d,> ~ <d d,> b <d d,> b |
  <d d,>16 g, b <d d,> ~ <d d,> b <d d,> b |
  <e e,>16 <e e,>8 <g, e>16 <a e> <g e> <a ees>8 | 
  <b d, >4-> r16 d, g b  |
  <d d,>16 g, b <d d,> ~ <d d,> b <d d,> b |
  <d d,>16\< g, b <d d,> ~ <d d,> b <d d,> b\! |
  <b cis,>8\f <a cis,> ~ <a cis,> <gis cis,>16 <a cis,> | 
  <b c,>16 <a c,>8 <fis c>16\> <e c >8-> <d c>->\! | 
  <d' d,>16\p g, b <d d,> ~ <d d,> b <d d,> b |
  <d d,>16 g, b <d d,> ~ <d d,> b <d d,> b |
  <e e,>16 <e e,>8 <g, e>16 <a e> <g e> <a e>8 | 
  <b dis,>4 r8\< <b b,>\! | 
  <e e,>16\f <d d,>8 <b b,>16 <c c,>8 <b b,> | 
  <b b,>16 <a a,>8 <e e,>16 <b' b,>8 <a a,> | 
  <b d, b>16 <a c, a>8 <b d, b>16 <c e, c> <b d, b> <a c, a>8 | 
  <g b, g>8 r <g' d b g >4-> |

 \key d \major

 \repeat volta 2 {
  <a, cis, a>8.\ff^"Brilliant" b,16 cis a' <g cis, a >8-> | 
  <a  cis, a>8. b,16 cis a' <g cis, a>8->\< | 
  r 8\! <a  d,>16 a, r8 <a' d,>16 a, |
  r16 <a' d,>16[ r  a,] <a'  d,>8\> a,\! |
  <b' dis, b>8. cis,16 dis b' <a dis, b >8-> | 
  <b  dis, b>8. cis,16 dis\< b' <a dis, b>8->\! | 
  r 8 <b  e,>16 b, r8 <b' e,>16 b, |
  r16 <b' e,>16 r  b, <b'  e,>8 b, |
  <cis' g cis,>16 <bis bis,> <cis cis,> <e e,> ~ <e e,> <cis cis,>8 <a a,>16 |
  r16 <b g b,>8 <ais ais,>16 <b g b,>4 |
  <b fis b,>16 <ais ais,> <b b,> <d d,> ~ <d d,> <b b,>8 <fis fis,>16 |
  r16 <a fis a,>8 <gis gis,>16 <a fis a,>8 <fis a,> |
  <e b>8 <fis b,> <g b,>16 <b b,>8 <g b,>16 |
  <fis a,>8 <eis gis,>16 <fis a,> <g b,> <fis a,> <e g,>8 |
  <d fis,>8 a b16 a8 fis16 |
  d8 r \grace {a'16[( b  cis)]} d4 |
 }
 
 %\bar "||"
 \key g \major
 \repeat volta 2 {
  ais16\ff <b d>8 fis16 <a c>8 ais16 <b d> ~ |
  <b d>16 fis <a c> ais <b d>8 <a c> |
  ais16 <b d>8 d,16 <g b>8 ais16 <b d> ~ |
  <b d>16( d, g  a) b( a g  d) |
  r8 <fis' fis,> ~ <fis fis,>16 c d <fis fis,> |
  r16 fis,( c' d fis d c  a) |
  r8 <e' b g> ~ <e b g>16 b d e |
  r16 g,( b d e d b  g) |
  ais16 <b d>8 fis16 <a c>8 ais16 <b d> ~ |
  <b d>16 fis <a c> ais <b d>8 <a c> |
  ais16 <b d>8 d,16 <g b>8 ais16 <b d> ~ |
  <b d>16( d, g  a) b( a g  d) |
  e'16 ees d des c b bes a |
  d16 des c b bes a aes g |
  e16 g8 e16 d g b d |
  \override Score.RehearsalMark   #'break-visibility = #begin-of-line-invisible
  <b cis,> e, <a c,> d, <g d b>8 r^"Fine" \mark \markup { \musicglyph #"scripts.ufermata" } |
 }
 
 %\bar "|."
}

bottom =  \relative c {

 \key g \major
 \time 2/4
 \clef bass

 <ais' ais'>16 <b b'>8 <ais ais'>16 <b b'>8 <ais ais'>16 <b b'> |
 <fis  fis'>16 <g g'>8 <e e'>16 ~ <e e'>4 |
 <fis  fis'>16 <g g'>8 <fis fis'>16 <g g'>8 <fis fis'>16 <g g'> |
 <cis, cis'>16 <d d'>8 <b b'>16 ~ <b b'>4 |
 \change Staff = "up" \voiceTwo a''16\ff a8 a16 g8 g8 |
 fis\noBeam \change Staff = "down" \oneVoice \slashedGrace gis,8 a8 d,4-> |
 a'16 a8 a16 g8 g8 |
 fis8 <a a,> <d, d, >4_> | 
 
 \repeat volta 2 {
  g8 <b d> d, <b' d> | 
  g8 <b d> d, <b' d> | 
  c,8 <g' c e> c, <g' c ees> | 
  <g, g'> <g' b d> d r | 
  g8 <b d> d, <b' d> | 
  g8 <b d> d, <b' d> | 
  e,8 <g a cis> a, <g' a cis> | 
  d16 fis8 a16 g8-> fis8-> |
  g8 <b d> d, <b' d> | 
  g8 <b d> d, <b' d> | 
  c,8 <g' c e> c, <g' c e> | 
  b,8 <fis' a b> <fis a b> s8 | 
  gis,8 <e' b' d> e, <e' gis d'> |
  a,8 <a' c e> a, <a' c ees> |
  d,8 <g b d> <d d,>16 <e e,> <fis fis,>8 |
 } \alternative {
  { <g g,>8 r <d d, >-> s }
  { <g g,>8 r <g, g, >-> s }
 }
 
 \repeat volta 2 {
  r2 | 
  c8 <g' c e> c, <g' c e> | 
  c,8 <g' c e> c, <g' c e> | 
  g8 <b d> d, <b' d> | 
  g8 <b d> d, <b' d> | 
  g8-> fis-> e-> d-> |
  g8 <b d> d, <b' d> | 
  g8 fis e d |
  g8 <b d> d, <b' d> | 
  c,8 <g' c e> c, <g' c e> | 
  c,8 <g' c e> c, <g' c e> | 
  g8 <b d> d, <b' d> | 
  <c c, >4-> <cis cis, >-> 
  d,8 <g b d> <g b d >4-> | 
  <a, a' >4-> <d, d' >-> |
  <g g'>8 r <g g, >4-> |
 }
 
 \key c \major
 \repeat volta 2 {
  c8 <g' c e > d  <g  b f'> | 
  g,8 <g' b f'> d  <g  b f'> | 
  c,8 <g' c e > g, <g' c e> | 
  c,8 <g' c e > e  <g  c e> | 
  d 8 <g  b f'> g, <g' b f'> | 
  d 8 <g  b f'> g, <g' b f'> | 
  c,8 <g' c e> <fis c' dis> <fis c' dis> |
  <g c e>8 r r4 |
  c,8 <g' c e > d  <g  b f'> | 
  g,8 <g' b f'> d  <g  b f'> | 
  c,8 <g' c e > g, <g' c e > | 
  c,8 <g' c e > <g c e> <g c e> | 
  a,8 <a' cis g'> a,8 <a' cis g'> |
  d,8 <a' d f> f <aes c d> |
  g8 <c e> g, <g' b f'> |
  c,8 g <c, c' >4-> |
 }
 

 \key g \major
 \change Staff = "up" \voiceTwo a'''16\ff a8 a16 g8 g8 |
 fis\noBeam \change Staff = "down" \oneVoice \slashedGrace gis,8 a8 d,4-> |
 a'16 a8 a16 g8 g8 |
 fis8 <a a,> <d, d, >4_> | 
  g8 <b d> d, <b' d> | 
  g8 <b d> d, <b' d> | 
  c,8 <g' c e> c, <g' c ees> | 
  <g, g'> <g' b d> d r | 
  g8 <b d> d, <b' d> | 
  g8 <b d> d, <b' d> | 
  e,8 <g a cis> a, <g' a cis> | 
  d16 fis8 a16 g8-> fis8-> |
  g8 <b d> d, <b' d> | 
  g8 <b d> d, <b' d> | 
  c,8 <g' c e> c, <g' c e> | 
  b,8 <fis' a b> <fis a b> s8 | 
  gis,8 <e' b' d> e, <e' gis d'> |
  a,8 <a' c e> a, <a' c ees> |
  d,8 <g b d> <d d,>16 <e e,> <fis fis,>8 |
  <g g,>8 r <g g, >-> s |


 \repeat volta 2 {
  e8 <g a cis> a,8 <g' a cis> |
  e8 <g a cis> a,8 <g' a cis> |
  <d d' >-> <e e' >-> <fis fis' >-> <e e' >-> |
  <d d' >-> <cis cis' >-> <b b' >-> <a a' >-> |
  b  <fis' a  b dis> dis  <a' b dis> | 
  b, <     a' b dis> dis, <a' b dis> | 
  <e e' >-> <fis fis' >-> <g g' >-> <fis fis' >-> | 
  <e e' >-> <d d' >-> <cis cis' >-> <b b' >-> | 
  e <a cis g'> a, <a' cis g'> |
  e <a cis g'> a, <a' cis g'> |
  d, <a' d fis> a, <a' d fis> |
  d, <a' d fis> a, <a' d fis> |
  <g g'>[ <fis fis'> <e e'> <g b e>] |
  a, <a' d fis> a, <a' cis g'> |
  <d, d'> <a a'> <b b'>16 <a a'>8 <fis fis'>16 |
  <d d'>8 r \grace {a''16[( b  cis)]} d4 |
 }

 %\bar "||"
 \repeat volta 2 {
  a,8 <d fis c'> d, <d' fis c'> |
  a 8 <d fis c'> d, <d' fis c'> |
  g,8 <d' g b> d, <d' g b> |
  g,8 <d' g b> d, <d' g b> |
  a 8 <d fis c'> d, <d' fis c'> |
  a 8 <d fis c'> d, <d' fis c'> |
  g,8 <d' g b> d, <d' g b> |
  g,8 <d' g b> d, <d' g b> |
  a 8 <d fis c'> d, <d' fis c'> |
  a 8 <d fis c'> d, <d' fis c'> |
  g,8 <d' g b> d, <d' g b> |
  g,8 <d' g b> d, <d' g b> |
  gis,8 <e' b' d> a, <e' a c> |
  fis,8 <d' a' c> g, <d' g b> |
  c8 <e a c> d <g b d> |
  <a, a'>8 <d, d'> <g g'> r |
 }
 
 %\bar "|."
}


\score {
  \context PianoStaff <<
  \context Staff = "up" \top
  \context Staff = "down" \bottom
 >>

\layout {}
\midi {}
}
