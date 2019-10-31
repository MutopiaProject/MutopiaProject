\version "2.18.2"
#(set-global-staff-size 20)
pocoF = _\markup { \italic poco \dynamic f }
piuF = _\markup { \italic piu \dynamic f }
sempreP = _\markup { \italic sempre \dynamic p }
setup={\override Staff.TimeSignature.style = #'numbered
\override Score.Hairpin.after-line-breaking = ##t
#(set-accidental-style 'modern-cautionary)
\set Staff.midiInstrument = "cello"
}
\header{
dedication="To my wife Sue"
title="A Little Tune Book"
subtitle="(11 cello solos)"
composer="Chris Brown"
mutopiacomposer="BrownCJ"
mutopiainstrument="Cello"
date="2015"
source="Typeset from the manuscript by permission of the composer's estate"
style="Modern"
license="Creative Commons Attribution 4.0"
maintainer="Silas Brown"
maintainerWeb="http://ssb22.user.srcf.net/"

 footer = "Mutopia-2017/06/30-2193"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " 2017 " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by/4.0/" "Creative Commons Attribution 4.0 International License "\char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}
\markup "I."
\score {
<< \new Staff << \context Voice = TheMusic {

\setup 
\clef bass
\time 3/4 \key f \major \tuplet 3/2 { e8 ^"Flowing (not fast)" \( \p -- e ( f )  } d4 a ~ \<  \noPageBreak |
a2 \) c'4 \! \noPageBreak |
e2. \noPageBreak |
c'4 \>  d2 ( ~ \noPageBreak |
d \! c4 ) \breathe \noPageBreak |
 \tuplet 3/2 { e8 -- e ( f )  } d4 a ~ \noPageBreak |
a2 d4 \noPageBreak |
c2. \noPageBreak |
f4 bes,2 ~ \noPageBreak |
bes, f4 \noPageBreak |
c2. ( ~ \noPageBreak |
c2 g4 ) \breathe \noPageBreak |
 \tuplet 3/2 { g8 -- g ( a )  } f4 d' ~ \noPageBreak |
d'2 f'4 \noPageBreak |
a2. ~ \noPageBreak |
a4 f' g ~ \noPageBreak |
g a2 ~ \noPageBreak |
a  \tuplet 3/2 { a8 -- a ( bes )  } \noPageBreak |
g4 f2 ~ f -- \tuplet 3/2 { a8 -- a ( bes )  } \noPageBreak |
g4 f2 ~ \noPageBreak |
f4 g f ~ \noPageBreak |
f2 a4 \noPageBreak |
c'2. \<  \noPageBreak |
d'4 \! g2 ~ \>  \noPageBreak |
g \! \tuplet 3/2 { g8 -- g ( a )  } \noPageBreak |
f4 c'2 ~ c'4 f' g ~ \noPageBreak |
g2  \tuplet 3/2 { g8 -- g ( a )  } \noPageBreak |
g f ~ f2 ~ \noPageBreak |
f4 d2 \noPageBreak |
f2. \fermata \bar "|."
} >> >> \layout{ indent = 0\cm } \midi{} }

\markup "II."
\score {
<< \new Staff << \context Voice = TheMusic {
\setup 
\time 2/2 \key g \major \clef bass
g4 \f fis2. \noPageBreak |
g4 e2. \noPageBreak |
g4 d2 b,4 ~ \noPageBreak |
b,2  \tuplet 3/2 { g,4 -- a, -- b, --  } \noPageBreak |
d2. \<  g4 \noPageBreak |
c2. \>  -> g4 \! \noPageBreak |
d1 ~ d4 r  \tuplet 3/2 { g, -- a, -- b, --  } \noPageBreak |
d2. ees4 \noPageBreak |
c2. bes,4 \noPageBreak |
d1 ~ \noPageBreak |
d4 r  \tuplet 3/2 { g, -- a, -- b, \<  --  } \noPageBreak |
d2. cis4 \! \noPageBreak |
gis,2. cis4 fis,1 ~ -> \noPageBreak |
fis,4 \> g, fis,2 ~ \! \noPageBreak |
fis, \tuplet 3/2 { b,4 -- a, -- g, --  } \noPageBreak |
d2. fis,4 -> \noPageBreak |
fis,1 ~ \noPageBreak |
fis,4 r  \tuplet 3/2 { b, -- a, -- g, --  } \noPageBreak |
e2. _\markup{\italic dim.} fis4 \noPageBreak |
e2. fis4 g2. g4 ~ \noPageBreak |
g g --  \tuplet 3/2 { a \<  -- b -- d' --  } \noPageBreak |
cis'2. \! b4 \noPageBreak |
cis' d' g'2 ~ \noPageBreak |
g'4 e' fis'2 ~ \< \noPageBreak | fis' b4 \! -> b ~ -> \noPageBreak |
b1 ~ b4 r  \tuplet 3/2 { b -- a \>  -- g --  } \noPageBreak |
d'2. \! e'4 ~ \noPageBreak |
e'2 e'4 fis' ~ \noPageBreak |
fis'2. b4 -> \noPageBreak |
b2. -> a4 ~ \noPageBreak |
a2 g ~ _\markup{\italic dim.}  \noPageBreak |
g d' ~ \noPageBreak |
d'1 ~ d'2 \breathe
d' ~ \noPageBreak |
d'1 ~ \noPageBreak |
d'2 r \bar "|."
} >> >> \layout{ indent = 0\cm } \midi{} }

\markup "III."
\score {
<< \new Staff << \context Voice = TheMusic {
\setup 
\repeat volta 2 {
\key a \major \time 4/4 \clef bass
a4 _\markup { \dynamic {mf} ( \dynamic f ) } ^"Allegro, sempre pizz" fis cis' r \noPageBreak |
a r a fis \noPageBreak |
cis' r a r \noPageBreak |
cis' d'8 e' cis'4 r \noPageBreak |
a r cis' d'8 e' \noPageBreak |
cis'4 r a r } \noPageBreak |
a \f fis cis' r \noPageBreak |
a r a fis \noPageBreak |
a r d r \noPageBreak |
fis \transpose c c, { gis'8 a' a'4 r \noPageBreak |
e' r fis' gis'8 a' \noPageBreak |
a'4 r e' r \noPageBreak |
e' cis' gis' r \noPageBreak |
e' r e' cis' \> \noPageBreak |
gis'  r b' r \noPageBreak |
b' cis''8 \mf dis'' b'4 r gis' r b' cis''8 dis'' \noPageBreak |
cis''4 r8 e'' cis''4 r \noPageBreak |
cis'' a' e'' r \noPageBreak |
cis'' r cis'' a' \<  \noPageBreak |
e'' r cis'' r \noPageBreak |
e'' \f fis''8 gis'' e''4 r \noPageBreak |
cis'' r e'' fis''8 gis'' \noPageBreak |
e''4 r cis'' r cis'' d'' b' _\markup{\italic dim.}  r b' r fis' r \noPageBreak |
fis' \> e' b' r \noPageBreak |
fis' e' a' \! r } \noPageBreak |
r1 \fermata \bar "|."
} >> >> \layout{ indent = 0\cm } \midi{} }

\markup "IV."
\score {
<< \new Staff << \context Voice = TheMusic {
\setup 
\repeat volta 2 {
\key bes \major \time 4/4 \clef bass
bes,4 ^"Flowing (arco)" ( \mf c _\markup { \italic { espress } } ) g ( ees ) \noPageBreak |
ees4. ( d8 ees2 ) } \noPageBreak |
bes,4 ( c ) g ( ees ~ \noPageBreak |
ees ) g ( a ) d' ( \noPageBreak |
bes2 ) d'4 ( \<  ees' ) g' \! ( ees' ) ees'4. d'8 \noPageBreak |
ees'2. ~ \>  ees'8 r \! \noPageBreak |
\repeat volta 2 {
g,4 ( \mp a, ) d ( bes, ) \noPageBreak |
bes,4. a,8 bes,2 } \noPageBreak |
bes,4 ( c ) g ( ees \< ~ \noPageBreak |
ees ) ees \! ( -> f ) c' g2 g4 ( -> a ) \noPageBreak |
d' ( bes ) bes4. a8 \noPageBreak |
bes2. ~ \<  bes8 r \! \noPageBreak |
\bar "||"
bes4 ( \f ^"piu animato"
c' ) c' ( ees ) \noPageBreak |
bes ( \< d' ) ees2 \tenuto -> \! \sf
bes4 ( \f c' ) c' ( ees ) \noPageBreak |
c' ( \<  d' ) f2 -> \! \sf \tenuto \noPageBreak |
f4 ( \f -> ees ) bes ( -> g ) \noPageBreak |
g ( -> ees ) ees ( -> c ) \noPageBreak |
c ^"rit" _\markup{\italic dim.} ( d ) bes ( g ) \noPageBreak |
g4. f8 g2 \fermata \noPageBreak |
c4 ( \mp d ) bes ( g ) \noPageBreak |
g4. f16 g2 \fermata \bar "|."
} >> >> \layout{ indent = 0\cm } \midi{} }

\markup "V."
\score {
<< \new Staff << \context Voice = TheMusic {
\setup 
\repeat volta 2 {
\clef bass
\defaultTimeSignature
\time 2/2 c,8 ^"Allegro" ( \f -> f, ) f, f, ~ f, g, g, a, \noPageBreak |
a,1 -- \noPageBreak |
c,8 ( -> f, ) f, f, ~ f, a, a, c \noPageBreak |
c1 -- \noPageBreak |
d8 -> c g, g, d -> c g, g, \noPageBreak |
c, -> f, f, f, ~ f, g, g, a, d1 -- \bar "||" \mark \markup { \musicglyph #"scripts.segno" } \noPageBreak |
e8 e c c ~ c a, ~ a, f, \noPageBreak |
f,1 -- \noPageBreak |
c,8 f, f, fis, g, gis, a, b, \noPageBreak |
b,4. a,8 c4. b,8 \noPageBreak |
e c d2 -- d8 fis \noPageBreak |
\repeat volta 2 {
e g ~ g2 fis8 a g b ~ b2 b8 b \noPageBreak |
d' a ~ a2 a8 a \noPageBreak |
g b ~ b2 b8 b \noPageBreak |
d' a ~ a2 a8 a \noPageBreak |
a fis ~ fis2 a8 a \noPageBreak |
g fis ~ fis2 fis8 fis e g ~ g2 g8 g \noPageBreak |
fis d ~ d2 d8 fis } \noPageBreak |
e b ~ b2 e8 e' \noPageBreak |
a b ~ b2 b8 c' \noPageBreak |
a f ~ f2 f8 f
e d ~ d2 d8 d
} \alternative { { c e ~ e2 e8 e ^\markup { \right-align "DC" } } { c e ~ e2 e8 e ^\markup { \right-align "DS" } } } \bar ":|." \mark "Coda"
e c' a d ~ d2 \noPageBreak |
d8 d c e ~ e2 \noPageBreak |
e8 c' a d ~ d2 \noPageBreak |
d8 d c <c c,> -> r2 \bar "|."
} >> >> \layout{ indent = 0\cm } \midi{} }
\pageBreak
\markup "VI."
\score {
<< \new Staff << \context Voice = TheMusic {
\setup 
\key d \major \clef bass
\repeat volta 2 {
\time 3/4 d'2 \pocoF ^\markup { "Con moto (" \note-by-number #1 #1 #0.8 " beat)" } ( d4 _"warmly" \noPageBreak |
fis'2 ) fis'4 -- \noPageBreak |
fis' ( g' e' ) \noPageBreak |
d'2 ( d4 \noPageBreak |
fis'2 ) fis'4 -- \noPageBreak |
fis' ( \<  g' a' ) \noPageBreak |
d'2 ( \mp b4 d'2 ) d'4 -- \noPageBreak |
cis' ( \<  b a ) \noPageBreak |
b2 \! ( b,4 \noPageBreak |
a2 ) a4 -- \noPageBreak |
a ( g fis ) \noPageBreak |
e2 ( b4 ) \noPageBreak |
b2 -- b4 -- \noPageBreak |
b ( \<  cis' d' ) fis2 ( \mf d4 \noPageBreak |
a2 ) a4 -- \noPageBreak |
a ( g fis ) \noPageBreak |
g2 ( e4 \noPageBreak |
b2 \<  ) b4 -- \noPageBreak |
b \! ( cis' d' ) \noPageBreak |
\repeat volta 2 {
fis' ( \mp d' a ) \noPageBreak |
fis' ( d' a ) g ( a \<  b ) \noPageBreak |
b \! ( cis' \<  d' ) } \noPageBreak |
d' ( \mf e' cis' ) \noPageBreak |
a2 ( bes4 ) \noPageBreak |
g2 ( a4 ) \noPageBreak |
f2 ( g4 ) \noPageBreak |
e2 ( \<  a4 ) \noPageBreak |
d2 ( \mf d,4 fis2 ) fis4 -- \noPageBreak |
fis ( g a ) \noPageBreak |
d2 ( d,4 \noPageBreak |
fis2 ) fis4 -- \noPageBreak |
e ( fis g ) \noPageBreak |
g ( a b ) \noPageBreak |
d'2 ( \f e'4 ) \noPageBreak |
fis' ( fis a' ) \noPageBreak |
e' ( e a' ) } \mark "DC" \noPageBreak |
d'2 ( d4 \noPageBreak |
fis'2 ) fis'4 -> \noPageBreak |
fis' ^"rit"
g' e' \noPageBreak |
d'2. \fermata \bar "|."
} >> >> \layout{ indent = 0\cm } \midi{} }

\markup "VII."
\score {
<< \new Staff << \context Voice = TheMusic {
\setup 
\key e \major \clef bass
\defaultTimeSignature
\time 2/2 a8 ^"Cantabile" ( \mp gis fis gis ) a4 ( cis' ) \noPageBreak |
a ( \>  cis' ) b8 \! ( a gis4 -. ) \noPageBreak |
gis1 -- \breathe \noPageBreak |
a8 ( \mp gis fis gis ) a4 ( cis' ) \noPageBreak |
e' (  \tuplet 3/2 { dis'8 cis' dis'  } b2 ) \noPageBreak |
a8 ( gis fis gis ) a4 ( cis' ) \noPageBreak |
a8 ( gis fis gis \>  ) e4 cis a,8 ( \p b, ) \transpose c c' { cis,4 -. cis,2 -- \noPageBreak |
gis,,8 ( a,, ) b,,4 -. b,,2 -- \noPageBreak |
a,,8 ( gis,, fis,, gis,, ) a,,4 ( _\markup{\italic "cresc."}  cis, ) \noPageBreak |
cis, ( \<  e, ) e, ( gis, \! ) \bar ":|." \noPageBreak |
a,8 ( gis, fis, gis, ) a,4 ( cis ) \noPageBreak | a, ( fis, ) gis,8 ( fis, e,4 -. \tenuto ) \noPageBreak |
e,1 \breathe \noPageBreak |
fis,8 ( e, dis, cis, ) dis,2 -- \noPageBreak |
b,, -- a,,8 ( b,, cis,4 -. ) \noPageBreak |
cis,2 -- gis,,8 ( a,, b,,4 -. ) \noPageBreak |
b,,2 -- a,,8 ( gis,, fis,, gis,, _\markup{\italic "cresc."}  ) \noPageBreak |
a,,4 ( cis, \<  ) e, ( gis, ) \noPageBreak | fis,1 \! \breathe \noPageBreak |
a,8 ( gis, fis, a, ) b,4 ( cis ) \noPageBreak |
cis8 -> b, ( a, cis ) cis4 ( e ) \noPageBreak |
\clef treble
e ( } \transpose c c'' { gis, \< ) gis, ( b, ) \noPageBreak |
a,8 ( \! \piuF -> gis, fis, gis, ) e,4 ( cis, ) \noPageBreak |
\clef bass
cis, ( _\markup{\italic "dim."}  a,, ) a,, ( fis,, ) gis,,1 \>  \breathe \noPageBreak |
a,,8 ( \mp gis,, fis,, gis,, ) e,,4 ( gis,, ) \noPageBreak |
a,,8 ( gis,, fis,, gis,, ) e,,4 ( cis,, ) \noPageBreak |
e,,8 ( dis,, cis,, dis,, ) b,,,4 ( dis,, ) \noPageBreak |
dis,,8 ( cis,, b,,, ) cis,, _\markup{\italic "sempre dim."}
a,,,4 cis,, \noPageBreak |
cis,, ( e,, ) e,, ( gis,, ) \noPageBreak |
a,, -- gis,, -- fis,, -- gis,, -- \noPageBreak |
e,,1 \fermata } \bar "|."
} >> >> \layout{ indent = 0\cm } \midi{} }

\markup "VIII. (Ritual Dance)"
\score {
<< \new Staff << \context Voice = TheMusic {
\setup 
\key f \major \clef bass
\defaultTimeSignature
\time 2/2 c8 ^"pizz" ^"Allegretto" \pp c _"sonorè" c c c c c, c \noPageBreak |
c, c c c c, c c, c \noPageBreak |
c2. ^"arco" bes,8 ( g ~ \noPageBreak |
g4. bes8 ~ bes ) f4. ~ f8 g16 f
<< { d2. \noPageBreak | s2 } \\ { g,8 _"pizz" g, g, g, g, g, \noPageBreak | c,8 g, g, c } >> c2 ~ ^"arco" \noPageBreak |
c4 bes,8 ( g ) bes, c ~ c4 ~ c bes,8 g d4 c8 c \< \noPageBreak |
c c \! bes,4. ( c16 bes, ) g,8 g, \noPageBreak |
g, f, g, ( bes, ) d ( g ) a4 ( \noPageBreak | a8 ) g16 a << { g8 \mf d ~ d2 ~ \noPageBreak | d8 s4. } \\ { s4 g,8 _"pizz" g, g, g, g, \< g, f, f -> \! } >> e2 ^"arco" ~ \f \noPageBreak |
e8 d16 e d8 c c b, \< ~ b,4 \! \noPageBreak |
<< { a,8 s4. s2 } \\ { a,8 _"pizz" \piuF a, a, a, a, a, a, g, } >> \noPageBreak |
g, ^"arco" _"pesante" ( -> a, ) a, ( -> g, ) g, ( -> a, ) a, ( -> f, ) \noPageBreak | f, ( -> a, ) g, ( -> bes, ) bes, ( -> d ) d ( -> g ) \noPageBreak |
g4. ( a16 g ) f4 -- e -- \noPageBreak |
e8 -> d d d d \<  d e ( \ff -> d ) \noPageBreak |
d d d d bes, ( -> d ) d ( -> g ) g ( -> a ) g bes ( bes ) d' ~ d'4 \noPageBreak |
c'8 ( \ff -> f' ) f' f' f' f' g' f' \noPageBreak |
bes -> f' f' f' f' f' e' c' \noPageBreak |
bes ( -> d' ) d' d' d' d' c' f' \noPageBreak |
bes d' d' d' d' d' c' a \noPageBreak |
g bes bes bes bes a a f \noPageBreak |
g bes bes bes bes a a f \noPageBreak |
f a a c' d f f a \noPageBreak |
a g g bes bes a a g \noPageBreak |
d f f f f f e g \noPageBreak |
<< { f1 \fermata } { s4 \< s2. \! } >> \bar "|."
} >> >> \layout{ indent = 0\cm } \midi{} }
\pageBreak
\markup "IX."
\score {
<< \new Staff << \context Voice = TheMusic {
\setup 
\time 4/4 \clef bass
\key f \major f2 ^"Largo" ^"Theme" \pp _\markup{\italic sost.}
d \noPageBreak |
e a \noPageBreak |
g f4 e \noPageBreak |
f2 bes \noPageBreak |
g f4 e \noPageBreak |
f2 d \noPageBreak |
e a \noPageBreak |
g f4 e \noPageBreak |
f2 d \noPageBreak |
e1 \<  -- _"attaca" \bar "||" \noPageBreak
\once \override Score.RehearsalMark.break-visibility = #end-of-line-visible
\once \override Score.RehearsalMark.self-alignment-X = #RIGHT
\mark \markup { \musicglyph #"scripts.coda" }
c4 ( \p ^"poco piu mosso" ^"Variation 1"
bes, d2 ) \noPageBreak |
d4 ( c e2 ) \noPageBreak |
e4 ( \<  d f ) f -- \noPageBreak |
f ( e \mf ) a2 -- \noPageBreak |
g4 ( f bes ) bes -- \noPageBreak |
bes ( a ) g -- g -- \noPageBreak |
g ( f bes ) bes -- bes8 ( \<  c' a2 ) g4 \noPageBreak |
c' ( bes ) d' -- d' -- \noPageBreak |
d'8 ( \f e' c'4 ) e' -- e' -- \noPageBreak |
e' -- e'8 ( f' d'4 ) d' ( \noPageBreak |
b ) b ( \>  g ) g ( \noPageBreak |
f e ) a2 -- g4 ( f ) \!
f8 ( g e4 ) \noPageBreak |
c ( \p bes, \transpose c c' { d,2 ) \noPageBreak |
d,4 ( c, ^"rit"
e,2 ) \noPageBreak |
e,4 -- e, -- d,2 -- \noPageBreak |
f,8 -. \pp ^"scherzando" ^"Variation 2"
g, -. g, -. f, -. d, -. e, -. e, -. d, -. \noPageBreak |
f, -. g, -. g, -. f, -. g, -. a, -. a, -. g, -. \noPageBreak |
bes, -. a, -. a, -. f, -. g, -. f, -. f, -. d, -. \noPageBreak |
e, -. d, -. d, -. f, -. f, -. g, -. g, -. bes, -. \noPageBreak |
a, -. bes, -. bes, -. a, -. a, -. c -. c -. g, -. \noPageBreak |
f, -. g, -. g, -. f, -. d, -. f, -. f, -. a, -. \noPageBreak |
a, -. bes, -. bes, -. \<  a, -. g, -. a, -. a, -. g, -. \noPageBreak |
f, -. g, -. g, -. f, -. a, -. \!
bes, -. bes, -. a, -. \noPageBreak |
c -. \pocoF
d -. d -. bes, -. bes, -. des -. f, -. bes, -. \noPageBreak |
aes, -. bes, -. bes, -. aes, -. aes, -. g, -. g, -. ees, -. \noPageBreak |
ees, -. des, -. f, -. \< g, -.
\once \override TextSpanner.bound-details.left.text =
  \markup { \upright "rit." }
g, -. \startTextSpan
f, -. aes, -. bes, -. \noPageBreak |
<c des,> \f -- c, ( bes, -- ) <bes, c,> e, g, -- g, bes, \stopTextSpan \noPageBreak |
c1 -- \fermata } \clef tenor \noPageBreak |
a4 ( ^"Larghetto" ^"Variation 3" \mf bes _\markup{\italic "molto espress."} ) a' ( g' ) \noPageBreak |
bes ( a ) g' ( f' ) \noPageBreak |
a -- g8 ( a bes c' d'4 -- ) \staccato \noPageBreak |
e' -- c' -- f'2 \fermata \noPageBreak |
a4 ( ^"a tempo"
bes ) a' ( g' ) \noPageBreak |
bes ( a ) g' ( f' ) \noPageBreak |
a -- g8 ( a bes c' \<  ) bes4 -- \staccato \noPageBreak |
a -- a2 ( -- f4 \f ) \clef bass \noPageBreak |
a -- bes8 ( a g a ) bes4 ( \noPageBreak |
d' ) a8 ( g f g ) a4 ( \noPageBreak |
c' ) g8 ( f e f ) g4 -- \noPageBreak |
e -- c2. -- \noPageBreak |
a,4 ( bes, ) a ( g ) bes, ( a, ) g ( a ) \noPageBreak |
g, -- f,8 ( g, a, bes, ) a,4 ( \noPageBreak |
c ) c ( d ) d -- \noPageBreak |
d ( a g ) c ( \noPageBreak |
b, ) ( g f ) f -- \noPageBreak |
e8 ( d e c ) a,4 -- d -- \noPageBreak |
g,1 \noPageBreak | g,8 \p -- g,4 ( f,8 -. ) e16 ( f e8 d -. ) r \noPageBreak |
f, -- f,4 ( e,8 -. ) d16 ( e d8 c -. ) r e, -- e,4 ( d,8 -. ) d16 ( e f8 ) f -- \staccato r \noPageBreak |
g4 -- e -- a2 \fermata \bar ":|."
\once \override Score.RehearsalMark.self-alignment-X = #RIGHT
\mark \markup { "DC al Coda " \musicglyph #"scripts.coda" } \noPageBreak |
f1 \fermata \bar "|."
} >> >> \layout{ indent = 0\cm } \midi{} }

\pageBreak
\markup "X. A Prayer (in anticipation)"
\score {
<< \new Staff << \context Voice = TheMusic {
\setup 
\repeat volta 2 {
\time 3/4 \clef bass
\key bes \major f,4 ( \mp bes, ^"con sordino" ^"Larghetto" _"espress."
d ) \noPageBreak |
c2. -- \noPageBreak |
a4 ( bes ) a8 ( g \noPageBreak |
f2. ) \noPageBreak |
f,4 ( bes, d ) \noPageBreak |
c2. \noPageBreak |
f4 -- f2 -- \noPageBreak |
d2. } \noPageBreak |
\repeat volta 2 {
f4 -- f ( d ) \noPageBreak |
bes2. \noPageBreak a4 ( bes ) a8 ( g \noPageBreak |
f2. ) \noPageBreak |
f,4 bes, \<  d8 f \noPageBreak |
f4 \! -- f ( d ) \noPageBreak |
bes2. \noPageBreak |
d'4 c'2 \noPageBreak |
c'2. -- \noPageBreak |
f,4 ( bes, des ) \noPageBreak |
c2 c4 ~ c2 a4 ( \noPageBreak |
bes ) f'8 ( d' c'4 ) \noPageBreak |
c' -- c'2 -- \noPageBreak |
f,4 ( bes, des ) \noPageBreak |
c2 f4 ~ \noPageBreak |
f ees ( des8 c ) \noPageBreak |
bes,2. } \noPageBreak |
\time 4/4 a4 ( \mf bes a8 g f ) r \noPageBreak |
a4 ( \p bes a8 bes c' ) r \noPageBreak |
bes4 ( \mf c' bes8 a bes ) r \noPageBreak |
bes4 ( \p c' bes8 a f ) r \noPageBreak |
\time 3/4 f,4 ( -> bes, d ) \noPageBreak |
c2 a4 ~ \noPageBreak |
a \<  bes ( a8 bes ) \noPageBreak |
c'2. \! \noPageBreak |
f,4 ( bes, d ) \noPageBreak |
c ( \<  a bes ) \noPageBreak |
a8 \! ( g ees'4 ) ( \f d'8 c' ) \clef "tenor" \noPageBreak |
aes'4 ( -> g'8 f' ) ees'4 ( -> \noPageBreak |
d'8 ees' ) f'4 ( -> ees'8 d' ) \noPageBreak |
d'4 -> \tenuto bes \tenuto -> bes \tenuto -> \clef "bass" \noPageBreak | \transpose c c' { f2. \tenuto -> \noPageBreak |
f,4 ( bes, \< d ) \noPageBreak |
\time 4/4 d ( \ff -> c8 d ) ees2 -- \noPageBreak |
\time 3/4 ees4 -- ees -- ees -- \noPageBreak |
\time 4/4 ees ( -> d8 ees ) f2 -- } \noPageBreak |
\time 3/4 f,4 -- bes, -- d -- f \>  -- fis -- g -- \noPageBreak |
a -- bes ( a8 \! bes ) \noPageBreak |
c'4 ( \mf bes8 a f ) r \noPageBreak |
f4 ( \mp bes d' ) \clef "tenor" \noPageBreak |
\time 4/4 c' ( a' \<  bes' ) a'8 ( \! g' \noPageBreak |
\time 3/4 c''2 ~ c''8 ) c'' \clef "bass" \noPageBreak |
f2. \>  -- \noPageBreak |
d4 ( \p ees f ) \noPageBreak |
c2 ( d8 ) r \noPageBreak |
d4 ( \>  ees f ) \noPageBreak |
c2 \! ( bes,8 ) r \noPageBreak |
f,4 \pp -- bes, -- d -- \noPageBreak |
c2. ~ \< c4 \>  bes, -- \!
r _\markup { \right-align "With my thanks—for everything" } _\markup { \right-align "Oct.11 2014" } \bar "|."
} >> >> \layout{ indent = 0\cm } \midi{} }

\markup "XI. December Song"
\score {
<< \new Staff << \context Voice = TheMusic {
\setup
\transpose c c' {
\clef "tenor" \time 4/4 \partial 2 \key ees \major c4 ^"Larghetto" \p -- ees -- _"espress." \noPageBreak |
ees2 g \noPageBreak |
g8 ( f ees f g2 \noPageBreak |
c4 ) r c -- ees -- \noPageBreak |
ees2 c \noPageBreak |
c8 ( bes, aes, bes, c2 \noPageBreak |
ees4 ) r aes, -- bes, -- \noPageBreak |
c2 ees \noPageBreak |
f8 ees ( des ees f2 aes4 ) r \clef "treble"
aes -- c' \<  -- \noPageBreak |
c'2 f \mf \noPageBreak |
c'8 ( bes aes bes c'2 \noPageBreak |
ees'4 ) r des \p -- ees -- \noPageBreak |
ees2 bes \noPageBreak |
ees4 -- f -- f2 \noPageBreak |
c' \<  des'8 ( -> c' bes c' aes2 \>  f4 ) r \noPageBreak |
aes2. ( \p ees4 ) \clef "tenor" \noPageBreak |
des c bes,2 \noPageBreak |
des ees8 ( -- f ) des ( -- ees ) \noPageBreak |
c1 \fermata \mark "fine"
} \noPageBreak |
\repeat volta 2 {
\time 3/4 des'4 \mf ^\markup { "Presto (" \note-by-number #1 #1 #0.8 " beat)" } des'2 \noPageBreak |
des4 des2 \noPageBreak | bes4 aes ges \< \noPageBreak | f bes \! r \noPageBreak |
des' \mp des'2 \noPageBreak |
des4 des2 \noPageBreak |
ees4 f ges \noPageBreak |
aes bes r \noPageBreak |
c' des' ges \noPageBreak |
f2. \noPageBreak |
r4 bes aes \noPageBreak |
bes \<  c' ees' \! \noPageBreak |
ges'2 \pocoF
aes'4 \noPageBreak |
f'2 des'4 \noPageBreak |
bes2 des'4 \noPageBreak |
c' des' \<  ees' \noPageBreak |
aes \!
r f \mf } \noPageBreak |
bes2 ees4 \<  \noPageBreak |
bes2 des4 \noPageBreak |
bes2 \!
c4 \clef "bass" \noPageBreak |
aes,2. \noPageBreak |
r4 ees, f, \noPageBreak |
bes, _\markup{\italic "dim."} ^"poco rit" c des \noPageBreak |
aes2 f4 \noPageBreak |
c'2. \>  \noPageBreak |
ees' \! ^\markup { \right-align { "DC al fine" } } _\markup { \right-align "Dec.25 2015" } \bar "||"
} >> >> \layout{ indent = 0\cm } \midi{} }
