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
        piece = "6. Gigue"
        mutopiatitle = "Cello Suite VI - BWV 1012 - Gigue"
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
	
 footer = "Mutopia-2008/08/12-1508"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

melodyOne =  \relative a' {
	\repeat volta 2 {
		\partial 8 \clef alto a8  | % 0
		d,4. e8 [ fis g ] | % 1
		<a, fis'>8 [ d a' ] a16 [( g fis g a8) ] | % 2
		d,8 [ a d ] e [ fis g ] | % 3
		fis8 [ d a ] d,4 a''8 | % 4
		fis8 [( a,) a' ] e [( a,) g' ] | % 5
		d8 [( a) fis' ] e [ (a,) g' ] | % 6
		fis8 [ (a,) a' ] e [ (a,) g' ] | % 7
		d8 [ (a) fis' ] cis [ (a) e' ] | % 8
		<a, fis'>8 [ e' fis ] b,16 [ (cis d8) b ] | % 9
		gis16 [ (fis gis a b8) ] e, [ d16 cis d b ] | % 10
		<e a e'>8 [ d' e ] a,16 [ b cis b a g ] | % 11
		fis16 [ e fis g a fis ] d [ fis gis a b cis ] | % 12
		<fis, d'>8 [ cis' d ] fis16 [ (gis a8) fis ] \clef bass | % 13
		<fis, d'>8 [ cis' d ] b16 [ (cis d) b (cis d) ] | % 14
		gis,,16 [ (b e gis b d) ] \clef alto b' [ (a gis a b e,) ] \clef bass | % 15
		<b, g' d'>8 [ cis' d ] d4 e8 | % 16
		<e, a>4. b'8 [ cis d ] | % 17
		<e, cis'>8 [ a e' ] e16 [ (d cis d e8) ] | % 18
		<e, a>8  [ e a ] b [ cis d ] | % 19
		cis8 [ a e ] a,4 a'8 \clef alto | % 20
		e'8 [ e e ] b16 [ (a b cis d8) ] | % 21
		gis8 [ gis gis ] e,16 [ (d e fis gis8) ] | % 22
		gis16 [ (fis gis a b8) ] b16 [ (a b cis d8) ] | % 23
		b'16 [ gis b gis b gis ] e4. | % 24
		a16 [ e a e a e ] e8 [ e e ] \clef bass | % 25
		a,8 [ a a ] d, [ d d ] | % 26
		cis,16 [ e'' (d cis b a) ] e [ d' (cis b a gis) ] | % 27
		a,16 [ e' a cis e gis ] a4 s8 | % 28
	}
	
	\repeat volta 2 {
		\partial 8 \clef alto e8 | % 0 
		e4 fis16 [ g ] g8-. [ fis-. e-. ] | % 29
		e8 [ ais, g' ] e [ ais,16 (b cis b] | % 30
		cis16 [ d cis d e fis ] g8) [ fis e ] | % 31
		d8 [ b fis ] b,4 d'8 | % 32
		g16 [ (fis e d c b) ] c8 [ e, g' ] | % 33
		fis16 [ (e d cis b ais) ] b8 [ d, fis' ] | % 34
		g,,8 [ b''16 (a g fis) ] e [ (d cis d e d) ] | % 35
		cis16 [ (b ais b cis ais) ] fis4 fis'8 | % 36
		d8 [ (fis,) fis' ] cis [ (fis,) e' ] | % 37
		b8 [ (fis) d' ] cis [ (fis,) e' ] | % 38
		d8 [ (fis,) fis' ] cis [ (fis,) e' ] | % 39
		b8 [ (fis) d' ] cis [ (fis,) fis' ] | % 40
		g16 [ (fis e fis g8) ] ais [ b e, ] | % 41
		fis16 [ (e d e fis8) ] ais [ b d, ] | % 42
		cis16 [ (d e fis g b,) ] fis8 [ b ais ] \clef bass | % 43
		b8 [ fis16 (e d cis) ] b8 [ d' a, ] | % 44
		gis8 [ d'' fis,, ] e [ e''16 (d cis b) ] | % 45
		cis8 [ a16 (b cis d) ] \clef alto e [ (fis gis a b) d, ] | % 46
		eis,8 [ (cis') b' ] cis,, [ b''16 (a b gis) ] | % 47
		a16 [ (fis cis b a gis) ] fis [ (gis a b cis d) ] | % 48
		e16 [ fis g8 cis,, ] a [ a''16 (g fis e) ] \clef bass | % 49
		fis8 [ d,16 (c b a) ] g [ d' (e fis g a) ] \clef alto | % 50
		b16 [ d (e fis g a) ] b [ (cis d cis b a) ] | % 51
		g16 [ (fis e d cis b) ] a4 \trill a8 | % 52
		d4. \clef bass fis,16 [ (e fis g a8) ] | % 53
		a4. d,16 [ (cis d e fis8) ] | % 54
		fis16 [ (e fis g a8) ] a [ b16 (a g a) ] | % 55
		fis16 [ a, (b cis d e) ] fis [ (g a b c d) ] | % 56
		<d, b'>8 [ a' b ] e,16 [ (fis g8) e ] | % 57
		cis16 [ (b cis d e8) ] a, [ g16 fis g e ] | % 58
		fis8 [ a'16 (g fis e) ] d [ (e fis e d cis) ] | % 59
		b16 [ a b cis d b ] g [ b (cis d e fis) ] | % 60
		<b, g'>8 [ fis' g ] b16 [ (cis d8) b ] | % 61
		<b, g'>8 [ fis' g ] e16 [ fis g e fis g ] | % 62
		cis,,16 [ (e a cis e g) ] \clef alto e' [ d cis d e a, ] | % 63
		g'16 [ (fis e fis g e) ] cis' [ b a b cis a ] | % 64
		d16 [ a d a d a ] a8 [ a a ] \clef bass | % 65
		d,8 [ d d ] g, [ g g ] \clef alto | % 66
		fis,16 [ a'' (g fis e d) ] a [ g' (fis e d cis) ] \clef bass | % 67
		d16 [ a fis d a fis ] d4 s8 | % 68
	
      }
} 
melodyTwo =  \relative fis {
		\repeat volta 2 {
			\partial 8 s8 | % 0
			fis4. a8 s4 | % 1
			d,8 s8 s2 | % 2
			fis8 s4 a8 s4 | % 3
			s2.*5 | % 8
			d,8 s8 s2 | % 9
			s2. | % 10
			cis8 s8 s2 | % 11
			s4. cis16 s16 s4  | % 12
			b8 s8 r2 | % 13
			a8 s8 s2 | % 14
			s2. | % 15
			e8 s4 e'4 d8 | % 16
			cis4. e8 s4 | % 17
			a,8 s8 s2 | % 18
			cis8 s4 e8 s4 | % 19
			s2. | % 20
			<gis d'>8  [ d' d] s4. | % 21
			<e, d'>8 [ d' d ] s4. | % 22
			s2. | % 23
			d8 [ d d ] d16 [ (b d b d b) ] | % 24
			cis8 [ cis cis ] cis16 [ a cis a cis a ] | % 25
			fis16 [ d fis d fis d ] b [ gis b gis b gis ] | % 26
			s2.*2 | % 28
		}
	
	\repeat volta 2 {
		\partial 8 \clef alto s8 | % 0^	
		a'4. s4. | %29
		s2.*24 | % 53
		a4. s4. | % 54
		s2.*2 | % 56 
		g,8 s8 s2 | % 57
		s2.*2 | % 59
		s4. fis16 s16 s4 | % 60
		e8 s4 s4. | % 61
		d8 s4 s4. | % 62
		s2.*2 | % 64
		fis''8 [ fis fis ] fis16 [ d fis d fis d ] \clef bass | % 65
		b16 [ g b g b g ] e16 [ cis e cis e cis ] \clef alto | % 66
		s2.*2 | % 68
	
   }
}

melody = << \melodyOne \\ \melodyTwo >>

\score {
 	\context Staff << 
        \set Staff.instrumentName = "Cello"
	\set Staff.midiInstrument = "cello"
        { \clef bass \key d \major \time 6/8 \melody  }
    >>
	\layout { }
 	 \midi { }
}
