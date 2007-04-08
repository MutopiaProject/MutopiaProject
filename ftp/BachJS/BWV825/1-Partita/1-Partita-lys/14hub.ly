\version "2.7.40"
% The fourth movement of the first Partita of J. S. Bach, set for Mutopia
% by Carl Bolstad on 10/15/2004.

% Some function definitions:
cu = {\change Staff = "up" \stemDown}
cd = {\change Staff = "down" \stemNeutral}

%************************************
%************************************
%*************************************
TopVoice =  \relative b' {
<<
  { d8. d16 d8~ d32 c bes a }
\\
  { <bes f>4 <bes f>8 r }
>>
bes16 d f g, |
<<
  { aes8. \mordent aes16 aes8~ aes32 bes aes g }
\\
  { f4 <f d> }
>>
aes16 d f aes, |
g es'32 d c d es16 f, d' a bes es, a32 bes c16 es, |
es8. \prall d16 d8~ d32 f es d es f g a bes16 g |

%************************************
% TopVoice measure 5
%************************************
f
<<
  { e g c <c g e>8~ c32 d es d }
\\
  { \stemDown e,8 }
\\
  { \stemDown s16 g8 }
>>
\stemNeutral

c16 bes a32 bes g16 |
g
<<
  { fis a c32 es es8. d32 c }
\\
  { \stemDown fis,8 s16 <fis c'>8 }
\\
  { \stemDown s16 a8 }
\\
  { \stemDown s8 c8 }
>>
\stemNeutral

d32 c bes16 c32 bes a16 |
bes16 \times 2/3 {a32 g fis} g16 a bes g32 a bes c d16
     d e32 f g f e f |
g c, bes a bes16 g' << { \stemDown <c, bes g>8 } \\ { \stemUp g'8[~ g32 f e d] } >>
     \stemNeutral c16 bes bes \prall a |
a c,32 e f16 a a f32 g a16 c c a32 bes c16 f |

%************************************
% TopVoice measure 10
%************************************
f a32 g f e d16 c f32 e d c bes16 a c32 bes a g f16 |
d'32 c bes a bes16 g f \times 2/3 { g32 f e } f32 d bes'16 e,8. \prall f16 |
f4 <c f>2 \bar ":|:"
<< { c'8. c16 c8~ c32 d c bes }
   \\
   { <f a>4 <f a>8 s8 }
>>
c'32 bes a bes a g a64 g f32 |
<< { f'8. f16 f8~ f32 g f es f es d es64 d c d c bes c32 a }
   \\
   { s4 <a c>8 r s4 }
>>

%************************************
% TopVoice measure 15
%************************************

<< { bes16 f32 a bes16 d }
   \\
   { s16 f,8 \stemDown }
   \\
   { s16 s32 \stemDown a8 }
   \\
   { s16 s16 bes8 \stemDown }
>>
\stemNeutral
<<
   { es4~ es16 c32 d es d c16 |
     d8. d16 d8~ d32 c bes a }
   \\
   { r16 g32 a bes a g16 a4 |
     r32 c bes a bes8 <f bes>8 s8 }
>>
bes32 f bes c d es f g |
aes g f es d es f16 b, d f aes 
  \once \override Script #'extra-offset = #'(0 . 0.5) g8~ \prall g32 f es d |
es d c bes aes bes c16 f, aes c es d8. \prall c32 b |
c16 es, es32 \prall d es16 a fis fis32 \prall e fis16 es' b b32 \prall a b16 |

%************************************
% TopVoice measure 20
%************************************
<<
   { c8. c16 c8~ c32 g a bes }
   \\
   { s4 <c, es g>8 s8 }
>>
c'32 d c bes c16 d |
 \once \override Script #'extra-offset = #'(0 . 1) % This is to move \upprall up a little.
es2.~ \upprall |
es2.~
es16 d32 c d16 bes'~ bes a32 g a16 c,~ c bes32 a bes16 g' |
bes,8 a32 \prall g a c f,2~ |

%************************************
% TopVoice measure 25
%************************************
f16 bes,32 c d16 f f d32 es f16 aes aes4~ |
aes16 g32 aes bes16 des des bes32 c des16 g g bes, a bes~ |
bes32 d, es f g a bes c d16 es32 d c d es c bes16 g a \mordent bes |
bes4 <d, f bes>2 \bar ":|"

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
BottomVoice =  \relative {
<<
  {
   d4 bes r |
   d <bes d> r |
   es d c |
   c <f, bes> r |
   c' g r | % This is bottom part, measure 5
   c a r |
   d g, r |
   c e, r |
  }
  \\
  {
   bes' bes, r |
   bes' bes, r |
   bes' bes bes8 a |
   bes f bes,4 r |
   bes' bes, r | % This is bottom part, measure 5 also
   a' a, r |
   g' g, f' |
   e e, r |
  }
>>

f' f, e' |

%************************************
% BottomVoice measure 10
%************************************
d d, c' |
bes c c, |

<< { r8 r16 a'32 c <f a>2 | } \\ { f,2. | } >>

<<
{
 c''4 f, r |
 a es r |
}
\\
{
 f f, r |
 es' es, r |
}
>>

%************************************
% BottomVoice measure 15
%************************************
d' c f |
bes

<<
 {
  bes r |
  d d r |
  c c r |
  a g g~ |
  g c, r |
 }
 \\
 {
  bes r |
  b' g r |
  c, aes' r |
  fis g g, |
  c c, r |
 }
>>

%************************************
% BottomVoice measure 21
%************************************
c'16 d es g c g f es d c bes g' |
a, bes c f a c bes a g f f' a, |
bes8. g'16 e8. f16 g,8. e'16 |
f,4~ f8~ f32 g32 f es es8. \downprall d16 |

%************************************
% BottomVoice measure 25
%************************************
d4 d,8. d'16 c8. \upprall bes16 |
es4 
  \once \override Script #'extra-offset = #'(0.2 . 1)
  e4.. \upprall d32 e |
f4 es f |
<< { r8 r16 d32 f bes2 } \\ { bes,2. } >>
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
      % The following makes the beaming group on every quarter note,
      % instead of on each whole measure:
      #(override-auto-beam-setting '(end * * * *) 1 4 'Staff)
      #(override-auto-beam-setting '(end * * * *) 2 4 'Staff)
      #(override-auto-beam-setting '(end * * * *) 3 4 'Staff)
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
      % The following makes the beaming group on every quarter note,
      % instead of on each whole measure:
      #(override-auto-beam-setting '(end * * * *) 1 4 'Staff)
      #(override-auto-beam-setting '(end * * * *) 2 4 'Staff)
      #(override-auto-beam-setting '(end * * * *) 3 4 'Staff)
      \key bes \major
      \time 3/4
      \clef bass
        \BottomVoice
     }
    }
  >>
  \layout { }
  \header { piece = "4. Sarabande" }
  \midi { \tempo 4 = 107 }
}
