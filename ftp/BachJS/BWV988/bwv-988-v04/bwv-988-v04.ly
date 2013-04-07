\version "2.16.1"

\paper {
    top-markup-spacing #'basic-distance = #6
    line-width = 18.0\cm
    ragged-bottom = ##f
    ragged-last-bottom = ##f
}

% #(set-default-paper-size "a4")

#(set-global-staff-size 19)

\header {
        title = "Clavierübung Vierter Teil Aria mit 30 Veränderungen"
        subtitle = "\"Goldberg Variationen\""
        piece = "Variatio 4. a 1 Clav"
        mutopiatitle = "Goldberg Variations - 4"
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
	
 footer = "Mutopia-2013/04/07-1405"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \abs-fontsize #10 \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 MutopiaProject \abs-fontsize #8 .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \abs-fontsize #10 \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 LilyPond \abs-fontsize #8 .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2013. \hspace #0.5 Reference: \footer } } \line { \abs-fontsize #8 \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } } }
}

%------------------ MACROS
raiseMMRest = \once \override MultiMeasureRest #'staff-position = #6
raiseMMRestTwo = \once \override MultiMeasureRest #'staff-position = #10
staffUp = \change Staff = "upper"
staffDown = \change Staff = "lower"
shortenStem = \once \override Stem #'length-fraction = #(magstep -2)
lengthenStem = \once \override Stem #'length-fraction = #(magstep 1.5)
shiftNoteColLeft = \once \override NoteColumn #'force-hshift = #-0.3
shiftBeam = \once \override Beam #'positions = #'(5.2 . 5.3)
ignoreClashNote = \override NoteColumn #'ignore-collision = ##t
%------------------


sopranoOne =   \relative b' {
    \repeat volta 2 { %begin repeated section
    \stemUp
    r8 b8 [ g ] | % 1
    d'8 [ a d ] | % 2
    g4. ~ | % 3
    g8 [ fis ] r8 | % 4
    	R1*3/8 | % 5
	R1*3/8 | % 6
    r8 a,8 [ c8 ~ ] | % 7
    c16 [ a b8 ] r8 | % 8
    r8 e8 [ g ] | % 9
    cis,8 a'4 | % 10
    d,8 g4 ~ | % 11
    g8 [ fis e ~ ] | % 12
    e8 [ d c ] ~ | % 13
    c8 b4 | % 14
    a8 [ d cis  ~] | % 15
     } %end of repeated section
	
  \alternative {
	  { cis8 [d8 ] r8 | } %16
	  { cis8\repeatTie [d8 ] r8 | } %16
    } %end alternative
	
    \repeat volta 2 { %begin repeated section
    r8 fis8 [ d ] | % 17
    g8 b4 ~ | % 18
    b8  [ a16 g fis e ] | % 19
    dis16 [ e ] fis4 ~ | % 20
    fis8 [ e8 g8 ] | % 21
    cis,8 [ dis e ] ~ | % 22
    e8 [ dis16 cis b a ] | % 23
    g16 \prall [ fis e8 ] r8 | % 24
    r8 c'8 [ e ] | % 25
    a,8 [ b d ] | % 26
    \lengthenStem g,8 c4 ~ | % 27
    c8 [ d c ] | % 28
    b16 [ c ] d4 ~ | % 29
    d16 [ c d c b a ] | % 30
    d8 [ g, fis ~ ] | % 31
    } %end repeated section
	 \alternative {
		 {fis8  [ g8 ] r8 |} % 32
		 { fis8\repeatTie  [ g8 ] r8 |} % 32
    } %end alternative
}

sopranoTwo =   \relative d' {
  \repeat volta 2 { %begin repeated section
  \stemDown
    R1*3/8 | % 1
    r8 d8 [ fis ] | % 2
    b,8 [ g' c ] | % 3
    b16 [ g a8 ] r8 | % 4
	R1*3/8 | % 5
    r8 c,8 [ e ] | % 6
    a,8 d4 ~ | % 7
    d8 [ g8 ] r8 | % 8
	R1*3/8 | % 9
	R1*3/8 | % 10
    r8 cis8 [ e ] | % 11
    a,4 \stemUp \shiftOn \shortenStem g8 ~ \stemDown | % 12
    g8 [ fis a ] | % 13
    d,8 [ e g ] | % 14
    cis,8 [ a' g ] ~ | % 15
    } %end of repeated section
	 \alternative {
		 {g16 [ e fis8 ] r8 | } % 16
		 {g16\repeatTie [ e fis8 ] r8 | } % 16
    } %end alternative
  
    \repeat volta 2 { %begin repeated section
    R1*3/8 | % 17
    r8 d'8 [ b ] | % 18
    g8 [ a c ] | % 19
    fis,4 r8 | % 20
    r8 b8 [ g ] | % 21
    e8 [ fis g ] | % 22
    fis4. | % 23
    e4 r8 | % 24
    r8 a8 [ c ] | % 25
    fis,8 [ g b ] | % 26
    \stemUp \shortenStem e,8 \stemDown a4 ~ | % 27
    a8 [ fis a ~ ] | % 28
    a8 [ g b ] | % 29
    e,4. | % 30
    \staffDown \stemUp \shiftNoteColLeft \shiftBeam a,8 [ \staffUp \stemDown d  c ~ ] | % 31  
    } %end repeated section
	 \alternative {
		 {  c16 [ \staffDown \stemUp a b8 ] s8 | }% 32 
		 {  \staffUp \stemDown c16\repeatTie [ \staffDown \stemUp a b8 ] s8 | }% 32 
    } %end alternative
}

soprano = << \sopranoOne \\ \sopranoTwo>>

%%
%% Bass Clef
%% 

bassOne = \relative b {
	\repeat volta 2 { %begin repeated section
	\stemUp
    \raiseMMRest R1*3/8 | % 1
    \raiseMMRest R1*3/8 | % 2
    r8 b8 [ g ] | % 3
    d'4 r8 | % 4
    r8 g,8 [ b ] | % 5
    e,8 [ a g ~ ] | % 6
    g8 [ fis16 e fis8 ] | % 7
    g8 [ d ] r8 | % 8
    \raiseMMRest R1*3/8 | % 9 
    r8 d'8 [ fis ] | % 10
    b,8 [ e ] r8 | % 11
    r8 cis8 [ \staffUp \stemDown e8 ] | % 12
    \staffDown \stemUp a,4. ~ | % 13
    a8 [ g b ] | % 4
    e,8 [ fis e ] | % 15

    } %end of repeated section
	 \alternative {
		 {  d4 r8 |} % 16
		 {  d4 r8 |} % 16
			 
    } %end alternative
  
    \repeat volta 2 { %begin repeated section
    \raiseMMRestTwo R1*3/8 | % 17
    r8 d'8 [ g8 ] | % 18
    e8 c4 ~ | % 19
    c8  [ b16 a g fis ] | % 20
    g16 [ a ] b4 ~ | % 21
    b8 [ a b ] | % 22
    c8 b4 ~| % 23 
    b8  [ g b ] | % 24
    e,8 [ a16 g fis g ] | % 25
    \staffUp \stemDown d'4. | % 26
    c8 [ \staffDown \stemUp fis, a ] | % 27
    d,4. ~ | % 28
    d4  g8 ~| % 29
    g8 [ a c ] | % 30
    fis,8 [ g a ] | % 31
  
    } %end repeated section
	 \alternative {
		 { g4 r8 |} % 32
		 { g4 r8 |} % 32
    } %end alternative
}

bassTwo = \relative c' {
    \repeat volta 2 { %begin repeated section
	\stemDown
    g4. | % 1
    fis4. | % 2
    e4. | % 3
    r8 d8 [ fis ] | % 4
    b,4. | % 5
    c4. | % 6
    d4. | % 7
    r8 b8 [ d ] | % 8
    g,8 g'4 ^~ | % 9
    g8 fis4 ~ | % 10
    fis8 [ e g ] | % 11
    cis,8 [ a' cis ] | % 12
    fis,4. | % 13
    g8 g,4 ~ | % 14
    g8 [ fis8 a8 ] | % 15
    
    } %end of repeated section
	 \alternative {
		 { d,8. [ d'16 e fis ] | } % 16
		 { \ignoreClashNote \stemUp d,8. [ \stemDown a''16  b cis ] | } % 16
    } %end alternative
  
    \repeat volta 2 { %begin repeated section
    d4 c!8 | % 17 
    b4 g8 | % 18
    c8 [ fis, a ] | % 19
    b8 [ dis, b ] | % 20
    e8 [ g e ] | % 21
    a8 [ fis e ] | % 22
    a8 [ b b, ] | % 23
    e4 d8 | % 24
    c4. ~ | % 25
    c8  b4 ~ | % 26
    b8 [ a c ] | % 27 
    fis,8 [ d fis ] | % 28
    g8 [ b g ] | % 29
    c4. ~ | % 30
    c8  [ b d ] | % 31
    } %end repeated section
	 \alternative {
		 { g,8. a'16 b cis | } % 32
		 { g,4 r8 | } % 32
    } %end alternative
}

bass = << \bassOne \\ \bassTwo>>

%% Merge score - Piano staff

\score {
    \context PianoStaff <<
        \set PianoStaff.midiInstrument = "harpsichord"
        \new Staff = "upper" { \clef "treble" \key g \major \time 3/8 \soprano }
        \new Staff = "lower"  { \clef "bass" \key g \major \time 3/8 \bass }
    >>
    \layout{  }
    \midi { }

}
