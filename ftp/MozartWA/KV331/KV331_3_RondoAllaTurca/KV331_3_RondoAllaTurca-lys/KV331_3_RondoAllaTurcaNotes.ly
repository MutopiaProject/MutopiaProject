\version "2.16.0"
\include "deutsch.ly"

dynamics = {
  s4\p s2*4
  s2*3 s4 s4\mp s2*2
  s2*5 s4 s4\p
  s2*2 s2\cresc s8\fz s8\p s4 s2*2
  s2 s4 s8\f s8 s2*3
  s2*4 s4 s4\p
  s2*2 s2\< s2\>
  s2\! s2*2 s4 s4\f
  s2*5
  s2*2 s4 s4\p s2*2
  s2\< s4\! s4\cresc s2\> s2 s2\p
  s4 s4\f s2*4
  s2*3 s4 s4\p
  s2*5
  s2*2 s4 s4\mp s2*3
  s2*4 s4 s4\p s2
  s2 s2\cresc s8\fz s8\p s4 s2*3
  s4 s4\f s2*3
  s2*4
  s4 s2 s2\f s2 s2
  s2*3 s2\f s2
  s2*4
  s2\p s2*3
  s2*3 s2\f
  s2*5
  s2*3 s2\f s4 s4\ff s2
}

righta = \transpose c c'' {
  h,16-4( a, gis, a,-1 |
  c8)-.-3 r d16-3( c h, c |
  e8)-.-4 r f16-4( e dis e-1 |
  h-4 a gis a h a gis a |
  c'4)\accent a8-.-2 c'-.-4 |
  \grace { g!32[( a)] } h8-.-> <fis a>-.-2-4 <e g>-. <fis a>-. |
  \grace { g32[( a)] } h8-.-> <fis a>-.-2-4 <e g>-. <fis a>-. |
  \grace { g32[( a)] } h8-.-> <fis a>-.-4 <e g>-. <dis fis>-.-2-4 |
  e4--
}

rightaa = \transpose c c'' {
  h,16( a, gis, a, |
  c8)-. r d16( c h, c |
  e8)-. r f16( e dis e |
  h a gis a h a gis a |
  c'4*1/2) s8 a8-.-2 h-. |
  c'-.\accent h-. a-.-1  gis-.-2 a-. e-. f-.-4 d-.-2 |
  c4-- h,8.-2\trill( a,32 h, |
  a,4)--
}

rightb = \transpose c c'' {
  <c e>8[-.-1-3 <d! f!>-.] |
  <e g>-.-1-3 <e g>-. a16-4( g f e) |
  << { d4\accent-4 } \\ { h,8-2( g,) } >> <c e>8-. <d! f!>-. |
  <e g>-. <e g>-. a16-4( g f e) |
  <h, d>4\accent---2-4 <a, c>8-.-1-3 <h, d>-. |
  <c e>-.-1-3 <c e>-. f16-4( e d c) |
  << { h,4\accent-4 } \\ { gis,8-2( e,) } >> <a, c>8-. <h, d>-. |
  <c e>-. <c e>-. f16( e d c) |
  <gis, h,>4\accent---2-4
}

rightc = \relative c''' {
  <a a,>8-. <h h,>-. |
  <cis cis,>4\accent\tenuto <a a,>8-. <h h,>-. <cis cis,>-.\accent <h h,>-. <a a,>-. <gis gis,>-. |
  <fis fis,>-. <gis gis,>-. <a a,>-. <h h,>-. <gis gis,>-4( <e e,>)-. <a a,>8-. <h h,>-. |
  <cis cis,>4\accent\tenuto <a a,>8-. <h h,>-. <cis cis,>-.\accent <h h,>-. <a a,>-. <gis gis,>-. |
  <fis fis,>-. <h h,>-. <gis gis,>-. <e e,>-. |
  <a a,>4\tenuto
}

rightco = \relative c'' {
  a16( a' h, h' |
  cis,\accent cis') r8 a,16( a' h, h' cis, cis' h, h' a, a' gis, gis') |
  fis,( fis' gis, gis' a, a' h, h' gis, gis' e, e') a,16( a' h, h' |
  cis,\accent cis') r8 a,16( a' h, h' cis, cis' h, h' a, a' gis, gis') |
  fis,( fis' h, h' gis, gis' e, e'
}

rightcoa = \transpose c c' {
  <a a'>4)
}

rightcoat = \transpose c c' {
  <a a'>4\tenuto )
  << { cis''8. cis''16 } \\ { cis'4 } >>
}

rightd = \relative c''' {
  cis16-3( d cis h a h a gis-3 fis a gis fis |
  eis fis gis eis cis-2 dis eis cis |
  fis-4 eis-1 fis gis a gis a-1 h |
  cis his cis his cis d cis h) |
  a( h a gis-3 fis a gis fis |
  e! fis gis e cis-2 dis e cis |
  dis-3 e fis dis his-1 cis dis his |
  cis4--)
}

righte = \relative c''' {
  e,16-5( d! cis h! |
  a h cis d-1 e fis gis a) |
  a\accent-4( gis fis e) e-5( d cis h |
  a-1 h cis d-1 e fis gis a) |
  ais8\accent-3( h-.-4) e,16-5( d cis h |
  a h cis d-1 e fis gis a) |
  a\accent-4( gis fis e) e-4( d cis h |
  cis-3 e a,-1 cis-4 h d gis,-2 h-4 |
  a4)-- cis'16( d cis h a h a gis fis a gis fis |
  eis fis gis eis cis dis eis cis) |
  fis( eis fis gis a gis a h |
  cis-3 his cis his cis his cis ais-2 |
  d)-4( cis d cis d cis d cis |
  d cis h a gis-2 a h gis |
  a h cis fis,-2 eis fis gis eis fis4)--
}

strum = \transpose c c { <<
  { cis'2\accent } \\
  { <cis e a>4\arpeggio }
>>
}

rightf = \transpose c c'' {
  << \strum \\ { s4 } >> |
  \strum |
  d'16-4( cis')-. h-. cis'-. d'( cis')-. h-. cis' |
  <d' a fis>2\accent |
  \repeat unfold 4 { \grace d'8( <cis' a e>8)-. } |
  << { h4.-3( e'8)-. } \\ { <gis e>2 } >> |
  << \strum \\ s4 >> |
  \strum |
  d'16( cis')-. h-. cis'-. d'( cis')-. h-. cis' |
  <d' a fis>2\accent |
  \grace d'8( <cis' a e>2)-. |
  \repeat unfold 4 { \grace cis'8( <h gis e>8)-. } |

  a4-- \grace { e32[( a)] } cis'8.-.-4 cis'16 |
  \repeat unfold 2 { \grace { e32[( a)] } cis'2\accent } |
  d'16( cis')-. h-. cis'-. d'( cis')-. h-. cis' |
  d'2\accent |
  \repeat unfold 4 { \grace { d'8( } cis'8)-. } |
  h4.-2( e'8)-. |
  << \strum \\ s4 >> |
  \strum |
  d'16( cis')-. h-. cis'-. d'( cis')-. h-. cis' |
  <d' a fis>2\accent |
  \grace { d'8( } <cis' a e>2)-. |
  \repeat unfold 4 { \grace { cis'8( } <h gis e>8)-. } |
  <a, cis e a-->4. <cis cis'>8-. |
  <a, a-->4. <e e'>8-. |
  <a, a-->4. <cis cis'>8-. |
  <a, a>-. <cis cis'>8-. <a, a>-. <e e'>8-. |
  <a, a>4-. <a, cis e a >4-.( |
  <a, cis e a >4)-. r4
}

lefta = {
  r4 |
  a8(-5 <c' e'>)-. <c' e'>-. <c' e'>-. |
  a8( <c' e'>)-. <c' e'>-. <c' e'>-. |
  a8-. <c' e'>-. a8-. <c' e'>-. |
  a8( <c' e'>)-. <c' e'>-. <c' e'>-. |
  e-.-> <h e'>-. <h e'>-. <h e'>-. |
  e-.-> <h e'>-. <h e'>-. <h e'>-. |
  e-.-> <h e'>-. h,-. h-. |
  e4--
}

leftaa = {
  r4 |
  a8( <c' e'>)-. <c' e'>-. <c' e'>-. |
  a8( <c' e'>)-. <c' e'>-. <c' e'>-. |
  a8-. <c' e'>-. a8-. <c' e'>-. |
  f8( <a dis'>)-. <a dis'>-. <a dis'>-. |
  e-. <a e'>-.  d!-. <f h>-. |
  c-. <e a>-. d-. <f h>-. |
  <e a>-.-4-1 <e a>-. <e gis>-.-4-2 <e gis>-. |
  <a, a>4--
}

leftb = {
  \repeat unfold 2 { r4 | c8-. c'-. e-. e'-. | g4 }
  \repeat unfold 2 { r4 | a,8-. a-. c-. c'-. | e4 }
}

stra = {
  \grace { a,32[( cis  e)] }
  a8-.-> a-.
}

strd = {
  \grace { d,32[( fis,  a,)] }
  d8-.-> d-.
}

strdis = {
  \grace { dis,32[( fis,  a,)] }
  dis8-.-> dis-.
}

stre = {
  \grace { e,32[( gis,  h,)] }
 e8-.-> e-.
}

stral = { \stra a8-. a-. }
strdl = { \strd d8-. d-. }
strel = { \stre e8-. e-. }

leftc = {
  r4 \stral \stral \strd \strdis \strel \stral \stral \strd \stre
}

leftd = \relative c {
  r4 |
  fis8-5( <a cis>)-. <a cis>-. <a cis>-. |
  gis8-4( <h cis>)-. <h cis>-. <h cis>-. |
  fis8( <a cis>)-. <a cis>-. <a cis>-. |
  eis8( <gis cis>)-. <gis cis>-. <gis cis>-. |
  fis8( <a cis>)-. <a cis>-. <a cis>-. |
  gis8( <cis e!>)-. <cis e>-. <cis e>-. |
  gis8( <dis' fis>)-. <dis fis>-. <dis fis>-. |
  <cis e>4--
}

lefte = \relative c' {
  r4 |
  a8( <cis e>)-. <cis e>-. <cis e>-. |
  h-. <d e>-. gis,-. <d' e>-. |
  a8( <cis e>)-. <cis e>-. <cis e>-. |
  e,8( <gis d'>)-. <gis d'>-. <gis d'>-. |
  a8( <cis e>)-. <cis e>-. <cis e>-. |
  h-. <d e>-. gis,-. <d' e>-. |
  a-.-1 fis-.-2 d-. e-. a,-. a'-. r4 |

  fis8( <a cis>)-. <a cis>-. <a cis>-. |
  gis8( <h cis>)-. <h cis>-. <h cis>-. |
  fis8( <a cis>)-. <a cis>-. <a cis>-. |
  cis,( <gis' cis>)-. <g cis>-. <fis cis'>-. |
  h,8( <fis' h>)-. <fis h>-. <fis h>-. |
  h,8( <gis'! h>)-. <gis h>-. <gis h>-. |
  cis,-. <fis a>-. cis-. <gis' h>-. <fis a>4--
}

leftf = {
  \stral \stral \stral \strdl \stral \strel \stral \stral \stral \strdl \stral \strel
  a16( e' cis' e' a e' cis'  e')
  \repeat unfold 6 { a16 e' cis' e' }
  \repeat unfold 2 { a16 fis' d' fis' }
  \repeat unfold 2 { a16 e' cis' e' }
  \repeat unfold 2 { e16 e' gis e' }
  \stral \stral \stral \strdl \stral \strel \stral \stral \stral \stra \stra
  a,4-. <a, cis e a  >-.( < a, cis e a >)-. r4
}

right = {
  \clef G
  \key a \minor
  \partial 4
  \repeat volta 2 { \righta }
  \repeat volta 2 { \rightb \rightaa }
  \key a \major
  \repeat volta 2 { \rightc }
  \repeat volta 2 { \rightd }
  \repeat volta 2 { \righte }
  \repeat volta 2 { \rightc }
  \key a \minor
  \repeat volta 2 { \righta }
  \repeat volta 2 { \rightb \rightaa }
  \key a \major
  % These repeat commands form a manual volta+alternative set for the
  % purpose of fixing a warning regarding an inability to end a volta
  % spanner. One other way to fix this is to have the alternative
  % clause encompass the entire 2nd alternative which has the
  % consequence of extending the volta line to the end of the
  % piece. (I tried shortening the line which worked but still gave
  % the warning.)
  \set Score.repeatCommands = #'(start-repeat)
  \rightco
  \set Timing.measureLength = #(ly:make-moment 1 4)
  \set Score.repeatCommands = #'((volta "1"))
  \rightcoa
  \set Score.repeatCommands = #'((volta #f) (volta "2") end-repeat)
  \set Timing.measureLength = #(ly:make-moment 2 4)
  \once\override Slur #'positions = #'(4 . 4)
  \hideNotes \grace a'16.^( \unHideNotes
  \rightcoat
  \set Score.repeatCommands = #'((volta #f))
  \barNumberCheck #98
  \rightf
  \bar "|."
}

left = {
  \clef F
  \partial 4
  \repeat volta 2 { \lefta }
  \repeat volta 2 { \leftb \leftaa }
  \key a \major
  \repeat volta 2 { \leftc a,4^\tenuto }
  \repeat volta 2 { \leftd }
  \repeat volta 2 { \lefte }
  \repeat volta 2 { \leftc a,4^\tenuto }
  \key a \minor
  \repeat volta 2 { \lefta }
  \repeat volta 2 { \leftb \leftaa }
  \key a \major
  \leftc
  \set Timing.measureLength = #(ly:make-moment 1 4)
  a,4
  \set Timing.measureLength = #(ly:make-moment 2 4)
  \stra a8-. a8-.
  \leftf
  \bar "|."
}
