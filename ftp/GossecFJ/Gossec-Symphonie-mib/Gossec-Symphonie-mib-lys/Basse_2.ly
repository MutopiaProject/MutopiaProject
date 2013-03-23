\version "2.16.0"      %Gossec - Symphonie mi bémol
                        %Basse - 2ème mvt
\relative c{
\clef bass
\key ees \major
\time 4/4




c4 r8. c16 c4 r8. c16
c2:8 c:
bes1:8
bes:
aes:
aes:
g8 a b c d ees f g
\repeat unfold 3 {aes( g f ees) d( ees f g)}
%
%
aes( g f ees) d( c b a)
g2 r
r4 r8 g' c, d ees f
g4 g, r2
r4 r8 g' c, d ees f
g4 g, r2
r4 r8 g' c, d ees f
g4 e f d
ees c d b
c d8 ees d c b aes
g4 r16 d'( ees f) g4 r16 d( ees f)
g4 g8 g g g g g
g,4 r r2
g'4\p^\markup{\italic "pizz."} r ees r
aes r aes r
f r f r
bes r d, r
ees r g r
aes r r2
aes,4 r r2
ees'4 r r2
ees,4 r r2
bes'4 r \repeat unfold 13 {bes r}
%
%
%
%
%
%
ees,4 r r2
\set Score.skipBars = ##t R1 * 3 
%
%
r2^\markup{\italic "arco"} d'8\f bes' d, bes'   % mesures 45 à 49, simile mesure 44 (non écrit sur SIEBER)
ees, bes' ees, bes' f  bes f bes
g bes g bes d, bes' d, bes'
ees, bes' ees, bes' f bes f bes
g bes g bes d, bes' d, bes'
ees, bes' ees, bes' f bes f bes
g bes g bes g bes g bes
aes4 r r d,8 d
ees ees aes aes bes bes bes, bes
c4 r8. c16 c4 r8. c16
bes4 r8. bes16 bes4 r8. bes16
a4 r8. a16 a4 r8. a16
bes8 bes bes bes bes4 r
\repeat unfold 6 {bes4 r r2}
%
%
%
%
%
bes4 bes bes bes
bes bes bes bes
bes bes bes aes
g g'8 f ees d c bes
aes2:8 aes:
bes: bes:
bes: bes:
ees4 r g, r
aes r bes r
ees g, aes bes
ees ees8 ees ees4 ees 
ees2 r \bar ":|"
ees1\p 
d
c
g
aes
bes
ees
d
c
g
aes
bes
ees4 r r2
ees,\f r
bes''4 r8. bes16 c4 r8. c16
des4 c bes aes
g f ees des
c bes aes g
aes aes aes r
\set Score.skipBars = ##t R1 * 2 
%
r4 ees' g bes
ees bes8. g16 es4 r
\set Score.skipBars = ##t R1 * 2 
%
r4 f, aes c
f c8. aes16 f4 r
\set Score.skipBars = ##t R1 * 2 
%
ees'4 r r2
r r4 c'8. aes16
f4 aes8. f16 d4 f8. d16
b4 r r2
R1
c2\f r
r4 c d ees
f r bes, r
ees r a, r
d r g, r
d' d d d
d2 r
bes'4^\markup{\italic "pizz."} r bes r
a r a r
fis r fis r
g r g r
a r a r
bes r bes r
b r b r
c r c r
d r d r
ees r ees r
aes, r aes r
aes, r aes r
ees' r ees r 
ees, r ees r
bes' r bes r
ees r ees r
b r b r
c r c r
\repeat unfold 4 {g r g r}
%
%
%
g r r2
c4\f^\markup{\italic "arco"} r8. c16 c4 r8. c16
c2:8 c:
bes1:8
bes:
aes:
aes:
g8 a b c d ees f g
\repeat unfold 3 {aes( g f ees) d( ees f g)}
%
%
aes( g f ees) d( c b a)
g2 r
r4 r8 g' c, d ees f
g4 g, r2
r4 r8 g' c, d ees f
g4 g, r2
r4 r8 g' c, d ees f
g4 e f d
ees c d b
c d8 ees d c b aes
g4 r16 d'( ees f) g4 r16 d( ees f)
g4 g8 g g g g g
g,4 r r2^\fermataMarkup_\markup{\italic "Segue"} \bar "|." 
}
