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
  subtitle     =  \markup { \fontsize #3 "№ 3" }
  subsubtitle = "(1890)"
  composer     = "Érik Satie (1866-1925)"
  style        = "Avant-garde"
  license      = "Creative Commons Attribution-ShareAlike 4.0"
  enteredby    = "Frédéric Duperray"
  lastupdated  = "2016-Aug-12"
  date         = "1890"
  source       = "Paris : Rouart, Lerolle & Cie., 1913. Plates R.L. 9884-9886 & Cie. Possibly scanned from the Dover reprint."

  mutopiatitle       = "Gnossienne No. 3"
  mutopiacomposer    = "SatieE"
  mutopiainstrument  = "Piano"
  mutopiastyle       = "Modern"
  maintainer         = "Frédéric Duperray"
  maintainerEmail    = "duperray (dot) fred (at) gmail (dot) com"


 footer = "Mutopia-2016/08/17-2131"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " 2016 " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License "\char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}


% -------------
% --- tweaks ---
% -------------


% --- modifying slur shapes

slurGoinUpOne = { \shape #'((( 0 . 0) (0 . 1.5) (0 . 1) (0 . 0))) Slur }

slurGoinUpTwo = { \shape #'((( 0 . 0) (0 . 2) (0 . 1) (0 . 0))) Slur }

slurGoinUpThr = { \shape #'(  (( 0 . 1) (0 . 1.5) (0 . 2) (0 . 2.5))  ((0 . 2.5) (0 . 1.75)(0 . 1.5) (0 . 1))  ) Slur }

slurGoinUpFou = { \shape #'(  (( 0 . 0) (0 . 1.5) (0 . 2) (0 . 2.5))  ((0 . 2) (0 . 1.5)(0 . 1) (0 . 1))  ) Slur }

slurGoinUpFiv = { \shape #'(  (( 0 . -1) (0 . 1) (0 . 2) (0 . 2.5))  ((0 . 5) (0 . 3)(0 . 1) (0 . 0))  ) Slur }

slurGoinUpSix = { \shape #'((( 0 . 0) (0 . 1) (0 . 2) (0 . -1))) Slur }


% --- modifying tie shapes

tieGoinUpOne = {  \shape #'((0 . 0.5) (0 . 1) (0 . 1) (0 . 0.5)) Tie }

tieGoinUpTwo = {  \shape #'((0 . 0) (0 . 0.4) (0 . 0.4) (0 . 0)) Tie }


% --- moving notes

moveNotesOne = {  \once \override NoteColumn.force-hshift = #-1.2 }


% --- hiding string numbers

hideStringNumbers = {  \override Staff.StringNumber.transparent = ##t }


% --- showing all bar numbers (helps while entering the music)

showBarNumbers = { \override Score.BarNumber.break-visibility = ##(#t #t #t) }


% --- hiding bar numbers

hideBarNumbers = { \override Score.BarNumber.stencil = ##f }


% --- hiding and showing barlines

hideBarLines = { \override Score.SpanBar.stencil = ##f  \override Score.BarLine.stencil = ##f } 

showBarLines = { \revert Score.BarLine.stencil  \revert Score.SpanBar.stencil }


% -------------
% --- Music ---
% -------------

% -------------------------------------------------------------------------------------------------
% --- Gnossienne 2 structure : A-B-C-D-E-F-A --------------------------------------------------------
% -------------------------------------------------------------------------------------------------


% --- High notes

highNotesTrebleStaff = \relative c' {

  % Part A

  \hideStringNumbers \slurGoinUpOne a''8( a8 ds,8 ds8 fs8 fs8~ fs4)  | % 01
  r4 \slurGoinUpTwo e8( e8 ds8 ds8 c8 c8 | % 02
  b8 b8~ b4) d2\rest | % 03
  r1  | % 04
  \slurGoinUpOne a'8( a8 ds,8 ds8 fs8 fs8~ fs4)  | % 05
  r4 \slurGoinUpTwo e8( e8 ds8 ds8 c8 c8 | % 06
  b8 b8~ b4) d2\rest  | % 07
  \acciaccatura b8  \slurGoinUpThr d4( b8 b8 c8 c8~ c4   | % 08
  b8 b8~ b4) d2\rest   | % 09

  % Part B

  \acciaccatura b8 \tieGoinUpOne d1~ | % 10
  d4 \slurGoinUpThr b8( b8 d8 d8 b8 b8 | % 11
  gs8 a8 b8 d8 b8 a8 gs8 a8 | % 12
  b8 d8 b8 a8 gs8 a8 b8 d8  | % 13 
  f8\1 f8\1 a,8\3 a8\3~ a4) r4  | % 14
  r1 | % 15

  % Part C

  \slurGoinUpOne e'8 ( e8 as,8 as8 cs8 cs8~ cs4) | % 16
  r4 \slurGoinUpTwo b8( b8 as8 as8 g8 g8 | % 17
  fs8 fs8~ fs4) d'2\rest   | % 18
  r1  | % 19

  e8 e8 as,8 as8 cs8 cs8~ cs4 | % 20
  r4 b8 b8 as8 as8 g8 g8 | % 21
  fs8 fs8~ fs4 d'2\rest   | % 22
  \acciaccatura fs,8 a1   | % 23

  % Part D

  \slurGoinUpFou e8( fs8 g8 as8 b8 cs8 e8 cs8  | % 24
  b8 as8 g8 fs8 e8 fs8 g8 as8  | % 25
  b8 cs8 e8 cs8 b8 as8 g8 fs8 | % 26
  e8 fs8 g8 as8 b8 cs8 e8 cs8  | % 27
  d8 d8~ d4) d2\rest   | % 28
  r1 | % 29

  % Part D

  \slurGoinUpFiv e,8\3( fs8\3 g8\2 as8\2 b8\2 cs8\1 e8\1 cs8\1  | % 24
  b8\2 as8\2 g8\2 fs8\3 e8\3 fs8\3 g8\2 as8\2  | % 25
  b8\2 cs8\1 e8\1 cs8\1 b8\2 as8\2 g8\2 fs8\3 | % 26
  e8\3 fs8\3 g8\2 as8\2 b8\2 cs8\1 e8\1 cs8\1  | % 27
  d8\1 d8\1~ d4\1) d2\rest   | % 28

  % Part E  

  \acciaccatura fs,8  \tieGoinUpTwo a1~  | % 35
  a2 d2\rest  | % 36
  \acciaccatura c8  \tieGoinUpTwo af1~  | % 37
  af2 d2\rest  | % 38


  % Part F  
  
  \slurGoinUpSix af8( b8 c8 ef8 d8 c8 b8 af8 | % 39
  c8 c8~ c4) d2\rest  | % 40
  \acciaccatura b8 \tieGoinUpOne d1~  | % 41
  d2 d2\rest  | % 42
  \slurGoinUpFou af8( b8 c8 ef8 d8 c8 b8 af8 | % 43
  c8 c8~ c4) d2\rest  | % 44
  \acciaccatura b8 d1  | % 45

  % Part A

  \slurGoinUpOne a'8( a8 ds,8 ds8 fs8 fs8~ fs4)  | % 46
  r4 \slurGoinUpTwo e8( e8 ds8 ds8 c8 c8 | % 47
  b8 b8~ b4) d2\rest  | % 48
  r1  | % 49

  a'8 a8 ds,8 ds8 fs8 fs8~ fs4  | % 50
  r4 e8 e8 ds8 ds8 c8 c8 | % 51
  b8 b8~ b4 r4 b8 b8 | % 52
  e8 e8~ e4 d2\rest    | % 53
  r1 | % 54
}

% --- Mid G (cross)staff notes

midNotesTrebleStaff = \relative c' {
  \crossStaff {

    % Part A

    f,4\rest <c' e a>2 <c e a>4 | % 01
    f,4\rest <c' e a>2 <c e a>4 | % 02
    f,4\rest <e'>2 <e>4 | % 03
    f,4\rest <e'>2 <e>4  | % 04

    f,4\rest <c' e a>2 <c e a>4  | % 05
    f,4\rest <c' e a>2 <c e a>4 | % 06
    f,4\rest <e'>2 <e>4 | % 07
    f,4\rest <d' f>2 <d f>4  | % 08
    f,4\rest <e'>2 <e>4  | % 09

    % Part B

    f,4\rest <d' f>2 <d f>4 | % 10
    f,4\rest <d' f>2 <d f>4 | % 11
    f,4\rest <d' f>2 \moveNotesOne <d f>4 | % 12
    f,4\rest <d' f>2 <d f>4  | % 13 
    f,4\rest <e'>2 <c e>4   | % 14
    f,4\rest <c' e>2 <c e>4  | % 15

    % Part C

    f,4\rest <e'>2 <e>4 | % 16
    f,4\rest <e'>2 <e>4 | % 17
    f,4\rest <d'>2 <d>4  | % 18
    f,4\rest <d'>2 <d>4  | % 19

    f,4\rest <e'>2 <e>4 | % 20
    f,4\rest <e'>2 <e>4 | % 21
    f,4\rest <d'>2 <d>4  | % 22
    f,4\rest <cs' fs>2 <cs fs>4 | % 23

    % Part D

    f,4\rest <e'>2 <e>4  | % 24
    f,4\rest <e'>2 <e>4  | % 25
    f,4\rest <e'>2 <e>4 | % 26
    f,4\rest <e'>2 <e>4  | % 27
    f,4\rest <d'>2 <d>4  | % 28
    f,4\rest <d'>2 <d>4 | % 29

    % Part D

    f,4\rest <e'>2 <e>4  | % 30
    f,4\rest <e'>2 <e>4  | % 31
    f,4\rest <e'>2 <e>4  | % 32
    f,4\rest <e'>2 <e>4  | % 33
    f,4\rest <d'>2 <d>4 | % 34

    % Part E  

    f,4\rest <c' e>2 <c e>4 | % 35
    f,4\rest <c' e>2 <c e>4 | % 36
    f,4\rest <c' f>2 <c f>4 | % 37
    f,4\rest <c' f>2 <c f>4 | % 38

    % Part F  

    f,4\rest <c' f>2 <c f>4 | % 39
    f,4\rest <c' f>2 <c f>4 | % 40
    f,4\rest <d' f>2 <d f>4 | % 41
    f,4\rest <d' f>2 <d f>4 | % 42
    f,4\rest <c' f>2 <c f>4  | % 43
    f,4\rest <c' f>2 <c f>4 | % 44
    f,4\rest <d' f>2 <d f>4 | % 45

    % Part A

    f,4\rest <c' e a>2 <c e a>4 | % 46
    f,4\rest <c' e a>2 <c e a>4 | % 47
    f,4\rest <e'>2 <e>4 | % 48
    f,4\rest <e'>2 <e>4 | % 49
    f,4\rest <c' e a>2 <c e a>4 | % 50
    f,4\rest <c' e a>2 <c e a>4 | % 51
    f,4\rest <e'>2 <e>4 | % 52
    f,4\rest <e'>2 <e>4 | % 53
    f,4\rest <e'>2 <e>4 | % 54
  }
}


% --- Mid F (cross)staff notes


midNotesBassStaff = \relative c' {
  \crossStaff {

    % Part A

    s1  | % 01
    s1 | % 02
    s4 <g b>2 <g b>4 | % 03
    s4 <g b>2 <g b>4 | % 04

    s1  | % 05
    s1 | % 06
    s4 <g b>2 <g b>4 | % 07
    s4 <a>2 <a>4  | % 08
    s4 <gs b>2 <gs b>4  | % 09

    % Part B

    s4 <a>2 <a>4 | % 10
    s4 <a>2 <a>4 | % 11
    s4 <a>2  <a>4 | % 12
    s4 <a>2 <a>4  | % 13 
    s4 <a c>2 <a>4  | % 14
    s4 <a>2 <a>4 | % 15

    % Part C

    s4 <g b>2 <g b>4 | % 16
    s4 <g b>2 <g b>4 | % 17
    s4 <fs b>2 <fs b>4  | % 18
    s4 <fs b>2 <fs b>4  | % 19

    s4 <g b>2 <g b>4 | % 20
    s4 <g b>2 <g b>4 | % 21
    s4 <fs b>2 <fs b>4  | % 22
    s4 <a>2 <a>4 | % 23

    % Part D

    s4 <g b>2 <g b>4  | % 24
    s4 <g b>2 <g b>4  | % 25
    s4 <g b>2 <g b>4 | % 26
    s4 <g b>2 <g b>4  | % 27
    s4 <fs b>2 <fs b>4  | % 28
    s4 <fs b>2 <fs b>4 | % 29

    % Part D

    s4 <g b>2 <g b>4  | % 30
    s4 <g b>2 <g b>4  | % 31
    s4 <g b>2 <g b>4  | % 32
    s4 <g b>2 <g b>4  | % 33
    s4 <fs b>2 <fs b>4 | % 34

    % Part E  

    s4 <a>2 <a>4 | % 35
    s4 <a>2 <a>4 | % 36
    s4 <af>2 <af>4 | % 37
    s4 <af>2 <af>4 | % 38

    % Part F  

    s4 <af>2 <af>4 | % 39
    s4 <af>2 <af>4 | % 40
    s4 <a>2 <a>4 | % 41
    s4 <a>2 <a>4 | % 42
    s4 <af>2 <af>4  | % 43
    s4 <af>2 <af>4 | % 44
    s4 <a>2 <a>4 | % 45

    % Part A

    s1 | % 46
    s1 | % 47
    s4 <g b>2 <g b>4 | % 48
    s4 <g b>2 <g b>4 | % 49
    s1 | % 50
    s1 | % 51
    s4 <g b>2 <g b>4 | % 52
    s4 <a c>2 <a c>4 | % 53
    s4 <a c>2 <a c>4 | % 54
  }
}

% --- Low notes

lowNotesBassStaff = \relative c' {

  % Part A

  % \showBarNumbers % uncomment to see all bar numbers while entering music
  \hideBarNumbers \hideBarLines \hideStringNumbers a,1 | % 01
  a1 | % 02
  e1 | % 03
  e1  \break | % 04

  a1  | % 05
  a1 | % 06
  e1 | % 07
  d'1  \break | % 08
  e,1 | % 09

  % Part B

  d1 | % 10
  d1 | % 11
  d1 | % 12
  d1  \break | % 13 
  a1\5   | % 14
  a'1\5 | % 15

  % Part C

  e1 | % 16
  e1 | % 17
  b1  \break | % 18
  b1  | % 19

  e1 | % 20
  e1 | % 21
  b1  | % 22
  fs1 \break | % 23

  % Part D

  e'1  | % 24
  e1  | % 25
  e1 | % 26
  e1  \break | % 27
  b1  | % 28
  b1 | % 29

  % Part D

  e1  | % 30
  e1  | % 31
  e1  \break | % 32
  e1  | % 33
  b1\6 | % 34

  % Part E  

  a1 | % 35
  a'1 | % 36
  f1 | % 37
  f1 \break | % 38

  % Part F  

  f1 | % 39
  f1 | % 40
  d1 | % 41
  d1 | % 42
  f1  \break | % 43
  f1  | % 44
  d1 | % 45

  % Part A

  a'1 | % 46
  a1 | % 47
  e1 | % 48
  e1  \break | % 49
  a1  | % 50
  a1 | % 51
  e1 | % 52
  a,1 | % 53
  a'1 \showBarLines \bar "|." | % 54
} 


% --- Dynamics, text, and musical terms

dynamicsAboveTreble = {

  % Part A

  \tempo "Lent" s1   | % 01
  s1 | % 02
  s1 | % 03
  s1  | % 04

  s1  | % 05
  s4 s4 ^ "Conseillez-vous soigneusement" s4 s4 | % 06
  s1 | % 07
  s1  | % 08
  s1  | % 09

  % Part B

  s1 | % 10
  s4 s4 ^ "Munissez-vous de clairvoyance" s4 s4 | % 11
  s2 s16 s16 \< s8 s4 | % 12
  s8 s8 \! s8 s8  \> s8 s8 s8 s8 \!  | % 13 
  s1  | % 14
  s1 | % 15

  % Part C

  s4 ^ "Seul, pendant un instant" s4 s4 s4 | % 16
  s1 | % 17
  s1  | % 18
  s1  | % 19

  s1 | % 20
  s1 | % 21
  s1  | % 22
  s1 | % 23

  % Part D

  s4 ^ "De manière à obtenir un creux" s4 s4 s4  | % 24
  s1 \<  | % 25
  s2 \! s4 \> s4  | % 26
  s4 s8 s8  \! s2  | % 27
  s2 s2  | % 28
  s1 | % 29

  % Part D

  s4 ^ "Très perdu" s4 s4 s4  | % 30
  s4 \< s4 s8 s8 \! s4  | % 31
  s4  s8 s8 \> s4 s4  | % 32
  s2 s4 s8 \! s8  | % 33
  s1 | % 34

  % Part E  

  s4 ^ "Portez cela plus loin" s4 s4 s4 | % 35
  s1 | % 36
  s1 | % 37
  s1 | % 38

  % Part F  

  s4 ^ "Ouvrez la tête" \< s8 s8 \! s16 \> s16  s8  s8 s8 \! | % 39
  s1 | % 40
  s1 | % 41
  s1 | % 42
  s16 s16 \< s16   s16 s8 s8 \! s4  s4  | % 43
  s4 \> s4 \! s4 s4 | % 44
  s1 | % 45

  % Part A

  s1 | % 46
  s1 | % 47
  s1 | % 48
  s1 | % 49
  s4 ^ "Enfouissez le son" s4 s4 s4 | % 50
  s1 | % 51
  s1 | % 52
  s1 | % 53
  s1 | % 54
}

dynamicsBelowTreble = {

  % Part A

  s1  | % 01
  s1 | % 02
  s1 | % 03
  s1  | % 04

  s1  | % 05
  s1 | % 06
  s1 | % 07
  s1  | % 08
  s1  | % 09

  % Part B

  s1 | % 10
  s1 | % 11
  s1 | % 12
  s1  | % 13 
  s1  | % 14
  s1 | % 15

  % Part C

  s1 | % 16
  s1 | % 17
  s1  | % 18
  s1  | % 19

  s1 | % 20
  s1 | % 21
  s1  | % 22
  s1 | % 23

  % Part D

  s1  | % 24
  s1  | % 25
  s1 | % 26
  s1  | % 27
  s1  | % 28
  s1 | % 29

  % Part D

  s1  | % 30
  s1  | % 31
  s1  | % 32
  s1  | % 33
  s1 | % 34

  % Part E  

  s1 | % 35
  s1 | % 36
  s1 | % 37
  s1 | % 38

  % Part F  

  s1 | % 39
  s1 | % 40
  s1 | % 41
  s1 | % 42
  s1  | % 43
  s1 | % 44
  s1 | % 45

  % Part A

  s1 | % 46
  s1 | % 47
  s1 | % 48
  s1 | % 49
  s1 | % 50
  s1 | % 51
  s1 | % 52
  s1 | % 53
  s1 | % 54
}

dynamicsBelowBass = {

  % Part A

  s1 \p  | % 01
  s1 | % 02
  s1 | % 03
  s1  | % 04

  s1  | % 05
  s1 | % 06
  s1 | % 07
  s1  | % 08
  s1  | % 09

  % Part B

  s1 | % 10
  s1 | % 11
  s1 | % 12
  s1  | % 13 
  s1  | % 14
  s1 | % 15

  % Part C

  s1 | % 16
  s1 | % 17
  s1  | % 18
  s1  | % 19

  s1 | % 20
  s1 | % 21
  s1  | % 22
  s1 | % 23

  % Part D

  s1  | % 24
  s1  | % 25
  s1 | % 26
  s1  | % 27
  s1  | % 28
  s1 | % 29

  % Part D

  s1  | % 30
  s1  | % 31
  s1  | % 32
  s1  | % 33
  s1 | % 34

  % Part E  

  s1 | % 35
  s1 | % 36
  s1 | % 37
  s1 | % 38

  % Part F  

  s1 | % 39
  s1 | % 40
  s1 | % 41
  s1 | % 42
  s1  | % 43
  s1 | % 44
  s1 | % 45

  % Part A

  s1 | % 46
  s1 | % 47
  s1 | % 48
  s1 | % 49
  s1 | % 50
  s1 | % 51
  s1 | % 52
  s1 | % 53
  s1 | % 54
}

% -----------------------
% ------- Voices --------
% -----------------------

highVoice = {
  \highNotesTrebleStaff
}

midTrebleStaffVoice = {
  \midNotesTrebleStaff
}

midBassStaffVoice = {
  \midNotesBassStaff
}

lowVoice = {
  \lowNotesBassStaff
}

% -----------------------
% --- Layout and MIDI ---
% -----------------------

global = {
  \key a \minor
  \time 4/4
}

trebleStaff = {
  \global
  \clef treble
  <<
    \new Voice { \voiceOne \highVoice }
    \new Voice { \voiceTwo \midTrebleStaffVoice }
  >>
}

bassStaff = {
  \global
  \clef bass
  <<
    \new Voice { \voiceTwo \midBassStaffVoice }
    \new Voice { \voiceFour \lowVoice }
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
    \new Dynamics { \global \dynamicsAboveTreble }
    \new Staff = "trebleStaff" \trebleStaff
    \new Dynamics { \global \dynamicsBelowTreble }
    \new Staff = "bassStaff" \bassStaff
    \new Dynamics { \global \dynamicsBelowBass }
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

\score {
  \articulate <<
    \new PianoStaff <<
      \new Staff ="trebleStaff" \trebleStaff
      \new Staff = "bassStaff" \bassStaff
    >>
  >>
  \midi { 
    \tempo 4 = 40
  }
}
