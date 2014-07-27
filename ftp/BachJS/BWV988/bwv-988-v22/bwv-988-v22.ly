\version "2.18.2"

\paper {
top-margin = 8\mm
    top-markup-spacing.basic-distance = #6
    markup-system-spacing.basic-distance = #10
    top-system-spacing.basic-distance = #12
    last-bottom-spacing.basic-distance = #12
    %indent = 0.0
    line-width = 18.0\cm
    ragged-bottom = ##f
    ragged-last-bottom = ##f
}

% #(set-default-paper-size "letter")

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
        mutopiainstrument = "Harpsichord,Clavichord"
        style = "Baroque"
        source = "Bach-Gesellschaft Edition 1853 Band 3"
        license = "Creative Commons Attribution-ShareAlike 3.0"
        maintainer = "Hajo Dezelski"
        maintainerEmail = "dl1sdz (at) gmail.com"
	
 footer = "Mutopia-2014/07/27-1417"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2014 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans { " " \with-url #"http://creativecommons.org/licenses/by-sa/3.0/" "Creative Commons Attribution ShareAlike 3.0 (Unported) License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

%%------------definitions

posMMRest = \temporary \override MultiMeasureRest.staff-position = #0
posMMRestTwo = \once \override MultiMeasureRest.staff-position = #-2
posMMRestTre = { \once \override MultiMeasureRest.staff-position = #-4
                 \once \override MultiMeasureRest.extra-offset = #'( -2 . 0 )
}
posMMRestQtr = \once \override MultiMeasureRest.staff-position = #-6
posMMRestCin = \temporary \override MultiMeasureRest.staff-position = #-10
staffUp = { \change Staff = "upper" \stemDown \tieDown }
staffDown = { \change Staff = "lower" \stemUp \tieUp }
posNoteColum = \once \override NoteColumn.force-hshift = #0.5
ignoreClashNote = \temporary \override NoteColumn.ignore-collision = ##t 
tempoMark = #(define-music-function (parser location markp) (string?)
     #{
       \once \override Score.RehearsalMark.self-alignment-X = #left
       \mark \markup { \bold \smaller $markp }
     #})
	 
sopranoOne =   \relative d'' {
    \repeat volta 2 { %begin repeated section
		\tempoMark #"Alla breve"
    \stemUp
	R1 | % 1
        R1 | % 2
        R1 | % 3
	R1 | % 4
	b2\rest d ~ | % 5
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
        d2\rest a'2 ~ | % 17
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
        b2\rest d2 ~ | % 28
        d4 c8 [ b ] c4 e | % 29
        a,2 ~ a8 [ e' d e ] | % 30
        a,4 d2 c4 ~ | % 31
        c4 b8 [ a ] b2 | % 32

    } %end repeated section
}

sopranoTwo =   \relative g' {
  \repeat volta 2 { %begin repeated section
  \stemDown \tieUp
  	\posMMRest R1 | % 1
	R1 \undo \posMMRest | % 2
        g2\rest \shiftOn g2 ~ | % 3
        g4 fis8 [ e ] fis4 a | % 4
        d,2. f4 | % 5
        e2. \tieDown g4 ~ | % 6
        g4 fis8 [ e ] fis4 a ~ | % 7
        a4 g8 [ fis ] g4 b | % 8
        e,2 b' | % 9
        a2 d | % 10
        e1 ~ | % 11
        e1 ~ | % 12
        e4 d8 [ cis ] d4 fis | % 13
        b,2. e8 [ d ] | % 14
        e4 d2 cis4 | % 15
        d4 a8 [ g ] a2 | % 16
        \break
    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
		R1 | % 17
		b2\rest b2^~ | % 18
		b4 a8 [ g ] a4 c | % 19
		fis,2 b2| % 20
		\ignoreClashNote b2\rest \shiftOff g'2 ~ | % 21
		g4 fis8 [ e ] \undo \ignoreClashNote \shiftOn fis4 a | % 22
		dis,4  e2 dis4 | % 23
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
	\staffUp
         e2\rest e2 ~ | % 1
        e4 d8 [ cis8 ] d2 ~ | % 2
        d4 cis8 [ b8 ] cis4 e4 | % 3
        \staffDown a,1 ~ | % 4
        a4 g8 [ fis8 ] g2 ~ | % 5
        g4 e4 a2 ~ | % 6
        a4 a8 [ g8 ] a4 fis4 | % 7
        \staffUp d'2 \staffDown r2 | % 8
        r2 \staffUp e2 ~ | % 9
        e4 \staffDown d8 [ cis8 ] d2 ~ | % 10
        d4 cis8 [ b8 ] cis4 e4 | % 11
        a,1 | % 12
        r2 a2 ~ | % 13
        a4 g8 [ fis8 ] g4 b4 | % 14
        cis,4 d4 e8 [ fis8 ] g4 ~ | % 15
        g4 fis8 [ e8 ] fis2 | % 16
    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
        \staffUp \posMMRestTwo R1 | % 17
        \posMMRestTre R1 | % 18
        \posMMRestQtr R1 | % 19
        s1*2/4 fis'2 ~ | % 20
        fis4 e8 [ dis8 ] e4 g4 | % 21
        c,4 e4 a2 ~ | % 22
        a4 g4 fis2 | % 23
        e2 g,2\rest  | % 24
	\posMMRestCin R1 | % 25
	R1 \undo \posMMRestCin | % 26
        \staffDown r2 c2 ~ | % 27
        c4 b8 [ a8 ] b4 d4 | % 28
        g,2. b4 | % 29
        e,2 a2 ~ | % 30
        a4 a8 [ g8 ] a4 fis4 | % 31
        \staffUp d'1 | % 32
  
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
        g4 g'8 [ fis ]  g2^~ | % 9
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
        b4 d \staffUp g \staffDown \stemDown g, | % 18
        c4 e c a | % 19
        b4 \stemNeutral b, b' a | % 20
        g1 | % 21
        a1 | % 22
        b1 | % 23
        e,2. d4 | % 24
        \stemDown c2 c' ~ | % 25
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
        \set PianoStaff.midiInstrument = "harpsichord"
        \new Staff = "upper" { \clef treble \key g \major \time 2/2 \soprano  }
        \new Staff = "lower"  { \clef bass \key g \major \time 2/2 \bass }
    >>
    \layout{  }
    \midi { \tempo 2 = 90 }

}
