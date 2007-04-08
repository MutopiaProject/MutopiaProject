% This is the file for just the notes of the right hand for the 2nd Partita,
% 2nd movement.

\version "2.8.4"

TopVoice = \relative c''' {
\partial 4 s16 af g f
g d ef b c f ef d ef b c g af d c b |
c g af ef f ef' d c b8. \prall a16 g8 b |
c16 d ef8 f,16 ef' d c d ef f8 g,16 f' ef d |
ef16 f g8 af,16 g' f ef f g af8 b,16 af' g f |

%%%%%% Top Voice measure 5
<<
  {
    ef4~ ef8. c16 d4~ d8. b?16 |
    c4 r8 c16 b c4~ c16 c bf af |
    g c32 d ef16 c
  }
  \\ %% back to measure 5 for the lower voice:
  {
    r16 b c g af ef f8 r16 g af f g d ef8~ |
    ef16 f32 g af16 f d f8.~ f16 f ef d ef8 f |
    ef4
  }
>>
%% 2nd quarter of measure 7:
g8( af) 
<<
  {
    bf4~ bf8 g'~ |
    g16 c,32 d ef16 c a f' c32 d ef16 d4~ d8 d |
    d c \prall r16 fs g a ef8 d \prall r16 g a bf |
    %% measure 10, top part
    f8 e \prall r16 a bf c g8 fs r16 ef d c
  }
  \\
  {
    r16 f, g d ef8 r |
    s2 r16 a bf8~ bf fs |
    g4 r a r |
    bf r c r |
  }
>>

%% measure 11
d16 a bf fs g c bf a bf fs? g d ef a g fs |
g d ef b c f ef d ef c d fs a ef d c |
bf d g bf~ bf fs g bf, c ef g bf~ bf fs g c,
d fs g bf~ bf fs g d ef fs g bf~ bf fs g bf

%% measure 15
e a, bf fs g bf a g fs d ef bf c ef d c |
<<
  {
    bf8 d' bf a16 g
  }
  \\
  {
    s8 <d g>8 <d g> <c fs>
  }
>>

<<
  { g'4~ g16 } \\ { r16 d4 } \\ { s16 d16 b8. }
>>

%% End of 1st half, start of second (after the repeat)
%% (measure 17)
ef'16 d c |
d a b g af f ef d ef( f32 g) c,8 r16 af'' g f |
g d e c df bf af g af( bf32 c) f,8 r16 c f g |
af e f c df c' bf af bf f g d e? d'^\markup { \flat } c bf

%% measure 20
c g af e f ef'! d^\markup { \flat }  c df a bf g g'4~ |
g16( c,) f( e) af( g f e) f( c) ef( df) bf'( af g f) |
e( f32 g) c,16 bf af f' g, e' f4~ f32 g f e f16 g |
af e f c af f ef' c d a bf d f af g f |
g d ef bf g ef d' b c g af c ef g f ef |

%% measure 25
f c d af f d c' a b fs g b d f ef d |
ef b c af g( f) ef' d c b c d g,8 d' |
ef16 g c g ef d c b c ef g8~ g16 bf, af g |
af c f c af g f e f b d8~ d16 f, ef d |
c8 ef'( af, g) d f'( af, g) |

%% measure 30
ef g'( af, g) f af'16( g af g fs g) |
	\once \override Script #'padding = #1 %% This is to raise the trill sign a little
fs4.~ 
	\prall fs16 e32 fs g16 d f ef d c b a |
g8 <g c ef g>\arpeggio 
	<<
	  { ef'8 d16 c }
	  \\
	  { <g c>8 <b f> }
	>>
<ef, g c>4 \bar ":|"
}
