\version "2.7.40"
% The second movement of the first Partita of J. S. Bach, set for Mutopia
% by Carl Bolstad on 8/30/2004.
% Updated from version 2.2.5 to 2.4.1 on 1/29/2005.

% Some function definitions:
cu = {\change Staff = "up" }
cd = {\change Staff = "down" }

%*************************************
TopVoice =  \relative f'' {
\partial 16*1 f16 |
f d bes a bes d f, bes d, f bes, d f aes d f |
g='' es bes a bes es g, bes es, g bes, es g bes es g |
a='' es c bes c es a, c es, a c, es a c es a |
bes='' f d c d f bes, d f, bes d, f r g8 f16 |

% Top meas 5 %%%%%%%%%%%%%%%%%%%%%%%%%

r c' e, d e g c, e r a, c e d c c' d, |
es g c b c es a, c fis, a c es d c a' c, |
r c bes a bes d es f g c, bes a bes g' bes, f' |
bes, f' e d e g a bes c f, e d e c' e, bes' |
\stemUp
e,='' bes' a g f a e a d, a' d, c bes d a d |

% Top meas 10 %%%%%%%%%%%%%%%%%%%%%%%%%

g, a' g f e g d g c, g' c, bes a c g c |
f,=' g' f e d f c f bes, f' bes, a g bes f bes |
\stemNeutral
e,4 \prall r8 c f g16 a bes8 a16 \prall g |
a4 r16 c, f g a f b c d f, c' b |
\stemUp c4 \stemNeutral r8 g c d16 e f8 e16 \prall d |

% Top meas 15 %%%%%%%%%%%%%%%%%%%%%%%%%

e8 f16 g aes8 g16 \prall f g8 aes16 bes c8 bes16 \prall aes |
bes='' g e c bes g c e f c a f r g bes e |
<<
  {
   f8. es16 d8. d16 r d c8 r16 a bes8 |
   a f r16 f8 e16 f4..
  }
  \\
  {
   r16 bes a8 r16 a bes8 e,8. f16 g8. g16 |
   r e f b, c8 bes <a c>4..
  }
>>
\bar ":|:"

c'16 |
c='' a f e f a c, f a, c f, a c es a bes |

% Top meas 20 %%%%%%%%%%%%%%%%%%%%%%%%%

c a es d es a c, es a, c fis, a d fis a c |
<<
  {
   bes2~ bes16 bes a g a c fis, g |
  }
  \\
  {
   r16 a g fis g bes d, fis es2 |
  }
>>

<< { fis4 } \\ { r16 d c bes } >> c='16 es a, c fis, a d fis g d a' d, |
<< { bes'4 } \\ { r16 g f es } >> f='16 aes d, f b, d g b c g d' f, |
es=' g a b c es bes es aes, es' aes, g f aes es aes |

% Top meas 25 %%%%%%%%%%%%%%%%%%%%%%%%%

d, f g a bes d aes d g, d' g, f es g d g |
c,=' es f g aes c g c f, c' f, es d f c f |
b,4 r8 g c d16 es f8 es16 \prall d |
es='4 r16 g, c d es c fis g a c, g' fis |
g4 r8 d g a16 b c8 b16 \prall a |

% Top meas 30 %%%%%%%%%%%%%%%%%%%%%%%%%

b8 c16 d es8 d16 \prall c d8 es16 f g8 f16 \prall es |
f='' d b g f d g b c g es c r d f b |
c g es c es g c d es c a g a c f, c' |
d f bes, a bes d f g aes f d c d f bes, f' |
g='' bes es, d es g a bes c f, es d es f c es |

% Top meas 35 %%%%%%%%%%%%%%%%%%%%%%%%%

d aes g d e g bes g a es' d c d bes f a |
bes d f g aes f d bes r bes es g bes g e des |
\stemUp r c='' es a c a ges es d bes' g e f bes, a es' \stemNeutral |
d='' aes g c bes f es a <bes f d>4.. s16 \bar "|."
}

%************************************
MiddleVoice =  \relative d' {
 \stemDown 
} 

%************************************
BottomVoice =  \relative c {
\partial 16*1 s16 |
bes4 r r2 |
bes4 r r2 |
bes4 r r2 |
<< { bes4 r r2 | } \\ { s2. bes'= 8 a } >> |

%%%%%% Bottom measure 5 %%%%%%%%%%%%%%%%%%%%

<< { g4 r fis r | g r r2 }
  \\
   { bes,4 r a r | g r r2 }
>>
g8 g'4 f8 e e'4 d8 |
c c,4 bes8 a a'4 g8 |
f 
% Let's try switching staffs instead of clefs:
\cu \stemDown
%\clef "G" 
f'[ a c] bes 
%\clef "bass" 
\cd \stemNeutral bes,[ d f] |

%%%%%% Bottom measure 10 %%%%%%%%%%%%%%%%%%%%

e,= 
% \once \override Staff.Clef #'extra-offset = #'(-0.5 . 0)
%\clef "G"
% let's try this instead:
\cu \stemDown
 e'[ g bes] a
% \once \override Staff.Clef #'extra-offset = #'(-0.5 . 0)
% \clef "bass"
\cd \stemNeutral
 a,[ c e] |
d, 
%\clef "G" 
\cu \stemDown d'[ f a] g
% \once \override Staff.Clef #'extra-offset = #'(-0.5 . 0)
% \clef "bass"
\cd \stemNeutral
 g,[ bes d] |
c,16 c' bes a g f e d c a' g f e g c, e |
<< { c,8 c \rest } \\ { \change Staff = up e''16 \rest f e d } >> \change Staff = down c bes a g f e d c b g' g, f' |
<< { c,8 c \rest } \\ { \change Staff = up g'''16 \rest a g f } >> e d c bes \change Staff = down a c f e aes, d c b |

%%%%%% Bottom measure 15 %%%%%%%%%%%%%%%%%%%%

g bes des c f, c' bes aes e bes' aes g f e d c |
e'8 g c, bes a bes c c, |
<<
  {
   r16 d' c8 r16 c d8 r16 a bes8 r16 f g8 |
   r16 g aes8~ aes g f4..
  }
 \\
  { 
   f8. a16 bes8. a16 g8. f16 e8. e16 |
   f8. d16 c8 c, f4..
  }
>>
s16 |
f4 r r2 |

%%%%%% Bottom measure 20 %%%%%%%%%%%%%%%%%%%%

fis4 r r2 |
g8 a bes g c bes c a |
d4 r r8 c bes a |
g4 r r8 f' es d |
c c' es g f f, aes c 

%%%%%% Bottom measure 25 %%%%%%%%%%%%%%%%%%%%

bes, bes' d f es es, g bes |
aes, aes' c es d d, f aes |
<< { \stemDown g,4 } \\ { \stemUp f'16 \rest g f es } >> \stemNeutral d c b a g es' d c b d g, b |
<< { g,8 a \rest } \\ { b''16 \rest c b a } >> g f es d c bes a g fis d' d, c' |
<< { g,8 a \rest } \\ { d''16 \rest es d c } >> b a g f es g c d fis, es' d c |

%%%%%% Bottom measure 30 %%%%%%%%%%%%%%%%%%%%

g d' es f a, g' f es b f' es d c es d c |
d='8 f g, f es f g g, |
c g' c bes a c f, a |
bes, d f bes d f bes, d |
es=' d c bes a c f, a |

%%%%%% Bottom measure 35 %%%%%%%%%%%%%%%%%%%%

bes= d g, c f, bes es, f |
bes, aes' d f bes,, bes' es g |
bes,, \cu \stemDown c'[ es a] bes16 d, c bes f'8 
%\once \override Staff.Clef #'extra-offset = #'(-0.5 . 0)
%\clef "bass" 
\cd \stemNeutral
f, \autoBeamOn |
<<
   { \stemDown bes2 }
  \\
   { \stemNeutral f'8 \rest es d c }
>>
<bes, bes'>4..
s16
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
      \time 4/4
      \clef bass
        \BottomVoice
     }
    }
  >>
  \layout { }
  \header { piece = "2. Allemande" }
  \midi { \tempo 4 = 60 }
}
