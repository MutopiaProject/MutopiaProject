\version "2.8.4"
% The third movement of the first Partita of J. S. Bach, set for Mutopia
% by Carl Bolstad on 9/25/2004.

% Some function definitions:
cu = {\change Staff = "up" \stemDown}
cd = {\change Staff = "down" \stemNeutral}

%*************************************
TopVoice =  \relative b' {
\partial 8*1 bes8 |
bes8*2/3 d a bes f bes d f a, |
bes d a bes g bes es g a, |
bes f' c d bes d f bes d, |
g a, c f g, bes es f, a |

%************************************
% TopVoice measure 5
%************************************
d4~ d8*2/3 bes d f d c |
bes d a bes g bes d g bes |
e,4~ e8*2/3 c e g e d |
c e b c a c e a c |
f,4~ f8*2/3 d f a4~ |

%************************************
% TopVoice measure 10
%************************************
a8*2/3 d, c bes d g c, bes a~ |
a bes a g bes e a, g f~ |
f=' g f e g c f, e d |
e4. r16 e' e8. \prall d32 e |
f8*2/3 c a f8. f'=''16 f8. \prall e32 f |

%************************************
% TopVoice measure 15
%************************************
g8*2/3 e bes g8. g'=''16 g8. \prall f32 g |
aes8*2/3 e f d f aes b c f,='' |
e d c g' e c bes a g |
a c g a f a c f g,=' |
f a e f d f a d e, |

%************************************
% TopVoice measure 20
%************************************
d=' f c d bes d f bes c, |
bes4~ bes8. g'16 bes,8. g'16 |
bes,=4~ bes8. bes16 g'8*2/3 a, bes |
a c bes c f e bes' a g=' |
f a e g c g a c e, |

%************************************
% TopVoice measure 25
%************************************
f=' a e f c f a c e, |
f a e f c f a c es, |
d bes' g e4. f8 |
<a, c f>2 \bar ":|:" s4*2/3 f'8*2/3 |
f a e f c f a c g |

%************************************
% TopVoice measure 30
%************************************
a c g a fis a c es bes |
c es bes c a c fis a d, |
bes' c es, a bes d, g a c, |
\stemUp fis4~ \prall fis8*2/3 d fis a d, c |
bes d a bes g bes d f bes |

%************************************
% TopVoice measure 35
%************************************
es,4~ es8*2/3 c es g c, bes |
a c g a f a c f a |
d,4~ d8*2/3 bes d f bes, a |
g8. f'16 es8. bes'16 aes8. d,=''16 |
\stemNeutral es,8. d'16 c8. g'16 f8. b,16 |

%************************************
% TopVoice measure 40
%************************************
c,='8. bes'16 a8. es'16 d8. g,16 |
fis8*2/3 a c es d c a'8 r8 |
d,,8*2/3 g bes d c bes bes'8 r8 |
cis,,8*2/3 es g bes a g e'8. g,='16 |
fis8*2/3 g a d, fis a c bes a |

%************************************
% TopVoice measure 45
%************************************
g'='' f es d c bes a c fis, |
g4. r16 bes d,8. es16 |
f8*2/3 aes es f aes d f8. aes,16 |
g8*2/3 bes f g bes es g4~ |
g8*2/3 f es d es f g, a bes |

%************************************
% TopVoice measure 50
%************************************
a4 \prall r8. a16 a8. \prall g32 a |
bes8*2/3 f d bes8. bes'16 bes8. \prall a32 bes |
c8*2/3 a es c8. c'16 c8. \prall bes32 c |
des8*2/3 a bes g bes des e f bes, |
a \prall g f es'4~ es8*2/3 d c |

%************************************
% TopVoice measure 55
%************************************
des g c, des a bes es, d \prall es |
d f c d bes d f bes es, |
f bes es, f d f bes d a |
bes d a bes f bes d f aes, |
g es' c a4. \prall bes8 |
<d, f bes>2 \bar ":|"
}

%************************************
% There's no middle voice in this one.
%MiddleVoice =  \relative d' {
% \stemDown 
%} 

%************************************
%************************************
%************************************
BottomVoice =  \relative c' {
\partial 8*1 s8 |
bes4. r16 d16 bes8. d16 |
g,4. r16 es' bes8. es16 |
d,4. r16 f' d8. f16 |
es8. es,16 d8. d'16 c8. c,16 |

%************************************
% BottomVoice measure 5
%************************************
bes8*2/3 d a bes f bes d f a, |
g4~ g8. d'16 bes8. g16 |
c8*2/3 e b c g c e g bes, |
a4~ a8. e'16 c8. a16 |
d8*2/3 f c d a d f a c,= |

%************************************
% BottomVoice measure 10
%************************************
bes8. a'16 g8. bes,16 a8. f'16 |
g,8. f'16 e8. g,16 f8. d'16 |
e,8. d'16 c8. e,16 d8. bes'16 |
c,8*2/3 e g c e g bes, a g |
c, f a c f a c, bes a |

%************************************
% BottomVoice measure 15
%************************************
c, g' c e g bes e, d c |
<c, b'>4 r2 |
<c c'>4 r8. c'16 d8. e16 |
f8*2/3 a c f, a c e, a c |
d,= f a d, f a c, f a |

%************************************
% BottomVoice measure 20
%************************************
bes, d f bes, d f a, d f |
g, bes d g, bes d f, bes d |
es, g c e g f e d c |
f8. d16 a8. bes16 c8. c,16 |
f8. c'16 a8. c16 f,8. a16 |

%************************************
% BottomVoice measure 25
%************************************
d,8. c'16 a8. c16 f,8. a16 |
a,8. c'16 a8. c16 f,8. a16 |
bes,8. bes'16 c4 c, |
f2 s4 |
f'4. r16 a c8. es16 |

%************************************
% BottomVoice measure 30
%************************************
es,4. r16 fis a8. c16 |
d,4. r16 a' d8. fis16 |
g='8. g,16 f8. f'16 es8. es,16 |
d8*2/3 fis a \cu d fis a c8 g \rest |
\cd g,,8*2/3 bes d g bes d f8 r |

%************************************
% BottomVoice measure 35
%************************************
c,8*2/3 es g c \cu es g bes8 f \rest |
\cd f,,8*2/3 a c f a c es8 r |
bes,8*2/3 d f bes \cu d f aes8 e \rest |
r8*2/3 es d c es g f d \cd bes~ |
bes c bes aes c es d b g~ |

%************************************
% BottomVoice measure 40
%************************************
g a g fis a c bes g es~ |
es c' a fis g a es d c |
bes g' d bes c d g, fis e |
d8. cis'16 d,8. cis'16 d,8. cis'16
d,4. r16 es' d8. c16 |

%************************************
% BottomVoice measure 45
%************************************
bes8. fis'16 g8. c,16 d8. d,16 |
g8*2/3 bes fis g d g bes d g, |
d4 r8. bes'16 d8*2/3 f bes, |
es4~ es8*2/3 g es c es g, |
a8. f'16 bes8. d,16 es8. c16 |

%************************************
% BottomVoice measure 50
%************************************
f,8*2/3 a c f a c es, d c |
f, bes d f bes d f, es d |
f, c' f a c es a, g f |
<f, e'>4 r r |
<f f'>~ f8*2/3 a c f g a |

%************************************
% BottomVoice measure 55
%************************************
bes8. a16 bes8. e,16 f8. f,16 |
bes8*2/3 d es f d c bes d g |
g,4 r r |
d8*2/3 bes' c d c bes f' d bes |
es,8. es'16 f4 f, |
bes2
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
  \header { piece = "3. Corrente" }
  \midi { \tempo 4 = 107 }
}
