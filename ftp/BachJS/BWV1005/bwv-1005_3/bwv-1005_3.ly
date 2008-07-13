\version "2.11.48"

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
        title = "Sonata III BWV 1005"
        subtitle = "\"Sechs Sonaten für Violine\""
        piece = "3. Largo "
        mutopiatitle = "BWV 1005"
        composer = "Johann Sebastian Bach (1685-1750)"
        mutopiacomposer = "BachJS"
        opus = "BWV 1005"
        date = "1720"
        mutopiainstrument = "Violine"
        style = "Baroque"
        source = "Bach-Gesellschaft Edition 1879 Band 27.1"
        copyright = "Creative Commons Attribution-ShareAlike 3.0"
        maintainer = "Hajo Dezelski"
		comment = "Dedicated to the memory of Cyrano 13.6.2008"
        maintainerEmail = "dl1sdz (at) gmail.com"
	
 footer = "Mutopia-2008/07/13-1467"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

melodyOne = \relative e' {
    a16 [ (bes c) f ] g [ (e) f (a,) ] d [ (bes) c8 ] r16 bes16 [ a g ] | % 1
    f16 [ (e d) f ] g [ (a) bes (d) ] bes \trill [ (a) a8 ] r16 a16 [ bes c ] | % 2
    d16 [ (a bes) d ] g [ (a) bes (g) ] f [ (e d) c ] f [ f, e f ] | % 3
    g16 [ (e f) d' ] e, [ g c bes ] a8 \trill [ g16 f16 ] d'8 [ d ] | % 4
    d8 [ c ] f [ f ] f [ e ~ ] e16 [ a d, c ] | % 5
    b16 [ (g) g'8 ] r16 c,16 [ d e ] e [ c b\trill a ] r16 d16 [ e f ] | % 6
    f16 [ d c b ] a' [ f g b, ] c8 r16 a'16 b,8. \trill [ c16 ] | % 7
    e,16 [ (f g) c ] d [ (b) c (a) ] f \trill [ (e) f8 ] r16 d16 [ (f a )] | % 8
    d16 [ (f) d (b) ] g8 [ (f16 \trill ) e32 f ] e8 \trill [ (d16 c) ] bes'8 [ bes ] | % 9
    bes16 [ g a c32 (bes) ] c8 [ c ] c16 [ (a bes) d ] es [ (d) es (bes') ] | % 10
    a16 [ (g a) c, ] d [ (c) d (aes') ] g [ (fis g) b, ] c [ (b) c (es) ] | % 11
    fis,16 [ (a) c8 ] r16 es16 [ d c ] bes [ (c d) bes' ] a8 [( g16 \trill ) fis32 g ] | % 12
    g8 [ ( bes32 a bes16 ) ] f,16. [ a'32 (g f e d)] c16 [ ( b c ) d ] e [ (g32 f g16 ) a ] | % 13
    bes16 [ g a8 ] e,16. [ g'32 (f e d c) ] bes16 [ (a bes) d ] g [ (e) f (bes,) ] | % 14
    a16 [ (g a) c ] g' [ (e) f (a,) ] g [ (b) d (f) ] a [ (g32 f e16) f ] | % 15
    e16 [ (f32 e d16 c) ] r16 f,16 [ (g a) ] a [ (f e \trill d) ] r16 g16 [ (a bes) ] | % 16
    bes16 [ (g f \trill e) ] d' [ (bes c) e, ] f8 r16 <f d'>16 e8. \trill [ f16 ] | % 17
    f16 [ (g a) c ] es, [ (d) es (c') ] d,32 [ (f g a bes16) d ] g [ (d) b (f) ] | % 18
    e32 [ (g a b c d e f ] g [ e c d e f g a ] bes [ a bes d) c8 ] bes,16. [ e32 (f e d c) ] | % 19
    f16 [ (e32 d c16) d ] a8 [ (g32) f g16 ] f'16 [ aes32 (g aes8 )] b,16. [ aes'32 ( g f e f )] | % 20
    c32 [( e f bes a g e f)] e8. \trill [ f16 ] f2 \bar "|." % 21 
}

melodyTwo =  \relative c' {
	f8 r8 r4 e8 r8 r4 | % 1
    d8 r8 r4 c8 r8 r4 | % 2
    bes8 r8 r4 bes'8 r8 r8 a,8 | % 3
    bes8 r8 c8 r8 f8 r8 r16 e16 [ f d ] | % 4
    e16 [ a, a'8 ] r16 g16 [ a f ] g [ c, c'8 ] f,8 r8 | % 5
    f8 r8  e8 r8  f8 r8  f8 r8 | % 6
    g8 r8 r8 r16 f16 e [ d c f ] g4 | % 7
    c,8 r8 r4 c8 r8 r4  | % 8
    r4 b8 r8 c8 r8 r16 d16 [ e c ] | % 9
    f8 r8 r16  e16 [ fis d ] g8 r8  r4 | % 10
    f8 r8 r4 es8 r8 r4 | % 11
    a,8 r8 fis'8 r8  g8 r8  d8 r8 | % 12
	g,8 r8 s4 e'8 r8 r4 | % 13
	f8 r8 s4 d8 r8 r4 | % 14
	c8 r8 r4 b8 r8 r4 | % 15
    bes8 r8 a8 r8 bes8 r8 bes8 r8 | % 16
	c8 r8 r8 r16 bes16 a [ g a bes ] c4 | % 17
	s1 | % 18
	s1 | % 19
	a'8 r16 f16 c4 b16 r16 r8 r4 | %20
    c8 r8 c4 f2 \bar "|." % 21
 }


melodyThree =  \relative e' {
	s1 | % 1
	s2 e8 s4. | % 2
	f8 s4. s2 | % 3
	s1 | % 4
	s1 | % 5
	s1 | % 6
	b8 s4. s8. c16 s4| % 7
	c8 s4. s2 | % 8
	s1 | % 9
	s1 | % 10
	es8 s4. d8 s4.| % 11
	s2. c8 s8 | % 12
	<d, b'>8 s4. s2 | % 13
	c'8 s4. s2 | % 14
	s1 | % 15
	<g c>8 s4. d8 s4. | % 16
	e8 s4. s2| % 17
	s1 | % 18
	s1 | % 19
	s2 <aes d>16 s8. s4 | % 20
	a8 s8 <g bes>4 a2 \bar "|." % 21

}


melody = << \melodyOne \\ \melodyTwo \\ \melodyThree  >>

% The score definition

\score {
	\context Staff << 
        \set Staff.instrumentName = "Violine"
		\set Staff.midiInstrument = "violin"
        { \clef treble \key f \major \time 4/4 \melody  }
    >>
	\layout { }
 	 \midi { }
}
