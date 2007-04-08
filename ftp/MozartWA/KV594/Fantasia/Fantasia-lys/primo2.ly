\version "2.6.0"
\include "deutsch.ly"

primoRightii = \relative c'' {
<<
  {c4 r8 c16[ c] c4 r8 c16[ c] | f4 r8 f16[ f] <<e4 g>>}
  {f4 s8 f16[ f] g4 s8 g16[ g] | a4 s8 a16[ a]   c4    }
>> r8 c,16[ c] |
<<c8[ f(>> g\p a c,] d4 f~\accent | f e f) r16 c[( d e] |
f g a b <<a4. c)\tenuto >> <<b8 g>> a4 | 
g4.(\trill f16[ g] f8[) a16( g] f[ e d c] |
b8[) b'16( a] g[ f e d] c8[) c'16( b] a[ g f e] |
d8[) d'16( c] b[ a g f] e4) r8 e\staccato |
f[( d]) r f\staccato g[( e]) r g\staccato |
a4.( c,8 h[) d'16( c] h![ a g f] |
e4.\trill d16[ e] d8[) d'16( c] h[ a g f] |
e4.\trill d16[ e] d4) r |
\mark \default
r r8 h\staccato\p c[(g]) r h(|c[)\staccato e]\staccato g2 h,8.[(\trill a32 h]|
c8) r r h'\staccato c[( g]) r h( |
c[\staccato e,]\staccato g2 h,8.[(\trill a32 h]| c2)( h) |
b!4.(\trill a16 b) a b a b c b c a | 
<< {g'2( fis) } \context Voice="two" {\voiceThree g1} >> |
\oneVoice f!4.\trill( e16 f es4) r |
<< {\voiceOne <<des2 b'>> as16 c b as g b as g | 
as c b as g b as g as8\staccato g4\accent( fis8 | g4)}
	{\context Voice="two" {\voiceTwo es2~ es | es es | e!4 }}>> 
	\oneVoice r16 e f g a!\trill g a h c gis a f |
<<d1\startTrillSpan {s2. s8..\stopTrillSpan \grace{c32[( d])}}>> |
r8 g16 c r8 e,16 a r8 d,16 f r8 d16 g |
e8 r <<e c'>> r <<c a d,>> r <<d f g h>> r |
<<c g e>> <<{c[ c c] c4}{g8 g g g4}>> r \bar ":|:"
%%%%%
\repeat volta 2 {
c4 r8 c16 c <<{d4 r8 d16 d | es4 r8 d16 d d4 r8 c16 c | b8}
	{g'4 s8 g16 g c4 s8 a16 a b!4 s8 fis16 fis g8(}>> 
	a\p b d, es4 g\accent~ |
g fis g) r16 d( e! fis g a b c <<d4.) b\tenuto>> <<a8 c>> b4 |
a4..\trill( g32 a g4) c~ | c b2 a4 | g4..\trill( f32 g f4) r |
r2 r16 d' c d b a b g | r16 c b c a g a fis r b a b g f g e |
r a g a f e f d g f g e f e f d | cis4 r r16 a' h cis! d b c a |
b!4 r r16 g a h c a b g |
%% MARK E
\mark \default
<<{f4 r8 f16 f g4 r8 g16 g | a4 r8 a16 a c4 r8 s | f,8(}
  {c4 r8 c16 c c4 r8 c16 c   f4 r8 f16 f<<g4 e>>r8 c16 c c8}>>
g'\p a c, d4 f4~\accent |f e f) r16 c( d e |f g a b<<c4.) a\tenuto>><<b8 g>>a4|
g4.(\trill f16 g f8) a16( g f e d c | b8) b'16( a g f e d c8) c'16( b a g f e |
d8) d'16( c b a g f e4) r8 e\staccato | f( d) r f\staccato g( e) r <<g( e>> |
<<f4 a)>> r8 a( b4 r8 b( | c4) r8 c\staccato d4.( f,8 | 
e) g16( f e d c b a4.\trill g16 a | g8) r r4 r16 c( d e f g a h | c4) r r2 |
%% MARK F
\mark \default
r4 r8 e,8\p\staccato f( c) r e( | f\staccato a\staccato c2 e,8.\trill( d32 e |
f8 c) r e\staccato f( c) r e( | f\staccato a\staccato c2 e,8.\trill( d32 e |
f2)( e) | es4.\trill( d16 es d) es d es f es f d |
<< {c'2( h) } \context Voice="two" {\voiceThree c1} >> |
\oneVoice b4.\trill( a16 b as4) r |
<<{\context Voice="one" {\voiceOne ges2 s}}{\voiceTwo\tieUp as~as~}>> |
\oneVoice\tieNeutral as8 as\staccato b2.~ |
b8 b\staccato c2.~ | c16 f, g f a! f g f b f g f h f g f |
c'4 r16 a, b! c d e f g a\trill g a b | c4 r16 a, b c d e f g a b h c |d2( c4 h|
c2)~ c8 h b a | 
<<g1\startTrillSpan {s2. s8..\stopTrillSpan \grace{f32[( g]}}>> |
e16) f a f cis d f d a b d b h c e c | f8 r <<{f r f r e}{a r g r c}>> r | }
\alternative {
	{f, r c2( h4) | } 
	{f'4 r8 
	<<{c16 c f4 r8 f16 f}  
	  {f16 f a4 r8 s16 s}>>}
}
<<{f4 r8 f16 f f4 r r r8 f16 f f4 r8. f16}
  {b4 r8 s16 s h4 r r r8 h16 h h4 r8. c16}>> 
c,1~ | c4 r r2\fermata
}

primoLeftii = \relative c'' {
a4 r8 a16[ a] g4 r8 g16[ g] |
<<{ a4 r8 a16[ a] c4 r8 g16[ g] | a4 }
  { f4 s8 f16[ f] <<e4 g>> s8 e16 e | f4}>> r8 f8\staccato\p f4( c' |
b8.[\trill a32 b] c8[\staccato) b]\staccato a4 r16 a[( b c] | 
d[ e f g]) r a,[( b c] d[ c d e]  f4~ | f e) r r8 f,(~ |
f[ e]) r g(~ g[ f]) r a(~ | a[ g]) r16 f'[( e d] c4) r8 c8(~\accent |
c[ h]) r d4( c8) r e(~\accent | e[ d]) r fis,( g[) h'16( a] g[ f! e d]~ |
d8[) g,]\staccato c4(~\accent c16[ h) h'( a] g[ f e d]~ |
d8[) g,]\staccato c4( h) r | 
% MARK D
s1*0\p \relative c' {\ddudel \ddudel} | e,4 r16 e' d c h c h a g a g f | 
e8 e'16[ f] \deldu \ddudel | e8 r r16 e d c h c h a g a g f |
\ddodel \ddaldo |\deldu e f e g \dodil a! g a f |
\transpose c d' \dodil \transpose c e'{\doldo \ddaldo}|
\transpose c g' {\ddodel \ddaldo} | 
\transpose c es' {\ddodel} c'8 des16 c b des c b |
c8 des16 c b des c b \transpose c e' {\dildo \dildo} | 
c4 r16 c d! e f\trill e f g a e f d | 
<<h1\startTrillSpan{s2. s8..\stopTrillSpan \grace{a32[( h]}}>>|
c16) e r8 a,16 c r8 f,16 a r8 g16 h r8|
c r <<c a>> r <<c a d,>> r <<d f g h>> r | 
<<c g e>> <<{e[ e e] e4} {c8 c c c4}>> r |
%%%%%
\repeat volta 2 {es4 r8 es16 es g4 r8 g16 g | 
fis4 r8 <<a16 c>> <<a c>> b4 r8 a16 a |
g4 r8 g\p g4( d'| c8.\trill b32 c d8)\staccato c\staccato b4 r16 b( c d |
e! fis g a) r b,( c d e d e fis g4)~ | g f!2 es4 |
d4..\trill^\markup{\tiny\flat}( c32 d c4) f~ |
f es2 <<{\voiceTwo d4 | c2 b}\context Voice="one"{\voiceOne b'4~ b( a2 g8) r}>>|
\oneVoice r16 a g a fis e! fis d r g f g e d e c |
r f e f d c d b e d e cis d cis d h | a4 r16 a cis e a f g e fis g e fis |
g4 r16 g, h d g e f! d e f d e |
%% MARK E
a,4 r8 a16 a g4 r8 g16 g | <<{a4 r8 a16 a <<c4 g>> r8 g16 g a4}
	{f4 r8 f16 f e4 r8 e16 e f4}>> r8 f\p f4( c' |
b8.\trill a32 b c8)\staccato b\staccato a4 r16 a( b c |
d e f g) r a,( b c d c d e f4\accent~ | f e) r r8 f,8~( |f e) r g~( g f)r a~(|
a g) r16 f'( e d c4) r8 c~( | c h) r d4( c8) r <<c b(>> |
<<c a)>>a16( b c d e f g8)b,16( c d e f g |a8) c,16( d e f g a b c b a g f e d|
c8) e16( d c b a g~g8) c,\staccato f4( | e8) g'16[_( f] e d c b a4.\trill g16 a|
g4) r r2 |
%% MARK F
a16\p b a b c b c b a b a b c b c b | a4 r16 a' g f e f e d c d c b |
\transpose c f' {\ddudel \ddudel} | a4 r16 a' g f e f e d c d c b |
\transpose c f' {\ddodel \ddaldo} | c b c b a b a c b c b c d! c d b |
c d c d e! d e c d e d e f e f d | \transpose c c'' {\ddodel \ddaldo} |
\transpose c as' {\ddodel} des f es des c es des c | 
des f es f d f es d es g f es d f es d | es g f g e g f e f as g f e g f e |
f8 r <<c a!>> r <<b d!>> r <<f h,>> r |
<<f4 a c f>> r16 f, g a b! c d e f\trill e f g |
a4 r16 f, g a b c d e f g gis a | <<as1( f>> |
<<{\voiceOne a!2)~ a8( gis g f} {\context Voice="two" {\voiceTwo{f4 r}}}>> |
\oneVoice <<e1)\startTrillSpan{s2. s8..\stopTrillSpan \grace{d32[( e)]}}>>|r1 |
<<{c8 r d r d r b r}
  {s  r a r g r g r}>>} 
\alternative {
	{<<{c  r as4 g  f}
	   {a8 r f4( es d)}>>}
	{<<{c'4 r8 s16 s c4 r8 c16 c}
	   {a4  r8 a16 a a4 r8 a16 a}>>}
}
<< {b4 r8 d16 d h4 r r r8 h16 h h4 r8. g16 \voiceOne g1~ g4}
   {f4 r8 b16 b f4 r r r8 f16 f f4 r8. f16
   \context Voice="two" {\voiceTwo f2( e4 d e)}}>>
\oneVoice r r2\fermata
}

primoDynamicsii = { s4\f s2. | s1*2  | s2. s16 s\f s8 | s1 * 9 |
s4 s2.\fp | s1 | s4 s2.\fp | s1 * 3 | \setTextCresc s4. s8\< s2 | s2\!\f s2 |
s1 * 9 | s2. s16 s\f s8 | s1*12 | s2. s16 s\f s8 | s1 * 11 | s4 s2.\fp | s1 |
s4 s2.\fp | s1 * 3 | \setTextCresc s4 s2.\< | s1\!\f | s1 * 14 | s1\p | s1 }
