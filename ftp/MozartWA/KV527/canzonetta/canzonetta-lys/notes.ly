% This file contains only the pure music, plus the standard staff
% definitions. 
% The source I used is the notes from Neue Mozartausgabe. I have left out
% all accidentals written in small print.

\version "2.16.1"

pizz = \markup{\italic "pizzicato"}

ViolinINotes =  { 
  r8^\pizz <fis'  d''  >8<fis'  d''  >8 r8  <fis' d''  >8<fis'  d''  >8|
  % 2
  r8  <e'  d''  >8<e'  d''  >8 r8  <e'  d''  >8<e'  d''  >8|
  % 3
  r8  <e'  cis''  >8<e'  cis''  >8 r8  <e'  cis'' >8 <e'  cis''  >8|
  % 4
  <fis'  d''  >8<fis'  d''  >8<fis'  d''  >8 <fis' d''  >8 r8 r8
  % 5
  r8 <fis'  d''  >8<fis'  d''  >8 r8  <fis'  d''>8 <fis' d''>8 |
  % 6
  r8  <e'  d''  >8<e'  d''  >8 r8  <e'  d''>8 <e' d''>8|
  % 7
  r8  <e'  cis''  >8<e'  cis''  >8 r8  <e' cis''>8 <e'  cis''  >8|
  % 8
  r8  <e'  cis''  >8<e'  cis''  >8 r8  <fis' d''>8 <fis'  d''  >8|
  % 9
  r8  <fis'  d''  >8<fis'  d''  >8 r8  <fis' d''>8 <fis'  d''  >8|
  % 10
  r8  <e'  d''  >8<e'  d''  >8 r8  <e'  cis''  >8<e'  cis''  >8|
  % 11
  r8  <fis'  d''  >8<fis'  d''  >8 r8  <e' cis''>8 <d'  b'  >8|
  % 12
  r8  <cis'  a'  >8<cis'  a'  >8 r8  <cis'  a'>8 <cis'  a'>8|
  % 13
  r8  <b  a'  >8<b  a'  >8 r8  <b  gis'  >8 <b gis'>8|
  % 14
  r8  <cis'  a'  >8<cis'  a'  >8 r8  <cis'  a'  >8 <cis'  a'>8|
  % 15
  r8  <cis'  a'  >8<cis'  a'  >8 r8  <b  a'  >8 <b  a'  >8|
  % 16
  r8  <b  g'!  >8<b  g'  >8 r8  <e'  c''  >8<e' c''>8|
  % 17
  r8  <d'  c''  >8<d'  c''  >8 r8  <d'  c''>8 <d' c''>8|
  % 18
  r8  <d'  b'  >8<d'  b'  >8 r8  <d'  b'  >8 <d' b'>8|
  % 19
  r8  <d'  a'  >8<d'  a'  >8 r8  <d'  b'  >8 <d' b'>8|
  % 20
  r8  <d'  a'  >8<d'  a'  >8 r8  <d'  d''  >8 <d' d''  >8|
  % 21
  r8  <d'  d''  >8<d'  d''  >8 r8  <fis'  d''  >8 <e'  cis''>8|
  % 22
  r8  <fis'  d''  >8<fis'  d''  >8 r8  <e' cis''  >8<e'  cis''>8|
  % 23
  r8  <fis'  d''  >8<fis'  d''  >8 r8  <e' cis''  >8<e'  cis''>8|
  % 24
  <fis'  d''  >8<fis'  d''  >8<fis'  d''  >8<fis'  d''  >8 r8 r8 |
  % 25
  r8 <fis'  d''  >8<fis'  d''  >8 r8  <fis'  d''>8 <fis' d''  >8|
  % 26
  r8  <e'  d''  >8<e'  d''  >8 r8  <e'  d''>8 <e'  d''>8|
  % 27
  r8  <e'  cis''  >8<e'  cis''  >8 r8  <e' cis''>8<e' cis''>8|
  % 28
  r8  <e'  cis''  >8<e'  cis''  >8 r8  <fis' d''>8 <fis'  d''  >8|
  % 29
  r8  <fis'  d''  >8<fis'  d''  >8 r8  <fis' d''>8 <fis' d''>8|
  % 30
  r8  <e'  d''  >8<e'  d''  >8 r8  <e'  cis''  >8 <e'  cis''>8|
  % 31
  r8  <fis'  d''  >8<fis'  d''  >8 r8  <e' cis''>8 <d'  b'>8|
  % 32
  r8  <cis'  a'  >8<cis'  a'  >8 r8  <cis'  a'  >8 <cis' a'>8|
  % 33
  r8  <b  a'  >8<b  a'  >8 r8  <b  gis'  >8 <b gis'>8|
  % 34
  r8  <cis'  a'  >8<cis'  a'  >8 r8  <cis'  a'>8 <cis' a'>8|
  % 35
  r8  <cis'  a'  >8<cis'  a'  >8 r8  <b  a'  >8<b  a'>8|
  % 36
  r8  <b  g'!  >8<b  g'  >8 r8  <e'  c''  >8<e' c''>8|
  % 37
  r8  <d'  c''  >8<d'  c''  >8 r8  <d'  c''  >8<d' c''>8|
  % 38
  r8  <d'  b'  >8<d'  b'  >8 r8  <d'  b'  >8<d' b'>8|
  % 39
  r8  <d'  a'  >8<d'  a'  >8 r8  <d'  b'  >8<d' b'>8|
  % 40
  r8  <d'  a'>8 <d'  a'  >8 r8  <d'  d''  >8 <d' d''>8|
  % 41
  r8  <d'  d''  >8 <d'  d''>8 r8  <fis'  d''>8 <e'  cis''>8|
  % 42
  r8  <fis'  d''  >8 <fis'  d''>8 r8  <e' cis''>8 <e'  cis''  >8|
  % 43
  r8  <fis'  d''  >8 <fis'  d''>8 r8  <e' cis''  >8<e'  cis''  >8|
  % 44
  <fis'  d''  >8 r8 r8 r4 r8 \bar "|."
} 

ViolinIStaff =  {
  \clef "treble"
  \key d\major
  \time 6/8
  \ViolinINotes
}

ViolinIINotes =  { 
  <d'  fis'>8^\pizz r8 r8  <d'  fis'>8 r8 r8  |
  % 2
  <d'  e'>8 r8 r8  <d' e'>8 r8 r8  |
  % 3
  <cis' e'>8 r8 r8  <cis'  e'>8 r8 r8  |
  % 4
  <d'  fis'>8 <d'  fis'>8 <d'  fis'>8 <d' fis'>8 r8 r8  |
  % 5
  <d'  fis'  >8 r8 r8  <d'  fis'  >8 r8 r8  |
  % 6
  <d'  e'  >8 r8 r8  <d'  e'  >8 r8 r8  |
  % 7
  <cis'  e'  >8 r8 r8  <cis'  e'  >8 r8 r8  |
  % 8
  <cis'  e'  >8 r8 r8  <d'  fis'  >8 r8 r8  |
  % 9
  <d'  fis'  >8 r8 r8  <d'  fis'  >8 r8 r8  |
  % 10
  <d'  e'  >8 r8 r8  <cis'  e'  >8 r8 r8  |
  % 11
  <d'  fis'  >8 r8  <d'  fis'  >8<cis'  a'  >8 r8  <b  gis'  >8|
  % 12
  <cis'  a'  >8 r8 r8  <cis'  e'  >8 r8 r8  |
  % 13
  <b  fis'  >8 r8 r8  <b  e'  >8 r8 r8  |
  % 14
  <cis'  e'  >8 r8 r8  <cis'  e'  >8 r8 r8  |
  % 15
  <cis'  fis'  >8 r8 r8  <dis'  fis'  >8 r8 r8  |
  % 16
  <b  g'!  >8 r8 r8  <a  g'  >8 r8 r8  |
  % 17
  <a  g'  >8 r8 r8  <a  fis'  >8 r8 r8  |
  % 18
  <b  g'  >8 r8 r8  <b  d'  >8 r8 r8  |
  % 19
  <a  d'  >8 r8 r8  <b  d'  >8 r8 r8  |
  % 20
  <a  d'  >8 r8 r8  <d'  ais'  >8 r8 r8  |
  % 21
  <d'  b'  >8 r8  <f'  b'  >8<fis'  a'  >8
  r8  <a  g'  >8|
  % 22
  <a  fis'  >8 r8 r8  <a  g'  >8 r8 r8  |
  % 23
  <a  fis'  >8 r8 r8  <g'  a'  >8 r8 r8  |
  % 24
  <fis' a'>8 <fis' a'>8 <fis' a'>8 <fis' a'>8 r8 r8 |
  % 25
  <d'  fis'  >8 r8 r8  <d'  fis'  >8 r8 r8  |
  % 26
  <e'  fis'  >8 r8 r8  <e'  fis'  >8 r8 r8  |
  % 27
  <cis'  e'  >8 r8 r8  <cis'  e'  >8 r8 r8  |
  % 28
  <cis'  e'  >8 r8 r8  <d'  fis'  >8 r8 r8  |
  % 29
  <d'  fis'  >8 r8 r8  <d'  fis'  >8 r8 r8  |
  % 30
  <d'  e'  >8 r8 r8  <cis'  e'  >8 r8 r8  |
  % 31
  <d'  fis'  >8 r8  <d'  fis'  >8<cis'  a'  >8
  r8  <b  gis'  >8|
  % 32
  <cis'  a'  >8 r8 r8  <cis'  e'  >8 r8 r8  |
  % 33
  <b  fis'  >8 r8 r8  <b  e'  >8 r8 r8  |
  % 34
  <cis'  e'  >8 r8 r8  <cis'  e'  >8 r8 r8  |
  % 35
  <cis'  fis'  >8 r8 r8  <dis'  fis'  >8 r8 r8  |
  % 36
  <b  g'!  >8 r8 r8  <a  g'  >8 r8 r8  |
  % 37
  <a  g'  >8 r8 r8  <a  fis'  >8 r8 r8  |
  % 38
  <b  g'  >8 r8 r8  <b  d'  >8 r8 r8  |
  % 39
  <a  d'  >8 r8 r8  <b  d'  >8 r8 r8  |
  % 40
  <a  d'  >8 r8 r8  <d'  ais'  >8 r8 r8  |
  % 41
  <d'  b'  >8 r8  <f'  b'  >8<fis'  a'  >8
  r8  <a  g'  >8 |
  % 42
  <a  fis'  >8 r8 r8  <a  g'  >8 r8 r8  |
  % 43
  <a  fis'  >8 r8 r8  <g'  a'  >8 r8 r8  |
  % 44
  <fis'  a'  >8 r8 r8 r4 r8 \bar "|."
} 

ViolinIIStaff =  {
  \clef "treble"
  \key d\major
  \time 6/8
  \ViolinIINotes
}

ViolaNotes =  
  { 
  a8^\pizz r8 r8  a8  r8 r8  |
  % 2
  b8  r8 r8  b8  r8 r8  |
  % 3
  a8  r8 r8  a8  r8 r8  |
  % 4
  a8  a8  a8  a8  r8 r8  |
  % 5
  a8  r8 r8  a8  r8 r8  |
  % 6
  b8  r8 r8  b8  r8 r8  |
  % 7
  a8  r8 r8  a8  r8 r8  |
  % 8
  a8  r8 r8  a8  r8 r8  |
  % 9
  a8  r8 r8  b8  r8 r8  |
  % 10
  gis8  r8 r8  a8  r8 r8  |
  % 11
  a8  r8  b8  e'8  r8  e'8  |
  % 12
  e'8  r8 r8  a8  r8 r8  |
  % 13
  a8  r8 r8  gis8  r8 r8  |
  % 14
  a8  r8 r8  a8  r8 r8  |
  % 15
  a8  r8 r8  b8  r8 r8  |
  % 16
  e'8  r8 r8  <c'  e'  >8 r8 r8  |
  % 17
  d'8  r8 r8  d'8  r8 r8  |
  % 18
  d'8  r8 r8  g8  r8 r8  |
  % 19
  fis8 r8 r8  g8  r8 r8  |
  % 20
  fis8  r8 r8  fis'8  r8 r8  |
  % 21
  g'8  r8  gis'8  a'8  r8  <cis'  e'  >8|
  % 22
  d'8  r8 r8  <cis'  e'  >8 r8 r8  |
  % 23
  d'8  r8 r8  <cis'  e'  >8 r8 r8  |
  % 24
  d'8  d'8  d'8  d'8  r8 r8  |
  % 25
  a8  r8 r8  a8  r8 r8  |
  % 26
  b8  r8 r8  b8  r8 r8  |
  % 27
  a8  r8 r8  a8  r8 r8  |
  % 28
  a8  r8 r8  a8  r8 r8  |
  % 29
  a8  r8 r8  b8  r8 r8  |
  % 30
  gis8  r8 r8  a8  r8 r8  |
  % 31
  a8  r8  b8  e'8  r8  e'8  |
  % 32
  e'8  r8 r8  a8  r8 r8  |
  % 33
  a8  r8 r8  gis8  r8 r8  |
  % 34
  a8  r8 r8  a8  r8 r8  |
  % 35
  a8  r8 r8  b8  r8 r8  |
  % 36
  e'8  r8 r8  <c'  e'  >8 r8 r8  |
  % 37
  d'8  r8 r8  d'8  r8 r8  |
  % 38
  d'8  r8 r8  g8  r8 r8  |
  % 39
  fis8  r8 r8  g8  r8 r8  |
  % 40
  fis8  r8 r8  fis'8  r8 r8  |
  % 41
  g'8  r8  gis'8  a'8  r8  <cis'  e'  >8|
  % 42
  d'8  r8 r8  <cis'  e'  >8 r8 r8  |
  % 43
  d'8  r8 r8  <cis'  e'  >8 r8 r8  |
  % 44
  d'8  r8 r8 r4 r8 \bar "|."
} 

ViolaStaff =  {
  \clef "alto"
  \key d\major
  \time 6/8
  \ViolaNotes
}

MandolinNotes =  { 
  d''16  e''16  fis''16  g''16  a''16  fis''16  d''8  fis''8 a''8  |
  % 2
  g''16  a''16  b''16  cis'''16  d'''16  b''16  g''8  b''8  
  d'''8  |
  % 3
  a'16  b'16  cis''16  d''16  e''16  fis''16  g''16  fis''16  
  g''16  e''16  cis''16  e''16  |
  % 4
  d''16  fis''16  d''16  a'16  fis'16  a'16  d'4  r8  |
  % 5
  d''16  e''16  fis''16  g''16  a''16  fis''16  d''8  fis''8  
  a''8  |
  % 6
  g''16  a''16  b''16  cis'''16  d'''16  b''16  g''8  b''8  
  d'''8  |
  % 7
  a'16  b'16  cis''16  d''16  e''16  cis''16  a'8  cis''8  
  e''8  |
  % 8
  e'16  fis'16  g'16  a'16  b'16  cis''16  d''16  cis''16  
  d''16  a'16  fis'16  d'16  |
  % 9
  d''16  e''16  fis''16  g''16  a''16  fis''16  d''8  fis''8  
  a'8  |
  % 10
  gis'16  b'16  e''16  b'16  gis'16  b'16  a'16  cis''16  
  e''16  cis''16  a'16  cis''16  |
  % 11
  fis'16  a'16  d''16  a'16  fis''16  d''16  cis''16  e''16  
  a''16  cis''16  b'16  gis''16  |
  % 12
  a'16  cis''16  e''16  a''16  e''16  cis''16  a'16  cis''16  
  e''16  cis''16  a'16  cis''16  |
  % 13
  a'16  d''16  fis''16  d''16  a'16  d''16  gis'16  b'16  
  e''16  b'16  gis'16  b'16  |
  % 14
  a'16  e''16  cis''16  a'16  e'16  cis'16  <a e'  a'>4 r8      |
  % 15
  fis'16  cis''16  a''16  cis''16  fis'16  cis''16  fis'16  
  b'16  dis''16  b'16  fis'16  b'16  |
  % 16
  g'16  b'16  e''16  b'16  g'16  b'16  c''16  e''16  a''16  
  e''16  c''16  e''16  |
  % 17
  d'16  d''16  g''16  a''16  g''16  d''16  d'16  d''16  
  fis''16  a''16  fis''16  d''16  |
  % 18
  g''16  a''16  b''16  c'''16  d'''16  b''16  g''8  b''8  
  d'''8  |
  % 19
  d''16  e''16  fis''16  g''16  a''16  d''16  g''8  b''8  
  d'''8  |
  % 20
  fis'16  d''16  a''16  d''16  a''16  d''16  fis'16  d''16  
  ais''16  d''16  ais''16  d''16  |
  % 21
  g'16  d''16  b''16  d''16  b''16  d''16  a'16  d''16  
  fis''16  d''16  g''16  cis''16  |
  % 22
  d''16  a'16  fis'16  d'16  fis''16  d''16  cis''16  d''16  
  e''16  fis''16  g''16  e''16  |
  % 23
  d''16  e''16  fis''16  g''16  a''16  fis''16  e''16  
  fis''16  g''16  a''16  b''16  cis'''16  |
  % 24
  d'''16  a''16  fis''16  d''16  a'16  fis'16  d'8  r8 r8    |
  % 25
  d''16  e''16  fis''16  g''16  a''16  fis''16  d''8  fis''8  
  a''8  |
  % 26
  g''16  a''16  b''16  cis'''16  d'''16  b''16  g''8  b''8  
  d'''8  |
  % 27
  a'16  b'16  cis''16  d''16  e''16  cis''16  a'8  cis''8  
  e''8  |
  % 28
  e'16  fis'16  g'16  a'16  b'16  cis''16  d''16  cis''16  
  d''16  a'16  fis'16  d'16  |
  % 29
  d''16  e''16  fis''16  g''16  a''16  fis''16  d''8  fis''8  
  a'8  |
  % 30
  gis'16  b'16  e''16  b'16  gis'16  b'16  a'16  cis''16  
  e''16  cis''16  a'16  cis''16  |
  % 31
  fis'16  a'16  d''16  a'16  fis''16  d''16  cis''16  e''16  
  a''16  cis''16  b'16  gis''16  |
  % 32
  a'16  cis''16  e''16  a''16  e''16  cis''16  a'16  cis''16  
  e''16  cis''16  a'16  cis''16  |
  % 33
  a'16  d''16  fis''16  d''16  a'16  d''16  gis'16  b'16  
  e''16  b'16  gis'16  b'16  |
  % 34
  a'16  e''16  cis''16  a'16  e'16  cis'16  <a e'  a'>4 r8   |
  % 35
  fis'16  cis''16  a''16  cis''16  fis'16  cis''16  fis'16  
  b'16  dis''16  b'16  fis'16  b'16  |
  % 36
  g'16  b'16  e''16  b'16  g'16  b'16  c''16  e''16  a''16  
  e''16  c''16  e''16  |
  % 37
  d'16  d''16  g''16  a''16  g''16  d''16  d'16  d''16  
  fis''16  a''16  fis''16  d''16  |
  % 38
  g''16  a''16  b''16  c'''16  d'''16  b''16  g''8  b''8  
  d'''8  |
  % 39
  d''16  e''16  fis''16  g''16  a''16  d''16  g''8  b''8  
  d'''8  |
  % 40
  fis'16  d''16  a''16  d''16  a''16  d''16  fis'16  d''16  
  ais''16  d''16  ais''16  d''16  |
  % 41
  g'16  d''16  b''16  d''16  b''16  d''16  a'16  d''16  
  fis''16  d''16  g''16  cis''16  |
  % 42
  d''16  a'16  fis'16  d'16  fis''16  d''16  cis''16  d''16  
  e''16  fis''16  g''16  e''16  |
  % 43
  d''16  e''16  fis''16  g''16  a''16  fis''16  e''16  
  fis''16  g''16  a''16  b''16  cis'''16  |
  % 44
  d'''8  r8 r8 r4 r8  \bar "|."
} 

MandolinStaff =  {
  \clef "treble"
  \key d\major
  \time 6/8
  \MandolinNotes
}


DonGiovanniNotes =  {
\set autoBeaming = ##f
  R2. | R2. | R2. | 
  % 4
  r4 r8 r4 a8  |
  % 5
   a8[(   d'8)]  d'8  d'4  cis'8  |
  % 6
  b4  b8 r8 r8  b8  |
  % 7
  a4. ~  a8[(  b8)]  g8  |
  % 8
  a4(   g8)  fis8  r8  a8  |
  % 9
   a8[(   d'8)]  d'8  d'4  cis'8  |
  % 10
  \appoggiatura cis'8 b4.  cis'4.  |
  % 11
  a4  d'8   cis'8.[(  d'16   b8)]  |
  % 12
  a4  r8 r4 r8 | R2. |
  % 14
  r4 r8 r4 a8  |
  % 15
  a4  a8   a8[(   g8)]  fis8  |
  % 16
  g4.  c'4.  |
  % 17
  a4  a8   d'8.[(  e'16   c'8)]  |
  % 18
  b4  r8 r4  g8  |
  % 19
  d'4  a8   b8.[(   a16)]  g8  |
  % 20
  d'4.  ais4.  |
  % 21
   b8[(   cis'8)]  d'8  d4(   fis16[   e16)]  |
  % 22
  d4  r8 r4 r8 | R2. | 
  % 24
  r4 r8 r4 a8  |
  % 25
   a8[(   d'8)]  d'8  d'4  cis'8  |
  % 26
  cis'4(   b8)  b4.  |
  % 27
  a4. ~  a8[(   b8)]  g8  |
  % 28
  a4(   g8)  fis4  r8  |
  % 29
  a4  a8  d'8.  d'16  cis'8  |
  % 30
   cis'8[(   b8)]  b8  cis'4.  |
  % 31
  a4  d'8   cis'8.[(  d'16   b8)]  |
  % 32
  a4  r8 r4 r8 | R2. 
  % 34
  r4 r8 r4 a8  |
  % 35
  a4  a8   a8[(   g8)]  fis8  |
  % 36
  g4.  c'4.  |
  % 37
  a4  a8   d'8.[(  e'16   c'8)]  |
  % 38
  b4  r8 r4 r8 |
  % 39
  d'8.  d'16  a8   b8.[(   a16)]   g8  |
  % 40
  d'4.  ais4.  |
  % 41
   b8.[(   cis'16)]  d'8  d4(   fis16[   e16)]  |
  % 42
  d4  r8 r4 r8 | R2. | R2.  \bar "|."
} 

DonGiovanniLyrics = \lyricmode {
  Deh4 vie -- ni_al -- la fi -- ne -- stra, o mio __ te -- so -- ro,
  deh vie -- ni_a con -- so -- lar il pian -- to mi -- o:

  Se ne -- ghi_a me __ di dar qual -- che ri -- sto -- ro,
  da -- van -- ti_agli oc -- chi tuoi mo -- rir __ vogl' i -- o!

  Tu ch'hai la boc -- ca dol -- ce più __ che_il mie -- le,
  tu che_il zuc -- che -- ro por -- ti in mez -- zo_il co -- re,

  non es -- ser, gio -- ia mia, con me cru -- de -- le:
  la -- scia -- ti_al -- men ve -- der, mio bell' __ a -- mo -- re.
}

DonGiovanniStaff =  {
  \clef "bass"
  \key d\major
  \time 6/8
   \unset melismaBusyProperties 
  \DonGiovanniNotes
}

CelloNotes =  {
  d8^\pizz r8 r8  d8  r8 r8  |
  % 2
  g,8  r8 r8  g8  r8 r8  |
  % 3
  a8  r8 r8  a,8  r8 r8  |
  % 4
  d8  r8 r8  d8  r8 r8  |
  % 5
  d8  r8 r8  d8  r8 r8  |
  % 6
  g,8  r8 r8  g8  r8 r8  |
  % 7
  a8  r8 r8  a,8  r8 r8  |
  % 8
  d8  r8 r8  d8  r8 r8  |
  % 9
  d8  r8 r8  d8  r8 r8  |
  % 10
  e8  r8 r8  a,8  r8 r8  |
  % 11
  d8  r8  b,8  e8  r8  e8  |
  % 12
  a,8  r8 r8  a8  r8 r8  |
  % 13
  d8  r8 r8  e8  r8 r8  |
  % 14
  a,8  r8 r8  a,8  r8 r8  |
  % 15
  fis8  r8 r8  b,8  r8 r8  |
  % 16
  e8  r8 r8  a,8  r8 r8  |
  % 17
  d8  r8 r8  d8  r8 r8  |
  % 18
  g,8  r8 r8  g8  r8 r8  |
  % 19
  fis8  r8 r8  g8  r8 r8  |
  % 20
  fis8  r8 r8  fis8  r8 r8  |
  % 21
  g8  r8  gis8  a8  r8  a,8  |
  % 22
  d8  r8 r8  a8  r8 r8  |
  % 23
  d'8  r8 r8  a8  r8 r8  |
  % 24
  d8  r8 r8  d8  r8 r8  |
  % 25
  d8  r8 r8  d8  r8 r8  |
  % 26
  g,8  r8 r8  g8  r8 r8  |
  % 27
  a8  r8 r8  a,8  r8 r8  |
  % 28
  d8  r8 r8  d8  r8 r8  |
  % 29
  d8  r8 r8  b,8  r8 r8  |
  % 30
  e8  r8 r8  a,8  r8 r8  |
  % 31
  fis8  r8  d8  e8  r8  e8  |
  % 32
  a,8  r8 r8  a8  r8 r8  |
  % 33
  d8  r8 r8  e8  r8 r8  |
  % 34
  a,8  r8 r8  a,8  r8 r8  |
  % 35
  fis8  r8 r8  b,8  r8 r8  |
  % 36
  e8  r8 r8  a,8  r8 r8  |
  % 37
  d8  r8 r8  d8  r8 r8  |
  % 38
  g,8  r8 r8  g8  r8 r8  |
  % 39
  fis8  r8 r8  g8  r8 r8  |
  % 40
  fis8  r8 r8  fis8  r8 r8  |
  % 41
  g8  r8  gis8  a8  r8  a,8  |
  % 42
  d8  r8 r8  a8  r8 r8  |
  % 43
  d'8  r8 r8  a8  r8 r8  |
  % 44
  d8 r8 r8 r4 r8  \bar "|."
}

CelloStaff =  {
  \clef "bass"
  \key d\major
  \time 6/8
  \CelloNotes
}
