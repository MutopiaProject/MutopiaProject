\version "2.19.7"
\language "deutsch"

% lilypond has troubles fitting two measures on one line with size 20. For the
% sake of readability, let's typset a bit smaller
#(set-global-staff-size 18)

\header {
	title = "Прелюдия в Лидийском Ладу"
	subtitle = "Prelude en Mode Lydique"
	composer = "Алексей Станчинский"

	% Mutopia title fields
	mutopiatitle = "Prelude in Lydian Mode"
	mutopiacomposer = "StanchinskyAV"
	date = "1908"
	source = "IMSLP #14789"
	mutopiainstrument = "Piano"
	style = "Classical"
	license = "Creative Commons Attribution 4.0"
	maintainer = "Robert Clausecker"
	maintainterEmail = "fuz@fuz.su"
	maintainerWeb = "http://fuz.su/~fuz"
 footer = "Mutopia-2014/07/13-1957"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat{ \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2014 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans { " " \with-url #"http://creativecommons.org/licenses/by/4.0/" "Creative Commons Attribution 4.0 International License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

one = \new Voice = "one" \relative g'' {
	\clef treble
	\key g \minor
	\time 21/16
	\set Timing.beatStructure = #'(7 7 7)
	\set Score.tempoHideNote = ##t
	\tempo "Andante" 16 = 75
	\tupletUp

	R1*21/16 |
	r8 g8.^\markup{\dynamic p\italic cantabile} a16 f es g,8 c es f16 c c8 b c16 |
	r8 c'16 f, g es es' <c g g'>-- q8-- <c g c,>4 <d b d,>16-- q4.-- |
	r8 g,8. a16 f e g,8 c e << { f16 c c8 b c16 } \\ f,4.. >> |
	r8 c''16 f, g es es' <c g g'> q8 <c g c,>4 <g es g,>16 q4. |

	d'8\rest \ottava #1 <fis b>16 b, fis <d' fis> fis,
	<d' a'> a fis d d' <d fis> fis,
	\ottava #0 r8 <a d>16 d, a <d fis> fis, |

	g' d fis g, e h' fis
	e' h <d fis> h fis <h d> d,~
	d8.^\markup\roman{pochiss. rit.} d4 |

	d''8\rest \ottava #1 <f a>16 a, f <d' f> f,
	<d' g> g, f d d' <d f> f,
	\ottava #0 r8 <c' e>16 g e <g c> c, |

	h' es,! g g, es! a g
	es' g, <cis f> g cis, <g' b!> cis,~
	cis8.^\markup\roman{pochiss. rit.} d4 |

	r8 <es'' g>16 g, es <a es'> es
	<c' g'> a g es es' <c ges'> ges
	r8 <d' f>16 as d, <e b> b |

	<c' f> f, a! b, g c fis,
	g' es <es a?> <fis,? a> es <a es'> es r4.. |

	r8 <g g'>8. <a a'>16 <f f'>
	<es es'> <g g,>8 <c! c,!> <es es,>
	% TODO: tie
	<f a, es>16 <c f,~ c> <c f,~ c>8 <b f b,> <c f, c>16 |

	r8 \ottava #1 <g' d' g>8. <a a'>16 <f d' f>
	<e b' e> \ottava #0 <g d g,>8 <c g c,> <e c e,>
	<f des f,>16 <des f, des> q8 <c c,> <des des,>16 |

	<f des f,> <des f, des> q8 <c c,> <des des,>16
	<g f des g,> <des g, des> q <c g c,>8 <des g, des>
	\tuplet 3/2 { <des f as as,>16 <des f, des>
	\set stemRightBeamCount = #1 q } q <c f, c>8 <des des,> |

	\set Timing.beatStructure = #'(5 5 5 1 1 1 1 1 1)
	c16\rest \ottava #1 <a! des a'!>^[ <a des des,>~ \tuplet 3/2 { q <a des a'> q] }
	\ottava #0 c\rest \ottava #1 <b f' b>^[ <b des des,>~ \tuplet 3/2 { q <b f' b> q] }
	\ottava #0 c\rest \ottava #1 <h f' h>^[ <h des des,>~ \tuplet 3/2 { q <h f' h> q] }

	\set Score.subdivideBeams = ##t
	\tupletSpan 16
	\times 2/3 {
		r32 <des! f as! des!>[ <c f as c>
		<b des f b> <as des f as> <f as des f>
		<des f as des> <c f as c> <b'! des! f b>
		<as! des f as!> <f as des f> <f as c>\>
	}

	<g h f' g>64 <a~ h~ e> <a h d> des
	<h a f h,> <g h,~ as> <f h,> \clef bass <d! as d,!>]\! |

	\ottava #0 \clef treble \set Timing.beatStructure = #'(2 5 7 7)
	\voiceOne
	<g e d g,>\> <d g, e> des c <f, c> e c32 \set Score.subdivideBeams = ##f
	<g e' g>8.\mf^\markup\italic{sostenuto} <a! a'!>16 <f f'> \clef bass
	<c' es> g8 c es_\markup\italic{dim.} f16 c c8 b c16 |

	\oneVoice
	r8 \clef treble <c c'>16 f g es es' <g c, g> q8 <c, g c,>4~q4..~ |

	q8 \voiceOne <es g>8.^\markup\italic{morendo poco a poco al Fine}
	a16 f <es g,> g,8 c es f16 c c8 b <c a!>16 |

	r8 c'16 f, g es es' <g c, g> q4. <c, b g>16 q4. |
	<g f g,>16 q4. <es d es,>16 q4. <c f, c>16 q4. |
	<g es g,>16 q4. <g f h, g>16 q4. <g es c g>16 q4. |

	\oneVoice
	r8 <c, c'>16 f g es es' <g c, g>16 q4. r8
	\ottava #1 <f f'>16\ppp b c a a' |

	\voiceOne g4.. \oneVoice \ottava #0 r2.. |
}

two = \new Voice = "two" \relative b {
	\voiceOne \mergeDifferentlyDottedOn
	\clef bass
	\key g \minor
	\time 21/16
	\set Timing.beatStructure = #'(7 7 7)

	s8^\p b^\markup\italic{legato} c d16 s8 b a g16 s8 b c d16 |
	s8 b c d16 s8 b a g16 s8 f d' c16 |
	s8 a^\pp b c16 s8 b a g16 s8. g8. f16 |
	s8 e^\p b' d16 s8 b a g16 s8 d g f16 |
	s8 a8^\pp b'8. s4 a,8 g16 s8. d8. c16 |

	\oneVoice
	\change Staff = "RH" <fis' d' fis>[-- \change Staff = "LH" \clef treble
	<d fis d'>]-- <e fis e'>4-- <d fis d'>16~ q <h fis' h>4 <a fis' a>16
	\clef bass <c, c,> <d d,> <e e,> <fis fis,> <h h,>4 |

	\voiceOne
	h8^\markup{\dynamic pp\italic subito} cis8. d8 c4 h8 fis'16 g^\< a\! h^\> h4\! |

	\oneVoice
	\change Staff = "RH" <f! d' f!>16[ \change Staff = "LH" \clef treble
	<d h' d>] <e h' e>4 <d h' d>16~ q <h g' h>4 <a f' a>16
	\clef bass <h, h,>16 <c c,> <d d,> <e e,> <a a,>4 |

	\voiceOne
	a8^\markup{\dynamic pp\italic subito} h8. c8 h4 b8 f'16 g^\< a\! h^\> h4\! |

	% splicing into two systems; avoid spurious clef change
	\set Staff.explicitClefVisibility = #end-of-line-invisible \clef treble

	\oneVoice
	r8 g8.^\mp a16 f es g,8 c es f16 c c8 b c16 |

	% no surprises at next clef change
	\unset Staff.explicitClefVisibility

	r8 c'16--_\p f,-- g-- es!-- es'-- <c g g'>-- q8-- <c c,>4-- <d h d,>16 q4. |

	<f! cis f,>16^\mp <cis b! cis,> <es es,>4 <d d,>16~
	q <b b,>4 <a a,>8^\markup\whiteout\pad-markup #0.5 \italic{poco a poco crescendo et agitato}
	r \ottava #1 <es'' g>16 c! g <d' f> a \ottava #0 |

	<f d b f> <d b d,> <e b e,>4 <d~ a d,~>16
	<d d,> <b e, b>4 <a c, a>8
	r16 <as des,> as, \clef bass des, <as as'> <as des> des, |

	<b! b'!> \clef treble <d'' b'> as \clef bass <des,> <as as'> <d as> d,
	<es! es,!> \clef treble <d'' g> g, \clef bass <b es, b> es,,~ <es b'> b
	<des des,> as' <f' as f'> as' des, <as des,> as, |

	\voiceTwo
	<a! a,!>16 s4 <as as,>16 s4 <g g,>8 s8. s16*6 |
	\change Staff = "RH"
	s64*4 as'32~ as s8. es'8 \clef bass <es, fis>16 c4 <es g>8 f4. <a! f>16 |
	s16*21 |
	s8 g'4\p~ g16~ \hideNotes g16 \unHideNotes
	<< { \hideNotes g~ g4 \unHideNotes } \\ { es8~ <g es>4 } >> f4.. |

	s8  c'8\pp h8. b8[ a] r8. c16 c4. |
	h16 h4. b16 b4. a16 a4. |
	s16*21 | s16*21 |
	<c' c'>16 q4. s2.. |
}

three = \new Voice = "three" \relative es, {
	\voiceTwo \mergeDifferentlyDottedOn
	\clef bass
	\key g \minor
	\time 21/16
	\set Timing.beatStructure = #'(7 7 7)

	es16 b' b' es,\< c'\! g'\> d\!
	es,, b' b' es,\< a\! es'\> g,\!
	es, b' b' es,\< c'\! g'\> d\! |

	es,, b' b' es, c' g' d
	es,, b' b' es, a g' g,
	es, b' f' es d' g c, |

	es,, b' a' es b' g' c,
	es,, c' b' es, a g' g,
	g, d' b' g b' d, f, |

	c, g' e' c b' f' d
	b,, c' b' e, a g' g,
	a,, d d' a g' c f, |

	d, a' a' d, b'' f g,
	c,, g' f' e a g' g,
	c,, g' e' d e' g, c, |

	<c c,>^\mp s16*20 |
	a4..~ a16 g fis4~ fis16 e8. h4 |

	<h h'>16^\mp s16*20 |
	g'4..~ g16 f es!4~ es16 d8. g,4 |

	\new Staff = "aux" {
		\break

		\clef bass

		% remove key change and spurious time signature
		\set Staff.explicitKeySignatureVisibility = ##(#f #f #t)
		\omit Staff.TimeSignature
		\key g \minor

		<es es'>16 b'' b' es, c'~ c g
		c c, c, es' a, ges' as,
		d, as' c' d, g, c g'' |

		a! f,, g'' d b a as
		es,, es' c' d, a'' fis d,
		<< { s8 g' a h16 } \\ { g,, g' g' d a' g' h, } >> |

		<< { s8 b c! d16 } \\ { <es,, es,> b'! b'es, c' g' d } >>
		<g,, g,> d' es <b b'> g ges ges, <f f'>4.. |

		<b b'>8. b''16 b, e, \acciaccatura d8 d16
		<g g,>8 g'16 <c, c,> b' a f, <h h,>4.. |

		\break
	}

	s16*21 |

	\stemDown \change Staff = "RH" \tuplet 3/2 { <g' des' f a!>16[  \stemUp \change Staff = "LH"
	<f a! des f> <f a des f> } <f g des' f> <e e'> <f des' f>]

	\stemDown \change Staff = "RH" \tuplet 3/2 { <b des f b>[ \stemUp \change Staff = "LH"
	<f b des f> q } <f as des f> <e e'> <f as d f>]

	\stemDown \change Staff = "RH" \tuplet 3/2 { <h des f h>[ \stemUp \change Staff = "LH"
	<f h des f> q } <f g des' f> <e e'> <f f'>]

	\stemNeutral

	\oneVoice \tupletSpan 16
	\times 2/3 {
		\ottava #-1 <c, c,>32[^\ff \ottava #0 \clef treble <b''' f' as> <c f as>
		<f des g,> <f des as> <des as es>
		<as f> <as f b,!> <f des g,>
		\clef bass <f des as> <des as es> <c as d,>
	}

	\ottava #-1 <c,, c,>64 \ottava #0 <c'~ f~ e'> <c f d'> des'
	\ottava #-1 <c,, c,> \ottava #0 <a'~ d~ g> <a d f> f] |

	\set Timing.beatStructure = #'(2 5 7 7) 
	\ottava #-1 \stemDown <c c,> \ottava #0 <d'' a!~ e~> <des a e> c
	<f, c~ g~> <e c g> <c e,> \ottava #-1 <c, c,>~ \stemNeutral q4~ q16
	<d d,> <es es,>4 \ottava #0 <c c'>8 <a a'> <as as'> <g g'> <f f'>16 |

	<< {
		s4.. r8 b''16~\noBeam b8 a s8 c,^\< d\> es16\! |
		r16 b'~ b4( a16) des c8 b a as4 g8 f16 |
	} \\ {
		\oneVoice \stemDown
		<es, es,>4..~ q~ q8\noBeam \voiceTwo c'16 g d' c' es,~ |
		es8 <es c'>4~ <es~ c'>16 <es~ a>8. es4 <es c'>4.. |
	} >>

	\set Timing.beatStructure = #'(2 5 2 5 2 5)
	<es es,>4..~ q8
	<< {
		c'8 d es16 s8 g a b16 |
		s8 d, c h16 s8 g f es16 s8 c b! a16 |
		s8 g a b16 s8 h c d16 s8 es f g16 |
		s4.. s8 c d es16 s4.. |
	} \\ {
		c16_\< g d'\! c'\> es,\! \oneVoice r8 \voiceTwo \clef treble
		g16\< es a\! g'\> b,\! \clef bass |
		\oneVoice <es,,, es,>8 \voiceTwo d''16 es, c' g' h,
		\oneVoice r8 \voiceTwo g16 g, f' c' es,
		\oneVoice es,,8 \voiceTwo c''16 es, b'! f' a, |
		\oneVoice <es es,>8 \voiceTwo g16 c, a' es' b
		\oneVoice r8 \voiceTwo h16 es, c' g' d
		\oneVoice es,,8 \voiceTwo es''16 g, f' c' g |
		\oneVoice <a c, es,>16 <a c, a>4.
		<es g es'>16 r \voiceTwo c' g d' c' es,16 \clef treble
		\oneVoice <es f a c>4.. |
	} >>
	
	<es g es'>4.. \clef bass <es,, es,>2.. | \bar "|."
}

\score {
	\new PianoStaff <<
		\new Staff = "RH" << \one >>
		\new Staff = "LH" << \two \three >>
	>>

	\layout {
		\context {
			\PianoStaff \RemoveEmptyStaves
		}
	}
}

\score {
	\new PianoStaff <<
		\new Staff = "RH" << \unfoldRepeats \one >>
		\new Staff = "LH" << \unfoldRepeats \two \unfoldRepeats \three >>
	>>

	\midi {}
}
