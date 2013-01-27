\version "2.16.1"

% Uncomment paper block below for fewer pages (or in the case of this piece, if you want A4 size paper).
%\paper {
%       obsolete-between-system-padding = #0.1  system-system-spacing #'padding = #(/ obsolete-between-system-padding staff-space)  score-system-spacing #'padding = #(/ obsolete-between-system-padding staff-space)
%       obsolete-between-system-space = #0.1  system-system-spacing #'basic-distance = #(/ obsolete-between-system-space staff-space)  score-system-spacing #'basic-distance = #(/ obsolete-between-system-space staff-space)
%       ragged-last-bottom = ##f
%       ragged-bottom = ##f
%}

%Uncomment paper block below for evenly-filled pages.
\paper {
  obsolete-page-top-space = #0.0  top-system-spacing #'basic-distance = #(/ obsolete-page-top-space staff-space)
  %indent = 0.0
  markup-system-spacing #'basic-distance = #12
  top-system-spacing #'basic-distance = #15
  system-system-spacing #'basic-distance = #26
  line-width = 18.0\cm
  ragged-bottom = ##t
  ragged-last-bottom = ##f
}

%#(set-default-paper-size "a4")
%#(set-default-paper-size "letter")

% Tweak this if you want, but I think it looks best if you leave this commented out.
%#(set-global-staff-size 20)

\header  {
        title = "Aria con 30 Variazioni"
        subtitle = "\"Goldbergsche Variationen\""
        piece = "Variatio 2. a 1 Clav."
        mutopiatitle = "Goldberg Variations - 2"
        composer = "Johann Sebastian Bach (1685-1750)"
        mutopiacomposer = "BachJS"
        opus = "BWV 988"
        date = "1741"
        mutopiainstrument = "Clavier"
        style = "Baroque"
        source = "Bach-Gesellschaft"
        copyright = "Creative Commons Attribution-ShareAlike 3.0"
        maintainer = "JD Erickson"
        maintainerEmail = "erickson.jd@gmail.com"
        moreInfo = "It should be noted that, evenly-spaced, this piece lays out best in Letter size. In A4, it breaks the page between alternate endings on the first volta repeat. If you want an A4 layout you should switch out the paper block above for the one that is commented out. The pages won't be evenly filled but the repeat won't be broken in an annoying way."

 footer = "Mutopia-2013/01/27-981"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2013. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } } }
}

%%  
%% Common Macros
%%

staffUpper = {\change Staff = upper \stemDown}
staffLower = {\change Staff = lower \stemUp}
startRepeat = {\set Score.repeatCommands = #'(start-repeat)}
endRepeat = {\set Score.repeatCommands = #'(end-repeat)}
stemExtend = \once \override Stem #'length = #22
noFlag = \once \override Flag #'style = #'no-flag


%%
%% Soprano Voice
%%

soprano = \relative c''' {
    \override Script #'padding = #1.0
    \repeat volta 2 { %begin repeated section
        %1-5
        a2\rest
        a2\rest
        g4 c4^~\prallmordent
        c8 b16 a16 b16 a16 g16 fis16
        g4^~ g16 f16 e16 d16
  
        %6-10
        e4^~ e16 d16 c16 b16
        a4^~ a16 c16 b16 a16
        b16 g'16 fis16 a16 g16 fis16 e16 d16
        c'8^( b8) b4\rest
        r2

        %11-15
        b,16^( dis16 e16 g16) b4^~
        b16 a16 g16 b16 a16 g16 fis16 e16 
        d4^~ d16 c16 b16 a16
        b4^~ b16 a16 g16 fis16
        e4^~ e16 g16 fis16 e16
}        
        %16-20
        \alternative { { d8 d'8\rest d4\rest } { d,4 d'4\rest } }             
     %end of repeated section
    \repeat volta 2 { %begin repeated section
        \stemUp a4 a'4^~
        a16 g16 fis16 a16 g16 fis16 e16 dis16
        e4 a8\rest fis8
        dis8 b8 d4\rest

        %21-25      
        e4^~ e16 d16 c16 b16
        c4^~ c16 b16 a16 g16
        fis4^~ fis16 a16 g16 fis16
        g4 f'4\rest
        e,4 a4^~ 

        %26-30       
        a16 g16 fis16 a16 g16 fis16 e16 d16
        c4 c'4^~
        c16 b16 a16 c16 b16 a16 g16 fis16
        b8[ g8] b8[ d8]
        g4 c4^~

        %31-32
        c16 b16 a16 c16 b16 a16 g16 fis16      
    } %end repeated section
        \alternative { { g4 f4\rest } { g4 f4\rest } }
}

%%
%% Alto Voice
%%

alto = \relative c'' {
        \override Script #'padding = #1.0
        \repeat volta 2 { %begin repeated section
        %1-5
        \stemDown b4 e4^~^\prallmordent
        e8 d16 c16 d16 c16 b16 a16
        g4 b8\rest a'8
        fis8 d8 b4\rest
        b16\rest d16[ c16 e16] d8 b8_~

        %6-10
        b16 a16 g16 b16 a8 g8_~
        g16 fis16 e16 g16 fis4
        g8 e8\rest e4\rest
        g16^( a16 b16 d16) e4^~
        e16 d16 cis16 e16 d16 cis16 b16 a16
        
        %11-15
        g4 b8\rest g'8
        e8 cis8 b4\rest
        e,16\rest a16[ g16 b16] a8 fis8_~
        fis16 e16 d16 fis16 e8 d8_~
        d16 cis16 b16 d16 cis4
}
        %16-20
        \alternative { { d8 e8\rest e4\rest } { d4 e4\rest } }     
        \repeat volta 2 { %begin repeated section
        \stemDown c16\rest fis'16[ e16 g16] fis16 e16 d16 cis16
        d4 b8\rest b8
        g8 e8 a4_~
        a16 g16 fis16 a16 g16 fis16 e16 dis!16

        %21-25    
        e16 b'16 a16 c16 b8 g8_~
        g16 fis16 e16 g16 fis8 e8_~
        e16 dis16 cis16 e16 dis4
        e4 b'4_~
        b16 a16 g16 b16 a16 g16 fis16 e16

        %26-30
        d4
        \once \override Tie #'control-points = #'( ( 0.7152 . -1.9414) ( 3.5763 . -4.0872) ( 10.013 . -4.1894) ( 11.853 . -2.1458) )
        g4_~
        g16 fis16 e16 g16 fis16 e16 d16 c16
        d4 c4\rest
        d'4 f4_~
        f16 e16 d16 f16 e16 g16 fis16 g16

        %31-32
        a8 d,8_~ d16 c16 b16 a16
    }   %end repeated section
        \alternative { { b4 g4\rest } { b4 g4\rest } }
}

%%
%% Bass Voice
%%

bass = \relative c' {
    \repeat volta 2 { %begin repeated section
        %1-5
        \stemDown g8[ fis8 g8 e8]   
        fis8[ e8 fis8 d8]
        e8[ d8 e8 c8]
        \stemUp d8 d,8 d'16 c16 b16 a16
        b8[ a8 b8 g8]

        %6-10
        c8[ b8 c8 a8]
        d8[ c8 d8 d,8]
        \once \override Beam #'positions = #'(-0.2 . 0)
        g8[ \stemDown g'8 b8 d8]
        g8[ fis8 g8 e8] 
        fis8[ e8 fis8 d8]    

        %11-15
        e8[ d!8 e8 b8]
        cis8[ e16 d16] cis16 b16 a16 g16 
        fis8[ e8 fis8 d8] 
        g8[ fis8 g8 e8]
        a8[ g8 a8 a,8]   
}
        %16-20
        \alternative { { d8[ d'16 c!16] d16 c16 b16 a16 } { \stemUp d,8 a8 d,4 } }
        \pageBreak
        \repeat volta 2 { %begin repeated section
        \stemDown d''8[ cis8 d8 a8]
        b8[ a8 b8 g8]
        c16 c,16 b16 d16 \stemUp c16 b16 a16 c16
        \stemDown b16 b'16 a16 c16 b16 a16 g16 fis16

        %21-25
        g8[ fis8 g8 e8] 
        a8[ g8 a8 fis8]
        b8[ ais8 b8 b,8]
        \stemUp e,16 e'16 dis16 fis16 e16 d16 c16 b16
        \stemDown c8[ b8 c8 a'8]    

        %26-30
        b,8[ a8 b8 g'8]
        a,8[ g8 a8 g'8]
        fis16 d16 c16 e16 \stemUp d16 c16 b16 a16
        \stemDown g16 g'16 f16 a16 g16 f16 e16 d16
        c16 c'16 b16 d16 c16 b16 a16 g16   

        %31-32
        fis16 g16 fis16 a16 \stemUp b,8 d8
    } %end repeated section
        \alternative { { \stemDown g,8[ g'16 fis16] g16 a16 b16 c16 } { \stemDown g8 d8 \stemUp g,4 } }
    
}

%%
%% Layout
%%

\score  {
    \context PianoStaff <<
        %
        %\override PianoStaff.VerticalAlignment #'forced-distance = #11.3
        %
        \set PianoStaff.instrumentName = "Clavier  "
        \set PianoStaff.midiInstrument = "harpsichord"
        \context Staff = "upper" { \clef treble \key g \major \time 2/4 << \soprano \\ \alto >>  }
        \context Staff = "lower"  { \clef bass \key g \major \time 2/4 \bass \bar "|." }
    >>

    \midi  { 
        
    }
 
    \layout  { 
        \context  { 
            \PianoStaff
        }
    }
}
