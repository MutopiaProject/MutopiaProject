\version "2.11.39"
\include "clef-key.ily"
%#(ly:set-option 'ancient-style #t)

{ \staffStart
  \clef "dessus"
  \keys g \major c'1 
}

{ \staffStart
  \set Staff.instrumentName = "toto"
  \clef "petrucci-g/treble"
  \keys g \major
  c'1 }
{ \staffStart
  \clef "petrucci-c1/treble"
  \oldKey g \major
  \newKey d \major
  c'1 }
{ \staffStart
  \clef "petrucci-c2/treble"
  \keys g \major c'1 }
{ \staffStart
  \clef "petrucci-c3/treble"
  \keys d \major c'1 }
{ \staffStart
  \clef "petrucci-c3/G_8"
  \keys a \major c'1 }
{ \staffStart
  \clef "petrucci-c4/G_8"
  \keys g \major c'1 }
{ \staffStart
  \clef "petrucci-f/bass"
  \keys g \major c'1 }
{ \staffStart
  \clef "petrucci-c5/bass"
  \keys g \major c'1 }

\layout {
  indent = 4\cm
}