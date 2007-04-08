\version "1.6.5"
\include "header.ly"

violinitwoI = \notes \relative c''' {
	\time 3/4
	\key c\major

	b2.\pp^\fermata^"divisi" ~
	b4 r^\fermata r
	r c,,\p^"pizz." d
	r e f
	r e d
	r c b 
% volta (1)
 \repeat volta 2 {
	r4 c d
	r e f
	r e d

	r c e
	r f_"cresc." e
	r dis dis
	r f_"dim." e
	r dis dis
	b' r b'
	b,\cr r b'\rc
	b,\decr r b'\rced
	b, r b'
% 2
	e,,8 dis\cr e fis g a\rc
	b\decr e b a\rced g fis
	e\cr fis g a b4^\accent\f\rc 
 }

	\alternative {
	{ e^\accent r r } { e^\accent r r }
	}

	\repeat volta 2 {
	gis2\p^"arco" ~ gis4-.
	gis2\cr ~ gis4-.\rc
	gis2.\decr ~
	gis4\rced r r
	r8 f'8_"pizz." d c b r

	r4 r8 d b a 
	gis r r4 r8 b
	gis f e r r4
	cis'2^"arco" ~ cis4-.
	cis2\cr ~ cis4-.\rc
	cis2.\decr ~
	cis4\rced r r 
	r8 bes'^"pizz." g f e r
	r4 r8 g e d
% 3
	cis8 r r4 r8 e
	cis bes a r r4
	r fis\mp^"divisi" g
	r a b
	r a g
	r fis e
	r fis g
	r a b
	r a g

	r f\pp g
	r a bes
	r a g
	r f e
	r f g
	r a bes
	r a g
	r f f
	r f f
% 4
	r f f
	r f f
	r a_"cresc." a
	r a a
	r a_"pi\\`u cresc." a
	r a a
	r a\ff a
	r a a

	r a a
	r a a
	r d,_"dim." d
	r d d
	r^"poco rit." d d
	r d d
	r^"a tempo" c\p d
	r e f
	r e d
% 5
	r c c
	r f^\accent_"cresc." e
	r dis dis
	r f_"dim." e
	r dis dis
	r bes'^\accent_"cresc." a
	r g g
	r bes_"dim." a
	r gis gis
	e'4 r e'

	e,\cr r e'\rc
	e,\decr r e'\rced
	e, r e'
	a,,8 gis\cr a b c d\rc
	e\decr a e d\rced c b
	a\cr b c d\rc e4\f^\accent }
\alternative {
{a4^\accent r r} {a4^\accent r r r2. e2.\pp^\fermata ~ e4 r r \bar "||"}
}
}



violinitwoII = \notes \relative c'' {
	\time 3/4
	\key c\major

	e2.
	e4 r r
	r a,, b
	r c d
	r c b
	r a gis 
% volta (1)
 \repeat volta 2 {
	r4 a b
	r c d
	r c b

	r a c
	r c c
	r c c
	r c c
	r b b 
	b r b'
	b, r b'
	b, r b'
	b, r b'
% 2
	e,8 dis e fis g a
	b e b a g fis
	e fis g a b4 
 }

	\alternative {
	{ e r r } { e r r }
	}

 \repeat volta 2 {
	gis2 gis4
	gis2  gis4
	gis2. 
	gis4 r r
	r8 f'8 d c b r

	r4 r8 d b a 
	gis r r4 r8 b
	gis f e r r4
	cis'2 cis4
	cis2 cis4
	cis2. 
	cis4 r r 
	r8 bes' g f e r
	r4 r8 g e d
% 3
	cis8 r r4 r8 e
	cis bes a r r4
	r d, e
	r fis g
	r fis e
	r d cis
	r d e
	r fis g
	r fis e

	r d e
	r f g
	r f e
	r d cis
	r d e
	r f g
	r f e
	r c c
	r c c
% 4
	r c c
	r c c
	r e e
	r e e
	r e e 
	r e e
	r fis fis
	r fis fis

	r fis fis
	r fis fis
	r b, b
	r b b
	r b b
	r b b
	r a b
	r c d
	r c b
% 5
	r a a
	r c c
	r c c
	r c c
	r b b
	r f' f
	r f f
	r f f
	r e e
	e4 r e'
	
	e, r e'
	e, r e'
	e, r e'
	a,8 gis a b c d
	e a e d c b
	a b c d e4\f }
\alternative {
{a4 r r } {a4 r r r2. a,2.^"divisi" ~ a4 r r}
}
}

\score {

   \context Staff = violiniII {
	\property Staff.midiInstrument = #"violin"
	\property Staff.instrument = #'(lines "Violini II   " "(con sordini)" )
	\property Staff.instr = #"  Vl.II"
	\notes <
	\context Voice=one \partcombine Voice
		\context Thread=one \violinitwoI
		\context Thread=two \violinitwoII
>
}

\paper {}
\midi { \tempo 4=160 }
}