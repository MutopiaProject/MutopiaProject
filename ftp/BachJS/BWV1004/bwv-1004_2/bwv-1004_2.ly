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
        title = "Partita II BWV 1004"
        subtitle = "\"Sechs Sonaten für Violine\""
        piece = "2. Courante"
        mutopiatitle = "BWV 1004 Courante"
        composer = "Johann Sebastian Bach (1685-1750)"
        mutopiacomposer = "BachJS"
        opus = "BWV 1004"
        date = "1720"
        mutopiainstrument = "Violine"
        style = "Baroque"
        source = "Bach-Gesellschaft Edition 1879 Band 27.1"
        copyright = "Creative Commons Attribution-ShareAlike 3.0"
		comment = "Takt 49 Notenwert korrigiert"
        maintainer = "Hajo Dezelski"
        maintainerEmail = "dl1sdz (at) gmail.com"
	
 footer = "Mutopia-2008/05/18-1424"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}


melody =  \relative f' {
	\repeat volta 2 { %begin repeated section
		\partial 16 a16 % Auftakt
		\stemUp 
		<< {<f a>4
		\times 2/3 { cis8 [ ( bes' a ) ] } 
		\times 2/3 { g8 [ ( f e ) ] } } \\
		{ \stemDown d4 s2 \stemUp }
		>> | % 1
		<< { f4 
		\times 2/3 { a,8 [ ( g' f ) ] } 
		\times 2/3 { e8 [ ( d cis ) ] } } \\
		{ \stemDown d4 s2 \stemUp }
		>>| % 2
		d8. [ bes16 ] g8. [ f'16 ] e8. [ d16 ] | % 3
		cis8. [ a16 ] cis8. [ e16 ] a8. [ g16 ] | % 4
		\times 2/3 { f8 [ ( d e ] } 
		\times 2/3 { f8 [ g a ] } 
		\times 2/3 { bes8 [ c d ) ] } | % 5
		c8. [ a16 ] f8. [ c16 ] a8. [ es'16 ] | % 6
		\times 2/3 { d8 [ ( bes c ] } 
		\times 2/3 { d8 [ e f ] } 
		\times 2/3 { g8 [ a bes ) ] } | % 7
		\times 2/3 { a8 [ ( f g ] } 
		\stemDown
		\times 2/3 { a8 [ bes c ] } 
		\times 2/3 { d8 [ es c ) ] } | % 8
		\times 2/3 { d8 [ ( bes c ] } 
		\times 2/3 { d8 [ e f ] } 
		\times 2/3 { g8 [ a bes ) ] } | % 9
		e,,8. [ c'16 ] g'8. [ bes16 ] a8. [ g16 ] | % 10
		\times 2/3 { a8 [ ( g f ) ] } 
		\times 2/3 { e8 [ ( f g ) ] } 
		\times 2/3 { c,8 [ ( d e ) ] } | % 11
		\times 2/3 { f8 [ ( c bes ) ] } 
		\times 2/3 { a8 [ ( bes c ) ] } 
		\stemUp
		\times 2/3 { f,8 [ ( g a ) ] } | % 12
		d,8. [ fis16 ] a8. [ c16 ] bes8. [ a16 ] | % 13
		\times 2/3 { bes8 [ ( d c  ] } 
		\times 2/3 { bes8 [ a g ] } 
		\times 2/3 { f8 [ e d ) ] } | % 14
		cis8. [ e16 ] a8. [ g'16 ] f8. [ e16 ] | % 15
		\times 2/3 { f8 [ ( a, g ] } 
		\times 2/3 { f8 [ e d ] } 
		\times 2/3 { c8 [ b a ) ] } | % 16
		\stemDown
		\times 2/3 { gis8 [ ( d'' e ) ] } 
		\times 2/3 { f8 [ ( e d ) ] } 
		\times 2/3 { c8 [ ( d b ) ] } | % 17
		\times 2/3 { a,8 [ ( c' d ) ] } 
		\times 2/3 { e8 [ ( d c ) ] } 
		\times 2/3 { b8 [ ( c a ) ] } | % 18
		\stemUp
		\times 2/3 { gis8 [ ( d e ) ] } 
		\times 2/3 { f8 [ ( e d ) ] } 
		\times 2/3 { c8 [ ( d b ) ] } | % 19
		\times 2/3 { c8 [ ( e a ) ] } 
		\stemDown
		\times 2/3 { c8 [ ( e a ) ] } 
		\times 2/3 { b8 [ ( gis a ) ] } | % 20
		\times 2/3 { f8 [ ( cis d ) ] } 
		\times 2/3 { bes8 [ ( gis a ) ] } 
		\stemUp 
		\times 2/3 { f8 [ ( cis d ) ] } | % 21
		\times 2/3 { gis,8 [ \stemDown b'' a ] } 
		\times 2/3 { gis8 [ ( f e ] } 
		\times 2/3 { d8 [ c b ) ] } | % 22
		\times 2/3 { c8 [ ( e d ] } 
		\times 2/3 { c8 [ b a ) ] } 
		\stemUp
		\times 2/3 { e8 [ ( a gis ) ] } | % 23
		a,2 ~ a8. s16 | % 24
	} %end of repeated section
  
    \repeat volta 2 { %begin repeated section
		\partial 16 e''16 % Auftakt
		<< { <cis e>4 
		\times 2/3 { gis8 [ ( f' e ) ] } 
		\times 2/3 { d8 [ ( cis b ) ] } } \\
		{ \stemDown a4 s2  }
		>>| % 25
		\times 2/3 { cis8 [ ( a e ) ] } 
		\stemUp
		\times 2/3 { a,8 [ bes' ( a ] } 
		\times 2/3 { g8 [ f e ) ] } | % 26
		f8. [ d'16 ] e,8. [ g'16 ] f8. [ e16 ] | % 27
		f8. [ d16 ] a8. [ f16 ] d8. [ f16 ] | % 28
		\stemDown
		\times 2/3 { a,8 [ ( es'' d ) ] } 
		\times 2/3 { c8 [ ( bes a ) ] } 
		\times 2/3 { g'8 [ ( f es ) ] } | % 29
		d8. [ bes16 ] f8. [ d16 ] bes8. [ d'16 ] | % 30
		\times 2/3 { fis,8 [ c'' ( bes ] } 
		\times 2/3 { a8 [ g fis ] } 
		\times 2/3 { es8 [ d c ) ] } | % 31
		\times 2/3 { bes8 [ ( g a ] } 
		\times 2/3 { bes8 [ c d ) ] } 
		\times 2/3 { es8 [ ( d es ) ] } | % 32
		\times 2/3 { a,8 [ ( f g ] } 
		\times 2/3 { a8 [ bes c ) ] } 
		\times 2/3 { d8 [ ( c d ) ] } | % 33
		es,8. [ d'16 ] g8. [ bes,16 ] c8. [ es16 ] | % 34
		\stemUp
		\times 2/3 { fis,8 [ ( a g ] } 
		\times 2/3 { fis8 [ es d ] } 
		\times 2/3 { c8 [ bes a ) ] } | % 35
		\times 2/3 { bes8 [ ( d g ) ] } 
		\stemDown
		\times 2/3 { bes8 [ ( d g ) ] } 
		\times 2/3 { d8 [ ( g fis ) ] } | % 36
		\times 2/3 { g8 [ ( d c ] } 
		\stemUp
		\times 2/3 { bes8 [ a g ] } 
		\times 2/3 { f8 [ e d ) ] } | % 37
		e8. [ g16 ] \stemDown bes8. [ d16 ] c8. [ bes16 ] | % 38
		\times 2/3 { a8 [ ( f g ] } 
		\times 2/3 { a8 [ b cis ] } 
		\times 2/3 { d8 [ e f ) ] } | % 39
		\times 2/3 { g8 [ ( a g ] } 
		\times 2/3 { f8 [ e d ] } 
		\times 2/3 { cis8 [ b a ) ] } | % 40
		\times 2/3 { f'8 [ ( g f ] } 
		\times 2/3 { e8 [ d c ] } 
		\times 2/3 { b8 [ a g ) ] } | % 41
		\times 2/3 { e'8 [ ( f e ] } 
		\times 2/3 { d8 [ c bes ) ] } 
		\times 2/3 { a8 [ ( c es ) ] } | % 42
		\times 2/3 { d8 [ ( es d ] } 
		\times 2/3 { c8 [ bes a ) ] } 
		\times 2/3 { gis8 [ ( d' b' ) ] } | % 43
		<< { cis,4 \trill 
		\times 2/3 { a,8 [ a' (  b ] } 
		\times 2/3 { cis8 [ d e ) ] } } \\
		{ \stemDown a,4 s2  }
		>> | % 44
		\stemUp
		\times 2/3 { g8 [ ( fis g ) ] } 
		\times 2/3 { cis,8 [ ( g' a ] } 
		\times 2/3 { bes8 [ a g ) ] } | % 45
		\stemDown
		\times 2/3 { f8 [ ( g a ) ] } 
		\times 2/3 { d,8 [ d' ( e  ] } 
		\times 2/3 { f8 [ g a ) ] } | % 46
		\times 2/3 { c,8 [ ( b c ) ] } 
		\times 2/3 { fis,8 [ ( c' d ] } 
		\times 2/3 { es8 [ d c ) ] } | % 47
		\times 2/3 { bes8 [ ( fis g ) ] } 
		\times 2/3 { es'8 [ ( cis d ) ] } 
		\times 2/3 { bes'8 [ ( fis g ) ] } | % 48
		<< { <g cis>4 ~ \stemDown
		\times 2/3 { cis8 [ ( d cis ) ] } 
		\times 2/3 { d8 [ ( c bes ) ] } } \\
		{ \stemDown a,4 s2 \stemUp }
		>> | % 49
		\times 2/3 { a'8 [ ( g f ) ] } 
		\times 2/3 { e8 [ ( f d ) ] } 
		\times 2/3 { a8 ( [ d cis ) ] } | % 50
		d8. [ bes16 ] 
		\stemUp 
		gis4 ~
		\times 2/3 { gis8 [ ( a b ) ] } | % 51
		\times 2/3 { cis,8 [ ( e g ) ] } 
		bes4 ~
		\times 2/3 { bes8 [ a ( g ) ] } | % 52
		\stemDown
		\times 2/3 { f8 [ ( a cis ) ] } 
		\times 2/3 { d8 [ ( f a ) ] } 
		\stemUp
		\times 2/3 { a,,8 [ ( d cis ) ] } | % 53
		d2 ~ d8. s16 | % 54
    }
}

% The score definition

\score {
	\context Staff << 
        \set Staff.instrumentName = "Violine"
        { \clef treble \key d \minor \time 3/4 \autoBeamOff \melody  }
    >>
	\layout { }
 	 \midi { }
}
