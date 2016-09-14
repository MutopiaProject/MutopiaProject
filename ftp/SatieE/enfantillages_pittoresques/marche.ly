% this is a comment

% --------------------
% --- GENERAL INFO ---
% --------------------

% --- version statement

\version "2.18.2"

% --- language used in the code

\language "english" %  -s/--sharp -f/--flat -ss/-x/--sharpsharp -ff/--flatflat

% --- printing info

% -------------
% --- tweaks ---
% -------------

% --- modifying slur shapes

slurGoinDwOne = { \shape #'((( 0 . 0) (0 . -2) (0 . -2) (0 . 0))) Slur }

slurGoinDwTwo = { \shape #'((( 0 . 0) (0 . -0.5) (0 . -2) (0 . -3))(( 0 . -3) (0 . -2) (0 . -0.5) (0 . 0))) Slur }

slurGoinDwThr = { \shape #'((( 0 . 0) (0 . -2) (0 . -2) (0 . -2))(( 0 . -3) (0 . -2) (0 . -0.5) (0 . -0.2))) Slur }

slurGoinDwFou = { \shape #'((( 0 . 0) (0 . -2) (0 . -2) (0 . -3))(( 0 . -3) (0 . -2) (0 . -1) (0 . -0.2))) Slur }

slurGoinUpOne = { \shape #'((( 0 . 0) (0 . 2) (0 . 2) (0 . 0))) Slur }

slurGoinUpTwo = { \shape #'((( 0 . 0) (0 . 2) (0 . 2) (0 . 2.5))(( 0 . 3) (0 . 2) (0 . 1) (0 . 0))) Slur }

slurGoinUpThr = { \shape #'((( 0 . 0) (0 . 1) (0 . 1) (0 . 0))) Slur }

% --- modifying beat strucure to control beaming

beamingOne = { \set Timing.beatStructure = #'(4) }

beamingTwo = { \set Timing.beatStructure = #'(1 1 1 1) }

% --- custom dashed line

dashedTenuto = {
  \override TextSpanner.dash-period = #4 % the space part
  \override TextSpanner.dash-fraction = #.3 % the line part
  \override TextSpanner.thickness = #1 % the thickness part
}

% -------------
% --- music ---
% -------------

% --- fundamental structure

global = {
  \key a \minor
  \time 2/4
}

% --- treble notes

trebleNotes = \relative c'' {

  % Part A

  \slurDown \stemUp \slurGoinDwOne a4( b4  | % 01
  a4 g4) | % 02
  \slurGoinDwOne \beamingOne f8( e8 g8 e8 | % 03
  f8 e8 g4) | % 04
  \slurGoinDwTwo a4( b4  \break | % 05

  a4 g4) | % 06
  \slurGoinDwOne a8( e8 b'8 e,8 | % 07
  a8 e8 b'4)  | % 08
  \slurGoinDwThr g8 ( f8 a8 f8 | % 09
  b8 f8 a8 f8 | % 10
  g8 f8 a8 f8 \break | % 11

  b8 f8 a4) | % 12
  \beamingTwo <e g>8_\staccato <e g>8_\staccato <e g>8_\accent b'8\rest | % 13
  d2\rest  | % 14
  \autoBeamOn a8_\staccato a8_\staccato <e g>4_\accent | % 15
  a8_\staccato a8_\staccato <e g>4_\accent \pageBreak | % 16

  % Repeat Part A

  \slurDown \stemUp \slurGoinDwOne a4( b4  | % 17
  a4 g4) | % 18
  \slurGoinDwOne \beamingOne f8( e8 g8 e8 | % 19
  f8 e8 g4) | % 20
  \slurGoinDwTwo a4( b4  \break | % 21

  a4 g4) | % 22
  \slurGoinDwOne a8( e8 b'8 e,8 | % 23
  a8 e8 b'4)  | % 24
  \slurGoinDwThr g8 ( f8 a8 f8 | % 25
  b8 f8 a8 f8 \break | % 26

  g8 f8 a8 f8  | % 27
  b8 f8 a4) | % 28
  d2\rest | % 29
  b8\rest \slurGoinDwOne e,8( f8 g8  | % 30
  <f a>8) <f a>8_\staccato b4\rest \break | % 31
  d2\rest | % 32

  % Part B

  <e, b'>8_\staccato <e b'>8_\staccato <e b'>4_\staccato  | % 33
  <e a>8_\staccato <e a>8_\staccato <e a>4_\staccato  | % 34
  <e g>8_\staccato <e g>8_\staccato <e g>4_\staccato  | % 35
  <e g>8_\staccato <e g>8_\staccato <e g>4_\staccato  | % 36
  \slurGoinDwFou g4( f8 a8 \break | % 37

  e8 g8 f8 a8 | % 38
  e4) b4\rest | % 39
  d'2\rest | % 40

  % Part B repeat

  <e, b'>8_\staccato <e b'>8_\staccato <e b'>4_\staccato  | % 41
  <e a>8_\staccato <e a>8_\staccato <e a>4_\staccato \break  | % 42
  <e g>8_\staccato <e g>8_\staccato <e g>4_\staccato  | % 43
  <e g>8_\staccato <e g>8_\staccato <e g>4_\staccato  | % 44
  \slurGoinDwOne e8( b'8 f8 b8 | % 45
  g8 b8 a8 b8 | % 46
  g8 b8 g8 e8)  | % 47
  d'2\rest \pageBreak | % 48

  % Part A

  \slurDown \stemUp \slurGoinDwOne a4( b4  | % 49
  a4 g4) | % 50
  \slurGoinDwOne \beamingOne f8( e8 g8 e8 | % 51
  f8 e8 g4) | % 52
  \slurGoinDwTwo a4( b4  \break | % 53

  a4 g4) | % 54
  \slurGoinDwOne a8( e8 b'8 e,8 | % 55
  a8 e8 b'4)  | % 56
  \slurGoinDwThr g8 ( f8 a8 f8 | % 57
  b8 f8 a8 f8 \break | % 58
  g8 f8 a8 f8  | % 59

  b8 f8 a4) | % 60
  \beamingTwo <e g>8_\staccato <e g>8_\staccato \autoBeamOff <e g>8_\accent b'8\rest | % 61
  d2\rest  | % 62
  \autoBeamOn a8_\staccato a8_\staccato <e g>4_\accent \break | % 63
  a8_\staccato a8_\staccato <e g>4_\accent  | % 64

  % Repeat Part A

  \slurDown \stemUp \slurGoinDwOne a4( b4  | % 65
  a4 g4) | % 66
  \slurGoinDwOne \beamingOne f8( e8 g8 e8 | % 67
  f8 e8 g4) \break | % 68
  \slurGoinDwOne a4( b4 | % 69

  a4 g4) | % 70
  \slurGoinDwOne a8( e8 b'8 e,8 | % 71
  a8 e8 b'4)  | % 72
  \slurGoinDwThr g8 ( f8 a8 f8 | % 73
  b8 f8 a8 f8 \break | % 74

  g8 f8 a8 f8  | % 75
  b8 f8 a4) | % 76
  d2\rest | % 77
  b8\rest \slurGoinDwOne e,8( f8 g8  | % 78
  <f a>8) <f a>8_\staccato b4\rest % 79
  b2\rest \bar "|." | % 80
} % stop trebleNotes

% --- bass notes

bassNotes = \relative c' {

  % Part A

  \slurUp \beamingOne \slurGoinUpOne a8( d8 b8 d8 | % 01
  a8 d8 g,4) | % 02
  \slurGoinUpOne a8( d8 c8 b8 | % 03
  a8 d8 c4) | % 04
  \slurGoinUpTwo a8( d8 b8 d8 | % 05

  a8 d8 g,4) | % 06
  \slurGoinUpOne d'8( c8 b8 c8 | % 07
  d8 c8 b4) | % 08
  \slurGoinUpTwo g4( a4 | % 09
  b4 a4 | % 10
  g4 a4 | % 11

  b4 a4) | % 12
  c8^\staccato c8^\staccato c8^\staccato b8^\staccato | % 13
  a8^\staccato b8^\staccato g4^\staccato | % 14
  a8^\staccato a8^\staccato b8^\staccato c8^\staccato | % 15
  a8^\staccato a8^\staccato b8^\staccato c8^\staccato  | % 16

  % Repeat Part A

  \slurGoinUpOne a8( d8 b8 d8 | % 17
  a8 d8 g,4) | % 18
  \slurGoinUpOne a8( d8 c8 b8 | % 19
  a8 d8 c4) | % 20

  \slurGoinUpTwo a8( d8 b8 d8 | % 21
  a8 d8 g,4) | % 22
  \slurGoinUpOne d'8( c8 b8 c8 | % 23
  d8 c8 b4) | % 24
  \slurGoinUpTwo g4( a4 | % 25
  b4 a4 | % 26

  g4 a4 | % 27
  b4 a4) | % 28
  \slurGoinUpOne g8( a8 b8 c8 | % 29
  d8) d,8\rest d4\rest | % 30
  <c' d>8^\staccato <c d>8^\staccato c8^\staccato c8^\staccato | % 31
  c4^\accent d,4\rest | % 32

  % Part B

  \slurGoinUpThr c'8( g8 c4) | % 33
  \slurGoinUpThr c8( a8 c4) | % 34
  \slurGoinUpThr c8( b8 c4) | % 35
  \slurGoinUpThr c8( b8 c4) | % 36
  \slurGoinUpTwo g8( d'8 a8 d8 | % 37
  b8 d8 c8 d8 | % 38
  b8 d8 a8 d8 | % 39
  b8 d8 g,8 d'8) | % 40

  % Part B repeat

  \slurGoinUpThr c8( g8 c4) | % 41
  \slurGoinUpThr c8( a8 c4) | % 42
  \slurGoinUpThr c8( b8 c4) | % 43
  \slurGoinUpThr c8( b8 c4) | % 44
  \slurGoinUpOne g4( a4 | % 45
  b4 c4 | % 46
  b4 g4 | % 47
  c8 d8 b8 g8)  | % 48

  % Part A

  \slurGoinUpOne a8( d8 b8 d8 | % 49
  a8 d8 g,4) | % 50
  \slurGoinUpOne a8( d8 c8 b8 | % 51
  a8 d8 c4) | % 52
  \slurGoinUpTwo a8( d8 b8 d8 | % 53

  a8 d8 g,4) | % 54
  \slurGoinUpOne d'8( c8 b8 c8 | % 55
  d8 c8 b4) | % 56
  \slurGoinUpTwo g4( a4 | % 57
  b4 a4 | % 58
  g4 a4 | % 59

  b4 a4) | % 60
  c8^\staccato c8^\staccato c8^\staccato b8^\staccato | % 61
  a8^\staccato b8^\staccato g4^\staccato | % 62
  a8 a8 b8 c8 | % 63
  a8^\staccato a8^\staccato b8^\staccato c8^\staccato  | % 64

  % Repeat Part A

  \slurGoinUpOne a8( d8 b8 d8 | % 65
  a8 d8 g,4) | % 66
  \slurGoinUpOne a8( d8 c8 b8 | % 67
  a8 d8 c4) | %  68

  \slurGoinUpOne a8( d8 b8 d8 | % 69
  a8 d8 g,4) | % 70
  \slurGoinUpOne d'8( c8 b8 c8 | % 71
  d8 c8 b4) | % 72
  \slurGoinUpTwo g4( a4 | % 73
  b4 a4 | % 74

  g4 a4 | % 75
  b4 a4) | % 76
  \slurGoinUpOne g8( a8 b8 c8 | % 77
  d8) d,8\rest d4\rest | % 78
  <c' d>8^\staccato <c d>8^\staccato c8^\staccato c8^\staccato | % 79
  c4^\accent d,4\rest | % 80
} % stop bassNotes

% --- dynamics, text, and musical terms

dynamicsAboveTreble = \relative c' {

  % Part A

  s2 | % 01
  s2 | % 02
  s2  | % 03
  s2 | % 04
  s2 | % 05

  s2 | % 06
  s2 | % 07
  s2 | % 08
  s2 | % 09
  s2 | % 10
  s2 | % 11

  s2 | % 12
  s2 | % 13
  s2 | % 15
  s2 | % 16

  % Repeat Part A

  s2 | % 17
  s2 | % 18
  s2 | % 19
  s2 | % 20
  s2 | % 21

  s2 | % 22
  s2 | % 23
  s2 | % 24
  s2 | % 25
  s2 | % 26

  \dashedTenuto s16 s16\startTextSpan s16 \stopTextSpan  s16  s16\startTextSpan s32\stopTextSpan s32 s16 s16 | % 27
  s2 | % 28
  s2 | % 29
  s2 | % 30
  s2 | % 31

  % Part B

  s2 | % 32
  s2 | % 33
  s2 | % 34
  s2 | % 35
  s2 | % 36
  s2 | % 37

  s2 | % 38
  s2 | % 39

  % Part B repeat

  s2 | % 40
  s2 | % 41
  s2 | % 42
  s2 | % 43
  s2 | % 44
  s2 | % 45
  s2 | % 46
  s2 | % 47
  s2 | % 48

  % Part A

  s2 | % 49
  s2 | % 50
  s2 | % 51
  s2 | % 52
  s2 | % 53

  s2 | % 54
  s2 | % 55
  s2 | % 56
  s2 | % 57
  s2 | % 58
  s2 | % 59

  s2 | % 60
  s2 | % 61
  s2 | % 62
  s2 | % 63
  s2 | % 64

  % Repeat Part A

  s2 | % 65
  s2 | % 66
  s2 | % 67
  s2 | % 68
  s2 | % 69

  s2 | % 70
  s2 | % 71
  s2 | % 72
  s2 | % 73
  s2 | % 74

  s2 | % 75
  s2 | % 76
  s2 | % 77
  s2 | % 78
  s2 ^\markup { \huge      Très \huge retenu } | % 79
  s2 | % 80
} % stop dynamicsAboveTreble

dynamicsBelowTreble = \relative c' {

  % Part A

  s4_\p s4_"     C'est    un      grand       escalier,       très     grand." | % 01
  s2 | % 02
  s2 | % 03
  s2 | % 04
  s2 | % 05

  s2 | % 06
  s2 | % 07
  s2 | % 08
  s2_" Il   a   plus   de       mille   marches,        toutes   en" | % 09
  s2 | % 10
  s2 | % 11

  s2_"   ivoire" | % 12
  s2 | % 13
  s2 | % 14
  s2_"Il  est  très  beau" | % 15

  % Repeat Part A

  s2 | % 16
  s2_"   Personne   n'ose     s'en   servir." | % 18
  s2 | % 19
  s2 | % 20
  s2 | % 21

  s2_"de   peur   de" | % 22
  s2_"  l'abîmer" | % 23
  s2 | % 24
  s2 | % 25
  s2 | % 26

  s2 | % 27
  s2 | % 28
  s2 | % 29
  s2 | % 30
  s2 | % 31

  % Part B

  s2 | % 32
  s2 | % 33
  s4 s4_"      Le    Roi  lui - même       ne   s'en   est       jamais   servi." | % 34
  s2 | % 35
  s2 | % 36
  s2 | % 37

  s2 | % 38
  s2 | % 39

  % Part B repeat

  s2 | % 40
  s2 | % 41
  s4 s4_"Pour              sortir   de   sa" | % 42
  s2 | % 43
  s2_"   chambre,        il   saute   par     la   fenêtre." | % 44
  s2 | % 45
  s2 | % 46
  s2 | % 47
  s2 | % 48

  % Part A

  s2 | % 49
  s4 s4_"  Aussi,       dit - il   souvent :" | % 50
  s2 | % 51
  s2 | % 52
  s2 | % 53

  s2   | % 54
  s2_"J'aime   tant     cet   escalier,"  | % 55
  s2  | % 56
  s2  | % 57
  s4 s4_"    que     je         vais    le    faire   em -"  | % 58
  s2  | % 59

  s2_" pailler"  | % 60
  s2  | % 61
  s2  | % 62
  s2  | % 63
  s2  | % 64

  % Repeat Part A

  s2  | % 65
  s2  | % 66
  s4 s4_"         Le      Roi     n'a - t - il   pas       raison ?"  | % 67
  s2  | % 68
  s2  | % 69

  s2  | % 70
  s2  | % 71
  s2  | % 72
  s2  | % 73
  s2  | % 74

  s2  | % 75
  s2  | % 76
  s2  | % 77
  s2  | % 78
  s2  | % 79
  s2  | % 80
} % stop dynamicsBelowTreble

dynamicsBelowBass = \relative c' {

  % Part A

  s2 | % 01
  s2 | % 02
  s2 | % 03
  s2 | % 04
  s2 | % 05

  s2 | % 06
  s2 | % 07
  s2 | % 08
  s2 | % 09
  s2 | % 10
  s2 | % 11

  s2 | % 12
  s2 | % 13
  s2 | % 15
  s2 | % 16

  % Repeat Part A

  s2 | % 17
  s2 | % 18
  s2 | % 19
  s2 | % 20
  s2 | % 21

  s2 | % 22
  s2 | % 23
  s2 | % 24
  s2 | % 25
  s2 | % 26

  s2 | % 27
  s2 | % 28
  s2 | % 29
  s2 | % 30
  s2 | % 31

  % Part B

  s2 | % 32
  s2 | % 33
  s2 | % 34
  s2 | % 35
  s2 | % 36
  s2 | % 37

  s2 | % 38
  s2 | % 39

  % Part B repeat

  s2 | % 40
  s2 | % 41
  s2 | % 42
  s2 | % 43
  s2 | % 44
  s2 | % 45
  s2 | % 46
  s2 | % 47
  s2 | % 48

  % Part A

  s2 | % 49
  s2 | % 50
  s2 | % 51
  s2 | % 52
  s2 | % 53

  s2   | % 54
  s2  | % 55
  s2  | % 56
  s2  | % 57
  s2  | % 58
  s2  | % 59

  s2  | % 60
  s2  | % 61
  s2  | % 62
  s2  | % 63
  s2  | % 64

  % Repeat Part A

  s2  | % 65
  s2  | % 66
  s2  | % 67
  s2  | % 68
  s2  | % 69

  s2  | % 70
  s2  | % 71
  s2  | % 72
  s2  | % 73
  s2  | % 74

  s2  | % 75
  s2  | % 76
  s2  | % 77
  s2  | % 78
  s2  | % 79
  s2  | % 80
} % stop dynamicsBelowBass

% -----------------------
% --- Voices ---
% -----------------------

trebleStaff = {
  \global
  \clef treble
  <<
    \new Voice { \voiceOne \trebleNotes }
  >>
} % stop trebleStaff

bassStaff = {
  \global
  \clef bass
  <<
    \new Voice { \voiceTwo \bassNotes }
  >>
} % stop bassStaff

% -----------------------
% --- grouping for book ---
% -----------------------

marche =
\new PianoStaff <<
  \new Dynamics { \global \dynamicsAboveTreble }
  \new Staff { \trebleStaff }
  \new Dynamics {  \dynamicsBelowTreble }
  \new Staff {  \bassStaff }
  \new Dynamics {  \dynamicsBelowBass }
>> % stop marche PianoStaff





