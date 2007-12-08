% Created on Sun Nov 04 15:57:25 CET 2007
\version "2.10.33"

\header {
	title = "Minuetto"
	composer = "Johann Joachim Quantz (1697-1773)"
	mutopiatitle = "Minuetto"
	mutopiacomposer = "QuantzJJ"
	mutopiainstrument = "Flute"
	source = "Gieddes Samling I,17 mu 6310.0860"
	style = "Baroque"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Björn Sothmann"
	maintainerEmail = "bjoerns@tp3.rub.de"
	maintainerWeb = "http://www.tp3.rub.de/~bjoerns"
 footer = "Mutopia-2007/12/08-1169"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"


staffFlute = \new Staff  {
	\time 3/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 120 
	\set Staff.instrumentName="Flauto"
	\set Staff.midiInstrument="flute"
	\key g \major
	\clef treble
	\relative c'' {
		e4 h8 e g e |
		fis4 h,8 fis' a fis |
		g4 h,8 e g e |
		dis4\trill cis8 dis h4 |
		e h8 e g e |
		fis4 h,8 fis' a fis |
		g fis g a a4\trill |
		h2. \bar ":|:"
		fis4 h8 a h fis |
		g4 e8 fis g e |
		cis4 a'8 g a e |
		fis4 d8 e fis d |
		h4 g'8 fis g d |
		e4 c8 d e c |
		a4 fis'8 g a e |
		\appoggiatura e dis4.\trill cis8 h4 |
		g e'8 fis g e |
		a,4 e'8 fis g e |
		h4 e8 fis g e |
		c4 e8 fis g e |
		g,4 e'8 fis g e |
		a,4 e'8 fis g e |
		h4 dis8 e fis dis |
		e2.
	\bar ":|"
	}

}

staffFluteVarI = \new Staff  {
	\time 3/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 120 
	\set Staff.midiInstrument="flute"
	\key g \major
	\clef treble
	\relative c'' {
		e8 h e h e h |
		fis' h, fis' h, fis' h, |
		g' h, g' h, g' h, |
		dis h dis h dis h |
		e h e h e h |
		fis' h, fis' h, fis' h, |
		g' h, g' h, a' h, |
		h'4 h, r \bar ":|:"
		fis'8 h fis h fis h |
		e, g e g d g |
		cis, a' cis, a' cis, g' |
		d fis d fis cis fis |
		h, g' h, g' h, fis' |
		c e c e h e |
		a, fis' a, fis' a, e' |
		h dis h dis a dis |
		g, e' g, e' g, e' |
		a, e' a, e' a, e' |
		h e h e h e |
		c e c e c e |
		g, e' g, e' g, e' |
		a, e' a, e' a, e' |
		h e h e h dis |
		e4 e, r |
	\bar ":|"
	}

}

staffFluteVarII = \new Staff  {
	\time 3/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 120 
	\set Staff.midiInstrument="flute"
	\key g \major
	\clef treble
	\relative c'' {
		\appoggiatura e16 h2.\trill |
		\appoggiatura fis'16 h,2.\trill |
		\appoggiatura g'16 h,2.\trill |
		\appoggiatura dis16 h2.\trill |
		\appoggiatura e16 h2.\trill |
		\appoggiatura g'16 h,2 a'16 h,8. |
		h'4 h, r \bar ":|:"
		\appoggiatura fis'16 h2.\trill |
		\appoggiatura e,16 g2.\trill |
		\appoggiatura cis,16 a'2.\trill |
		\appoggiatura d,16 fis2.\trill |
		\appoggiatura h,16 g'2.\trill |
		\appoggiatura c,16 e2.\trill |
		\appoggiatura a,16 fis'2.\trill |
		\appoggiatura h,16 dis2.\trill |
		\appoggiatura g,16 e'2.\trill |
		\appoggiatura a,16 e'2.\trill |
		\appoggiatura h16 e2.\trill |
		\appoggiatura c16 e2.\trill |
		\appoggiatura g,16 e'2.\trill |
		\appoggiatura a,16 e'2.\trill |
		\appoggiatura h16 dis2.\trill |
		\appoggiatura e16 e,2.
	\bar ":|"
	}

}

staffFluteVarIII = \new Staff  {
	\time 3/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 120 
	\set Staff.midiInstrument="flute"
	\key g \major
	\clef treble
	\relative c'' {
		e8 h e g h g |
		fis h, dis fis h fis |
		g h, e g fis e |
		dis fis dis cis h dis |
		e h e g e h |
		fis' h, dis fis h fis |
		g e g d c a' |
		h4 h, r \bar ":|:" |
		h'8 a h fis h, a' |
		g fis g h, e, g' |
		a g a e a, g' |
		fis e fis a, d, fis' |
		g fis g d g, fis' |
		e d e g, c e |
		fis e fis c fis, fis' |
		\appoggiatura e dis4. cis8 h4 |
		g8 e' g e g, e' |
		a, e' g e a, e' |
		h e g e h e |
		c e g e c e |
		g, e' g e g, e' |
		a, e' g e a, e' |
		h e fis e h dis |
		e4 e, r |
	\bar ":|"
	}

}

staffFluteVarIV = \new Staff  {
	\time 3/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 120 
	\set Staff.midiInstrument="flute"
	\key g \major
	\clef treble
	\relative c'' {
		e8 h a h e h |
		fis' h, a h fis' h, |
		g' h, a h g' h, |
		dis h a h dis h |
		e h a h e h |
		fis' h, a h fis' h, |
		g' h, a h a' h, |
		h'4 h, r \bar ":|:" |
		h'8 fis e fis h fis |
		g e d e g e |
		a e d e a e |
		fis d cis d fis d |
		g d c d g d |
		e c h c e c |
		fis c h c fis a |
		\appoggiatura e dis4. cis8 h4 |
		g8 e' dis e g, e' |
		a, e' dis e a, e' |
		h e dis e h e |
		c e dis e c e |
		g, e' dis e g, e' |
		a, e' dis e a, e' |
		h e dis e h dis |
		e4 e, r |
	\bar ":|"
	}

}

staffFluteVarV = \new Staff  {
	\time 3/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 120 
	\set Staff.midiInstrument="flute"
	\key g \major
	\clef treble
	\relative c'' {
		e8 g fis e dis e |
		fis a g fis e fis |
		g h a g fis e |
		dis fis e dis cis h |
		e g fis e dis e |
		fis a g fis e fis |
		g dis e fis g a |
		h2. \bar ":|:" |
		fis8 c' h a g fis |
		g a g fis e d |
		cis h' a g fis e |
		fis g fis e d cis |
		h a' g fis e dis |
		e fis e d c h |
		a g' fis e dis cis |
		dis e dis cis h a |
		g g' fis e dis e |
		a, g' fis e dis e |
		h g' fis e dis e |
		c g' fis e dis e |
		a, g' fis e dis e |
		h e dis e fis dis |
		e2. |
	\bar ":|"
	}

}

staffFluteVarVI = \new Staff  {
	\time 3/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 120 
	\set Staff.midiInstrument="flute"
	\key g \major
	\clef treble
	\relative c'' {
		e8 h g h e, e' |
		fis h, fis h dis, fis' |
		g h e, g fis e |
		dis fis h, cis dis h |
		e h g h e, e' |
		fis h, fis h dis, fis' |
		g h e, fis g a |
		h2. \bar ":|:"
		h8 fis dis fis h, a' |
		g h e, fis g e |
		a e cis e a, g' |
		fis a d, e fis d |
		g d h d g, fis' |
		e g c, d e c |
		fis c a c fis, e' |
		dis fis h, a g fis |
		g h e g dis e |
		a, c e g dis e |
		h dis e g dis e |
		c dis e g dis e |
		g, h e g dis e |
		a, c e g dis e |
		h dis e g fis dis |
		e2. |
	\bar ":|"
	}

}

staffFluteVarVII = \new Staff  {
	\time 3/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 100 
	\set Staff.midiInstrument="flute"
	\key g \major
	\clef treble
	\relative c'' {
		h8. e16 dis4 e |
		h8. fis'16 e4 fis |
		h,8. g'16 fis4 e |
		dis8. e32 fis h,4 a |
		g8. e'16 dis4 e |
		dis,8. fis'16 e4 fis |
		e,8. a'16 g4 a\trill |
		h2. \bar ":|:" |
		fis8. c'16 h4 a |
		g8. h16 e,4 d |
		cis8. h'16 a4 g |
		fis8. a16 d,4 c |
		h8. a'16 g4 fis |
		e8. g16 c,4 h |
		a8. g'16 fis4 e |
		dis8. fis16 h,4 a |
		g8 fis' e\prall dis e4 |
		a,8 fis' e\trill dis e4 |
		h8 fis' e\trill dis e4 |
		g,8 fis' e\prall dis e4 |
		a,8 fis' e\prall dis e4 |
		h8 fis' e fis dis\prall e |
		e,2. |
	\bar ":|"
	}

}

staffFluteVarVIII = \new Staff  {
	\time 3/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 120 
	\set Staff.midiInstrument="flute"
	\key g \major
	\clef treble
	\relative c'' {
		\times 2/3 {e8 h h} \times 2/3 {e, h' h} \times 2/3 {e h h} |
		\times 2/3 {fis' h, h} \times 2/3 {dis, h' h} \times 2/3 {fis' h, h} |
		\times 2/3 {g' h, h} \times 2/3 {e, h' h} \times 2/3 {g' h, h} |
		\times 2/3 {dis h h} \times 2/3 {fis h h} \times 2/3 {dis h h} |
		\times 2/3 {e h h} \times 2/3 {e, h' h} \times 2/3 {e h h} |
		\times 2/3 {fis' h, h} \times 2/3 {dis, h' h} \times 2/3 {fis' h, h} |
		\times 2/3 {g' h, h} \times 2/3 {g' h, h} \times 2/3 {a' h, h} |
		h'4 h, r \bar ":|:"
		\times 2/3 {h'8 fis fis} \times 2/3 {h, fis' fis} \times 2/3 {h fis fis} |
		\times 2/3 {g h, h} \times 2/3 {e, h' h} \times 2/3 {g' h, h} |
		\times 2/3 {a' e e} \times 2/3 {a, e' e} \times 2/3 {a e e} |
		\times 2/3 {fis a, a} \times 2/3 {d, a' a} \times 2/3 {fis' a, a} |
		\times 2/3 {g' d d} \times 2/3 {g, d' d} \times 2/3 {g d d} |
		\times 2/3 {e c c} \times 2/3 {g c c} \times 2/3 {e c c} |
		\times 2/3 {fis c c} \times 2/3 {fis, c' c} \times 2/3 {fis a e} |
		dis4.\trill cis8 h4 |
		\times 2/3 {g8 e' e} \times 2/3 {g e e} \times 2/3 {g, e' e} |
		\times 2/3 {a, e' e} \times 2/3 {g e e} \times 2/3 {a, e' e} |
		\times 2/3 {h e e} \times 2/3 {g e e} \times 2/3 {h e e} |
		\times 2/3 {c e e} \times 2/3 {g e e} \times 2/3 {c e e} |
		\times 2/3 {g, e' e} \times 2/3 {g e e} \times 2/3 {g, e' e} |
		\times 2/3 {a, e' e} \times 2/3 {g e e} \times 2/3 {a, e' e} |
		\times 2/3 {h e e} \times 2/3 {fis e e} \times 2/3 {h dis dis} |
		e4 e, r |
	\bar ":|"
	}

}

staffFluteVarIX = \new Staff  {
	\time 3/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 120 
	\set Staff.midiInstrument="flute"
	\key g \major
	\clef treble
	\relative c'' {
		e16 h h h h h h h e h h h |
		fis' h, h h h h h h fis' h, h h |
		g' h, h h h h h h g' h, h h |
		dis h h h h h h h dis h h h |
		e h h h e, h' h h e h h h |
		fis' h, h h dis, h' h h fis' h, h h |
		g' h, h h g' h, h h a' h, h h |
		h'4 h, r \bar ":|" |
		fis'16 fis fis fis h h h h a a a a |
		h, h h h e e e e d d d d |
		cis cis cis cis a' a a a g g g g |
		a, a a a d d d d c c c c |
		h h h h g' g g g fis fis fis fis |
		g, g g g c c c c h h h h |
		a a a a fis' fis fis fis e e e e |
		fis, fis fis fis h h h h a a a a |
		g g g g e' e e e e, e e e |
		a a a a e' e e e e, e e e |
		h' h h h e e e e e, e e e |
		c' c c c e e e e e, e e e |
		g g g g e' e e e e, e e e |
		a a a a e' e e e e, e e e |
		h' h h h e e e e dis dis e e |
		e,2 r4 |
	\bar ":|"
	}

}

staffFluteVarX = \new Staff  {
	\time 3/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 120 
	\set Staff.midiInstrument="flute"
	\key g \major
	\clef treble
	\relative c'' {
		e16 h a h e h a h e h a h |
		fis' h, a h fis' h, a h fis' h, a h |
		g' h, a h g' h, a h g' h, a h |
		dis h a h dis h a h dis h a h |
		e h a h e, h' a h e h a h |
		fis' h, a h dis, h' a h g' h, a h |
		g' h, a h g' h, a h a' h, a h |
		h'4 h, r \bar ":|" |
		fis'16 h a h fis h a h fis h a h |
		e, g fis g e g fis g d g fis g |
		cis, a' g a cis, a' g a cis, g' fis g |
		d fis e fis d fis e fis c fis e fis |
		h, g' fis g h, g' fis g h, fis' e fis |
		c e d e c e d e h e d e |
		a, fis' e fis a, fis' e fis a, e' dis e |
		h dis cis dis h dis cis dis a dis cis dis |
		g, e' dis e g, e' dis e g, e' dis e |
		a, e' dis e a, e' dis e a, e' dis e |
		h e dis e h e dis e h e dis e |
		c e dis e c e dis e c e dis e |
		g, e' dis e g e dis e g, e' dis e |
		a, e' dis e g e dis e a, e' dis e |
		h e dis e fis e dis e h8 dis |
		e4 e, r |
	\bar ":|"
	}

}

\score {
	<<
		\staffFlute
	>>
	
	\midi {
	}

	\layout  {
	}
}

\score {
	<<
		\staffFluteVarI
	>>
	
	\header{
	piece = "Var: 1"
	}
	
	\midi {
	}

	\layout  {
		indent = 0
	}
}

\score {
	<<
		\staffFluteVarII
	>>
	
	\header{
	piece = "Var: 2"
	}
	
	\midi {
	}

	\layout  {
		indent = 0
	}
}

\score {
	<<
		\staffFluteVarIII
	>>
	
	\header{
	piece = "Var: 3"
	}
	
	\midi {
	}

	\layout  {
		indent = 0
	}
}

\score {
	<<
		\staffFluteVarIV
	>>
	
	\header{
	piece = "Var: 4"
	}
	
	\midi {
	}

	\layout  {
		indent = 0
	}
}

\score {
	<<
		\staffFluteVarV
	>>
	
	\header{
	piece = "Var: 5"
	}
	
	\midi {
	}

	\layout  {
		indent = 0
	}
}

\score {
	<<
		\staffFluteVarVI
	>>
	
	\header{
	piece = "Var: 6"
	}
	
	\midi {
	}

	\layout  {
		indent = 0
	}
}

\score {
	<<
		\staffFluteVarVII
	>>
	
	\header{
	piece = "Var: 7 Moderato"
	}
	
	\midi {
	}

	\layout  {
		indent = 0
	}
}

\score {
	<<
		\staffFluteVarVIII
	>>
	
	\header{
	piece = "Var: 8"
	}
	
	\midi {
	}

	\layout  {
		indent = 0
	}
}

\score {
	<<
		\staffFluteVarIX
	>>
	
	\header{
	piece = "Var: 9"
	}
	
	\midi {
	}

	\layout  {
		indent = 0
	}
}

\score {
	<<
		\staffFluteVarX
	>>
	
	\header{
	piece = "Var: 10"
	}
	
	\midi {
	}

	\layout  {
		indent = 0
	}
}

\paper {
}

