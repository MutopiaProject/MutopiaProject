\version "2.12.2"

\header {
	title = "Dolcissima mia vita"
	composer = "Carlo Gesualdo (1566-1613)"
	mutopiatitle = "Dolcissima mia vita"
	mutopiacomposer = "GesualdoC"
	mutopiainstrument = "Voice (SSATB)"
	date = "1611"
	source = "Partitura delli sei libri de' Madrigali a cinque voci, Dell'Illustrissimo, & Eccellentiss. Prencipe di Venosa, D. Carlo Gesualdo. Fatica di Simone Molinaro Maestro di Capella nel Duomo di Genoua. - In Genova, Appresso Giuseppe Pavoni. 1613."
	style = "Renaissance"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Björn Sothmann"
	maintainerEmail = "bjoern.sothmann@rub.de"
	maintainerWeb = "http://www.thp.uni-due.de/~bjoerns"
 footer = "Mutopia-2009/10/14-1716"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2009. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

verseC= \lyricmode {
Dol -- cis -- si -- ma mia vi -- ta mia vi -- ta A che tar -- da -- te la bra -- ma -- ta_a -- i -- ta a -- i -- ta Cre -- de -- te for -- se on -- d'ar -- do on -- d'ar -- do sia per fi -- nir sia per fi -- nir per -- che tor -- ce -- te_il guar -- do per -- che tor -- ce -- te'l guar -- do Ahi non sia mai che bra -- ma il mio de -- si -- re O d'a -- mar -- ti O d'a -- mar -- ti_ò mo -- ri -- re ò mo -- ri -- re ò mo -- ri -- re ò mo -- ri -- re ò mo -- ri -- re.
}

verseQ= \lyricmode {
Dol -- cis -- si -- ma mia vi -- ta mia vi -- ta A che tar -- da -- te la bra -- ma -- ta_a -- i -- ta a -- i -- ta Cre -- de -- te for -- se on -- d'ar -- do on -- d'ar -- do Sia per fi -- nir per -- che tor -- ce -- te'l guar -- do tor -- ce -- te'l guar -- do per -- che tor -- ce -- te'l guar -- do Ahi non sia mai che bra -- ma_il mio de -- si -- re O d'a -- mar -- ti O d'a -- mar -- ti_ò mo -- ri -- re ò mo -- ri -- re ò mo -- ri -- re ò mo -- ri -- re ò mo -- ri -- re.
}

verseA= \lyricmode {
Dol -- cis -- si -- ma mia vi -- ta mia vi -- ta A che tar da -- te tar -- da -- te a -- i -- ta Cre -- de -- te for -- se che'l bel fo -- co on -- d'ar -- do Sia per fi -- nir Sia per fi -- nir per -- che per -- che tor -- ce -- te'l guar -- do per -- che tor -- ce -- te'l guar -- do Ahi non sia mai che bra -- ma_il mio de -- si -- re O d'a -- mar -- ti O d'a -- mar -- ti_ò mo -- ri -- re ò mo -- ri -- re ò mo -- ri -- re ò mo -- ri -- re.
}

verseT= \lyricmode {
Dol -- cis -- si -- ma mia vi -- ta mia vi -- ta A che tar -- da -- te A che tar -- da -- te la bra -- ma -- ta_a -- i -- ta a -- i -- ta Cre -- de -- te for -- se che'l bel fo -- co che'l bel fo -- co_on -- d'ar -- do Sia per fi -- nir per -- che tor -- ce -- te'l guar -- do per -- che tor -- ce -- te'l guar -- do Ahi non sia mai che bra -- ma_il mio de -- si -- re O d'a -- mar -- ti O d'a -- mar -- ti ò mo -- ri -- re ò mo -- ri -- re ò mo -- ri -- re ò mo -- ri -- re.
}

verseB= \lyricmode {
Dol -- cis -- si -- ma mia vi -- ta mia vi -- ta A che tar -- da -- te la bra -- ma -- ta_a -- i -- ta a -- i -- ta Cre -- de -- te for -- se che'l bel fo -- co_on -- d'ar -- do Sia per fi -- nir per -- che tor -- ce -- te'l guar -- do Ahi non sia mai che bra -- ma_il mio de -- si -- re O d'a -- mar -- ti O d'a -- mar -- ti ò mo -- ri -- re ò mo -- ri -- re ò mo -- ri -- re.
}

staffSoprano = \new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 100 
	\set Staff.instrumentName="Canto"
	\set Staff.midiInstrument="oboe"
	\key f \major
	\clef treble
	\relative c'' { 	
		\context Voice = "melodySop" {
			\dynamicUp
			\autoBeamOff
			\set Score.measureLength = #(ly:make-moment 4 2)
			d1 es2. es4 |
			h2 c g1 |
			a r2 b |
			d1 e |
			\set Score.measureLength = #(ly:make-moment 4 4)
			R1 |
			\set Score.measureLength = #(ly:make-moment 4 2)
			r4 f, a2. g4 g2 |
			f r r1 |
			r r2 c'4 c |
			cis2. h4 ais2 ais |
			\set Score.measureLength = #(ly:make-moment 6 2)
			r cis e1 cis |
			r2 cis d2. g,4 a2 a |
			\set Score.measureLength = #(ly:make-moment 4 4)
			R1 |
			r4 c f,8[\melisma g16 a] b[ c d e] |
			f4\melismaEnd b, r2 |
			r2 r4 b~ |
			b f8[\melisma g16 a] b[ c d e] f4\melismaEnd |
			d2 d |
			f8 b, b4 r2 |
			r4 es g4. c,8 |
			c4 c d2~ |
			d4 d d2~ |
			d4 d d2 |
			\set Score.measureLength = #(ly:make-moment 6 2)
			cis1 r r2 g |
			\set Score.measureLength = #(ly:make-moment 4 4)
			c4 d es e |
			\set Score.measureLength = #(ly:make-moment 4 2)
			f2 f r g |
			\set Score.measureLength = #(ly:make-moment 4 4)
			r2 cis,4 d |
			a2 r |
			r4 c a8[\melisma b c d] |
			e[ f] g2\melismaEnd g4 |
			r8 d b d g,[\melisma a16 b] c4~ |
			c h\melismaEnd c2 |
			\set Score.measureLength = #(ly:make-moment 4 2)
			r2 g'1 r4 c, |
			\set Score.measureLength = #(ly:make-moment 4 4)
			h2 h |
			\set Score.measureLength = #(ly:make-moment 4 2)
			r2 g'1 r4 c, |
			h2. c2 h4 b2~ |
			\set Score.measureLength = #(ly:make-moment 4 4)
			b a |
			R1 |
			f'4 e es2 |
			d r |
			b4 h c2 |
			des4 d2 es4 |
			e2 fis |
			\set Score.measureLength = #(ly:make-moment 4 2)
			R\breve |
			r1 g2. e4 |
			es1. d2 |
		}

	\bar "|."
	}

}

staffQuinto = \new Staff  {
	\set Staff.instrumentName="Quinto"
	\set Staff.midiInstrument="oboe"
	\key f \major
	\clef treble
	\relative c'' { 	
		\context Voice = "melodyQui" {
			\dynamicUp
			\autoBeamOff
			\set Score.measureLength = #(ly:make-moment 4 2)
			b1 b2. b4 |
			g2 es es4\melisma f g2 |
			g\melismaEnd fis r1 |
			r4 g d2 a'1 |
			\set Score.measureLength = #(ly:make-moment 4 4)
			R1 |
			\set Score.measureLength = #(ly:make-moment 4 2)
			r2 e4 f2 e4 e2~ |
			e4 d r2 r1 |
			r r2 a'4 a |
			ais2 fis fis fis |
			\set Score.measureLength = #(ly:make-moment 6 2)
			r ais cis1 gis |
			r2 a fis4 fis g1 fis2 |
			\set Score.measureLength = #(ly:make-moment 4 4)
			R1 |
			r2 r4 g |
			d8[\melisma e16 f] g[ a b c] d4\melismaEnd a |
			r2 g4 d8[\melisma e16 f] |
			g[ a b c] d2\melismaEnd a4 |
			R1 |
			r2 d,4 d'8 g, |
			g4 g b4. b8 |
			b4 a f g~ |
			g g h4. h8 |
			h1 |
			\set Score.measureLength = #(ly:make-moment 6 2)
			e,1 r\breve |
			\set Score.measureLength = #(ly:make-moment 4 4)
			f2 g8 a b b |
			\set Score.measureLength = #(ly:make-moment 4 2)
			c2 d r d |
			\set Score.measureLength = #(ly:make-moment 4 4)
			r2 e,4 a |
			d,2 r |
			R1 |
			g4 e8[\melisma f] g[ a b c] |
			d\melismaEnd b g4 r a |
			d,2 e |
			\set Score.measureLength = #(ly:make-moment 4 2)
			r2 b'1 f2 |
			\set Score.measureLength = #(ly:make-moment 4 4)
			d2 g |
			\set Score.measureLength = #(ly:make-moment 4 2)
			r2 b1 f2 |
			d4.\melisma e16[ f] g2\melismaEnd a4 gis g2~ |
			\set Score.measureLength = #(ly:make-moment 4 4)
			g f |
			r2 r4 a~ |
			a gis g2~ |
			g4 d r2 |
			R1 |
			r2 g |
			gis4 a2 c4 |
			\set Score.measureLength = #(ly:make-moment 4 2)
			r1 as4 as b2 |
			c r4 f2 e4 d2~\melisma |
			d4 c8[ h] c1\melismaEnd h2 |
		}

	\bar "|."
	}

}

staffAlto = \new Staff  {
	\set Staff.instrumentName="Alto"
	\set Staff.midiInstrument="oboe"
	\key f \major
	\clef treble
	\relative c' { 	
		\context Voice = "melodyAlt" {
			\dynamicUp
			\autoBeamOff
			\set Score.measureLength = #(ly:make-moment 4 2)
			f1 g2. g4 |
			g2. g,4 g1 |
			d' r2 d |
			d1. cis2 |
			\set Score.measureLength = #(ly:make-moment 4 4)
			d4 es2 d4 |
			\set Score.measureLength = #(ly:make-moment 4 2)
			d2 c r1 |
			r2 c c1~ |
			c2 h r1 |
			R\breve |
			\set Score.measureLength = #(ly:make-moment 6 2)
			r2 fis' gis1 eis |
			r2 e d2. d4 d2 d |
			\set Score.measureLength = #(ly:make-moment 4 4)
			d4 e f\melisma g16[ f e d] |
			es2\melismaEnd d |
			R1*2 |
			r4 a' d,4.\melisma e16[ f] |
			g[ a b c] a4\melismaEnd a2 |
			r2 f4 g8 d |
			d g b es, es4 es |
			f2 r4 g, |
			d'2 fis4 g |
			gis a2\melisma gis4\melismaEnd |
			\set Score.measureLength = #(ly:make-moment 6 2)
			a1 r r2 e |
			\set Score.measureLength = #(ly:make-moment 4 4)
			a4 b c8 c b4~\melisma |
			\set Score.measureLength = #(ly:make-moment 4 2)
			b a\melismaEnd b2 r g |
			\set Score.measureLength = #(ly:make-moment 4 4)
			r2 g4 fis |
			fis2 d4 b8[\melisma c] |
			d[ e f e16 d] e8[ f g a16 b] |
			c2.\melismaEnd g4 |
			f8 g d[\melisma e16 f] g4. fis8\melismaEnd |
			g1 |
			\set Score.measureLength = #(ly:make-moment 4 2)
			r2 es1 c2 |
			\set Score.measureLength = #(ly:make-moment 4 4)
			g'2 d |
			\set Score.measureLength = #(ly:make-moment 4 2)
			r2 es1 c2 |
			g' e1 d2 |
			\set Score.measureLength = #(ly:make-moment 4 4)
			c1~ |
			c2 f2 |
			R1*2 |
			f4 g a2 |
			b r |
			r2 d,4 c |
			\set Score.measureLength = #(ly:make-moment 4 2)
			b1 f' |
			es4 es f2 g1~ |
			g\breve |
		}

	\bar "|."
	}

}

staffTenore = \new Staff  {
	\set Staff.instrumentName="Tenore"
	\set Staff.midiInstrument="oboe"
	\key f \major
	\clef "G_8"
	\relative c' { 	
		\context Voice = "melodyTen" {
			\dynamicUp
			\autoBeamOff
			\set Score.measureLength = #(ly:make-moment 4 2)
			b1 b2. es4 |
			d2. c4 c1 |
			a r |
			r4 g g'2 e1 |
			\set Score.measureLength = #(ly:make-moment 4 4)
			r4 g, b2~ |
			\set Score.measureLength = #(ly:make-moment 4 2)
			b4 a a2 c r4 g |
			b2. a4 a1~ |
			a2 gis r e'4 e |
			fis2 d cis cis |
			\set Score.measureLength = #(ly:make-moment 6 2)
			r1 r2 cis2. gis2 gis4 |
			r2 r4 a h2 h a a |
			\set Score.measureLength = #(ly:make-moment 4 4)
			r4 a2 b4 |
			c4\melisma d16[c h a] c4\melismaEnd a |
			r2 b4 d |
			e\melisma f16[ e d c] d2~ |
			d\melismaEnd b4 f8[\melisma g16 a] |
			b[ c d e] fis2\melismaEnd fis4 |
			d4 es8 b b2~ |
			b r |
			r4 a b2~ |
			b4 b4 h4. h8 |
			h1 |
			\set Score.measureLength = #(ly:make-moment 6 2)
			a1 r2 a c2. c4 |
			\set Score.measureLength = #(ly:make-moment 4 4)
			c2 c |
			\set Score.measureLength = #(ly:make-moment 4 2)
			c b r d |
			\set Score.measureLength = #(ly:make-moment 4 4)
			r2 g,4 a |
			a2 r4 g |
			f8[\melisma g a b] c[ d] e4\melismaEnd |
			g4 g2 es4 |
			d2 c |
			R1 |
			\set Score.measureLength = #(ly:make-moment 4 2)
			r2 b1 r4 f |
			\set Score.measureLength = #(ly:make-moment 4 4)
			g2 g |
			r1 b2 r4 f |
			g2 g r1 |
			\set Score.measureLength = #(ly:make-moment 4 4)
			r2 r4 f' |
			e es2 d4 |
			R1 |
			r4 f2 es4 |
			d2 f |
			R1 |
			r4 c r a |
			\set Score.measureLength = #(ly:make-moment 4 2)
			g2 g r r4 b~ |
			b a as2 g1~ |
			g\breve |
		}

	\bar "|."
	}

}

staffBasso = \new Staff  {
	\set Staff.instrumentName="Basso"
	\set Staff.midiInstrument="oboe"
	\key f \major
	\clef bass
	\relative c { 	
		\context Voice = "melodyBas" {
			\dynamicUp
			\autoBeamOff
			\set Score.measureLength = #(ly:make-moment 4 2)
			b1 es2. es4 |
			g2 c, es1 |
			d r2 g |
			b1 a |
			\set Score.measureLength = #(ly:make-moment 4 4)
			R1 |
			\set Score.measureLength = #(ly:make-moment 4 2)
			R\breve |
			d,2 f2. f4 f2 |
			e1 r2 a4 a |
			fis2 h, fis' fis |
			\set Score.measureLength = #(ly:make-moment 6 2)
			r fis cis1. cis2 |
			r2 a d g d d |
			\set Score.measureLength = #(ly:make-moment 4 4)
			R1*2 |
			r2 r4 fis |
			g a\melisma b16[ a g f] g4\melismaEnd |
			g d8[\melisma e16 f] g[ a b c] d4~ |
			d\melismaEnd d r2 |
			r r4 g, |
			b8 es, es4 r2 |
			R1*3 |
			\set Score.measureLength = #(ly:make-moment 6 2)
			r2 a, f'2. f4 f2 e |
			\set Score.measureLength = #(ly:make-moment 4 4)
			f1~ |
			\set Score.measureLength = #(ly:make-moment 4 2)
			f2 b, r b' |
			\set Score.measureLength = #(ly:make-moment 4 4)
			e,2. d4 |
			d2 r |
			r2 r4 e~ |
			e c8\melisma d] e[ f g a] |
			b4.\melismaEnd b8 b4 a |
			g2 c, |
			\set Score.measureLength = #(ly:make-moment 4 2)
			r2 es1 as,2 |
			\set Score.measureLength = #(ly:make-moment 4 4)
			g2 g |
			\set Score.measureLength = #(ly:make-moment 4 2)
			r2 es'1 as,2 |
			g g r d'4 es |
			\set Score.measureLength = #(ly:make-moment 4 4)
			e2 f |
			R1*2 |
			h4 h g2 |
			f1 |
			R1*2 |
			\set Score.measureLength = #(ly:make-moment 4 2)
			r2 es1 d2 |
			c\breve~ |
			c1 g1 |
		}

	\bar "|."
	}

}

\score {
	<<
		\staffSoprano
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \verseC }
		
		\staffQuinto
		\context Lyrics = "lmelodyQui" \lyricmode  { \lyricsto "melodyQui" \verseQ }
		
		\staffAlto
		\context Lyrics = "lmelodyAlt" \lyricmode  { \lyricsto "melodyAlt" \verseA }
		
		\staffTenore
		\context Lyrics = "lmelodyTen" \lyricmode  { \lyricsto "melodyTen" \verseT }
		
		\staffBasso
		\context Lyrics = "lmelodyBas" \lyricmode  { \lyricsto "melodyBas" \verseB }
	>>
	
	\midi {
	}

	\layout  {
	}
}

\paper {
}
