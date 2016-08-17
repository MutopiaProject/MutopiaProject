% this is a comment

% --------------------
% --- GENERAL INFO ---
% --------------------

% --- version statement

\version "2.18.2"

% --- language used in the code

\language "english" %  -s/--sharp -f/--flat -ss/-x/--sharpsharp -ff/--flatflat 

% --- articulate script for better MIDI outputv

\include "articulate.ly" 

% --- printing info

\header {
  title        = "GNOSSIENNE" 
  subtitle     =  \markup { \fontsize #3 "№ 2" }
  subsubtitle = "(1890)"
  composer     = "Érik Satie (1866-1925)"
  style        = "Avant-garde"
  license      = "Creative Commons Attribution-ShareAlike 4.0"
  enteredby    = "Frédéric Duperray"
  lastupdated  = "2016-Aug-08"
  date         = "1890"
  source       = "Paris : Rouart, Lerolle & Cie., 1913. Plates R.L. 9884-9886 & Cie. Possibly scanned from the Dover reprint."

  mutopiatitle       = "Gnossienne No. 2"
  mutopiacomposer    = "SatieE"
  mutopiainstrument  = "Piano"
  mutopiastyle       = "Modern"
  maintainer         = "Frédéric Duperray"
  maintainerEmail    = "duperray (dot) fred (at) gmail (dot) com"


 footer = "Mutopia-2016/08/17-2130"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " 2016 " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License "\char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}



% -------------
% --- Music ---
% -------------

% -------------------------------------------------------------------------------------------------
% --- Gnossienne 2 structure : A-B-C-B'-A' --------------------------------------------------------
% -------------------------------------------------------------------------------------------------


% --- High notes

highnotes_treblestaff = \relative c' {
  
  % Part A
  
   \shape #'(
             (( 0 . 0) (0 . 0) (0 . 2) (0 . 3) (0 . 5) (0 . 5.5))
             (( 0 . 3) (0 . 2.75) (0 . 2.5) (0 . 2.25))
           ) Slur
  d'8( e8~ e8~ e4. c8 d8 c8 d8 c8 d8  | % 01 
  bf8 c8~ c8~ c4. a8 bf8 a8 bf8 a8 bf8 | % 02
  g8 b8~ b8~ b4.~ b8) r8 s8 r4. | % 03 
  r1. | % 04
  
   \shape #'(
             (( 0 . 0) (0 . 0) (0 . 2) (0 . 3) (0 . 5) (0 . 5.5))
             (( 0 . 3) (0 . 2) (0 . 1) (0 . 0))
           ) Slur
  d8( e8~ e8~ e4. c8 d8 c8 d8 c8 d8  | % 05
  bf8 c8~ c8~ c4. a8 bf8 a8 bf8 a8 bf8 | % 06
  af8 f8~ f8~ f4.~ f8) r8 s8 r4. | % 07 
  r1. | % 08
  
    % Part B
  
  r8 
     \shape #'(
             (( 0 . 0) (0 . 2) (0 . 3) (0 . 1))
           ) Slur
  f8( g8 af8 bf8 af8 g8 f8 g8 af8 bf8 af8 | % 09
  b8 b8~ b8~ b4.~ b8) r8 s8 r4. | % 10  

  r8 
  \shape #'(
             (( 0 . 0) (0 . 0) (0 . 2) (0 . 3) (0 . 5) (0 . 5.5))
             (( 0 . 6) (0 . 4) (0 . 1) (0 . -0.5))
           ) Slur
  f8( g8 af8 bf8 c8 d8 c8 bf8 af8 bf8 af8 | % 11 
  b8 b8~ b8~ b4.~ b4.~ b8~ b8 b8 | % 12   
  a1.~ | % 13
  a2.~ a4.) r4. | % 14   
  
  
 
    % Part C
  
  r8 
     \shape #'(
             (( 0 . 0) (0 . 0) (0 . 2) (0 . 3) (0 . 5) (0 . 5.5))
             (( 0 . 3) (0 . 2) (0 . 1) (0 . 0))
           ) Slur
  e'8( ds8 cs8 ds8 e8 fs8 gs8 fs8 e8 ds8 cs8 | % 15
  as8 cs8 as8~ as4.~ as4.~ as8~ as8 b8 | % 16  
  c8 c8~ c8~ c4.~ c8) r8 s8 r4. | % 17
  
  r8 
     \shape #'(
             (( 0 . 0) (0 . 0) (0 . 2) (0 . 3) (0 . 5) (0 . 5.5))
             (( 0 . 3) (0 . 2) (0 . 1) (0 . 0))
           ) Slur
  e8( ds8 cs8 ds8 e8 fs8 gs8 fs8 e8 ds8 cs8 | % 18   
  as8 cs8 as8~ as4.~ as4.~ as8~ as8 b8 | % 19
  c8 c8~ c8~ c4.~ c4.~ c8~ c8 c8 | % 20  
  a8 a8~ a8~ a4.~ a8) r8 s8 r4. | % 21      
  r1. | % 22     

    % Part B
  
  r8 
     \shape #'(
             (( 0 . 0) (0 . 2) (0 . 3) (0 . 1))
           ) Slur
  f8( g8 af8 bf8 af8 g8 f8 g8 af8 bf8 af8 | % 23
  b8 b8~ b8~ b4.~ b8) r8 s8 r4. | % 24  
  r8 
       \shape #'(
             (( 0 . 0) (0 . 0) (0 . 2) (0 . 3) (0 . 5) (0 . 5.5))
             (( 0 . 3) (0 . 2) (0 . 1) (0 . 0))
           ) Slur
  f8( g8 af8 bf8 c8 d8 c8 bf8 af8 bf8 af8 | % 25 
  b8 b8~ b8~ b4.~ b4.~ b8~ b8 b8 | % 26   
  a2.~ a2. | % 27
  e'2.~ e8) r8 s8 r4. | % 28   

  % Part A
  
       \shape #'(
             (( 0 . 0) (0 . 0) (0 . 2) (0 . 3) (0 . 5) (0 . 5.5))
             (( 0 . 3) (0 . 2) (0 . 1) (0 . 0))
           ) Slur
  d8( e8~ e8~ e4. c8 d8 c8 d8 c8 d8 | % 29 
  bf8 c8~ c8~ c4. a8 bf8 a8 bf8 a8 bf8 | % 30
  g8 b8~ b8~ b4.~ b8) r8 s8 r4. | % 31 
  r1. | % 32  
  s1. | %33
  s1. | %34


}

% --- Mid G (cross)staff notes

midnotes_treblestaff = \relative c' {
  \crossStaff {
    
           % Part A
      
    d,4.\rest <d' g>4. <c f>2. | % 01   
    d,4.\rest <d' g>4. <c f>2. | % 02 
    d,4.\rest <e'>2.  <e>4. | % 03 
    d,4.\rest <c'>4. <e>2. | % 04
    
    d,4.\rest <d' g>4. <c f>2. | % 05  
    d,4.\rest <d' g>4. <c f>2. | % 06
    d,4.\rest <d'>2.  <d>4.  | % 07
    d,4.\rest s4. <d'>2. | % 08
    
           % Part B

    d,4.\rest <d'>2.  <d>4.  | % 09      
    g,,4.\rest <e''>2. <e>4.  | % 10  
    d,4.\rest  <d'>2. <d>4. | % 11 
    g,,4.\rest <e''>2. <e>4.  | % 12   
    d,4.\rest <cs' e>2. <cs e>4. | % 13
    d,4.\rest <d'>4. <cs e>2.  | % 14   
 
    % Part C
  
  d,4.\rest <cs' e>2. <cs e>4.   | % 15
  d,4.\rest <cs' fs>2. <cs fs>4.  | % 16  
  d,4.\rest <c' f>2. <c f>4. | % 17
  
  d,4.\rest <cs' e>2. <cs e>4.  | % 18   
  d,4.\rest <cs' fs>2. <cs fs>4. | % 19
  d,4.\rest <c' f>2. <c f>4. | % 20  
  d,4.\rest <d' f>2. <d f>4. | % 21      
  d,4.\rest <c' ef>4. <d f>2.  | % 22     

    % Part B
  
  d,4.\rest <d'>2. <d>4. | % 23
  g,,4.\rest <e''>2. <e>4.  | % 24  
  d,4.\rest <d'>2. <d>4. | % 25
  d,4.\rest <e'>2. <e>4.  | % 26   
  d,4.\rest <cs' e>2. <cs e>4. | % 27
  d,4.\rest <c' e>2. <c e>4.  | % 28

  % Part A
  
  d,4.\rest <d' g>4. <c f>2. | % 29 
  d,4.\rest <d' g>4. <c f>2. | % 30
  g,4.\rest <e''>2.  <e>4. | % 31 
  d,4.\rest s4. 
   \override TieColumn.tie-configuration =
   #'((-3 . 1))
   <e'>2.~ | % 32
  <e>2.~ <e>2.~ |  %33
  <e>4. s4. s2. | %34
  

  }
}


% --- Mid F (cross)staff notes


midnotes_bassstaff = \relative c' {
  \crossStaff {
        
           % Part A
      
    s4. <bf>4. <a>2. | % 01   
    s4. <bf>4. <a>2. | % 02
    s4. <g b>2.  <g b>4. | % 03 
    s4. <f a>4. <g b>2. | % 04
    
    s4. <bf>4. <a>2. | % 05 
    s4. <bf>4. <a>2. | % 06
    s4. <f af>2.  <f af>4. | % 07 
    s4. <e g b>4. <f af>2. | % 08

           % Part B


  s4. <f af>2. <f af>4. | % 09
  s4. <g b>2. <g  b>4.  | % 10  
  s4.  <f af>2. <f af>4. | % 11 
  s4. <g  b>2. <g  b>4.  | % 12   
  s4. <a>2. <a>4. | % 13
  s4. <g b>4. <a>2.  | % 14   
 
    % Part C
  
  s4. <a>2. <a>4.   | % 15
  s4. <as>2. <as>4.  | % 16  
  s4. <a>2. <a>4. | % 17
  
  s4. <a>2. <a>4.  | % 18   
  s4. <as>2. <as>4. | % 19
  s4. <a>2. <a>4. | % 20  
  s4. <a>2. <a>4. | % 21      
  s4. <g>4. <a>2.  | % 22     

    % Part B
  
  s4. <f af>2. <f af>4. | % 23
  s4. <g b>2. <g  b>4.  | % 24  
  s4. <f af>2. <f af>4. | % 25
  s4. <g b>2. <g b>4.  | % 26   
  s4. <a>2. <a>4. | % 27
  s4. <g>2. <g>4.  | % 28

  % Part A
  
  s4. <bf>4. <a>2. | % 29 
  s4. <bf>4. <a>2. | % 30
  s4. <g b>2.  <g b>4. | % 31 
  s4. <f a c>4.  
  \override TieColumn.tie-configuration =
   #'((2 . -1)(6 . 1))
  <g b>2.~ | % 32
  <g b>2.~ <g b>2.~ |  %33
  <g b>4. s4. s2. | %34
    
  }
}

% --- Low notes

lownnotes_bassstaff = \relative c' {
  g,1. | % 01 
  \override Score.BarNumber.stencil = ##f % there are no barnumbers in the original score
  \override Score.BarLine.stencil = ##f % there are no barlines in the original score
  \override Score.SpanBar.stencil = ##f % there are no barlines in the original score
  g1. \break | % 02
  e1. | % 03 
  e1.| % 04
  
  g1. \break  | % 05
  g1. | % 06
  d1. | % 07
  d1. \break | % 08
  
    % Part B
  
  d1. | % 09
  e1. \break | % 10  
  d'1. | % 11 
  e,1. \break | % 12   
  a1. | % 13
  a1. | % 14   
 
    % Part C
  
  a1. \break  | % 15
  fs1. | % 16  
  f1. | % 17
  a1. \break | % 18   
  fs1. | % 19
  f1. | % 20  
  d1. | % 21      
  d1. \break | % 22     

    % Part B
  
  d1. | % 23
  e1. | % 24  
  d1. \break | % 25 
  e1. | % 26   
  a1. | % 27
  c1. | % 28   

  % Part A
  
  g1. \break | % 29 
  g1. | % 30
  e1. | % 31 
  e1. | % 32  
  s1. | %33
  s1. \revert Score.BarLine.stencil  \revert Score.SpanBar.stencil  \bar "|." | %34

} 



% --- Voices

high_voice = {
  \highnotes_treblestaff
}

mid_treblestaff_voice = {
  \midnotes_treblestaff
}

mid_bassstaff_voice = {
  \midnotes_bassstaff
}

low_voice = {
  \lownnotes_bassstaff
}

% --- Dynamics, text, and musical terms

dynamics_above = {
 
 % Part A
 
  s4. ^ "Avec étonnement" s16. s16.\> s8. s2. | % 01 
  s8.  s8.\! s4. s2.  | % 02
  s1. | % 03 
  s1. | % 04
  
  s8 ^ "Ne sortez pas" s8 \> s8 s4. s2.   | % 05
  s8.\!  s8. s4. s2. | % 06
  s1. | % 07
  s1.  | % 08
  
    % Part B
  
  s1. | % 09
  s1.  | % 10  
  s4. ^ "Dans une grande bonté" s2. s4.  | % 11 
  s1.  | % 12   
  s1. | % 13
  s1. | % 14   
 
    % Part C
  
  s1. ^ "Plus intimement"   | % 15
  s1. | % 16  
  s1. | % 17
  s1.  | % 18   
  s1. | % 19
  s1. | % 20  
  s1. | % 21      
  s1.  | % 22     

    % Part B
  
  s4. ^ "Avec une légère intimité" s2. s4. | % 23
  s1. | % 24  
  s1. ^ "Sans orgueil"  | % 25 
  s8. s32\< s32 s2. s8. s32\! s32 s4  | % 26   
  s4 s32 s32\> s32 s1 s8 s32 | % 27
  s8. s32 s32\! s32 s1 s8. s32 | % 28   

  % Part A
  
  s1.  | % 29 
  s1. | % 30
  s1. | % 31 
  s1. | % 32  
  s1. | %33
  s1. | %34
}



dynamics_below_treble = {

% Part A

  
  s1. | % 01 
  s1. | % 02
  s1. | % 03 
  s1. | % 04
  
  s1.   | % 05
  s1. | % 06
  s1. | % 07
  s1.  | % 08
  
    % Part B
  
  s4. s32 s32 \< s32 s4 s4. s32 \! s32  s32 \> s32  s32 s4 | % 09
  s4 s32 s32 s32  s32 \! s32 s2 s2 s32 s32 s32 | % 10    
  s2 s2 s8 s32 s32 \< s32 s32 s4 | % 11 
  s4 s32 s32 s32 s32 \! s32 s2. s32\> s32 s4 s32\!  | % 12   
  s1. | % 13 
  s1. | % 14   
 
    % Part C
  
  s1.   | % 15
  s1. | % 16  
  s1. | % 17
  s1.  | % 18   
  s1. | % 19
  s1. | % 20  
  s1. | % 21      
  s1.  | % 22     

    % Part B

  s4 s8. s32\< s32 s2 s16. s32\! s32 s32\> s32 s32 s4 | % 23
  s4 s16. s32\! s32 s1 s16. | % 24  
  s1.  | % 25 
  s1. | % 26   
  s1. | % 27
  s1. | % 28   

  % Part A
  
  s1.  | % 29 
  s2. s32 s32 s32\> s4 s4. s32 | % 30
  s32 s32 s32 s32 s32 s32 s32 s32 s32 s32 s32 s32\! s32 s32 s32 s32 s32 s32 s32 s32 s32 s32 s32 s32 s32 s32 s32 s32 s32 s32 s32 s32 s32 s32 s32 s32 s32 s32 s32 s32 s32 s32 s32 s32 s32 s32 s32 s32 | % 31 
  s1. | % 32  
  s1. | %33
  s1. | %34
}

dynamics_below_bass = {
 
 % Part A

   s1.\p | % 01 
   s1. | % 02
  s1. | % 03 
  s1. | % 04
  
   s1.  | % 05
   s1. | % 06
  s1. | % 07
  s1.  | % 08
  
    % Part B
  
  s1. | % 09
  s1.  | % 10  
  s1.  | % 11 
  s1.  | % 12   
  s1. | % 13
  s1. | % 14   
 
    % Part C
  
  s1.  | % 15
  s1. | % 16  
  s1. | % 17
  s1.  | % 18   
  s1. | % 19
  s1. | % 20  
  s1. | % 21      
  s1.  | % 22     

    % Part B
  
  s1. | % 23
  s1. | % 24  
  s1.   | % 25 
  s1. | % 26
  s1. | % 27  
  s1.   | % 28  

  % Part A
  
  s1.  | % 29 
   s1. | % 30
   s1. | % 31 
  s2. s2.\pp | % 32  
  s1. | %33
  s1. | %34
}



% -----------------------
% --- Layout and MIDI ---
% -----------------------

global = {
  \key a \minor
  \time 12/8
}

treble_staff = {
  \global
  \clef treble
  <<
    \new Voice { \voiceOne \high_voice }
    \new Voice { \voiceTwo \mid_treblestaff_voice }
  >>
}

bass_staff = {
  \global
  \clef bass
  <<
    \new Voice { \voiceTwo \mid_bassstaff_voice }
    \new Voice { \voiceFour \low_voice }
  >>
}

\paper {
  top-margin = 8\mm                              %-minimum top-margin: 8mm
  top-markup-spacing.basic-distance = #5         %-dist. from bottom of top margin to the first markup/title
  markup-system-spacing.basic-distance = #6      %-dist. from header/title to first system
  top-system-spacing.basic-distance = #12        %-dist. from top margin to system in pages with no titles
  last-bottom-spacing.basic-distance = #11       %-pads music from copyright block
  
  % --- Set these to false after all editing is finished
%   ragged-bottom = ##f
%   ragged-last-bottom = ##f
%   ragged-right = ##f
}

\score {
  \new PianoStaff 
  <<
    \new Dynamics { \global \dynamics_above }
    \new Staff = "treble_staff" \treble_staff
    \new Dynamics { \global \dynamics_below_treble }
    \new Staff = "bass_staff" \bass_staff
    \new Dynamics { \global \dynamics_below_bass }
  >>
  \layout { 
    \context {
      \Staff
      \override Dots.stencil = ##f 
      \remove "Time_signature_engraver"
    }
    \context {
      \PianoStaff
      \consists #Span_stem_engraver
    }
  } 
}

\include "articulate.ly"

\score {
  \articulate <<
    \new PianoStaff <<
      \new Staff ="treble_staff" \treble_staff
      \new Staff = "bass_staff" \bass_staff
    >>
  >>
  \midi { 
    \tempo 4 = 60
  }
}
