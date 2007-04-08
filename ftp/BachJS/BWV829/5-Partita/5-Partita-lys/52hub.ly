%{ Bach Partita #5, 2nd movement, Allemande.
Set for Mutopia by Carl M. Bolstad 
starting on March 28, 2004
%}

% some headers, like the LilyPond version this was made with:

\version "2.7.40"

% The following file is so I can write things
% like fs for f# and bf for b-flat.
\include "english.ly"


%*****************************************************************************
% Then, the note constants:
%*****************************************************************************

% Right Hand notes:

RightHandNotes = {
  {
  \relative g'' {
  \partial 16*1 g16
  <g d b>8.\arpeggio fs32 e \times 2/3 { d16[ c b] } \times 2/3 { c[ b a] } 
        \times 2/3 { b[ g a] } \times 2/3 { b[ a g] } d'8.[ d16]\mordent

 \override TupletBracket #'number-visibility % number-visibility is deprecated. Tune the TupletNumber instead
 = ##f  % to turn off all those 3's!

  \times 2/3 { g16[ a b] } \times 2/3 { d,[ e f] } \times 2/3 { e[ a b] } \times 2/3 { c[ b a] } 
        g8( fs16.)\prall g32 \appoggiatura g16 a4~
  \times 2/3 { a16[ c, b] } \times 2/3 { c[ b a] } b8[ a']~ \times 2/3 { a16[ g a] } \times 2/3 { b[ a g] } 
        \times 2/3 { fs[ e fs] } \times 2/3 { g[ fs e] }
  \times 2/3 { d[ cs d] } \times 2/3 { e[ d cs] } b16( a) g'8~ \times 2/3 { g16[ fs g] } 
        \times 2/3 { a[ g fs] } \times 2/3 { e[ d e] } \times 2/3 { fs[ e d] }
% RH meas 5:
  \times 2/3 { c[ b c] } \times 2/3 { d[ c b] } a16 g f'8~ \times 2/3 { f16[ e d] } \times 2/3 { e[ d cs] }
        \times 2/3 { d[ cs b] } gs'16.[( a32])
  d,8 cs~\prall  \times 2/3 { cs16[ d e] } 
% starting here (middle of measure 6), two voices in the right hand:
           << {

              \override TupletBracket #'number-visibility % number-visibility is deprecated. Tune the TupletNumber instead
 = ##f  % to turn off all those 3's!

                s8 e4~ e16.[ a,32 d16. c32]
                b4~ b16.[ g'32 fs16. g32] a,4~ a16.[ d32 e16. fs32]
                g,4~ g16.[ b32 a16. c32] b2~
                \times 2/3 { b16[ cs d] }  \times 2/3 { e[ d cs] } \times 2/3 { d[ e fs] } 
                  \times 2/3 { g[ fs e] } a s % This is where the top voice ends.
              }
           \\  % This shows where the other voice starts.
              { 

              \override TupletBracket #'number-visibility % number-visibility is deprecated. Tune the TupletNumber instead
 = ##f  % to turn off all those 3's!

                g,16.[ g32~] g16.[ fs32 e16. a32] fs4~
                fs16.[ e32 fs16. a32] g4~ g16.[ fs32 e16. g32] fs4~
                \times 2/3 { fs16[ fs e] }  \times 2/3 { fs[ e ds] } e4~ \times 2/3 { e16[ ds e] } 
                    \times 2/3 { fs[ e ds] } \times 2/3 { e[ fs g] } \times 2/3 { a[ g fs] }
                g2~ \times 2/3 { g16[ a b] }
              }
           >> % end of the two-voice section, middle of measure 9.
 \times 2/3 { cs16[ cs d] } \times 2/3 { e[ e fs] } \times 2/3 { g[ g a] }
% RH meas 10:
  bf16. gs32 a8~ a16. cs32 
    % here we have two voices in the upper staff again:
      << 
         { d16. fs,32 gs16.\mordent a32 cs,16. d32 fs8\( e16\)\prall d } 
        \\  

              \override TupletBracket #'number-visibility % number-visibility is deprecated. Tune the TupletNumber instead
 = ##f  % to turn off all those 3's!

         { \times 2/3 { b,16[ cs d] } \times 2/3 { e[ d cs] } \times 2/3 { fs16[ e d] } a'8[ a,] }
      >>
% RH meas 11, back to a single voice again:
  \times 2/3 { d'16[ cs b] } \times 2/3 { c[ b a] } \times 2/3 { b[ a g] } \times 2/3 { a[ g fs] } \times 2/3 { g[ fs e] }
       fs16.[ d'32] e,16.[ g32 d'16. cs32]
% RH meas 12:
  d8. a32 g \times 2/3 { <a fs d>16[ fs e] } \times 2/3 { <fs d a>[ d cs] } <d a fs>4.. \bar ":|:" a'16
% RH meas 13:
  <a fs d>8. b32 cs \times 2/3 { d16[ e fs] } \times 2/3 { e[ fs g] } \times 2/3 { fs[ e d] } a'16.[ c,32] b16.[ g'32 c,16. fs32]
% RH meas 14:
  \times 2/3 { d16[ g fs] } \times 2/3 { g[ a b] } \times 2/3 { e,[ c' b] } \times 2/3 { a[ g fs] } e8[( ds])\prall b'4~\mordent
% RH meas 15:
  \times 2/3 { b16[ f e] } \times 2/3 { f[ e d] } e16.[ b'32 d,8]~ \times 2/3 { d16[ e, fs] } \times 2/3 { gs[ a b] } 
     \times 2/3 { c[ a b] } \times 2/3 { c[ d e] } 
% RH meas 16:
  \times 2/3 { fs[ c b] } \times 2/3 { c[ b a] } b16.[ fs'32 a,8]~ \times 2/3 { a16[ b, cs] } \times 2/3 { ds[ e fs] }
     \times 2/3 { g[ e fs] } \times 2/3 { g[ a b] }
% RH meas 17:
  \times 2/3 { c[ a gs] } \times 2/3 { a[ f e] } f16[ f'8 e16] \times 2/3 { ds16[ c b] } \times 2/3 { c[ a gs] } \times 2/3 { a[ b
     cs] } \times 2/3 { ds[ e fs] } 
% RH meas 18:
  \times 2/3 { e[ c b] } \times 2/3 { c[ a gs] } a16[ a'8 g16] \times 2/3 { fs[ c b] } \times 2/3 { c[ a gs] } \times 2/3 { a[ ds
     e] } \times 2/3 { fs[ g a] }
% RH meas 19:
  \times 2/3 { g[ e ds] } \times 2/3 { e[ c b] } c16[ c'8 b16] 
% in two voices here:
    <<
              \override TupletBracket #'number-visibility % number-visibility is deprecated. Tune the TupletNumber instead
 = ##f  % to turn off all those 3's!
      { as4 \times 2/3 { r16 a[ b] } \times 2/3 { c[ b a] } 
          % meas 20:
             \times 2/3 { b[ a g] } \times 2/3 { fs[ g e~] } <e g>8 <ds fs>
      }
    \\
      { 
              \override TupletBracket #'number-visibility % number-visibility is deprecated. Tune the TupletNumber instead
 = ##f  % to turn off all those 3's!

          \times 2/3 { r16 e[ fs] } \times 2/3 { g[ fs e] } ds8 r
          % meas 20:
             r4 r16 b8 a16
      }
    >>
  <g b e>4~\arpeggio \times 2/3 { e'16[ b a] } \times 2/3 { g[ fs g] }
% RH meas 21:
  cs16.[ g32 d'16. g,32] e'16.[ g,32 fs16. e32] fs16.[ d32 g16. d32] a'16. d,32 \times 2/3 { cs'16[ b a] }
% RH meas 22:
  b16.[ f32 c'16. f,32] d'16.[ f,32 e16. d32] e8.\mordent e16 c'4~
% RH meas 23:
  \times 2/3 { c16[ e, d] } \times 2/3 { e[ d c] } d8[ c']~ \times 2/3 { c16[ b c] } \times 2/3 { d[ c b] } \times 2/3 { a[ g a] } 
     \times 2/3 { b[ a g] } 
% RH meas 24:
  \times 2/3 { f[ e f] } \times 2/3 { g[ f e] } d c bf'8~ \times 2/3 { bf16[ a g] } \times 2/3 { a[ g fs] } \times 2/3 { g[ fs e] } 
     cs'16.[ d32]
% RH meas 25:
  g,32 fs e fs g fs e16 d4~ \times 2/3 { d16[ d e] } \times 2/3 { fs[ fs g] } \times 2/3 { a[ a b] } \times 2/3 { c[ c d] } 
% RH meas 26:
  ef16. cs32 d8[~ d16. fs32 g16. b,32] cs16.[ d32 fs,16. g32] b8( a16.)\prall g32
% RH meas 27:
  g16.[ e32 d16. g32] c,16.[ g'32 b,16. g'32] a,16.[ fs'32] \times 2/3 { g16[ fs e] } \appoggiatura g16 fs8.[\prall g16]
% RH meas 28, two voices:
  <<
    { 
              \override TupletBracket #'number-visibility % number-visibility is deprecated. Tune the TupletNumber instead
 = ##f  % to turn off all those 3's!
       g8. b32 a \times 2/3 { b16[ d c] } \times 2/3 { d[ g fs] } g4. \fermata }
   \\
              \override TupletBracket #'number-visibility % number-visibility is deprecated. Tune the TupletNumber instead
 = ##f  % to turn off all those 3's!
    { s8 <b,, d>16 s <d g> s <g b> s <b d>4. }
  >>
  \bar ":|"  % this is the end of the piece.
  }
 }
}

% Left Hand notes:

LeftHandNotes = {
  {
  \relative g {
  \partial 16*1 r16

 \override TupletBracket #'number-visibility % number-visibility is deprecated. Tune the TupletNumber instead
 = ##t  % turn on the 3's for the 1st measure

  << { g4. fs8 } \\ { r8 g, b d } >> g8. fs32 e \times 2/3 { d16[ c b] } \times 2/3 { c[ b a] } 

 \override TupletBracket #'number-visibility % number-visibility is deprecated. Tune the TupletNumber instead
 = ##f  % turn the 3's back off for the rest of the piece.

  b8 g c a \times 2/3 { d16[ a' b] } \times 2/3 { c[ b a] } \times 2/3 { g[ fs g] } \times 2/3 { a[ g fs] }
  \appoggiatura e'16 ds4~ \times 2/3 { ds16[ ds cs] } \times 2/3 { ds[ cs b] } e8 e, g e
  a a,~ \times 2/3 { a16[ cs b] } \times 2/3 { cs[ b a] } d8 d, fs d
% LH meas 5:
  g g'~ \times 2/3 { g16[ g a] } \times 2/3 { b[ b cs] } d8 gs, b e,
  <a, e' a>8.\arpeggio g'32 fs \times 2/3 { e16[ d cs] } \times 2/3 { d[ cs b] } \times 2/3 { cs[ a b] } \times 2/3 { cs[ b a] }
      \times 2/3 { d[ fs e] } \times 2/3 { d[ e fs] }
% LH meas 7:
  \times 2/3 { g[ a b] } \times 2/3 { ds,[ e fs] } \times 2/3 { e[ b' cs] } \times 2/3 { d[ cs b] } 
      \times 2/3 { cs[ a b] } \times 2/3 { cs[ b a] } \times 2/3 { d[ cs b] } \times 2/3 { a[ b c] }
% LH meas 8:
  b4~ \times 2/3 { b16[ a g] } \times 2/3 { fs[ g a] } g4~ \times 2/3 { g16[ fs e] } \times 2/3 { ds[ e fs] }
% LH meas 9:
  e4~ \times 2/3 { e16[ d cs] } \times 2/3 { b[ cs d] } cs8 a e cs
% LH meas 10:
  \times 2/3 { a16[ a' b] } \times 2/3 { cs[ d e] } \times 2/3 { fs[ g a] } s2 s8
% LH meas 11, two voices:
  <<
    { b16. d32 a16. d32 g,16. d'32 fs,16. d'32 e,8[ a]~ a[ g~] }
    \\
    { b8 fs g b, cs d a4 }
  >>
% LH meas 12, still two voices for a bit:
  <<
    { g'16 fs32 e fs8 }
   \\
    { d4 }
  >>
  r4 \times 2/3 { r16 d[ cs] } \times 2/3 { d[ a fs] } d8. r16
% LH meas 13, two voices again:
  <<
    { d'4. cs8 }
    \\
    { r8 d, fs a }
  >>
  d8. e32 fs \times 2/3 { g16[ a b] } \times 2/3 { a[ b c] } 
% LH meas 14:
  b8 g c fs, \times 2/3 { b16[ fs g] } \times 2/3 { a[ g fs] } \times 2/3 { e[ ds e] } \times 2/3 { fs[ e ds] }
% LH meas 15:
  gs4~ \times 2/3 { gs16[ e fs] } \times 2/3 { gs[ fs e] } a8 e a, a'
% LH meas 16:
  \appoggiatura e16 ds4~ \times 2/3 { ds16[ b cs] } \times 2/3 { ds[ cs b] } e8 b e, e'
% LH meas 17:
  a, a, \times 2/3 { r16 a''[ g] } \times 2/3 { a[ g fs] } b8 fs ds b 
% LH meas 18:
  c c, \times 2/3 { r16 c''[ b] } \times 2/3 { c[ b a] } ds8 a fs ds
% LH meas 19:
  e e, \times 2/3 { r16 e''[ d] } \times 2/3 { e[ d cs] } g'8 cs, fs fs,
% LH meas 20:
  g a b b, \times 2/3 { e16[ b a] } \times 2/3 { g[ a b] } e,16 g b e
% LH meas 21:
  \times 2/3 { a,16[ b cs] } \times 2/3 { b[ cs d] } \times 2/3 { cs[ d e] } \times 2/3 { a,[ b cs] } 
     \times 2/3 { d[ e fs] } \times 2/3 { e[ fs g] } \times 2/3 { fs[ g a] } \times 2/3 { d,[ e fs] } 
% LH meas 22:
  \times 2/3 { g[ a b] } \times 2/3 { a[ b c] } \times 2/3 { b[ c d] } \times 2/3 { g,[ a b] } 
     \times 2/3 { c[ b a] } \times 2/3 { gs[ a b] } \times 2/3 { a[ gs fs] } \times 2/3 { e[ fs gs] } 
% LH meas 23:
  fs4~ \times 2/3 { fs16[ fs e] } \times 2/3 { fs[ e d] } g8 g, b g
% LH meas 24:
  c c,~ \times 2/3 { c16[ c' d] } \times 2/3 { e[ e fs] } g8 cs, e a,
% LH meas 25:
  d, d'~ \times 2/3 { d16[ c b] } \times 2/3 { a[ b c] } b,8 b'' a g
% LH meas 26:
  \times 2/3 { fs16[ d, e] } \times 2/3 { fs[ g a] } \times 2/3 { b[ c d] } \times 2/3 { e[ fs g] } \times 2/3 { a[ g fs] }
     \times 2/3 { b[ a g] } d'8[ d,]
% LH meas 27:
  \times 2/3 { e16[ b g] } \times 2/3 { e[ g b] } \times 2/3 { e[ d c] } \times 2/3 { d[ c b] } \times 2/3 { c[ b a] } 
     \times 2/3 { b[ a g] } d'8[ d,]
% LH meas 28:
  g r r4 \times 2/3 { r16 g[ fs] } \times 2/3 { g[ d b] } g8 _\fermata
  }
 }
}

%**********************************************************************
%**********************************************************************
\score {
  {
  \context PianoStaff 
  << \context Staff = "up" {
       \key g \major
       \time 4/4
       \set Staff.midiInstrument = #"harpsichord"
 %      \autochange  %This is to make the right hand change staffs when
                         %it goes too low.
       \context Voice
       \RightHandNotes   %The actual notes, entered above.
     } % close off the "up" or right-hand staff.

     \context Staff = "down" {
       \key g \major
       \time 4/4        %notice that I'm not letting the L hand change staves.
       \clef bass
       \set Staff.midiInstrument = #"harpsichord"
       \context Voice
       \LeftHandNotes   %The actual notes, entered above.
     } % close off the "down" or Left-hand staff.
  >>
  }
  \header {
    piece = "2. Allemande"
  }
 \midi { \tempo 8=75 }
 \layout { }
}
