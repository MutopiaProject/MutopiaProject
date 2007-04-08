\version "2.4.6"
\header {
  title = "Prelude"
  subtitle = "From Carmen"
  composer = "GEORGES BIZET"
  mutopiatitle = "Carmen - Prelude"
  mutopiacomposer = "BizetG"
  mutopiainstrument = "Piano"
  date = "1874"
  source = "Schirmer, 1895"
  style = "Romantic"
  copyright = "Creative Commons Attribution-ShareAlike 2.5"
  maintainer = "Alex O'S"
  maintainerEmail = "erichstroheim@gmail.com"
  lastupdated = "2005/Nov/22"
  
  footer = "Mutopia-2005/11/22-635"
  tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2005. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/2.5" http://creativecommons.org/licenses/by-sa/2.5 } } } }
}

global = { \time 2/4 \key a \major
}

upper = \relative c''' {
\clef treble
\repeat volta 2 {
<a e cis a>8-.^\markup {Allegro giocoso} a16-. a-. a-. e-. d-. e-. |							%1-1a
a8-. a16-. a-. a-. b-. cis-. b-. |											%1-2a
a8-. a16-. a-. b-. a-. gis-. a-. | \slurDown										%1-3a
<<{b2(\startTrillSpan}{s4 s8 s16 \grace {ais16[\stopTrillSpan b])}}>> \slurUp |						%1-4a
<d! a! fis d!>8-. d16-. d-. d-. a-. g-. a-. |										%1-5a

d8-. d16-. d-. d-. e-. fis-. e-. |											%2-1a
d8-. d16-. cis-. b8-. b16-. a-. | \slurDown										%2-2a
<<{gis2(\startTrillSpan}{s4 s8 s16 \grace {fis16[\stopTrillSpan gis])}}>> \slurUp |					%2-3a
<a e cis a>8-. a16-. a-. a-. e-. d-. e-. |										%2-4a
a8-. a16-. a-. a-. b-. cis-. b-. |											%2-5a

a8-. a16-. a-. b-. a-. gis-. a-. | \slurDown										%3-1a
<<{b2(\startTrillSpan}{s4 s8 s16 \grace {ais16[\stopTrillSpan b])}}>> \slurUp |						%3-2a
<e c g e>8-. <e c>16-. <e c>-. <e c>( <d! g,>-.) <c e,>-. <d g,>-. |							%3-3a
<e c g e>8-. <e c>16-. <e c>-. <e c>( <d! g,>-.) <c e,>-. <d g,>-. |							%3-4a
<e e,>8-. e,16-. fis-. gis8-. e16-. cis'-. |										%3-5a
<b gis e d>4( <a e cis>8-.) r |												%3-6a
}
<cis, a>8[( <fis cis>8)-. <cis a>-. <b gis>]-. |									%4-1a
<a fis>8( <gis eis>16 <fis dis> <gis eis>8)-. cis,8-. |									%4-2a
<fis dis>[-. <gis eis>-. <a fis>-. <cis cis,>]-. |									%4-3a
<eis b>( <dis a>16 <eis b> <cis gis>8-.) cis,-. |									%4-4a
<cis' a>8[( <fis cis>8)-. <cis a>-. <b gis>]-. |									%4-5a
<a fis>8( <gis eis>16 <fis dis> <gis eis>8)-. cis,8-. |									%4-6a

<fis dis>[-. <gis eis>-. <a fis>-. <cis cis,>]-. |									%5-1a
<eis gis,>( <dis gis,>16 <eis gis,> <cis eis,>8) r |									%5-2a
<d! d,!>16 <d d,> <d d,>8-. <e! d e,!>16 <e d e,> <e d e,>8-. |								%5-3a
<fis d fis,>16 <fis d fis,> <fis d fis,>8-. <d d,>16 <d d,> <d d,>8-. |							%5-4a
r16 <cis' cis,>-.[ r <gis gis,>-.] r <cis cis,>-.[ r <d d,>-] |								%5-5a
r16 <cis cis,>-.[ r <gis gis,>-.] <cis cis,>8-. r |									%5-6a

<d, d,>16 <d d,> <d d,>8-. <e d e,>16 <e d e,> <e d e,>8-. |								%6-1a
<fis d fis,>16 <fis d fis,> <fis d fis,>8-. <d d,>16 <d d,> <d d,>8-. |							%6-2a
\repeat "tremolo" 8 { gis,32 gis'32 } |											%6-3a
\repeat "tremolo" 8 { gis,32 gis'32 } |											%6-4a
\repeat "tremolo" 8 { gis,32 gis'32 } |											%6-5a
\repeat "tremolo" 4 { gis,32 gis'32 } gis,8 <b! d! e gis> |								%6-6a


<a' e cis a>8-. a16-. a-. a-. e-. d-. e-. |										%1-1b
a8-. a16-. a-. a-. b-. cis-. b-. |											%1-2b
a8-. a16-. a-. b-. a-. gis-. a-. | \slurDown										%1-3b
<<{b2(\startTrillSpan}{s4 s8 s16 \grace {ais16[\stopTrillSpan b])}}>> \slurUp |						%1-4b
<d! a! fis d!>8-. d16-. d-. d-. a-. g-. a-. |										%1-5b

d8-. d16-. d-. d-. e-. fis-. e-. |											%2-1b
d8-. d16-. cis-. b8-. b16-. a-. | \slurDown										%2-2b
<<{gis2(\startTrillSpan}{s4 s8 s16 \grace {fis16[\stopTrillSpan gis])}}>> \slurUp |					%2-3b
<a e cis a>8-. a16-. a-. a-. e-. d-. e-. |										%2-4b
a8-. a16-. a-. a-. b-. cis-. b-. |											%2-5b

a8-. a16-. a-. b-. a-. gis-. a-. | \slurDown										%3-1b
<<{b2(\startTrillSpan}{s4 s8 s16 \grace {ais16[\stopTrillSpan b])}}>> \slurUp |						%3-2b
<e c g e>8-. <e c>16-. <e c>-. <e c>( <d! g,>-.) <c e,>-. <d g,>-. |							%3-3b
<e c g e>8-. <e c>16-. <e c>-. <e c>( <d! g,>-.) <c e,>-. <d g,>-. |							%3-4b
<e e,>8-. e,16-. fis-. gis8-. e16-. cis'-. |										%3-5b

<b gis e d>4( <a e cis>8-.) r |												%4-1b
<a, f>8-. r <a f>-. r |													%4-2b
<a f>8-. r <a f>-. r |													%4-3b
<a f>8-. r <a f>-. r |													%4-4b
<a f>8-. r <a f>-. r |													%4-5b

<<{	\phrasingSlurUp	\dynamicUp											%TOP VOICE
c4\(\p^\markup { "" \raise #2 \italic {maben marcato}} d8. c16 |							%5-1b
a4 a4 |															%5-2b
\acciaccatura {bes8} a8. g16 a8. bes16 |										%5-3b
a4~ a8\) r |														%5-4b
bes4\( g8. c16 |													%5-5b
a4~ a8\) r |														%5-6b

f4\( d8. g16 |														%6-1b
c,4~ c8\) r |														%6-2b
g'2\( |															%6-3b
g8[ d'8 c8 bes8] |													%6-4b
\acciaccatura {bes8} a8[ g8 a8 bes8] |											%6-5b
a4~ a8\) r | 														%6-6b

e4\( a |														%7-1b
a gis8. b16 |														%7-2b
e2~\) |															%7-3b
e2~ |															%7-4b
e8\( \tupletDown \times 2/3 {d16 e d} \tupletNeutral c8 d |								%7-5b
g,8 a bes4~\) |														%7-6b


bes8\( \times 2/3 {a16 bes a} f8 d' |											%1-1c
c4~ c8\) r |														%1-2c
}\\{															%BOTTOM VOICE
<a f>8-. r <a f>-. r |													%5-1b
f-. r f-. r |														%5-2b
f-. r f-. r |														%5-3b
f-. r f-. r |														%5-4b
f-. r e-. r |														%5-5b
f-. r f-. r |														%5-6b

c-. r <b g>-. r |													%6-1b
g-. g\rest r4 |														%6-2b
s2 |															%6-3b
s2 |															%6-4b
s2 |															%6-5b
s2 |															%6-6b

s4 e'8-. r |														%7-1b
e-. r e-. r |														%7-2b
e-. r e-. r |														%7-3b
<e a>-. r <e a>-. r |													%7-4b
<f g>-. r <f g>-. r |													%7-5b
<d f>-. r <d f>-. r |													%7-6b


s2 |															%1-1c
s2 |}>>	\tupletDown													%1-2c
r8 \times 2/3 {f16( g f} c8 bes'8 | \tupletNeutral									%1-3c
a4 <<{\appoggiatura {g16[ a]}}\\{<e c>8 r}>> |										%1-4c
<f c>8-.) c16[ d] e[ f g a] |												%1-5c

bes c d e f g <a f> <bes g> |												%2-1c
<c a f c>8-. r <d a f d>-.[ r16 <c c,>(] |										%2-2c
<a f c a>8)-. r <a f c a>8-. r | \slurUp										%2-3c
<<{\acciaccatura {bes8} \slurNeutral <a f c a>8-.[ r16 <g g,>]( <a f c a>8-.)[ r16 <bes bes,>]( |			%2-4c
<a a,>4)~ <a a,>8 r}\\{s2 | <f c>8 r <f c> r |}>>									%2-5c

<<{<bes f d bes>8 r <g e c g>8-.[ r16 <c c,>]( |									%3-1c
<a a,>4)~ <a a,>8 r}\\{s2 | <f c>8 r <f c> r |}>>									%3-2c
<<{<f c a f>8-. r <d b f d>8-.[ r16 <g g,>16(] |									%3-3c
c,4~) c8}\\{s2 | <g e>8-. r <g e>-. r |}>>										%3-4c
<g' g,>2\(^\markup {"" \raise #2 \italic {espress.}} |									%3-5c

<g g,>8[ <d' d,> <c c,> <bes bes,>] |											%4-1c
\acciaccatura {bes8} <a a,>[ <g g,> <a a,> <bes bes,>] |								%4-2c
<a a,>4.\) r8 |														%4-3c
<e e,>4\( <a a,> |													%4-4c
<a a,> <gis gis,>8. <b b,>16 |												%4-5c
\repeat "tremolo" 8 {e,32 e'32} |											%4-6c

\repeat "tremolo" 8 {eis,32 eis'32 } |											%5-1c
<gis gis,>16-.\) r16 \times 2/3 {<fis fis,>16([ gis fis]} <eis eis,>8-.) <fis fis,>-. |					%5-2c
<b, b,>-. <cis cis,>-. <d d,>4-^ |											%5-3c
<d d,>16 r16 \times 2/3 {cis16[( d cis} a8-.]) fis'-. |									%5-4c
e-. <cis, a e>16-.[ <cis a e>-.] <a e>8-. <fis' d a fis>-. |								%5-5c

<e cis a e>8-. \times 2/3 {a16([ b a]} e8-.) d'8-. |									%6-1c
cis-. r <b gis e d>-. r |												%6-2c
<a e cis a>8-. a16-. a-. a-. e-. d-. e-. |										%6-3c
a8-. a16-. a-. a-. b-. cis-. b-. |											%6-4c
a8-. a16-. a-. b-. a-. gis-. a-. | \slurDown										%6-5c

<<{b2(\startTrillSpan}{s4 s8 s16 \grace {ais16[\stopTrillSpan b])}}>> \slurUp |						%7-1c
<d! a! fis d!>8-. d16-. d-. d-. a-. g-. a-. |										%7-2c
d8-. d16-. d-. d-. e-. fis-. e-. |											%7-3c
d8-. d16-. cis-. b8-. b16-. a-. | \slurDown										%7-4c
<<{gis2(\startTrillSpan}{s4 s8 s16 \grace {fis16[\stopTrillSpan gis])}}>> \slurUp |					%7-5c


<a e cis a>8-. a16-. a-. a-. e-. d-. e-. |										%1-1d
a8-. a16-. a-. a-. b-. cis-. b-. |											%1-2d
a8-. a16-. a-. b-. a-. gis-. a-. | \slurDown										%1-3d
<<{b2(\startTrillSpan}{s4 s8 s16 \grace {ais16[\stopTrillSpan b])}}>> \slurUp |						%1-4d
<e c g e>8-. <e c>16-. <e c>-. <e c>( <d! g,>-.) <c e,>-. <d g,>-. |							%1-5d

<e c g e>8-. <e c>16-. <e c>-. <e c>( <d! g,>-.) <c e,>-. <d g,>-. |							%2-1d
<e c>(_\markup {"" \raise #-5 \bigger \italic {pi�}} <d! g,>-.) <c e,>-. <d g,>-. <e c>( <d! g,>-.) <c e,>-. <d g,>-. |	%2-2d
<e c>( <d! g,>-.) <c e,>-. <d g,>-. <e c>( <d! g,>-.) <c e,>-. <d g,>-. |						%2-3d
\repeat "tremolo" 8 {e,32 e'32} |											%2-4d
\repeat "tremolo" 4 {e,32 e'32} e,8 <gis b d e> |									%2-5d

<a cis e a>8-. r8 <a, a,>8 r8\fermata |											%3-1d
R2 | \bar "||" \key a \minor \time 3/4											%3-2d


%CARMEN FATE THEME
\repeat "tremolo" 12 {<f d>32^\markup {"" \raise #1 {Andante moderato}} a32} |						%1
\repeat "tremolo" 12 {<f d>32_\markup {\italic {espress.}} a32} |							%2
\repeat "tremolo" 12 {f32 a32} |											%3
\repeat "tremolo" 12 {<f d>32 a32} |											%4

\repeat "tremolo" 12 {<f d>32 b!32} |											%5
\repeat "tremolo" 12 {<g! d>32 bes32} |											%6
\repeat "tremolo" 12 {<a d,>32 d32} |											%7
\repeat "tremolo" 12 {<a f!>32 d32} |											%8
\repeat "tremolo" 12 {<bes e,>32 c32} |											%9
\repeat "tremolo" 12 {<a f>32 c32} |											%10

\repeat "tremolo" 12 {aes32 b!32} |											%11
\repeat "tremolo" 12 {<aes f>32 c32} |											%12
\repeat "tremolo" 12 {<aes f>32 d!32} |											%13
\repeat "tremolo" 12 {<des e,>32 e32} |											%14
\repeat "tremolo" 12 {<c f,>32 f32} |											%15
\repeat "tremolo" 12 {<c aes>32 f32} |											%16

\repeat "tremolo" 12 {<des g,>32 ees32} |										%17
\repeat "tremolo" 12 {<c aes>32 ees32} |										%18
\repeat "tremolo" 12 {<ces f,>32 d!32} |										%19
\repeat "tremolo" 4 {<ces ees,>32 ees32} \repeat "tremolo" 8 {<bes ees,>32 ees32}  |					%20
\repeat "tremolo" 12 {<des g,>32 ees32} |										%21
\repeat "tremolo" 4 {<des f,>32 f32} \repeat "tremolo" 8 {<c f,>32 f32}  |						%22

\repeat "tremolo" 12 {<a, fis>32 ees'32} |										%23
\repeat "tremolo" 12 {<c a>32 fis32} |											%24
\repeat "tremolo" 12 {<ees c>32 a32} |											%25
\repeat "tremolo" 12 {<ees c>32 a32} |											%26
<bes e,! cis bes>8-. r8 r4 r4 | \bar "|."
}




lower = \relative c' {
\clef bass
\repeat volta 2 {
<a e cis a>8-. <cis e>-. e,-. <b' d e>-. |										%1-1a
a-. <cis e>-. e,-. <b' d e>-. |												%1-2a
a-. <cis e>-. gis-. <a cis e>-. |											%1-3a
fis-. <a b dis>-. e-. <gis b e>-. |											%1-4a
d!-. <fis a d!>-. a,-. <e' g! a d>-. |											%1-5a

d-. <fis a d>-. a,-. <e' g! a d>-. |											%2-1a
d-. <fis a d>-. gis,-. <fis' b d>-. |											%2-2a
cis-. <eis gis cis>-. e!-. <gis b d>-. |										%2-3a
<a e cis a>-. <cis e>-. e,-. <b' d e>-. |										%2-4a
a-. <cis e>-. e,-. <b' d e>-. |												%2-5a

a-. <cis e>-. gis-. <a cis e>-. |											%3-1a
fis-. <a b dis>-. e-. <gis b e>-. |											%3-2a
c,-. g'-. g,-. g'-. |													%3-3a
c,-. g'-. g,-. g'-. |													%3-4a
<e e,> <e gis b d>16-. <e gis b d>-. <e gis b d>8-. <e gis b d>16-. <e gis b d>-. |					%3-5a
<e gis b d>8-. e16-. e-. <a e cis a>8-. r |										%3-6a
}
fis,8([ cis'-.) fis-. gis-.] |												%4-1a
a( b16 cis b8-.) cis,-. |												%4-2a
<a' fis,>[-.\arpeggio gis-. fis-. a-.] |										%4-3a
gis8( fis16 gis eis8-.) cis-. |												%4-4a
fis,8([ cis'-.) fis-. gis-.] |												%4-5a
a( b16 cis b8-.) cis,-. |												%4-6a

<a' fis,>[-.\arpeggio gis-. fis-. a-.] | \set doubleSlurs = ##t								%5-1a
<bis gis>4( <cis cis,>8) r | \set doubleSlurs = ##f									%5-2a
<d,! d,!>16 <d d,> <d d,>8-. <e! d e,!>16 <e d e,> <e d e,>8-. |							%5-3a
<fis d fis,>16 <fis d fis,> <fis d fis,>8-. <d d,>16 <d d,> <d d,>8-. |							%5-4a
<cis cis,>8-. <gis gis,>-. <cis cis,>-. <d d,>-. |									%5-5a
<cis cis,>-. <gis gis,>-. <cis cis,>-. r |										%5-6a

<d d,>16 <d d,> <d d,>8-. <e d e,>16 <e d e,> <e d e,>8-. |								%6-1a
<fis d fis,>16 <fis d fis,> <fis d fis,>8-. <d d,>16 <d d,> <d d,>8-. |							%6-2a
<gis gis,>8[ <gis, gis,> <a a,> <a' a,>] |										%6-3a
<ais ais,>[ <ais, ais,> <b b,> <b' b,>] |										%6-4a
<bis bis,>[ <bis, bis,> <cis cis,> <cis' cis,>] |									%6-5a
<d d,>[ <d, d,> <dis dis,> <e e,>] |											%6-6a


<a, a,>8-. <cis' e>-. e,-. <b' d e>-. |											%1-1b
a-. <cis e>-. e,-. <b' d e>-. |												%1-2b
a-. <cis e>-. gis-. <a cis e>-. |											%1-3b
fis-. <a b dis>-. e-. <gis b e>-. |											%1-4b
d!-. <fis a d!>-. a,-. <e' g! a d>-. |											%1-5b

d-. <fis a d>-. a,-. <e' g! a d>-. |											%2-1b
d-. <fis a d>-. gis,-. <fis' b d>-. |											%2-2b
cis-. <eis gis cis>-. e!-. <gis b d>-. |										%2-3b
<a e cis a>-. <cis e>-. e,-. <b' d e>-. |										%2-4b
a-. <cis e>-. e,-. <b' d e>-. |												%2-5b

a-. <cis e>-. gis-. <a cis e>-. |											%3-1b
fis-. <a b dis>-. e-. <gis b e>-. |											%3-2b
c,-. g'-. g,-. g'-. |													%3-3b
c,-. g'-. g,-. g'-. |													%3-4b
<e e,> <e gis b d>16-. <e gis b d>-. <e gis b d>8-. <e gis b d>16-. <e gis b d>-. |					%3-5b

<e gis b d>8-. e16-. e-. <a e cis a>8-. r |										%4-1b
<c a f>8-. r <c a c,>-. r |												%4-2b
<c a f>8-. r <c a c,>-. r |												%4-3b
<c a f>8-. r <c a c,>-. r |												%4-4b
<c a f>8-. r <c a c,>-. r |												%4-5b

<c a f>8-. r <c a c,>-. r |												%5-1b
<c a f>8-. r <c a c,>-. r |												%5-2b
<c a f>8-. r <c a c,>-. r |												%5-3b
<c a f>8-. r <c a c,>-. r |												%5-4b
<d bes g>8-. r <c bes c,>-. r |												%5-5b
<c a f>-. r <c a e>-. r |												%5-6b

<a d,>-. r <f g,>-. r |													%6-1b
<e c>-. r <c c,>-. r |													%6-2b
<d' bes>-. r d-. r |													%6-3b
<d bes>-. r <d bes g>-. r |												%6-4b
<d a f>-. r <d a>-. r |													%6-5b
<d a f>-. r <d a f d>-. r |												%6-6b

<c a e>-. r c-. r |													%7-1b
<d b>-. r <d b e,>-. r |												%7-2b
<cis a>-. r <cis a e>-. r |												%7-3b
<cis a e cis>-. r <a e cis a>-. r |											%7-4b
<g f d bes>-. r <g f d>-. r |												%7-5b
<g f d bes>-. r <g f d g,>-. r |											%7-6b


<c c,>8 r r4 |														%1-1c
r8_\markup { %{"" \raise #2%} \italic {legg.}} \times 2/3 {a16( bes a} <f c>8-.) <d' bes>8-. |				%1-2c
<c a>8-. r r4 |														%1-3c
r4 <bes c,>8-. r |													%1-4c
<a f>8-. \clef treble a16[ bes] c[ d e f] |										%1-5c

g a bes c d e r8 \clef bass |												%2-1c
<c, a f>8-. r <c a f c>-. r |												%2-2c
<c a f>8-. r <c a f c>-. r |												%2-3c
<c a f>8-. r <c a f c>-. r |												%2-4c
<c a f>8-. r <c a f c>-. r |												%2-5c

<d bes g>8-. r <c bes g c,>-. r |											%3-1c
<c a f>-. r <c a f e>-. r |												%3-2c
<c a f d>-. r <b g>-. r |												%3-3c
<c g e c>-. r c-. r |													%3-4c
<d bes>-. r d-. r |													%3-5c

<d bes>8-. r <d bes g>-. r |												%4-1c
<d a f>-. r <d a>-. r |													%4-2c
<d a f>-. r <d a f d>-. r |												%4-3c
<c a e>-. r <e c>-. r |													%4-4c
<e d b>-. r <e d b e,>-. r |												%4-5c
<e cis a>-. r <e cis a e>-. r |												%4-6c

<a, eis cis>8-. r <a eis cis a>-. r |											%5-1c
<a fis d>-. r <ais fis>-. r |												%5-2c
<b fis d>-. r <b fis d b>-. r |												%5-3c
<e,! e,!>-. \clef treble \times 2/3 {cis''16([ d cis]} a8-.) fis'-. |							%5-4c
e-. \clef bass <cis, a e>16-.[ <cis a e>] <cis a e>8-. <d a e>-. |							%5-5c

<cis a e>8-. \times 2/3 {a16[( b a]} e8-.) d'8-. |									%6-1c
cis-. r <e, b gis e>-. r |												%6-2c
<a e cis a>8-. <cis e>-. e,-. <b' d e>-. |										%6-3c
a-. <cis e>-. e,-. <b' d e>-. |												%6-4c
a-. <cis e>-. gis-. <a cis e>-. |											%6-5c

fis-. <a b dis>-. e-. <gis b e>-. |											%7-1c
d!-. <fis a d!>-. a,-. <e' g! a d>-. |											%7-2c
d-. <fis a d>-. a,-. <e' g! a d>-. |											%7-3c
d-. <fis a d>-. gis,-. <fis' b d>-. |											%7-4c
cis-. <eis gis cis>-. e!-. <gis b d>-. |										%7-5c

<a e cis a>-. <cis e>-. e,-. <b' d e>-. |										%1-1d
a-. <cis e>-. e,-. <b' d e>-. |												%1-2d
a-. <cis e>-. gis-. <a cis e>-. |											%1-3d
fis-. <a b dis>-. e-. <gis b e>-. |											%1-4d
c,-. g'-. g,-. g'-. |													%1-5d

c,-. g'-. g,-. g'-. |													%2-1d
c,-. <g' g,>-. <g c,>-. <g g,>-. |											%2-2d
<g c,>-. <g g,>-. <g c,>-. <g g,>-. |											%2-3d
<e e,>8 <e' e,>16 <e e,> \times 2/3 {<e e,>8 <e e,> <e e,>} |								%2-4d
\times 2/3 {<e e,>8 <e e,> <e e,>} <e e,>8 <b gis! e> |									%2-5d

<a e cis a>8-. r8 <a, a,>8 r8\fermata |											%3-1d
R2 | \bar "||" \key a \minor \time 3/4											%3-2d
\dynamicUp
%CARMEN FATE MOTIF
R2. |															%1
R2._\markup {\italic {tulla forza}} |											%2
d'4~ d8( cis bes cis |													%3
a8) r <d, d,>-. r <d d,>-. r |												%4

a'4~ a8( gis f gis |													%5
e4) <d d,>8-. r <d d,>-. r |												%6
<<{\stemDown g!4~ g8( fis ees fis |\stemUp										%7
d4\< e! f!\! |														%8
a2 g4 |															%9
g4\> f4~\! f8) r |}\\{\stemDown												%10
s2. | b,!2.( | c2. | f,4~ f8) r8 r4 |}>>
\stemNeutral
f''4~ f8( e! des e |													%11
c4) <f, f,>8-. r <f f,>-. r |												%12
c'4~ c8( b! aes b |													%13
g4) <f f,>8-. r <f f,>-. r |												%14
<<{\stemDown bes!4~ bes8( a! ges a |\stemUp										%15
f4\< g! aes\! |														%16

c2 bes4 |														%17
bes4\> aes4~\! aes8) r |}\\{\stemDown											%18
s2. | d,!2.( | ees2. | aes,4~ aes8) r8 r4 |}>>\stemNeutral
<<{ces'4~ ces8\( aes\< g! aes\! |											
ces4\> bes4\!~ bes8\) r |													
des4~ des8\( bes\< a bes\! |												
des4\> c4\!~ c8\) r |													
ees4~ ees8( c b! c |
fis4~) fis8( ees d ees |
a2) a4-^~ |
a8 a4-^ a-^ a8 |
<g, e! cis bes g>8-. r r4 r4 \bar "|." |}\\{
aes,8 r r4 r4 |
r4 g8 r g r |
bes r r4 r |
r a!8 r a r |
c r r4 r |
ees8 r r4 r |
fis8 r r4 r4 |
s2. | s2. |}>>

}

dynamics = { \dynamicNeutral
s8\ff s8 s4 | s2 | s2 | s2 | s2 |\break											%1a
s2 | s2 | s2 | s2 | s2 |\break												%2a
s2 | s2 | s2 | s2 | s2 | s2 |\break											%3a
s8\p s8 s4 | s2 | s2 | s2 | s2 | s2 |\break										%4a
s2 | s2 | s16\f s8. s4 | s2 | s2 | s2 |\break										%5a
s2 | s2 | s8\pp s8 s4\< | s2 | s2 | s4 s8 s8\!\ff |\break								%6a

s2 | s2 | s2 | s2 | s2 |\break												%1b
s2 | s2 | s2 | s2 | s2 |\break												%2b
s2 | s2 | s2 | s2 | s2 |\break												%3b
s2 | s8\pp s8 s4 | s2 | s2 | s2 |\break											%4b
s2 | s2 | s2 | s2 | s2 | s2 |\break											%5b
s2 | s2 | s2 | s2 | s2 | s2 |\break											%6b
s2 | s2 | s8\< s4. | s2 | s2 | s2\! |\break 										%7b

s4 s4\> | s2 | s8\! s8\p s4 | s2 | s8 s16\ff s16 s4 |\break								%1c
s2 | s2 | s2 | s2 | s2 |\break												%2c
s2 | s2 | s2 | s2 | s4\p s4 |\break											%3c
s2 | s2 | s2 | s2 | s4 s8. s16\< | s2 |\break										%4c
s2 | s2 | s2 | s2 | s8\! s8 s4 |\break											%5c
s8 s8\ff s4 | s2 | s2 | s2 | s2 |\break											%6c
s2 | s2 | s2 | s2 | s2 |\break												%7c

s2 | s2 | s2 | s2 | s2 |\break												%1d
s2 | s8 s8\ff s4 | s2 | s2 | s2 |\break											%2d
s2 | s2 | 
%CARMEN FATE MOTIF
s4.\ff s4. | s2. | s2. | s2. |\break
s2. | s2. | s2. | s2. | s2. | s2. |\break
s2. | s2. | s2. | s2. | s2. | s2. |\break
s2. | s2. | s4.\p s4. | s2. | s4.\p s4. | s2. |\break
s4. s4.\< | s2. | s2. | s2. | s8\!\fff s8 s2 |

}
pedal = {
s2 | s2 | s2 | s2 | s2 |												%1a
s2 | s2 | s2 | s2 | s2 |												%2a
s2 | s2 | s2 | s2 | s2 | s8\sustainDown s16 s16\sustainUp s4 |								%3a
s2 | s2 | s2 | s2 | s2 | s2 |												%4a
s2 | s2 | s2 | s2 | s2 | s2 |												%5a
s2 | s2 | s2 | s2 | s2 | s2 |												%6a

s2 | s2 | s2 | s2 | s2 |												%1b
s2 | s2 | s2 | s2 | s2 |												%2b
s2 | s2 | s2 | s2 | s2 |												%3b
s8\sustainDown s16 s16\sustainUp s4 | s2 | s2 | s2 | s2 |								%4b
s2 | s2 | s2 | s2 | s2 | s2 |												%5b
s2 | s2 | s2 | s2 | s2 | s2 |												%6b
s2 | s2 | s8\sustainDown s4. | s4. s8\sustainUp | s2 | s2 |								%7b

s2 | s2 | s2 | s2 | s2 |												%1c
s2 | s2 | s2 | s2 | s2 |												%2c
s2 | s2 | s2 | s2 | s2 |												%3c
s2 | s2 | s2 | s2 | s2 | s2 |												%4c
s2 | s2 | s2 | s2 | s8\sustainDown s4. |										%5c
s8\sustainUp s4. | s2 | s2 | s2 | s2 |											%6c
s2 | s2 | s2 | s2 | s2 |												%7c

s2 | s2 | s2 | s2 | s2 |												%1d
s2 | s2 | s2 | s8\sustainDown s4. | s4. s8\sustainUp |									%2d
s2 | s2 | 
%CARMEN FATE THEME
s2. | s2. | s2. | s8\sustainDown s4 s8\sustainUp s4 |
s2. | s8\sustainDown s4 s8\sustainUp s4 | s2. | s2. | s2. | s2. |
s2. | s8\sustainDown s4 s8\sustainUp s4 | s2. | s8\sustainDown s4 s8\sustainUp s4 | s2. | s2. |
s2. | s2. | s2. | s4 s8\sustainDown s4 s8\sustainUp | s2. | s4 s8\sustainDown s4 s8\sustainUp |
s8\sustainDown s4 s8\sustainUp s4 | s8\sustainDown s4 s8\sustainUp s4 | s8\sustainDown s8 s2 | s2 s8 s8\sustainUp | s2.
}
\score { %\unfoldrepeats {
\context PianoStaff <<
\context Staff=upper {\global \upper}
\context Dynamics=dynamics \dynamics
\context Staff=lower {\global \lower}
\context Dynamics=pedal \pedal
>>
%}
\layout {
\context {
\type "Engraver_group_engraver"
\name Dynamics
\alias Voice % So that \cresc works, for example.
\consists "Output_property_engraver"
minimumVerticalExtent = #'(-1 . 1)
pedalSustainStrings = #'("Ped." "*Ped." "*")
pedalUnaCordaStrings = #'("una corda" "" "tre corde")
\consists "Piano_pedal_engraver"
\consists "Script_engraver"
\consists "Dynamic_engraver"
\consists "Text_engraver"
\override TextScript #'font-size = #2
\override TextScript #'font-shape = #'italic
\override DynamicText #'extra-offset = #'(0 . 2.5)
\override Hairpin #'extra-offset = #'(0 . 2.5)
\consists "Skip_event_swallow_translator"
\consists "Axis_group_engraver"
}
\context {
\PianoStaff
\accepts Dynamics
\override VerticalAlignment #'forced-distance = #8
}
}
\midi { \tempo 4=116
\context {
\type "Performer_group_performer"
\name Dynamics
\consists "Piano_pedal_performer"
\consists "Span_dynamic_performer"
\consists "Dynamic_performer"
}
\context {
\PianoStaff
\accepts Dynamics
}
}%}
}

