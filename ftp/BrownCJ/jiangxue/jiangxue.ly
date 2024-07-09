\version "2.18.2"
#(set-global-staff-size 20) % (TODO adjust as needed: 25.2 is larger, 17.82 or 15.87 is smaller)
setup={\override Staff.TimeSignature #'style = #'numbered
\override Score.Hairpin #'after-line-breaking = ##t
#(set-accidental-style 'modern-cautionary) % not MWR behaviour but a nice addition
}partA={ \setup 
\key f \major \time 5/4
\set Staff.midiInstrument = "choir aahs"
\set Staff.instrumentName = "Soprano"
R1*5/4*8 |
r2 e''4 e'' c'' |
f''2 \breathe c''4 c'' a' |
d''2 \< c''4 d'' \! c'' ( |
c'' ) a' bes'2 f'4 |
a'1 \> ( a'4 ) \! |
R1*5/4 |
r1 e''4 |
e'' c'' f''2 r4 |
r2 c''4 c'' a' |
d''2 \breathe d''4 d'' ( f'' ) |
c''1 a'4 \< |
r bes'2. f'4 \! |
c''1 ~ c''4 |
R1*5/4*5 |
\once \override Staff.TimeSignature #'stencil = ##f \time 15/4 R1*15/4 |
\time 5/4 r2 d''4 d'' f'' |
c''2. a'4 r |
r2 a'4 a' bes' |
bes'2. a'4 r |
r g' g' d''2 ~ |
d''4 \breathe g' ^"softer" g' c''2 ~ |
c''4 r f'' e''2 |
c''4 r r r c'' |
a' r a' a' d'' ~ |
d''2. c''2 -- |
c''1 -- r4 |
R1*5/4*2 \bar "|." }
partB={ \setup \key f \major \time 5/4
\set Staff.midiInstrument = "flute"
\set Staff.instrumentName = "Flute"
c''4 \p ( -- d'' _"sempre" ) d''2 ( c''4 ) |
c'' ( -- d'' ) d''2 ( c''4 ) |
a' ( -- bes' ) bes'2 ( a'4 ) |
a' ( -- bes' ) bes'2 ( a'4 ) |
f' ( -- g' ) g'2 ( f'4 ) |
f' ( -- g' ) g'2 ( f'4 ) |
c' ( -- d' ) d'2 ( c'4 ) |
c' ( -- d' ) d'2 ( c'4 ) |
f'' ( -- g'' ) g''2 ( f''4 ) |
f'' ( -- g'' ) g''2 ( f''4 ) |
e'' ( -- f'' ) f''2 ( e''4 ) |
d'' ( -- e'' ) e''2 ( d''4 ) |
d'' ( -- e'' ) e''2 ( d''4 ) |
c'' ( -- d'' ) d''2 ( c''4 ) |
c'' ( -- d'' ) d''2 ( c''4 ) |
e'' ( -- f'' ) f''2 ( e''4 ) |
e'' ( -- f'' ) f''2 ( e''4 ) _"poco" |
f'' ( -- g'' ) g''2 ( _"a poco" f''4 ) |
f'' ( -- g'' ) g''2 ( _"cresc" f''4 ) |
a'' ( -- bes'' ) bes''2 ( a''4 ) |
a'' ( \<  -- bes'' ) bes''2 ( a''4 \! ) |
g''8 ( f'' g'' a'' g''2 f''4 ) |
g''8 _"(echo)" ( f'' g'' a'' g''2 f''4 ) |
e''8 ( \p d'' e'' f'' c''2 a'4 ) |
a'8 ( g' a' bes' f'2 d'4 ) |
a'8 _"(echo)" ( g' a' bes' f'2 d'4 ) |
\once \override Staff.TimeSignature #'stencil = ##f \time 15/4 d'8 ^"senza misura" ( c' d' ees' f' g' \<  a' bes' f'2 ) \! d'4 a'8 ( bes' f'2 d'4 ) d'8 ( c' d' ees' f' \>  g' ) a' ( c'' \! ) |
\time 5/4 c''4 ( \p d'' ) d''2 ( c''4 ) |
c'' ( d'' ) d''2 ( c''4 ) |
d'' ( ees'' ) ees''2 ( d''4 ) |
d'' ( ees'' ) ees''2 ( d''4 ) |
f'' _"dim." ( g'' ) g''2 ( f''4 ) |
f'' ( g'' ) g''2 ( f''4 ) |
a'' ( bes'' ) bes''2 ( a''4 ) |
a'' ( bes'' ) bes''2 ( a''4 ) |
a''8 ( g'' a'' bes'' a''2 f''4 ) |
a''8 ( g'' a'' bes'' g''2 f''4 ) ~ |
f'' g''2 ( f''4 ) \> g''4 ( ~ |
g'' f'' ) \! r g''8 \pp -- f'' -- g'' -- a'' -- |
g''1 -- f''4 -- |
\bar "|." }
\bookpart{ \header {
title = "Snowy Waters"
subtitle = "Landscape for Voice and Flute"
composer = "Chris Brown (1947-2016)"
poet = "Liǔ Zōngyuán (773-819)"
mutopiacomposer="BrownCJ"
mutopiainstrument="Soprano voice and flute"
date="May 2009"
source="Typeset from the manuscript by permission of the composer's estate"
style="Modern"
copyright="Creative Commons Attribution 4.0"
maintainer="Silas Brown"
maintainerWeb="http://ssb22.user.srcf.net/"
}
\score { <<
\new Staff << \context Voice = PartA { \partA }
\new Lyrics \lyricsto "PartA" {
Be -- yond the hope
Be -- yond the flight of a thou -- sand, thou -- sand birds
Be -- yond the reach
Be -- yond the path of ten thou -- sand, thou -- sand men
A -- mong high moun -- tains
A -- mid cold wa -- ters
One a -- lone,
One a -- lone
an old man fish -- ing in a straw rain -- hat.
}
>>
\new Staff << \context Voice = PartB { \partB } >>
>> \layout{} \midi{ \tempo 4 = 85 } }
}
