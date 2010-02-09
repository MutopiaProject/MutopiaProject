\version "2.12.3"
#(define smalltrill '((font-relative-size . -1) (music "scripts.trill")))

ViolinoPrincipaleWinterOne =  {

\clef violin
\key f \minor
\time 4/4

\mark "A"
\relative f'' {
<<
R1*3
{ s1_"Allegro non molto" s s }
>>
bes8-.\trill \(  bes\)-.\trill bes-.\trill \(  bes\)-.\trill	bes8-.\trill \(  bes\)-.\trill bes-.\trill \(  bes\)-.\trill |
% 5
bes8-.\trill \(  bes\)-.\trill bes-.\trill \(  bes\)-.\trill	bes8-.\trill \(  bes\)-.\trill bes-.\trill \(  bes\)-.\trill |
aes8-.\trill \(  aes\)-.\trill aes-.\trill \(  aes\)-.\trill	aes8-.\trill \(  aes\)-.\trill aes-.\trill \(  aes\)-.\trill |
des,8-.\trill \(  des\)-.\trill des-.\trill \(  des\)-.\trill	des8-.\trill \(  des\)-.\trill des-.\trill \(  des\)-.\trill |
ees8-.\trill \(  ees\)-.\trill ees-.\trill \(  ees\)-.\trill	ees8-.\trill \(  ees\)-.\trill ees-.\trill \(  ees\)-.\trill |
d8-.\trill \(  d\)-.\trill d-.\trill \(  d\)-.\trill	d8-.\trill \(  d\)-.\trill d-.\trill \(  d\)-.\trill |
% 10
ees8-.\trill \(  ees\)-.\trill ees-.\trill \(  ees\)-.\trill	ees8-.\trill \(  ees\)-.\trill ees-.\trill \(  ees\)-.\trill |
d8-.\trill \(  d\)-.\trill d-.\trill \(  d\)-.\trill	d8-.\trill \(  d\)-.\trill d-.\trill \(  d\)-.\trill |
}
\mark "B"
\newSpacingSection
\override Voice.SpacingSpanner #'common-shortest-duration = #(ly:make-moment 1 8)
\relative f'' {
c32_"Solo"^\markup{\translate #'(1 . 0) "Orrido Vento"} c' c g	g ees ees c	c c' c g	g ees ees c 
c c' bes aes 	g f ees d!	c c' bes aes 	g f ees d! |
c g c ees	c g c ees	c g c ees	c g c ees
c,2\trill |
r2
ees'32 ees' ees c	c g g ees	ees ees' ees c	c g g ees |
% 15
ees ees' d! c	b! a! g f	ees ees' d! c	b! a! g f
ees c ees g	ees c ees g	ees c ees g	ees c ees g |
ees,2\trill
r2 |
g'32 g' g ees	ees c c g	g g' g ees	ees c c g
g g' f ees 	d! c b! a!	g g' f ees 	d! c b! a! |
g ees g c	g ees g c	g ees g c	g ees g c
c,4\trill r4 |
des!8-._"Tutti" \(  des\)-. des-. \(  des\)-. 	e-. \(  e\)-. e-. \(  e\)-. |
% 20
f16 \( f,-. f-.  f\)-.	f-. \( f-. f-.  f\)-.
f-. \( f-. f-.  f\)-.	f-. \( f-. f-.  f\)-. |
f-. \( f-. f-.  f\)-. 	f-. \( f-. f-.  f\)-.
f-. \( f-. f-.  f\)-. 	f-. \( f-. f-.  f\)-. |
f-. \( f-. f-.  f\)-. 	f-. \( f-. f-.  f\)-.
}
\mark "C"
\relative f' {
% "To run and stamp ones feet because of the cold"
 e16[ g'32^"Correre, e Batter li Piedi per il freddo" g g g g g ]	g16 g g g |
\noBreak
aes c, aes' c,	aes' c, aes' c,
	 des16[ des32 des des des des des ]	des16 des des des |
g des g des	g des g des
	 c16[ c32 c c c c c ]	c16 c c c |
\noBreak
% 25
f c f c	f c f c
	 bes16[ bes32 bes bes bes bes bes ]	bes16 bes bes bes |
e bes e bes	e! bes e bes
}
\relative f'' {
	f32_"Solo" e! f g	f g e! f
	g f g aes	g aes f g |
aes g aes bes	aes bes g aes
	bes aes bes c	bes c aes bes
	c8	r32 c des ees
	f c des ees	f c des ees |
f (  ees) des (  c)	f (  ees) des (  c)
	f (  ees) des (  c)	f (  ees) des (  c)
	f, ( g aes bes	c des ees  f)
	f, ( g aes bes	c des ees  f) |
des8	r32 bes c des
	ees bes c des	ees bes c des
	ees (  des) c (  bes)	ees (  des) c (  bes)
	ees (  des) c (  bes)	ees (  des) c (  bes) |
% 30
ees, ( f g aes	bes c des  ees)
	ees, ( f g aes	bes c des  ees)
	c8	r32 aes bes c
	des aes bes c	des aes bes c |
des (  c) bes (  aes)	des (  c) bes (  aes)
	des (  c) bes (  aes)	des (  c) bes (  aes)
	g bes aes g	c bes aes g
	f aes g f	bes aes g f |
e c bes c	g c bes c
	e! g f g	bes g f g 
	e! c bes c	g c bes c
	e! g f g	bes g f g |
e! bes' aes bes	e,! g f g
	bes, des c des	e,! g f g
	bes,4 r |
r32 c' bes c	aes c bes c
	f c bes c 	aes c bes c 
	a' a a a	a a a a
	a a a a		a a a a |
% 35
bes d,! c d	f d! c d
	bes d! c d	f d! c d
	b' b b b	b b b b
	b b b b		b b b b |
c ees, d! ees	g ees d! ees
	c' ees, d! ees	g ees d! c
	d! d d d	d d d d
	d d d d		d d d d |
ees g, f g	ees' g, f g 
	ees' g, f g	ees' g, f g 
	ees' ees ees ees	ees ees ees ees
	ees ees ees ees 	ees ees ees ees |
d! d d d	d d d d
	d d d d 	d d d d
	ees4 r |
r1 |
\newSpacingSection
% 40
bes8-. \(  bes\)-.	bes8-. \(  bes\)-. 
	bes8-. \(  bes\)-.	bes8-. \(  bes\)-. |
bes8-. \(  bes\)-.	bes8-. \(  bes\)-. 
	des!16-. \( des-. des-.  des\)-.	des-. \( des-. des-.  des\)-. |
c8-. \(  c\)-.	c-. \(  c\)-.
	ees16-. \( ees-. ees-.  ees\)-.	ees-. \( ees-. ees-.  ees\)-. |
d!8-. \(  d\)-. d-. \(  d\)-.
	aes'16-. \( aes-. aes-.  aes\)-.	aes-. \( aes-. aes-.  aes\)-. |
g \( ees'-| ees-|  bes\)-|	bes-| \( g-| g-|  ees\)-| 
	ees8 ( g bes  des) |
% 45
c16 \( f-| f-|  c\)-|	c-| \( a-| a-|  f\)-|
	f8 ( a! c  ees) |
d!16 \( g-| g-|  d\)-|	d-| \( b!-| b-|  g\)-|
	g8 ( b! d  f) |
}
\newSpacingSection
\mark "D"
\relative f''' {
<< \context Voice = VA { \stemUp \voiceOne
 ees32[_"Piano" ees ees ees ees ees ees ees ]
 ees[ ees ees ees ees ees ees ees ]
% d not marked natural in primo part, but is natural in 2nd violin, which plays 8va lower in this section
 d[ d d d d d d d ]		
 d[ d d d d d d d ]
  }
  \context Voice = VB { \stemDown \voiceTwo
 c32[ c c c c c c c ]
 c[ c c c c c c c ]
 c[ c c c c c c c ]
 c[ c c c c c c c ]
  } 
>> |
<< \context Voice = VA { \stemUp \voiceOne
des2:32 g2: |
g: f: |
% 50
f: ees: |
des: c:  |
bes: aes: |
g: f:  |
  }
  \context Voice = VB { \stemDown \voiceTwo
bes2:32 ~ bes: |
aes: ~ aes: |
% 50
g: c: ~ |
c4: bes2: aes4: ~ |
aes4: g2: f4: ~ |
f4: ees2: des!4: |
  }
>> |
<< \context Voice = VA { \stemUp \voiceOne
e!8:32 e: f: f: g: g: aes: aes: |  % I wish the tremelo looked better
% 55
bes: bes: aes: aes: g: g: f: f: |
e!4 s
  }
  \context Voice = VB { \stemDown \voiceTwo
c2:32 ~ c2:32 ~ | 
% 55
c1:32 |
 c16[_"Tutti" g'32 g g g g g ]	g16 g g g 
  }
>> 
aes c, aes' c,	aes' c, aes' c, |
des16[ des32 des des des des des ]	des16 des des des 
	g des g des	g des g des |
\noBreak
c16[ c32 c c c c c ]	c16 c c c
	f c f c	f c f c |
bes16[ bes32 bes bes bes bes bes ]	bes16 bes bes bes
	e!32 g bes g	e! g bes g	e! g bes g	e! g bes g |
\noBreak
% 60
aes16[ aes32 aes aes aes aes aes ]	aes16 aes aes aes
	 g16[ g32 g g g g g ]	g16 g g g |
g16[ g32 g g g g g ]	g16 g g g
\noBreak
	 f16[ aes,32 aes aes aes aes aes ]	aes16 aes aes aes |
g16[ g32 g g g g g ]	g16 g g g
	 g16[ g32 g g g g g ]	g16 g g g |
\noBreak
f1^\fermata
}
\bar "||"

}


