\version "2.6.0"
\include "deutsch.ly"

secondoOutroiii = {f8)( a c f c a |
f) b( des! f des b | f) a( c f c a | f) b( des f des b | f2.) | f2.~ |
f8 e( f c f c | f) }

secondoRightiii = {\secondoIntro \relative c {
des!4( f h | c2) \clef G <<d4 f(>> | <<e g)>> r r |  r c,\p( des | es! as,) r |
r a( b | c f,) r | r <<{b( h des! c)}{des d f es}>> r |
r <<{c( cis es! d)}{es e g f}>> r |
%% MARK G
\mark \default
r r <<{g\fp( as b as g as g f g e)}{e f g f e f es d e c}>> | c <<h2 f'~>> | 
<<c8 f>> r r4 c4~ | c8 es!( des! c b as \clef F | g2.) | g2( b4 | as2 b4) |
r8 c,( des! es f ges | f) g!( as b c des | d) d,( c2)( |
%% MARK H
\mark \default
\secondoOutroiii r8 f r f r | f2 r4 \bar "||"
}}

secondoLeftiii = {\transpose c c, \secondoIntro \relative c, {des!4( f h |
<<{c,2.)~ c4}{c'2.~c4}>> r r | R2.*8
%% MARK G
<<{c2.~\fp | c | c~ | c | c4 des! d | c8 r r4 c4 | des!2 d4 | es2. | e |}
  {c,~ | c | c~ | c | c4 des!( d | c8) r r4 c4( | des!2 d4 | es2.) | e( |}>>
f2 g4 | as8) a( b c des es | des) e( f g as b | h) d,,( c2)( |\secondoOutroiii
r8 <<{f r f r f2}{f,8 r f r f2}>> r4
}}

secondoDynamicsiii = { s4\p s2 | s2.*3 | \setTextCresc s4\< s2 | s s4\!\f |
s2.*17 | \setTextCresc s2.\< | s2.*3 | s2.\!\f | s2.\p | s2.*6 | s-smorzando |
s2.}
