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
% --- Music ---
% -------------

% --- fundamental structure

global = {
  \key a \minor
  \time 4/4
}

% --- High notes

trebleNotes = \relative c' {
  \override Score.BarNumber.stencil = ##f % there are no barnumbers in the original score

  % Part A

  \slurUp \stemDown \shape #'((( 0 . 0) (0 . 2) (0 . 2) (0 . 0))) Slur <d' f>2( <f a>2  | % 01
  <e g>2 <f a>2 | % 02
  <d f>2 <f a>2 | % 03
  <e g>2 <f a>2) \break  | % 04

  \shape #'((( 0 . 0) (0 . 2) (0 . 2) (0 . 0))) Slur e4( d4 e4 d4  | % 05
  e4 d4 e4 d4 | % 06
  e4 d4 e4 d4 | % 07
  e4 d4 e4 d4)  | % 08

  \shape #'((( 0 . 0) (0 . 0.5) (0 . 0.75) (0 . 2.2)) (( 0 . 2.2) (0 . 0.75) (0 . 0.5) (0 . 0)) ) Slur <d a'>2( <e g>2  \break | % 09
  <d a'>2 <e g>2) | % 10
  \shape #'((( 0 . 0) (0 . 2) (0 . 2) (0 . 0))) Slur g4( f4 e4 d4 | % 11
  g4 f4 e4 d4 | % 12

  <d f>2 <e g>2 | % 13
  <d f>2 <e g>2) \break  | % 14
  \shape #'((( 0 . 0) (0 . 2) (0 . 2) (0 . 0))) Slur a4( f4 d4 f4 | % 15
  a4 f4 d4 <e g>4) | % 16

  % Part B

  \shape #'((( 0 . 0) (0 . 1.5) (0 . 2) (0 . 2.2)) (( 0 . 3) (0 . 1.5) (0 . 1) (0 . 0))) Slur <d f>2( <f a>2  | % 17
  <e g>2 <f a>2 | % 18
  <d f>2 <f a>2 \pageBreak | % 19
  <e g>2 <f a>2) | % 20

  \shape #'((( 0 . 0) (0 . 2.2) (0 . 2.2) (0 . 0))) Slur e4( f4 e4 g4  | % 21
  e4 e4 e2) | % 22
  \shape #'((( 0 . 0) (0 . 2.2) (0 . 2.2) (0 . 0))) Slur e4( f4 e4 g4 | % 23
  e4 e4 e2) | % 24

  \shape #'((( 0 . 0) (0 . 1) (0 . 1.5) (0 . 2.2)) (( 0 . 2.2) (0 . 1.5) (0 . 1) (0 . 0))) Slur <d a'>2( <e a>2 \break | % 25
  <f a>2 <e a>2 | % 26
  e4 d4 e4 f4 | % 27
  e4 d4 e4 f4) | % 28

  \shape #'((( 0 . 0) (0 . 2) (0 . 2) (0 . 0))) Slur  <d g>2( <e a>2 | % 29
  <d g>2 <e a>2 | % 30
  \override TieColumn.tie-configuration = #'((0.5 . -1)(6 . 1)) <d g>2~ <d g>4) b4\rest % 31
  <d g>2\portato~ <d g>4 b4\rest \bar "|." | % 32
} % stop trebleNotes

% --- Low notes

bassNotes = \relative c' {

  % Part A

  \shape #'((( 0 . 0) (0 . 2) (0 . 2) (0 . 0))) Slur \slurUp \stemDown c,4( e4 d4 e4  | % 01
  c4 e4 d4 e4 | % 02
  c4 e4 d4 e4 | % 03
  c4 e4 d4 e4)  | % 04

  \shape #'((( 0 . 0) (0 . -2) (0 . -2) (0 . 0))) Slur \slurDown \stemUp <b d>2( <a c>2  | % 05
  <b d>2 <c e>2 | % 06
  <b d>2 <a c>2 | % 07
  <b d>2 <c e>2)  | % 08

  \shape #'((( 0 . 0) (0 . 0.5) (0 . 0.75) (0 . 2.2)) (( 0 . 3) (0 . 1.5) (0 . 1) (0 . 0))) Slur \slurUp \stemDown d4( e4 c4 e4 | % 09
  d4 e4 c4 e4) | % 10
  \shape #'((( 0 . 0) (0 . 2) (0 . 2) (0 . 0))) Slur <a, e'>2( <b d>2 | % 11
  <a e'>2 <b d>2 | % 12

  \stemUp c4  \stemDown d4 \stemUp b4 \stemDown e4 | % 13
  \stemUp c4  \stemDown d4 \stemUp b4 \stemDown e4) | % 14
  \shape #'((( 0 . 1.5) (0 . 3) (0 . 2) (0 . 0))) Slur \stemUp <a, e'>2( c4 \stemDown d4 | % 15
  \tieUp e2~ e4 <b d>4) | % 16

  % Part B

  \shape #'((( 0 . 0) (0 . 3) (0 . 3.2) (0 . 3.4)) (( 0 . 5) (0 . 3) (0 . 2) (0 . -1))) Slur c4( e4 d4 e4 | % 17
  c4 e4 d4 e4 | % 18
  c4 e4 d4 e4 | % 19
  c4 e4 d4 e4) | % 20

  \shape #'((( 0 . 0) (0 . -2) (0 . -2) (0 . 0))) Slur \slurDown  \stemUp <b d>2( <a c>2 | % 21
  <b d>2 <c e>2 | % 22
  <b d>2 <a c>2 | % 23
  <b d>2 <c e>2) | % 24
  \shape #'((( 0 . 0) (0 . 1) (0 . 1.5) (0 . 2.2)) (( 0 . 5) (0 . 3) (0 . 2) (0 . -1))) Slur  \slurUp \stemDown d4( e4 c4 e4 | % 25

  d4 e4 c4 e4 | % 26
  \stemUp <a, d>2 <b e>2 | % 27
  <a d>2 <b e>2 | % 28

  <b e>2 <a d>2  | % 29
  <b e>2 <a d>2 | % 30
  \override TieColumn.tie-configuration = #'((-3.5 . -1)(3.5 . 1)) <b e>2~ <b e>4) d4\rest | % 31
  <b e>2^\portato~ <b e>4 d4\rest | % 32
} % stop bassNotes

% --- Dynamics, text, and musical terms

dynamicsAboveTreble = {

  % Part A

  s1 ^\markup { \normal-text \bold  {"Lent" }}  | % 01
  s1 | % 02
  s1 | % 03
  s1  | % 04

  s1  | % 05
  s1 | % 06
  s1 | % 07
  s1  | % 08
  s1  | % 09

  s1 | % 10
  s1 | % 11
  s1 | % 12
  s1  | % 13
  s1  | % 14
  s1^\markup { \huge Retenir \huge beaucoup }  | % 15

  s1 | % 16
  s1^\markup { \huge Reprendre \huge le \huge mouvement }  | % 17
  s1  | % 18
  s1  | % 19

  s1 | % 20
  s1 | % 21
  s1  | % 22
  s1 | % 23


  s1  | % 24
  s1  | % 25
  s1 | % 26
  s1  | % 27
  s1  | % 28
  s1 | % 29


  s1  | % 30
  s1  | % 31
  s1  | % 32
} % stop dynamicsAboveTreble

dynamicsBelowTreble = {

  % Part A

  s2 \pp s4_"La journée    finie,    Pierrot    va    se    coucher" s4 | % 01
  s1 | % 02
  s1 | % 03
  s1  | % 04

  s2 s2_"Il    a  été    très    sage,   très    sage"  | % 05
  s1 | % 06
  s1 | % 07
  s2 s4_"Sa   mère   l'embrasse" s4  | % 08
  s1  | % 09

  % Part B

  s1_"Il  se  met  au  lit,    content  de  lui,  et    dit.      —      Est-ce    Grand - papa    et    Grand - maman" | % 10
  s1 | % 11
  s1 | % 12
  s1  | % 13
  s1  | % 14
  s1 | % 15
  s1 | % 16
  s1 | % 17
  s1  | % 18
  s1  | % 19

  s2 s2_"Oui,         répond      la      maman —" | % 20
  s1 | % 21
  s1  | % 22
  s1_"Qui  le  leur  dira    —  Ils le verront   dans" | % 23



  s1  | % 24
  s1  | % 25
  s1_"le journal." | % 26
  s1  | % 27
  s1  | % 28
  s1_"     Pierrot     s'endort,        tout    rempli      de   fierté" | % 29



  s1  | % 30
  s1  | % 31
  s1  | % 32

}

dynamicsAboveBass = {

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
  s1 | % 25
  s1 | % 26
  s1  | % 27
  s1  | % 28
  s1 | % 29

  % Part D

  s1  | % 30
  s1  | % 31
  s1  | % 32
} % stop dynamicsBelowTreble

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

berceuse =
\new PianoStaff <<
  \new Dynamics { \global \dynamicsAboveTreble }
  \new Staff { \trebleStaff }
  \new Dynamics {  \dynamicsBelowTreble }
  \new Dynamics {  \dynamicsAboveBass }
  \new Staff {  \bassStaff }
>> % stop berceuse PianoStaff








