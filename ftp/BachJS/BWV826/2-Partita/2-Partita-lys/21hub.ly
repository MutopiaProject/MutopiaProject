% The first movement of the second Partita of J. S. Bach, set for Mutopia
% by Carl Bolstad on 3/4/2005.

\version "2.8.4"

\paper { 
	#(set-paper-size "letter")
}

% The following file is so I can write things
% like fs for f# and bf for b-flat.
\include "english.ly"

% Some function definitions:
cu = {\change Staff = "up" }
cd = {\change Staff = "down" }


%************************************
%************************************
%*************************************
TopVoice =  \relative ef'' {
ef4 r16 ef16 d16. ef32 f4 r16 f f16. g32 |
af8. af16 af g32 f g16. d32 ef4 r16 g16 g16. af32 |

% T meas. 3
bf4 r16 bf, bf16. c32 df8. df16 
	df16 c32 bf c16. g32 | \stemDown af4 \stemUp
r16 f' g16. af32 d,4 r16 d g16. ef32 |
c4~ c32 ef df c df16. f32 b,16. c32 b16. c32 d4~ |

% T meas. 6
d2~ d16. g,32 a16. b32 c16. <b g>32 <c a>16. <d b>32 |
<ef c>8. <ef c>16 
}

%************************************
%************************************
%************************************
% Middle part, right hand:
MiddleVoice = \relative g' {
<g c>4 r16 c b16. c32 d4 r16 d d16. ef32 |
f8. f16 f8 r <c g>4 r16 ef ef16. f32 |

%%%% M meas. 3
<< { g4 } \\ { c,4 } >> r16 g g16. af32 bf8. bf16 <bf e>4 |
\stemUp <c f>4 \stemDown r4 r16 f, f16. g32 g4 |
r16 ef ef16. f32 f4 g16. a32 g16. a32 b4~ |

%%%% M meas. 6
b8. d,16 f8. af16 g16. f32 ef16. d32 ef16. d32 ef16. f32 |
g4

% and the rest is all 2-part, so we'll just quietly stop here...
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Right Hand as a single voice, measure 7 (middle) to the end: %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

RHtoEnd = \relative {
% Let's try this with explicit voices:
\stemNeutral
<<
 { \stemUp <fs' c a>4 <g d b>2 }
\\
 { \stemDown ef!16[ d32 c d16. a32] }
>>
\stemNeutral
\bar "|."

%%%% T meas. 8
g16 c32 d ef8~ ef16 d32 c ef d c b c16 g af f g c g f |
ef c'32 d ef d c16 g' c, af' c, b c d b \stemUp g r r8 |
g'32 f ef d c16 \tieUp bf~ bf \tieNeutral df8 c16 af'32 g f e f8~ f32 g af g f ef d ef |

%%%% T meas. 11
f ef d c bf16 af~ af c8 bf16 g'32 f ef d ef8~ ef32 f g f ef d c b |
\stemNeutral c bf af g f16 ef'~ ef d32 c ef d c b c d ef f g16 c,~ c b32 c d c b c |
af' g f e f16 df~ df c32 df ef df c df g f ef d ef16 c~ c b32 c d c b c |

%%%% T meas. 14
f c b a b16 d f32 bf, af g af16 c f32 af, g f g8~ g32 f' g af g16 f |
g16 b,8 c16~ c bf32 af g f ef d ef g f ef f ef d ef d8 c |
r g'~ g32 af g f g16 af bf d ef8~ ef32 bf ef f g16 ef |

%%%% T meas. 17
df16 c f8~ f32 c f g af16 f ef c d8~ d32 f g af bf af g af |
bf af g16~ g32 f e16~ e32 d c16~ c32 g' af bf af g f16~ f32 ef df16~ df32 c bf16~ bf32 f' g af |
g f e f bf f e f af f e f g f e f f4~ f32 ef d ef f d ef f |
bf, d f g af8~ af32 g f af g f ef d ef bf ef f g8~ g32 f ef g f ef d c |
bf'( a g fs) ef!16 d~ d32 g af c cs,16 d~ d32 fs g a cs, ef d cs fs d e fs g a bf c |

%%%% T meas. 22
bf a g fs~ fs16 g~ g d8 ef16~ ef b8 c16~ c32 bf af g af16 c |
fs,32 ef' d c bf'16 a g8(  \once \override Script #'padding = #1.5  % to raise the trill sign.
	fs16.) \prall g32 g4~ g32 f g af g f ef d  |
f ef d c g'8~ g32 ef f g f ef d c ef d c bf g'8~ g32 d ef f ef d c bf |

%%%% T meas. 25
d32 c bf af g'8~ g32 c, d ef d c bf af c bf a g g'8~ g32 bf, c d c bf a g |
af!4~ af32 af g af bf af g af ef'4~ ef32 c b c d c b c='' |
fs16 ef!8 d16 g d8 c16 a' c,8 bf16~ bf32 d c bf g' bf, a g=' |

%%%% T meas. 28
\once \override Script #'extra-offset = #'(0 . 1) % This is to move the fermata up.
bf'8~ \fermata bf32 a g fs g bf a g fs e d c bf d c e d g fs e d c bf a bf d bf g |
r16 e'=''32 fs fs32. \prall e64 fs32 g bf,32 a g fs 
<< { g16 bf16~ bf
     c32 bf a bf c a fs8. g16 }
 \\ 
   { g8~ g4 d4 }
>>

%%%%% This is where it goes into 3/4 time, and I will switch to having a separate
%%%%% input file for each part.
\time 3/4
\include "21right.ly"
}


%************************************
%************************************
%************************************
% Bass part, left hand:
BottomVoice = \relative {
<c g ef c>4_\markup { \huge { Grave Adagio } } r <c, d f af b> r r <b' f d c> <c, ef g c> r |

%%%% B meas. 3
<c' g e c> r r <c, g' c> |
<c' af f c> r r16 <c, d af'> <c d af'>16. <bf d g>32 <bf d g>4 |
r16 <bf c g'> <bf c g'>16. <af c f>32 \tieUp <af c f>4~ <g d' f> r16 <d' f> <d f>16. <ef g>32 |
\context Staff <<
  \new Voice { \voiceOne af8. af16~ af g32 f g16 <d b> }
  \new Voice { \voiceTwo f8. f16 <g, b>4 }
  >>
\oneVoice
<g c ef>4 r |
r <g c ef a> <g d' g>2 |

%%%% B meas. 8
c8_\markup { \huge { Andante } } c' f, g ef c ef g |
c af ef f g g, r16 \stemDown \cu f'' ef d |
ef8 g e c f af f c |

%%%% B meas. 11
d f d bf ef g ef c |
\cd \stemNeutral af c f af, g c ef g, |
f af g f ef g f ef |

%%%% B meas. 14
d f af c, b d g d |
ef af, f g c,4~ c16 d32 ef f g a b |
c8 c' bf af g bf g ef |

%%%% B meas. 17
af c af f bf af g f 
e g c e, f af f df
bf g c c, f16 g32 af bf c d e f8 ef |
d f d bf g' bf ef, g 
a, fs' g g, d' a' c d, |

%%%% B meas. 22
g a bf b c d ef c
a g d' d, g a b g
c ef c a bf d bf g

%%%% B meas. 25
a c a fs g bf g ef
c16 d32 ef f g af bf c16 c, c'8~ c32 c, d ef f g af bf c16 c, c'8~ |
c8 c, bf bf' fs d g ef

%%%% B meas. 28
\once \override Script #'extra-offset = #'(0 . 1) % This is to move the fermata up.
<cs e g>4\fermata r
<<
   { <g' bf d>2 | cs4~ cs8. cs16 d8 c16 bf << { a16 bf c8 } \\ { a4 } >> }
  \\
   { d,2~ | d1 }
 >>

%%%%% This is where it goes into 3/4 time, and I will switch to having a separate
%%%%% input file for each part.
\time 3/4
\include "21left.ly"
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
      % instead of on each whole measure or eigth note or something:
      #(override-auto-beam-setting '(end * * * *) 1 4 'Staff)
      \key ef \major
      \time 4/4
      \context Staff
        <<
          \new Voice { \voiceOne \TopVoice }
          \new Voice { \voiceTwo \MiddleVoice }
        >>
	\oneVoice
	\RHtoEnd
     }
    }
    \context Staff = "down" {
     \set Staff.midiInstrument = #"harpsichord"
      % The following makes the beaming group on every quarter note,
      % instead of on each whole measure:
      % #(override-auto-beam-setting '(end * * * *) 1 4 'Staff)
      \key ef \major
      \time 4/4
      \clef bass
        \BottomVoice
    }
  >>
  \layout { }
  \header { piece = "1. Sinfonia" }
  \midi { \tempo 4 = 107 }
}
