\version "2.16.1"

\paper {
    markup-system-spacing #'basic-distance = #19
    top-system-spacing #'basic-distance = #18
    system-system-spacing #'basic-distance = #26
    ragged-bottom = ##t
    ragged-last-bottom = ##t
}

% #(set-default-paper-size "a4")

#(set-global-staff-size 19)

\header {
        title = "Clavierübung Vierter Teil Aria mit 30 Veränderungen"
        subtitle = "\"Goldberg Variationen\""
        piece = "Variatio 7. a 1 ovvero 2 Clav."
        mutopiatitle = "Goldberg Variations - 7"
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
	
 footer = "Mutopia-2013/02/17-1407"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2013. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } } }
}


soprano =   \relative b' {
    \repeat volta 2 { %begin repeated section
    b8. [ a16 b8 ] d,8. [ g16 b8 ] | % 1
    a8. \prall [ g16 a8 ] d4. | % 2
    g8. \mordent [ fis16 g8 ] a,8. [ e'16 g8 ] | % 3
    fis8. \prall [ e16 fis8 ] d4. ~ | % 4
    d4 e32 ([ fis g a ] b8. ) [ g16 d8 ] | % 5
    e4 fis32 [\( g a b ] c8. \) [ a16 e8 ] | % 6
    fis8. [ d16 g8 ] \stemUp a,8. [ b16 c8 ] | % 7
    \grace c8 b4.~ \stemNeutral b8. [ a16 g fis ] | % 8
    g4 d'8 g4. ~ \prallmordent | % 9
    g8 [ a16 g fis e ] fis4. ( \prallmordent | % 10
    fis8. ) [ g16 fis8 ] e8. [ cis16 d8 ] | % 11
    cis8. \prall [ d16 e8 ] a,4. ~ | % 12
    a4 b32 ( [ cis d e ] fis8. ) [ d16 a8 ] | % 13
    b4 cis32 \( [ d e fis ] g8. \) [ e16 b8 ] | % 14
    \grace b8 cis8. [ a16 a'8 ] d,8. [ e16 cis8 ] | % 15
    \grace cis d4. ~ d4. | % 16
    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
    fis8. [ e16 fis8 ] a,8. [ d16 fis8 ] | % 17
    g8. [ fis16 g8 ] b4. | % 18
    e,4 fis32 ( [ g a b ] c16 ) [ b a g fis e ] | % 19
    dis8. \prall [ cis16 dis8 ] b4. ~  | % 20
    b8. [ b'16 fis8 ] g8. [ dis16 e8 ] | % 21
    c8. [ e16 gis8 ] a4 b32 ( [ a  g fis  ) ]  | % 22
    g8. [ a16 b8 ] e,8. [ fis16 dis8 ] | % 23
    e8. [ b16 g8 ] e4 b'8 | % 24
    b8. [ gis16 a8 ] d8 [ e16 d c b ] | % 25
    c8. [ e16 d8 ] e8. [ g16 fis8 ] | % 26
    g8 [ a16 g fis e ] a8. [ b16 g8 ] | % 27
    fis8. \prall [ e16 fis8 ] d4. ~ | % 28
    d4 e32 ( [ fis g a ] b8.) [ g16 d8 ] | % 29
    e4 fis32 ( [ g a b ] c8. ) [ a16 e8 ] | % 30
    fis8. [ d16 d'8 ] g,8. [ a16 fis8 ] | % 31
    g4. ~ g4. | % 32
    } %end repeated section
}


%%
%% Bass Clef
%% 

bass = \relative g {
	\repeat volta 2 { %begin repeated section
    g4 \prallmordent g,8 g'4. ( \prallmordent | % 1
    g4. ) fis8. \prall [ e16 d8 ] | % 2
    e4 d'8 cis4 a8 | % 3
    d4. ~ d8. [ e16 c8 ] | % 4
    b8. [ c16 a8 ] g8. [ a16 b8 ] | % 5
    c8. [ d16 b8 ] a8. [ b16 c8 ] | % 6
    d8. [ c16 b8 ] c4 d8 | % 7
    g,8. [ fis16 g8 ] d8. [ a'16 c8 ] | % 8
    b8. \prall [ a16 b8 ] e,8. [ b'16 d8 ] | % 9
    cis8. \prall [ b16 a8 ] d8. [ cis16 d8 ] | % 10
    g,8. [ b16 d8 ] \clef "treble" g4. ~ | % 11
    g8 [ a16 g fis e ] fis8. [ g16 a8 ] \clef "bass" | % 12
    d,8. [ a16 fis8 ] d8. [ e16 fis8 ] | % 13
    g8. [ a16 fis8 ] e8. [ fis16 g8 ] | % 14
    a8. [ g16 fis8 ] b8. [ g16 a8 ] | % 15
    d,8. [ fis16 a8 ] d4. | % 16
 
    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
    d4 d,8 d'4 c8 | % 17
    b8. \prall [ a16 b8 ] g8. [ a16 b8 ] | % 18
    c8. [ d16 b8 ] a8. [ b16 c8 ] | % 19
    b4 b,8 b'8. [ a16 b8 ] | % 20
    g4 a32 \( [ b cis dis ] e8. \) [ b16 g8 ] | % 21
    a4 b32 \( [ c d e ] f8. \) [ e16 dis8 ] | % 22
    e4 g,8 c8. [ a16 b8 ] | % 23
    e,4. ~ e8. [ e'16 d8 ] | % 24
    c8. \prall [ b16 c8 ] gis8. [ b16 e,8 ] | % 25
    a8. [ c16 b8 ] c8. [ b16 a8 ] | % 26
    b8. [ e16 d8 ] cis8. \prall [ b16 cis8 ] | % 27
    d4. ~ d8. [ e16 c8 ] | % 28
    b8. [ c16 a8 ] g8. [ a16 b8 ] | % 29
    c8. [ d16 b8 ] a8. [ b16 c8 ] | % 30
    d8. [ c16 b8 ] e8. [ c16 d8 ] | % 31
    g,8. [ d16 b8 ] g4. | % 32
    } %end repeated section
}


%% Merge score - Piano staff

\score {
    \context PianoStaff <<
        \set PianoStaff.midiInstrument = "harpsichord"
        \new Staff = "upper" { \clef treble \key g \major \time 6/8 \soprano  }
        \new Staff = "lower"  { \clef bass \key g \major \time 6/8 \bass }
    >>
    \layout{  }
    \midi { }

}
