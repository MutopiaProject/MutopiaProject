% this is a comment

% --------------------
% --- GENERAL INFO ---
% --------------------

% --- version statement

\version "2.18.2"

% --- language used in the code

\language "english" %  -s/--sharp -f/--flat -ss/-x/--sharpsharp -ff/--flatflat

% -------------
% --- Music ---
% -------------

% --- fundamental structure

global = {
  \key a \minor
  \time 2/4
}

% --- High notes

trebleNotes = \relative c' {

  % Part A

  \slurDown e8( c8) b'4\rest  | % 01
  f8( d8) b'4\rest | % 02
  g8( d8) b'4\rest | % 03
  g8( d8) b'4\rest \break  | % 04

  e,8( c8) b'4\rest  | % 05
  f8( d8) b'4\rest | % 06
  g8( d8) b'4\rest | % 07
  g8( d8) b'4\rest  | % 08

  % Part B

  b4\rest c,8( e8)  \break | % 09
  b'4\rest d,8( f8) | % 10
  b4\rest e,8( g8) | % 11
  b4\rest e,8( g8) | % 12

  b4\rest c,8( e8) | % 13
  b'4\rest d,8( f8) \break  | % 14
  b4\rest e,8( g8) | % 15
  b4\rest e,8( g8) | % 16

  % Part C

  b4\rest d,8( c8) | % 17
  b'4\rest d,8( c8)  | % 18
  b'4\rest d,8( c8)  | % 19
  b'4\rest d,8( c8) \pageBreak | % 20

  b'4\rest d,8( c8) | % 21
  b'4\rest d,8( c8)  | % 22
  b'4\rest d,8( c8)  | % 23
  b'4\rest d,8( c8) | % 24

  % Part D

  f2(  | % 25
  e2 \break | % 26
  d2  | % 27
  g2)  | % 28
  f2( | % 29
  e2  | % 30
  d2  | % 31
  g2) \break  | % 32

  % Part A

  e8( c8) b'4\rest  | % 33
  f8( d8) b'4\rest | % 34
  g8( d8) b'4\rest | % 35
  g8( d8) b'4\rest | % 36

  e,8( c8) b'4\rest \break  | % 37
  f8( d8) b'4\rest | % 38
  g8( d8) b'4\rest | % 39
  g8( d8) b'4\rest  | % 40

  % Part B

  b4\rest c,8( e8) | % 41
  b'4\rest d,8( f8) \break | % 42
  b4\rest e,8( g8) | % 43
  b4\rest e,8( g8) | % 44

  b4\rest c,8( e8) | % 45
  b'4\rest d,8( f8) | % 46
  b4\rest e,8( g8) \break | % 47
  b4\rest e,8( g8) | % 48

  % Part C

  \tieDown c,2~\accent | % 49
  c2~ | % 50
  c2~ | % 51
  c4 b'4\rest \bar "|."  | % 52
} % stop trebleNotes

% --- Low notes

bassNotes = \relative c' {

  % Part A

  \slurUp d,4\rest b'8( a8)  | % 01
  d,4\rest b'8( a8) | % 02
  d,4\rest b'8( g8) | % 03
  d4\rest b'8( g8)  | % 04

  d4\rest b'8( a8)  | % 05
  d,4\rest b'8( a8) | % 06
  d,4\rest b'8( g8) | % 07
  d4\rest b'8( g8)  | % 08

  % Part B

  a8( b8)  d,4\rest  | % 09
  a'8( b8)  d,4\rest  | % 10
  g8( b8)  d,4\rest  | % 11
  g8( b8)  d,4\rest  | % 12

  a'8( b8)  d,4\rest  | % 13
  a'8( b8)  d,4\rest  | % 14
  g8( b8)  d,4\rest  | % 15
  g8( b8)  d,4\rest  | % 16

  % Part C

  e2( | % 17
  f2  | % 18
  g2  | % 19
  a2) | % 20

  e2( | % 21
  f2  | % 22
  g2 | % 23
  a2)  | % 24

  % Part D

  d,4\rest g8( a8)  | % 25
  d,4\rest g8( a8)  | % 26
  d,4\rest g8( a8)   | % 27
  d,4\rest g8( a8)   | % 28

  d,4\rest g8( a8)  | % 29
  d,4\rest g8( a8)  | % 30
  d,4\rest g8( a8)   | % 31
  d,4\rest g8( a8)   | % 32

  % Part A

  \slurUp d,4\rest b'8( a8)  | % 33
  d,4\rest b'8( a8) | % 34
  d,4\rest b'8( g8) | % 35
  d4\rest b'8( g8)  | % 36

  d4\rest b'8( a8)  | % 37
  d,4\rest b'8( a8) | % 38
  d,4\rest b'8( g8) | % 39
  d4\rest b'8( g8)  | % 40

  % Part B

  a8( b8)  d,4\rest  | % 41
  a'8( b8)  d,4\rest  | % 42
  g8( b8)  d,4\rest  | % 43
  g8( b8)  d,4\rest  | % 44

  a'8( b8)  d,4\rest  | % 45
  a'8( b8)  d,4\rest  | % 46
  g8( b8)  d,4\rest  | % 47
  g8( b8)  d,4\rest  | % 48

  % Part C

  d4\rest g8( f8 | % 49
  a4) g8( f8  | % 50
  a4) d,4\rest | % 51
  a'4^\staccato d,4\rest | % 52
} % stop bassNotes

% --- Dynamics, text, and musical terms

dynamicsAboveTreble = {

  % Part A

  s2^\markup { \normal-text \bold  {"Modéré" }} | % 01
  s2  | % 01
  s2 | % 02
  s2 | % 03
  s2  | % 04

  s2  | % 05
  s2 | % 06
  s2 | % 07
  s2  | % 08
  s2  | % 09

  % Part B

  s2 | % 10
  s2 | % 11
  s2 | % 12
  s2  | % 13
  s2  | % 14
  s2 | % 15

  % Part C

  s2 | % 16
  s2 | % 17
  s2  | % 18
  s2  | % 19

  s2 | % 20
  s2 | % 21
  s2  | % 22
  s2 | % 23

  % Part D

  s2  | % 24
  s2  | % 25
  s2 | % 26
  s2  | % 27
  s2  | % 28
  s2 | % 29

  % Part D

  s2  | % 30
  s2  | % 31
  s2  | % 32
  s2  | % 33
  s2 | % 34

  % Part E

  s2 | % 35
  s2 | % 36
  s2 | % 37
  s2 | % 38

  % Part F

  s2 | % 39
  s2 | % 40
  s2 | % 41
  s2 | % 42
  s2  | % 43
  s2 | % 44
  s2 | % 45

  % Part A

  s2 | % 46
  s2 | % 47
  s2 | % 48
  s2 | % 49
  s2 | % 50
  s2 | % 51
  s2 | % 52
} % stop dynamicsAboveTreble

dynamicsBelowTreble = {

  % Part A

  s2 \p  | % 01
  s2 | % 02
  s2 | % 03
  s2  | % 04

  s2  | % 05
  s2 | % 06
  s2 | % 07
  s2  | % 08
  s2  | % 09

  % Part B

  s2 | % 10
  s2 | % 11
  s2 | % 12
  s2  | % 13
  s2  | % 14
  s2 | % 15

  % Part C

  s2 | % 16
  s2 | % 17
  s2  | % 18
  s2  | % 19

  s2 | % 20
  s2 | % 21
  s2  | % 22
  s2 | % 23

  % Part D

  s2  | % 24
  s2  | % 25
  s2 | % 26
  s2  | % 27
  s2  | % 28
  s2 | % 29

  % Part D

  s2  | % 30
  s2  | % 31
  s2  | % 32
  s2  | % 33
  s2 | % 34

  % Part E

  s2 | % 35
  s2 | % 36
  s2 | % 37
  s2 | % 38

  % Part F

  s2 | % 39
  s2 | % 40
  s2 | % 41
  s2 | % 42
  s2  | % 43
  s2 | % 44
  s2 | % 45

  % Part A

  s2 | % 46
  s2 | % 47
  s2 | % 48
  s2 | % 49
  s2 | % 50
  s2 | % 51
  s2 | % 52
} % stop dynamicsBelowTreble

dynamicsAboveBass = {

  % Part A

  s2  | % 01
  s2^"Se bien lever" | % 02
  s2 | % 03
  s2  | % 04

  s2  | % 05
  s2 | % 06
  s2 | % 07
  s2  | % 08
  s4 s8 s8^"Se"  | % 09

  % Part B

  s2^"bien tenir" | % 10
  s2 | % 11
  s2 | % 12
  s2  | % 13
  s2  | % 14
  s2 | % 15

  % Part C

  s2 | % 16
  s4 s8^"Se bien   coiffer" s8 | % 17
  s2  | % 18
  s2  | % 19

  s2 | % 20
  s2 | % 21
  s2  | % 22
  s2 | % 23

  % Part D

  s2  | % 24
  s4 s8^"Se bien    regarder" s8 | % 25
  s2 | % 26
  s2  | % 27
  s2  | % 28
  s2 | % 29

  % Part D

  s2  | % 30
  s2  | % 31
  s2  | % 32
  s2^"Se bien conduire"  | % 33
  s2 | % 34

  % Part E

  s2 | % 35
  s2 | % 36
  s2 | % 37
  s2 | % 38

  % Part F

  s2 | % 39
  s2 | % 40
  s4 s16 s16^"Se bien     promener" s8 | % 41
  s2 | % 42
  s2  | % 43
  s2 | % 44
  s2 | % 45

  % Part A

  s2 | % 46
  s2 | % 47
  s2 | % 48
  s4 s8^"Se bien    porter" s8 | % 49
  s2 | % 50
  s2 | % 51
  s2 | % 52
} % stop dynamicsAboveBass

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

prelude =
\new PianoStaff <<
  \new Dynamics { \global \dynamicsAboveTreble }
  \new Staff { \trebleStaff }
  \new Dynamics {  \dynamicsBelowTreble }
  \new Dynamics {  \dynamicsAboveBass }
  \new Staff {  \bassStaff }
>> % stop prelude PianoStaff



