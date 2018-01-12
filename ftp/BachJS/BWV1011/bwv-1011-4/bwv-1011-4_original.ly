\version "2.13.4"

\paper {
    page-top-space = #0.0
    %indent = 0.0
    line-width = 18.0\cm
    ragged-bottom = ##f
    ragged-last-bottom = ##f
}

% #(set-default-paper-size "a4")

#(set-global-staff-size 19)

\header {
        title = "Cello Suite V"
        subtitle = "\"Sechs Suiten für Violoncello\""
        piece = "4. Sarabande"
        mutopiatitle = "Cello Suite V - BWV 1011 - Sarabande"
        composer = "Johann Sebastian Bach (1685-1750)"
        mutopiacomposer = "BachJS"
        opus = "BWV 1011"
        mutopiainstrument = "Cello"
		arrangement = "Hajo Dezelski"
        style = "Baroque"
        source = "Bach-Gesellschaft Edition 1879 Band 27"
        copyright = "Creative Commons Attribution-ShareAlike 3.0"
        maintainer = "Hajo Dezelski"
		maintainerWeb = "http://www.roxele.de/"
        maintainerEmail = "dl1sdz (at) gmail.com"
	
 footer = "Mutopia-2009/10/13-1523"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2009. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

melody =  \relative g {
	\repeat volta 2 {
		g8 [(es b c)] as4 | % 1
		d'8 [(bes e, f)] b,4 | % 2
		e'8 [(bes e, f) g, (g') ] | % 3
		f8 [(es b c)] c,4 | % 4
		c'8 [(es bes' as) es' (d) ] | % 5
		d,8 [(f c' bes) d (c)] | % 6
		bes8 [(as d, es) bes (d) ] | % 7
		es,2. | % 8
	}
	\repeat volta 2 {	
		c''8 [(as d, es)] des,4 | % 9
		c''8 [(as e f)] g,4 | % 10
		es''8 [(c e, f) c, (d'')] | % 11
		c8 [(bes e, f)] f,4 | % 12
		es8 [(c' f es) c' (b)] | % 13
		d,,8 [(d' g f) d' (cis)] | % 14
		d8 [(bes fis g) b, (c) ] | % 15
		g8 [(d' g fis) d' (cis) ] | % 16
		f8 [(d fis, g) a, (f'') ] | % 17
		es8 [(as, e f) b, (g') ] | % 18
		f8 [(es b c) g (cis') ] | % 19
		c,,8 [ (g' f' es) ] d'4 | % 20
    }
}

% The score definition

\score {
 	\context Staff << 
        \set Staff.instrumentName = "Cello"
	\set Staff.midiInstrument = "cello"
        { \clef bass \key c \minor \time 3/4 \melody  }
    >>
	\layout { }
 	 \midi { }
}
