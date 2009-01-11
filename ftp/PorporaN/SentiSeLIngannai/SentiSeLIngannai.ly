% Created on Sun Apr 08 12:32:57 CEST 2007
\version "2.10.20"

\header {
	title = "Senti se l'ingannai"
	composer = "N. Porpora (1686-1768)"
	mutopiatitle = "Senti se l'ingannai, Aria from Agrippina"
	mutopiacomposer = "PorporaN"
	mutopiainstrument = "Voice (Alto), String Ensemble, Basso Continuo"
	date = "1708"
	source = "Copy of various copyists, 1700-1710"
	style = "Baroque"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Björn Sothmann"
	maintainerEmail = "bjoerns@tp3.rub.de"
	maintainerWeb = "http://www.tp3.rub.de/~bjoerns"
 footer = "Mutopia-2007/04/16-961"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

verse= \lyricmode {
Sen -- ti se l'in -- gan -- na -- i scoc -- chi_un ful -- mi -- ne il cie -- lo e qui m'uc -- ci -- da sen -- ti se l'in -- gan -- na -- i se l'in -- gan -- na -- i scoc -- chi_un ful -- mi -- ne il cie -- lo scoc -- chi_un ful -- mi -- ne il cie -- lo e qui m'uc -- ci -- da e qui m'uc -- ci -- da scoc -- chi scoc -- chi scoc -- chi_un ful -- mi -- ne il cie -- lo e qui m'uc -- ci -- da e qui m'uc -- ci -- da. Ma tu pie -- tà non ha -- i al -- ma di sde -- gno ar -- ma -- ta e men -- tre mi que -- re -- lo sol di -- ci_in -- gra -- ta_in -- gra -- ta in -- gra -- ta in -- fi -- da sol di -- ci_in -- gra -- ta_in -- gra -- ta in -- fi -- da in -- fi -- da.
}
 

staffViolin = \new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 80 
	\set Staff.instrumentName="Violino I"
	\set Staff.midiInstrument="violin"
	\key b \major
	\clef treble
	\relative c''' {
		R1 |
		r16 b b b b b b b f4 r |
		r2 r16 f b f b f b f |
		g4 f r16 f b f b f b f |
		b f d f b f d f g b g b f b f a |
		b4 r16 d, d d d4 r |
		r16 es es es as as as as as4 r |
		r16 b g b g b g b es, b' g b es, g es g |
		b, g' es g b, g' es g c, c' c c c c c c |
		c as c as f as f as b, f' f f b g b g |
		es es es es es es es f g es g es as f as f |
		b g, g g g g g g f f f f f f f f |
		r b' g b g b g b es, g b es, b g' b g |
		es c' c c c c c c c as c as c as c as |
		c4 r r16 b f d b f g g |
		es4 c'' r2 |
		r16 g, b g b g b g b b' g b g b g b |
		g b g es b b' g es c c' c c c c c c |
		c as c as c as c as f f f f f f f f |
		b g es b b' g es b b'8 c f,4 |
		g \bar "||" \tempo 4=60 r4 r2 |
		f,8 f f f f f f f |
		g g g g es es es c' |
		c c b b g g g g |
		f f f g a g g fis |
		g h h h c c as as |
		g g g g d d d d |
		g2 

	\bar "|."
	}

}
staffViolinII = \new Staff  {
	\set Staff.instrumentName="Violino II"
	\set Staff.midiInstrument="violin"
	\key b \major
	\clef treble
	\relative c''' {
		R1 |
		r16 g g g g g g g b4 r |
		r2 r16 d, f d f d f d |
		es4 c r16 d f d f d f d |
		f b f d f b f d b g' es g c, f c f |
		d4 r16 f f f f4 r |
		r16 es es es es es es es f4 r |
		r16 es es es es g es g b, g' es g b, es b es |
		g, b' g b es, b' g b es, es es es as es as es |
		as f as f c f c f f, d' d d g es g es |
		c c c c c c c d es b es b f' d f d |
		g es, es es es es es es es es es es d d d d |
		r g' es g es g es g b, es g es g es g es |
		d es es es f f f f as f as f as f as f |
		as4 r r16 f b f d b es, g |
		c,4 as'' r2 |
		r16 es, g es g es g es g g' es g es g es g |
		es g es b g g' es b es es es es es es es es |
		as f as f as f as f d d d d d d d d |
		g es b es g es b es g8 es d4 |
		es r r2 |
		des,8 des des des des des des des |
		c c c c c c c c |
		f f f des' des des c c |
		c c c c c b d, d |
		d d d d c c f f |
		d d c c c c h h |
		c2 

	\bar "|."
	}

}
staffViola = \new Staff  {
	\set Staff.instrumentName="Viola"
	\set Staff.midiInstrument="viola"
	\key b \major
	\clef alto
	\relative c' {
		R1 |
		r16 es g es g es g es f4 r |
		r2 r16 f d f d f d f |
		c4 c r16 f d f d f d f |
		d f b f d f b f es es es es c c f f |
		f4 r16 b f b f4 r |
		r16 es as es as es as c, b4 r |
		r16 g' g g g g g g es es es es es es es es |
		g g g g g g g g as c as c as c as c |
		c, c c c c c c c d f d f es g es g |
		c, c c c c c c c g' g g g d d d d |
		es b b b es es c c b b b b b b b b |
		r es b es b es b es b b b b b b b b |
		c c c c c f c f c c c c c c c c |
		f4 r r16 b, d f b b, b b |
		c4 r r2 |
		r2 r16 b b b b b b b |
		b b b b b b b b c es c es c es c es |
		f c f c f c f c f d f d f d f d |
		es b es g es b es g es8 c b4 |
		b r r r8 c |
		c c c c b b b b |
		b b b b a a a a |
		b b b b b b b b |
		as as as es' d d d d |
		g g g g es es f f |
		g g es es as, as g g |
		g2 

	\bar "|."
	}

}
staffSoprano = \new Staff  {
	\set Staff.instrumentName="Agrippina"
	\set Staff.midiInstrument="oboe"
	\key b \major
	\clef treble
	\relative c'' { 	
		\context Voice = "melodySop" {
			\dynamicUp
			\autoBeamOff
			b4 es,8 b' c g as4 |
			g r b f |
			g8. f16 g8 a b4 f8 d' |
			c b a4 b r |
			R1 |
			b4 f r8 b b b |
			b as r4 r8 as as as |
			as g r4 r b8 as |
			g b16[ as] g[ f] es[ d] c8 c c' b |
			as c16[ b] as[ g] f[ es] es8 d r4 |
			c'2 b4 as |
			g8[ as] b c b as g[ f] |
			es4 r 
			b' es, |
			c' f, r c'8 b |
			as c16[ b] as[ g] f[ es] d8 d r4 |
			c' r b8 as g[ f] |
			es b' g b es, es r4 |
			R1*3 |
			r4 r8 g as as c8. as16 |
			f8 f r4 g8 des'16 c b[ as] g f |
			e8 e r g c ges ges f16[ es] |
			des8 des r b' e, e c'8. as16 |
			f8 f r g fis d'16 c b8[ a] |
			g4 r8 g as as des8. c16 |
			h8 h r c as16[ g] f as es8[ d] |
			c2
		}

	\bar "|."
	}

}
staffCello = \new Staff  {
	\set Staff.instrumentName="Cello"
	\set Staff.midiInstrument="harpsichord"
	\key b \major
	\clef bass
	\relative c {
		es4 r8 g as es f f, |
		r16 es' es es es es es es d4 b |
		es c r16 b b b b b b b |
		es4 f r16 b, b b b b b b |
		d d d d d d d d es es es es f f f f |
		b,4 r16 b' b b b,4 r |
		r16 c c c c c c c d4 r |
		r16 es es es es es es es g g g g g g g g |
		es es es es es es es es as as as as as as as as |
		f f f f f f f f b b b b g g g g |
		as as as as as as as as g g g g f f f f |
		es es es es es es as as b b b b b, b b b |
		r es es es es es es es g g g g g g g g |
		as as as as as as as as as as as as as as g g |
		f4 r r16 b b b b b g g |
		as4 r g8 as b b, |
		es4 r r16 es es es es es es es |
		g g g g g g g g as as as as as as as as |
		f f f f f f f f b b b b as as as as |
		g g g g g g g g g8 as b b, |
		es4 r r r8 c' |
		c c c c b b b b |
		b b b b a a a a |
		b b b b b b b b |
		as as as es d d d d |
		g, g' g g g g f f |
		f f es es f f g g, |
		c2 

	\bar "|."
	}

}


\score {
	<<
		\staffViolin
		\staffViolinII
		\staffViola
		\staffSoprano
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \verse }
		
		\staffCello
	>>
	
	\midi {
	}

	\layout  {
	}
}

\paper {
}

