\version "1.8.0"

\header {
 title = "Original Rags"
 composer = "Scott Joplin"

 mutopiatitle = "Original Rags"
 mutopiacomposer = "S. Joplin (1868-1917)"
 mutopiainstrument = "Piano"
 %date = "C. 1907"
 style = "Jazz"
 copyright = "Public Domain"

 filename = "original.ly"
 maintainer = "Tom Harke"
 maintainerEmail = "tom.harke@acm.org"
 maintainerWeb = "http://www.cse.ogi.edu/~harke"
 lastupdated = "2003/Aug/22"

  tagline = "\\parbox{\\hsize}{\\thefooter\\quad\\small\\noindent\\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[\\textwidth][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[\\textwidth][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}"
 footer = "Mutopia-2003/08/22-345"
}

nobeams = \property Staff.autoBeaming = ##f
beamson = \property Staff.autoBeaming = ##t

topmain = \notes \relative c' {
 \property Voice . TextScript \override #'padding = #2

 \key g \major
 \time 2/4
 \clef treble

 \stemDown
 <ais''16 ais'-\f> <b8 b'> <ais16 ais'> <b8 b'> <ais16 ais'> <b b'> |
 <fis16 fis'> <g8 g'> <e16 e'> ~ <e4 e'> |
 <fis16 fis'> <g8 g'> <fis16 fis'> <g8 g'> <fis16 fis'> <g g'> |
 <cis,16 cis'\cr> <d8 d'> <b16 b'> ~ <b4 b'\rc> |
 \stemUp
 <c16 e c'> <c8 e c'> <c16 e c'> <c8 ees c'> <c8 ees c'> |
 <c8 d c'\decr> \grace{gis8} a8 d,4->\rced | 
 <c16 e c'-\p> <c8 e c'> <c16 e c'> <c8 ees c'> <c8 ees c'> |
 <c8 d c'> r8 r16 \stemDown d' g b  |
 
 \repeat volta 2 {
  <d16 d,-\p> g, b <d d,> ~ <d d,> b <d d,> b |
  <d16 d,> g, b <d d,> ~ <d d,> b <d d,> b |
  <e16 e,> <e8 e,> <g,16 e> <a e> <g e> <a8 ees> | 
  <b4 d,-> > r16 \stemDown d, g b  |
  <d16 d,> g, b <d d,> ~ <d d,> b <d d,> b |
  <d16 d,> g, b <d d,> ~ <d d,> b <d d,\cr> b |
  <b8 cis,> <a cis,> ~ <a cis,\rc> <gis16 cis,> <a cis,> | 
  <b16 c,-\f> <a8 c,> <fis16 c\decr> <e8 c-> > <d c->\rced> | 
  <d'16 d,-\p> g, b <d d,> ~ <d d,> b <d d,> b |
  <d16 d,> g, b <d d,> ~ <d d,> b <d d,> b |
  <e16 e,> <e8 e,> <g,16 e> <a e> <g e> <a8 e> | 
  <b4 dis,\cr> r8 <b b,\rc> | 
  <e16 e,-\f> <d8 d,> <b16 b,> <c8 c,> <b b,> | 
  <b16 b,> <a8 a,> <e16 e,> <b'8 b,> <a a,> | 
  <b16 d, b> <a8 c, a> <b16 d, b> <c e, c> <b d, b> <a8 c, a> | 
 } \alternative {
  { <g8 b, g> r r16 d g b }
  {
   \property Voice.TextScript \override #'padding = #4
   <g8 b, g> r <g4 d b g->^"8va">
   \property Voice.TextScript \revert #'padding
  }
 }
 
 \repeat volta 2 {
  <ais16 fis-\ff> <b8 g> <ais16 fis> <b8 g> <ais16 fis> <b g> | 
  <fis16 dis> <g8 e> <e16 c> ~ <e4 c> |
  <fis16 dis> <g8 e> <fis16 dis> <g8 e> <fis16 dis> <g e> | 
  <cis,16 ais> <d8 b> <b16 g> ~ \stemUp <b4 g> \stemDown |
  <cis16 ais> <d8 b> <cis16 ais> <d8 b> <cis16 ais> <d b> | 
  \stemUp <b8 g> b16 g ~ g b g8 \stemDown |
  <cis16 ais> <d8 b> <cis16 ais> <d8 b> <cis16 ais> <d b> | 
  \stemUp <b8 g> b16 g ~ g b g8 \stemDown |
  <ais'16 fis> <b8 g> <ais16 fis> <b8 g> <ais16 fis> <b g> | 
  <fis16 dis> <g8 e> <e16 c> ~ <e4 c> |
  <fis16 dis> <g8 e> <fis16 dis> <g8 e> <fis16 dis> <g e> | 
  <cis,16 ais> <d8 b> <b16 g\cr> ~ \stemUp <b4 g> \stemDown |
  \stemUp <a16 g e\rc-\f> <a8 g e> <a16 g e> \stemDown <e'8 ais, g> <e ais, g> |
  <d16 b g> g8 e16 d b g8 |
  \stemUp
  <a16 c,> <b d,> <c e,> <b d,> ~ <b d,> <a8 c,> <b16 d,> |
  <g8 b,> r \stemDown <g'4 d b g-> > | 
 }
 
 \key c \major
 
 \repeat volta 2 {
  \property Voice.TextScript \override #'padding = #0.5
  g16_\markup { \column << {"1st time " \dynamic "p"} {"2nd time " \dynamic "f"} >> } a g e f d8 e16 | 
  \property Voice.TextScript \revert #'padding
  f16 g a e f d8 e16 | 
  c16 e g <a e c> ~ <a4 e c> | 
  r16 c,( e g a g e )c | 
  b16 d f <a d, b> ~ <a4 d, b> | 
  r16 b,( d f a f d )b | 
  c16 e g <c c,> <b8 dis, b> <a8 dis, a> | 
  <g8 e g,> g,16( a b c d )e | 
  g16 a g e f d8 e16 | 
  f16 g a e f d8 e16 | 
  c16 e g <a e c> ~ <a4 e c> | 
  r8 <c c,> <b b,> <bes bes,> | 
  a,16 cis e <a a,> <bes8 bes,-> > <a a,-> > | 
  d,16 f a <d d,> <e8 e,> <d d,> | 
  <c16 c,> e, dis e <a8 f b,> <g8 f b,> | 
  <c,8 g e> <g' d b g> <c4 g e c-> > |
 }
 
 \key g \major

 \stemUp
 <c,16 e c'> <c8 e c'> <c16 e c'> <c8 ees c'> <c8 ees c'> |
 <c8 d c'> \grace{gis8} a8 d,4-> | 
 % <c8 d c'\decr> \grace{gis8} a8 d,4->\rced | 
 <c 16 e c'\decr> <c8 e c'> <c16 e c'> <c8 ees c'> <c8 ees c'> |
 <c8 d c'\rced> r8 r16 \stemDown d' g b  |
  <d16 d,-\p> g, b <d d,> ~ <d d,> b <d d,> b |
  <d16 d,> g, b <d d,> ~ <d d,> b <d d,> b |
  <e16 e,> <e8 e,> <g,16 e> <a e> <g e> <a8 ees> | 
  <b4 d,-> > r16 \stemDown d, g b  |
  <d16 d,> g, b <d d,> ~ <d d,> b <d d,> b |
  <d16 d,\cr> g, b <d d,> ~ <d d,> b <d d,> b\rc |
  <b8 cis,-\f> <a cis,> ~ <a cis,> <gis16 cis,> <a cis,> | 
  <b16 c,> <a8 c,> <fis16 c\decr> <e8 c-> > <d c->\rced> | 
  <d'16 d,-\p> g, b <d d,> ~ <d d,> b <d d,> b |
  <d16 d,> g, b <d d,> ~ <d d,> b <d d,> b |
  <e16 e,> <e8 e,> <g,16 e> <a e> <g e> <a8 e> | 
  <b4 dis,> r8\cr <b b,\rc> | 
  <e16 e,-\f> <d8 d,> <b16 b,> <c8 c,> <b b,> | 
  <b16 b,> <a8 a,> <e16 e,> <b'8 b,> <a a,> | 
  <b16 d, b> <a8 c, a> <b16 d, b> <c e, c> <b d, b> <a8 c, a> | 
  <g8 b, g> r <g'4 d b g-> > |

 \key d \major

 \repeat volta 2 {
  <a,8. cis, a-\ff^"Brilliant"> b,16 cis a' <g8 cis, a-> > | 
  <a 8. cis, a> b,16 cis a' <g8 cis, a->\cr> | 
  r 8\rc <a 16 d,> a, r8 <a'16 d,> a, |
  r16 [<a'16 d,> r  a,] <a' 8 d,\decr> a,\rced |
  <b'8. dis, b> cis,16 dis b' <a8 dis, b-> > | 
  <b 8. dis, b> cis,16 dis\cr b' <a8 dis, b->\rc> | 
  r 8 <b 16 e,> b, r8 <b'16 e,> b, |
  r16 <b'16 e,> r  b, <b' 8 e,> b, |
  <cis'16 g cis,> <bis bis,> <cis cis,> <e e,> ~ <e e,> <cis8 cis,> <a16 a,> |
  r16 <b8 g b,> <ais16 ais,> <b4 g b,> |
  <b16 fis b,> <ais ais,> <b b,> <d d,> ~ <d d,> <b8 b,> <fis16 fis,> |
  r16 <a8 fis a,> <gis16 gis,> <a8 fis a,> <fis a,> |
  <e8 b> <fis b,> <g16 b,> <b8 b,> <g16 b,> |
  <fis8 a,> <eis16 gis,> <fis a,> <g b,> <fis a,> <e8 g,> |
  \stemUp
  <d8 fis,> a b16 a8 fis16 |
  d8 r \stemDown \grace { [a'16( b )cis] } d4 |
 }
 
 %\bar "||"
 \key g \major
 \repeat volta 2 {
  \stemUp
  ais16-\ff <b8 d> fis16 <a8 c> ais16 <b d> ~ |
  <b16 d> fis <a c> ais \stemDown <b8 d> <a c> | \stemUp
  ais16 <b8 d> d,16 <g8 b> ais16 <b d> ~ |
  <b16 d(> d, g )a b( a g )d | \stemDown
  r8 <fis' fis,> ~ <fis16 fis,> c d <fis fis,> |
  r16 fis,( c' d fis d c )a |
  r8 <e' b g> ~ <e16 b g> b d e |
  r16 g,( b d e d b )g | \stemUp
  ais16 <b8 d> fis16 <a8 c> ais16 <b d> ~ |
  <b16 d> fis <a c> ais \stemDown <b8 d> <a c> | \stemUp
  ais16 <b8 d> d,16 <g8 b> ais16 <b d> ~ |
  <b16 d(> d, g )a b( a g )d | \stemDown
  e'16 ees d des c b bes a |
  d16 des c b \stemUp bes a aes g |
  e16 g8 e16 d g b d |
  \property Score.RehearsalMark \override #'break-visibility = #begin-of-line-invisible
  <b cis,> e, <a c,> d, <g8 d b> r^"Fine" \mark \markup { \musicglyph #"scripts-ufermata" } |
 }
 
 %\bar "|."
}

topsecondary = \notes \relative c'' {
 \property Voice . TextScript \override #'padding = #2
 s2*4
 \stemDown a16-\ff a8 a16 g8 g8 | fis s s4 | 
 s2*2
 \repeat volta 2 { s2*15 } \alternative { {s2} {s2} }
 \repeat volta 2 { s2*16 }
 \repeat volta 2 { s2*16 }
 \stemDown a16-\ff a8 a16 g8 g8 | fis s s4 | 
 s2*18
 \repeat volta 2 { s2*16 }
 \repeat volta 2 { s2*16 }
}

bottom = \notes \relative c {
 \property Voice . TextScript \override #'padding = #2

 \key g \major
 \time 2/4
 \clef bass

 \stemDown
 <ais'16 ais'> <b8 b'> <ais16 ais'> <b8 b'> <ais16 ais'> <b b'> |
 <fis 16 fis'> <g8 g'> <e16 e'> ~ <e4 e'> |
 <fis 16 fis'> <g8 g'> <fis16 fis'> <g8 g'> <fis16 fis'> <g g'> |
 <cis,16 cis'> <d8 d'> <b16 b'> ~ <b4 b'> |
 s2 | 
 s8 \grace{gis'8} a8 d,4-> |
 a'16 a8 a16 g8 g8 |
 fis8 <a a,> \stemUp <d,4 d,_> > | 
 
 \repeat volta 2 {
  \stemDown
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
  d,8 <g b d> \stemUp <d16 d,> <e e,> <fis8 fis,> |
 } \alternative {
  { <g8 g,> r <d d,-> > s }
  { <g8 g,> r <g, g,-> > s }
 }
 
 \repeat volta 2 {
  \stemDown
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
  <c4 c,-> > <cis cis,-> > 
  d,8 <g b d> <g4 b d-> > | 
  <a,4 a'-> > \stemUp <d, d'-> > |
  <g8 g'> r <g4 g,-> > |
 }
 
 \key c \major
 \repeat volta 2 {
  \stemDown
  c8 <g' c e > d  <g  b f'> | 
  g,8 <g' b f'> d  <g  b f'> | 
  c,8 <g' c e > g, <g' c e> | 
  c,8 <g' c e > e  <g  c e> | 
  d 8 <g  b f'> g, <g' b f'> | 
  d 8 <g  b f'> g, <g' b f'> | 
  c,8 <g' c e> <fis c' dis> <fis c' dis> |
  <g8 c e> r r4 |
  c,8 <g' c e > d  <g  b f'> | 
  g,8 <g' b f'> d  <g  b f'> | 
  c,8 <g' c e > g, <g' c e > | 
  c,8 <g' c e > <g c e> <g c e> | 
  a,8 <a' cis g'> a,8 <a' cis g'> |
  d,8 <a' d f> f <aes c d> |
  g8 <c e> g, <g' b f'> |
  \stemUp
  c,8 g <c,4 c'-> > |
 }
 

 \key g \major
 \stemDown
 s2 | 
 s8 \grace{gis''8} a8 d,4-> |
 a'16 a8 a16 g8 g8 |
 fis8 <a a,> \stemUp <d,4 d,_> > | 
  \stemDown
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
  d,8 <g b d> \stemUp <d16 d,> <e e,> <fis8 fis,> |
  <g8 g,> r <g g,-> > s |


 \repeat volta 2 {
  \stemDown
  e8 <g a cis> a,8 <g' a cis> |
  e8 <g a cis> a,8 <g' a cis> |
  <d d'-> > <e e'-> > <fis fis'-> > <e e'-> > |
  <d d'-> > <cis cis'-> > <b b'-> > <a a'-> > |
  b  <fis' a  b dis> dis  <a' b dis> | 
  b, <     a' b dis> dis, <a' b dis> | 
  <e e'-> > <fis fis'-> > <g g'-> > <fis fis'-> > | 
  <e e'-> > <d d'-> > <cis cis'-> > <b b'-> > | 
  e <a cis g'> a, <a' cis g'> |
  e <a cis g'> a, <a' cis g'> |
  d, <a' d fis> a, <a' d fis> |
  d, <a' d fis> a, <a' d fis> |
  [<g g'> <fis fis'> <e e'> <g b e>] |
  a, <a' d fis> a, <a' cis g'> |
  <d, d'> <a a'> <b16 b'> <a8 a'> <fis16 fis'> |
  \stemUp <d8 d'> r \stemDown \grace { [a''16( b )cis] } d4 |
 }

 %\bar "||"
 \repeat volta 2 {
  a,8 <d fis c'> d, <d' fis c'> |
  a 8 <d fis c'> d, <d' fis c'> |
  g,8 <d' g b> d, <d' g b> |
  g,8 <d' g b> d, <d' g b> |
  a 8 <d fis c'> d, <d' fis c'> |
  a 8 <d fis c'> d, <d' fis c'> |
  g,8 <d' g b> \stemUp d, <d' g b> \stemDown |
  g,8 <d' g b> \stemUp d, <d' g b> \stemDown |
  a 8 <d fis c'> d, <d' fis c'> |
  a 8 <d fis c'> d, <d' fis c'> |
  g,8 <d' g b> d, <d' g b> |
  g,8 <d' g b> d, <d' g b> |
  gis,8 <e' b' d> a, <e' a c> |
  fis,8 <d' a' c> g, <d' g b> |
  c8 <e a c> d <g b d> |
  <a,8 a'> <d, d'> \stemUp <g g'> r |
 }
 
 %\bar "|."
}


\score {
 \notes \context PianoStaff <
  \context Staff = "up" <
   \context Voice = VA { \voiceOne \topmain }
   \context Voice = VB { \voiceTwo \topsecondary }
  >
  \context Staff = "down"
   \bottom
 >

\paper {}
\midi {}
}
