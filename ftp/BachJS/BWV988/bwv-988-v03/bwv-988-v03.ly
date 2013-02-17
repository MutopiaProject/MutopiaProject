\version "2.16.1"

\paper {
      markup-system-spacing #'basic-distance = #19
      top-system-spacing #'basic-distance = #18
      system-system-spacing #'basic-distance = #26
      ragged-bottom = ##t
      ragged-last-bottom = ##t
}

%#(set-default-paper-size "a4")

#(set-global-staff-size 19)

\header {
        title = "Clavierübung Vierter Teil Aria mit 30 Veränderungen"
        subtitle = "\"Goldberg Variationen\""
        piece = "Variatio 3 Canone all' Unisono. a 1 Clav."
        mutopiatitle = "Goldberg Variations - 3"
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

 footer = "Mutopia-2013/02/17-1384"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2013. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } } }
}

% Macros %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

staffUpper = {\change Staff = upper \stemDown}
staffLower = {\change Staff = lower \stemUp}
shorterStem = \once \override Stem #'length-fraction = #(magstep -3)
longerStem = \once \override Stem #'length-fraction = #(magstep 3)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoOne =   \relative b' {
   \repeat volta 2 { %begin repeated section

  b4._~ b16 [ c d c d e ] a,4._~ a16 [ b c b c d] | %  1
  g,4. g'4. ~ g8 [ a16 g fis g ] a8 r8 r8 | % 2
  r8 d,16 [ c b a ] b8 [ c16 b a b ] g8 e' d c fis a | % 3
  b,4 g'8 g4 fis8 r8 r8 b8 a4 d,8 ~| % 4
  d16 [ e d c b8 ] e b d cis d e8_~ e8 cis8 a  | % 5
  r8 r8  d8 g,4._~ g8 [ fis g ] e a16 g fis e | % 6
  d8 [ e16 fis g a ] b8 [ d cis ] d4. ~ d8 cis8 r8 | % 7
  d4. ~ d16 [ a g fis g e] fis2. | % 8
    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
  r4. a'4. ~ a16 [ b c a b c ] b [ a g fis e dis ] | % 9
  e8 [ fis g ~ ] g [ fis e ] dis4._~ dis4 r8 | % 10
  r4. a4._~ a8 [ b16 a g  fis ] g16 [ a b g a  b ] | % 11
  e,8 [ fis16 g a b ] c8 [ e, dis ] e4. r4. | % 12
  e'4. ~ e16 [ fis g e fis g ] c,16 [ d e c d e ] a,16 [ b c a b c ]| % 13
  \once \override Beam #'positions = #'(4.2 . 4.2) b16 [ c d b c d ] g,4. ~ g8 g'4 ~ g8 [fis a] ~ | % 14  
  a8 g f e16 [ d c e d c ] b4 b'8 a4 c8 | % 15
  b4 d8 g,8 [a fis] g2. | \mark \markup { \musicglyph #"scripts.ufermata" } % 16
    }  %end of repeated section
  
}

sopranoTwo =   \relative b' {
   \repeat volta 2 { %begin repeated section
  \once \override  Voice.Rest #'extra-offset = #'(20.4 . 0 ) r1 s2| %1
  b4.^~  b16 [ c d c d e] a,4. ~ a16 [ b c b c d ] | % 2
  g,4.  g'~ g8[ a16 g fis g ] \once \override Stem #'length-fraction = #(magstep -3) a8 r8 r8 | % 3
  r8 d,16 [ c b a ] b8 [ c16 b a b ] g8 [ e' d ] c8 [ fis a ] | % 4
  b,4 \shorterStem g'8 g4 \longerStem fis8 r8 r8 \longerStem b8 a4 \longerStem d,8^~| % 5
  d16 [ e d c! b8 ]  e8 [ b d ] cis8 [ d e^~ ] e8 [ cis a ]| % 6
  r8 r8 \longerStem d8 g,4. ~ g8 [ fis g ] e8 [ a16 g fis e ]| % 7
  d8 [ e16 fis g a ] b8 [ d cis ] d2. | % 8
  | % 8
    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
  \once \override Voice.Rest #'extra-offset = #'(25.0 . 0 ) b1\rest s2| % 9
  r4. \once \override Tie #'control-points = #'( ( 1.374 . 2.129) ( 3.5726 . 0.274) ( 7.4201 . 0.068) ( 10.03 . 1.099) ) a'4. ~ \once \override Beam #'positions = #'(-2.0 . -2.0) a16 [ b16 c16 a16 b16 c16 ] \once \override Beam #'positions = #'(-2.0 . -3.0) b16 [ a16 g16 fis16 e16 dis!16 ] | % 10
   e8 [ fis8 g8^~ ] \once \override Beam #'positions = #'(-2.4 . -3.0) g8 [ fis8 e8 ] \once \override Tie #'control-points = #'( ( 0.2563 . 3.674) ( 5.1277 . 4.785) ( 11.11 . 4.529) ( 13.246 . 2.222) ) dis4.^~ dis4 r8 | % 11
  r4. a4.^~ a16 [ b c a g fis ] g16 [ a b g a b ]| % 12
  e,8 [ fis16 g a b ] c8 [ e, dis ] e4. r4. | % 13
  e'4.^~ e16 [ fis g e fis g ] c,16 [ d e c d e ] a,16 [ b c a b c ]| % 14  
  b16 [ c d b c d ] g,4. ~ g8 g'4 ~ g8 fis a ~| % 15
  a8 [g f] e16 [ d c e d c ] b2. | \mark \markup { \musicglyph #"scripts.ufermata" } % 16
    }  %end of repeated section
  
}

soprano = << \sopranoOne \\ \sopranoTwo >>


bass = \relative c {
	 \repeat volta 2 { %begin repeated section
		 
  g8 [ b d ] g8 [ b e, ] fis,8 [ a d] fis8 [ a d, ] | % 1
  e,8 [ g b ] e8 [ b cis ] d,8 [ fis a ] d8 [ fis a, ] | % 2
  b16 [ a b c d8 ] ~ ] d16 [ g,16 a b c d ] e16 [ d c
    b c e ] fis,16 [ a g fis e d ]| % 3
  g16 [ fis g a b c ] d [e a, b c a ] b [ a g fis g8 ] ~ g16 [ fis e d e  fis ] | % 4
  g16 [ fis g a g fis ] e16 [ fis g e fis g ] a16 [ g a b a g ] fis16 [ fis' g fis e fis ] | % 5
  b,16 [ a b c! d b ] cis16 [ d e d cis b ] a16 [ e' d cis d b ] cis16 [ a b cis d e ] | % 6
  fis16 [ b, cis d e fis ] g16 [ fis e d e ais, ]
  b16 [ cis d cis b a ] g16 [ fis g b a g ] | % 7
  fis16 [ a g fis e d ] g8 [ e a ] d,16 [ fis a d a fis ] d4. | % 8
    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
  d'8 [ fis a ] d [ c16 b a g ] fis8 [ a d, ] g8 [ a b ] | % 9
  c16 [ d c b a g ] fis16 [ e fis g a fis ] b8 [ fis g ] a16 [ c b a g fis ]| % 10
  g16 [ a g fis e d ] c16 [ b a b c a ] b8 [ fis' b ~ ] b [ g e ] | % 11
  c'16 [ d c b a g ] fis16 [ e fis b a b ] e,8 [ g b ] e8 [ e, d ] | % 12
  c8 [ c' b8 ] a4. ~ a8 [ c a ] fis8 [ d d' ] | % 13
  g,16 [ a g f e d ] c8 [ e c ] a16 [ b c a b c ] d8 [ d, fis' ] | % 14  
  g16 [ a b g a b ] c8 [ e a, ] d16 [ c b d c b ] c16 [ b a g fis a ]| % 15
  g16 [ fis e d c b ] c8 [ a d ] g,16 [ b d g d b ] g4. | % 16

    }  %end of repeated section
  
}


%% Merge score - Piano staff in key of G Major, 3/4 time.

\score {
    \context PianoStaff <<
        \set PianoStaff.midiInstrument = "harpsichord"
        \context Staff = "upper" { \clef "treble" \key g \major \time 12/8 \soprano  }
        \context Staff = "lower"  { \clef "bass" \key g \major \time 12/8 \bass }
    >>
    \layout{  }
    \midi { }

}
