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
        title = "Cello Suite VI"
        subtitle = "\"Sechs Suiten für Violoncello\""
        piece = "5. Gavotte II"
        mutopiatitle = "Cello Suite VI - BWV 1012 - Gavotte II"
        composer = "Johann Sebastian Bach (1685-1750)"
        mutopiacomposer = "BachJS"
        opus = "BWV 1012"
        mutopiainstrument = "Cello"
		arrangement = "Hajo Dezelski"
        style = "Baroque"
        source = "Bach-Gesellschaft Edition 1879 Band 27"
        copyright = "Creative Commons Attribution-ShareAlike 3.0"
        maintainer = "Hajo Dezelski"
		maintainerWeb = "http://www.roxele.de/"
        maintainerEmail = "dl1sdz (at) gmail.com"
	
 footer = "Mutopia-2008/08/12-1507"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

melodyOne =  \relative a {
	\repeat volta 2 {
		\partial 2 \clef alto <a fis'>8 [e'] fis4 | % 0
		a,4 a b cis | % 1
		d8 [cis d e] <a,, fis' d'> [ e'' ] fis4 | % 2
		a,4 a b cis | % 3
		d2 s2 | % 4
	}
	\repeat volta 2 {
		\partial 2 \clef bass a8 [ fis] g4 | % 0
		b4 d d8 [(c) b (a)] | % 5
		b2 a4 d | % 6
		b4 d cis8 [b cis d ] | % 7 
		<cis e>2 \clef alto  <a fis'>8 [e'] fis4 | % 8
		a,4 a b cis | % 9
		d8 [ cis d e] <a,, fis' d'> [ e'' ]  fis4 | % 10
		a,4 a b cis | % 11
		d2 d8 [ a d e] | % 12
		fis8 [ a, g' a,] fis' [ a, e' a,] | % 13
		fis'8 [ a, a' a,] g' [ a, e' a,] | % 14
		fis'8 [ a, e' d] cis [ d e cis] | % 15
		d8 [ a b a] d [( a d) e] | % 16
		fis8 [ a, g' a,] fis' [ a, e' a,]| % 17
		fis'8 [ a, a' a,] g' [ a, e' a,] | % 18
		fis'8 [ a, e' d] cis [ d e cis] | % 19
		a2 <a fis'>8 [e'] fis4 | % 20
		a,4 a b cis  | % 21
		d8 [cis d e] <a,, fis' d'> [ e'' ]  fis4 | % 22
		a,4 a b cis_\markup { Gavotte I da Capo } | % 23
		d2 s2 | % 24
    }

}

melodyTwo =  \relative d {
	\repeat volta 2 {
		\partial 2 \clef alto d8 s4. | % 0
		r4 fis4 g e | % 1
		d8 s4. d,8 s4. | % 2
		r4 fis'4 g e | % 3
		d2 s2 | % 4
	}
	\repeat volta 2 {
		\partial 2 \clef bass fis4 d4 | % 0
		g4 d fis d | % 5
		g4 d fis d | % 6
		g4 fis e d | % 7 
		d2 \clef alto d8 s4. | % 8
		r4 fis4 g e | % 9
		d8 s4. d,8 s4.  | % 10
		r4 fis'4 g e | % 11
		d2 d | % 12
		d4 d d d | % 13
		d4 d d d | % 14
		d2 d | % 15
		d1 | % 16
		d4 d d d | % 17
		d4 d d d | % 18
		d2 d | % 19
		d2 d8 s4. | % 20
		r4 fis4 g e | % 21
		d8 s4. d,8 s4. | % 22
		r4 fis'4 g e | % 23
		d2 s2 | % 24
    }
} 
	



melody = << \melodyOne \\ \melodyTwo >>

\score {
 	\context Staff << 
        \set Staff.instrumentName = "Cello"
	\set Staff.midiInstrument = "cello"
        { \clef bass \key d \major \time 4/4 \melody  }
    >>
	\layout { }
 	 \midi { }
}
