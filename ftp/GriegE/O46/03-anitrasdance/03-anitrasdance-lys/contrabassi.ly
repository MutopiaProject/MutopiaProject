contrabassi = \notes \relative c {
	\time 3/4
	\key c\major

	r2.^\fermata
	r4 r^\fermata r
	a\p^"pizz." r r
	a r r
	a r r
	a r r 
% volta (1)
 \repeat volta 2 {
	a4 r r
	a r r
	a r r

	a r r
	a_"cresc." r r
	a r r
	a_"dim." r r
	b r r
	b r r
	b\cr r r\rc
	b\decr r r\rced
	b r r
% 2
	e4 r r
	r2.
	r4 r4 b'4^\accent\f 
 }

	\alternative {
	{ e^\accent r r } { e^\accent r r }
	}

 \repeat volta 2 {
	e,4\p r r 
	e\cr r r\rc
	e r r
	e\decr r r\rced
	e r r

	r2.
	r
	r
	a4 r r
	a\cr r r\rc
	a r r
	a\decr r r\rced
	a r r
	r2.
% 3
	r2.
	r
	d,4\mp r r
	r2.
	r
	d4 r r
	r2.
	r
	r

	d4\pp r r
	r2.
	r
	d4 r r 
	r2.
	r
	r
	ees4 r r
	ees r r
% 4
	ees r r
	ees r r 
	fis_"cresc." r r
	fis r r
	fis_"pi\\`u cresc." r r
	fis r r
	b,\ff r r
	b r r

	b r r 
	b r r 
	e,_"dim." r r 
	e r r
	e^"poco rit." r r
	e r r
	a\p^"a tempo" r r 
	a r r
	a r r
% 5
	a r r
	a_"cresc." r r
	a r r
	a_"dim." r r
	b r r
	d_"cresc." r r
	d r r
	d_"dim." r r
	e r r
	e r r

	e\cr r r\rc
	e\decr r r\rced
	e r r
	a r r
	r2. 
	r }
\alternative {
{r2. } {r4 r e\pp a, r r r2.^\fermata r }
}
}