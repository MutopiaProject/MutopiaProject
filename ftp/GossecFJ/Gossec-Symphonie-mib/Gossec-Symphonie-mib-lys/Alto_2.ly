\version "2.16.0"      %Gossec - Symphonie mi bémol
                        %Alto - 2ème mvt
\relative c'{
\clef alto
\key ees \major
\time 4/4




g'4 r8. g16 f4 r8. f16
ees2:8 ees:
d: bes':
d,: d:
c: aes':
c,: c:
b4 b8( c d ees f g)
\repeat unfold 3 {aes( g f ees) d( ees f g)}
%
%
aes( g f ees) d( c b a)     %SIEBER: aes( g f ees) d( c b aes)
g g' g g g2:8
g: c,8 d ees f
g2:8 g:
g: c,8 d ees f
g2:8 g:
g: c,8 d ees f
g4 e f d
ees c d b
c d8 ees d c b aes
<g g'>4 r <g g'> r
<g g'> <g g'>8 <g g'> <g g'>2:8
<g g'>4 r r2
ees'4^\markup{\italic "pizz."} r ees r
c r c r
f r f r
f r f r
g r r2
<<\voiceOne {c1^\markup{\pad-markup #1.0 \italic "arco"} ~ | c |
      bes ~| bes |
      aes4 r g r | aes r g r |
      aes r g r | f,2( g |
      aes bes) | c( d | 
      ees f) | g4 } \\
  \voiceTwo { aes1 ~ | aes |
      g ~ | g |
      f4 s ees s | f s ees s |
      f s ees s | d,2( ees |
      f g) | aes( bes |
      c d) | ees4 } >> r4 r2
\set Score.skipBars = ##t R1 * 3 
%
%
r2 d8 bes' d, bes'
ees, bes' ees, bes' f bes f bes     % mesures 45 à 49, simile mesure 44 (non écrit sur SIEBER)
g bes g bes d, bes' d, bes'
ees, bes' ees, bes' f bes f bes
g bes g bes d, bes' d, bes'
ees, bes' ees, bes' f bes f bes
ees,2:8 ees:
ees4 r r d
ees c' bes aes
g r8. c,16 c4 r8. c16
bes4 r8. bes16 bes4 r8. bes16
a4 r8. a16 a4 r8. a16
<< \voiceOne {d2:8 d4} \\ \voiceTwo {bes2:8 bes4} >> r4
r2 c'\mf(
bes aes
g f
ees d
c bes
aes a)
bes4 bes bes bes
bes bes bes bes
bes bes bes bes
bes g'8 f ees d c bes 
aes2:8 aes:
bes1:8
bes:
ees4 r ees r
ees r d r
ees ees ees d
ees ees8 ees ees4 ees
ees2 r \bar ":|"
\set Score.skipBars = ##t R1 * 3 
%
%
bes1 
c
d
<< \voiceOne { g1 ~ | g ~ | g ~ | g |
      f ~ | f |
      g4 } \\
   \voiceTwo { ees1 ~ | ees ~ |
      ees ~ | ees |
      d ~ | d |
      es4 } >> r4 r2
ees,\f r
bes''4 r8. bes16 c4 r8. c16
des4 c bes aes
g f ees des
c bes aes g
aes aes aes r
<< \voiceOne { c'1( | bes2 aes) | bes4 } 
   \\
   \voiceTwo { s1 | g1 | g4 } >> r4 r2
R1
<< \voiceOne { bes1( | aes2 g) | aes4 } 
   \\
   \voiceTwo { g1 | f2 e | f4 } >> r4 r2
R1
<< \voiceOne { aes1( | g2 f) | g4 } 
   \\
   \voiceTwo { f1 | ees2 d | ees4 } >> r4 r2
r r4 c'8. aes16
f4 aes8. f16 d4 f8. d16
b4 r << \voiceOne { f'2( | ees d) | ees } 
   \\
   \voiceTwo { d2 | c b | c\f } >> r2
r4 c d ees
f r bes, r
ees r a, r
d r g, r
d' d d d
d2 r
g4^\markup{\italic "pizz."} r g r
a r a r
a r a r
d, r d r
fis r fis r
g r g r
d r d r
ees r ees r
f r f r
g r g r
<<\voiceOne {c1^\markup{\pad-markup #1.0 \italic "arco"} ~ | c |
      bes ~| bes |
      aes | g |
      f | ees |
      d4 r ees r | d r ees r | 
      d r ees r | d } \\
  \voiceTwo { aes'1 ~ | aes |
      g ~ | g |
      f | ees |
      d | c |
      b4 s c s | b s c s |
      b s c s | b } >> r4 r2
R1
g'4\f r8. g16 f4 r8. f16
ees2:8 ees:
d: bes':
d,: d:
c: aes':
c,: c:
b4 b8( c d ees f g)
\repeat unfold 3 {aes( g f ees) d( ees f g)}
%
%
aes( g f ees) d( c b a)     %SIEBER: aes( g f ees) d( c b aes)
g g' g g g2:8
g: c,8 d ees f
g2:8 g:
g: c,8 d ees f
g2:8 g:
g: c,8 d ees f
g4 e f d
ees c d b
c d8 ees d c b aes
<g g'>4 r <g g'> r
<g g'> <g g'>8 <g g'> <g g'> <g g'> <g g'> <g g'> 
<g g'>4 r r2^\fermataMarkup_\markup{\italic "Segue"} \bar "|." 
}
