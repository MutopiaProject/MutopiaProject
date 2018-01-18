\version "2.19.65"

#(set-global-staff-size 18)

\header {
	title = "Widmung"
	composer = "Robert Schumann (1810–1856)"
	poet = "Friedrich Rückert (1788–1866)"
	opus = "Op. 25, № 1."

	%mutopia-specific headers:
	mutopiatitle = "Widmung"
	mutopiacomposer = "SchumannR"
	mutopiapoet = "Friedrich Rückert (1788-1866)"
	mutopiaopus = "O 25"
	mutopiainstrument = "Voice and Piano"
	date = "1840"
	source = "The University Society, 1909"
	style = "Romantic"
	maintainer = "Daniel Johnson"
	maintainerEmail = "il.basso.buffo at gmail dot com"
	lastupdated = "2006/Dec/06"
	license = "Public Domain"
	footer = "Mutopia-2018/01/17-588"
	copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white "ǀ" \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {"ǀ" "ǀ"}}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " "by " \maintainer " — " \footer}\concat {\concat {\abs-fontsize #8 { "Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "Public Domain" " by the typesetter " " — free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white "ǀ" }}}
	tagline = ##f
}

\paper {
	top-margin = 0.25\in
	bottom-margin = 0.25\in
	between-system-padding = 0\in
	print-page-number = ##t
	head-separation = 0\in
	ragged-last-bottom = ##f
	system-count = 15
}

sopNotes = {
	\clef treble
	\time 3/2
	\key aes \major
	\autoBeamOff

	\once \override Score.RehearsalMark #'extra-offset = #'(6.0 . 1.0)
	\mark \markup { \large \bold "Animato." }

	R1. | c''4 c''8 c''8 ees''4. aes'8 aes'4 bes'4 | c''2 r2 aes'4 aes'8 aes'8 |
	f''2 ~ f''4 ees''4 des''4 c''4 | bes'2 r2 bes'4-> g'8 ees'8 | aes'2 ~ aes'4 aes'4 des''4. des''8 | des''2 c''4 c''4 ees''4.-> aes'8 |
	des''2 ~ des''4 des''4 ges''4. ges''8 | ges''2 f''4 ees''4 des''4 c''4 | bes'2 r4 bes'4 c''4 des''4 |
	ees''4 aes'4 aes'2 ~ aes'4 des''4 | c''4 c''4 \acciaccatura c''8 bes'2 ~ bes'4 c''4 | aes'2 r2 r2 |
	\key e \major
	
	gis'1 fis'4 gis'4 | a'1 gis'2 | fis'1 ~ fis'4 gis'4 |
	e'2 b2 r2 | gis'1 fis'4 gis'4 | a'1 gis'2 |
	fis'1( gis'4.) e'!8 | gis'2 fis'4 r4 fis'4 dis'8 b8 | e'2 r4 e'4 a'4. a'8 |
	a'2( gis'4) gis'4 b'4. e'8 | a'2 ~ a'4 a'4 d''4. d''8 | d''2( cis''4) cis''4 cis''4 cis''4 |
	\key aes \major
	
	des''2 ~ des''4 des''4 ees''4. bes'8 | c''2 r2 c''2 |
	c''4. f'8 f'4 f'4 g'4 aes'4 | bes'2 r2 r2 |
	c''4 c''8 c''8 ees''4. aes'8 aes'4 bes'4 | c''2 r2 aes'4 aes'8 aes'8 |
	f''2 ~ f''4 ees''4 des''4 c''4 | bes'2 r2 bes'4-> g'8 ees'8 |
	
	aes'2 ~ aes'4 aes'4 des''4. des''8 | des''2 c''4 c''4 c''4.-> f'8 |
	bes'2 ~ bes'4 bes'4 ees''4 ees''4 | ees''2 des''4 f''4 des''4 bes'4 | aes'4 aes'4 f''2 ~ f''4 ees''4 |
	aes'2 r2 r2 | R1.*5
}

sopDynamics = {
	s1.
	s2. s2^\> s4\! s1.*3
	s1. s2 s2.^\> s4\! s1.
	s1.*3
	s1.^\p s1.*2
	s1.*3
	s2 \once \override TextScript #'script-priority = #-100 s2^\turn^\markup{\tiny \smaller \smaller \sharp} s2 s1.*2
	s1. s1^\< s4. s8\! s2 s4^\markup{\italic "rit."} s4^\> s4 s4\!
	s1.*2
	s2 s1^\markup{\italic "rit."} s1.
	s8^\f s4.^\markup{\italic "a tempo"} s1 s1.
	s2. s4^\> s4. s8\! s1.
}

text=\lyricmode {
	Du mei -- ne See -- le, du mein Herz,
	du mei -- ne Wonn’, __ O du mein Schmerz,
	du mei -- ne Welt, __ in der ich le -- be,
	mein Him -- mel du, __ da -- rein ich schwe -- be,
	O du mein Grab, in das hin -- ab
	ich e -- wig mei -- nen Kum -- mer gab.

	Du bist die Ruh’, du bist __ der Frie -- den,
	du bist vom Him -- mel mir __ be -- schie -- den.
	Daß du mich liebst, macht mich mir wert, __
	dein Blick hat mich vor mir ver -- klärt,
	du hebst mich lie -- bend ü -- ber mich,
	mein gu -- ter Geist, mein beß’ -- res Ich!	

	Du mei -- ne See -- le, du mein Herz,
	du mei -- ne Wonn’, __ o du mein Schmerz,
	du mei -- ne Welt, __ in der ich le -- be,
	mein Him -- mel du, __ da -- rein ich schwe -- be,
	mein gu -- ter Geist, mein beß’ -- res Ich!	
}

rhOne = {
	\clef treble
	\time 3/2
	\key aes \major
	\voiceOne
	%Page 1, Line 1
	c'8(_\mf ees'8 aes'8. c''16) c''8( aes'8 ees'8 c'8) c'8( ees'8 bes8 ees'8) |
	c'8( ees'8 aes'8. c''16) c''8( aes'8 ees'8 c'8) c'8( ees'8 bes8 ees'8) |
	c'8( ees'8 aes'8. c''16) c''8( aes'8 ees'8 c'8) c'8( ees'8 c'8 aes'8) |
	%Page 1, Line 2
	f'8( aes'8 des''8. f''16) f''8( f'8 ees''8 f'8) des''8( f'8 c''8 f'8) |
	bes'2 ees''2\rest bes'4^>( g'8 ees'8) |
	aes'1 des''2 |
	des''2 c''4 r4 ees''4^>( c''8 aes'8) |
	%Page 1, Line 3
	des''2 ~ des''4
	\once \override Hairpin #'extra-offset = #'(0.0 . -0.75)
	des''4^\< ges''4 ges''4\! |
	ges''2 <aes' des'' f''>4 ees''4( des''4 c''4) |
	bes'2 ~ bes'4 bes'4( c''4 des''4) |
	%Page 1, Line 4
	ees''2 aes'2 ~ aes'4 des''4 |
	c''2 bes'2 ~ bes'4 c''4 |
	aes'1. |
	\key e \major
	\oneVoice
	%Page 2, Line 1
	\times 2/3 { <b e' gis'>4_\p <b e' gis'>4 <b e' gis'>4 } \times 2/3 { <b e' gis'>4 <b e' gis'>4 <b e' gis'>4 } \times 2/3 { <b e' gis'>4 <b e' gis'>4 <b e' gis'>4 } |
	\override TupletNumber #'stencil = ##f \override TupletBracket #'stencil = ##f
	\times 2/3 { <a e' a'>4 <a e' a'>4 <a e' a'>4 } \times 2/3 { <a e' a'>4 <a e' a'>4 <a e' a'>4 } \times 2/3 { <b e' gis'>4 <b e' gis'>4 <b e' gis'>4 } |
	\times 2/3 { <cis' e' fis'>4 <cis' e' fis'>4 <cis' e' fis'>4 } \times 2/3 { <cis' e' fis'>4 <cis' e' fis'>4 <cis' e' fis'>4 } \times 2/3 { <a b dis' fis'>4 <a b dis' fis'>4 <a b dis' fis'>4 } |
	%Page 2, Line 2
	\times 2/3 { <gis b e'>4 <gis b e'>4 <gis b e'>4 } \times 2/3 { <gis b>4 <gis b>4 <gis b>4 } \times 2/3 { <gis b>4 <gis b>4 <gis b>4 } |
	\times 2/3 { <b e' gis'>4_\< <b e' gis'>4 <b e' gis'>4 } \times 2/3 { <b fis' gis'>4 <b fis' gis'>4 <b fis' gis'>4 } \times 2/3 { <b eis' gis'>4 <b eis' gis'>4 <b eis' gis'>4 } |
	\times 2/3 { <a gis' a'>4 <a gis' a'>4 <a gis' a'>4 } \times 2/3 { <a fis' a'>4 <a fis' a'>4 <a fis' a'>4 } \times 2/3 { <b e' gis'>4 <b e' gis'>4 <b e' gis'>4\! } |
	%Page 2, Line 3
	\times 2/3 { <cis' e' fis'>4 <cis' e' fis'>4 <cis' e' fis'>4 } \times 2/3 { <cis' e' fis'>4 <cis' e' fis'>4 <cis' e' fis'>4 } \times 2/3 { <cis' e' gis'>4 <cis' e' gis'>4 <cis' e'>4 } |
	\voiceOne gis'2 fis'2 \oneVoice \times 2/3 { <b dis' fis'>4 <b dis' fis'>4 <b dis' fis'>4 } |
	\times 2/3 { <b e'>4_\< <b e'>4 <b e'>4 } \times 2/3 { <b e'>4 <b e'>4 <b e'>4 } \times 2/3 { <a b dis' a'>4 <a b dis' a'>4 <a b dis' a'>4\! } |
	%Page 2, Line 4
	\times 2/3 { <a b e' a'>4 <a b e' a'>4 <a b e' a'>4 } \times 2/3 { <b e' gis'>4 <b e' gis'>4 <b e' gis'>4 } \times 2/3 { <e' gis'>4 <e' gis'>4 <e' gis'>4 } |
	\once \override Hairpin #'extra-offset = #'(0.0 . -1.5)
	\times 2/3 { <e' a'>4_\< <e' a'>4 <e' a'>4 } \times 2/3 { <e' a'>4 <e' a'>4 <e' a'>4 } \times 2/3 { <d' e' gis' d''>4 <d' e' gis' d''>4 <d' e' gis' d''>4\! } |
	\times 2/3 { <d' e' a' d''>4 <d' e' a' d''>4 <d' e' a' d''>4 } \times 2/3 {
	\once \override Hairpin #'extra-offset = #'(0.0 . -2.0)
	<e' a' cis''>4_\> <e' a' cis''>4 <e' a' cis''>4 } \times 2/3 { <e' a' cis''>4 <e' a' cis''>4 <e' a' cis''>4\! } |
	\key aes \major
	\voiceOne
	%Page 3, Line 1
	des''2 ~ des''4 des''4 ees''4. bes'8 | \acciaccatura bes'8 <bes' c''>1 <aes' c''>2 |
	%Page 3, Line 2
	c''4.. f'16 f'4 f'4( g'4 aes'4) | bes'1 s4.^\> s8\! |
	%Page 3, Line 3
	c'8(_\f ees'8 aes'8. c''16) c''8( aes'8 ees'8 c'8) c'8( ees'8 bes8 ees'8) |
	c'8( ees'8 aes'8. c''16) c''8( aes'8 ees'8 c'8) c'8( ees'8 c'8 aes'8) |
	%Page 3, Line 4
	f'8( aes'8 des''8. f''16) f''8 f'8 ees''8 f'8 des''8 f'8 c''8 f'8 | bes'1 bes'4^>( g'8 ees'8-) |
	%Page 4, Line 1
	aes'1 des''2 | des''2 c''4 r4 c''4^>( a'8 f'8) |
	%Page 4, Line 2
	bes'2. bes'4 ees''4 ees''4 | des''2 \oneVoice <f' bes' des''>4 <f' c'' f''>4-.(_\> <f' bes' des''>4-. <fes' bes'>4-.)\! |
	\once \override Hairpin #'extra-offset = #'(-0.25 . -1.0)
	<ees' aes'>4-.(_\< <d' f' aes'>4-.)
	\once \override Hairpin #'extra-offset = #'(0.25 . -1.0)
	\voiceOne aes'2.\!_\> g'4\! |
	%Page 4, Line 3
	aes'1. | aes'2
	\once \override Hairpin #'extra-offset = #'(0.0 . 1.0)
	g'4(^\< aes'4
	\once \override Hairpin #'extra-offset = #'(0.0 . 1.0)
	c''!4.\!^\> bes'8\!) | aes'1. |
	%Page 4, Line 4
	aes'2
	\once \override Hairpin #'extra-offset = #'(-0.25 . 1.0)
	g'4(^\<
	\once \override TextScript #'extra-offset = #'(1.25 . 1.25)
	aes'4\!^\markup{\italic "rit."}
	\once \override Hairpin #'extra-offset = #'(-1.0 . 0.75)
	c''!4.^\> bes'8\!) | aes'1. | bes'2\rest <c' aes'>4 bes'4\rest bes'2\rest \bar "|."
}

rhTwo = {
	\clef treble
	\time 3/2
	\key aes \major
	\voiceTwo
	s1.*3
	s1.*3 | s1 \slurDown c''8( aes'8 \change Staff=lh \stemUp ees'8 c'8) \change Staff=rh \voiceTwo
	%Page 1, Line 3
	s1. | s2 s4 \once \override Hairpin #'extra-offset = #'(0.0 . 1.0) ees''8_\> ges'8 des''8 f'8 c''8 ees'8\! | s1.
	s1 aes'8 f'8 des''8 fes'8 s1. s8 s8^\> s1 s8 s8\!
	\key e \major
	s1.*3
	s1.*3
	%Page 2, Line 3
	\override TupletNumber #'stencil = ##f \override TupletBracket #'stencil = ##f
	s1. | \times 2/3 { <b e'>4 <b e'>4 <b e'>4 } \times 2/3 { <b dis'>4 <b dis'>4 <b dis'>4 } s2 | s1.
	s1.*3
	\key aes \major
	s1.*2
	s1.*2
	s1.*2
	s1.*2
	%Page 4, Line 1
	s1. | s1 a'8 f'8 s4 |
	%Page 4, Line 2
	s1. | s1. | s2 <des' ees'>1 |
	%Page 4, Line 3
	s1.*3
	\oneVoice \slurUp
	\stemUp \change Staff=lh ces8( g8 \stemDown \change Staff=rh ces'8 d'8)
	\stemUp \change Staff=lh bes,8( aes8 \stemDown \change Staff=rh bes8 des'8)
	\stemUp \change Staff=lh g,8( g8 \stemDown \change Staff=rh des'8 ees'8) |
}

lhOne = {
	\clef bass
	\time 3/2
	\key aes \major
	\voiceOne
	%Page 1, Line 1
	ees8( aes8 c'8. ees'16) ees'8( c'8 aes8 ees8) ees8( aes8 ees8 aes8) |
	ees8( aes8 c'8. ees'16) ees'8( c'8 aes8 ees8) ees8( aes8 ees8 aes8) |
	ees8( aes8 c'8. ees'16) ees'8( c'8 aes8 ees8) ees8( aes8 ees8 c'8) |
	%Page 1, Line 2
	\slurDown
	aes8 des'8 \change Staff=rh \stemDown f'8. aes'16 aes'8 aes8 g'8 aes8 f'8 aes8 ees'8 aes8 \change Staff=lh \stemUp |
	aes8( des'8 \change Staff=rh \stemDown fes'8. bes'16) bes'8( g'8 \change Staff=lh \stemUp des'8 aes8) g8 bes8 r4 |
	aes8( c'8 \change Staff=rh \stemDown ees'8. aes'16) aes'8( ees'8 \change Staff=lh \stemUp c'8 aes8) \change Staff=rh \stemDown g'8( ees'8 \change Staff=lh \stemUp des'8 g8) |
	\change Staff=rh \stemDown g'8( ees'8 \change Staff=lh \stemUp des'8 g8) \change Staff=rh \stemDown aes'8( ees'8 \change Staff=lh \stemUp c'8 aes8) c'4 s4 |
	%Page 1, Line 3
	des'8( f'8 \change Staff=rh \stemDown aes'8. des''16) des''8( aes'8 \change Staff=lh \stemUp f'8 des'8) \change Staff=rh \stemDown c''8( aes'8 \change Staff=lh \stemUp ges'8 c'8) |
	\change Staff=rh \stemDown c''8( aes'8 \change Staff=lh \stemUp ges'8 c'8) \voiceOne <des' f'>4 a4( bes4 des'4) |
	\slurDown bes8( des'8 \change Staff=rh \stemDown fes'8. g'!16) g'8( fes'8 \change Staff=lh \stemUp des'8 bes8) g8( bes8 \change Staff=rh \stemDown fes'8 g'8) |
	%Page 1, Line 4
	\change Staff=lh \stemUp aes8( ees'8 \change Staff=rh \stemDown ges'8. aes'16) aes'8( ges'8 \change Staff=lh \stemUp ees'8 aes8) des8( aes8 bes,8 des'8) |
	aes8( c'8 \change Staff=rh \stemDown ees'8 aes'8) \change Staff=lh \stemUp aes8( bes8 \change Staff=rh \stemDown des'8. ees'16) ees'8( des'8 \change Staff=lh \stemUp g8 ees8) |
	ees8( aes8 \change Staff=rh \stemDown c'8. ees'16) ees'8( c'8 \change Staff=lh \stemUp aes8^\markup{\italic "rit."} ees8) ees8( aes8  \change Staff=rh \stemDown c'8 ees'8) |
	\change Staff=lh
	\voiceOne
	\key e \major
	%Page 2, Line 1
	e1 d2 | cis1 b,2 | a,1 b,2 |
	%Page 2, Line 2
	\oneVoice <e, e>2 r2 <b,, b,>2 | <e, e>2 <d, d>2 <cis, cis>2 | \voiceOne fis4( cis4 cisis4 dis4) e2 |
	%Page 2, Line 3
	\override TupletNumber #'stencil = ##f \override TupletBracket #'stencil = ##f
	e2 ~ e4 e4 cis4. e8 | s1 \oneVoice \times 2/3 { <a, fis>4 <a, fis>4 <a, fis>4 } | \times 2/3 { <gis, e>4 <gis, e>4 <gis, e>4 } \times 2/3 { <gis, e>4 <gis, e>4 <gis, e>4 } \times 2/3 { <fis, b,>4 <fis, b,>4 <fis, b,>4 } |
	%Page 2, Line 4
	\times 2/3 { <e, b,>4 <e, b,>4 <e, b,>4 } \times 2/3 { <e, b,>4 <e, b,>4 <e, b,>4 } s2 |
	s1 \times 2/3 { <b, e>4 <b, e>4 <b, e>4 } |
	\times 2/3 { <a, e>4 <a, e>4 <a, e>4 } \times 2/3 { <a, e>4 <a, e>4 <a, e>4^\markup{\italic "rit."} } s2 |
	\key aes \major
	\slurDown
	%Page 3, Line 1
	\stemUp bes8(^\p des'8 \change Staff=rh \stemDown ees'8. g'16) g'8( ees'8 \change Staff=lh \stemUp des'8 bes8) bes8([ des'8 \change Staff=rh \stemDown ees'8 bes'8]) \change Staff=lh \stemUp |
	bes8( c'8 \change Staff=rh \stemDown ees'8. bes'16) bes'8( ees'8 \change Staff=lh \stemUp c'8 bes8) aes8( c'8 \change Staff=rh \stemDown ees'8 aes'8) \change Staff=lh \stemUp |
	%Page 3, Line 2
	aes8( bes8 \change Staff=rh \stemDown d'8. f'16) f'8( d'8 \change Staff=lh \stemUp bes8 aes8^\markup{\italic "rit."}) aes8( bes8 \change Staff=rh \stemDown aes'8 d'8) \change Staff=lh \stemUp |
	<ees g>8( bes8 \change Staff=rh \stemDown des'!8. ees'16) ees'8( des'8 \change Staff=lh \stemUp bes8 ees8) ees8( bes8 \change Staff=rh \stemDown des'8 ees'8) \change Staff=lh \stemUp |
	%Page 3, Line 3
	\voiceOne
	ees8( aes8 c'8. ees'16) ees'8( c'8 aes8 ees8) ees8( aes8 ees8 aes8) |
	ees8( aes8 c'8. ees'16) ees'8( c'8 aes8 ees8) ees8( aes8 ees8 c'8) |
	%Page 3, Line 4
	\slurDown
	aes8( des'8 \change Staff=rh \stemDown f'8. aes'16) aes'8( aes8 g'8 aes8 f'8 aes8 ees'8 aes8) | \change Staff=lh \stemUp
	aes8( des'8 \change Staff=rh \stemDown fes'8. bes'16) bes'8( g'8 \change Staff=lh \stemUp des'8 aes8) g8 bes8 r4 |
	%Page 4, Line 1
	aes8( c'8 \change Staff=rh \stemDown ees'8 aes'8) aes'8( ees'8 \change Staff=lh \stemUp c'8 aes8) \change Staff=rh \stemDown g'8( ees'8 \change Staff=lh \stemUp des'8 g8) |
	\change Staff=rh \stemDown g'8( ees'8 \change Staff=lh \stemUp ees'8 g8) \change Staff=rh \stemDown aes'8( ees'8 \change Staff=lh \stemUp c'8 aes8) a8 c'8 r4 |
	%Page 4, Line 2
	bes8( des'8 \change Staff=rh \stemDown f'8. bes'16) bes'8( f'8 \change Staff=lh \stemUp des'8 bes8) \change Staff=rh \stemDown a'8( f'8 \change Staff=lh \stemUp ees'8 a8) |
	\change Staff=rh \stemDown a'8( f'8 \change Staff=lh \stemUp ees'8 a8) s1 |
	s1 <ees, ees>2 |
	%Page 4, Line 3
	ees8(^\p aes8\change Staff=rh \stemDown c'8. ees'16) ees'8( c'8 \change Staff=lh \stemUp aes8 ees8) ees8( aes8 \change Staff=rh \stemDown c'8 ees'8) \change Staff=lh \stemUp |
	d8( aes8\change Staff=rh \stemDown ces'8 d'8)\change Staff=lh \stemUp des8( aes8\change Staff=rh \stemDown bes8 des'8)\change Staff=lh \stemUp des8( g8\change Staff=rh \stemDown des'8 ees'8)\change Staff=lh \stemUp |
	c8( aes8\change Staff=rh \stemDown c'8 ees'8) ees'8( c'8\change Staff=lh \stemUp aes8 ees8) c8( aes8\change Staff=rh \stemDown c'8 ees'8)\change Staff=lh \voiceTwo |
	%Page 4, Line 4
	s2 \override Staff.NoteCollision #'merge-differently-dotted = ##t \voiceOne \stemDown bes,4. \stemUp aes,8 \stemDown g,4. \stemUp ees8 |
	\slurDown \stemUp
	ees8( aes8\change Staff=rh \stemDown c'8 ees'8) ees'8( c'8\change Staff=lh \stemUp aes8 ees8)\change Staff=rh \stemDown aes'8( c'8\change Staff=lh \stemUp aes8 ees8) |
}


lhTwo = {
	\voiceTwo
	%Page 1, Line 1
	aes,1 aes,2 | aes,1 aes,2 | aes,1 aes,2 |
	%Page 1, Line 2
	des1 des2\rest | des1 <des ees>2 | <c ees>1 bes,2 | aes,4 g,4\rest aes4 g,4\rest <ges aes>2 |
	%Page 1, Line 3
	<f aes>1 ees2 | des4 g,4\rest g,4\rest des2 des4 | des1 des2 |
	%Page 1, Line 4
	c1 des4 bes,4 | ees2 ees1 | aes,1 aes,2 |
	
	%Page 2, Line 1
	e,1. | e,1. | e,1. |
	%Page 2, Line 2
	s1.*2 | fis,1 gis,2 |
	%Page 2, Line 3
	a,1 ais,2 | <b, e gis>2 <b, dis fis>2 s2 | s1.
	%Page 2, Line 4
	\override TupletNumber #'stencil = ##f \override TupletBracket #'stencil = ##f
	s1 \times 2/3 { <d e b>4 <d e b>4 <d e b>4 } |
	\times 2/3 { <cis e a>4 <cis e a>4 <cis e a>4 } \times 2/3 { <cis e a>4 <cis e a>4 <cis e a>4 } s2 |
	s1 \times 2/3 { a4 a4 a4 } |
	
	%Page 3, Line 1
	ees1 ees2 | <ees bes>1 ees2 |
	%Page 3, Line 2
	ees1 ees2 | ees1 \once \override Staff.NoteCollision #'merge-differently-headed = ##t <ees aes,>2\arpeggio |
	%Page 3, Line 3
	aes,1 aes,2 | aes,1 aes,2 |
	%Page 3, Line 4
	des1 des2\rest | des1 <des ees>2 |
	
	%Page 4, Line 1
	<c ees>1 bes,2 | aes,4 ges,4\rest aes4 ges,4\rest <ees f>2 |
	%Page 4, Line 2
	<des f>1 c2 | bes,4 r4 <bes des'>4 \oneVoice <a, c'>4-.( <bes, des'>4-. <des fes bes>4-.) | <ees aes c'>4-.( <ees ces'>4-.) ~ <ees bes>2 s2 |
	%Page 4, Line 3
	\voiceTwo
	aes,1 g,2 | f,2 fes,2 ees,2 | aes,1 <g, c>2 |
	\once\override Staff.NoteCollision #'merge-differently-headed = ##t
	<f, ces>2
	\voiceFour
	\once \override NoteColumn #'force-hshift = #0.3
	fes,2
	\once \override NoteColumn #'force-hshift = #0.5
	ees,2 | \voiceTwo aes,1. | \stemUp aes,4 des4\rest \stemDown <ees aes ees'>4 des4\rest des2\rest |
}
pianoDynamics = {
	%Page 1 Line 1
	s8_\sustainOn s8_\< s4 s4 s8\! s8_\sustainOff s4.\sustainOn s8_\sustainOff
	s8_\sustainOn s8_\< s4 s4 s8\! s8_\sustainOff s4._\sustainOn s8_\sustainOff
	s8_\sustainOn s8_\< s4 s4 s8\! s8_\sustainOff s4._\sustainOn s8_\sustainOff
	%Page 1 Line 2
	s1_\sustainOn s2_\sustainOff
	s1.
	s1 s4._\sustainOn s8_\sustainOff
	s2._\sustainOn s2._\sustainOff
	%Page 1 Line 3
	s1 s4._\sustainOn s8_\sustainOff
	s2._\sustainOn s2._\sustainOff
	s1.
	%Page 1 Line 4
	s1.*3
	%Page 2
	s1.*12
	%Page 3 Line 1
	s1.*2
	%Page 3 Line 2
	s1.
	s8_\sustainOn s4._\< s4. s8\! s2
	%Page 3 Line 3
	s8_\sustainOn s8 s4 s4 s8 s8_\sustainOff s4._\sustainOn s8_\sustainOff
	s8_\sustainOn s8 s4 s4 s8 s8_\sustainOff s4._\sustainOn s8_\sustainOff
	%Page 3 Line 4
	s1_\sustainOn s2_\sustainOff
	s1.
	%Page 4 Line 1
	s1 s4._\sustainOn s8_\sustainOff
	s2_\sustainOn s1_\sustainOff
	%Page 4 Line 2
	s1 s4._\sustainOn s8_\sustainOff
	s2_\sustainOn s1_\sustainOff
	s1.
	%Page 4 Line 3
	s1.*3
	%Page 4 Line 4
	s1.
	s1._\>
	s1.\!
}

\score {
	<<
		\context Staff = melStaff {
			<<
				\context Voice = mel { \sopNotes }
				\context Voice = sopdyn { \sopDynamics }
			>>
		}
		\new Lyrics = "one" \lyricsto mel \text

		\context PianoStaff <<
			\context Staff = rh {
				<<
					\context Voice = rhA { \rhOne }
					\context Voice = rhB { \rhTwo }
				>>
			}
			\context Staff = lh
			{
				<<
					\context Voice = lhA { \lhOne }
					\context Voice = lhB { \lhTwo }
					\context Voice = pianodyn { \pianoDynamics }
				>>
			}
		>>
	>>
	\layout {
		\context { \RemoveEmptyStaffContext }
	}
	
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 60 2)
      }
    }


}
