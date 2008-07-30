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
        piece = "2. Allemande"
        mutopiatitle = "Cello Suite II - BWV 1008 - Allemande"
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
	
 footer = "Mutopia-2008/07/30-1488"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

melody = \relative a {
	\repeat volta 2 {
		\partial 16 a16 | % 0
		<d,, a' f' a>8 [bes''16 (a)] g [(f) e (d)] d [(cis) d (e)] a,8 [bes16 g] | % 1
		f [a d f,] e8 [cis'] <d, a' d>8. [e'16] f [g a bes] | % 2
		<d,, a' fis' c'>8 [d''16 (ees)] d [(c) bes (a)] c [(bes) a (g)] d'8. [f,16] | % 3
		e16 [(g bes d)] c [(bes) a (g)] bes [(a) g (f)] <f a>8. [<f a>16] | % 4
		b16 [f (e d)] e [cis' (d cis)] <d, d'>8. [e'16] f [(e d e)] | % 5
		d16 [(c b c)] b [(a gis a)] gis8 [(fis16 e)] e' [(c a g)] | % 6
		<f e'>16 [ a f d] <b d> [f' d b] gis [(b e gis)] b [d c b] | % 7
		c16 [(a f e)] d [(f e d)] gis8.\trill [a16] b [d e, d] | % 8
		c16 [e a d] <e, b'>8. [a16] <dis, ~ a'>8 [dis32 e (fis gis] a [ b c d c b c a)]  | % 9
		d,16 [gis (a bes] a [gis fis e)] <c e a>8 [f16 (e)] d [(c) b (a)] | % 10
		<gis d' b'>8 [e'16 (f)] e [(d) c (g) ] <a e' d'>16 [b' c a] e8 [gis] | % 11
		a,8. [cis16] e [g f e] f [a d gis,] a8. s16 | % 12
	} % end repeat
	
	\repeat volta 2 {
		\partial 16 e16 | % 0
		<a, e' cis'>8. [f'16] g [(e) f (a)] cis, [d e bes] a8. \trill [g16] | % 13
		f16 [ a' (f d)] g [b, (cis) a'] g [(f e d)] fis [(d ees) c] | % 14
		bes16 [g' a, (g] fis) [a (d) c'] bes [fis (g) bes] d [(a) bes (g)] | % 15
		ees16 [(d ees) g] c [(a) bes (g)] d [(c d) g] bes [(fis) g (ees)] | % 16
		c16 [(bes c) bes'] a [(c ees) g,] <c, fis>8 \trill [g'16 a] d,8 [ees16 c] | % 17
		bes16 [d g bes,] d,8 [fis'] <g, g'>8. [a'16] bes [d g, f] | % 18
		<b, e>8. \trill [f'16] (g) [e (c) bes] (a) [f' g, (f)] e [g' a bes] | % 19
		bes16 [a (g f)] a [(e) f (d)] bes [d (f a)] d [(a) bes (g)] | % 20
		a,16 [g' (cis d)] e [g, (a) e] (f) [d (bes) d] (gis,) [f' e d] | % 21
		d16 [cis (b a)] c [(a fis) d'] c [(a b) d] f [d (gis,) d'] | % 22
		cis16 [(e g) bes] e [a, (bes) g] (f) [cis (d) gis,] (a8) [cis] | % 23
		d,16 [d'' (c) a] (bes) [g (e) cis'] (d) [a f d] d,8. s16 | % 24
  	} % end repeat

}


\score {
 	\context Staff << 
        \set Staff.instrumentName = "Cello"
	\set Staff.midiInstrument = "cello"
        { \clef bass \key f \major \time 4/4 \melody  }
    >>
	\layout { }
 	 \midi { }
}
