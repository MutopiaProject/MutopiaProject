\version "2.6.4"
\header {
	title = "Entr'acte"
	subtitle = "to Act II from Carmen"
	composer = "Georges Bizet"
	meter = \markup {"" \raise #5 { \bold "Allegro moderato " "(" \tiny \note #"4" #0.7 "= 100" ")" }}
	
	mutopiatitle = "Entr'acte"
	mutopiacomposer = "BizetG"
	mutopiainstrument = "Piano"
	date = "1874"
	source = "Schirmer, 1895"
	style = "Romantic"
	copyright = "Creative Commons Attribution-ShareAlike 2.5"
	maintainer = "Alex O'S"
	maintainerEmail = "erichstroheim@gmail.com"
	lastupdated = "2006/Jan/5"
	
	footer = "Mutopia-2006/01/05-649"
	tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2005. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/2.5" http://creativecommons.org/licenses/by-sa/2.5 } } } }
}


upper = \relative c' {
\clef bass
\key g \minor
\time 2/4
g8.( d'16) d8-. r |
g,8.( d'16) d8 r |
g,( d'-.) c-. ees-. |
d4~ d8 r |
g,4( d'8) d-. |														%1-1

g,8-. d'-. d-. r |
g,-.[ \times 2/3 { d'16 ees d] } c8-. ees-. |
d4~ d8 r |
d8.( c16) d8-. ees-. |
f( g)-. f-. ees-. |													%1-2

d-. c-. bes-. a-. |
g4~ g8 r |
fis8( a-.) d-. fis-. | \once \override TextScript #'padding = #4.2
<<{e2\startTrillSpan^\markup {\translate #(cons -0.4 0) \sharp } |
e2_(}{s2 s4.. \grace {d16)[\stopTrillSpan ees16]} }>> |
d4~ d8 r |														%1-3

\acciaccatura {d8} g8-. r d-. r |
\acciaccatura {d8} f!8-. e-. c-. r |
\acciaccatura {c8} f-. c-. ees!-. d-. |
<<{\phrasingSlurUp bes2\( | \bar "||" \key g \major											%VOICE ONE
b!8\)( a-.) b-. c-. |
b( a)-. b-. c-. |													%1-4

d4\( \acciaccatura {fis8} e8. d16 |
d8-.\) r e8.( fis16 |\phrasingSlurNeutral
g8-.) r g,-. r |
e'4~ e8-. r |
d( c-.) b-. a-. |
g-.															%1-5-6-2
}\\{ s2															%VOICE TWO
g8-. r r4 |
g8-. r r4 |														%1-4

<g b>8-. r <g c>-. r |
<g b>-. r <a b>-. r |
<g b>-. r fis-. r |
<e g>-. r <g c>-. r |
fis r r4 |
g8-. 															%1-5-6-2
}>>
r8 \clef treble <g' d>8-. <a ees>-.^\markup {\translate #(cons -5 0) {\italic legg.}} \break				%1-5

\acciaccatura b8 <a ees>8( <g d>-.) <g' d>-. <a ees>-. |
\acciaccatura b8 <a ees>8( <g d>-.) <g, d b>-. <b g d>-. |
<d b g>( <g d b>-.) <fis! cis! a>-. <e cis g>-. |
<a d, fis,>( <d, a>-.) <d a>-. <e bes>-. |
\acciaccatura fis8 <e bes>( <d a>-.) <d' a>-. <e bes>-. |								%2-1

\acciaccatura fis8 <e bes>( <d a>-.) <a, fis>-. <b! a f>-. |
<c! a e>( <b e, d>-.) <a fis! c>-. <b fis d>-. |
<g b,>( <d b>-.) <g' d>8-. <a ees>-. |
\acciaccatura b8 <a ees>8( <g d>-.) <g, d>-. <a ees>-. |
\acciaccatura b8 <a ees>8( <g d>-.) <g' d b>-. <b g d>-. |								%2-2

<d b g>( <g d b>-.) <fis! cis! a>-. <e cis g>-. |
<a d, fis,>( <d, a>-.) <d a>-. <e bes>-. |
\acciaccatura fis8 <e bes>( <d a>-.) <d, a>-. <e bes>-. |
\acciaccatura fis8 <e bes>( <d a>-.) <a' fis>-. <b! a f>-. |
<c! a e>( <b e, d>-.) <a fis! c>-. <b fis d>-. |									%2-3

<g b,>( <d b>-.) <b g>-. <c a>-. |
\acciaccatura d!8 <c a>( <b g>-.) <b' g>-. <e cis g>-. |
\acciaccatura f8 <e cis g>( <dis b fis>-.) <b, g>-. <c! a>-. |
\acciaccatura d!8 <c! a>( <b g>-.) <b' g>-. <e cis g>-. |
\acciaccatura f8 <e cis g>( <dis b fis>-.) \acciaccatura fis,8 e8-. dis-. |						%2-4

r4 \clef bass \acciaccatura fis,,8 e8-. dis-. |
R2 |
R2 | \clef treble \bar "||" \key g \minor
g'8.( d'16) d8-. r |
g,8.( d'16) d8-. r |													%2-5

g,( d'-.) c-. ees-. |
d4~ d8 r |
g,4( d'8) d-. |
g,8-. d'-. d-. r |
g,-.[ \times 2/3 { d'16 ees d] } c8-. ees-. |										%2-6

d4~ d8 r |
d8.( c16) d8-. ees-. |
f( g)-. f-. ees-. |
d-. c-. bes-. a-. |
g4~ g8 r |														%3-1

fis8( a)-. d-. fis-. | \once \override TextScript #'padding = #4.2
<<{e2\startTrillSpan^\markup {\translate #(cons -0.4 0) \sharp } |
e2_(}{s2 s4.. \grace {d16)[\stopTrillSpan ees16]} }>>
d4~ d8 r |
\acciaccatura d8 g-. r d-. r |												%3-2

\acciaccatura d8 f!-. e-. c-. r |
\acciaccatura c8 f-. c-. ees!-. d-. |
<<{\phrasingSlurUp bes2\( | \bar "||" \key g \major									%VOICE ONE
b!8\)( a-.) b-. c-. |
b( a)-. b-. c-. |													%3-3

d4\( \acciaccatura {fis8} e8. d16 |
d8-.\) r e8.( fis16 |\phrasingSlurNeutral
g8-.) r g,-. r |
e'4~ e8-. r |
}\\{ s2															%VOICE TWO
g,8-. r r4 |
g8-. r r4 |														%3-3

<g b>8-. r <g c>-. r |
<g b>-. r <a b d>-. r |
<g b e>-. r <fis b,>-. r |
<e g>-. r <e g c>-. r |
}>>
<<{fis'2(\startTrillSpan}{s4. \grace {e16[ fis])\stopTrillSpan}}>> |							%3-4

<<{
g8.( d'16 d8-.) r |
g,8.( d'16 d8-.) r |
g,8( d')-. c-. e-. |
d4~ d8 r |
g,,4( d'8-.) d-. |
g,-. d'-. d-. r |
}\\{
d2 |
d2 |
d4 <e g> |
<d g>2 |
d,2 |
d2 |
}>>															%3-5

<<{
g8[ \times 2/3 {d'16 e d]} c8-. e-. |
d2~ |
d2~ |
d4~ d8 r |
}\\{
d,4 <e g> |
<d g>8 s4.
d2~ |
d4~ d8 r |
}>>
<d'' d,>8-. r <d d,>-. r |
<g, g,>-. r\fermata r4 |
}

lower = \relative c {
\clef bass
\key g \minor
\time 2/4
<g bes d>8-. r r4 |
<g bes d>8-. r r4 |
<g bes d>8-. r <c, g' a ees'>8-.\arpeggio r |
<g' bes d>8-. r r4 |
<g bes d>8-. r r4 |													%1-1

<g bes d>8-. r r4 |
<g bes d>8-. r <c, g' a ees'>8-.\arpeggio r |
<g' bes d>8-. r r4 |
<bes d f>8-. r r4 |
<f a c f>8-. r r4 |													%1-2

<bes d f>8-. r <g d' g>-. r |
<e bes' d>8-. r r4 |
<a d>8-. r r4 |
<a b d e g>8-. r r4 |
<a cis g' a>8-. r <a cis g' a>-. r |
<d fis a>-. r r4 |													%1-3

<g,d' b'>8-.\arpeggio r r4 |
<c g' bes!>8-. r r4 |
<f, c' a'>8-.\arpeggio r8 <bes f' aes>-. r |
<ees, bes' des g>-.\arpeggio r r4 | \key g \major
<g d'!>8-. r r4 |
<g d'>8-. r r4 |													%1-4

<g d'>8-. r c-. r |
g-. r <fis d'>-. r |
<e e'>-. r <d b'>-. r |
<c c'>-. r <a a'>-. r |
<d c'>-. r r4 |
<g b>8-. r <g' b>-. <fis c'>-. |											%1-5

<c' fis,>( <b g>)-. \clef treble <g' b>-. <fis c'>-. |
<c' fis,>( <b g>)-. \clef bass g,-. fis-. |
f( e)-. a-. a,-. |
d( <d' fis>)-. <fis d>-. <g cis,>-. |
<g cis,>( <fis d>-.) \clef treble <fis' d>-. <g cis,>-. |								%2-1

<g cis,>( <fis d>-.) \clef bass d,-. d,-. |
a'( a,-.) d-. d,-. |
g( g'-.) \clef treble <g' b>-. <fis c'>-. |
<c' fis,>( <b g>)-. \clef bass <g, b>-. <fis c'>-. |
<c' fis,>( <b g>)-. \clef treble g'-. fis-. |										%2-2

f( e)-. a-. a,-. |
d( <d' fis>)-. <fis d>-. <g cis,>-. |
<g cis,>( <fis d>-.) <fis, d>-. <g cis,>-. |
<g cis,>( <fis d>-.) d'-. d,-. |
a'( a,-.) \clef bass d-. d,-. |												%2-3

g( g'-.) e-. <fis dis>-. |
<fis dis>( e-.) \clef treble e'-. ais,-. |
ais( b)-. e,-. <fis dis>-. |
<fis dis>( e-.) e'-. ais,-. |
ais( b-.) r4 |														%2-4

\acciaccatura fis8 e-. dis-. r4 \clef bass|
<dis, dis,>8 <d d,> <cis cis,>^\markup {\italic {dim. molto.}} <c c,> |
<b b,> <bes bes,> <a a,> <aes aes,> | \bar "||" \key g \minor
\stemDown <g g,>-.[ fis''-. \stemNeutral f-. e!-.] |
ees!-.[ d-. cis-. c-.] |												%2-5

b-.[ bes-. a-. c-.] |
bes-.[ g-. fis-. a-.] |
g-.[ fis-. f-. e!-.] |
ees-.[ d-. cis-. c-.] |
b-.[ bes-. a-. c-.] |													%2-6

bes-.[ d-. g-. a-.] \clef treble |
bes-.[ d-. f-. bes-.] |
a-.[ bes-. a-. g-.] |
f-.[ ees-. d-. f-.] |
ees-.[ d-. ees-. cis-.] \clef bass |											%3-1

d-.[ a-. fis-. d-.] |
g-.[ fis-. g-. e-.] |
a-.[ gis-. a-. a,-.] |
d-.[ fis-. a-. d-.] |
c!-.[ b-. a-. b-.] |													%3-2

c-.[ g-. c,-. c'-.] |
bes!-.[ a-. g-. a-.] |
bes-.[ b-. c-. cis-.] \bar "||" \key g \major |
<<{d-.[ c!-. d-. e-.]|
d-.[ c-. b-. a-.]}\\{g8 r r4|g8 r r4}>>|										%3-3

<<{g8-.[ fis-. e-. fis-.]}\\{g-. r c,-. r}>> |
g'-.[ b-. fis-. b-.] |
e,-.[ g-. d-. g-.] |
c,-.[ b-. <a c>-. a-.] |
<d a' c d>-. r r4 \clef treble |											%3-4

<g d' b'>2\arpeggio |
<g d' b'>2\arpeggio |
<g d' b'>4\arpeggio <c g' a>4 |
<g d' b'>2\arpeggio \clef bass|
<g, d' b'>2\arpeggio |
<g d' b'>2\arpeggio |													%3-5

<g d' b'>4\arpeggio <c g' a>4 |
<g d' b'>8\arpeggio \times 2/3 {d''16 e d} c8-. \change Staff = upper e-. \change Staff = lower |
g,,8-.[ \times 2/3 {d'16 e d]} c8-. e-. |
d4~ d8 r |
<d d,>8-. r <d d,>-. r |
<g, g,>-. r\fermata r4 |												%3-6
}

dynamics = {
s8\f s4. | s2*3 | s8\p s4. |	\break											%1-1
s2*3 | s8\f s4. | s2 |		\break											%1-2
s2*6 |				\break											%1-3
s2*4 | s8\pp s4. | s2 |		\break											%1-4
s2*5 | s4. s8\pp |		\break											%1-5
s2*5 |				\break											%2-1
s2*5 |				\break											%2-2
s2*5 |				\break											%2-3
s2*4 | s4 s8\ff s8 |		\break											%2-4
s2*3 | s8\pp s4. | s2 |		\break											%2-5
s2*5 |				\break											%2-6
s2*5 |				\break											%3-1
s2*5 |				\break											%3-2
s2*5 |				\break											%3-3
s2*5 |				\break											%3-4
s4\pp s4 | s2*5 |		\break											%3-5
s2*4 | s8\ppp s4. | s2 |	\break											%3-6

}

pedal = {
s2*5 |															%1-1
s2*5 |															%1-2
s2*6 |															%1-3
s2*4 |															%1-4
s2*6 |															%1-5
s2*5 |															%2-1
}
\score {
\context PianoStaff <<
	\context Staff=upper \upper
	\context Dynamics=dynamics \dynamics
	\context Staff=lower <<
		\clef bass
		\lower
		>>
	\context Dynamics=pedal \pedal
>>
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
		\override VerticalAlignment #'forced-distance = #7
		}
	}
}
\score {
\context PianoStaff <<
	\context Staff=upper << \upper \dynamics >>
	\context Staff=lower << \lower \dynamics >>
	\context Dynamics=pedal \pedal
	>>
\midi {
	\context {
		\type "Performer_group_performer"
		\name Dynamics
		\consists "Piano_pedal_performer"
	}
	\context {
		\PianoStaff
		\accepts Dynamics
		}
	}
}
