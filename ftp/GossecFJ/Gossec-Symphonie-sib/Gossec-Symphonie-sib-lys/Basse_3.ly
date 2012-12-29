\version "2.16.0"      %Gossec - Symphonie si bémol
                        %Basse - 3e mvt  
\relative c{
\clef bass
\key bes \major
\time 3/8




bes'8 f d
bes4 d8
ees c f
d bes' d,
ees c f
bes,4 bes'8
c a f
bes d, d
ees f f,
bes d' bes
c a f
bes bes, d
ees f f,
bes4 r8
bes' f d
bes4 r8
bes4^\markup{\italic "pizz."}r8     %reprise arco non précisée dans Sieber; en mesure 31 ? (cello seul)
bes4 r8
bes4 r8
bes4 r8
bes'4 r8
f4 r8
bes,4 r8
f'4 r8
g4 r8
g4 r8
a4 r8
a4 r8
e4 r8
e4 r8
<< \voiceOne { f8^\markup{\italic "arco"} f a | c-. c-. cis-. | 
d-. d,-. f-. | a-. a-. a-. | 
bes-. bes,-. d-. | f-. f-. f-. | f
-. bes-. b-. | c4 r8} \\
\voiceTwo {f,8 r r | R4. | 
R4. | R4. | 
R4. | R4. | 
R4. | R4.} >> 
c8^\markup{\pad-markup #2.0 \italic "Tutti"} c' bes
a g f
e c' bes 
a g f
e c' bes
a g f
c4. ~
c ~
c ~
c 
a8 a a
a a a
c c c
d d d
a a a
bes bes bes
c c c
f4 r8
r bes-| c-|
f,4 r8
r bes,-| c-|
f, f f
f4 r8 \bar ".|."
f''8 c a
f4.
ees
d4 ~ d32[ ees64( fis g a bes c)]
d8 a fis
d4.
c
bes4 r64 g([ a bes c d ees fis)]
g8 d bes
g g' g
g g g
g4. 
f
e
ees!
d8 d' c
bes a g
r c16 d ees8
r c16 bes a8
r bes16 c d8
r bes16 a g8
r a16 bes c8
r a16 g fis8
r g16 a bes8
r g16 f ees8
r c16 d ees8
r d d,
g4 r8
r c d
g,4 r8
r c d
g d bes
g4 r8
bes' f d
bes bes' d,
ees c f
d bes' d,
ees c f
d bes bes'
c a f
bes4 d,8
ees f f,
bes4 r8
bes' f d
bes4 r8
bes4^\markup{\italic "pizz."} r8
\repeat unfold 7 { bes4 r8}
%
%
%
%
%
%
c'8-.\f^\markup{\italic "arco"} c-. c-.
c4 r8
d d d
d4 r8
a a a
a4 r8
bes4 r8
R4.
g8-. g-. g-.
g4 r8
f f f
f4 r8
f4 r8
f4 r8
bes,4 r8
bes4 r8
ees,4 r8
c'4 r8
f f' ees
d c bes
a f' ees
d c bes
a f ees
d c bes
f4. ~
f ~
f ~
f
d'8 d d
ees ees ees
f f f
g g g
d d d
ees ees ees 
f f f
d4 r8
r ees f
bes,4 r8
r ees f
bes, bes bes
bes4 r8 \bar "|." 
}
