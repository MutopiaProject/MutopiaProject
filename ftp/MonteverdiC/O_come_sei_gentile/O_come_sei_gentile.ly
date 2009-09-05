\version "2.12.2"

\header {
	title = "O come sei gentile"
	subtitle = "A Doi Soprani"
	composer = "Claudio Monteverdi (1567-1643)"
	mutopiatitle = "O come sei gentile, Madrigale a 2 Soprani"
	mutopiacomposer = "MonteverdiC"
	mutopiainstrument = "Voice (SS), Basso Continuo"
	source = "Concerto. Settimo Libro di Madrigali a l. 2. 3. 4. & Sei voci, con altri generi de Canti, di Claudio Monteverde Maestro di Capella della Serenissima Republica Nouamente Dato in Luce. Dedicato alla Serenissima Madama Caterina Medici Gonzaga Duchessa di Mantoua di Monferrato &c. Stampa del Gardano. In Venetia. 1619. Appresso Bartolomeo Magni."
	style = "Baroque"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Björn Sothmann"
	maintainerEmail = "bjoern.sothmann@rub.de"
	maintainerWeb = "http://www.thp.uni-due.de/~bjoerns"

 footer = "Mutopia-2009/09/05-1696"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2009. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

verseI= \lyricmode {
O co -- me sei gen -- ti -- le Ca -- ro_Au -- ge -- li -- no o co -- me sei gen -- ti -- le O co -- me sei gen -- ti -- le ca -- ro_Au -- ge -- li -- no O O quan -- to quan -- to el mio sta -- to_a -- mo -- ro -- so_al tuo si -- mi -- le quan -- to el mio sta -- to_a -- mo -- ro -- so_al tuo si -- mi -- le io pri -- gion tu pri -- gion tu can -- ti tu can -- ti per co -- lei tu can -- ti per co -- lei che t'ha le -- ga -- to Et io can -- to per lei Ma_in que -- sto è dif -- fe -- ren -- te la mia sor -- te do -- len -- te Che gio -- va pur a te che gio -- va pur a te l'es -- ser ca -- no -- ro vi -- vi can -- tan -- do vi -- vi can -- tan -- do vi -- vi can -- tan -- do et io can -- tan -- do et io can -- tan -- do mo -- ro vi -- vi can -- tan -- do vi -- vi can -- tan -- do vi -- vi can -- tan -- do et io can -- tan -- do et io can -- tan -- do et io can -- tan -- do mo -- ro.
}

verseII= \lyricmode {
O co -- me sei gen -- ti -- le O co -- me sei gen -- ti -- le ca -- ro_Au -- ge -- li -- no O O quan -- to quan -- to el mio sta -- to_a -- mo -- ro -- so_al tuo si -- mi -- le tu pri -- gion io can -- to tu can -- ti per co -- leo che t'ha le -- ga -- to Et io can -- to per lei Ma_in que -- sto è dif -- fe -- ren -- te La mia sor -- te do -- len -- te Che gio -- va pur a te l'es -- ser ca -- no -- ro vi -- vi can -- tan -- do vi -- vi can -- tan -- do vi -- vi can -- tan -- do et io can -- tan -- do mo -- ro vi -- vi can -- tan -- do vi -- vi can -- tan -- do vi -- vi can -- tan -- do Et io can -- tan -- do et io can -- tan -- do mo -- ro.
}
 

staffSopranoI = \new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 100 
	\set Staff.instrumentName="Canto I"
	\set Staff.midiInstrument="oboe"
	\key f \major
	\clef treble
	\relative c'' { 	
		\context Voice = "melodySopI" {
			\dynamicUp
			\autoBeamOff
			g8.[\melisma d16] e[ d e f] g8.[ f16] g[ f g a] |
			b8.[ a16] b16[ a b c] d2~ |
			d4\melismaEnd c8 b a4. g8 |
			a2 a |
			r4 d2 c8 a |
			b2 b |
			r b~ |
			b4 a8 g g4. g8 |
			fis2 fis |
			b8.[\melisma f16] g[ f g a] b8.[ a16] b[ a b c] |
			d8.[ c16] d[ c d e] f2~ |
			f\melismaEnd e8 d c8. b16 |
			c2 c4 d~ |
			d2. c8 a |
			b4.\melisma a8 b[ a b c]\melismaEnd |
			a1 |
			r2 r8 g[\melisma a b] |
			c4\melismaEnd r8 a\melisma b[ c d e] |
			f2\melismaEnd e |
			d1 |
			d8. d16 c8. c16 b4 a8 g |
			a4. a8 g4 f |
			f4.\melisma e8\melismaEnd f2 |
			f'8. f16 e8. e16 d4 c8 b |
			c4. c8 b4 c |
			g1 |
			f |
			f8[\melisma e d e] f[ g a b] |
			c[ a] d2\melismaEnd cis4 |
			d2 a8[\melisma g f g] |
			a[ b c d] e[ c g' f]\melismaEnd |
			e2 d |
			r4 a d8[\melisma e16 f] c8[ d16 es] |
			b8[ c16 d] g,8[ a16 b] a8.[ b16] a8.[ b16] |
			c8.[ b16] a[ b c a] b8[ c16 d] a8[ b16 c] |
			g8[ a16 b] e,8[ f16 g]\melismaEnd fis2 |
			R1*4 |
			r4 a d16[\melisma c b c] d[ c d e] |
			f8.\melismaEnd f16 e8. d16 c2 |
			r4 a b16[\melisma a g a] b[ a b c] |
			d8.\melismaEnd d16 c8. b16 a2~ |
			a4 a b c |
			d2~\melisma d4. es16[ d] |
			c2~ c4. d16[ c] |
			b2~ b16[ a b a] b[ a b c] |
			b8.[ c16] b8.[ c16] b8.[ a16] b[ a b c]\melismaEnd |
			a2 d4 e |
			f8.[\melisma g16] e8.[ f16] d8.[ f16] e8.[ d16] |
			c8.[ d16] b8.[ c16] a8.[ c16] b8.[ c16] |
			d8.[ es16] c8.[d16] b8.[ d16]c8.[ b16] |
			a4\melismaEnd b a2 |
			g1 |
			r4 b b2 |
			b r8 b b b |
			b4 b c d |
			es2 d |
			c b~\melisma |
			b a\melismaEnd |
			b r4 b |
			b8 b b c d4. d8 |
			d d d e f4 d |
			c b a8.[\melisma g16] a[ b c a] |
			b8.[ a16] b[ c d b] c[ d e d] c[ b a g] |
			f8[ d16 e] f[ g a b] cis8 d4 cis8\melismaEnd |
			d2 a16[\melisma g f g] a[ b c a] |
			b4\melismaEnd b8 a g8.[\melisma f16] g[ a b g] |
			a4\melismaEnd a f16[\melisma e d e] f[ g a f] |
			g4\melismaEnd g8 f e4 e |
			c'16[\melisma b a b] c[ d e c] d4\melismaEnd d8 c |
			b8.[\melisma a16] b[ c d b] c4\melismaEnd c |
			r8 a f f b4 b |
			r8 c a a d2~ |
			d4 f, e2 |
			d1 |
			a'8.[\melisma g16] f8.[ g16] a8.[ g16] a[ b c a] |
			b8.[ c16] d8.[ c16] b4\melismaEnd b8 a |
			g8.[\melisma f16] es8.[ f16] g8.[ f16] g[ a b g] |
			a2\melismaEnd a |
			f8.[\melisma e16] d8.[ e16] f8.[ e16] f[ g a f] |
			g8.[ a16] b8.[ a16] g4\melismaEnd g8 f |
			e2 e |
			c'8.[\melisma b16] a8.[ b16] c8.[ b16] c[ d e c] |
			d8.[ e16] f8.[ e16] d4\melismaEnd d8 c |
			b8.[\melisma a16] g8.[ a16] b8.[ a16] b[ c d h] |
			c4\melismaEnd c a f8 f |
			b4 b r8 c a a |
			d4 d r8 es c c |
			f8.[\melisma e16] f[ e d c] d4\melismaEnd b |
			a1 |
			g |
		}

	\bar "|."
	}

}
staffSopranoII = \new Staff  {
	\set Staff.instrumentName="Canto II"
	\set Staff.midiInstrument="oboe"
	\key f \major
	\clef treble
	\relative c'' { 	
		\context Voice = "melodySopII" {
			\dynamicUp
			\autoBeamOff
			R1*5 |
			g8.[\melisma d16] e[ d e f] g8.[ f16] g[ f g a] |
			b8.[ a16] b[ a b c] d2~ |
			d4\melismaEnd c8 b a4. g8 |
			a2 a |
			r b8.[\melisma f16] g[ f g a] |
			b8.[ a16] b[ a b c] d2~ |
			d\melismaEnd c8 b a8. g16 |
			a2 a |
			a a4 a |
			g4.\melisma fis8 g[ fis g a]\melismaEnd |
			fis1 |
			r8 fis[\melisma g a] b2\melismaEnd |
			r8 a[\melisma b c] d[ e f g] |
			cis,4\melismaEnd d2\melisma cis4\melismaEnd |
			d1 |
			R1*3 |
			d8. d16 c8. c16 b4 a8 g |
			a4. a8 g f f4~\melisma |
			f e8[d] e2\melismaEnd |
			f1 |
			R1*2 |
			r2 f8[\melisma e d e] |
			f[ g a b] c[ a] d4~ |
			d\melismaEnd cis d2 |
			R1*4 |
			r4 a b8.[\melisma c16] d8.[ e16] |
			f8.[ b,16] a8.[ g16] f8.[ g16] a8.[ b16] |
			c8.[ c16] b8.[ a16] g8.[ a16] b8.[ c16] |
			d8.[ b16] a8.\melismaEnd g16\melisma fis2\melismaEnd |
			R1 |
			r4 f a16[\melisma g f g] a[ g a b] |
			c8.\melismaEnd c16 b8. a16 g2 |
			R1 |
			r4 f g a |
			b4.\melisma c16[ b] a2~ |
			a4. b16[ a] g2~ |
			g16[ fis g fis] g[ fis g a] g2~ |
			g8.[ a16] g8.[ a16] g8.[ fis16] g[ fis g a]\melismaEnd |
			fis2 r |
			r f4 g |
			a8.[\melisma b16] g8.[ a16] f8.[ a16] g8.[ a16] |
			b8.[ c16] a8.[ b16] g8.[ b16] a8.[ g16] |
			fis4\melismaEnd g2 fis4 |
			g1 |
			r4 g g2 |
			g r8 g g g |
			g4 g r2 |
			g4 a b2 |
			c d |
			es\melisma f\melismaEnd |
			d1 |
			r2 r4 b |
			b8 b b c d2 |
			r r4 f |
			e d c8.[\melisma b16] c[ d e c] |
			d8.[ c16] d[ e f d] e2\melismaEnd |
			d r |
			d16[\melisma c b c] d[ e f d] es4\melismaEnd es8 d |
			c8.[\melisma b16] c[ d e c] d4\melismaEnd d |
			b16[\melisma a g a] b[ c d b] c4\melismaEnd c8 b |
			a4 a f16[\melisma e d e] f[ g a f] |
			g4\melismaEnd g8 f e8.[\melisma d16] e[ f g e] |
			f4\melismaEnd f r8 b g g |
			c2 f,4 d~\melisma |
			d2 cis\melismaEnd |
			d1 |
			R1 |
			d'8.[\melisma c16] b8.[ c16] d8.[c16] d[ e f d] |
			es8.[ f16] g8.[ f16] es4\melismaEnd es8 d |
			c8.[\melisma b16] a8.[ b16] c8.[ b16] c[ d e c] |
			d2\melismaEnd d |
			b8.[\melisma a16] g8.[ a16] b8.[ a16] b[ c d h] |
			c8.[ d16] e8.[ d16] c4\melismaEnd c8 b |
			a2 a |
			f8.[\melisma e16] d8.[ e16] f8.[ e16] f[ g a f] |
			g8.[ a16] b8.[ a16] g4\melismaEnd g8 f |
			e8.[\melisma d16] e[ f g e] f4\melismaEnd f |
			r8 b g g c4 c |
			r8 d b b es8.[\melisma d16] es[ d c b] |
			a2\melismaEnd fis4 g~ |
			g\melisma fis8[ e] fis2\melismaEnd |
			g1 |
		}

	\bar "|."
	}

}
staffBasso = \new Staff  {
	\set Staff.instrumentName="Basso"
	\set Staff.midiInstrument="harpsichord"
	\key f \major
	\clef bass
	\relative c' {
		g1 |
		g |
		es |
		d~ |
		d2 fis |
		g1~ |
		g |
		es |
		d |
		b~ |
		b |
		b4 c d e |
		f1 |
		fis |
		g |
		d |
		d2 g |
		f b |
		a1 |
		d, |
		d4 a' b2 |
		f b,4 a |
		c2 f, |
		d'4 a' b2 |
		f b,4 a |
		c1 |
		f, |
		f |
		f2 a |
		d d~ |
		d4 c8[ b] a4 g |
		a2 d |
		d b4 c |
		d e f g |
		a f g, a |
		b c d2 |
		d b4 c |
		d e f g |
		a f g, a |
		b c d2 |
		d b4 c |
		d e f g |
		a f g, a |
		b c d2 |
		d c |
		b f'~ |
		f g |
		g1~ |
		g |
		d2 d4 c |
		b c d e |
		f g a f |
		g, a b c |
		d1 |
		g, |
		g' |
		g |
		g2 es4 d |
		c2 b |
		a g |
		f1 |
		b |
		b |
		b'2 b |
		a4 g f2 |
		g a |
		d, a |
		d d |
		g, c |
		f, b |
		g c |
		f, b |
		g c |
		f, g |
		a b |
		a1 |
		d |
		d |
		g, |
		c |
		f, |
		b |
		g |
		c |
		f, |
		b |
		g |
		c2 f, |
		g a |
		b c |
		d1~ |
		d |
		g, |
	\bar "|."
	}

}


\score {
	<<
		\staffSopranoI
		\context Lyrics = "lmelodySopI" \lyricmode  { \lyricsto "melodySopI" \verseI }
		
		\staffSopranoII
		\context Lyrics = "lmelodySopII" \lyricmode  { \lyricsto "melodySopII" \verseII }
		
		\staffBasso
	>>
	
	\midi {
	}

	\layout  {
	}
}

\paper {
}

