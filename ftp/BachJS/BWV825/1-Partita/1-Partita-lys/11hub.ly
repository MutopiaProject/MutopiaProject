% hub11.ly
% The first movement of the first Partita of J. S. Bach, set for Mutopia
% by Carl Bolstad on 7/14/2004.
% updated from lilypond version 2.2.5 to version 2.4.1 on 1/29/2005.

\version "2.7.40"

%*************************************
TopVoice =  \relative b' {
 \stemUp 
r16 bes[ bes32 \prall a bes16] c bes d bes es[ bes bes32 \prall a bes16] d bes es bes |
f'[ bes, bes32 \prall a bes16] g' bes, a' bes, bes'[ a32 g f16 bes] c,32[ d es8 d32 c] |
d32[ c bes8 g32 a] bes[ c d8 c32 bes] c[ bes a8 f32 g] a[ bes c8 bes32 a] |
bes[ a g8 a32 bes] c[ d e f g16 bes,]~ bes8 a bes c |
% top meas 5:
d c16 bes c8 d es d16 e f8 g~ |
g f4 e8 f2~ |
f8 f d bes es g c4~ |
c8 f, bes4~ bes8 a16 g a fis g8 |
fis fis g a bes, g' a bes |
% top meas 10:
c, es d c bes32[ c d8 c32 bes] a[ bes c8 bes32 a] |
bes16[ d d32 c d16] bes'4~ bes8 a~ a16 g8 f16 |
e[ c c32 \prall b c16] d c e c f[ c c32 \prall b c16] e c f c |
g'32[ f e8 d32 c] bes'[ a g8 f32 e] c'[ e, f g f e f d] e8. \prall f16 |
f8. a,32 bes c[ d es8 d32 c] d[ c bes8 d32 es] f[ g aes8 g32 f] |
% top meas 15:
g[ f es8 d32 es] f[ g a bes c16 es,] f32[ es d8 c32 d] es[ f g a bes16 d,] |
es32[ d c8 d32 es] d[ c bes a bes a g f] d'4~ d8. c16 |
bes16 a g'8 f es d bes' a g |
f es d c d32[ c bes16 es32 d c16] bes8 a16. \prall bes32 |
bes16[ bes bes32 \prall a bes16] c bes d bes es[ bes bes32 \prall a bes16] d bes es bes |
% top meas 20:
f'[ bes, bes32 \prall a bes16] g' bes, a' bes, bes'[ a32 g f16 bes] g bes f a |
bes1 \fermata \bar "|."
}

%************************************
MiddleVoice =  \relative d' {
 \stemDown 
d4 es8 f g4 f8 es |
d4 es8 c \stemUp d \change Staff = down bes4 a8 |
bes \stemDown \change Staff = up d g4~ g8 c, f4~ |
f8 e16 d e8 c8 f2~ |
% middle meas 5:
f2 a8 bes4. |
a4 bes8 g bes\rest c a f |
bes2~ bes4 d8\rest es |
d4 d8\rest d8 c4~ c8 bes |
a16[ d, d32 \prall cis d16] e d fis d g[ d d32 \prall cis d16] fis d g d |
% middle meas 10:
a'8 c bes a~ a g~ g fis |
g g \rest d'16 \rest d[ d32 c d16] g16 c,8 c16 d8 bes~ |
bes e, f g a f g a |
bes e, f g a4 g |
\stemDown a8 \stemUp \change Staff = down c, a f \change Staff = up \stemDown bes2~ |
% middle meas 15:
bes8 g c4~ c8 f, bes4~ |
bes8 a16 g a4 es'32 \rest f[ g a bes16 f] g d es8~ |
es es' d c bes d c bes |
a c bes4~ bes8 c, d es |
d d es f f \rest es d c |
% middle meas 20:
bes f' es es d d' <c es> <c es> |
<bes d f>1 |
} 

%************************************
BottomVoice =  \relative d' {
\stemDown bes1~ |
bes2~ bes8 d, es f |
bes, r r bes' a4 r8 d |
g,4 r8 c r16 f,[ f32 \prall e f16] g f a f |

% bottom meas 5:
bes[ f f32 \prall e f16] a f bes f c'[ f, f32 \prall e f16] d' f, e' f, |
f'[ e32 d c16 f] g,32[ a bes8 a32 g] a[ g f8 a32 bes] c[ d es8 d32 c] |
d[ c bes8 d32 es] \clef "G" f[ g aes8 g32 f] g[ f es8 d32 es] f[ g a bes c16 es,] |
f32[ es d8 c32 d] es[ f g a bes16 \change Staff = down d,] es32[ d c16~ c32 bes a bes] c[ d es d c bes a g] |
d'16 r r8 r4 \clef "bass" d,8 r r4 |

% bottom meas 10:
r16 d d32 cis d16 e d fis d g8 bes, c d |
g, g'4 f8 e f bes, g |
c r r4 c8 r r4 |
r8 c' d e f bes, c c, |
f, r r4 r8 f' d bes |

% bottom meas 15:
es4 r8 es d4 r8 g |
c,4 r8 f bes, d es c |
f16 f,[ f32 \prall e f16] g f a f bes[ f f32 \prall e f16] a f bes f 
c'[ f, f32 \prall e f16] d' f, e' f, f'8 g16 es f8 f, |
% add tenor line from here to the end:
<<
  { r8 bes'4 aes8 <g bes> <g bes> <f aes> <es g> |
    <d f> <aes' d>~ <g d'> <ges c> <f bes> d es f |
    bes,1 }
  \\
  { bes8 r r4 bes8 r r4 |
    bes8 r r4 r8 d, es f |
    bes,1 }
>>
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
      \time 4/4
        <<
          { \TopVoice }
        \\
          { \MiddleVoice }
        >>
     }
    }
    \context Staff = "down" {
     \set Staff.midiInstrument = #"harpsichord"
      {
      \key bes \major
      \time 4/4
      \clef bass
        \BottomVoice
     }
    }
  >>
  \layout { }
  \header { piece = "1. Praeludium" }
  \midi { \tempo 8 = 80 }
}
