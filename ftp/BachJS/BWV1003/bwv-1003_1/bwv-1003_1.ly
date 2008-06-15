\version "2.11.46"

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
        title = "Sonata II BWV 1003"
        subtitle = "\"Sechs Sonaten für Violine\""
        piece = "1. Grave"
        mutopiatitle = "BWV 1003 Grave"
        composer = "Johann Sebastian Bach (1685-1750)"
        mutopiacomposer = "BachJS"
        opus = "BWV 1003"
        date = "1720"
        mutopiainstrument = "Violine"
        style = "Baroque"
        source = "Bach-Gesellschaft Edition 1879 Band 27.1"
        copyright = "Creative Commons Attribution-ShareAlike 3.0"
        maintainer = "Hajo Dezelski"
        maintainerEmail = "dl1sdz (at) gmail.com"
	
 footer = "Mutopia-2008/06/15-1449"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

melodyOne = \relative e'' {
	e4 gis,,32 [ f'' ( e d64 c b16 \trill a16 ) ] a16 [gis a8 ~ ] a16 [ a32 ( b c d e16 )] | % 1
	f16. [ e32 d16 c32 (b ) ] b8 [ (a32) \trill gis32 a16] gis8 \trill [ fis16 (e) ] d16. [ f32 ( e d c d64 b ) ] | % 2
	c32 [ (a c e a c e f ) ] f8. \trill ( [ e32 f ) ] g16. [ (f32 e16 d32 c )] c8 [ bes32 \trill ( a bes16) ] | % 3
	a8. [a'16]  g32 [( f16 e32 d16 e32 c ) ] b32. [ g64 ( a32 b c d e64 f g b, ) ] c8. \trill [ b32 (c ) ] | % 4
	d8. [ g,16] 
	\times 2/3 { f16 [ (e d ) ] }
	\times 2/3 { a'16 [ (g f ) ] }
	e16. [ 
	\times 2/3 { g64 ( a b } 
	c16.)
	\times 2/3 { g64 ( a b ]} 
	c [ d e16) b32 ( c d e g64 fis ) ] | % 5
	fis16 [ (a c d32 b) ] c16 [f,32 e f8] e8 r16 a16 b,8. [ c16 ] | % 6
	c8 ~ [ c32 g ( a b ] c [ d e f e d c b64 a ) ] gis32 [ e gis b d a f a,] gis16. [ f''32 ( e d c d64 b )] | % 7
	c8 [ b16 ( a ) ] fis'8. [ fis16 ] fis8. [ g32 a ] g16 [ fis g e ] | % 8
	e16  [ (dis ) cis ( b ) ] b'16 [ b,32 ( c d e f d )]  gis,16 [ f' ~ f32  g ( f e]  d32 [ cis d16 ) b'16 ( d,16 ) ] | % 9
	cis16. [ e32 (fis g a b) ] c32 [ b c16 dis, a']  b8. [ a16]  a  [ ( g a fis) ] | % 10
	ais,8 ~ [ ais32 b ( cis dis ] e [ cis ais g fis e fis ais,)] e''8. [ fis16 ] dis8. [ e16 ] | % 11
	e4 ~ e16 [ f32 ( e d c b c64 a ) ] gis8 ~ [ gis32 a ( b a ] gis32 [ fis e d c16 d32 b) ] | % 12
	a'8 ~ [ a32 ( e fis gis ] a [ b c d e f g bes64 a ) ] bes16 (a) a ( g )]  g [( f ) g ( e )] | % 13
	f16 [ a32 g a8 ] cis,,32 [ ( bes'' ( a g f e d e64 cis ] d32 ) [ a (bes g e cis d bes)] a [ ( d fis a c es d a ) ] | % 14
	bes32 [( fis g bes d fis g bes ) ] f16 [ (e \trill ) gis,32 (d' cis d ) ] cis16. [ d32 (e f g e )] bes16. [ cis,64 ( d e32 f g e )] | % 15
	f32 [ (gis a d f gis a bes ) ] d,8 [ (cis16. ) d32 ] d16. [ c64 ( bes a32 g f g64 a)] d,32 [ ( f a d f a g64 e f32) ] | % 16
	f8 ~ [ f64 d (e f g a b c )] d16 [ ( b32 g f16 \trill e )] b8 ~ [ b32 ( d (c b ] a [ gis a c e c a f)] | % 17
	d'16 [e32 (f) gis,16 e'] d8 [ c16. \trill b64 c ] b8 ~ [ b32 gis' (a b) ] a [( gis fis e d b gis e )]  | % 18
	cis16 [ g'32 ( a  bes16 a)] g32 [ ( fis g16) e' g,] fis32. [(a64 b32 c d e f g )]  f32 [( e f d ) gis,16 f' ] | % 19
	e8. [ d16 ] d16 [ (c) d (b) ] a'8. [ b32 ( c)]  b32 [ ( gis a f e cis e a,)] | % 20
	a64 [ b c16.] s8 b8. \prall [ a16]  a,16 [(a'32 gis a c f16 )] g,,16 [( g'32 fis g b e64 dis e32 )]  | % 21
	f,32 [( e' a gis a c b d] gis, [ a e c a f a cis)] d4 dis \trill | % 22 
    	e1 \bar "|." % 24

}

melodyTwo =  \relative c'' {
	 c4 s2 s4 | % 1
	 a8 s8 s2 s4 | % 2
	 s2 c8 s8 s4 | % 3
	 f,8 s4 s8 f8 s8 e4 | % 4
	 b8 s8 s4 c8 s8 s4 | % 5
 	 s4 s8 a'8 g [ f ] g4 | % 6
	 c,8 s4 s8 b16 s16 s8 s4 | % 7
	 e8 s4 s8 c'8. s16 s8 b16 [ g ] | % 8
	 fis8 s8 s2.  | % 9
	 g8 s4 f8 g [ a ] b r8 | % 10
	 e8 s8 s4 b,8 s4.  | % 11
	 e4 s4 d8 s4. | % 12
	 e8 s8 s4 <e cis'>8 s4 a8 | % 13
	 <d, a'>8 r8 s2. | % 14
	 s2 a'8 s8 s4 | % 15
	 s4 <a, e'>8 s8 d8 s8 s4 | % 16
	 <d b'>8 s8 s4 e'8 s4. | % 17
	 b,8 s8 a8 s8 e'8 s8 s4 | % 18
	 s2 c8 s4 b8 | % 19
	 a'8 s8 s4 c8. s16 s4 | % 20
	 e,8 [ d16 d'] e,4 s2 | % 21
	 s2 f4 fis | % 22
	 e1 | % 23
}

melodyThree =  \relative a' {
	 <a, a'>4 s4 f'8 r8 e8 r8  | % 1	
	 d8 s8 dis8 s8 s4 gis,8 s8 | % 2
	 s2 e'8 s8 s4 | % 3
	 s1 | % 4
	 g8 s8 s2. | % 5
	 a8 s8 s8 c8 c8 s8 s4 | % 6
	 e,8 s8 s2. | % 7
	 a,8 s4 s8 dis8. s16 s8 e8 | % 8
	 b8 s8 s2. | % 9
	 s2 e'8 s4. | % 10
	 s2 <g, b>8 s8 fis8 s8 | % 11
	 s1 | % 12
	 c8 s8 s4 a8 s4. | % 13
	 s1 | % 14
	 s1 | % 15
	 s1 | % 16
	 g8 s8 s4 c8 s8 s4 | % 17
	 a'8 s8 a8 s8 s2 | % 18
	 s1 | % 19
	 c,8 [ d ] e s8 dis8. s16 s4 | % 20
	 s1 | % 21
	 s1 | % 22
	 s1 | % 23

}

melody = << \melodyOne \\ \melodyTwo \\ \melodyThree >>

% The score definition

\score {
	\context Staff << 
        \set Staff.instrumentName = "Violine"
	\set Staff.midiInstrument = "violin"
        { \clef treble \key a \minor \time 4/4 \melody  }
    >>
	\layout { }
 	 \midi { }
}
