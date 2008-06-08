\version "2.10.00"

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
        piece = "Variatio 6 Canone alla Seconda a 1 Clav"
        mutopiatitle = "Goldberg Variations - 6"
        composer = "Johann Sebastian Bach (1685-1750)"
        mutopiacomposer = "BachJS"
        opus = "BWV 988"
        date = "1741"
        mutopiainstrument = "Clavier"
        style = "Baroque"
        source = "Bach-Gesellschaft Edition 1853 Band 3"
        copyright = "Creative Commons Attribution-ShareAlike 3.0"
        maintainer = "Hajo Dezelski"
        maintainerEmail = "dl1sdz (at) gmail.com"
	
 footer = "Mutopia-2008/04/21-1385"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

% Macros %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

staffUpper = {\change Staff = upper \stemDown}
staffLower = {\change Staff = lower \stemUp}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoOne =   \relative a'' {
     s1*3/8 | % 1
    \repeat volta 2 { %begin repeated section
    \stemUp
    a4. ( | % 2
    a8 ) [ g16 fis e d ] | % 3
    c4. ( | % 4
    c8 ) [ b16 a g fis ] | % 5
    e4. ( | % 6
    e8 ) [ d16 c b a ] | % 7
    b4. ( | % 8
    b16 ) [ a c b a g ] |  % 9
    a16 a'4 ( s16 | % 10
    a8 ) [ g16 fis e d ] | % 11
    cis16 [ e a b c8 ( ] | % 12
    c8 ) [ b16 a g fis ] | % 13
    e4. ( | % 14
    e16 ) [ d cis e d cis ] | % 15
    }  %end of repeated section
    \alternative {
	    {d16 [ c b a g fis ] | % 16
	    g''4. ~}% 17
	    { d,4. a''4.}
    } %end of alternative
  
    \repeat volta 2 { %begin repeated section
    b4. ~ | % 18
    b8 [ a16 g16 fis16 e16 ] | % 19
    dis8 d4 ( | % 20
    d8 ) [ c16 b16 a16 g16 ] | % 21
    fis4. ( | % 22
    fis16 ) [ e16 d16 fis16 e16 d16 ] | % 23
    e16 [ d16 c16 b16 a16 gis16 ] | % 24
    a8 r8 r8 | % 25
    d4. ~ | % 26
    d16  [ b16 c16 a16 c16 e16 ] | % 27
    fis4. ( | % 28
    fis16 ) [ dis16 e16 c16 e16 g16 ] | % 29
    a4. ~ | % 30
    a16 [ g16 fis16 a16 g16 fis16 ] | % 31
    } %end repeated section
    \alternative {
	  {g16 [ fis16 e16 d16 c16 b16 ] | % 32
	  a''4.} % 33
	  { g4. }
    } %end alternative
}

sopranoTwo =   \relative a'' {
	 g4. ( | % 1
    \repeat volta 2 { %begin repeated section
    \stemDown
    g8 ) [ fis16 e16 d16 c16 ] | % 2
    b4. ( | % 3
    b8 ) [ a16 g16 fis16 e16 ] | % 4
    d4. ( | % 5
    d8 ) [ c16 b16 a16 g16 ] | % 6
    a4. ( | % 7
    a16 ) [ g16 b16 a16 g16 fis16 ] | % 8
    g8 g'4 ( | % 9
    g8 ) [ fis16 e16 d16 c16 ] | % 10
    b16 [ d16 g16 a16 bes8 ( ] | % 11
    bes8 ) [ a16 g16 fis16 e16 ] | % 12
    d4. ( | % 13
    d16 ) [ cis16 b16 d16 cis16 b16 ] | % 14
    cis16 [ b16 a16 g16 fis16 e16 ] | % 15
    } %end of repeated section
    \alternative {
	    { fis8 r8 r8 | % 16
	    g8 r8 r8}
	    { fis4. | r1*3/8}
    }
     
    \repeat volta 2 { %begin repeated section
    a''8 [ g16 fis16 e16 d16 ] | % 18
    cis8 c4 ~ | % 19
    c8 [ b16 a16 g16 fis16 ] | % 20
    e4. ~ | % 21
    e16 [ dis16 cis16 e16 dis16 cis16 ] | % 22
    dis16 [ cis16 b16 a16 g16 fis16 ] | % 23
    g8 r8 r8 | % 24
    c4. ~ | % 25
    c16 [ a16 b16 g16 b16 d16 ] | % 26
    e4. ~ | % 27
    e16  [ cis16 d16 b16 d16 fis16 ] | % 28
    g4. ( | % 29
    g16 ) [ fis16 e16 g16 fis16 e16 ] | % 30
    fis16 [ e16 d16 c16 b16 a16 ] | % 31
    } %end repeated section
    \alternative {
	    {g8 r8 r8 | % 32
	    a8 r8 r8}
	    { b4.}
    } %end alternative
}

soprano = << \sopranoOne \\ \sopranoTwo>>

%%
%% Bass Clef
%% 

bass = \relative g, {
    g16 [ fis g a b g ] | %1
    \repeat volta 2 { %begin repeated section
    d'16 [ c d e fis d ] | % 2
    g16 [ fis e fis g e ] | % 3
    a16 [ g fis g a fis ] | % 4
    b16 [ a g a b g ] | % 5
    c16 [ b a g fis e ] | % 6
    fis16 [ e fis d e fis ] | % 7
    g16 [ e d c b a ] | % 8
    g16 [ fis' e d c b ] | % 9
    cis16 [ a d e fis d ] | % 10
    g16 [ fis e fis g e ] | % 11
    a16 [ g fis g a fis ] | % 12
    b16 [ a g a b a ] | % 13
    gis8 [ gis, ] s8 | % 14
    a'8 [ a,, ] r8 | % 15
    } %end of repeated section
    \alternative {
	    {d8 [ d'16 c b a ] | % 16
	    g fis g a b g } % 17
	    { d8 g b | % 16
	    d16 cis d e fis d } %17 
    } %end of repeated alternative
  
    \repeat volta 2 { %begin repeated section
     g16 [ fis e fis g e ] | % 18
    a16 [ g fis g a fis ] | % 19
    b16 [ a gis a b gis ] | % 20
    c16 [ b a b c b ] | % 21
    ais8 [ ais,8 ] r8 | % 22
    b'8 [ b,8 ] r8 | % 23
    e,8 [ e'16 d c b ] |  %24
    a16 [ c e g fis e ] | % 25
    fis8 [ g,8 ] r8 | % 26
    g'8 [ a,8 ] r8 | % 27
    a'8 [ b,8 ] r8 | % 28
    b'8 [ c,8 ] r8 | % 29
    cis8 [ cis,8 cis'8 ] | % 30
    d8 [ d,8 d'8 ] | % 31
    } %end repeated section
    \alternative {
	    {g,8 [ g'16 fis e g ] | % 32
	    fis16 [ e d e fis d ]} % 33
	    { g,8 d' g}
	    }
}


%% Merge score - Piano staff in key of G Major, 12/8 time.

\score {
    \context PianoStaff <<
        \set PianoStaff.instrumentName = "Clavier  "
        \set PianoStaff.midiInstrument = "harpsichord"
        \context Staff = "upper" { \clef "treble" \key g \major \time 3/8 << \soprano >>  }
        \context Staff = "lower"  { \clef "bass" \key g \major \time 3/8 \bass }
    >>
    \layout{  }
    \midi { }

}
