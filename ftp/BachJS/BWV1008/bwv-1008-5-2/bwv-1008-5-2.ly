\version "2.11.52"

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
        title = "Cello Suite II"
        subtitle = "\"Sechs Suiten für Violoncello\""
        piece = "5. Menuet II"
        mutopiatitle = "Cello Suite II - BWV 1008 - Menuet II"
        composer = "Johann Sebastian Bach (1685-1750)"
        mutopiacomposer = "BachJS"
        opus = "BWV 1008"
        mutopiainstrument = "Cello"
		arrangement = "Hajo Dezelski"
        style = "Baroque"
        source = "Bach-Gesellschaft Edition 1879 Band 27"
        copyright = "Creative Commons Attribution-ShareAlike 3.0"
        maintainer = "Hajo Dezelski"
		maintainerWeb = "http://www.roxele.de/"
        maintainerEmail = "dl1sdz (at) gmail.com"
	
 footer = "Mutopia-2008/07/30-1492"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

melody = \relative c {
	\repeat volta 2 {
		fis4 \trill d8 [e fis g]  | % 1
		a4 fis, a' | % 2
		g,8 [(b)] e4 g | % 3
		d8 [(cis b cis a g)] | % 4
		fis8 [d'' (cis b a g)] | % 5
		b8 [( a g fis e d)] | % 6
		cis8 [(d)] g4 fis8 [(g16 a)] | % 7
		<a, e'>2. | % 8
	} % end repeat
	
	\repeat volta 2 { 
		cis'4 e8 [(d cis b)]  | % 9
		cis4 g, cis'  | % 10
		fis,8 [(a)] d4 fis  | % 11
		b,8 [(a) g (fis) g (b)] | % 12
		e,8 [d' (cis b) cis (ais)]  | % 13
		d,8 [b' (a g fis e)]  | % 14
		g8 [(fis e d cis d)]  | % 15
		b8 [(cis d e fis g)] | % 16
		a8 [(g fis g a b)]  | % 17
		c4 dis,, c''  | % 18
		b8 [(a c b  a g)]  | % 19
		fis8 [(g) a (fis) g (e)] | % 20
		cis4 \trill a8 [(b cis d)]  | % 21
		e8 [(fis  g b)] a4  | % 22
		g8[(fis) e (d) e (cis_\markup { Menuet I da Capo } )]  | % 23
		d2. | % 24
	}
  
}


\score {
 	\context Staff << 
        \set Staff.instrumentName = "Cello"
	\set Staff.midiInstrument = "cello"
        { \clef bass \key d \major \time 3/4 \melody  }
    >>
	\layout { }
 	 \midi { }
}
