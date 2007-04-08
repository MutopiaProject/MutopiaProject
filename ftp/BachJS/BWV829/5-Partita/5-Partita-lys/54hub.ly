% Partita 5, 4th movement.

\version "2.7.40"

% The following file is so I can write things
% like fs for f# and bf for b-flat.
\include "english.ly"

%************************************************************************************
% Notes for the right hand, in two separate variables that I will put together later:

RHandTopNotes =  \relative d'' { \stemUp \partial 16*5 d16 \grace c b8. c16
% RHT meas 1:
\grace c8 d4 d( e8.) f16
\grace e8 d4.. e16 \grace d c4~
 c8. d16 b8.( a16) b8.( c16)
\grace b8 a4.. fs'16 d8. e16
% RHT meas 5:
 fs4 g( a8.) b16
 e,4.. fs16 g4~
 g8. fs32 e d8.( c16) a'8. c,16
 c4( b8.) d16 g8. a16
 b4 b4.. b16
% RHT meas 10:
\grace fs8 e4.. e16 a4~
 a8. b16 \grace a8 gs4.. \prall a16
 a4~ a16 g fs a g fs e g
 fs4 b,4.. e16
 a,4~ a16 a b cs d e fs32 e d16
% RHT meas 15:
 b'8. b,16 d4( cs8.) d16
 d4.. \bar ":|:" a'16 fs8.( g16) | a4 a( b8.) c16 | \grace b8 a4.. b16 \grace a8 g4~ | g8. fs16 a8. g16 fs8. \prall e16 |
% RHT meas 20:
 \grace e8 ds4.. fs16 fs8. \prall e16 | fs4 fs( g8.) a16 | \grace g8 fs4.. fs16 gs8. a16 | b8. c16 gs4.. gs16 |
% RHT meas 24:
 a4. r16 a e8. fs16 | g fs e g fs2~ | fs4. r16 ds e8. a16 | g8. fs16 e4( ds8.) e16 | e4~ e16 g fs a g fs e d |
% RHT meas 29:
 c8 b~ b16 d c b a'8. g16 | f8 e~ e16 g fs e c'8. a16 | b8. \times 2/3 { a32 g fs } e8.[ e16] fs8.[ g16] |
% RHT meas 32:
 fs g a fs d2~ | d2.~ | d4. r16 fs d8. e16 | fs4 \grace a8 gs4.. a16 | b f e d e d c b a gs fs e |
% RHT meas 37:
 d' c b d c2~ | c16 b a c b8. <e c>16 <d b>4~ | <d b>8. <a c>16 <g b>4( <fs a>8.) \prall g16 | <g d b>4.. \fermata
}


%*************************************************************************************

% Lower notes for the right hand:

RHandBottomNotes =  \relative d'' { \stemDown \partial 16*5 b16 \grace { \stemDown a } \stemDown g8. a16
% RHB meas 1:
\grace { \stemDown a8 } \stemDown b4 b( c8.) d16
\grace { \stemDown c8 } \stemDown b4.. c16 \grace { \stemDown b } \stemDown a4~
 a g8.( fs16) g8.( a16)
\grace { \stemDown g8 } \stemDown fs4.. a16 fs8. g16
% RHB meas 5:
 a4 b( c8.) d16
 d8. g,16 c4.. b16
 a4 b8. a16 g8.( fs16)
 fs4( g) r
 r8 r16 a'16 g8. fs16 e8. d16
% RHB meas 10:
 cs2~ cs8. cs16
 b2.
 r8 r16 e, a2~
 a4.. d,16 g4~
 g fs r
% RHB meas 15:
 r8 r16 g fs4( e) | fs4.. fs'16 d8.( e16) | fs4 fs( g8.) a16
 | \grace { \stemDown g8 } \stemDown fs4.. g16 \grace { \stemDown fs8 } \stemDown e4~ | e e, a |
% RHB meas 20:
 \grace { \stemDown c8 } \stemDown b4.. ds16 b8. cs16 | ds4 ds( e8.) fs16 | \grace { \stemDown e8 } \stemDown ds4..
   ds16 b8. c16 | d4~ d8. f16 e8. d16 | e2 r4 | r r8 r16 d a8. b16 | c b a c b2~ | b8. a16 g4( fs) | g r r |
% RHB meas 29:
 r r8 f e d | c4 c8 d e fs | g4~ g8. g16 a8. b16 | a4 r8 r16 
   <a fs>16 <fs d>8. <g e>16  | <a fs>4 <a fs>( <b g>8.) <c a>16 |  <b g>4( <a fs>8.)
% RHB middle of meas 34:
 a16 fs8. g16 | a4 b4.. c16 | d4 r r | r r8 r16 e, a8. g16 | fs4 g8. fs16 g4~ | g8. e16 d4 c | % put last chord all in the top part.
}


%*************************************************************************************
% LEFT hand notes, finally:

LHandNotes =  \relative g { \partial 16*5 r16 r4
% LH meas 1:
 r8 r16 g16 f8. e16 d8. c16
 \grace { a'16 s } gs8. e16 a4~ a8. g16
 fs8. d16 g4 c,
 d d, r
% LH meas 5:
 r8 r16 d'' c8. b16 a8. g16
 c4 a e'
 c d2
 g,4 g,8. g'16 b8. d16
 \clef treble g4 g, g'~
% LH meas 10:
 g8. b16 a8. g16 fs8. e16
 d4.. \clef bass b16 e8. d16
 cs4~ cs8. a16 b8. cs16
 d8. d,16 g8. fs16 e8. d16
 cs8. a16 d8. cs16 b8. a16
% LH maes 15:
 g8. e16 a4 a, | d4.. r16 r4 | r8 r16 d'' c8. b16 a8. g16 | ds'8. b16 e4.. d16 | c2. |
% LH meas 20:
 b4 b, r | \clef treble r8 r16 b'' a8. g16 fs8. e16 | b'4 b, r | r8 r16 f' e8. d16 c8. b16 | c4 \clef bass c, c' |
% LH meas 25:
 cs d d, | \clef treble d' ds16 fs g a g fs e ds | e8. a,16 b4 \clef bass b, | e e, r | r8 \clef treble f'' e d c b |
% LH meas 30:
 \clef bass c b4. a4 | g c cs | d d, r | r8 r16 d c8. b16 a8. g16 | d'4 d, r | r8 r16 e'' d8. c16 b8. a16 |
% LH meas 36:
 gs4 r r | r8 r16 e a8. g16 fs8. e16 | d8. g,16 g'4.. a16 | b8. c16 d4 d, | <g, g'>4.._\fermata \bar ":|"
}


%*************************************************************************************
%*************************************************************************************
% And here's the score to put it all together:
%*************************************************************************************
%*************************************************************************************

\score {
 
 \context PianoStaff
  <<
   \context Staff = "up" {
     \set Staff.midiInstrument = #"harpsichord"
     \key g \major
     \time 3/4
     << \RHandTopNotes \\ \RHandBottomNotes >>
   }
   \context Staff = "down" {
     \set Staff.midiInstrument = #"harpsichord"
     \key g \major
     \time 3/4
     \clef bass
     \LHandNotes
   }
 >>
 \header { piece = "4. Sarabande" } 
 \midi { \tempo 4=58 }
 \layout { }
}
