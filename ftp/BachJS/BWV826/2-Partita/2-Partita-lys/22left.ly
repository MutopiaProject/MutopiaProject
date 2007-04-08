% Left-hand part, notes only, for 2nd Partita, 2nd movement.

\version "2.8.4"

BottomVoice = \relative c {
\partial 4 r4
c8 c, \clef G r16 af''' g f g d ef b c f ef d |
\clef "bass" \clef "bass" ef16 b c g af8 f g g,~ g16 f' ef d |
ef bf c g af g' f ef f c d a b af' g f |
g16 d ef b c bf' af g af ef f c d8 b' |

%%%% Left Hand measure 5
c8 ef f, af b, d f, g |
af f g g' c, g' << { c8 d } \\ { c4 } >>
c8. g32 f ef f g16 c,32 d ef16 g,8. bf32 af g af bf16 ef,32 f g16 |
a,8 c f a bf8. f''32 ef d ef f16 bf,32 c d16 |
ef,16 g a bf c d ef c fs, a bf c d e fs d |


%%%% Left Hand measure 10
g, bf c d e fs g ef a, c d ef d c bf a |
bf c d a bf ef d c d a bf f_\markup { \sharp } g c bf a |
bf fs g d ef32 f g16 c,32 d ef16 fs,4 r8 d |
g bf'( ef, d) a c'( ef, d) |
bf d'( ef, d) c ef'( ef, d) |

%%%% Left Hand measure 15
<cs cs,>4 r8 cs d a fs d |
g16 a bf c d8 d, 
<<
  {
    r8 r16 d' g 
  }
  \\
  {
    g,4~ g16
  }
>>
\bar ":|:"

%% End of 1st section, beginning of 2nd:
%% (measure 17, pick-up to)
r8. |
g8 g' r16 af g f g d ef b c f, ef d |
c8 c' r16 df' c bf c g af e f bf, af g |
f g af8 bf,16 af' g f g af bf8 c,16 bf' af g |

%%%% Left Hand measure 20
af16 bf c8 df,16 c' bf af bf c df8 e,16 df' c bf |
af8 c f, af df f g, bf~ |
bf af16 bf c8 c, f16 c' f g af f af c |
f8 af, c f, bf f' d bf |
ef g, bf ef, af ef' c af |

%%%% Left Hand measure 25
d f, af d, g d' b g |
c ef, af f g g,~ g16 af' g f |
g d ef b c f ef d ef b c g af df c bf |
c g af e f bf af g af f g b d af g f |
ef( g c ef)~ ef b c ef, f( af c ef)~ ef b c f, |

%%%% Left Hand measure 30
g( b c ef)~ ef b c g af? b c ef~ ef b c ef |
a d, ef b c ef d c b g af? ef f af g f |
ef g c ef g8 g, <c c,>4 \bar ":|"
}
