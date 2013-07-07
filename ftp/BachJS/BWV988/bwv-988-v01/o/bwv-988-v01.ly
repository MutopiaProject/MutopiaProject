\version "2.16.1"

\paper {
  top-markup-spacing #'basic-distance = #6
  markup-system-spacing #'basic-distance = #12
  top-system-spacing #'basic-distance = #12
  line-width = 18.0\cm
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}

%#(set-default-paper-size "a4")
%#(set-default-paper-size "letter")

#(set-global-staff-size 18.5)

\header {
        title = "Aria con 30 Variazioni"
        subtitle = "\"Goldbergsche Variationen\""
        piece = "Variatio 1. a 1 Clav."
        mutopiatitle = "Goldberg Variations - 1"
        composer = "Johann Sebastian Bach (1685-1750)"
        mutopiacomposer = "BachJS"
        opus = "BWV 988"
        date = "1741"
        mutopiainstrument = "Harpsichord,Clavichord"
        style = "Baroque"
        source = "Bach-Gesellschaft"
        copyright = "Creative Commons Attribution-ShareAlike 3.0"
        maintainer = "JD Erickson"
        maintainerEmail = "erickson.jd@gmail.com"
 footer = "Mutopia-2013/05/13-980"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2013. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } } }
}

% Macros %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

staffUpper = {\change Staff = upper \stemDown}
staffLower = {\change Staff = lower \stemUp}
startRepeat = {\set Score.repeatCommands = #'(start-repeat)}
endRepeat = {\set Score.repeatCommands = #'(end-repeat)}
stemExtend = \once \override Stem #'length = #22
noFlag = \once \override Flag #'style = #'no-flag
adjustBeamOne = \once \override Beam #'positions = #'(2.1 . 1)
adjustBeamTwo = \once \override Beam #'positions = #'(5.5 . 4.9)
adjustBeamThree = \once \override Beam #'positions = #'(-1.3 . 1.3)
adjustBeamFour = \once \override Beam #'positions = #'(10 . 12.4)
flatBeam = \once \override Beam #'positions = #'( -0.2 . -0.2 )
flatBeamTwo = \once \override Beam #'positions = #'( -0.8 . -0.8 )
flatBeamThree = \once \override Beam #'positions = #'( -1.2 . -1.2 )

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%
%% Treble Clef
%%

soprano = \relative c'' {
    \override Script #'padding = #1.0
    \repeat volta 2 { %begin repeated section
        %1-5
        \stemUp g16 fis16 g8_~ g16 d16 e16 fis16 g16 a16 b16 cis16
        \stemDown d16 cis16 d8^~ d16 a16 b16 cis16 d16 e16 fis16 d16
        g16 fis16 g8^~ g16 fis16 e16 d16 \stemUp cis16 e16 a,16 g16
        fis16 e16 d16 cis16 \adjustBeamOne d16 fis16 \staffLower \stemExtend \noFlag a,16 \stemExtend \noFlag g16 \adjustBeamTwo fis16 a16 d,8
        \staffUpper \stemUp b''8\rest d16[ c16 d8 g,8 b,8 d'8]

        %6-10
        b8\rest e16[ d16 e8 a,8 c,8 e'8]
        \stemDown b8\rest fis'16[ e16 fis8 d8 a'8 c,8^~] 
        c8 b8 b16\rest g16 b16 d16 g16 d16 g16 a16
        b16 g16 d16 b16 g16 b16 d16 g16 b16 g16 fis16 e16
        a16 e16 cis16 a16 fis16 a16 cis16 e16 a16 fis16 e16 d16

        %11-15
        g16 d16 b16 g16 e16 g16 b16 d16 g16 fis16 e16 d16
        \stemUp cis16 g16 e16 cis16 a16 cis16 e16 g16 \stemDown cis16 e16 d16 cis16
        d8 \clef "bass" fis,,8 fis8 \clef "treble"  a'8 d8 fis8
        b,8 \clef "bass"  g,8 g8 \clef "treble" b'8 e8 g8
        cis,16 e16 a,16 g16 fis16 a16 d16 fis16 g16 e16 d16 cis16 

        %16-20
        fis16 d16 cis16 b16 \stemUp a16 g16 fis16 e16 \staffLower d4       
    } %end of repeated section
    \repeat volta 2 { %begin repeated section
        \staffUpper fis'16 g16 a8^~ a16 b16 a16 g16 fis16 e16 d16 c16
        b16 c16 d8^~ d16 e16 d16 c16 \stemUp b16 a16 g16 fis16 
        e16 gis16 a16 b16 a16 e16 a16 b16 c16 a16 dis16 e16
        fis16 e16 dis16 cis16 b2^~

        %21-25
        b16 dis16 e8^~ e16 dis,16 e8_~ e16 \staffLower \stemExtend \noFlag dis,16 \stemExtend \noFlag e8
        \staffUpper \stemUp a''16\rest gis16 a8^~ a16 gis,16 a8_~ a16 \staffLower \stemExtend \noFlag gis,16 \stemExtend \noFlag a8^~
        \stemExtend \noFlag \adjustBeamFour a16 \staffUpper \stemUp b16 c16 fis16 b,16 dis16 e16 g16 fis16 e16 dis16 a'16  
        g16 fis16 e16 dis16 \stemDown e16 g16 \staffLower \stemExtend \noFlag b,16 \stemExtend \noFlag a16 g16 b16 e,8 
        \staffUpper \stemDown b''8\rest e8 c8 e8 a8 a,8         

        %26-30
        b8\rest d8 b8 d8 g8 g,8
        \stemUp c16 a16 e16 c16 a16 c16 e16 a16 \stemDown c16 a16 c16 e16
        fis16 c16 a16 fis16 \stemUp d16 fis16 a16 c16 \stemDown fis16 c16 fis16 a16
        b16 g16 d16 b16 g16 b16 d16 g16 b16 f16 b16 d16 
        e,16 d'16 c16 e,16 d16 c'16 b16 d,16 c16 e16 fis16 g16        

        %31-32
        a16 c,16 b16 a16 \stemUp b16 d16 b16 g16 c16 a16 g16 fis16
        b16 g16 fis16 e16 d16 c16 b16 a16 g4\fermata
    } %end repeated section
}

%%
%% Bass Clef
%%

bass = \relative c {
        \override Script #'padding = #1.0
        %1-5
        \stemUp g8[ b'16 a16 b8 g8 g,8 g'8] 
        fis,8[ fis'16 e16 fis8 d8 fis,8 d'8]
        e,8[ e'16 d16 e8 g8 a,8 cis'8]
        \stemDown d,8[ fis16 e16 fis8 d8] d,8 e16\rest c'!16
        \stemUp b16 a16 b8_~ b16 d16 e16 fis16 \stemDown g16 a16 b16 g16

        %6-10
        \stemUp c,16 b16 c8_~ \stemDown c16 e16 fis16 g16 a16 b16 c16 a16
        \stemUp d,16 cis16 d8_~ \stemDown d16 a'16 b16 c!16 d16 e16 fis16 d16
        g16 fis16 g16 d16 b16 d16 g,16 b16 d,16 g16 b,16 d16
        \stemUp \flatBeam g,8[ \stemDown g'8 b8 g8 \stemUp g,8 \stemDown g'8]
        \stemUp \flatBeamTwo fis,8[ \stemDown fis'8 a8 fis8 \stemUp fis,8 \stemDown fis'8]

        %11-15
        \stemUp \flatBeamThree e,8[ \stemDown e'8 g8 e8 \stemUp e,8 \stemDown g'8]   
        a,8 e'8 g8 e8 a,8 g'8
        fis16 a16 d16 fis16 a16 fis16 d16 a16 fis16 a16 d,16 fis16
        g16 b16 d16 g16 b16 g16 d16 b16 g16 b16 e,16 g16
        a8[ cis8] d16[ a16 fis16 d16] a'8[ a,8]

        %16-20
        \stemUp d,16 d'16 e16 fis16 \stemDown g16 a16 b16 cis16 d4
        \stemUp d,,8[ fis'16 e16 fis8 d8 d,8 fis'8]
        g,8[ b'16 a16 b8 g8 g,8 b'8]
        \stemDown c,8[ c'16 b16 c8 fis,8 a8 c8]
        a8 fis8 dis16 b16 dis16 fis16 \adjustBeamThree b16 \staffUpper \stemExtend \noFlag dis16 \stemExtend \noFlag fis16 \stemExtend \noFlag a16   

        %21-25
        g8. fis16 g8.[ \staffLower \stemUp fis,16] \stemDown g8. b,16
        \stemUp c8.[ \staffUpper \stemDown b''16] c8.[ \staffLower \stemUp b,16] \stemDown c8. e,16 
        dis8[ a'8 g8 ais,8 b8 fis'8]
        e8[ g16 fis16 g8 e8] e,8 g16\rest d'16
        c16 e16 a16 c16 e16 c16 a16 e16 c16 e16 d16 c16    

        %26-30
        b16 d16 g16 b16 d16 b16 g16 d16 \stemUp b16 d16 c16 b16
        \stemDown a8[ c8 e8 g8 fis8 e8]
        d8[ fis8 a8 c8 b8 a8]
        g8[ b8 d8 f8 e8 d8]
        c8[ e8 fis!8 gis8 a8 g8]    

        %31-32
        fis8[ d8 g8  g,8 d'8 d,8]
        \stemUp g16 g,16 a16 b16 \stemDown c16 d16 e16 fis16 g4_\fermata    
}

%%
%% Score Layout 
%%

\score {
    \context PianoStaff <<
        \set PianoStaff.midiInstrument = "harpsichord"
        \context Staff = "upper" { \clef treble \key g \major \time 3/4 \soprano }
        \context Staff = "lower"  { \clef bass \key g \major \time 3/4 \bass }
    >>
    \layout{ }
    \midi { } 
}
