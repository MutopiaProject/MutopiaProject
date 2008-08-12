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
        piece = "2. Allemande"
        mutopiatitle = "Cello Suite VI - BWV 1012 - Allemande"
        composer = "Johann Sebastian Bach (1685-1750)"
        mutopiacomposer = "BachJS"
        opus = "BWV 1012"
        mutopiainstrument = "Cello"
		arrangement = "Hajo Dezelski"
        style = "Baroque"
		comment = "Corrections on measure 10, 13, 15 " 
        source = "Bach-Gesellschaft Edition 1879 Band 27"
        copyright = "Creative Commons Attribution-ShareAlike 3.0"
        maintainer = "Hajo Dezelski"
		maintainerWeb = "http://www.roxele.de/"
        maintainerEmail = "dl1sdz (at) gmail.com"
	
 footer = "Mutopia-2008/08/12-1503"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

melodyOne =  \relative f' {
	\repeat volta 2 {
		\partial 16 fis16 | %0
		fis4 ~ fis32 [e (g fis e d e64 cis d32)] d8 [( cis16. \trill d64 e) ] d32 [(cis b a b64 cis b cis cis32 b64 cis) ] | % 1
		d8. [a'16] ~ a32 [ (g fis e d64 cis d e fis e g fis )] g16 ~ [(g64 fis64 e fis g32 fis g b) ] g8. \trill [ (fis32 g )] | % 2
		fis8 \trill [( e16 fis32 d) ] d'8. [ d16 ] gis,,32 [ (e' b' d cis b ais64 b d cis)] cis8 [ais,16. e'32] | % 3
		b16 [e32 (g fis e d e64 cis)] d16. [b64 ( cis d32 e fis a64 gis)] fis,16. [gis32 ( a b cis a)] dis,16. \trill [ a''32 (b a gis a)] | % 4
		a16 [ gis fis e ] e8. [ e16] e16 [ ( fis32 gis a gis  a fis)] d16. \trill [ cis 32 ( b d fis a)] | % 5
		gis 32 [( a b a gis fis e fis 64 d )] cis16. \trill [( b32 a gis a cis)] fis16. [( e32 d cis d fis)] b32 [(gis a fis e cis d b)] | % 6
		a32 [( fis gis b e16.) d,32] cis16. [ e'32 ( d cis b a)] d,32 [ fis' ( e d cis gis a d)] b8. [a16] | % 7
		a16. [( b32 cis d e g)] fis32 [( e d cis d b a' gis)] a16. [( e32 cis16 b32 a)] a,8. s16   \clef bass | % 8 	
	}
		\repeat volta 2 {
		\partial 16 e''16 | %0
		e8 ~ [ e32 g (fis e] d [ cis b cis d cis b cis64 a)] a'8. [ g32 ( fis] e32 [ d cis b a g fis g)]  | % 9
		a16. \trill [ b64 (cis d32 b g fis)] e16 [ g'32 (fis g e cis a)] d,16 [ a'32 (b cis d e fis64 g)] fis16. [ d,64 ( e fis32 d e fis)] | % 10
		c,8. [ a''16] b32 [( a b c b c c b64 c)] b,8. [b16] c32 [( b c d c64 d d32. c64 d e)] | % 11
		a8 [ gis16. \clef alto fis'32] ( fis32 [ eis gis fis a gis b d,)] eis,16. [ cis'32 ( b' a b gis)] a16. [ gis32 ( fis e d e64 cis)] \clef bass | % 12
		d16. [ cis32 ( b a g a64 fis)] g16 [g64 d64 ( e fis g32 a b cis64 d )] d16 [ eis,8 \trill fis32 [(gis)] cis,32 [( b16 d32 cis16 d32 b)] | % 13
		\clef alto a'32 [ fis' (gis a) b, (a' gis b)] fis8 [ eis16. fis32] fis16. [(cis32 fis gis a gis)] a32 [( b c a dis, e dis e)] | % 14
		dis16 ~ \trill [dis64 a64 (b c) c16 ~ c64 a64 ( b c)] c16 [ b32 a' g32. fis128 g a32 fis] g8. [ a32 ( b)] a32 [( g fis e d cis e d)] | % 15
		\clef bass d,16 [b32 (cis d e fis d)] gis32 [( b e, fis g a b cis)] d32 [( cis b cis d b cis a)] \clef alto a'16. [g,32 ( a g fis g)] | % 16
		fis16. [ a'32 ( g fis e d)] c32 [ ( b c a') c, (b c a)] dis,32 [(fis b dis fis a g fis)] g16 [ e,32 (fis g a b d)] | % 17
		cis32 [( e a, cis e g fis e )] fis16 [ d,32 ( e fis g a c,)] g16. [ fis''32 (b a g fis)] e32 [(cis d b a fis g e)] \clef bass  | % 18
		d32 [( b cis e a cis e gis)] a16 [ fis,,32 (a' g fis e d)] g,32 [(b' a g fis cis d g)]e8. [d16] | % 19
		d16. [ e32 (fis g a c )] b32 [( a g fis g e d' cis)] d16. [ a32 fis16 \trill e32 d ] d,8. s16 | % 20

		}

}

melodyTwo = \relative a, {
	\repeat volta 2 {
		\partial 16 s16 | %0
		<d a'>4 s4 e4 s4 | % 1
		fis8. s16 b8 r8 <e, b'>8. s16 a4 | % 2
		<d, a'>8 s8 fis'8. [ fis16 ] s2 | % 3
		s2 \stemUp <cis a'>16 \stemDown s16 s8 s4 | % 4
		<e, a>8 s8 cis'8. [cis16] <fis, cis'>16 s16 s8 s4 | % 5
		<e d'>16 s8. s4 <d cis'>16 s8. s4 | % 6
		s2. e4 | % 7
		a16. s32 s8 s2. \clef bass  | % 8
	}
	
	\repeat volta 2 {
		\partial 16 \clef bass s16 | %0
		<a, e' cis'>8 s4. <g e' cis'>8. s16 s4 | % 9
		s1 | % 10	
		s2 \stemUp <g' d'>8. \stemDown s16 s4 | % 11
		\clef alto s2. <fis cis'>16. s32 s8 \clef bass | % 12
		<b, fis'>16. s32 s8 s2. \clef alto  | % 13
		s4 cis'8 s8 s2 | % 14
		<b, fis'>8. s16 s4 <e b'>8. s16 s4 | % 15
		s1 | % 16
		s1 | % 17
		s1 | % 18
		s2. a,4 | % 19
		s1 | % 20


	}

}

melody = << \melodyOne \\ \melodyTwo >>

\score {
 	\context Staff << 
        \set Staff.instrumentName = "Cello"
		\set Staff.midiInstrument = "cello"
        { \clef alto \key d \major \time 4/4 \melody  }
    >>
	\layout { }
 	 \midi { }
}
