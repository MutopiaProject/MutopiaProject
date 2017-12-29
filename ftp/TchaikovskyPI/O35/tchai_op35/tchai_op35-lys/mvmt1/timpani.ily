\version "2.18.2"

theTimpani =  \relative c {
	\clef "bass"
	\key c \major
	
	r1
	
	R1*7
	
	a1:32\pp_\markup { \translate #(cons 4 -1) \italic {cresc. poco a poco} }
	a1:
	a1:
	a1:
	a1:
	a1:\mf\<
	a1:\!
	a1:
	a1:
	a4\ff r a r
	a8[ a a a] a[ a a a]
	a8 r r4 r2
	
	R1*42
	
	a8\ff r a r r2
	a8 r a r r2
	
	R1*54
	
	d8\f r r4 r2
	d8 r r4 r2
	d8 r r4 r2
	a8 r r4 r2
	
	R1*4
	
	a8 r r4 r2
	R1
	d8 r r4 r2
	R1
	d8 r r4 a8 r r4
	d8 r r4 a8 r r4
	d8 r r4 r2
	d8 r r4 r2
	a8 r r4 r2
	R1
	d8 r r4 r2
	R1
	d8 r r4 a8 r r4
	d8 r r4 a8 r r4
	
	R1*47
	
	a8 r8 r4 r2
	R1
	d8 r r4 r2
	d8 r r4 r2
	d8 r r4 a8 r r4
	d8 r r4 d8 r r4
	r2 r4 d8  r
	a1:32\f\>
	a8\p\! r r4 r2
	a1:32\f\>
	a8\p\! r r4 r2
	a1:32\f\>
	a8\p\! r r4 r2
	a1:32\f\>
	a8\p\! r r4 r2
	a1:\p_\markup { \translate #(cons 4 -1) \italic cresc. }
	a1:
	a8\ff r a r a r a r
	a8 r a r a r a r
	a8 r r4 r2
	a8 r a r a r a r
	a8 r r4 r2
	a8 r a r a r a r
	a8 r r4 r2
	
	s1*46
	s1*34
	
	a8\ff r a r a r r4
	a8 r a r a r r4
	
	R1*47
	
	a8\f r r4 a8 r r4
	d8 r r4 d8 r r4
	d8[ d] r d[ d d] r d
	d[ d] r d[ d d] r d
	
	R1*4
	
	d8\f r r4 r2
	
	R1*12
	
	a8\ff r r4 r2
	
	R1*7
	
	d8\ff r r4 d8 r d[ d]
	d r r4 d8 r d[ d]
	d r r4 r2
	r2 r4 r8 a8
	d r r4 d8 r d[ d]
	d8 r r4 d8 r d[ d]
	d r r4 r2
	r2 r4 r8 a
	d8 r d r d r d r
	d8 r d r d r d r
	d8 r d r d r d r
	d8 r d r d r d r
	d[ d d d] d[ d d d]
	d4 d d d
	d1:32\fermata
}
