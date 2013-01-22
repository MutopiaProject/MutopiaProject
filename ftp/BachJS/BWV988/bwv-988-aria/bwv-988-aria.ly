\version "2.16.1"

% Uncomment paper block below for fewer pages.
%\paper {
%       obsolete-between-system-padding = #0.1  system-system-spacing #'padding = #(/ obsolete-between-system-padding staff-space)  score-system-spacing #'padding = #(/ obsolete-between-system-padding staff-space)
%       obsolete-between-system-space = #0.1  system-system-spacing #'basic-distance = #(/ obsolete-between-system-space staff-space)  score-system-spacing #'basic-distance = #(/ obsolete-between-system-space staff-space)
%       ragged-last-bottom = ##f
%       ragged-bottom = ##f
%}

%Uncomment paper block below for evenly-filled pages.
%\paper {
%    obsolete-page-top-space = #0.0  top-system-spacing #'basic-distance = #(/ obsolete-page-top-space staff-space)
%    %indent = 0.0
%    line-width = 18.0\cm
%    ragged-bottom = ##f
%    ragged-last-bottom = ##f
%}

%#(set-default-paper-size "a4")
%#(set-default-paper-size "letter")

#(set-global-staff-size 19)

\header {
        title = "Aria con 30 Variazioni"
        subtitle = "\"Goldbergsche Variationen\""
        piece = "Aria"
        mutopiatitle = "Goldberg Variations - Aria"
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

 footer = "Mutopia-2013/01/22-979"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2013. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } } }
}

% Macros %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

staffUpper = {\change Staff = upper \stemDown}
staffLower = {\change Staff = lower \stemUp}
startRepeat = {\set Score.repeatCommands = #'(start-repeat)}
endRepeat = {\set Score.repeatCommands = #'(end-repeat)}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%
%% Treble Clef
%%

soprano = \relative c'' {
    \override Staff.NoteCollision #'merge-differently-dotted = ##t
    \override Script #'padding = #1.0
    \repeat volta 2 { %begin repeated section
        %1-5
        \stemDown g'4 g4( a8.\prallmordent) b16
        a8 \appoggiatura g16 fis8 \appoggiatura e16 d2
        \stemUp g,4\prallmordent g4.\downprall fis16 g16
        a32[( g32 fis16) g32( fis32 e16)] \appoggiatura e8 d2
        \stemDown d'4 d4( e8.\prallmordent) f16

        %6-10
        e8 \appoggiatura d16 c8 \appoggiatura b16 \stemUp a4. \stemDown fis'8\turn
        \stemDown g32[( fis16.) a32( g16.)] fis32[( e16.) d32( c16.)] \once \override Slur #'direction = #UP \appoggiatura c8 a'8. c,16
        \stemUp b32[( g16.) fis8] \appoggiatura fis8 g2\prallmordent
        b4 b4( cis8.\prallmordent) d16
        d16 cis16 b16 a16_~ \stemDown a2 \stemUp

        %11-15
        <g b e g>4\arpeggio \stemDown g'4.\downprall fis16 g16
        \override NoteColumn #'ignore-collision = ##t
        g8 \appoggiatura fis16 e8 \once \override Stem #'length-fraction = #(magstep -6) cis4.\downprall e8
        a16( g16 fis16 e16) d8 \stemUp a4_~ a32 b32 c16
        b16( a16 g16 fis16) e8 \appoggiatura d'16 cis4_~ cis32 d32 e16
        d16^( cis16 b16 a16) g'8 b,4 cis8

        %16-20
        \appoggiatura cis16 d8^~[ d32 e32 d32 cis32] \appoggiatura cis8 d2 
    } %end of repeated section
    \repeat volta 2 { %begin repeated section
        a4\prallmordent a4_~\downprall a16[ a32( b32 c32 d32 e16)]
        \appoggiatura e16 d8 \appoggiatura c16 b8 \appoggiatura a8 g4. g'8
        \appoggiatura fis16 e8. fis32 dis32 \appoggiatura dis8 e4.\prallmordent a32 b32 a32 g32
        a8. fis16 \appoggiatura e8 dis4. b8

        %21-25
        \stemDown g'8. \prallup fis16 \appoggiatura fis8 e4^~ e16[ b16 c32( b32 a32 b32)]
        g'32[( e16.) fis32( dis16.)] \appoggiatura dis8 e4^~ \stemUp e16 g,16 fis16 e16
        fis8. e'16 \appoggiatura e16 dis8 a'8 \prallup g8 fis8
        \appoggiatura fis16 e8. fis32 dis32 \appoggiatura dis8 e2
        \stemDown e8 \appoggiatura d16 c8 \appoggiatura b16 a4. b16[ c16]

        %26-30
        d32[( c32 b16) c32( b32 a16)] \appoggiatura a8 \stemUp g4. a16 b16
        c16 d16 c16 b16 c16 a16 e16 a16 c4^~
        c16 d16 c16 b16 c16 a16 fis16 a16 c16 e16 d16 c16
        b16 c16 b16 a16 b16 g16 d16 g16 b16 g16 c16 d16
        e16 f16 e16 d16 e16 c16 g16 c16 e16 c16 fis16 g16

        %31-32
        a16 c,16 b16 a16 b16 c16 d16 g,16 b16 a16 g16 fis16
        g4^~ g16 d16 g16 fis16 \appoggiatura fis8 g4\fermata

    } %end repeated section
}

%%
%% Bass Clef
%% 

bassOne = \relative c' {
    %1-5
    \stemDown g2.
    fis2.
    e2.
    d2_~ d8 c8
    b2.

    %6-10
    c2_~ c8 d8
    e8 c8 d2
    g,4. d'8[ e8.\prallmordent fis16]
    g2._~
    g4 fis8\prallprall e8 fis8 b8

    %11-15
    e,4. e8 fis8 g8
    a4. b8 a8 g8
    fis2.
    g2.
    a2.

    %16-20
    d,2. 
    d'2 c4
    b4. a8 b4
    c4. b8 a4
    b4. a8 g8 fis8

    %21-25
    e2 d4
    c2 b4
    a8 c8 b8 a8 b4
    e8 b8 e,8 b'8 e8 d8
    c2.

    %26-30
    b2.
    a4. g8 fis8 e8
    \stemUp d8 a'8 d8 c8 b8 a8
    \stemDown g8 d'8 g8 f8 e8 d8
    c8 g'8 c8 b8 a8 g8

    %31-32
    fis8 d8 g8 b8 d8 d,8
    g4. d8 \stemUp \once \override Script #'padding = #.8 g,4_\fermata
}

bassTwo = \relative c' {
    \override Script #'padding = #1.0
    %1-5
    \stemDown f4\rest b,2
    f'4\rest a,2
    f'4\rest g,2
    f'4\rest \stemUp fis,2
    f'4\rest d,2

    %6-10
    s4 e4. s8
    f'8\rest c8^~ c8[ b16 a16] g16 fis16 e16 fis16
    g8 a8 b2
    s4 b2
    a4 \staffUpper \stemUp d'2 \staffLower

    %11-15
    f,8\rest b,8 e4. d8
    cis8 d8 \staffUpper e2 \staffLower
    f4\rest a,2
    f'4\rest b,4 \staffUpper e4
    fis4 e8. fis16 g4_~

    %16-20
    g4 fis2 
    \staffLower a8\rest e8 \once \override Stem #'length-fraction = #(magstep -2) fis2^\prallmordent
    f8\rest c8 d2
    f8\rest e8 g4 fis8^\prallprall e8
    dis8 e8 \staffUpper fis2

    %21-25
    \staffLower f8\rest a,8 g8^\prallprall fis8 g4
    f'8\rest a,8 g8^\prallprall fis8 g8 b8
    \staffUpper fis'4. c'8 b8 a8_~
    a4 g2
    \staffLower s4 e,2

    %26-30
    \skip 2.
    \skip 4. \staffUpper e'8_~ e16 b'16 a16 g16
    fis4 r8 fis4.
    g8 r8 r8 d8. g8._~
    g4 r8 g8. c8.

    %31-32
    \skip 2.
    c,16\rest c16 b16 a16 b2 
    
} 

bassThree = \relative c' {
    %1-5
    \stemUp s4 f4\rest d4
    s4 f4\rest d4
    s4 f4\rest cis4
    s4 f4\rest a,4
    s4 f'4\rest g,4

    %6-10
    f'4\rest f4\rest a,4
    \skip 2.
    \skip 2.
    f'4\rest f4\rest \staffUpper e4
    \staffLower \skip 2.
    
    %11-15
    \skip 2.
    \skip 2.
    f4\rest f4\rest d4
    \skip 2.
    \skip 2.

    %16-20
    f4\rest f8\rest a,8 d4
    \skip 2.
    \skip 2.
    \skip 2.
    \skip 2.

    %21-25
    \skip 2.
    \skip 2.
    r4 r4 r8 dis,8
    e4 \skip 2
    f'4\rest f4\rest a,4^~

    %26-30
    a8 fis8 \once \override Slur #'direction = #DOWN \appoggiatura e16 d8[ e16 fis16] g16[ fis16 g8]^~
    g8[ e8] a8 a8\rest a4\rest
    
}

%% Merge Bass

bass = << \bassOne \\ \bassTwo \\ \bassThree >>

%% Merge score - Piano staff in key of G Major, 3/4 time.

\score {
    \context PianoStaff <<
        \set PianoStaff.midiInstrument = "harpsichord"
        \context Staff = "upper" { \clef treble \key g \major \time 3/4 << \soprano >>  }
        \context Staff = "lower"  { \clef bass \key g \major \time 3/4 \bass }
    >>
    \layout{  }
    \midi { }
}
