\version "2.11.34"

\header {
	title = "Es ist ein Ros’ entsprungen"
	composer = "arr: Michael Praetorius, 1609"
	mutopiacomposer = "Anonymous"
	mutopiaarranger = "arr: Michael Praetorius, 1609"
	mutopiainstrument = "Voice (SATB)"
	date = "1599/1609"
	source = "Musae Sioniae Michaëlis Praetorij, C. deutscher geistlicher in de christlichen Kirchen ublicher Psalmen und Lieder mit 4 Stimmen Sechster Theil. Wolfenbüttel 1609, Nr. 53."
	style = "Renaissance"
	copyright = "Public Domain"
	maintainer = "Thomas Scharkowski"

 footer = "Mutopia-2007/12/08-1175"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

staffSoprano = \new Staff  {
	\time 4/4
	\set Staff.instrumentName="Sopran "
	\set Staff.midiInstrument="choir aahs"
	\key f \major
	\clef treble
	\relative c'' {
		\context Voice = "melodySop" {
		\dynamicUp
		\override Staff.BarLine #'transparent = ##t
		\set Score.measureLength = #(ly:make-moment 1 2)
		c2 
		\set Score.measureLength = #(ly:make-moment 2 2)
		c4 c d c 
		c2 a bes a4 g2 f e4 
		f2  
		
		c'2 
		c4 c d c 
		c2 a bes a4 g2 f e4 
		f2  
	% 2. Teil	
		r4 a 
		g e f d 
		c2 r4 c' 
		c c d c 
		c2 a 
		bes a4 g2
		f e4 
		f1
		\revert Staff.BarLine #'transparent
		}

	\bar "|."
	}

}
staffAlto = \new Staff  {
	\set Staff.instrumentName="Alt "
	\set Staff.midiInstrument="choir aahs"
	\key f \major
	\clef treble
	\relative c'' { 	
		\context Voice = "melodyAlt" {
		\dynamicUp		
		\override Staff.BarLine #'transparent = ##t
		\set Score.measureLength = #(ly:make-moment 1 2)
		a2
		\set Score.measureLength = #(ly:make-moment 2 2)
		a4 f f f 
		e2 d 
		d c4 c 
		d4.( a8 c4) c 
		c2
		
		a' 
		a4 f f f 
		e2 d 
		d c4 c 
		d4.( a8 c4) c 
		c2 
		
		r4 f |
		d c c b |
		c8( d e4) r e |
		g f f f |
		e2 d |
		d f4 d |
		e( f g) c, |
		c1
		\revert Staff.BarLine #'transparent
		}
	}

}
staffTenor = \new Staff  {
	\set Staff.instrumentName="Tenor "
	\set Staff.midiInstrument="choir aahs"
	\key f \major
	\clef "G_8"
	\relative c' { 	
		\context Voice = "melodyTen" {
		\dynamicUp		
		\override Staff.BarLine #'transparent = ##t
		c2 
		c4 a bes a 
		g2 f 
		f a4 c bes( a2) g4 
		a2 
		
		c
		c4 a bes a 
		g2 f 
		f a4 c bes( a2) g4 
		a2 
		
		r4 c |
		bes a a g |
		g2 r4 g |
		g a bes a |
		g2 fis |
		g c4 bes |
		a2 g |
		a1
		\revert Staff.BarLine #'transparent
		}

	}

}
staffBass = \new Staff  {
	\set Staff.instrumentName="Bass "
	\set Staff.midiInstrument="choir aahs"
	\key f \major
	\clef bass
	\relative c { 	
		\context Voice = "melodyBas" {
		\dynamicUp		
		\override Staff.BarLine #'transparent = ##t
		f2 
		f4 f bes f 
		c2 d 
		bes f'4 e 
		d2 c 
		f,
		
		f' 
		f4 f bes f 
		c2 d 
		bes f'4 e 
		d2 c 
		f,
		
		r4 f' |
		g a f g |
		c,2 r4 c |
		e f bes, f' |
		c2 d |
		g, a4 bes |
		c2 c |
		f,1 |
		\revert Staff.BarLine #'transparent
		}

	
	}

}

textsop = \lyricsto "melodySop" \new Lyrics {
	 	\set stanza = "1."
		Es ist ein Ros’ ent -- sprun -- gen
		aus ei -- ner Wur -- zel zart,
		wie uns die Al -- ten sun -- gen,
		von Jes -- se ist die Art 
		
		und hat ein Blüm -- lein bracht
		mit -- ten im kal -- ten Win -- ter
		wohl zu der hal -- ben Nacht.
	}

textsopII = \lyricsto "melodySop" \new Lyrics {		
		\set stanza = "2."
		Das Blüm -- lein das ich mei -- ne,
		da -- von Je -- sa -- ja sagt:
		hat uns ge -- bracht al -- lei -- ne
		Ma -- rie, die rei -- ne Magd;
		aus Got -- tes ew -- gen Rat
		hat sie ein Kind ge -- bo -- ren,
		wel -- ches uns se -- lig macht.
}	
		
textalt = \lyricsto "melodyAlt" \new Lyrics {
		\set stanza = "1."
		Es ist ein Ros’ ent -- sprun -- gen
		aus ei -- ner Wur -- zel zart,
		wie uns die Al -- ten sun -- gen,
		von Jes -- se ist __ die Art
		
		und hat ein Blüm -- lein bracht
		mit -- ten im kal -- ten Win -- ter
		wohl zu der hal -- ben Nacht.
	}

textaltII = \lyricsto "melodyAlt" \new Lyrics {		
		\set stanza = "2."
		Das Blüm -- lein das ich mei -- ne,
		da -- von Je -- sa -- ja sagt:
		hat uns ge -- bracht al -- lei -- ne
		Ma -- rie, die rei -- ne Magd;
		aus Got -- tes ew -- gen Rat
		hat sie ein Kind ge -- bo -- ren,
		wel -- ches uns se -- lig macht.
}		

textten = \lyricsto "melodyTen" \new Lyrics {
		\set stanza = "1."
		Es ist ein Ros’ ent -- sprun -- gen
		aus ei -- ner Wur -- zel zart,
		wie uns die Al -- ten sun -- gen,
		von Jes -- se ist __ die Art
		
		und hat ein Blüm -- lein bracht
		mit -- ten im kal -- ten Win -- ter
		wohl zu der hal -- ben Nacht.
	}

texttenII = \lyricsto "melodyTen" \new Lyrics {		
		\set stanza = "2."
		Das Blüm -- lein das ich mei -- ne,
		da -- von Je -- sa -- ja sagt:
		hat uns ge -- bracht al -- lei -- ne
		Ma -- rie, die rei -- ne Magd;
		aus Got -- tes ew -- gen Rat
		hat sie ein Kind ge -- bo -- ren,
		wel -- ches uns se -- lig macht.
}			

textbas = \lyricsto "melodyBas" \new Lyrics {
		\set stanza = "1."
		Es ist ein Ros’ ent -- sprun -- gen
		aus ei -- ner Wur -- zel zart,
		wie uns die Al -- ten sun -- gen,
		von Jes -- se ist die Art
		
		und hat ein Blüm -- lein bracht
		mit -- ten im kal -- ten Win -- ter
		wohl zu der hal -- ben Nacht.
}

textbasII = \lyricsto "melodyBas" \new Lyrics {		
		\set stanza = "2."
		Das Blüm -- lein das ich mei -- ne,
		da -- von Je -- sa -- ja sagt:
		hat uns ge -- bracht al -- lei -- ne
		Ma -- rie, die rei -- ne Magd;
		aus Got -- tes ew -- gen Rat
		hat sie ein Kind ge -- bo -- ren,
		wel -- ches uns se -- lig macht.
}		
	
\score {
	\new ChoirStaff
	<<
		\staffSoprano
		\textsop
		\textsopII
		
		\staffAlto
		\textalt
		\textaltII
		
		\staffTenor
		\textten
		\texttenII
		
		\staffBass
		\textbas
		\textbasII
	>>
	
	\midi {
		\context {
			\Score
			tempoWholesPerMinute = #(ly:make-moment 60 2)
		}
	}

	\layout  {
			\context {
			\Score
			\remove Bar_number_engraver
		}
	}
}

\paper {}

