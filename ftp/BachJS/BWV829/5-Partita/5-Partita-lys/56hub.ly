% This is the source file for the JS Bach Partita #5, movement 6
% for solo keyboard.  Set for Mutopia by Carl Bolstad on 6/29/2004.


\version "2.7.40"

% The following file is so I can write things
% like fs for f# and bf for b-flat.
\include "english.ly"



% First the right hand top notes:

RightHandTop =  \relative d' {
\partial 8*1 d8 |
g4 \mordent g32 a b16 |
\grace b8 a4 g8 |
fs g e |
d a' g |
fs c' b |
a e'='' d |
c \prall b16 a d8 |

% Top Part meas 8:
c16 b a g d8 |
g4 \mordent g32 a b16 |
\grace b8 a4 g8 |
fs g e |
d16 fs e d e fs |
g e' d cs b a |
gs a a'8 g |
fs d cs |

% Top Part meas 16:
d4 \bar ":|:" a'8 |
d,4 \mordent d32 e fs16 |
g4 a8 |
b a16 g fs g |
a g fs e g8 |
\grace c,='' b4 c32 d e16 |
g,4 g'8 |
\grace c,8 b4 c32 d e16 |

% Top Part meas 24:
g,4 f'8~ |
f f e |
c' fs,! g |
a,16 b c8 b |
a4 d8 |
g4 \mordent g32 a b16 |
e,=''4 d8 |
c b16 c d b |
d c b a d b |
d c b a d b |
d c b a c a |
c b a g c a |
c b a g a b |
e,4 fs32 g a16 |
d,4 d'8 |
g,4 \mordent fs32 g a16 |

% Top Part meas 40:
d,='4 d'8 |
\grace c b4 c32 d e16 |
f4 g8 |
e f d |
f16 e d c e c |
e d c b d b |
d c b a c a |
d8 g, fs |
g4 \bar ":|"
}



% Right Hand bottom notes:

RightHandBottom =  \relative b {
\partial 8*1 s8 |
r8 b e~ |
e d4~ |
d8 e cs |
d4.~ |
d4.~ |
d8 c' b |
a g fs |
g4 r8 |
r b,= cs~ |
cs d4~ |
d8 e cs |
\change Staff = down \stemUp b4. |
a |
b4 cs8 |
\change Staff = up \stemDown d8 fs e |

% Middle Part meas 16:
fs4 \bar ":|:" r8 |
r fs a |
d, g fs~ |
fs e ds |
e s4 |
s4.*4 |

% Middle Part meas 25:
a='8 b c~ |
c c b |
a4 g8 |
fs4 r8 |
r d g~ |
g gs a~ |
a4 gs8 |
a s4 |
s4.*8 |

% Middle Part meas 41:
r8 f=' e~ |
e e d |
c d' b~ |
b \change Staff = down \stemUp b,= a~ |
a a g~ |
g g fs |
g b a |
b4 \bar ":|"

}




% Left hand notes:

LeftHandNotes =  \relative g, {
\partial 8*1 g8 |
g'4. |
fs4 g8 |
a4 a,8 |
b16 c' b a b g |
a, a' g fs g e |
fs4 g8 |
c, d d, |

% Bottom Part meas 8:
g g' fs |
e4. |
fs4 b8 |
g4 a8 |
\stemDown b b, cs~ |
cs cs d~ |
d d e |
\stemNeutral fs g a |

% Bottom Part meas 16:
d,4 \bar ":|:" d8 |
c'4. |
b4 a8 |
g a b |
e, b' e16 c |
e d c b e c |
e d c b e c |
e d c b e c |

% Bottom Part meas 24:
e d c b d b |
c8 d, c |
b a' g |
fs d g |
d16 d' c b c a |
b4. |
c4 f8 |
d e e, |

% Bottom Part meas 32:
a, a' gs |
a c, b |
a g' fs |
g b, a |
g r16 b' a g |
c b a g c a |
c b a g c a |
c b a g c a |

% Bottom Part meas 40:
c b a g a fs |
g4. |
a4 b8 |
c f, g |
\stemDown c,4. |
b |
a |
b8 c d |
g,4 \bar ":|"
}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% The Score: %%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\score {
  
  \context PianoStaff <<

     \context Staff = "up" {
        \set Staff.midiInstrument = #"harpsichord"
       {
	\key g \major
	\time 3/8

	<<
	   \RightHandTop
	\\
	   \RightHandBottom
	>>
      }
     }

     \context Staff = "down" {
        \set Staff.midiInstrument = #"harpsichord"
	 {
		\key g \major
		\time 3/8
		\clef "bass"

		\LeftHandNotes
	}
     }

  >>


   \header { piece = "6. Passepied" }
   \layout { }
   \midi { \tempo 8 = 110 }

} 
