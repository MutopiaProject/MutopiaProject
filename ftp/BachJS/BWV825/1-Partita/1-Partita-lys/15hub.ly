\version "2.7.40"
% The fifth movement of the first Partita of J. S. Bach, set for Mutopia
% by Carl Bolstad on 1/29/2005.

% Some function definitions:
cu = {\change Staff = "up" \stemDown}
cd = {\change Staff = "down" \stemNeutral}

% Voices for the 2nd half of the 2nd
% Minuet:

soprano = {
f'2 c4
d es r
fis, d' c
bes a8 bes g4
es'2 d4
g f r
\grace bes,8 a2 bes4
bes2.
}

alto = {
a4 bes c
bes a g fis d a'
g fis g
bes2 aes4
g a bes
f2 f4
<f d>2.
}

tenor = {
r4 c' d
\once \override Stem #'extra-offset = #'(0.1 . 0)
es f2
es2 f4~
f c es~
es c d
\once \override Stem #'extra-offset = #'(0.15 . 0)
es f2
es f4
f2.
% After the repeat barline:
c2 f4~
f c2~
c4 bes8 a g fis
g4 d g,
r a' bes~
bes c d~
d c es
bes2.
}

baritone = {
s2.
\once \override Stem #'transparent = ##t
\once \override NoteHead #'extra-offset = #'(-0.2 . 0)
es2 d4~
d c bes
f2 r4
s2.
\once \override Stem #'transparent = ##t
\once \override NoteHead #'extra-offset = #'(-0.2 . 0)
es'2 d4~
d c bes
f2.
%% Double bar %%%%%%
%% Let's put the rest of the notes
%% in the bass part.
}

bass = {
\stemDown
\tieDown bes2.~
bes
s
s
bes2.~ \tieDown
bes
s
s
%%%% Double Bar %%%%
f4 g a
bes2 bes4
a fis d
\tieUp g2.~
g2 f4
es2 d4
f2.
bes,2.
}
%************************************
%************************************
%*************************************
TopVoice =  \relative d'' {
\repeat volta 2 {
d8^\markup { "" \raise #1 { Menuet 1. } } bes a bes f bes |
d bes es bes f' bes,
c a g a f a
c f, d' f, es' f,
%************************************
% TopVoice measure 5
%************************************
d' aes es' g, f' f,
\stemUp g' f a es bes' d,
c es d c d bes
\stemNeutral c a g a f es'
d bes a bes f bes
%************************************
% TopVoice measure 10
%************************************
d bes es bes f' bes,
c a g a f a
c f, d' f, es' f,
d' c e bes f' a,
g bes f bes e, bes'
%************************************
% TopVoice measure 15
%************************************
a c a f c e
} % end of repeated 1st section;
  % here are the two endings:
\alternative {
    { f4. g16 a bes a bes c }
    { f,2. }
  }
% Next repeated section:
\repeat volta 2 {
a'8 f e f c f
a f bes f a f
g es d es c es
%************************************
% TopVoice measure 20
%************************************
f d f c f b,
c es fis c a' c,
a c fis, c' d, c'
bes es d bes c a
g4. a16 bes a g f es
%************************************
% TopVoice measure 25
%************************************
d8 bes' a bes f' bes,
aes' bes, g' bes, f' bes,
es, bes' a bes g' bes,
es, bes' f bes g bes
c bes d aes es' g,
%************************************
% TopVoice measure 30
%************************************
\stemUp f' es g d a' c,
bes' a g f es d
\stemNeutral
c bes a g f es
d f' g f c f
b, f' a, f' g, f'
c, es' f es bes es
a, es' g, es' f, es'
d f d bes f a
}
\alternative {
  { bes4~ bes16 c d es f e f g }
  { bes,2. \bar "|." }
  }
%%%%%%%%%%%%%%%%
% Menuet #2:
%%%%%%%%%%%%%%%%
\time 3/4
bes2^\markup { "" \raise #1 { \large { Menuet 2. } } } f4
g aes r
<<
  { g es' d | c }
  \\
  { g a bes | a }
>>
bes8 a g f
<< { bes2 } \\ { f } >> f4
g aes r
<<
  { g es' d | \grace d8 c2. }
  \\
  { g4 a bes | a2. }
>>
\bar ":|:"
<< { \soprano } \\ { \alto } >>
\bar ":|"
}
%************************************
%************************************
%************************************
% There's no middle voice in this one.
%MiddleVoice =  \relative d' {
% \stemDown 
%} 

%************************************
%************************************
%************************************
% Bass part, left hand:
BottomVoice = \relative {
\repeat volta 2 {
bes4 f d
bes c d
a c f
a bes8 a g f
%************************************
% BottomVoice measure 5
%************************************
bes4 c d
\cu es f g
a bes \cd bes,
f' f, a
bes f d
%************************************
% BottomVoice measure 10
%************************************
bes c d
a c f
a bes8 a g f
bes4 c d
e, d c
%************************************
% BottomVoice measure 15
%************************************
f bes, c
} % end of repeated section;
  % here are the endings:
\alternative {
  { f,8 a c f g a }
  { f4 c a }
 }
% Next repeated section:
\repeat volta 2 {
f c' f
es d bes
es g aes
d, g g,
c a' g
fis d fis
g bes, d
g,8 a bes c d es
f4 es d
f es d
g f es
g f es
aes bes c
\cu d es f
g a bes
f \cd f, a
d d, f
g a b
c c, es
f g a
bes es, f
}
\alternative {
  { bes,8 d c bes a g }
  { bes2. }
 }
%%%%%%%%%%%%%%%%%%%
% Second Minuet:
%%%%%%%%%%%%%%%%%%%
<< { \tenor } \\ { \baritone } \\ { \bass } >>
}
%************************************
%************************************
% The score, to put it all together:
%************************************
%************************************

\score {
  \context PianoStaff <<
    \context Staff = "up" {
     \set Staff.midiInstrument = #"harpsichord"
      {
      \key bes \major
      \time 3/4
%        <<
          { \TopVoice }
%        \\
%          { \MiddleVoice }
%        >>
     }
    }
    \context Staff = "down" {
     \set Staff.midiInstrument = #"harpsichord"
      {
      \key bes \major
      \time 3/4
      \clef bass
        \BottomVoice
     }
    }
  >>
  \layout { }
  \header { piece = "5. Menuets" }
  \midi { \tempo 4 = 107 }
}
