\version "2.10.23"

% Uncomment paper block below for fewer pages.
%\paper {
%       between-system-padding = #0.1
%       between-system-space = #0.1
%       ragged-last-bottom = ##f
%       ragged-bottom = ##f
%}

%Uncomment paper block below for evenly-filled pages.
\paper {
    page-top-space = #0.0
    %indent = 0.0
    line-width = 18.0\cm
    ragged-bottom = ##f
    ragged-last-bottom = ##f
}

%#(set-default-paper-size "a4")
%#(set-default-paper-size "letter")

% Tweak this if you need to, but I think it USUALLY looks best if you leave this commented out (or in some cases the way I've tweaked it).
#(set-global-staff-size 18.5)

\header  {
        title = "9 Little Preludes"
        subtitle = "No. 1 (Alternate)"
        piece = "Prelude in C Major"
        mutopiatitle = "9 Little Preludes - 1 - C Major (Alternate)"
        composer = "Johann Sebastian Bach (1685-1750)"
        mutopiacomposer = "BachJS"
        opus = "BWV 924a"
        date = "Unknown"
        mutopiainstrument = "Clavier"
        style = "Baroque"
        source = "Bach-Gesellschaft, 1853"
        copyright = "Creative Commons Attribution-ShareAlike 3.0"
        maintainer = "JD Erickson"
        maintainerEmail = "erickson.jd@gmail.com"
        moreInfo = "From the “Little Clavier Book for Wilhelm Friedemann Bach”."
 footer = "Mutopia-2007/05/20-983"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

%%  
%% Common Macros
%%

staffUpper = {\change Staff = upper \stemDown}
staffLower = {\change Staff = lower \stemUp}
startRepeat = {\set Score.repeatCommands = #'(start-repeat)}
endRepeat = {\set Score.repeatCommands = #'(end-repeat)}
stemExtend = \once \override Stem #'length = #22
noFlag = \once \override Stem #'flag-style = #'no-flag


%%
%% Treble Voice
%%

treble = \relative c'  {
    \override Script #'padding = #1.0
    %1-4
    \stemUp r16 g'16[ c16 e16] r16 g,16[ c16 e16] r16 g,16[ c16 d16] r16 f,16[ b16 d16]
    r16 e,16[ b'16 c16] r16 e,16[ a16 c16] r16 e,16[ a16 b16] r16 g16[ b16 e16]
    r16 f,16[ c'16 e16] r16 f,16[ g16 d'16] r16 e,16[ g16 d'16] r16 e,16[ g16 c16]
    r16 d,16[ a'16 c16] r16 d,16[ e16 b'16] r16 c,16[ e16 b'16] r16 c,16[ e16 a16]

    %5-8
    r16 b,16[ f'!16 a16] r16 b,16[ e16 g!16] r16 c,16[ e16 f16] r16 g,16[ d'16 f16]
    r16 g,16[ d'16 e16] r16 g,16[ c16 e16] r16 a,16[ d16 f16] r16 bes,16[ e16 g16]
    r16 c,16[ f16 a16] r16 c,16[ f16 a16] r16 d,16[ f16 b!16] r16 e,16[ g16 c16]
    r16 d,16[ g16 b16] r16 e,16[ g16 c16] r16 f,16[ b16 d16] r16 \stemDown g,16[ c16 e16]

    %9-12
    r16 a,16[ c16 f16] r16 b,16[ d16 f16] r16 g,16[ c16 e16] r16 \stemUp f,16[ b16 d16]
    r16 e,16 g16 c16 r16 d,16 f16 b16 r8 c8^~ c4  
    s1
    s2. b4

    %13-14
    d4\rest d16\rest g,16[ c8^~] c16[ c16 b16 a16] b4 
    <c, e g c>1^\fermata   
}

%%
%% Treble Two
%%
trebleTwo = \relative c' {
    s1*9
    %10-13
    s2 \stemDown ees16[ g16 c16 g16] ees16[ g16 c,16 ees16]
    a,16[ c16 ees16 c16] s2.
    b'8\rest b16\rest \stemUp a16 \stemDown c16[ fis16 a16 c,16] b32[ g'32 f!32 e32 d32 c32 b32 a32] c,32\rest g'32[ f!32 e32 d8]
    c16\rest b16[ c16 d16] e8.[ e16] d4_~ d16[ f16 e16 d16] 

    %14
    s1 
}

%%
%% Bass Voice
%%

bass = \relative c  {
    \override Script #'padding = #1.0
    %1-4
    \stemUp c4 \stemDown e4 g4 \stemUp g,4
    a4 c4 \stemDown e4 \stemUp e,4
    a4 b4 c4 \stemDown e4
    fis4 gis4 a4 \stemUp c,4
    
    %5-8
    \stemDown d4 e4 \stemUp a,4 b4
    c4 bes4 a4 g4
    f4 e4 d4 c4
    g'4 \stemDown g'4 \stemUp g,4 \stemDown g'4

    %9-12
    \stemUp g,4 \stemDown g'4 \stemUp g,4 \stemDown g'4
    \stemUp g,4 \stemDown g'4 \stemUp g,2
    s4 a'16[ c16 fis,16 a16] c,16[ ees16 a16 ees16] c16[ ees16 a,16 c16]
    \stemDown fis,2 g4 g4\rest

    %13-14
    g'2^~ g4 \stemUp g,4
    <c g'>1_\fermata
}

%%
%% Bass Two
%%

bassTwo = \relative c {
    s1*11
    %12-14
    \stemUp d16\rest a8. s2.
    s1
    s1
}

%%
%% Bass Three
%%

bassThree = \relative c {
    s1*11
    %12-13
    \stemUp c'8\rest d,8^~ d4^~d4 a'8\rest f32\rest c'32[ b32 a32]
    \staffUpper \stemUp s2. \once \override Rest #'extra-offset = #'( 1.3 . 0.0 ) g'16\rest a16[ g16 f16]
    s1  
}

%%
%% Layout
%%

\score  {
    \context PianoStaff <<
        \override PianoStaff.VerticalAlignment #'forced-distance = #11.3
        \set PianoStaff.instrumentName = "Clavier  "
        \set PianoStaff.midiInstrument = "harpsichord"
        \context Staff = "upper" { \clef treble \key c \major \time 4/4 << \treble \\ \trebleTwo >> \bar "|." }
        \context Staff = "lower"  { \clef bass \key c \major \time 4/4 << \bass \\ \bassTwo \\ \bassThree >> }
    >>

    \midi  { 
        
    }
 
    \layout  { 
        \context  { 
            \PianoStaff
        }
    }
}
