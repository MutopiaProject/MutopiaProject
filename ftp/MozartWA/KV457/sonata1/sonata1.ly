\include "paper20.ly"
\include "english.ly"

\header {
 title = "Piano Sonata in C minor (KV. 457)"
 subtitle = "1st Movement"
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
 lastupdated = "2003/Oct/6"

 tagline = "\\parbox{\\hsize}{\\thefooter\\quad\\small\\noindent\\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[\\textwidth][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[\\textwidth][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}"
 footer = "Mutopia-2003/10/06-356"
}

\version "1.9.8"

upper = \notes\relative c' {
	\time 2/2
	\key c \minor
	\property Voice.TupletBracket \override #'bracket-visibility = ##f 
	\property Voice.TextScript \override #'padding = #2
	\property Voice.DynamicText \override #'padding = #3.5
	\property Voice.TextScript \override #'font-magnification = #1.2
	\property Voice.sparseTies = ##t
	
	c2^^-\f_\markup { \translate #(cons 2 1) \italic ten. }^\markup {
		\translate #(cons -6 1)
		\translate #(cons 0 -1) { \large "Molto allegro (" }
		\magnify #.8 { \note #1 #0 #1 }
		\large " = 84)" } eflat4-\staccatissimo g-\staccatissimo
	
	c-\staccatissimo eflat-\staccatissimo r8. eflat16-.-\p eflat8-(-[-\trill d16 eflat-]
	
	g4 c,-.-) c-. c-.
	
	a'-( b,-)-. b-. r
	
	% 5
	g,2^^-\f_\markup { \translate #(cons 2 1) \italic ten. } b4-\staccatissimo d-\staccatissimo
	
	g-\staccatissimo b-\staccatissimo r8. d16-.-\p d8-(-[-\trill c16 d-]
	
	f4 b,-.-) b-. b-.
	\break
	
	g'-( c,-)-. c-. r
	
	g2.-\f << { \voiceOne eflat'4-~ } \\ { g,4-\p-( } >>
		
	% 10
	<< { eflat' d2 c4-~ } \\ { fsharp,4 f e-\< eflat } >>
	
	<< { c'-( b^.-) } \\ { d,2-)-\f-\! } >> r4
	<< { g'-( } \\ { eflat-~-\p } >>
	
	<< { fsharp f e eflat } \\ { eflat d2-\< c4-~ } >>
	
	<< { d2-)-\f } \\ { c4-(-\! b^.-) } >> r < b d aflat' >->-~
	\break
	
	< b d aflat' >-( < c eflat g >-) r8. g16-[-( d'8.-.-) f16-]-(
	
	%15
	eflat16-\trill-[ d eflat f-] g4-.-) r < b, d aflat' >->-~
	
	< b d aflat' >-( < c eflat g >-)-. r8. f16-[-( b8.-.-) f'16-]-(
	
	eflat8-[-\fp g, c eflat,-]-) r f-[-(-\p aflat d,-]-)
	
	r eflat-[-( g c,-]-) r d-[-( f b,-]-)
	
	c2^^ eflat4-\staccatissimo g-\staccatissimo
	\break
	
	% 20
	c-\staccatissimo eflat-\staccatissimo r8. eflat,16-. eflat8-\trill-[-( d16 eflat-]
	
	\times 2/3 { aflat!8_>-[ bflat c-] } \times 2/3 { bflat-[ aflat g-] } \times 2/3 { f-[ g aflat-] } \times 2/3 { g-[ f eflat-] }
	
	
	\times 2/3 { d-[ eflat f-] } \times 2/3 { eflat-[ d c-] } \times 2/3 { bflat-[-\> c bflat-] } \times 2/3 { aflat-[ bflat aflat-]-\! }
	
	g4.-\mp-)-( aflat32-[ g f g-] aflat4 d,
	\break
	
	eflat8-.-[-)^\< g-.-]^\! bflat4.-(^\> a8-[^\! aflat fsharp-]
	
	% 25
	g4. aflat32-[ g f! g-] aflat4 d,
	
	eflat8-.-)-[ eflat'-\mf-(-\> d c-] bflat-[ a aflat fsharp-]-\!
	
	g4 bflat-) r8 bflat-.-[-(_\markup { \italic cresc. } bflat-. bflat-.-]-)
	
	f'_>-[-( eflat-)-] eflat4 r8 eflat-.-[-( eflat-. eflat-.-]-)
	\break
	
	eflat8-\f-[-( f16 g-] f8-.-)-[ eflat-.-] d-.-[-\> c-. bflat-. a-.-\!-]
	
	% 30
	c4-(-\> bflat-)-\! r-\p eflat8-. eflat-.
	
	bflat'4 r r eflat,8-. eflat-.
	
	bflat'4 r r eflat,8-. eflat-.
	
	bflat'4-\< eflat,8-. eflat-. bflat'4 eflat,8-. eflat-.
	
	bflat'4-.-( bflat-. bflat-. bflat-.-)-\!
	
	% 35
	bflat8-[-(-\> a aflat f-] bflat8-[ a aflat f-]-)-\!
	\break
	
	eflat4.-\p-( f16 eflat d4 eflat
	
	e2-\> f4-)-\! r
	
	\clef "bass"
	\relative c' {
	aflat4.-(^\markup { \italic cantabile } g16 aflat bflat8-[ aflat g f-]-)
	
	eflat2-(-\> d4-)-\! r
	}
	
	% 40
	\clef "treble"
	f4.-( g16 f eflat4 f
	
	fsharp2 g4-) r4
	\break
	
	\clef "bass"
	\relative c' {
	bflat4.-( a16-[ bflat-]-\> c8-[ bflat aflat g-]-)-\!
	
	f2-(-\> eflat4-)-\! r
	}
	
	\clef "treble"
	< bflat, bflat' >2^^-\mf-\< < b b' >^^
	
	% 45
	< c c' >4-\f-(-\! < dflat dflat' >-\fz-) r2
	
	r8 c'-\p-[-( bflat aflat-] g-[ f g aflat-]-)
	
	<< { eflat2.-(-\> g8-\! f-\> \stemDown eflat4-)-\! } \\ { s2. d4 } >>
	\break
	
	r8 eflat-( d-[ dflat-\< c cflat-]-\!
	%%% NOTE: I bumped beat 1 up to the previous bar. Hope you don't mind.
	
	bflat2-^-\mf-)-\< < b, b' >^^
	
	% 50
	< c c' >4-\f-(-\! < dflat dflat' >-\fz-) r2
	
	\property Voice.tupletInvisible = ##t
	\times 2/3 { c'8-\f-[ f g,-] } \times 2/3 { aflat-[ c e,-] } \times 2/3 { f-[ aflat b,-] } \times 2/3 { c-[ f g,-] }
	
	\property Voice.Slur \override #'beautiful = #'5
	\clef "bass"
	\relative c' {
	\times 2/3 { aflat-[ c e,-] } \times 2/3 { f-[ aflat b,-] } \times 2/3 { c-[ f g,-] } \times 2/3 { aflat-[ c e,-] }
	\break
	
	\translator Staff = "down"
	\clef bass
	r4 r8 c8-( aflat'-[  f c' aflat-]
	
	f'-[ c aflat' f-]
	\translator Staff = "up"
	\clef "treble"
	c'8-[ aflat f' c-]
	\property Voice.Slur \revert #'beautiful
	
	% 55
	aflat'-[ f c' aflat-] f'-[ c aflat' f-]
	
	c'4_>-) r eflat_> r
	
	r8 bflat,-\p-[-( bflat' a-] aflat-[ g-\< gflat f-]-)-\!
	
	f-(-\> eflat-)-\! eflat2-( << { g!8 f } \\ { d4 } >>
	\break
	
	eflat4-) r8 eflat-( e_>-[ f-]-) r8 f-(
	
	% 60
	fsharp_> g-) r8 g-(_\markup { \italic cresc. } bflat_>-[ aflat-]-) r8 aflat-(
	
	a bflat_>-) r bflat-( b_>-[ c-]-) r eflat
	
	eflat_>-\f-( eflat,-\> eflat2 g8 f-\!
	
	eflat-.-\f-) eflat-. eflat-\trill-[-( d16 eflat-] f8-.-)-[ f-.-] f-\trill-[-( eflat16 f-]
	\break
	
	g8-.-\f-)_\markup { \translate #(cons 2.2 0) \italic cresc. } g-. g-\trill-[-( f16 g-] aflat8-.-)-[ aflat-.-] aflat-\trill-[-( g16 aflat-]
	
	% 65
	\times 2/3 { bflat8-\ff-)-[-( c d-] } \times 2/3 { eflat-[ d c-] } \times 2/3 { bflat-[ aflat g-] } \times 2/3 { f-[ eflat d-] }
	
	c4-.-) < eflat aflat c >-. < eflat g bflat >-. < f, aflat d >-.
	
	< g eflat' >-. \times 2/3 { bflat'8_>-[-( aflat g-] } \times 2/3 { f-[ eflat d-] } \times 2/3 { eflat-[ dflat b-] }
	
	c4-.-) \times 2/3 { c'8_>-[-( bflat aflat-] } \times 2/3 { g-[ f eflat-] } \times 2/3 { d!-[ aflat' f-] }
	\break
	
	eflat4-.-) \times 2/3 { bflat8->-\mf-[-( aflat g-] } \times 2/3 { f-[ eflat d-] } \times 2/3 { eflat-[ dflat b-] }
	
	% 70
	c4-.-) \times 2/3 { c'8_>-[-( bflat! aflat-] } \times 2/3 { g-[ f eflat-] } \times 2/3 { d!-[ aflat' f-] }
	
	eflat2^^-\f-) g4-\staccatissimo bflat-\staccatissimo
	
	eflat-\staccatissimo g-\staccatissimo r8. g16-. g8-\trill-[-( f16 g-]
	
	bflat4 eflat,-.-)_\markup { \italic dim. } eflat-. eflat-.
	
	aflat-\p-( b,-) b r
	\break
	
	\bar ":|:"
	
	% 75
	c,2^^-\f e4-\staccatissimo g-\staccatissimo
	
	c-\staccatissimo e-\staccatissimo r8. g16-. g8-\trill-[-( f16 g-]
	
	\times 2/3 { bflat8_>-)-[-( c dflat-] } \times 2/3 { c-[ bflat aflat-] } \times 2/3 { g-[ aflat bflat-] } \times 2/3 { aflat-[ g f-] }
	
	\times 2/3 { e-[ g e-] } \times 2/3 { dflat-[ e dflat-] } \times 2/3 { bflat-[-\> dflat bflat-] } \times 2/3 { g-[ bflat g-]-\! }
	\break
	
	aflat4.-)-\mp-( bflat32 aflat g aflat bflat4 e,
	
	\property Voice.tupletInvisible = ##t
	
	% 80
	f8-.-) aflat-. c4.-(-\> b8-\! bflat g
	
	aflat4. bflat32 aflat g aflat bflat4 e,
	
	f8-.-)-[ f'-\mf-(-\> eflat! dflat-] c-[ b bflat g-]-)-\!
	\break
	
	aflat2^^-\f c4-\staccatissimo f-\staccatissimo
	
	aflat-\staccatissimo c-\staccatissimo r2
	
	% 85
	\times 2/3 { c8_>-[-( d eflat-] } \times 2/3 { d-[ c bflat-] } \times 2/3 { a-[ bflat c-] } \times 2/3 { bflat-[ a g-]-) }
	\break
	
	\times 2/3 { fsharp-[-( a fsharp-] } \times 2/3 { eflat-[ a eflat-] } \times 2/3 { d-[ a' d,-] } \times 2/3 { c-[ a' c,-] }
	
	bflat2^^-) d4-\staccatissimo g-\staccatissimo
	
	bflat-\staccatissimo d-\staccatissimo r2
	
	b,2^^ d4-\staccatissimo f-\staccatissimo
	
	% 90
	b-\staccatissimo d-\staccatissimo r2
	
	c,2^^ eflat4-\staccatissimo g-\staccatissimo
	
	c-\staccatissimo eflat-\staccatissimo r2
	
	< d,, d' >2_-^^ < f f' >4-\staccatissimo < g g' >-\staccatissimo
	
	< d' d' >-\staccatissimo < f f' >-\staccatissimo r2
	
	% 95
	f4-.-\p aflat-. r2
	
	d,4-. f-. r2
	
	b,4-._\markup { \italic calando } d-. d,-. f-.
	\break
	
	\clef "bass"
	< d, f aflat >1-\pp-(
	
	< d f g >4-) r4 r2-\fermata
	
	% 100
	\clef "treble"
	c'2^^-\f-1 eflat4-\staccatissimo-2 g-\staccatissimo-1
	
	c-\staccatissimo-2 eflat-\staccatissimo-4 r8. eflat16-.-\p eflat8-(-[-\trill d16 eflat-]
	\break
	
	g4 c,-.-) c-. c-.
	
	a'-( b,-)-. b-. r
	
	g,2^^-\f-1 b4-\staccatissimo-2 d-\staccatissimo-1
	
	% 105
	g-\staccatissimo-2 b-\staccatissimo-4 r8. d16-.-\p d8-(-[-\trill c16 d-]
	
	f4 b,-.-) b-. b-.
	
	g'-( c,-)-. c-. r
	
	g2.-\f << { \voiceOne eflat'4-~ } \\ { g,4-( } >>
		
	<< { eflat' d2 c4-~ } \\ { fsharp,4 f e eflat } >>
	
	% 110
	<< { c'-( b^.-) } \\ { d,2-)-\f } >> r4 << { g'-( } \\ { eflat-~-\p } >>
	\break
	
	<< { fsharp f-\< e eflat } \\ { eflat d2 c4-~ } >>
	
	<< { d2-\f-)-\! } \\ { c4-( b^.-) } >> r < b d aflat' >->-~
	
	< b d aflat' >-( < c eflat g >-) r8. g16-[-( d'8.-.-) f16-]-(

	eflat16-\trill-[ d eflat f-] g4-.-) r < b, d aflat' >->-~
	\break
	
	% 115
	< b d aflat' >-( < c eflat g >-)-. r8. f16-[-( b8.-.-) f'16-]-(
	
	eflat8-[-\fp g, c eflat,-]-) r f-[-(-\p aflat d,-]-)
	
	r eflat-[-( g c,-]-) r d-[-( f b,-]-)
	
	c2^^-\f eflat4-\staccatissimo g-\staccatissimo
	
	c-\staccatissimo eflat-\staccatissimo < c, aflat' >-\staccatissimo < eflat c' >-\staccatissimo
	\break
	
	% 120
	< aflat, f' >-\staccatissimo < c aflat' >-\staccatissimo < f, dflat' >-\staccatissimo < aflat f' >-\staccatissimo
	
	c2.-\mp-( aflat'4-)
	
	aflat4.-( f8 dflat4-) r
	
	c2-~ c8-[ aflat'-( bflat aflat-]-)

	aflat4.-( f8 dflat4-) dflat4-~
	\break
		
	% 125
	dflat8-[ b-( c d-] f!-[ eflat d c-]
	
	g'4-) r-\p r c,8-. c-.
	
	g'4 r r c,8-. c-.
	
	g'4-\< c,8 c g'4 c,8 c

	g'4-.-( g-. g-. g-.-)-\!
		
	% 130
	g8-[-(-\> fsharp f d-] g-[ fsharp f d-.-]-)-\!
	\break
	
	c4.-\p-( d16 c b4 c
	
	csharp2-\> d4-)-\! r
	
	\clef "bass"
	\relative c' {
	f,4.-( e16 f g8-[ f eflat d-]-)
	
	c2-(-\> b4-)-\! r
	}
	
	% 135
	\clef "treble"
	d4.-( eflat32 d c d eflat4 f
	\break
	
	fsharp2-\> g4-)-\! r4
	
	\clef "bass"
	\relative c' {
	g4.-( fsharp16-[ g-] aflat8-[ g f eflat-]-)
	
	d2-(-\> c4-)-\! r
	}
	
	\clef "treble"
	< c, c' >2^^-\mf-(-\< < dflat dflat' >^^-)
	
	% 140
	< c c' >4-\f-(-\! < eflat eflat' >-\fz-) r8 eflat'-\p-[-( d! c-]
	
	b_> d f,4-) r8 aflat-[-( g f-]
	
	e_> g bflat,!4-) r8 dflat-[-( c bflat-]
	
	aflat-.-)-[-\< aflat'-( g f-] eflat-[ d eflat f-]-)-\!
	
	c2.-( << { eflat8 d } \\ { b4 } >>
	
	% 145
	\slurUp
	< c, c' >2^^-\mf-)-(-\< < dflat dflat' >^^-)-\!
	
	< c c' >4-\f-(
	\slurBoth < eflat eflat' >-\fz-) r8 eflat'-\p-[-( d! c-]
	
	b^> d f,4-) r8 aflat-[-( g f-]
	
	e g bflat,4-) r8 dflat-[-(_\markup { \italic cresc. } c bflat-]-)
	
	\clef "bass"
	\times 2/3 { aflat8-\f-[-( c e,-] } \times 2/3 { f-[ aflat b,-] } \times 2/3 { c-[ f g,-] } \times 2/3 { aflat-[ c e,-] }
	\break
	
	% 150
	\property Voice.Slur \override #'beautiful = #'500
	f8-) r r4 r2

	\translator Staff = "down"
	R1	
	\break
	
	R
	
	R
	\break
	
	\translator Staff = "up"
	\clef "treble"
	r8-\p g''-[-(-\< g' fsharp-] f-[ e eflat d-]-)-\!
	\property Voice.Slur \revert #'beautiful
	
	% 155
	d-( c-) << { c2-(-\> eflat8 d-\! } \\ { s2 b4 } >>
	
	<< { c4-\p-) } \\ { c4 } >> r8 c-( csharp_>-[ d-]-) r8 d-(
	
	f_>_\markup { \italic cresc. } eflat-) r eflat-( e_>-[ f-]-) r f-(
	
	fsharp_> g-) r g-( bflat_>-[ aflat-]-) r c
	
	c-\f-(-\> c, c2 eflat8 d
	
	% 160
	c-.-\f-) c-. c-\trill-[-( b16 c-] d8-.-)-[ d-.-] d-\trill-[-( c16 d-]
	
	eflat8-.-)_\markup { \italic cresc. } eflat-. eflat-\trill-[-( d16 eflat-] f8-.-)-[ f-.-] f-\trill-[-( eflat16 f-]
	
	\times 2/3 { g8-\ff-)-[-( c bflat!-] } \times 2/3 { aflat-[ g f-] } \times 2/3 { eflat-[ d c-] } \times 2/3 { bflat-[ aflat g-] }
	
	aflat4-.-) < c f aflat >-. < c eflat g >-. < d, f b >-.
	\break
	
	< eflat c' >-. \times 2/3 { g'8_>-\f-[-( fsharp aflat-] } \times 2/3 { g-[ f eflat-] } \times 2/3 { d-[ eflat c-] }
	
	% 165
	b4-.-) \times 2/3 { f'8_>-[-( e g-] } \times 2/3 { f-[ eflat d-] } \times 2/3 { c-[ bflat! d-] }
	
	c4-.-) \times 2/3 { g'8_>-[-( fsharp aflat-] } \times 2/3 { g-[ f eflat-] } \times 2/3 { d-[ eflat c-] }
	
	\times 2/3 { aflat'-\fz-[ g f-] } \times 2/3 { eflat-[ d c-] } \times 2/3 { b-[ aflat g-] } \times 2/3 { f-[ eflat d-] }
	\bar ":|"
	\break
	
	c4-\ff-) r r2
	
	c'2_> eflat4-\staccatissimo g-\staccatissimo
	
	% 170
	c-\staccatissimo eflat-\staccatissimo r2
	
	aflat,,2_> c4-\staccatissimo eflat-\staccatissimo
	
	a-\staccatissimo c-\staccatissimo r \times 2/3 { c8-[-( eflat c-] }
	
	\times 2/3 { a-[ c a-] } \times 2/3 { fsharp-[ a fsharp-] } \times 2/3 { eflat-[ fsharp eflat-] } \times 2/3 { c-[ eflat c-] }
	
	g4-.-\f-) g'2_>-( f!16 eflat d c-)
	
	% 175
	\grace eflat8-( d1-\trill-)-(-\> \bar "" \grace { c16-[ d-]-) } \bar "|"

	\times 2/3 { r8 c-\p-[-( c'-]-) } \times 2/3 { r8 b,-[-( b'-]-) } \times 2/3 { r8 c,-[-( c'-]-) } \times 2/3 { r8 g,-\f-[-( g'-]-) }
	\break
	
	\times 2/3 { r8 aflat,-\p-[-( aflat'-]-) } \times 2/3 { r8 g,-[-( g'-]-) } \times 2/3 { r8 aflat,-[-( aflat'-]-) } \times 2/3 { r8 eflat,-\f-[-( eflat'-]-) }
	
	\times 2/3 { r8 f,-\p-[-( f'-]-) } \times 2/3 { r8 fsharp,-[-( fsharp'-]-) } \times 2/3 { r8 g,-[-( g'-]-) } \times 2/3 { r8 g,,-\f-[-( g'-]-) }
	
	\times 2/3 { r8 c,-\p-[-( c'-]-) } \times 2/3 { r8 b,-[-( b'-]-) } \times 2/3 { r8 c,-[-( c'-]-) } \times 2/3 { r8 g,-\f-[-( g'-]-) }
	
	% 180
	\stemUp \slurUp
	\times 2/3 { \translator Staff = "down" r8 aflat,^\p-[-( \translator Staff = "up" aflat'-]-) }
	\times 2/3 { \translator Staff = "down" r8 g,-[-( \translator Staff = "up" g'-]-) }
	\times 2/3 { \translator Staff = "down" r8 aflat,-[-( \translator Staff = "up" aflat'-]-) }
	\times 2/3 { \translator Staff = "down" r8 eflat,^\f-[-( \translator Staff = "up" eflat'-]-) }
	\break
	
	\times 2/3 { \translator Staff = "down" r8 f,^\p-[-( \translator Staff = "up" f'-]-) }
	\times 2/3 { \translator Staff = "down" r8 fsharp,-[-( \translator Staff = "up" fsharp'-]-) }
	\times 2/3 { \translator Staff = "down" r8 g,-[-( \translator Staff = "up" g'-]-) }
	\times 2/3 { \translator Staff = "down" r8 g,,^\f-[-( g'-]-) }
	
	\times 2/3 { r8^\p c,-( eflat } \times 2/3 { g-[ eflat c-] } \times 2/3 { g'-[ eflat c-] } \times 2/3 { f!-[ d b-]-) }
	
	\times 2/3 { r8^\markup { \italic dim. } g-( c } \times 2/3 { eflat-[ c g-] } \times 2/3 { eflat'-[ c g-] } \times 2/3 { d'-[ b g-]-) }
	
	s1
	
	% 185
	s
	
	\bar "|."
		}
	}
	
	%%%%%%%%%% BASS STAVE %%%%%%%%%%

lower = \notes\relative c, {
	\time 2/2
	\key c \minor
	\property Voice.tupletSpannerDuration = #(ly:make-moment 1 4)
	
	< c c' >2^^-\sustainDown < eflat eflat' >4-\staccatissimo-\sustainUp < g g' >-\staccatissimo
	
	< c c' >-\staccatissimo < eflat eflat' >-\staccatissimo r2
	
	\clef "treble"
	r4 < eflat'' g >-. < eflat g >-. < eflat g >-.
	
	r < d f aflat >-.	< d f aflat >-. r
	
	% 5
	\clef "bass"
	< g,,,, g' >2^^-\sustainDown < b b' >4-\staccatissimo-\sustainUp < d d' >-\staccatissimo
	
	< g g' >-\staccatissimo < b b' >-\staccatissimo r2

	\clef "treble"
	\relative c' {
	r4 
	\once \property Voice.DynamicText \set #'transparent = ##t
	< d f aflat >-\mp-. < d f aflat >-. < d f aflat >-.
	\break
	
	r < eflat g >-. < eflat g >-. r
	}
	
	\clef "bass" \stemDown
	g8-[-(-\sustainDown g' g, g'-] g,-[ g' g, g'-]-)-\sustainUp
	
	% 10
	g,-[ g' g, g'-] g,-[ g' g, g'-]
	
	g,-[ g' g, g'-] g,-[ g' g, g'-]
	
	g,-[ g' g, g'-] g,-[ g' g, g'-]
	
	g,-[-( g'-.-) g-. g-.-] f,->-[-( f'-.-) f-. f-.-]
	
	\stemUp
	eflat,->-[-( eflat'-.-) eflat-. eflat-.-] b,->-[-( b'-.-) b-. b-.-]
	
	% 15
	c,->-[-( c'-.-) c-. c-.-] f,->-[-( f'-.-) f-. f-.-]
	
	eflat,->-[-( eflat'-.-) eflat-. eflat-.-] d,->-[-( d'-.-) d-. d-.-]
	
	\stemBoth
	c4 r f r
	
	g r g, r
	
	\clef "treble"
	\relative c' {
	c2^^-\f-\sustainDown eflat4-\staccatissimo-\sustainUp g-\staccatissimo
	
	% 20
	c-\staccatissimo eflat-\staccatissimo r2
	}
	
	\clef "bass"
	< bflat,! bflat'! >2^^-\sustainDown < d d' >4-\staccatissimo-\sustainUp < f f' >-\staccatissimo
	
	< bflat bflat' > < d d' > r2
	
	eflat8-\p-[-( bflat' g bflat-] f-[ bflat aflat bflat-]
	
	g-[ bflat eflat, bflat'-] d,-[ bflat' bflat, bflat'-]-)
	
	% 25
	eflat,-[ bflat' g bflat-] f-[ bflat aflat bflat-]
	
	g-\p-[ bflat eflat, bflat'-] d,-[ bflat' bflat, bflat'-]
	
	eflat,-[ bflat' g bflat-] d-[ bflat f bflat-]
	
	c,-[ bflat' g bflat-] c,-[ bflat' g bflat-]
	
	< c, f a >1
	
	%30
	r4 < bflat' d >-( < cflat eflat >-) r
	
	r4 < bflat d >-( < cflat eflat >-) r
	
	r4 < bflat d >-( < cflat eflat >-) r
	
	< bflat d >-( < cflat eflat > < bflat d > < cflat eflat >
	
	< bflat d >-) r4 r2
	
	% 35
	r1
	
	\clef "treble"
	\relative c' {
	g'8-[-( bflat g bflat-] f-[ bflat g bflat-]-)
	
	g-[-( bflat g bflat-] aflat-[ bflat aflat bflat-]-)
	
	f-[ bflat f bflat-] f-[ bflat g bflat-]
	
	aflat-[ bflat f bflat-] aflat-[ bflat f bflat-]
	
	% 40
	d,-[ bflat' d, bflat'-] c,-[ bflat' d, bflat'-]
	
	d,-[ bflat' d, bflat'-] eflat,-[ bflat' eflat, bflat'-]
	
	g-[ bflat eflat, bflat'-] g-[ bflat eflat, bflat'-]
	
	aflat-[ bflat aflat bflat-] g-[ bflat g bflat-]
	
	eflat,->-[-( g eflat g-] dflat->-[ f dflat f-]
	
	% 45
	c e-) < bflat! e >4 r2
	
	< aflat f' >4 r r2
	
	r4 << { g'4-( aflat2 } \\ { bflat,2-( b4 } >>
	
	<< { g'4-) } \\ { c,4-) } >> r4 r2
	}
	
	\clef "bass"
	eflat,8-[-( g eflat g-] dflat-[ f dflat f-]
	
	% 50
	c e-) < bflat! e >4 r2
	
	< aflat c f >1^^
	
	< f, f' >^^
	
	\translator Staff = "up"
	f'4.-> r8 r2
	
	r2 % another translator from lower stave
	\translator Staff = "down"
	r2
	
	% 55
	R1
	
	r4 < aflat' c f > r < a c gflat' >
	
	< bflat eflat g! > r r2
	
	\clef "treble"
	r4 << { g'4-( aflat2-) } \\ { bflat,2. } >>
	
	eflat8-[ bflat' g bflat-] d,-[ bflat' aflat bflat-]
	
	%60
	eflat,!8-[ bflat' g bflat-] f,-[ d' aflat d-]
	
	g,8-[ eflat' bflat eflat-] aflat,-[ eflat' c eflat-]
	
	bflat!8-[ g' eflat g-] bflat,-[ aflat' d, aflat'-]
	
	\clef "bass"
	eflat,8-[ bflat' g bflat-] d,-[ bflat' aflat bflat-]
	
	eflat,8-[ bflat' g bflat-] f-[ d' g, d'-]
	
	% 65
	< g, bflat eflat >4 r4 r2
	
	r4 aflat-. bflat-. bflat,-.
	
	eflat-. r r
	\clef "treble"
	< eflat' g >-(
	
	< eflat aflat >-.-) r r < bflat f' aflat >-(
	
	< eflat g >-.-) r r
	\clef "bass"
	< eflat, g >-(
	
	% 70
	< eflat aflat >-.-) r r < bflat f' aflat >-(
	
	< eflat g >-.-)-\sustainDown r r2-\sustainUp
	
	< eflat, eflat' >2^^-\sustainDown < g g' >4-\staccatissimo-\sustainUp < bflat bflat' >-\staccatissimo
	
	< eflat eflat' >-\staccatissimo < g g' >-\staccatissimo r2
	
	< g d' f >2. r4
	
	% 75
	< c,, c' >2^^-\sustainDown < e e' >4-\staccatissimo-\sustainUp < g g' >-\staccatissimo
	
	< c c' >-\staccatissimo < e e' >-\staccatissimo r2
	
	< bflat, bflat' >2^^-\sustainDown < e e' >4-\staccatissimo-\sustainUp < g g' >-\staccatissimo
	
	< bflat bflat' >-\staccatissimo < dflat dflat' >-\staccatissimo r2
	
	f8-\p-[-( c' aflat c-] g-[ c bflat c-]-)
	
	aflat8-[-( c f, c'-] e,-[ c' c, c'-]-)
	
	f,8-[ c' aflat c-] g-[ c bflat c-]
	
	% 80
	aflat8-[ c f, c'-] e,-[ c' c, c'-]
	
	\times 2/3 { f,-[-( aflat c-] } \times 2/3 { bflat-[ aflat g-] } \times 2/3 { f-[ aflat c-] } \times 2/3 { bflat-[ aflat g-] }
	
	\times 2/3 { f-[ aflat c-] } \times 2/3 { bflat-[ aflat g-] } \times 2/3 { f-[ g f-] } \times 2/3 { eflat!-[ f eflat-]-) }
		
	% 85
	< d, d' >2^^-\sustainDown < fsharp fsharp' >4-\staccatissimo-\sustainUp < a a' >-\staccatissimo

	< d d' >-\staccatissimo < fsharp fsharp' >-\staccatissimo r2
	
	\property Voice.tupletInvisible = ##t
	\times 2/3 { g8-[ bflat d-] } \times 2/3 { c-[ bflat a-] } \times 2/3 { g-[ bflat d-] } \times 2/3 { c-[ bflat a-] }
	
	\times 2/3 { g-[ bflat d-] } \times 2/3 { c-[ bflat a-] } \times 2/3 { g-[ bflat d-] } \times 2/3 { g,-[ bflat d-] }
	\break
	
	\times 2/3 { f,!-[ b d-] } \times 2/3 { g,-[ b d-] } \times 2/3 { aflat!-[ b d-] } \times 2/3 { g,-[ b d-] }
	
	% 90
	\times 2/3 { f,-[ b d-] } \times 2/3 { g,-[ b d-] } \times 2/3 { aflat-[ b d-] } \times 2/3 { f,-[ b d-] }
	
	\times 2/3 { eflat,-[ g c-] } \times 2/3 { f,-[ aflat c-] } \times 2/3 { eflat,-[ g c-] } \times 2/3 { d,-[ f c'-] }
	
	\times 2/3 { eflat,-[ g c-] } \times 2/3 { d,-[ f c'-] } \times 2/3 { eflat,-[ g c-] } \times 2/3 { c,-[ eflat g-] }
	
	\times 2/3 { b,-[ d g-] } \times 2/3 { c,-[ d g-] } \times 2/3 { b,-[ d g-] } \times 2/3 { a,-[ d g-] }
	
	\times 2/3 { b,-[ d g-] } g,4-\staccatissimo r2
	
	% 95
	\clef "treble"
	r2 < d'' b' >
	
	r < b aflat' >
	
	r1
	
	\clef "bass"
	< b,, b' >1-\sustainDown-(
	
	< b b' >4-\sustainUp-) r4 r2-\fermata
	
	% 100
	< c c' >2^^-\sustainDown < eflat eflat' >4-\staccatissimo-\sustainUp < g g' >-\staccatissimo
	
	< c c' >-\staccatissimo < eflat eflat' >-\staccatissimo r2
	
	\clef "treble"
	r4 < eflat'' g >-. < eflat g >-. < eflat g >-.
	
	r < d f aflat >-.	< d f aflat >-. r
	
	\clef "bass"
	< g,,,, g' >2^^-\sustainDown < b b' >4-\staccatissimo-\sustainUp < d d' >-\staccatissimo
	
	% 105
	< g g' >-\staccatissimo < b b' >-\staccatissimo r2

	\clef "treble"
	\relative c' {
	r4 
	\once \property Voice.DynamicText \set #'transparent = ##t
	< d f aflat >-\mp-. < d f aflat >-. < d f aflat >-.
	\break
	
	r < eflat g >-. < eflat g >-. r
	
	}
	
	\clef "bass" \stemDown
	g8-[-(-\sustainDown g' g, g'-] g,-[ g' g, g'-]-)-\sustainUp
	
	
	g,-[ g' g, g'-] g,-[ g' g, g'-]
	
	g,-[ g' g, g'-] g,-[ g' g, g'-]
	
	% 110
	g,-[ g' g, g'-] g,-[ g' g, g'-]
	
	g,-[-( g'-.-) g-. g-.-] f,->-[-( f'-.-) f-. f-.-]
	
	\stemUp
	eflat,->-[-( eflat'-.-) eflat-. eflat-.-] b,->-[-( b'-.-) b-. b-.-]

	c,->-[-( c'-.-) c-. c-.-] f,->-[-( f'-.-) f-. f-.-]
	
	eflat,->-[-( eflat'-.-) eflat-. eflat-.-] d,->-[-( d'-.-) d-. d-.-]
		
	% 115
	\stemBoth
	c4 r f r
	
	g r g, r

	r2-\sustainDown c'2^^

	eflat4-\staccatissimo-\sustainUp g-\staccatissimo < aflat,,, aflat' >2-\sustainDown
				
	% 120
	< c c' >4-\staccatissimo-\sustainUp < f f' >-\staccatissimo < aflat aflat' >2

	\clef "treble"
	r8 gflat''-\p-[-( eflat gflat-] aflat,-[ gflat' eflat gflat-]-)
	
	aflat,-[ f' dflat f-] aflat,-[ f' dflat f-]

	aflat,-[ gflat' eflat gflat-] aflat,-[ gflat' eflat gflat-]

	aflat,-[ f' dflat f-] aflat,-[ f' dflat f-]
				
	% 125
	< a, c eflat fsharp >1^\fz

	\clef "bass"
	r4 < g b >-( < aflat! c >-) r
	
	r4 < g b >-( < aflat c >-) r

	< g b >-( < aflat c > < g b > < aflat c >-)

	< g b > r r2
			
	% 130
	r1
	
	\clef "treble"
	eflat'8-\p-[-( g eflat g-] d-[ g eflat g-]-)
	
	e-[ g e g-] f-[ g f g-]
	
	d-[ g d g-] d-[ g eflat! g-]
	
	f-[ g d g-] f-[ g d g-]
	
	% 135
	b,-[ g' b, g'-] c,-[ g' c, g'-]
	
	d-[ g d g-] eflat-[ g eflat g-]
	
	eflat-[ g c, g'-] eflat-[ g c, g'-]
	
	f-[ g d g-] eflat-[ g c, g'-]
	
	<< { eflat-[-( g eflat g-]-) e-[-( g e g-]-) } \\ { c,4 c bflat! s4 } >>
	
	% 140
	<< { c8-( f fsharp4-) } \\ { a,4 < aflat c > } >> r2
	\break
	
	\clef "bass"
	r4 < g b >-( < b d >-) r
	
	r < c, e >-( < e g >-) r
	
	f r r2
	
	<< { r4 < eflat' g >-( < d f >2-) } \\ { g,1 } >>
	
	% 145
	<< { eflat8-[-( g eflat g-]-) e-[-( g e g-]-) } \\ { c,4 c bflat! bflat } >>
	
	<< { c8-( f fsharp4-) } \\ { a,4 < aflat c > } >> r2
	
	r4 < g b >-( < b d >-) r
	
	r < c, e >-( < e g >-) r
	
	< f, f' >1->
	
	% 150
	\times 2/3 { r8 c'-[-( f-] } \times 2/3 { aflat-[ f aflat-] } \times 2/3 { c-[ aflat c-] } \times 2/3 { f-[ c f-] }
	
	\translator Staff = "up"
	\times 2/3 { aflat-[ f aflat-] } \times 2/3 { c-[ aflat c-] }
	\clef "treble"
	\times 2/3 { f-[ c f-] } \times 2/3 { aflat-[ f aflat-] }
	
	\times 2/3 { c-[ aflat c-] } \times 2/3 { f-[ c f-] } \times 2/3 { aflat-[ f aflat-] } c-.-)-[ g-\mp-]-(
	
	aflat-[ e f csharp-] d-)-[ aflat'-(-\> f d-]-)-\!
	
	\translator Staff = "down"
	\clef "bass"
	< g,, c eflat >4 r r2
	
	% 155
	\clef "treble"
	<< { eflat'8-[-( g eflat g-] f-[ g f g-]-) } \\ { g,1 } >>
	
	c8-[-( g' eflat g-] b,-[ g' f g-]-)
	
	c,!-[ g' eflat g-]
	\clef "bass"
	d,-[ b' f b-]
	
	eflat,!-[ c' e, c'-] f,-[ c' fsharp, eflat'!-]
	
	g,-[ eflat' c eflat-] g,-[ f'! b, f'-] 
	
	% 160
	c,-[ g' eflat g-] b,-[ g' f g-] 
	
	c,-[ g' eflat aflat-] d,-[ b' g b-]
	
	<< { c1-( } \\ { eflat,2. e4 } >>
	
	<< { \stemDown < f c' >4-.-) } \\ { s4 } >> f-. g-. g,-.
	
	c-. r r < c' eflat >-(
	
	% 165
	< g d' f >-.-) r r < g d' f >-(
	
	< c eflat >-.-) r r < c, eflat >-(
	
	< g b d f >1-)
	
	< c, c' >2->-\sustainDown < eflat eflat' >4-\staccatissimo-\sustainUp < g g' >-\staccatissimo
	
	< c c' >-\staccatissimo < eflat eflat' >-\staccatissimo r2
	
	% 170
	< aflat,, aflat' >2->-\sustainDown < c c' >4-\staccatissimo-\sustainUp < eflat eflat' >-\staccatissimo
	
	< aflat aflat' >-\staccatissimo < c c' >-\staccatissimo r2
	
	< fsharp,, fsharp' >2->-\sustainDown < a a' >4-\staccatissimo-\sustainUp < c c' >-\staccatissimo
	
	< fsharp fsharp' >-\staccatissimo < a a' >-\staccatissimo < c c' >-\staccatissimo < eflat eflat' >-\staccatissimo
	
	\times 2/3 { g8-[-( c eflat-] } \times 2/3 { g,-[ c eflat-] } \times 2/3 { g,-[ c eflat-] } \times 2/3 { g,-[ c eflat-]-) }
	
	% 175
	\times 2/3 { g,-\sustainDown-[-( b f'-] } \times 2/3 { g,-[ b f'-] } \times 2/3 { g,-[ b f'-] } \times 2/3 { g,-[ b f'-\sustainUp-]-) }
	
	c4-( b c-) g_>-(
	
	aflat g aflat-) eflat_>-(
	
	\slurDown
	f fsharp g-) g,_>-(
	
	c b c-) g_>-(
	
	% 180
	\stemDown
	aflat g aflat-) eflat_>-(
	
	f fsharp g-) g,_>
	
	c2.-( g4-)
	
	c2.-( g4-)
	
	<< { c'4 r < g c >^\pp r } \\ { c,4 r < c eflat > r } >>
	
	% 185
	<< { \stemUp < g' c >2 r2 } \\ { \stemDown < c, eflat >2 r2 } >>
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
  \midi { \tempo 4=240 }
}