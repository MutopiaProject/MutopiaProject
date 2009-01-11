\version "2.10.10"

\header {
	title = "Quell'alma superba"
	composer = "A. Vivaldi (1648-1741)"
	mutopiatitle = "Quell'alma superba, Aria from Serenata a tre"
	mutopiacomposer = "VivaldiA"
	mutopiainstrument = "Voice (Tenor), Bassoon, String Ensemble, Basso Continuo"
	mutopiaopus = "RV 690" 
	date = "1718?"
	source = "Autograph, 1718?"
	style = "Baroque"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Björn Sothmann"
	maintainerEmail = "bjoerns@tp3.rub.de"
	maintainerWeb = "http://www.tp3.rub.de/~bjoerns"
 footer = "Mutopia-2007/03/24-938"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

verse= \lyricmode {
Dell' al -- ma su -- per -- ba la fiam -- ma ri -- ser -- ba la fiam -- ma ri -- ser -- ba dell' al -- ma su -- per -- ba per chi può_in -- al -- zar -- ti per chi può_in -- al -- zar -- ti d'un so -- glio_al ful -- gor d'un so -- glio_al ful -- gor. Dall' al -- ma su -- per -- ba la fiam -- ma ri -- ser -- ba per chi può_in -- al -- zar -- ti per chi può_in -- al -- zar -- ti d'un so -- glio d'un so -- glio d'un so -- glio_al ful -- gor d'un so -- glio_al ful -- gor. Nè per -- der l'a -- mo -- re del gran -- de tuo co -- re del gran -- de tuo co -- re del gran -- de tuo co -- re con vi -- le pa -- stor nè per -- der l'a -- ma -- re del gran -- de tuo co -- re con vi -- le pa -- stor con vi -- le pa -- stor.
}
 

staffBassoon = \new Staff  {
	\time 2/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 90
	\set Staff.instrumentName="Fagotto, e Violini, Viola unisono sempre"
	\set Staff.midiInstrument="bassoon"
	\key b \major
	\clef bass
	\relative c { 	
		r4 f8 b |
		b a16 b c8 es, |
		es\trill d b c |
		d\trill c16 b d8 es |
		f4 f8 b |
		b a16 b c8 es, |
		es\trill d b c |
		d\trill c16 b d8 es |
		f4 r16 f g a |
		b8 b b16 c d es |
		f8 f16 es f8 a, |
		g es'16 d es8 g, |
		f d'16 c d8 f, |
		es c'16 b c8 es, |
		es\trill d b' d, |
		es\trill d b' d, |
		es\trill d b' b, |
		c\trill b b' b, |
		c\trill b b16 c d es |
		f8.\trill d16 es f g a |
		b8.\trill a16 b c d es |
		f es d c d c b a |
		b a g f g f es d |
		es d c b f'8 f, |
		b2\trill~ |
		b4 f'8 b |
		b a16 b c8 es, |
		es\trill d b c |
		d\trill c16 b d8 es |
		f4 f8 b |
		b a16 b c8 es, |
		es\trill d b c |
		d\trill c16 b d8 es |
		f4 r16 f g a b8 f d c16 b |
		g'8\prall f f16 f g a |
		b8 b b16 c d es |
		f8 f16 es f8 a, |
		g es'16 d es8 g, |
		f d'16 c d8 f, |
		es c'16 b c8 es, |
		es\trill d b' d, |
		es\trill d b' d, |
		es8.\trill d16 es f g a |
		b8.\trill a16 b c d es |
		f8 f, r16 g a b |
		c8 b16 a b c d e |
		f4 f8 f |
		f16 e d c d c b a |
		b a g f g f e d |
		c8 e f b |
		b a16 b c b a g |
		f4 r8 b |
		b a16 b c b a g |
		f4 f8 b |
		b a16 b c8 es, |
		es\trill d b c |
		d\trill c16 b d8 es |
		f4 f8 b |
		b a16 b c8 es, |
		es\trill d b c |
		d\trill c16 b d8 es |
		f4 r16 f g a |
		b8 c16 d es d c b |
		a8 f f4 |
		d16 f b f d f b f |
		es g b g es g b g |
		d f b f d f b f |
		es g b g es g b g |
		e g c g e g c g |
		f a c a f a c a |
		e g c g e g c g |
		a8 f r d' |
		es es, d d' |
		c c, b c' |
		a a, g g' |
		f16 g a f g a b g |
		a b c a b c d b |
		a8.\trill g16 f es d c |
		b8.\trill a16 b c d es |
		f8.\trill d16 es f g a |
		b8. a16 b c d es |
		f es d c d c b a |
		b a g f g f es d |
		es f g a b8 es |
		es d16 es f es d c |
		b4 r8 es, |
		es d16 es f es d c |
		b4 f'8 b |
		b a16 b c8 es, |
		es\trill d b c |
		d\trill c16 b d8 es |
		f4 f8 b |
		b a16 b c8 es, |
		es\trill d b c |
		d\trill c16 b d8 es |
		f4 r16 f g a |
		b8 b b16 c d es |
		f8 f, es es' |
		d d, c c' |
		b b, a a' |
		g f16 es f8 es16 d |
		es8\trill d b' d, |
		es\trill d b' d, |
		es8.\trill d16 es f g a |
		b8.\trill a16 b c d es |
		f es d c d c b a |
		b a g f g f es d |
		es8 d16 es f es d c |
		d8 b b es |
		es d16 es f es d c |
		d8 b b es |
		es d16 es f es d c |
		b4\fermata r8 g' |
		b a16 b g8 a |
		b a16 b g8 b |
		c b16 c a8 d |
		b16 c d b g a b g |
		fis g a fis d8 d' |
		es es, d d' |
		c c, b b' |
		a a, g g' |
		fis e16 d b'8 g |
		fis e16 d b'8 g |
		fis d fis d g c, d d, |
		g16 a b g a b c a |
		b c d b c d es c |
		d8 g, g d' |
		d4\trill~ d16 e f g |
		a8 a, r cis |
		d\trill cis a' cis, |
		d\trill cis a' cis, |
		d\trill cis f cis |
		d e f d |
		g f16 g a g f e |
		d8 e f d |
		g f16 g a g f e |
		d2 |

	\bar "|."
	}

}
staffTenor = \new Staff  {
	\set Staff.instrumentName="Alcindo"
	\set Staff.midiInstrument="oboe"
	\key b \major
	\clef "G_8"
	\relative c' { 	
		\context Voice = "melodyTen" {
			\dynamicUp
			\autoBeamOff
			R2*25 |
			r4 r8 f |
			d4 es8. es16 |
			f4 b,8 es |
			f[ es16 d] c8 b |
			a[ g] f f' |
			d4 es8. es16 |
			f4 b,8 es |
			f[ es16 d] c8 b |
			a[ g] f4 |
			R2 |
			r4 r8 f |
			b4 b16[ c] d[ es] |
			f8[\melisma f16 es f8 a,] |
			g[ es'16 d es8 g,] |
			f[ d'16 c d8 f,] |
			es[ c'16 b c8 es,] |
			es\trill[ d b' d,] |
			es\trill[ d b' d,] |
			es8.[ d16 es f g a] |
			b8.[ a16 b c d es] |
			f4\melismaEnd f, |
			r r8 c' |
			f4 f8 f |
			f16[\melisma e d c] d[ c b a] |
			b[ a g f] g[ f e d] |
			c8 e\melismaEnd f b |
			b[ a16 b] c[ b] a[ g] |
			f4 r8 b |
			b[ a16 b] c16[ b] a[ g] |
			f4 r |
			R2*3 |
			r4 r8 f' |
			d4 es8. es16 |
			f4 b,8 es |
			f[ es16 d] c8 b |
			a[ g] f4 |
			R2 |
			r4 r8 f |
			b4 b8 b |
			b2~ |
			b |
			b4 r8 g |
			c4 c8 c |
			c2~ |
			c |
			c4 r8 f |
			g4\melisma f |
			es d |
			c b |
			a16[ b c a] b[ c d b] |
			c[ d es c] d[ es f d] |
			c8\melismaEnd f, r4 |
			r r8 b |
			a8[\melisma g16 f g a b c] |
			d8.[ c16 d es f g] |
			f[ es d c] d[ c b a] |
			b[ a g f] g[ f es d] |
			es[ f g a]\melismaEnd b8 es |
			es[ d16 es] f[ es] d[ c] |
			b4 r8 es |
			es8[ d16 es] f[ es] d[ c] |
			b4 r |
			R2*24 |
			r4 r8 g |
			b[ a] g a |
			b[ a] g b |
			c[ b] a d |
			b[ a] g4 |
			r r8 d' |
			es4 d8 d |
			c4 b8 b |
			a4 g8 g |
			fis[\melisma e16 d b'8 g] |
			fis[ e16 d b'8 g] |
			fis[ e16 d]\melismaEnd d'8 c |
			b4 a8\trill g |
			g4 r |
			R2 |
			r4 r8 d' |
			d[ f] e d |
			cis[ h] a a |
			a2~ |
			a~ |
			a8[ h16 cis] d8 e |
			f[ e] d a |
			b4 e,8 cis' |
			d4 r8 a |
			b4 e,8 cis' |
			d2\fermata |
		}

	\bar "|."
	}

}
staffCello = \new Staff  {
	\set Staff.instrumentName="Violone solo"
	\set Staff.midiInstrument="contrabass"
	\key b \major
	\clef bass
	\relative c { 	
		b4 b |
		b a |
		b b8 c |
		d c16 b d8 es |
		f4 b, |
		b a |
		b b8 c |
		d c16 b d8 es |
		f4 f8 es |
		d4 d8 c |
		b4 r8 f' |
		es4 r8 es |
		d4 r8 d |
		c4 c8 c |
		b4 b |
		b b |
		b b |
		b b |
		b b |
		a a |
		g g |
		f f' |
		d b |
		es16 d c b f'8 f, |
		b b' b, b |
		b4 b |
		b r8 c |
		b4 b8 c |
		d c16 b d8 es |
		f4 b, |
		b r8 c |
		b4 b8 c |
		d c16 b d8 es |
		f4 f8 es |
		d d d c16 b |
		b4 f'8 es |
		d4 d8 c |
		b4 r8 f' |
		es4 r8 es |
		d4 r8 d |
		c4 r8 c |
		b4 r8 b |
		b4 r8 b |
		b4. a8 |
		g4. g8 |
		f f' e d |
		c4. b8 |
		a b a g |
		f4 f' |
		d b |
		c8 b a g |
		f4 c' |
		f,8 c'16 b a8 g |
		f4 c' |
		f, b |
		b a |
		b b8 c |
		d c16 b d8 es |
		f4 b, |
		b r8 c |
		b4 b8 c |
		d c16 b d8 es |
		f4 f8 es |
		d4 c8 d16 es |
		f4 f8 es |
		d4. d8 |
		es4. es8 |
		d4. d8 |
		es4. es8 |
		e4. e8 |
		f4. f8 |
		e4. e8 |
		f4 r8 d' |
		es es, d d' |
		c c, b b' |
		a a, g g' |
		f4 g |
		a b |
		a f |
		b,4. b8 |
		f'4. f8 |
		b4 a8 g |
		f4 f |
		d b |
		es r8 es |
		a, b f' f, |
		b4 r8 es |
		a, b f' f, |
		b4 b |
		b a |
		b b8 c |
		d c16 b d8 es |
		f4 b, |
		b a |
		b b8 c |
		d c16 b d8 es |
		f4 f8 es |
		d4 d8 c |
		b f' es4 |
		d c |
		b a |
		g f |
		b b |
		b b |
		es4. es8 |
		d4 c8 b |
		a4 f' |
		d b |
		a8 b f' f, |
		b4 r8 es |
		a, b f' f, |
		b4 r8 es |
		a, b f' f, |
		b4\fermata r8 g |
		g4 r8 d' |
		g,4 r8 g' |
		a4 r8 fis |
		g4 g, |
		d' r8 d' |
		es4 d |
		c b |
		a g |
		d g, |
		d' g, |
		d'4. d8 |
		g8 c, d d, |
		g4 a |
		b c |
		d8 g, g d' |
		d4~ d16 e f g |
		a8 a, r a |
		d a r a |
		d a r a |
		d a r a |
		d e f d |
		g,4 a |
		d8 e f d |
		g,4 a |
		d,2\fermata |

	\bar "|."
	}

}


\score {
	<<
		\staffBassoon
		\staffTenor
		\context Lyrics = "lmelodyTen" \lyricmode  { \lyricsto "melodyTen" \verse }
		
		\staffCello
	>>
	
	
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 90 4)
      }
    }



	\layout  {
	}
}

\paper {
}

