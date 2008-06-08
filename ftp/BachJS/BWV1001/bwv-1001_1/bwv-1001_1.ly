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
        title = "Sonata I BWV 1001"
        subtitle = "\"Sechs Sonaten für Violine\""
        piece = "1. Adagio"
        mutopiatitle = "BWV 1001 Adagio"
        composer = "Johann Sebastian Bach (1685-1750)"
        mutopiacomposer = "BachJS"
        opus = "BWV 1001"
        date = "1720"
        mutopiainstrument = "Violine"
        style = "Baroque"
        source = "Bach-Gesellschaft Edition 1879 Band 27.1"
        copyright = "Creative Commons Attribution-ShareAlike 3.0"
        maintainer = "Hajo Dezelski"
        maintainerEmail = "dl1sdz (at) gmail.com"
	
 footer = "Mutopia-2008/06/01-1429"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

melodyOne = \relative g'' {
	g4^\markup { Adagio } ~ g32 [f (es d c bes a bes64 g ) ] g8 [ fis ] ~ fis32 [ e ( d e fis g a c64 bes )] | % 1
	c8 ~ [ c32 d64 ( c bes32 c ] c16. \trill [ bes64 c d16 a )] g'8 r32 g,32 ( [ a64 bes c d ] es8 ) [ bes ] | % 2
	bes16 [( a ) es' ( d)  ] r8 bes'16 [ (fis) ] d16 ~ [ d32 es (d c bes c64 a) ] bes32 [ (fis g d es d'64 c bes c c \trill bes128 c )]| % 3
	g'8 [ (fis) ] a8 [c,8] bes16 [ (d fis a) ] g8 [bes,] | % 4
	a16 [ (bes'32 a64 g f16. \trill e32 )] f8 [ a, ] f'16 [ (d es8) ] bes'16 [(g) g (es) ] | % 5
	es16 [ (cis) a'8 ] f,16. [ a'32 (g f e d ) ] e,16 [( d' g e ) ] d16 [ (cis) a (g') ] | % 6
	d,16 [ g' (f g32 e )] f8 [ a,8 ] a16 [ (d,) g f' ] e8 ~ [ e64 (f g a bes e, f g )] | % 7
	d8 [ (cis) ] g32 [( f16 g64 e f16) d' ] d32. [ (cis64 b32 cis d e f g64 e) ] cis8. \trill [ d16 ] | % 8
	d4 ~ d32 [ d ( c bes a64 bes a bes bes32 a64 bes) ]  c16 [ es32 (d es8) ] \stemDown 
	es32 ~ [ es (d c bes16 c32 a) ] \stemUp | % 9
	a16 [ bes8  g32 bes d ] g [ (f es d c bes a64 g fis g) ] g8 [(fis8)] f16 [ ( g64 aes g32  f es f64 d )] | % 10
	b'16 [ (d) d (c)]  es [ (d) d (es)] \appoggiatura es16 d16. [ bes32 (c d es f64 g) ] aes16 [(bes, d, aes'' )] | % 11
	es,16 [ aes' (g8) ] des8 [ es,32 (g bes des) ] aes,16 [ c']  aes' [ ( g32 f )] es8 [ (d16.) es32 ] | % 12
	es4 ^\fermata b,32 [ (d f aes b d aes'64 g) ] g16 ~ g32 [ aes64 (g fis g d es b c fis,32) ] g32 [( es'16 d c32 b c16 ) ] | % 13
	c16. [ ( bes64 aes g32 f es d )] c [( b c g c es g c )] d,16 [ c'32 (f)  b,8 \trill ] ~ b32 [ a ( g a b c d f64 es )] | % 14
	f4 ~ f32 [ aes ( g f g f es d )] es8 r32 c32 [ ( d64 es f g )] aes8 [ es ] | % 15
	es16 [ (d) aes' (g) ] g8 [ < g g,>8 ] <es, g'>8 s4. | % 16
	g'4 f8 [ f] g,32 [( b d f aes16 g) ]  es8 [ g ] | % 17
	es16 ~ [ es32 ( d c d c64 bes c a ) ] bes16 ~ [ (bes64) a ( g fis g32 d b g) ] c32 [ ( es bes' g aes8 ) ] r8 aes'16 [ (fis16) ] | % 18
	fis32 [ g a fis d8 ] bes,16. [ d'32 (c bes a bes64 g) ] a,16 [ (g' c a)]  g16 [( fis d c') ] | % 19
	g,16. [ c'32 (bes16 c32 a ) ] bes16. [ g,32 (a16 c32 bes )] c16 [ d (es) g ] (aes) [ b (c es) ] | % 20
	g8 [ (fis) ] bes16. [ (a64 g64 fis64 ) g8] ~ g16. [ bes,32 ( c d e fis )] g64 [( a bes a bes g aes fis128 g ) ] g32 [ ( fis32. \trill g64 )] s64 | % 21
	g1^\fermata | % 22
}

 melodyTwo =  \relative g {
	 g4 s4 a4 s4 | % 1
	 d8 s8 s4 g,8 s8 r8 g'8 | % 2
	 f8 r8 r8 d8 es8 s4.  | % 3
	 d4 r8 s8 g,16 s8. r8 g8| % 4
	 cis8 s4 s8 g'16 s16 r8 r8 bes16 [( g )]| % 5
	 \autoBeamOff
	 g8 r8 s2. | % 6
	 s4 r8 c,8 bes8 s4. | % 7
	 a4 s4 a8 s8 s4 | % 8
	 d4 s4 a16 s8. s4 | % 9
	 g8 s8 s4 s32 d'4 g,8 s16. | % 10
	 c16 s8. f8 [g] aes,8 s4. | % 11
	 s2 s8 f'8 bes,8 s8 | % 12
	 a4 s4 es16 s8. s4| % 13
	 s1 | % 14
	 g4 s4 c8 s4 c8 | % 15
	 bes8 s4 g8 aes8 s4. | % 16
	 g8 s4 <b g'>8 c8 s4 c8 | % 17
	 fis8 s4. s4 es'16 [( c) c (a) ] | % 18
	 a16 s8. s2. | % 19
	 s1 | % 20
	 c,4 s8 s32 cis8 d8 s4 s16. | % 21
	 g,1 | % 22
}
melodyThree =  \relative d' {
	 <d bes'>4 s4 <c'>4 s4 | % 1
	 fis4 s4 <d, bes'>8 s4. | % 2
	 s4 d'8 [ d ] g s4. | % 3
	 d4 s8 d,8 d16 s8. s8 f8 | % 4
	 e8 s8 s8 \autoBeamOff d8 bes'16 s16 s4.| % 5
	 s1 | % 6
	 s1 | % 7
	 g4 s4 e8 s4. | % 8
	 s2 fis16 s16 s8 fis'8 s8 | % 9
	 <d, g'>8 s8 s4 s32 a'4 b8 s16. | % 10
	 d,8 [ es ] s4 f8 s4.
	 s2 s8 c'8 f,8 s8| % 12
	 ges4 s4 c16 s8. s4| % 13
	 s1 | % 14
	 <d, b'>4 s4 g8 s4 aes8| % 15
	 f8 s4 es'16 [( b )] c16. [ bes32 ( aes g aes c)  ] f32 [ ( g es f f16. \trill es64 f ) ] | % 16
	 <d, c'>8 (b') d8 [ d ] s4. <g, es'>8 | % 17
	 a'4 s2. | % 18
	 s1 | % 19
	 s1 | % 20
	 <d,, a'>4 s8 s32 <e a>8 a8 s4 s16. | % 21
	 <d, bes'>1 | % 22

}

melody = << \melodyOne \\ \melodyTwo \\ \melodyThree>>

% The score definition

\score {
	\context Staff << 
        \set Staff.instrumentName = "Violine"
        { \clef treble \key d \minor \time 4/4 \melody  }
    >>
	\layout { }
 	 \midi { }
}
