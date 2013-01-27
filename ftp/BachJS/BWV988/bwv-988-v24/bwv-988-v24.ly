\version "2.16.1"

\paper {
    obsolete-page-top-space = #0.0  top-system-spacing #'basic-distance = #(/ obsolete-page-top-space staff-space)
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
        piece = "Variatio 24. Canone all'Ottava. a 1 Clav. "
        mutopiatitle = "Goldberg Variations - 24"
        composer = "Johann Sebastian Bach (1685-1750)"
        mutopiacomposer = "BachJS"
        opus = "BWV 988"
        date = "1741"
        mutopiainstrument = "Harpsichord,Clavichord"
        style = "Baroque"
        source = "Bach-Gesellschaft Edition 1853 Band 3"
        copyright = "Creative Commons Attribution-ShareAlike 3.0"
        maintainer = "Hajo Dezelski"
        maintainerEmail = "dl1sdz (at) gmail.com"
	
 footer = "Mutopia-2013/01/27-1404"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2013. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } } }
}


sopranoOne =   \relative g' {
    \repeat volta 2 { %begin repeated section
    	\stemUp
        g4 fis8 g4 a8 b [ d cis ] | % 1
        d4 a8 d4 e8 \grace e16 fis16 [ g fis e d8 ] | % 2
        \stemDown g8 [ b a ] b [ g fis ] g4. ( | % 3
        \stemUp g8 ) [ fis e ] fis [ g a ] d,4. ( | % 4
        d8 ) [ g fis ] g [ b a ] b [ d16 c b a ] | % 5
        b8 [ c16 b a g ] a8 [ b16 a g fis ] g8 [ a16 g fis e ] | % 6
        d8 r8 r8 g8 r8 r8 fis8 r8 r8 | % 7
        g8 r8 r8 c,8 r8 r8 b8 r8 r8 | % 8
	R1*9/8 | % 9
	R1*9/8 | % 10 
        r8 b'8 [ a ] g [ a fis ] e16 [ d cis8 d ] | % 11
        \grace d8 cis4. ~ cis8 [ d e ] a, [ b cis ] | % 12
        d4 fis8 g4 a8 b,4.~ | % 13
        b8 [ a g ] a2. ~ | % 14
        a8 [ d cis ] d16 [ e fis8 e ] fis [ a16 g fis e ] | % 15
        fis8 [ g16 fis e d ] e8 [ fis16 e d cis ] d4. | %16
	
    } %end of repeated section
    
    \repeat volta 2 { %begin repeated section
	R1*9/8 | % 17
	R1*9/8 | % 18
	\override NoteColumn #'ignore-collision = ##t
        a'2.  ~ ^\downprall a4. ~ | % 19
        a8  [ g fis ] g [ b a ] b4 dis,8 | % 20
        e8 [ g16 fis e d ] c8 [ e16 d c b ] a8 [ c16 b a g ] | % 21
        fis4 e'8  dis  [e \turn  fis ] b,4. ~ | % 22
        b8 [ dis e ] ~ e16 [ d c b c8 ] ~  c16 [ b a g a8 ~ ] | % 23
        a8 [ fis g  ] b4. \prallmordent ~ b8  [ c d ] | % 24
        e8 [ gis, b ] a4. ~  a8  [ b c ] | % 25
        d8 [ fis, a ] d,4 fis8 b4. ~ | % 26
        b4 dis,8 e [ fis g ] fis [ g a ] | % 27
        \mergeDifferentlyDottedOn d,4. d4. d4._~ | % 28
        d8 [ g fis ] g [ a b ] c [ d16 c b a ] | % 29 
        b8 [ c16 b a g ] a8 [ b16 a g fis ] g8 [ b16 a g fis ] | % 30
        g8 b8\rest b8\rest d,8 b'8\rest b8\rest fis8 b8\rest b8\rest | % 31
        g8 b8\rest b8\rest c,8 b'8\rest b8\rest b,4. | % 32

    } %end repeated section
}

sopranoTwo =   \relative g {
  \repeat volta 2 { %begin repeated section
  	\stemDown
        R1*9/8 | % 1
	R1*9/8 | % 2
	\change Staff = "lower" \stemUp
        g4 fis8 g4 a8 b d cis | % 3
        d4 a8 d4 \change Staff = "upper" \stemDown e8 \stemUp \grace e16 \stemDown fis16 [ g fis e d8] | % 4
        g8 [ b a ] b [ g fis ] g4. ( | % 5
        g8 ) [ fis e ] fis [ g a ] d,4. ~ | % 6
        d8 [ g fis ] g [ b a ] b [ d16 c b a ] | % 7
        b8 [ c16 b a g ] a8 [ b16 a g fis ] g8 [ a16 g fis e ] | % 8
        d8 [ b' a ] g [ a fis ] e16 [ d cis8 d ] |  % 9
        \stemUp \grace d8 \stemDown cis4. ( cis8 ) [ d e ] \change Staff = "lower" \stemUp a, [ b cis ] | % 10
        d4 \change Staff = "upper" \stemDown fis8 g4 a8 \change Staff = "lower" \stemUp b,4.^~ | % 11
        b8 [ a gis ] a2.^~ | % 12
        a8 [ \change Staff = "upper" \stemDown d cis ] d16 [ e fis8 e ] fis [ g16 fis e d ] | % 13
        fis8 [ g16  fis  e  d ] e8 [ fis16  e  d  cis ] d8 [ e16 d cis \change Staff = "lower" \stemUp b ] | % 14
        a8 c8\rest d8\rest \change Staff = "upper" \stemDown d8 r8 r8 cis8 r8 r8 | % 15
        d8 r8 r8 g8 r8 r8 fis4. | % 16
    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
	a2.^\downprall ~ a4. ~ | % 17
        a8 [ g fis ] g [ b a ] b4 \change Staff = "upper" \stemUp dis,8 | % 18
        e8 [ g16 fis e d ] c8 [ e16 d c b ] a8 [ c16 b a g ] | % 19
        fis4 \change Staff = "upper" \stemDown e'8 dis [ \once \override Script #'outside-staff-priority = ##f \once \override Script #'extra-offset = #'(0.0 . -3.3 ) e^\turn fis ] \change Staff = "lower" \stemUp b,4.^~ | % 20
        \once \override Beam #'damping = #+inf.0
        b8 [ \change Staff = "upper" \stemDown dis e ]  ~ \once \override Beam #'damping = #+inf.0 e16 [ d \change Staff = "lower" \stemUp c b c8^( ] c16 ) [ b a g a8^~ ] | % 21
        a8 [ fis g ] d'4.\rest \change Staff = "upper" r4. | % 22 
	R1*9/8 | % 23
	R1*9/8 | % 24
	R1*9/8 | % 25
        r4. \stemDown b4. ( b8 ) [ c d ] | % 26
        e8 [ \change Staff = "lower" \stemUp gis, b ] a4.^~ a8 [ b c ] | % 27
        \stemDown \change Staff = "upper" d8 [ \change Staff = "lower" \stemUp fis, a ] d,4 fis8 b4.^~ | % 28
        b4 dis,8 e [ fis g ] fis [ g a ] | % 29
        d,4. d4. d4.^~ | % 30
        d8 [ g fis ] g [ a b ] c [ d16 c b a ] | % 31
        b8 [ c16 b a g ] a8 [ b16 a g fis ] g4. | % 32

  
    } %end repeated section
}

soprano = << \sopranoOne \\ \sopranoTwo>>

%%
%% Bass Clef
%% 

bass = \relative g {
	\repeat volta 2 { %begin repeated section
	\stemDown
        g4. r8 r8 fis8 g4 e8 | % 1
        fis4. r8 r8 a8 d,4 fis8 | % 2
        e2._( e4_) a8 | % 3
        d,4. r4. r8 r8 c'8 | % 4
        b4. r8 r8 d8 g,4 b8 | % 5
        e4 r8 r8 r8 a,8 b [ a b ] | % 6
        c8 [ b a ] b [ d c ] d4 d,8 | % 7
        g4 \stemUp g,8 g4 \stemDown g'8 g [ fis16 e d c ] | % 8
        \stemUp b8 [ g a ] b [ c d ] g,4 \stemDown g'8 ( | % 9
        g8 ) [ fis e ] a4 g8 fis [ g a ] | % 10
        b4._~ b4 a8 g4 e8 | % 11
        a,4 r8 r8 r8 g'8 fis4 e8 | % 12
        fis4 a8 b4 cis8 d4 d,8 | % 13
        g4 \stemUp b,8 \stemDown cis d e fis e fis | % 14
        g8 fis e fis a g a4 \stemUp a,8 \stemDown | % 15
        d4 \stemUp d,8 d4 \stemDown d'8 d4. | % 16

    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
   | % 17
        d8 [ fis a ] d [ e16 d c b ] c8 [ d16 c b a ] | % 17
        b4. ( b8 ) [ c d ] g, [ a b ] | % 18
        c8 r8 r8 a8 r8 r8 fis8 r8 r8 | % 19
        \mergeDifferentlyDottedOn
        dis4 fis8 b4._~  b8 [ g a ] | % 20
        g8 r8 r8 e8 r8 r8 c8 r8 r8 | % 21
        a4 ais8 b [ c'16 b a g ] a8 [ b16 a g fis ] | % 22
        g8 [ a16 g fis e ] c'8 [ dis, e ] b [ e dis ] | % 23
        e4. \prallmordent ~ e8 [ g b ] e4 d8 | % 24
        c4. ~ c8 [ b c ] fis, [ g a ] | % 25
        b8 [ d, fis ] b, [ c d ] g, [ a b ] | % 26
        c4. c4. c4._~ | % 27
        c8 [ d16 c b a ] b8 [ c d ] g, [ a b ] | % 28
        e,8 r8 r8 e'8 r8 r8 a,8 r8 r8 | % 29
        g8 [ a b ] c [ b a ] b [ g a ] | % 30
        b4._~ b8 [ a g ] d'4 d,8 | % 31
        g4 \stemUp g,8 g4 \stemDown g'8 g4. | % 32
	
    } %end repeated section
}

%% Merge score - Piano staff

\score {
    \context PianoStaff <<
        \set PianoStaff.midiInstrument = "harpsichord"
        \new Staff = "upper" { \clef treble \key g \major \time 9/8 \soprano  }
        \new Staff = "lower"  { \clef bass \key g \major \time 9/8 \bass }
    >>
    \layout{  }
    \midi { }

}
