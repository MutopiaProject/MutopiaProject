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
        piece = "3. Courante"
        mutopiatitle = "Cello Suite II - BWV 1008 - Courante"
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
	
 footer = "Mutopia-2008/07/30-1489"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

melody = \relative d' {
	\repeat volta 2 {
		\partial 16 d16 | % 0
		d16 [a f a] d, [ f g a ] bes [ a bes g ] | % 1
		<cis, ~ g' a>4 cis16 [ d e f] g [f g e ] | % 2
		f16 [ d e c] bes [( a bes) a'] g [ f e d ] | % 3
		cis16 [ e a, (b] cis [ d e f] g) [ bes a e] | % 4
		f16 [ a d, (e ] f [ g a bes] c) [ bes d c] | % 5
		<a, f' c' >4 ~ c'16 [ bes a g] f [ (ees) d (ees) ] | % 6 
		d16 [ bes ( a bes)] d [ bes e bes] f' [ bes, g' bes,] | % 7
		e,16 [(g c) d] e [f g a] bes [(a) bes (g)]  | % 8
		a16 [f (e f)] a [f bes f] c' [f, d' f,]  | % 9
		cis16 [(e a) b] cis [d e f] g [(f) g (e)]  | % 10
		d,16 [(a' f') e] d [c d c] b [a b a] | % 11 
		gis16 [(a b) e,] f [e f d] e [c d b] | % 12
		c16 [a' (b c] b [a gis a)] d, [a' e a]  | % 13
		f16 [a (b c] b [a gis a)] f [a e a] | % 14
		dis,16 [a' (b c] b [a gis a)] e [a e gis] | % 15
		a16 [e cis e] a, [cis e gis] a8. s16| % 16
	} % end repeat
 
	\repeat volta 2 {
		\partial 16 e'16 | % 
		e16 [ cis a cis] e, [ f g a ] bes [(g) cis (g)] | % 17
		<f d'>4 d'16 [a d e]  f [ d a c ] | % 18
		bes16 [f d f] g, [ d' f g] b [ f d' f,] | % 19
		e16 [g c, (d] e [f g a] bes) [d c g] | % 20
		<f a>16 [ c' (bes a] g [f ees d] ees) [ c' f, ees] | % 21
		<bes d>4 ~ d16 [ e f g] a [ bes c d] | % 22
		e,16 [ bes (a g)] a [ f' g, f] c [ (g' f' ) e] | % 23
		f16 [a (bes a] g [f e f)] g [e f d]  | % 24
		cis16  [g' b, g'] a, [g' b, g'] cis, [g' a, g']  | % 25
		f16 [d f a] d [a d e] f [a, f d] | % 26 
		g,16 [d' (g a)] bes [g' a, f'] g, [e' f, d'] | % 27
		cis16 [d e cis] a [cis bes cis] a [cis g cis]  | % 28
		f,16 [d' (e f] e [d cis d)] g, [d' a d]  | % 29
		bes16 [d (e f] e [d ais d)] bes [d a d] | % 30
		gis,16 [d' (e f] e [d cis d)] a [d a cis] | % 31
		d16 [a f a] d, [f a, d] d,8. s16 | % 32
		
	} % end repeat
 }

\score {
 	\context Staff << 
        \set Staff.instrumentName = "Cello"
	\set Staff.midiInstrument = "cello"
        { \clef bass \key d \minor \time 3/4 \melody  }
    >>
	\layout { }
 	 \midi { }
}
