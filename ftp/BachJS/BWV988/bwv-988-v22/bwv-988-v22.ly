\version "2.11.44"

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
        title = "Clavierübung Vierter Teil Aria mit 30 Veränderungen"
        subtitle = "\"Goldberg Variationen\""
        piece = "Variatio 22. a 1 Clav."
        mutopiatitle = "Goldberg Variations - 22"
        composer = "Johann Sebastian Bach (1685-1750)"
        mutopiacomposer = "BachJS"
        opus = "BWV 988"
        date = "1741"
        mutopiainstrument = "Clavier"
        style = "Baroque"
        source = "Bach-Gesellschaft Edition 1853 Band 3"
        copyright = "Creative Commons Attribution-ShareAlike 3.0"
        maintainer = "Hajo Dezelski"
        maintainerEmail = "dl1sdz@gmail.com"
	
 footer = "Mutopia-2008/05/18-1417"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}
tempoMark = #(define-music-function (parser location markp) (string?)
     #{
       \once \override Score . RehearsalMark #'self-alignment-X = #left
       \once \override Score . RehearsalMark #'no-spacing-rods = ##t
       \mark \markup { \bold $markp }
     #})
	 
sopranoOne =   \relative d'' {
    \repeat volta 2 { %begin repeated section
		\tempoMark #"Alla Breve"
    \stemUp
		R1 | % 1
        R1 | % 2
        R1 | % 3
		R1 | % 4
		r2 d ~ | % 5
        d4 c8 [ b ] c4 e | % 6
        a,4 d2 c4  ~ | % 7
        c4 b8 [ a ] b2 ~ | % 8
        b4 b8 [ a ] b4 e | % 9
        cis4 a'2 g8 [ fis ] | % 10
        g1 \downprall ~ | % 11
        g1 ~ | % 12
        g4 fis8 [ e ] fis4 a | % 13
        d,2 g ~ | % 14
        g4 fis e2 | % 15
        d1 | % 16
    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
        r2 a'2 ~ | % 17
        a4 g8 [ fis ] g4 b | % 18
        e,1 ~ | % 19
        e4 dis8 [ cis ] dis4 fis | % 20
        b4 b, b'2 ~ | % 21
        b4 a8 [ g ] a4 c | % 22
        fis,4 g a2 ~  | % 23
        a4 g8 [ fis ] g4 b | % 24
        e,1 | % 25
        d1 | % 26
        c1 | % 27
        r2 d2 ~ | % 28
        d4 c8 [ b ] c4 e | % 29
        a,2 ~ a8 [ e' d e ] | % 30
        a,4 d2 c4 ~ | % 31
        c4 b8 [ a ] b2 | % 32

    } %end repeated section
}

sopranoTwo =   \relative g' {
  \repeat volta 2 { %begin repeated section
  \stemDown
  		R1 | % 1
		R1 | % 2
        r2 g2 ~ | % 3
        g4 fis8 [ e ] fis4 a | % 4
        d,2. f4 | % 5
        e2. g4 ~ | % 6
        g4 fis8 [ e ] fis4 ~ a  ~ | % 7
        a4 g8 [ fis ] g4 b | % 8
        e,2 b' | % 9
        a2 d | % 10
        e1 ~ | % 11
        e1 ~ | % 12
        e4 d8 [ cis ] d4 fis | % 13
        b,2. e8 [ d ] | % 14
        e4 d2 cis4 | % 15
        d4 a8 [ g ] a2 | % 16
    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
		r1 | % 17
		r2 b2 ~ | % 18
		b4 a8 [ g ] a4 c | % 19
		fis,2 b2| % 20
		r2 g'2 ~ | % 21
		g4 fis8 [ e ] fis4 a | % 22
		dis,4 e2 dis4 | % 23
		e2 b2 ~ | % 24
		b4 a8 [ g ] a4 c | % 25
		fis,4 d g2 ~ | % 26
		g4 fis8 [ e ] fis4 a | % 27
		d,2 r2 | % 28
		r2 g2 ~ | % 29
		g4 g8 [ fis ] g2 ~ | % 30
		g4 fis8 [ e ] fis4 a ~ | % 31
		a4 g8 [ fis ] g2 | % 32
  
    } %end repeated section
}

soprano = << \sopranoOne \\ \sopranoTwo>>

%%
%% Bass Clef
%% 

bassOne = \relative e' {
	\repeat volta 2 { %begin repeated section
	\stemUp
         r2 e2 ~ | % 1
        e4 d8 [ cis8 ] d2 ~ | % 2
        d4 cis8 [ b8 ] cis4 e4 | % 3
        a,1 ~ | % 4
        a4 g8 [ fis8 ] g2 ~ | % 5
        g4 e4 a2 ~ | % 6
        a4 a8 [ g8 ] a4 fis4 | % 7
        d'2 r2 | % 8
        r2 e2 ~ | % 9
        e4 d8 [ cis8 ] d2 ~ | % 10
        d4 cis8 [ b8 ] cis4 e4 | % 11
        a,1 | % 12
        r2 a2 ~ | % 13
        a4 g8 [ fis8 ] g4 b4 | % 14
        cis,4 d4 e8 [ fis8 ] g4 ~ | % 15
        g4 fis8 [ e8 ] fis2 | % 16
    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
        s1 | % 17
        s1 | % 18
        s1 | % 19
        s1*2/4 fis'2 ~ | % 20
        fis4 e8 [ dis8 ] e4 g4 | % 21
        c,4 e4 a2 ~ | % 22
        a4 g4 fis2 | % 23
        e2 r2  | % 24
		r1 | % 25
		r1 | % 26
        r2 c2 ~ | % 27
        c4 b8 [ a8 ] b4 d4 | % 28
        g,2. b4 | % 29
        e,2 a2 ~ | % 30
        a4 a8 [ g8 ] a4 fis4 | % 31
        d'1 | % 32
  
    } %end repeated section
}

bassTwo = \relative g {
    \repeat volta 2 { %begin repeated section
	\stemDown	    
        g1 | % 1
        fis1 | % 2
        e1 | % 3
        d2. c4  | % 4
        b1 | % 5
        c1 | % 6
        d1 | % 7
        g,1 ~ | % 8
        g4 g'8 [ fis ] g2 ~ | % 9
        g4 fis8 [ e ] fis4 b | % 10
        e,2. d4 ~ | % 11
        d4 cis8 [ b ] cis4 e | % 12
        fis,2 fis' | % 13
        g,2 e' | % 14
        a,1 | % 15
        d1  | % 16
    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
        d'2. c4 | % 17
        b4 d g g, | % 18
        c4 e c a | % 19
        b4 b, b' a | % 20
        g1 | % 21
        a1 | % 22
        b1 | % 23
        e,2. d4 | % 24
        c2 c' ~ | % 25
        c4 b8 [ a ] b4 e | % 26
        a,2. g4 | % 27
        fis2 g | % 28
        e2. d4 | % 29
        c2 cis | % 30
        d1 | % 31
        g,1 | % 32
 
    } %end repeated section
}

bass = << \bassOne \\ \bassTwo>>

%% Merge score - Piano staff

\score {
    \context PianoStaff <<
        \set PianoStaff.instrumentName = "Clavier  "
        \set PianoStaff.midiInstrument = "harpsichord"
        \new Staff = "upper" { \clef treble \key g \major \time 4/4 \soprano  }
        \new Staff = "lower"  { \clef bass \key g \major \time 4/4 \bass }
    >>
    \layout{  }
    \midi { }

}
