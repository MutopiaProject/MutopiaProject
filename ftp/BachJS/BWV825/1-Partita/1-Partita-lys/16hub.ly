% The sixth and last movement of the first Partita of J. S. Bach, set for Mutopia
% by Carl Bolstad on 2/5/2005.

\version "2.7.40"

% The following file is so I can write things
% like fs for f# and bf for b-flat.
\include "english.ly"

% Some function definitions:
cu = {\change Staff = "up" }
cd = {\change Staff = "down" }

%************************************
%************************************
%*************************************
TopVoice =  \relative {
\stemUp f'4 \cd bf,, bf, \cu f'''
g af, g g'
c, gf f c'
d \cd bf, bf, \cu d''
% T meas. 5
g a, g \prall f
e g c, e'
f g, f \prall e
d f bf, d'
e df, c e'
% T meas. 10
f df, c f'
g df, c g''
af df,, c af''
b, \cd af, g \cu b'
c \cd df,, c \cu bf''
% T meas. 15
af b, c \cd c,

% The first beat stands by itself because it's the only
% part that's on the lower staff
<<
  { f,4 } % "lower" voice goes in voice one, for stems up
  \\
  { bf'8*2/3 \rest a c }
>>

 \cu 
 <<
   { f4 f'2 }
   \\
   { r8*2/3 a, c s2 }
 >>
\bar ":|:"

a'4 ef, \cd f, \cu a''
bf af, bf, bf''
g bf, a g'
% T meas. 20
fs g, a fs'
g ef, d g'
a ef, d a''
bf ef,, d bf''
c ef,, d c''
% T meas. 25
bf fs g cs,
d g, fs ef
d cs d \cd d,
g, d' g bf
\cu d f bf d
% T meas. 30
ef, bf' g' d,
c f bf, e'
f f, f' f,
ef' f, ef' f,
d' f, d' f,
% T meas. 35
df' e, df' e,
c' ef, c' ef,
cf' d, cf' d,
bf' df, bf' df,
a' c, a' c,
% T meas. 40
g' bf, g' bf,
a' \cd gf, f \cu a'
bf \cd gf, f \cu bf'
c \cd gf, f \cu c''
df \cd gf,, f \cu df''
% T meas. 45
e \cd df,, c \cu e''
f \cd gf,,, f \cu ef'''
df \cd e,, f f,
bf \cu bf'' bf'2 \bar ":|"
}

%************************************
%************************************
%************************************
% Bass part, left hand:
BottomVoice = \relative {
\stemDown \cu c8*2/3 \rest d bf' c, \rest d bf' c, \rest d bf' c, \rest d bf' 
<ef, bf'>1_\markup { \italic simile }
<ef a>
<f bf>
% B meas. 5
<bf d>
<bf c>
<a c>
<a bf>
<g bf>
% B meas. 10
<f af>
<e g>
<e f>
<d f>
<e g>
% B meas. 15
<e f>
s
%s8*2/3 \cd 
%  \override NoteHead #'extra-offset = #'(0.5 . 0)
%  \override Stem #'extra-offset = #'(0.5 . 0)
%  \override Beam #'extra-offset = #'(0.5 . 0)

% Let's try putting both parts together as different voices
% on the same staff: (see the top part).
%  \revert NoteHead #'extra-offset
%  \revert Stem #'extra-offset
%  \revert Beam #'extra-offset

% End of change - CB 8/13/2006

% B meas. 17, after the double bar:
<f c'>1
<f d'>
<ef d'>
% B meas. 20
<d c'>4 <e c'> <fs c'> <a c>
<g bf>1
<fs a>
<fs g>
<fs a>
% B meas. 25
<g bf>4 <a c> <bf d> <g e'>
<a fs'> <bf g'> <c g'> <c fs>
<b g'> <bf e> <a fs'> <c fs>
<bf g'>1
<af f'>
<g ef'>
<a ef'>2 <bf d>4 <bf df>
<a c>1
<a c>1
<af b>
<g bf>
<gf a>
<f af>
<e g>
<ef gf>
% B meas. 40
<df ef>
<c ef>
<bf df>
<a c>
<a bf>
<g bf>
<a c>
<a bf>
r8*2/3 d f f \rest
  \override NoteHead #'extra-offset = #'(0.5 . 0)
  \override Stem #'extra-offset = #'(0.5 . 0)
  \override Beam #'extra-offset = #'(0.5 . 0)
d' f s2
  \revert NoteHead #'extra-offset
  \revert Stem #'extra-offset
  \revert Beam #'extra-offset
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
      \key bf \major
      \time 4/4
%        <<
          { \TopVoice }
%        \\
%          { \MiddleVoice }
%        >>
     }
    }
    \context Staff = "down" {
     \set Staff.midiInstrument = #"harpsichord"
      \key bf \major
      \time 4/4
      \clef bass
        \BottomVoice
    }
  >>
  \layout { }
  \header { piece = "6. Giga" }
  \midi { \tempo 4 = 107 }
}
