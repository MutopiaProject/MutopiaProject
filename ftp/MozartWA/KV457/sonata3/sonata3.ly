\include "paper20.ly"
\include "english.ly"

\header {
 title = "Piano Sonata in C minor (KV. 457)"
 subtitle = "3rd Movement"
 composer = "W.A. Mozart"
 
 mutopiatitle = "Piano Sonata KV. 457 (nr. 18)"
 mutopiacomposer = "MozartWA"
 mutopiaopus = "KV 457"
 mutopiainstrument = "Piano"
 source = "Schirmer, 1918"
 style = "Classical"
 copyright = "Public Domain"
 maintainer = "Will Oram"
 maintainerEmail = "spamguy@foxchange.com"
 maintainerWeb = "http://www.foxchange.com/~spamguy/"
 lastupdated = "2003/Oct/1"

 tagline = "\\parbox{\\hsize}{\\thefooter\\quad\\small\\noindent\\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[\\textwidth][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[\\textwidth][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}"
 footer = "Mutopia-2003/10/06-358"
}

stemExtend = \once \property Voice.Stem \override #'length  = #20

\version "1.9.8"

upper = \notes\relative c'' {
	\time 3/4
	\key c \minor
	\property Voice.TextScript \override #'padding = #2
	\property Voice.DynamicText \override #'padding = #3.5
	\property Voice.TextScript \override #'font-magnification = #1.2
	\property Voice.sparseTies = ##t
	
	% 0
	\partial 4*1 g'4_>-\p-~-(^\markup {
		\translate #(cons -6 1)
		\translate #(cons 0 -1) { \large "Allegro assai (" }
		\magnify #.8 { \note #1 #1 #1 }
		\large " = 66)" }
	
	g eflat c-~
	
	c b-.-) aflat'_>-~-(
	
	aflat g f-~

	f eflat-.-) g_>-~-(
		
	% 5
	g-\< c bflat!-~
	
	bflat aflat g-~
	
	g f-\! fsharp-~-\>
	\break
	
	fsharp g-.-)-\! g,->-\p-~-(
	
	g eflat c-~
	
	% 10
	c b-.-) aflat'^>-~-(
	
	aflat g f!-~
	
	f e-.-) dflat'_>-\mf-~-(
	
	dflat c-\> bflat
	
	aflat g fsharp-\!
	
	% 15
	< eflat g >-)-( < c eflat >-\p < b d >
	\break
	
	c-) r f'16-\f-( eflat d c
	
	g'4-.-) < g, g' >-. < g g' >-.
	
	< g g' >2 f'16-( eflat d c
	
	g'4-.-) < g, g' >-. < g g' >-.
	
	% 20
	< g g' >2 f'16-( eflat d c-)
	
	< b d aflat' >4-\arpeggio-\staccatissimo-\fz r r
	\break
	
	< c eflat g >4-\arpeggio-\staccatissimo-\fz r r
	
	r-\ff < d f b >4-\arpeggio-\staccatissimo < f b d >4-\arpeggio-\staccatissimo
	
	< g d' f >4-\arpeggio-\staccatissimo r r
	
	% 25
	R2.^\fermataMarkup
	
	eflat2._>-\p-(
	
	fsharp,
	
	g4.-\> aflat8 g4-)-\!
	
	\grace < eflat g >8-( < d f >4-.-)-( < c eflat >-. < b d >-.
	
	% 30
	c-.-) r f'16-\f-( eflat d c
	
	g'4-.-) < g, g' >-. < g g' >-.
	
	< g g' >2 f'16-( eflat d c
	
	g'4-.-) < g, g' >-. < g g' >-.
	
	< g g' >2 f'16-( eflat d c-)
	
	% 35
	< b d aflat' >4-\arpeggio-\staccatissimo-\fz r r
	
	< c eflat g >4-\arpeggio-\staccatissimo-\fz r r
	\break
	
	r-\ff < d f b >4-\arpeggio-\staccatissimo < f b d >4-\arpeggio-\staccatissimo
	
	< g d' f >4-\arpeggio-\staccatissimo r r
	
	R2.^\fermataMarkup
	
	% 40
	eflat2._>-\p-(
	
	fsharp,
	
	g4.-\> aflat8 g4-)-\!
	
	\grace < eflat g >8-( < d f >4-.-)-( < c eflat >-. < b d >-.
	
	c-.-) r r
	
	% 45
	d2.-\fermata
	\break
	
	R2.
	
	r4^\p_\markup { \italic { con espress. } } bflat'4-.-~ bflat-.
	
	bflat4.-\turn-( c8 bflat4-)
	
	aflat'2_>-( d,4-)
	
	% 50
	f2-(-\> eflat4-)-\!
	
	r bflat4-.-~ bflat-.
	
	a8-[-(-\< bflat c dflat d eflat-]-\!
	\break
	
	e-[_\markup { \italic cresc. } f fsharp g aflat! d,-]-)
	
	f2-(-\> eflat!4-)-\!
	
	% 55
	r eflat-.-\<-~ eflat-.-\!
	
	eflat4.-\f-( \times 2/3 { f16-[ eflat d-] } eflat8-.-)-[ f-.-]
	
	gflat2-( a,4
	
	bflat-) r8 bflat-\p-[-( a bflat-]
	\break
	
	b-[-\< c dflat d-\! eflat-\> a,-]
	
	% 60
	bflat4-)-\! r8 \slurUp bflat,-\p-[-( a  bflat-]
	
	b-[-\< c dflat d-\! eflat-\> a,-]
	
	bflat4-)-\! \slurBoth r8 a''-[-( bflat a-]
	
	bflat4-) r8 a,-[-( bflat a-]
	
	bflat4-)
	\clef "bass"
	r8-\< a,-[-( bflat a-]
	
	% 65
	bflat4-) r8 a,-[-( bflat a-]
	
	bflat-[ b c-.-) bflat!-. aflat-. g-.-]
	
	R2.-\!
	
	R2.
	
	\clef "treble"
	< eflat''' eflat' >2._>-\f-~
	
	% 70
	< eflat eflat' >4-.-( < b b' >-. < c c' >-.-)
	
	< e, e' >-.-(-\> < f f' >-. < aflat aflat' >-.-)-\!
	
	eflat'!2.-~-\p
	\break
	
	eflat2-( << { g8 f } \\ { d4 } >>
	
	eflat-\fp-) r8 eflat-.-[ d-. eflat-.-]
	
	% 75
	e-\fp-( f-.-) r f-.-[ e-. f-.-]
	
	fsharp-\fp-( g-.-) r g-.-[ fsharp-. g-.-]
	
	g-\fp-( aflat-.-) r aflat-.-[ g-. aflat-.-]
	
	bflat-\fp-[-( g eflat'-.-) eflat-. eflat-. eflat-.-]
	
	r-\p f,-[-( c'-.-) c-. c-. c-.-]
	 \break
	 
	% 80
	r eflat,-[-( bflat'-.-) bflat-. bflat-. bflat-.-]
	 
	r aflat,-[-( d-.-) d-. d-. d-.-]
	 
	< g, bflat eflat >4-\fp r8 eflat-.-[ d-. eflat-.-]
	
	e-\fp-( f-.-) r f-.-[ e-. f-.-]
	
	fsharp-\fp-( g-.-) r g-.-[ fsharp-. g-.-]
	
	% 85
	g-\fp-( aflat-.-) r aflat-.-[ g-. aflat-.-]
	
	bflat-\fp-[-( g eflat'-.-) eflat-. eflat-. eflat-.-]
	
	r-\p f,-[-( c'-.-) c-. c-. c-.-]
	\break
	 
	r eflat,-[-( bflat'-.-) bflat-. bflat-. bflat-.-]
	 
	\clef "bass"
	r aflat,-[-( d-.-) d-. d-. d-.-]
	 
	 % 90
	< g, eflat' >-.-\fp-[-( bflat g bflat g bflat-]-)
	 
	aflat-[ bflat aflat bflat aflat bflat-]
	 
	g-[ bflat g bflat g bflat-]
	 
	aflat-[ bflat aflat bflat aflat bflat-]
	\break
	 
	g-[ bflat g bflat g bflat-]
	
	% 95
	aflat-[ bflat aflat bflat aflat bflat-]
	
	g4.-\mf-( bflat8-[ eflat bflat-]
	
	\clef "treble"
	g'8-[ eflat bflat' g eflat' g,-]-)
	
	f-[-(_\markup { \italic { sempre cresc. } } c a' f c' a-]
	
	f'-[ c a' f c' a-]-)
	
	% 100
	\slurUp aflat,!-[-( f b aflat d b-]
	\break
	
	f'-[ d aflat'! f d' aflat-]
	
	f'4-.-\f-) r r
	
	\slurBoth
	r r g,4_>-\p-~-(
	
	g eflat c-~
	
	% 105
	c b-.-) aflat'_>-~-(
	
	aflat g f-~

	f eflat-.-) g_>-~-(
		
	g-\< c bflat-~
	
	bflat aflat g-~
	
	% 110
	g f-\! fsharp-~-\>
	\break
	
	fsharp g-.-)-\! g,->-\p-~-(
	
	g eflat c-~
	
	c b-.-) aflat'^>-~-(_\markup { \italic cresc. }
	
	aflat g f-~
	
	% 115
	f e-.-) dflat'_>-\mf-~-(
	
	dflat c-\> bflat
	
	aflat g fsharp

	< eflat g >-)-(-\! < c eflat >-\p < b d >
	
	c-) r f'16-\f-( eflat d c
	\break
	
	% 120
	g'4-.-) < g, g' >-. < g g' >-.
	
	< g g' >2 f'16-( eflat d c
	
	g'4-.-) < g, g' >-. < g g' >-.

	< g g' >2 f'16-( eflat d c-)
	
	< b d aflat' >4-\arpeggio-\staccatissimo-\fz r r
	
	% 125
	< c eflat g >4-\arpeggio-\staccatissimo-\fz r r
	
	r-\ff < d f b >4-\arpeggio-\staccatissimo < f b d >4-\arpeggio-\staccatissimo
	\break
	
	< g d' f >4-\arpeggio-\staccatissimo r r

	R2.^\fermataMarkup
	
	eflat2.->-\p-(
	
	% 130
	fsharp,
	
	g4.-\> aflat8 g4-)-\!
	
	\grace < eflat g >8-( < d f >4-.-)-( < c eflat >-. < b d >-.

	c-.-) r f'16-\f-( eflat d c
	
	g'4-.-) < g, g' >-. < g g' >-.
	
	% 135
	< g g' >2 f'16-( eflat d c
	\break
	
	g'4-.-) < g, g' >-. < g g' >-.
	
	< g g' >2 f'16-( eflat d c-)

	< b d aflat' >4-\arpeggio-\staccatissimo-\fz r r
	
	< c eflat g >4-\arpeggio-\staccatissimo-\fz r r
		
	% 140
	r-\ff < d f b >4-\arpeggio-\staccatissimo < f b d >4-\arpeggio-\staccatissimo

	< g d' f >4-\arpeggio-\staccatissimo r r
	
	R2.^\fermataMarkup
	
	r4-\ff < g, bflat e >-\arpeggio-\staccatissimo < bflat e g >-\arpeggio-\staccatissimo
	
	< dflat g bflat >4-\arpeggio-\staccatissimo r r
	
	% 145
	R2.^\fermataMarkup
	\break
	
	R2.
	
	R2.
	
	c4--_\markup { \italic { un poco espress. } } r r
	
	c-- r r8 c8-(
	
	% 150
	dflat2-\> c4-)-\!
	
	r r r8 c'-(
	
	dflat2-\> c4-)-\!
	
	R2.
	
	d,,4-\staccatissimo-\f < a' c fsharp >-\arpeggio-\staccatissimo < c fsharp a >-\arpeggio-\staccatissimo

	% 155
	< eflat a c >-\arpeggio-\staccatissimo r r
	
	R2.^\fermataMarkup
	\break
	
	R2.
	
	R2.
	
	d4-- r r
	
	% 160
	d-- r r8 d8-(
	
	eflat2-\> d4-)-\!
	
	r r r8 d'-(
	
	eflat2-\> d4-)-\!
	
	r r r8 < g,, g' >8-\fp-(
	
	% 165
	< aflat! aflat'! >2.
	
	< g g' >4-) r r
	
	
	
	R2.
	
	r4-\mp g4-.-~ g-.
	
	g4.-(^\markup { 
		\translate #(cons 5 -7)
		{ \column < \musicglyph #"scripts-turn"
		\magnify #0.7 \musicglyph #"accidentals-1" > } }
	aflat8 g4-)
	
	% 170
	f'2_>-( b,4-)
	
	d2-(-\> c4-)-\!
	
	r g'4-.-~ g-.
	
	fsharp8-[-(-\< g aflat g f eflat-]-\!
	
	d-[ c b d f-\> b,-]-)

	% 175
	d2-( c4-\p-)-\!
	
	r c-.-~_\markup { \italic cresc. } c-.
	
	c4.-( \times 2/3 { d16-[ c b-] } c8-.-)-[ d-.-]
	
	eflat2-\f-(-\> fsharp,4
	
	g-)-\! r8 g-\p-[-( fsharp g-]
	
	% 180
	aflat-[-\< a bflat b-\! c-\> fsharp,-]
	
	g4-)-\! r8
	\clef "bass"
	g,-\p-[-( fsharp g-]
	
	aflat-[-\< a bflat b-\! c-\> fsharp,-]
	
	g4-)-\!
	\clef "treble"
	r8 fsharp''-\p-[-( g fsharp-]
	
	g4-) r8 fsharp,-[-( g fsharp-]
	
	% 185
	g4-)
	\clef "bass"
	r8 fsharp,-[-( g fsharp-]
	\break
	
	\property Voice.Slur \override #'beautiful = #'5
	g4-) r8 fsharp,-\f-[-( g fsharp-]
	
	g
	\translator Staff = "down"
	d8-[ eflat^\> b c fsharp,-]^\!
	
	g-\mf-[ fsharp g fsharp g fsharp-]
	
	g-.-)-[^\< b-. d-. g-. b-. d-.-]
	
	% 190
	\translator Staff = "up"
	\clef "treble"
	g-.-[ b-. d-. g-. b-. d-.-]^\!
	
	\property Voice.Slur \revert #'beautiful
	< f! f'! >2.-^-\ff
	
	< b, b' >-^-~
	\break
	
	\stemDown
	< b b' >4-( < c c' >-.-) < e, e' >-~-(
	
	< e e' >_> < f f' >-.-) fsharp'_>-\p-~-(
	
	% 195
	fsharp g-.-) < c, a' >-.
	
	<< { c2-( eflat8 d c4-\fp-) }
	\\
	{ g2 b4 c } >>
	\stemBoth
	r8 c-.-[ b-. c-.-]
	
	csharp-\fp-( d-.-) r d-.-[ csharp-. d-.-]
	
	dsharp-\fp-( e-.-) r e-.-[ dsharp-. e-.-]
	
	% 200
	e-\fp-( f-.-) r f-.-[ e-. f-.-]
	\break
	
	g-\fp-[-( c, c'-.-) c-. c-. c-.-]
	
	r-\p d,-[-( aflat'-.-) aflat-. aflat-. aflat-.-]
	
	r c,-[-( g'-.-) g-. g-. g-.-]
	
	r f,-[-( b-.-) b-. b-. b-.-]
	
	% 205
	< eflat, c' >4-\fp r8 c-.-[ b-. c-.-]
	
	csharp-\fp-( d-.-) r d-.-[ csharp-. d-.-]
	
	dsharp-\fp-( e-.-) r e-.-[ dsharp-. e-.-]
	\break
	
	e-\fp-( f-.-) r f-.-[ e-. f-.-]
	
	f-\fp-( fsharp-.-) r fsharp-.-[ esharp-. fsharp-.-]
	
	% 210
	fsharp-\fp-( g-.-) r g-.-[ fsharp-. g-.-]
	
	a4-( c eflat_>-)-~
	
	eflat-( d c-)-~
	
	c-( b-) f'_>-~
	
	f-( d b'_>-)-~
	
	% 215
	b-( f d'_>-)-~
	
	d-( b f'_>-)-~
	\break
		
	\property Voice.Slur \override #'beautiful = #'100
	f8-\f-[-( d b aflat! f d-]
	
	b-[ aflat f d-]
	\translator Staff = "down"
	b-[ aflat-]

	g-.-)
	\translator Staff = "up"
	g'-[-(-\> aflat a bflat b-]
	\property Voice.Slur \revert #'beautiful
	
	% 220
	c-[ d eflat e f fsharp-]-\!
	
	g4 eflat! c-~
	
	c b-.-) aflat'_>-~-(
	
	aflat g f!-~
	\break

	f eflat-.-) g_>-~-(

	% 225
	g-\< c bflat!-~
	
	bflat aflat g-~
	
	g f-\! fsharp-~-\>
	
	fsharp g-.-)-\! g,->-\p-~-(^\markup { \italic \large { a piacere (piu lento) } }
	
	g eflat c-)
	
	% 230
	c2.-\fermata-\fp-(
	
	b4-) r r
	
	r r aflat'4->-~-(
	
	aflat g f-)
	
	f2.-\fermata-\fp-(
	\break
	
	% 235
	e4-) r r
	
	r r bflat'_>-~-(_\markup { \italic cresc. }
	
	bflat aflat g-)
	
	g2.-\fermata-\fp-(
	
	aflat4-) r r
	
	% 240
	r r b^>-~-(_\markup { \italic { piu cresc. } }
	
	b c d-)
	
	d2.-\fermata-\f-(
	\break
	
	\grace f8 eflat4-\p-) r r

	r r c-.-\pp
	
	% 245
	\grace d8-( c4-)-(-\> b c-\!
	
	g-.-) r r
	
	\clef "bass"
	< f, b >-. r r
	
	< eflat c >-. r
	\clef "treble"
	f''16-\f-( eflat d c

	g'4-.-) < g, g' >-. < g g' >-.
	
	< g g' >2 f'16-( eflat d c
	
	g'4-.-) < g, g' >-. < g g' >-.

	< g g' >2 f'16-( eflat d c-)
	\break
	
	< b d aflat' >4-\arpeggio-\staccatissimo-\fz r r

	< c eflat g >4-\arpeggio-\staccatissimo-\fz r r
	
	r-\ff < d f b >4-\arpeggio-\staccatissimo < f b d >4-\arpeggio-\staccatissimo

	< g d' f >4-\arpeggio-\staccatissimo r r

	R2.^\fermataMarkup
	
	eflat2.->-\p-(

	fsharp,
	
	g4.-\> aflat8 g4-)-\!
	
	\grace < eflat g >8-( < d f >4-.-)-( < c eflat >-. < b d >-.

	c-.-) r f'16-\f-( eflat d c
	
	g'4-.-) < g, g' >-. < g g' >-.
	\break

	< g g' >2 f'16-( eflat d c

	g'4-.-) < g, g' >-. < g g' >-.
	
	< g g' >2 f'16-( eflat d c-)

	< b d aflat' >4-\arpeggio-\staccatissimo-\fz r r
	
	< c eflat g >4-\arpeggio-\staccatissimo-\fz r r

	r-\ff < d f b >4-\arpeggio-\staccatissimo < f b d >4-\arpeggio-\staccatissimo

	< g d' f >4-\arpeggio-\staccatissimo r r
	
	R2.^\fermataMarkup
	\break
	
	r4-\ff < g, bflat! e >-\arpeggio-\staccatissimo < bflat e g >-\arpeggio-\staccatissimo
	
	< dflat g bflat! >4-\arpeggio-\staccatissimo r r

	R2.^\fermataMarkup
	
	R2.
	
	R2.
	
	c4-- r r
	
	c-- r r8 c8-(

	dflat2-\> c4-)-\!
	
	r r r8 c'-(
	\break
	
	dflat2-\> c4-)-\!
	
	r r r8 c,,8-(
	
	dflat2-\> c4-)-\!
	
	r-\< r r8 c''-(-\!
	
	c,2.-\f-)
	
	\grace eflat8-( d2.-\trill-)-( \bar "" \grace { c16-[ d-]-) } \bar "|"
	
	\slurUp
	c8-.-[ g-\p-( eflat g eflat g-]
	
	f-[ g f g f g-]
	\break
	
	\clef "bass"
	eflat-.-)-[_\markup { \italic cresc. } c-( g c eflat, g-]
	
	\slurBoth
	f-[ g f g f g-]-)
	
	eflat-[-( g eflat g eflat g-]-)
	
	f-[-( g f g f g-]-)
	
	eflat-\f-[-( g eflat g eflat g-]-)
	
	e-[-( c' e, c' e, c'-]-)
	\break
	
	f,-[-( c' f, c' f, c'-]-)
	
	g-[-(_\markup { \italic decresc. } b g b g b-]-)
	
	aflat-[-( c aflat c aflat c-]-)
	
	f,-[-( aflat f aflat f aflat-]-)
	
	g-[-( eflat' g, eflat' g, eflat'-]-)
	
	g,-[-( d' g, d' g, d'-]
	\break
	
	aflat2.-)-\<
	
	\clef "treble"
	c''2.-(
	
	eflat_>-\f-)-\!
	
	\clef "bass" \slurUp
	fsharp,,,,2.^>-(
	
	g
	
	aflat-\>
	\break
	
	f!
	
	g
	
	c,4-\p-)-\! r r
	
	\clef "treble" \slurBoth
	r g''''8-\mf-[-( a b g-]
	
	c4-) c,8-[-( d eflat c-]
	
	g'4-) b,8-[-( c d b-]
	
	c4-) r r
	
	\clef "bass"
	r g,,8-[-( a b g-]
	
	c4-) c,8-[-( d eflat c-]
	
	g'4-) g,8-[-( a b g-]
	
	c4-) r r
	
	\clef "treble"
	< g''' c eflat g >-\ff r r
	
	< c eflat g c > r r
	
	\bar "|."
		}
	
	%%%%%%%%%% BASS STAVE %%%%%%%%%%

lower = \notes\relative c, {
	\time 3/4
	\key c \minor
	\property Voice.sparseTies = ##t
	
	\partial 4*1 r4
	
	\clef "treble"
	< c'' eflat >2.-\p-(
	
	< d f >-)
	
	< b d >-(
	
	< c g' >-)
	
	<< { \stemUp g'2.-(
	aflat2 bflat4
	c2.-~
	c4 b-.-) } \\
	{ \stemDown eflat,2 e4
	f2 g4
	aflat2 a4
	g2 } >>
	r4
	
	\clef "bass"
	< c,, eflat >2.-(
	
	< d f >-)
	
	< b d >-(
	
	< bflat! dflat >-)
	
	<< { g'2 c4-~
	c2. } \\
	{ e,2.-(
	
	f4 g aflat
	
	g-) } >> r4 < g, f' >-(
	
	
	\stemUp < c eflat >-) r \stemBoth
	\property Voice.DynamicText \set #'transparent = ##t
	r-\f
	
	<< { d'4 eflat f
	eflat eflat eflat } \\
	
	{ b8-[-( g c g d' g,-]
	c-[ g c g c g-]-) } >>
	
	<< { d'4 eflat f } \\ { b,8-[ g c g d' g,-] } >>
	
	<< { eflat'4 eflat eflat } \\ { c8-[ g c g c g-] } >>
	
	r4 < f, f' >4-\staccatissimo < f' f' >-\staccatissimo
	
	r4 < eflat, eflat' >-\staccatissimo < eflat' eflat' >-\staccatissimo
	
	< d d' >-\staccatissimo r r
	
	< b b' >-\staccatissimo r r
	
	R2.^\fermataMarkup
	
	R2.
	
	< c' eflat >2.-\p-(
	
	< b d f! >2 < c eflat >4-)
	
	f, g g,
	
	c r r-\f
	
	<< { d'4 eflat f
	eflat eflat eflat } \\
	
	{ b8-[-( g c g d' g,-]
	c-[ g c g c g-]-) } >>
	
	<< { d'4 eflat f } \\ { b,8-[ g c g d' g,-] } >>
	
	<< { eflat'4 eflat eflat } \\ { c8-[ g c g c g-] } >>
	
	r4 < f, f' >4-\staccatissimo < f' f' >-\staccatissimo
	
	r4 < eflat, eflat' >-\staccatissimo < eflat' eflat' >-\staccatissimo
	
	< d d' >-\staccatissimo r r
	
	< b b' >-\staccatissimo r r
	
	R2.^\fermataMarkup
	
	R2.
	
	\property Voice.DynamicText \set #'transparent = ##f
	< c' eflat >2.-\p-(
	
	< b d f >2 < c eflat >4-)
	
	f, g g,
	
	c r r
	
	% 45
	<< { \stemExtend < f aflat bflat! >2. } \\
	{ < bflat,,! bflat'! >2.-\fermata^\f } >>
	
	eflat'8^\p-[-( g bflat g bflat g-]-)
	
	eflat-[ g bflat g bflat g-]
	
	eflat-[ f aflat f aflat f-]
	
	eflat-\sustainDown-[ f aflat f aflat-\sustainUp f-]
	
	% 50
	eflat-\sustainDown-[ g bflat g bflat-\sustainUp g-]
	
	eflat-[ g bflat g bflat g-]
	
	eflat-[ f aflat f aflat f-]
	
	eflat!-[ f aflat f aflat f-]
	
	eflat-\sustainDown-[ g bflat g bflat-\sustainUp g-]
	
	% 55
	eflat-[ g bflat g bflat g-]
	
	c,-[ eflat a eflat a eflat-]
	
	cflat-\sustainDown-[ eflat gflat eflat gflat-\sustainUp eflat-]
	
	< bflat d >4 bflat' r
	
	r r < cflat eflat >-(
	
	% 60
	< bflat d >-) bflat, r
	
	r r < cflat eflat >-(
	
	< bflat d >-) bflat, r
	
	r bflat'' r
	
	r bflat, r
	
	% 65
	r bflat, r
	
	R2.
	
	f'8-.-[ eflat-. d-. c-. bflat-. aflat-.-]
	
	g2.^\f
	
	g'^>-(
	
	% 70
	aflat-)
	
	< aflat' c >
	
	r4 r
	\clef "treble"
	% 72 / 73
	<< { gflat'-(
	g!2-\sustainDown aflat!4-\sustainUp-) } \\
	{ a,4-( bflat2.-) } >>

	\clef "bass"
	eflat,8-[ bflat' g bflat eflat, bflat'-]
	
	% 75
	d,-[ bflat' aflat bflat d, bflat'-]
	
	dflat,-[ bflat' eflat, bflat' dflat, bflat'-]
	
	c,-[ aflat' eflat aflat c, aflat'-]
	
	g,4 r r

	< aflat' f' > r r
		
	% 80
	< bflat g' > r r
	
	< bflat f' > r r
	
	eflat,8-[ bflat' g bflat eflat, bflat'-]
	
	d,-[ bflat' aflat bflat d, bflat'-]

	dflat,-[ bflat' eflat, bflat' dflat, bflat'-]
		
	% 85
	c,-[ aflat' eflat aflat c, aflat'-]
	
	g,4 r r
	
	< aflat f' > r r
	
	< bflat g' > r r

	< bflat f' > r r
		
	% 90
	eflat r r
	
	bflat-( c d
	
	eflat-) r r
	
	\clef "treble"
	bflat''-( c d

	eflat-) r r
		
	% 95
	bflat'-( c d
	
	eflat-\sustainDown-) r r
	
	R2.
	
	\clef "bass"
	< eflat,,,, f a >2.^>-\sustainUp-\sustainDown

	< eflat' f a >2.^>-\sustainUp-\sustainDown
		
	% 100
	< d f b >2.^>-\sustainUp-\sustainDown
	
	< c d aflat' >2.^>-\sustainUp-\sustainDown
	
	< b d g >4-.-\sustainUp r r
	
	R2.

	\clef "treble"
	< c' eflat >2.-\p-(
		
	% 105
	< d f >-)
	
	< b d >-(
	
	< c g' >-)
	
	<< { \stemUp g'2.-(
	aflat2 bflat!4
	c2.-~
	c4 b-.-) } \\
	{ \stemDown eflat,2 e4
	f2 g4
	aflat2 a4
	g2 } >>
	r4
	
	\clef "bass"
	< c,, eflat >2.-(
	
	< d f >-)
	
	< b d >-(
	
	< bflat! dflat >-)
	
	<< { g'2 c4-~
	c2. } \\
	{ e,2.-(
	
	f4 g aflat
	
	g-) } >> r4 < g, f' >-(
	
	\stemUp < c eflat >-) r \stemBoth
	\property Voice.DynamicText \set #'transparent = ##t
	r-\f
	
	<< { d'4 eflat f
	eflat eflat eflat } \\
	
	{ b8-[-( g c g d' g,-]
	c-[ g c g c g-]-) } >>
	
	<< { d'4 eflat f } \\ { b,8-[ g c g d' g,-] } >>
	
	<< { eflat'4 eflat eflat } \\ { c8-[ g c g c g-] } >>
	
	r4 < f, f' >4-\staccatissimo < f' f' >-\staccatissimo
	
	r4 < eflat, eflat' >-\staccatissimo < eflat' eflat' >-\staccatissimo
	
	< d d' >-\staccatissimo r r
	
	< b b' >-\staccatissimo r r
	
	R2.^\fermataMarkup
	
	R2.
	
	< c' eflat >2.-\p-(
	
	< b d f! >2 < c eflat >4-)
	
	f, g g,
	
	c r r-\f
	
	<< { d'4 eflat f
	eflat eflat eflat } \\
	
	{ b8-[-( g c g d' g,-]
	c-[ g c g c g-]-) } >>
	
	<< { d'4 eflat f } \\ { b,8-[ g c g d' g,-] } >>
	
	<< { eflat'4 eflat eflat } \\ { c8-[ g c g c g-] } >>
	
	r4 < f, f' >4-\staccatissimo < f' f' >-\staccatissimo
	
	r4 < eflat, eflat' >-\staccatissimo < eflat' eflat' >-\staccatissimo
	
	< d d' >-\staccatissimo r r
	
	< b b' >-\staccatissimo r r
	
	R2.^\fermataMarkup
	
	< dflat dflat' >4-\staccatissimo < bflat! bflat'! >-\staccatissimo < g g' >-\staccatissimo
	
	< e e' >-\staccatissimo r r
	
	R2.^\fermataMarkup
	
	f'4^\p-( aflat c
	
	e, g bflat-)
	
	f4 aflat c
		
	e, g bflat
	
	f4 aflat c
	
	e, g bflat
	
	f4 aflat c
	
	eflat, g bflat
	
	d,-\staccatissimo < c c' >-\staccatissimo < a a' >-\staccatissimo
	
	< fsharp fsharp' >-\staccatissimo r r
	
	R2.
	
	g'4^\p-( bflat! d
	
	fsharp, a c-)
	
	g4 bflat d
	
	fsharp, a c
	
	g4 bflat d
	
	fsharp, a c
	
	g4 bflat d
	
	g,4 bflat d
	
	< b d f >2.-\sustainDown-~
	
	< b d f >4-\sustainUp r r
	
	c,8^\p-[-( eflat g eflat g eflat-]-)
	
	\stemDown
	c-[ eflat g eflat g eflat-]
	
	c-[ d f d f d-]
	
	% 170
	c-[ d f d f d-]
	
	c-[ eflat g eflat g eflat-]
	
	c-[ eflat g eflat g eflat-]
	
	c-[ d f! d f d-]
	
	c-[ d f d f d-]
	
	% 175
	c-[ eflat g eflat g eflat-]
	
	bflat-[ e g e g e-]
	
	a,-[ c f c f c-]
	
	\stemBoth
	aflat!-[ c eflat! c eflat c-]
	
	< g b >4 g' r
	
	% 180
	r r < aflat c >-(

	< g b >-) g, r
	
	r r < aflat c >-(
	
	< g b >-) g, r
	
	r g'' r
	
	% 185
	r g, r

	r g, r
	
	r8
	\translator Staff = "up"
	r8 r4 r
	
	R2.
	
	R2.
		
	% 190
	\translator Staff = "down"
	R2.

	r4 < aflat aflat' >-. < aflat' aflat' >->-~
	
	< aflat aflat' >-( < g g' >-.-) < f f' >-.
	
	< e e' >2 < bflat'! bflat'! >4-(
	
	< a a' >2-) aflat'4-(
	
	% 195
	g2-) < fsharp eflat'! >4-.
	
	<< { eflat'2-\sustainDown-( f!4-\sustainUp-) } \\ { g,2. } >>

	c,8-[-( g' eflat g c, g'-]-)
	
	b,-[ g' f g b, g'-]
	
	bflat,-[ g' c, g' bflat, g'-]
	
	% 200
	aflat,-[ f' c f aflat, f'-]
	
	eflat,4 r r
	
	< f' d' > r r
	
	< g eflat' > r r
	
	< g d' > r r
	
	% 205
	c,8-[-( g' eflat g c, g'-]-)
	
	b,-[ g' f g b, g'-]
	
	bflat,!-[ g' c,! g' bflat, g'-]
	
	a,-[ f' c f a, f'-]
	
	aflat,!-[ eflat' c eflat aflat, eflat'-]
	
	% 210
	g,-[ eflat' c eflat g, eflat'-]
	
	fsharp,2.-.-(
	
	fsharp'-.-)
	
	< g d' f! >
	
	< aflat! d f >
	
	% 215
	< g d' f >
	
	< aflat d f >
	
	< g d' f >4-.-\sustainDown r r
	
	r-\sustainUp r
	\translator Staff = "up"
	\clef "treble"
	\once \property Voice.Rest \override #'staff-position = #5
	r
	
	r8
	\translator Staff = "down"
	\clef "bass"
	r8 r4 r
	
	% 220
	R2.
	
	\clef "treble"
	< c eflat >2.-\p-(
		
	< d f >-)
	
	< b d >-(
	
	< c g' >-)
	
	<< { \stemUp g'2.-(
	aflat2 bflat4
	c2.-~
	c4 b-.-) } \\
	{ \stemDown eflat,2 e4
	f2 g4
	aflat2 a4
	g2 } >>
	r4
	
	\clef "bass"
	< eflat, g >2.
	
	< d f aflat! >-\fermata-\sustainDown-~
	
	< d f aflat >4-\sustainUp r r
	
	R2.
	
	< b d >2.
	
	< bflat! dflat g >2.-\fermata-\sustainDown-~
	
	% 235
	< bflat dflat g >4-\sustainUp r r

	R2.
	
	< e c' >2.
	
	< f c' >-\fermata-\sustainDown-~
	
	< f c' >4-\sustainUp r r
		
	% 240
	R2.

	< f aflat >2.
	
	< fsharp a >-\fermata-\sustainDown-~
	
	< fsharp a >4-\sustainUp r r
	
	R2.
	
	% 245
	< a eflat' fsharp >2.-(
	%%% NOTE: Don't know what to do about the measure rest that pops up here...
	
	< g eflat' >4-.-) r r
	
	< g, d' >-. r r
	
	< c, c' >-. r r
	
	<< { d''4 eflat f
	eflat eflat eflat } \\
	
	{ b8-[-( g c g d' g,-]
	c-[ g c g c g-]-) } >>
	
	<< { d'4 eflat f } \\ { b,8-[ g c g d' g,-] } >>
	
	<< { eflat'4 eflat eflat } \\ { c8-[ g c g c g-] } >>
	
	r4 < f, f' >4-\staccatissimo < f' f' >-\staccatissimo
	
	r4 < eflat, eflat' >-\staccatissimo < eflat' eflat' >-\staccatissimo
	
	< d d' >-\staccatissimo r r
	
	< b b' >-\staccatissimo r r
	
	R2.^\fermataMarkup
	
	R2.
	
	< c' eflat >2.-\p-(
	
	< b d f! >2 < c eflat >4-)
	
	f, g g,
	
	c r r-\f
	
	<< { d'4 eflat f
	eflat eflat eflat } \\
	
	{ b8-[-( g c g d' g,-]
	c-[ g c g c g-]-) } >>
	
	<< { d'4 eflat f } \\ { b,8-[ g c g d' g,-] } >>
	
	<< { eflat'4 eflat eflat } \\ { c8-[ g c g c g-] } >>
	
	r4 < f, f' >4-\staccatissimo < f' f' >-\staccatissimo
	
	r4 < eflat, eflat' >-\staccatissimo < eflat' eflat' >-\staccatissimo
	
	< d d' >-\staccatissimo r r
	
	< b b' >-\staccatissimo r r
	
	R2.^\fermataMarkup
	
	< dflat dflat' >4-\staccatissimo < bflat! bflat'! >-\staccatissimo < g g' >-\staccatissimo
	
	< e e' >-\staccatissimo r r
	
	R2.^\fermataMarkup
	
	f'4^\p-( aflat c
	
	e, g bflat-)
	
	f4 aflat c
		
	e, g bflat
	
	f4 aflat c
	
	e, g bflat
	
	f4 aflat c
	
	e, g bflat
	
	f aflat f
	
	fsharp a eflat'
	
	g,-( c eflat-)
	
	g,-( b f'
	
	< c eflat >-.-) r r
	
	g-( a b
	
	c-.-) r r
	
	\clef "treble"
	g'-( a b
	
	c-.-) r r
	
	g'-( a b
	
	c2._>
	
	bflat_>
	
	aflat!_>
	
	f_>
	
	eflat_>
	
	dflat_>
	
	c_>
	
	b_>-)
	
	eflat,8-[-( c' eflat, c' eflat, c'-]
	
	eflat,-[ c' eflat, c' eflat, c'-]
	
	eflat,-[ c' eflat, c' eflat, c'-]
	
	eflat,-[ c' eflat, c' eflat, c'-]
	
	eflat,-[ c' eflat, c' eflat, c'-]
	
	eflat,-[ c' eflat, c' eflat, c'-]-)
	
	d,-[-( c' d, c' d, c'-]
	
	d,-[ b' d, b' d, b'-]
	
	eflat,-)-[ c'-( g eflat g eflat-]
	
	d_\markup { \italic { sempre \dynamic p } }-[ f g f g f-]
	
	c-)-[ eflat-( g eflat g eflat-]
	
	d-[ f g f g f-]-)
	
	c-[-( eflat g eflat g eflat-]
	
	d-[ f g f g f-]
	
	c-)-[-( eflat g eflat g eflat-]
	
	d-[ f g f g f-]
	
	< c eflat >4-) r r
	
	\clef "bass"
	< c, eflat g c > r r
	
	< c, eflat g c > r r
				}

\score {
  \context PianoStaff << 
    \context Staff = "up" <<
    	\upper
    	>>
    \context Staff = "down" <<
      \clef bass
      \lower
      >>  
  >>
  \paper { }  
  \midi { \tempo 4 = 198 }
}