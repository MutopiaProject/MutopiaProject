\version "2.11.45"

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
        piece = "3. Siciliano"
        mutopiatitle = "BWV 1001 Siciliano"
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
 footer = "Mutopia-2008/06/08-1448"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

melodyOne =  \relative b'' {
	r4. r8 r8 bes8 bes [ a g ] g [( f)] r8 | % 1
	s8 f8 [( g)] s8 es16 [ c d8 ] s8 d16 [ f es d ] c8 s8 s8 | % 2
	s8 c16 [ bes c8 ] s8 c8 [(f)] s8 es16 [ d  es8] a,,16 [( c f a32 c es16 g )]  | % 3
	f8 [ es16 d c bes ] d8 [ c32 d es16 d8 ] s2 s8 bes'8 | % 4
	bes8 [(a)] s8 s8 s8 a8 a [(g)] s8 s8  bes8 [ (a) ]  | % 5
	s8 fis16 [ (a)  g8 ] s8  g16 [ (bes)  a8] s8 a16 [ (bes) bes (c) ] c32 [ (bes a g fis e d c bes a bes c) ]  | % 6
	fis,8 [ d''16 (a) c8 ] g,16 [ bes' (a) fis (g) d ] es8 [c] s8 s8 s8 aes'8 | % 7
	fis8 [ g16 (d) es (d) ] s16 c16 [ bes (a) g (fis)] bes,32 [ (d e fis g a bes c d c es d) ] r8 c16 [(bes a g) ] | % 8    
	g8. s16 s4. bes8 bes [(a)] s4. b8 | % 9
	b8 [(c)] s4. c'8 c [(bes)] s4. bes8 | % 10
	bes8 [(a)] s4. aes8 aes [(g)] s4. g8  | % 11
	f8 r8 d8 es8 r8  f8 es16 [ (d) es (d) c (bes) ] bes [ (a) c (bes) d (c) ] | % 12
	es8 s16 g16 [ c8 ] bes16 [ (a g f) es8 ] es [ (d16) f bes8 ] aes16 [ (f d bes) aes'8 ] | % 13
	d,16 [ (bes) c (a) d, f' ] c [ (a) bes (g) c, es' ] bes [ (g) a (f) bes, d' ] es, [( d') g8 f16 (es) ] | % 14
	s2. f8. [ g16 f8 ] f [ es16 (d c b )] | % 15
	es8. [ f16 es8 ] es [ d16 (c bes a )] g [ f es d es8 ] d [ es f ] | % 16
	c'16 [ bes es8 d] es, [ g'16 es bes8 ]  e8. [ f16 e8 ] e16 [ (g f e d c) ] | % 17
	f8. [ d16 es8] s4. es16 [(d) g8 f] s8 s8 c8 | % 18
	bes8 s2 bes'8 bes [(a)] s4 s8 bes8  | % 19
	a8 [ (bes)] r8 r4. r2. \bar "|." % 20
}

melodyTwo =  \relative d'' {
	s4. s8 s8 s8  d [ c bes ] bes [a] s8 | % 1
	s8 c8 [bes] s8 a8 [bes] s8 bes8. [ bes16 ] a8 s8 s8 | % 2
	s8 a16 [ g a8] s8 a8 [b] s8 g16 [ f g8 ] s4 s8 | % 3
	d8 s8 es8 f [ es f ] bes,8. [ d16 f8 ]  es16 [( d c bes )] d'8 | % 4
	f,8. [ bes16 a8 ] g16 [( fis e d )] s8 d8 s2 s8  % 5
	d8 [ c' bes ] d, [ bes' c ] d, [ c' d ] es16 s16 s4 | % 6
	s2. g,8 s8 s4. c8 | % 7
	c8 [ bes fis] g [ c, d] s4. c8 [d] r8 | % 8
	s8. s16 s4. g8 g [(f)] s4. f8 | % 9
	f8 [ es ] c16 [d] f [ (es d c)] r8 g'8. [ d16 g8]  f16 [ (e d c) ] r8 | % 10
	es'8 [(f)] s4. d8 d [(es)] s4. c8  | % 11
	d,8 [ g,16 g'' bes,8]  c,8 [ f16 c' a8 ] bes,8 [ g' es ] s4. | % 12
	c8 s2 a8 bes8 s2 bes8 | % 13
	g''8 s1*11/8 | % 14    
	f,8. [ a16 c8 ] bes16 [( a g f) ] es8 d8 r8 r8 <g, d'>8 r8 r8 | % 15
	g'8 s4 f8 s4  bes,8 [ g]  bes'8 bes s4 | % 16
	g8. [ es16 f8 ] s1 s8 | % 17
	c'8 s4 f,16 [( c'' bes a g f)] s8 a,8 [ bes ] s4 es,8 | % 18
	d8 s2 d'8 d [c] s4 s8 es8  | % 19
	es8 [ d ] s8 s4. s2. \bar "|." % 20
 }

melodyThree = \relative bes {
	bes8. [ d16 f8 ] es16 [(d c bes)] d'8 f,8 s8 s8 s8 s8 es8 | % 1
	d8 s4 c8 s8 bes8 f'8 s8 s8 s8  a,8 [ c ] | % 2
	f8 s8 s8 es8 s8 d8 c8 s8 bes8 s8 s8 s8 | % 3
	bes'8 s2 s8 bes8 s2 s8  | % 4
	d8 [c] s8 s8 s8  c8 [c bes] s8 s8 d8 [ c ] | % 5
	s1*12/8 | % 6     
	s2. c,8. [ es16 g8 ] f16 [ es d c ] s8 | % 7
	d8 s4. g8  s2. s8 | % 8
	g,8. [ bes16 d8 ] c16 [ (bes a g )] r8 d'8. [ es16 d8 ] c16 [ (b a g )] r8 | % 9
	s2 s8 es''8 es [ d ] s4 s8 e8 | % 10	
	s8 s16 f,16 [ f'8 ] es16 [ (d c bes )] s8 s8 s16 bes,16 [es8 ] d16 [ ( c bes a) a'8 ] | % 11
	c8 s4  bes8 s4 f8 s4 f8 s4  | % 12
	g8 s2  f8 f8 s2 <f d'>8 | % 13
	es8 r8 s4 s1  | % 14
	d'8 [(c)] s8 s8 s8  c8 c  s8 s8 b8 s4 | % 15
	c,8 s4 a8 s2 g''8  f [ es16 c d8 ] | % 16
	s2 s8  f8   <g, bes>8 s4 <g c>8 s4  | % 17
	<a, f'>8 s8 s1 s4  | % 18
	bes8. [ d16 f8 ] es16 [( d c bes)] s8 s2 s4]  | % 19
	f8 s8 s1 s4 \bar "|." % 20
}

melodyFour =  \relative d' {
	s1*12/8 | % 1
	s1*12/8 | % 2
	s1*12/8 | % 3
	s2 s4 d8 s2 s8  | % 4
	s2 s4  g,8. [g'16 f8] es8 s4 | % 5
	s1*12/8 | % 6
	s1*12/8 | % 7
	s1*12/8 | % 8
	s1*12/8 | % 9
	s1*12/8 | % 10
	s1*12/8 | % 11
	s1*12/8 | % 12
	s1*12/8 | % 13
	s1*12/8 | % 14
	s1*12/8 | % 15
	s1*12/8 | % 16
	s2 s8 d8 c8 s4 bes8 s4 | % 17
	s2 s4. es8 [ d ] d32 [ es f16 d' bes ] s8 | % 18
	s2. f8. [ a16 c8 ] bes16 [ (a g f ) ] r8 | % 19
	bes,8 s8 s1 s4 \bar "|." % 20
}

melody = << \melodyOne \\ \melodyTwo \\ \melodyThree \\ \melodyFour>>


% The score definition

\score {
	\context Staff << 
        \set Staff.instrumentName = "Violine"
        { \clef treble \key d \minor \time 12/8 \melody  }
    >>
	\layout { }
 	 \midi { }
}
