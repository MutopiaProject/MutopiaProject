\version "2.6.0"
\include "deutsch.ly"

secondoIntroii = \relative c' {
f4 r8 f16[ f] e4 r8 e16[ e] | d4 r8 d16[ d] c4 r8 b16[ b] | a4 r8 }

secondoOutroiia = {f16 es4 r8 es16 es} 
secondoOutroiib	= {r8 d16 d des4 r | r r8 des16 des des4 r8. c16 | c1~ | c4}

secondoRightii = {\secondoIntroii \relative c' {a8 b4( f' | g2 f4) r |
r r16 f,(\f g a b a b c d4~ | d c8 b a4) r8 a | b4 r8 b c4 r8 c |
d4 r8 \clef G g8 g4 r8 g | f4 r8 h16( a g4) r8 c16( h |a4) r8 d, d4 r16 g, a h |
c h c d e f e fis g4 r16 g, a h | c h c d e f e fis g4 r |
%% MARK D
\mark \default
c,16 d c d e d e d c d c d e d e d | c4 \clef F r16 c h a g a g f e f e d |
c8 c'16[ d] e d e d c d c d e d e d | c8 r r16 c h a g a g f e f e d | c'1 |
c2~ c4 r | h16 c h c d c d h c d c d es d es c |
\clef G d e! d e f e f d es f es f g f g es | es f es f g f g es as4 r8 es16 es|
as4 r8 es 16 es as2 | g16( fis g fis g4) r2 |
r16 g, a! h c d e! fis g fis g a g a f g | e8 r <<e c>> r <<c d>> r <<d h>> r |
\clef F r8 g16 c r8 e,16 a r8 d,16 f r8 d16 g | 
c,8 <<{e[ e e] e4}  {g8 g g g4}>> r \bar ":|:" 
%%%%%%
\repeat volta 2 {
c4 r8 c16 c b!4 r8 b16 b | a4 r8 <<{fis'16 fis g4 r8 d16 d | es4}
				   {fis,16 fis g4 r8 d16 d | es4}>> 
				   r r \clef G g'(\p |
a2 g4) r \clef F | r r16 g,\f a b c b c d r4 | r2 r4 \clef G r16 as' g as |
f es f d r g f g e d e c r4 | r2 r4 r16 g' f g |
es d es c r f es f d c d b r g' f g | es d es c r fis e fis d c d b r e d e |
\clef F c b c a r d c d <<b8 d g>> r <<f d h>> r | r2 r4 r16 b( a d |
g,4) r r r16 a( g c
%% MARK E
\mark \default
<<f4) f,>> r8 f'16 f e4 r8 e16 e | d4 r8 d16 d c4 r8 b16 b a4 r8 a b4( f' |
g2 f4) r | r r16 f,(\f g a b a b c d4~\accent | d c8 b a4) r8 a |
b4 r8 b c4 r8 c | d4 r8 \clef G g g4 r8 g | f4 r8 h16( a g8) e16( d c b! a g |
f4) r8 f'(~f e) r g(~ | g f) r a4( g16 a b8 g | g4) r r2 |
\clef F r8 e16( d c b! a g f4.\trill e16 f | e4) r r2 |
%% MARK F
\mark \default
f16\p g f g \duldo \dodil \duldo | f4 r16 f' e d c d c b a b a g |
\ddodil \ddodil | f4 r16 f' e d c d c b a b a g |\dudel a g a f g a g a b a b g|
a b a b c b c a b4 r \clef G | \ddodel \ddaldo |
g16 a! g a b a b g as b as b c b c as |
as\f b as b c b c as f as ges f es ges f es|
f as ges as f as g f g b as g f as g f | g b as b g b as g as c b as g b as g |
as8 r <<f es>> r <<f d>> r <<f as>> r \clef F | c,,16( f a! f c4) r2 |
c16( f a f c4) r2 | h'2( c4 des) | r16 c,( d e f g a b! c8 d! e f) | 
<<b,1\startTrillSpan {s2. s8..\stopTrillSpan \grace{a32([ b]}}>> |
a8) r \clef G <<a' f>> r <<f g>> r <<g e>> r |
f16\( a f cis d f d a \clef F b d b g c! g e c}
\alternative {{f8\) r r4 r2}
	{f4 r8 <<{f'16 \secondoOutroiia}{f,16 \secondoOutroiia}>>}}
<<{d'4 \secondoOutroiib}{d,4\secondoOutroiib}>> r4 r2\fermata
}}

octaves = \relative c' {g1 | g | r4 r8 es16 es as4 r8 es16 es | 
as4 r8 es16 es as2 |g4 r r2| g,1 | c8 r a' r f r g r}

secondoLeftii = {<< 
{\transpose c' c \secondoIntroii}
{\transpose c' c, \secondoIntroii} >> \relative c {a8 b4 <<a a'>> |
<<g g,>> <<c c,>> <<f f'>> r | r2 r4 r16 d(\f c d | b g a b c b c c, f4) r8 f'|
g4 r8 g a4 r8 a | b4 r8 h c c16( h a g f e | 
d8) d'16( c h a g f e8) e'16( d c h a g | f8) f'16( e d c h a g4) r |
r8 <<{g e c g'4 r | r8 g e c g'16} {g,8 e c g'4 s | s8 g e c g'16}>>
	fis'[ g a g e f d]|
%MARK D
c4 r8 g'16 g c,4 r8 g'16 g | c,8 r e r g,4 r | r r8 g'16 g c,4 r8 g'16 g |
c,8 r e r g,4 r | c16 d c d e d e c d e d e f e f d |
e f e f g f g e f4 r | <<{\octaves}{\transpose c' c \octaves}>> | 
c16 e r8 a,16 c r8 f,16 a r8  g16 h r8 | r <<{c c c c4}{c,8 c c c4}>> r |
%%%%%%
\repeat volta 2 {
<<{c4 r8 c16 c b!4 r8 b16 b a4}
  {c' r8 c16 c b!4 r8 b16 b a4}>>
  r8 fis16 fis g4 r8 d16 d |
es4 r8 b''\p c4( b|a d, g) r|r2 r4 r16 es\f d es | c b c a r d c d h a h g r4 |
r2 r4 r16 d' c d | b! a b g r c b c a g a f r4 | r2 r4 r16 es' d es |
c b c a r d c d b a b g r c b c | a g a f r b a b <<g8 g'>> r <<gis gis,>> r |
r16 a( cis e a f g! e f8)\staccato e\staccato d r |
r16 g,( b  d g e f  d e8)\staccato d\staccato c r |
%%MARK E
f,4 r8 <<{f16  f e4 r8 e16 e d4 r8 d16 d c4 r8 b16 b a4}
	{f''16 f e4 r8 e16 e d4 r8 d16 d c4 r8 b16 b a4}>> r8 a b4
	<<{a g c, f}{a' g c, f}>> r |
r2 r4 r16 d\f c d | b g a b c b c c, f4 r8 f' | g4 r8 g a4 r8 a |
b4 r8 h8 c c16( h a g f e | d8) d'16( c h a g f e8) r r4 |
f, r8 <<{a8 g4 r8 b a4 r8 c b4. h8 c4}{a'8 g4 r8 b a4 r8 c b4. h8 c4}>>
r16 c,, d e f e f g a g a h | 
c4 r16 c,( d e f8)\staccato c'\staccato a\staccato f\staccato |
c d16 e f g a h c d c h c a b g |
%%MARK F
f4 r8 <<{c16 c}{c' c}>> f,4 r8 <<{c16 c}{c' c}>> | f,8 r a r c4 r |
f4 r8 <<{c16 c}{c' c}>> f,4 r8 <<{c16 c}{c' c}>> | f,8 r a r c4 r |
<<{f,1 | f2 b4 r | c1~ | c |}{f,,1 | f2 b4 r | c1~ | c |}>>
r4 r8 as16\f as <<des4 des,>> r8 as'16 as |
<<des4 des,>> r8 b'16 b <<es4 es,>> r8 b'16 b |
<<es4 es,>> r8 c'16 c <<f4 f,>> r8 c'16 c |
<<{f8 r es r d! r des}{f, r es r d! r des}>> r | c4 r r2 | c16( f a f c4) r2 |
r1 |c| r16 c d e f g a b c d c h c g e c | f8 r d' r b! r c r | f r r4 r c,(|}
\alternative {{f8) r r4 r2}
	{f4 r8 f16 \secondoOutroiia}}
d4 \secondoOutroiib r4 r2\fermata
}}

secondoDynamicsii = { s4\f s2. | s1 | s4. s8\p s2 | s1 * 9 | s1\p | 
s1*6 | s8. \setTextCresc s16\< s2. | s1\!\f | s1*21 | s4. s8\p s2 | s1*18 |
s4 \setTextCresc s2.\< | s1\! | s1 * 14 | s1\p | s1 } 
