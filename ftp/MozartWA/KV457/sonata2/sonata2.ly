\version "2.18.0"
#(set-global-staff-size 18)
\include "english.ly"

\header {
 title = "Piano Sonata in C minor (KV. 457)"
 subtitle = "2nd Movement"
 composer = "W.A. Mozart"

 mutopiatitle = "Piano Sonata in C Minor - KV. 457 (2nd Movement)"
 mutopiacomposer = "MozartWA"
 mutopiaopus = "KV 457"
 mutopiainstrument = "Piano"
 source = "Schirmer, 1918, and Breitkopf & Härtel, 1878"
 date = "1878"
 style = "Classical"
 license = "Public Domain"
 maintainer = "Will Oram"
 maintainerEmail = "spamguy@foxchange.com"
 maintainerWeb = "http://www.foxchange.com/~spamguy/"

 footer = "Mutopia-2014/03/24-357"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

\paper {
  top-margin = 12 \mm
  bottom-margin = 10 \mm
}

upper = \relative c'' {
	\time 4/4
	\key c \minor
	\override TupletBracket.bracket-visibility = ##f
	\override TextScript.padding = #2.5
	\override Staff.DynamicText.padding = #1.25
	\override Staff.DynamicLineSpanner.padding = #1
	\override Staff.Hairpin.minimum-length = #5

	\tempo "Adagio" 8 = 69

	<< { bflat4-(_\markup { \magnify #1.2 \italic { sotto voce } }
	g8 g g8..-[ aflat32-] f8-) } \\									%
	{ s2 eflat4-( d8-) } >>											%
	r8																%

	<< { eflat4^\f-(-( f g16.-\turn-)-[-(-\> aflat32^.-]-\!
	bflat^.-\p-[ c^. d^. eflat^.-] bflat16-) r16 } \\
	{ g,16-[ bflat g bflat-] d-[ bflat d bflat-] eflat8 r r } >>
	< eflat' g >16-(-\> < d f >-\!

	< c eflat >-[ < bflat d > < aflat c > < g bflat >-] < f aflat >-[_\markup { \italic cresc. } < eflat g > < c c' > < f aflat >-]-)
	<< { g4-\f-(-\> f16^.-)-[ g^.^( aflat^.-\p a^.-]^) } \\
	{ eflat4-( d8-) r } >>

	bflat'8-[-(-~ bflat32 d eflat bflat-] g16-.-[ g-. g-. g-.-]-)
	<< { g8..-[-(^\markup { \translate #(cons 6 1) { \musicglyph #"scripts.turn" } }
	aflat!32-] f8-) } \\ { eflat4-( d8-) } >>
	r32_\markup { \italic cresc. } bflat'32-[-( aflat f-]-)

	<< { eflat4-\f-( f g16.-\turn-)-[-(-\>						% 5
	aflat32^.-]-\! bflat^.-\p-[ c^. d^. eflat^.-] \stemDown bflat16-) r16 } \\									%
	{ r16 bflat,-[ g bflat-] d-[ bflat d bflat-] eflat8 r s8 } >>												%
	eflat'32-.-[-(-\> d-. dflat-. c-.-]-\!																		%

	b16-.-) r eflat32-.-[-(-\> d!-. dflat-. c-.-]-\! b16-.-) r
	eflat32-.-[-( d-._\markup { \italic cresc. } dflat-. c-.-]-) b4-\f-( c16-\p-) r16 f,32-.-[-(-\< g-. aflat-. a-.-]-)-\!

	bflat!8-[-~_\markup { \italic cresc. } bflat32-( c d eflat-\f-]-)
	<< { eflat,8.-[ g32-\> f-]-\! } \\
	{ bflat,8.-[ d16-] } >>
	eflat8-.-\p eflat-. r4

	<< { f'4 d4 } \\
	{ \slurDown d16-\p-[-( f, d' f,-] bflat-[ f bflat f-]-) } >>
	< d' f >8-[-~-\> < d f >32-( < csharp e > < c eflat > < bflat d >-] < a c >16-.-) r
	< d fsharp >32-\p-[-( < eflat g > < d fsharp > < eflat g >-]

	< a, c >16-.-) r < d fsharp >32-[-( < eflat g > < d fsharp > < eflat g >-] < a, c >16-.-) r
	b32-[-(_\markup { \italic cresc. } c d eflat-] f8.-\mf-[-\>^\markup {
		\translate #(cons 5 -9)
		{ \column { \musicglyph #"scripts.turn"
		\magnify #0.7 \natural } } }
	g32 eflat!-\p-]-\! d16-) r f32.-[-( d64 f32. d64-]

	bflat'8-.-\mf-) bflat4-~ bflat32-[-( c d bflat-] a16-[ g-]-) g4-~ g32-[-( a bflat g-]		% 10

	f16-[-\> eflat-) eflat8-]-~ eflat16-[ eflat-.-( eflat-. eflat-.-]-)-\! csharp8-( d-)
	r32 bflat-.-(-\< c-. d-.-] eflat-.-[ f-. g-. a-.-]-)-\!

	bflat32.-\f-[-( f64 d'32. bflat64 f'8->-]-)-~ f32-[-( d b aflat!-] f-[ d b aflat!-] g16-.-)-[ fsharp'8-.-- g-.-- a-.-- bflat16-]-~

	bflat16-[_\markup { \italic dimin. }-(^\markup {
		\translate #(cons 1 -9)
		{ \column { \musicglyph #"scripts.turn"
		\magnify #0.7 \natural } } } d32 f f,8-]-~ f32-[ fsharp g f-] f-[ eflat d c-] bflat8-) r8 a32-\p-[-(-\< c g' f g f g f-]-)-\!

	f8-\p-[-( bflat16-]-) r a,!32-\p-[-(-\< c g' f g f g f-]-)-\!

	f8-\p-( bflat,16-) r a!32-\f-[-(-\> c g' f g f g f-]-)-\!

	f32-[-(_\markup { \italic mancando } bflat, bflat'-.-) bflat-.-]
	bflat-.-[-( d, d'-.-) d-.-] d-[-( f, f'-.-) f-.-] f-.-\p-[-(-\> f-. f-. f-.-] bflat,16-)-\! r
	f'32-.-[-(-\> f-. f-. f-.-] bflat,16-)-\! r f'32-.-\pp-[-( f-. f-. f-.-]

	bflat,16-) r16																				% 15
	\clef "bass"																				%
	r8 << { \slurUp < f,, aflat! >4-~ < f aflat >8 \slurNeutral } \\							%
	{ eflat4^\fz-( d8-) } >>																		%
	eflat32-\p-[-(-\< d f aflat-]-\!															%
	\clef "treble"																				%
	d32-[-\> f aflat d-] f-)-[ aflat-.-]-\! r16 												%

	<< { bflat,8-\p-[-(-~ bflat32 a64 bflat c bflat a bflat-] g8-[ g-]
	g8..-[^\markup { \translate #(cons 6 1) { \musicglyph #"scripts.turn" } } aflat32-] f8-) } \\
	{ s4 eflat4-( d8-) } >>
	r32 bflat'32-[-(_\markup { \italic cresc. } aflat f-]-)

	% NOTE: In the Schirmer edition the last rest in this measure is 1/16. This is inconsistent with similar measures and doesn't
	% add up right. I fixed this.

	<< { eflat4^\f-( f
	g16.-\turn-)-[-(-\> aflat32^.-]-\! bflat^.-\p-[ c^. d^. eflat^.-] bflat16-) r16 } \\
	{ g,16-[ bflat g bflat-] d-[ bflat d bflat-] eflat8 r s8 } >>
	< eflat' g >16-(-\> < d f >-\!

	< c eflat >16-[_\markup { \italic cresc. } < bflat d >-~ < bflat d >32 < aflat c >16 < g bflat > < f aflat > < eflat g > < c c' > < f aflat >32-]-)
	<< { g4-\f-(-\> f16-)-[-\! g16-.-(-\p aflat-. a-.-]-) } \\
	{ eflat4-( d8-) r } >>

    \barNumberCheck #20         % gl: 3rd beat from 8.. 32 to 8. 16 - Breitkopf
	bflat'8-[-(-~ bflat32 d eflat bflat-] g16-.-[ g-. g-. g-.-]-)
	<< { g8.-[-(^\markup { \translate #(cons 6 1) { \musicglyph #"scripts.turn" } }
	aflat!16-] f8-) } \\ { eflat4( d8) } >>
	r32 bflat32-[-(-\< c d-]-)-\!

	<< { eflat4-\f-( f g16.-\turn-)-[-(-\> aflat32^.-]-\! bflat^.-\p-[ c^. d^. eflat^.-] \stemDown bflat16-) r16 } \\		% 20
	{ r16 bflat,-[ g bflat-] d-[ bflat d bflat-] eflat8 r s8 } >>															%
	eflat'32-.-[-(-\> d-. dflat-. c-.-]-\!																					%

	b16-.-) r eflat32-.-[-(-\> d!-. dflat-. c-.-]-\! b16-.-) r
	eflat32-.-[-(_\markup { \italic cresc. } d-. dflat-. c-.-]-) b4-\fp-( c16-) r16 f,32-.-[-(-\< g-. aflat-. a-.-]-)-\!

	bflat!8-[-~_\markup { \italic cresc. } bflat32-( d64 c eflat d f eflat-]-)
	<< { eflat,8.-[-(^\markup { \translate #(cons 6 1) { \musicglyph #"scripts.turn" } } g32-\> f-]-\! eflat8-.-\p-)-[ eflat-.-] } \\
	{ bflat8.^\f-[ d16-] s4 } >>
	r4

    \barNumberCheck #24
	c4-\tweak X-offset #-1.0 \p bflat
	<< { eflat4-~ eflat32-[ f eflat f-] dflat-[-\> eflat dflat eflat-]-\! } \\
	{ aflat,4 g_\markup { \italic cresc. } } >>

	\slurUp c4-\tweak X-offset #-1.0 \p-( bflat
	<< { eflat4-~ eflat32-[ f eflat f-] dflat-[_\markup { \magnify #1.2 \italic cresc. } eflat dflat eflat-] } \\
	{ aflat,4 g } >>

	< aflat c >8-.-) \slurNeutral < c aflat' >4-\f-(-\> < eflat g >8-)-\!					% 25
	< eflat g >16-[-(-\> < dflat f > < c eflat >8-]-)-\! d'!16-\p-[-( eflat f eflat-]-)	%

	eflat-[-( g,-) g8-]-~^\< g16-[ g-( aflat bflat-]-)-\! bflat16.-[-(^\> c32 aflat8-]-)-\!
	d!32-[-(_\markup { \italic cresc. } eflat d eflat-] d-[ eflat f eflat-]-)

	eflat16-\p-[-( bflat-) bflat8-]-~ bflat16-[ bflat-(-\<^\markup {
		\translate #(cons 0 -9)
		{ \column { \musicglyph #"scripts.turn"
		\magnify #0.7 \natural } } }
	c dflat-]-)-\! b8-[-(-\> c16-]-)-\! r
	bflat32-[-(-\< c bflat c-] bflat-[ c dflat! c-]-)-\!

	< bflat! d! f aflat >8-.-\f aflat'4-^-( \override Beam.positions = #'(8 . 5)
	\grace { g32-[ aflat bflat-\> aflat g f128 eflat d c bflat aflat g f eflat d c bflat aflat-]-\! } g8-.-\p-)
	s2 \revert Beam.positions

	eflat'''8-.-\f \slurUp eflat4-^-( \override Beam.positions = #'(-2 . -6)
	\grace { \stemDown d32-[ eflat-\> f eflat d c bflat a64 g f eflat d c bflat a g f eflat-]
	\stemNeutral \revert Beam.positions }
	\slurNeutral d32-\p-)-[-(-\< f bflat8-) bflat16-]-~ bflat-[ eflat-\fp-( cflat a-] s8

	bflat16-.-) eflat-\fp-[-( cflat a-] bflat16-.-) eflat-\fp-[-( cflat a-] bflat16-.-)			% 30
	bflat-[-(_\markup { \italic cresc. } a bflat-] aflat-[ bflat-\> cflat! bflat-]-)-\!			%

	<< { < dflat, bflat' >4-\p-(-\< < cflat aflat'! >-\! dflat'-)-~ dflat32-[-(
	eflat dflat eflat-] cflat-[-\> dflat cflat dflat-]-)-\! } \\
	{ s2 gflat,4 f4_\markup { \italic cresc. } } >>

	<< { < dflat bflat' >4-\p-(-\< < cflat aflat'! >-\! dflat'-)-~
	dflat32-[-( eflat dflat eflat-] cflat-[-\> dflat cflat dflat-]-)-\! } \\
	{ s2 gflat,4_\markup { \italic cresc. } f4 } >>

	bflat8-\p-(-\<^\markup { \translate #(cons 4 -2) { \musicglyph #"scripts.turn" } }
	dflat4-\!_\markup { \italic cresc. } cflat16-[ bflat-] aflat-\f-[ g-.-]-) r16.
	g32-( bflat16.-[ aflat32 cflat16. bflat32-]

	% NOTE: In the Schirmer edition, the next three measures come out 1/16 short. I extended the third note to 1/8
	% as the most appropriate solution. What Mozart really intended is not known.

	dflat16.-\p-[-\< cflat32 eflat8-]-)-~-\! eflat16-[-( d32_\markup { \italic cresc. } eflat f eflat dflat c-] bflat16-\f-[ a-.-]-) r16.
	aflat32-( c16.-[ bflat32 dflat16. c32-]

	eflat16.-\p-[-\< dflat32 f8-]-)-~-\! f16-[-( e32_\markup { \italic cresc. } f g f eflat d-] c16-\f-[ b-.-]-) r16.		% 35
	b32-( d16.-[ c32 eflat16. d32-]																							%

	f16.-\p-[-\< eflat32 g8-]-)-~-\! g16-[-( fsharp32_\markup { \italic cresc. } g aflat g f eflat-] d16.-\f-)-[-( c32 c'8-]-~
	c16.-[^\markup {
		\translate #(cons 2 -9)
		{ \column { \musicglyph #"scripts.turn"
		\magnify #0.7 \natural } } }
	d32-\> eflat16 fsharp,-]-\!

	g32-\p-) s2....

	s1

	\change Staff = "down"
	d,,4 r < bflat! f' aflat! >2-\mf

	\change Staff = "up"
	bflat''8-[-~-\< bflat32 c d eflat-]-\! eflat16-[-(-\> g,-)-\! g-. g-.-]
	<< { g8..-[^\markup { \translate #(cons 4 -2) { \musicglyph #"scripts.turn" } } aflat32-] f8 } \\
	{ eflat4-( d8-) } >>
	\tuplet 3/2 { r32 bflat'32-[-(_\markup { \italic cresc. } a-] } \tuplet 3/2 { aflat-[ g f-]-) }

	<< { eflat4^\f-( f g16.-\turn-)-[-(-\> aflat32^.-]-\! bflat^.-\p-[ c^. d^. eflat^.-] bflat16-) r16 } \\
	{ r16 bflat,-[ g bflat-] d-[ bflat d bflat-] eflat8 r s8 } >>
	eflat'32-[-(-\> g d f-]-\!

	c32-[ eflat bflat d-] aflat-[ c g bflat-] f-[_\markup { \italic cresc. } aflat eflat g-] c,-[ c' f, aflat-]-)
	<< { g4^\f-(^\> \slurDown f32-)-[^\! eflat-.^\p-( d-. eflat-.-] f-.-[ g-. aflat-. a-.-]-) } \\
	{ eflat4-( d32-) s8.. } >>

	bflat'8-[-~ bflat32-(-\< d64 c eflat d f eflat-]-)-\! \stemDown eflat16-[-(-\> g,-. g-. g-.-]-)-\! \stemNeutral
	<< { g8-\turn-[-( bflat^\sf-]-)-~ bflat32-[ a-\p-( aflat-. g-.-] bflat-.-[ aflat-. g-. f-.-]-) } \\
	{ eflat4-( d16-) s8. } >>

	<< { eflat8..^\f-[-( e32-] f8..-[ fsharp32-]-) g16.-[-(^\markup { \translate #(cons 4 -2) { \musicglyph #"scripts.turn" } }
	aflat32-] \tuplet 3/2 { a32-[-\> bflat b-] } c64-[ dflat d eflat-] bflat16-)-\! } \\
	{ r16 bflat,16-[-( g bflat-)-] r16 d-[-( bflat d-]-) eflat8 r8 s16 } >>
	r16 eflat'32-.-\p-[-(-\> d-. dflat-. c-.-]-)-\!

	b16-. r eflat32-.-[-(-\> d!-. dflat-. c-.-]-\! b16-.-) r																% 45
	eflat32-.-[-(_\markup { \italic cresc. } d-. dflat-. c-.-]-)															%
	b8-\f-[-(-\>^\markup { \translate #(cons 4 -2) { \musicglyph #"scripts.turn" } }										%
	 d16. c32-]-)-\! c16 r16 f,32-.-\p-[-( g-. aflat-. a-.-]-)																%

	 bflat8-[-~ \tuplet 3/2 { bflat32-.-(_\markup { \italic cresc. } b-. c-. } \tuplet 3/2 { dflat-. d!-. eflat-.-]-) }
	 << { eflat,8.-\p-[-( g32 f-] eflat8-) } \\ { s8. d16 eflat8 } >>
	 r8 c'8.^\markup { \translate #(cons 4 -2) { \musicglyph #"scripts.turn" } }-[-( eflat32 c-]

	 bflat32-[-\< g' f eflat-]-\! d-[-\> eflat f eflat-]-)-\!
	 \grace d8->-( c8.-)-[-(^\markup {
		\translate #(cons 2 -9)
		{ \column { \musicglyph #"scripts.turn"
		\magnify #0.7 \natural } } }
		eflat32 c-]

		bflat!-[ g' f eflat-] d-[ eflat f eflat-]-) r32 eflat-[-( d c-] b-[ c d c-]-)

	 r32-\p bflat-[-(^\markup {
		\translate #(cons 0 -9)
		{ \column { \musicglyph #"scripts.turn"
		\magnify #0.7 \natural } } } eflat bflat-)-] r32 g-\turn-[-( bflat g-)-] r32 aflat-\turn-[-( c aflat-)-] r32 d,-\turn-[-( f d-)-]
	 eflat8 r32 eflat'-[-(-\< d dflat-]-\! b16-[-\> c-]-)-(-~-\! c32-[-\< eflat64 d-\! f-\> eflat d c-]-\!

	 bflat!32-[_\markup { \italic cresc. } g' f eflat-] d-[ eflat f eflat-] d32.-[ c64 c'16->-]-)-~ c64-.-[-(_\markup { \italic dim. }
	 bflat-. aflat-. g-. f-. eflat-. d-. c-.-] bflat32-.-)-[ g'-\p-( f eflat-] d-[ eflat f eflat-]-)
	 r32 aflat-[-(_\markup { \italic cresc. } g f-] e-[ f g f-]-)

	 bflat4_>-\f-(
	 \override Beam.positions = #'(7 . 2)
	 \grace { aflat32-[ g f eflat64 d c bflat aflat g f eflat d c bflat aflat-]-) } s4 s s \noBreak
	 \revert Beam.positions

	 s1

	 s1

	 r32-\p g''-\turn-[-( bflat g-)-] r32 eflat-\turn-[-( g eflat-)-] r32 c-\turn-[-( eflat c-)-] r32 aflat-\turn-[-( c aflat-)-]

	 g32-[-(-\< bflat16 a aflat g32-]-)-\! f8.-\trill-[-(-\> eflat32 f-]-\!

	 eflat8-) r8 d32-\p-[-(-\< f c' bflat c bflat c bflat-]-)-\! bflat8-\p-[-( eflat16-]-) r16
	 d,32-\p-[-(-\< f c' bflat c bflat c bflat-]-)-\!

	 bflat8-\p-[-( eflat,16-]-) r d32-\f-[-( f c' bflat c-\> bflat c bflat-]-)-\!
	 bflat32-[-(_\markup { \italic "mancando" } eflat, eflat'-.-) eflat-.-] eflat-[-( g, g'-.-) g-.-] g-[-( bflat, bflat'-.-) bflat-.-]
	 bflat-\p-[-(-\> bflat bflat-. bflat-.-]-)-\!

	 eflat,16 r bflat'32-.-\p-[-(-\> bflat-. bflat-. bflat-.-]-) eflat,16 r-\! bflat'32-.-\pp-[-( bflat-. bflat-. bflat-.-]-) eflat16 r
	 r8 < aflat,,, bflat d >4-\f-(

	 \autoBeamOff
	 < g bflat eflat >16-) r < aflat bflat d f >8-\p-(^\markup { \italic "smorzando" } < g bflat eflat >16-) r16
	 < aflat bflat d f >8-\pp-( < g bflat eflat >16-) r16 r8 r4

	 \bar "|."
}

	%%%%%%%%%% BASS STAVE %%%%%%%%%%

lower = \relative c {

	\key c \minor
	eflat16-[-( g bflat g-] eflat16-[ g bflat g-] bflat,-[ eflat g eflat-] bflat-[ d f d-]-)	% 1

	eflat4-( bflat eflat,-) r

	r8 d'16-(_\> eflat-\! f-[ g aflat f-] a-[ bflat g eflat-] bflat8-.-) r

	eflat16-[ g bflat g-] eflat16-[ g bflat g-] bflat,-[ eflat g eflat-] bflat-[ d f d-]

	eflat4-( bflat eflat,-) r																	% 5

	r16 < g' eflat' > r8 r16 < g eflat' > r8 < g eflat' >4-( < aflat eflat' >16-) r r8

	r8
	<< { eflat8 g-[-( aflat-] < eflat g >8-.-)-[ < eflat g >-.-] } \\
	{ g,8 bflat4 s4 } >>
	r4

	bflat'2-\sustainOn < f, f' >4-\sustainOff-~ < f f' >16 r r8

	\clef "treble"
	gflat''32->-[-( f gflat f-]-) r8 gflat32->-[-( f gflat f-]-) r8
	<< { r16 c-[ eflat a-] } \\ { bflat,4 } >> < bflat bflat' >16 r r8

	\clef "bass"
	d,16-[-( f bflat f-] d16-[ f bflat f-] eflat-[ g bflat g-] eflat-[ g bflat g-]-)			% 10

	f16-[ a c a-] f16-[ a c a-] g-[ bflat d bflat-] g-[ bflat d bflat-]

	d,-\sustainOn-[ f bflat f-] d-\sustainOff-[ f aflat! f-] eflat-[ g c g-] e-[ g dflat' g,-]

	f-[ bflat d! bflat-] f-[ a c a-] bflat32-[-(_\markup { \italic { piu cresc. } } d f d f d f d-] < f, eflat' >8-) r

	bflat32-[-(-\< d f d f d f d-]-\! < f, eflat' >8-) r bflat32-[-(-\< d f d f d f d-]-\! < f, eflat' >4

	< bflat d >8-) r r																						% 15
	\clef "treble"																								%
	< f' a eflat' >8-\sustainOn-( < bflat d >16-\sustainOff-) r < f a eflat' >8-\sustainOn-(_\>		%
	< bflat d >16-\sustainOff-)_\! r < f a eflat' >8-\sustainOn-(											%

	< bflat d >16-\sustainOff-) r
	\clef "bass"
	< c,,, c' >4^\fz-( < cflat cflat' >8 < bflat bflat' >4-) r

	eflat'16-[-( g bflat g-] eflat16-[ g bflat g-] bflat,-[ eflat g eflat-] bflat-[ d f d-]-)

	eflat4-( bflat eflat,-) r

	r8 < d d' >16-[-( < eflat eflat' > < f f' > < g g' > < aflat aflat' > < f f' >-]-) a'-[-( bflat g eflat-] bflat8-) r8

	eflat16-[-( g bflat g-] eflat16-[ g bflat g-] bflat,-[ eflat g eflat-] bflat-[ d f bflat,-]-)				% 20

	eflat4-( bflat eflat,-) r

	r16 < g' eflat' > r8 r16 < g eflat' >16 r8 < g dflat' eflat >4-( < aflat c eflat >16-) r16 r8

	r8 < g, eflat' >8
	<< { g'8-[ aflat-] } \\ { bflat,4 } >>
	< eflat g >8-. < eflat g >-. r4

    \barNumberCheck #24
	<< { \autoBeamOff \crossStaff { eflat4 dflat } \autoBeamOn c-( bflat-) } \\
	{ aflat,16-[-( aflat'-) aflat-. aflat-.-] aflat-.-[ aflat-. aflat-. aflat-.-] aflat-.-[ aflat-. aflat-. aflat-.-] eflat-.-[ eflat-. eflat-. eflat-.-] } >>

	<< { \autoBeamOff \crossStaff { eflat'4 dflat } \autoBeamOn c-( bflat-) } \\ % 25
	{ aflat,16-[-( aflat'-) aflat-. aflat-.-] aflat-.-[ aflat-. aflat-. aflat-.-]
	aflat-.-[ aflat-. aflat-. aflat-.-] eflat-.-[ eflat-. eflat-. eflat-.-] } >>

	aflat-.-[ aflat'-. aflat-. aflat-.-] aflat-[ aflat aflat aflat-] aflat4 r

	eflat16-[-( bflat' dflat bflat-] eflat,-[ bflat' dflat bflat-]-) eflat,-[ aflat c aflat-] eflat-[ aflat c aflat-]

	eflat-[ g bflat g-] eflat-[ g bflat g-] eflat-[ aflat c aflat-] eflat8-. r8

	d16-\sustainOn-[-( f bflat f-] d8-.-\sustainOff-) r
	<< { \slurUp s8 eflat4-( \grace { f32-[ eflat-\< d eflat f g aflat bflat
	\change Staff = "up" \stemDown c64 d eflat f g aflat bflat c d eflat f g aflat bflat c d-]-)-\! } \change Staff = "down" } \\
	{ eflat,,,,16-\sustainOn-[-( g bflat f-] eflat8-.-\sustainOff-) r8 } >>

	c'16-\sustainOn-[-( eflat a eflat-] c8-.-\sustainOff-) r8 \stemDown bflat8-.
	\clef "treble"
	< d' aflat' >8-( \stemNeutral < eflat gflat >4

	< d f >16-.-) r16 < eflat gflat >8->-[-( < d f >16-.-]-) r < eflat gflat >8->-[-( < d f >16-.-]-) r r8 r4		% 30

	\clef "bass"
	gflat,,16-[-( gflat'-.-) gflat-. gflat-.-] gflat-[ gflat gflat gflat-]
	<< { bflat4-( aflat-) } \\
	{ gflat16-[ gflat gflat gflat-] dflat-[ dflat dflat dflat-] } >>

	\clef "bass"
	gflat,16-[-( gflat'-.-) gflat-. gflat-.-] gflat-[ gflat gflat gflat-]
	<< { bflat4-( aflat-) } \\
	{ gflat16-[ gflat gflat gflat-] dflat-[ dflat dflat dflat-] } >>

	gflat16---[-( dflat' bflat dflat-] f,---[ dflat' fflat,-- dflat'-] eflat,---[ dflat' eflat, dflat'-] eflat,-[ cflat' eflat, g-]-)

	aflat---[ eflat' cflat eflat-] g,---[ eflat' gflat,-- eflat'-] f,---[ eflat' f, eflat'-] f,-[ dflat' f, a-]

	bflat---[ f' dflat f-] a,---[ f' aflat,-- f'-] g,---[ g' f g-] eflat-[ g b, g'-]

	c,---[ g' eflat g-] b,---[ g' bflat,-- g'-] a,---[ g' eflat g-] aflat,-[ fsharp' eflat c-]

	\stemDown
	r32 g-[-( b
	\change Staff = "up"
	d-] g-) b-[-( d g-] fsharp-)
	\change Staff = "down"
	g,,-[-( c
	\change Staff = "up"
	eflat-] fsharp-) a-[-( c fsharp-] g-)
	\change Staff = "down"
	g,,-[-( b
	\change Staff = "up"
	d-] g-) b-[-( d g-] fsharp-)
	\change Staff = "down"
	g,,-[-( c
	\change Staff = "up"
	eflat-] fsharp-) a-[-( c fsharp-]

	g-)
	\change Staff = "down"
	g,,-[-( b
	\change Staff = "up"
	d-] g-) b-[-( d fsharp-] g-)
	\change Staff = "down"
	g,,-[-( b
	\change Staff = "up"
	d-] g-)_\markup { \italic cresc. } b-[-( d g-] aflat!-^-)
	\change Staff = "down"
	f,,!-[-( b
	\change Staff = "up"
	d-] f-) b-[-( d aflat'-] a-^-)
	\change Staff = "down"
	eflat,,!-[-( a
	\change Staff = "up"
	c-] eflat!-) c'-[-( f a-]
	\stemNeutral

	bflat!32-\f-[ b c bflat-] aflat!-[ g f eflat-] d-[_\markup { \italic { \magnify #1.2 \translate #(cons 9 0) calando e poco rit. } }
	c bflat a-] aflat!-[ g f eflat-] d-[ c bflat c-] d-[ eflat f g-] aflat-[ g f e-] f-\p-[ g aflat a-]-)

	\change Staff = "down"
	eflat,16-[ g bflat g-] eflat16-[ g bflat g-] bflat,-[ eflat g eflat-] bflat-[ d f d-]

	eflat4-( bflat eflat,-) r

	r8 d32-[-(-\> d' eflat,-\! eflat'-] f,-[ f' g, g'-] aflat,-[ aflat' f, f'-] a-[ bflat c bflat-] a-[ bflat g eflat-] bflat8-) r8

	eflat16-[ g bflat g-] eflat16-[ g bflat g-] bflat,-[ eflat g eflat-] bflat-[ d f d-]

	< eflat, eflat' >4-( < bflat bflat' > < eflat eflat' >-) r

	eflat''32-.-[-(-\> d!-. dflat c-.-]-)-\! < g b >16 r eflat'32-.-[-(-\> d-. dflat c-.-]-)-\! < g b >16 r < g eflat' >4-( < aflat eflat' >16-) r r8

	r8 < g, eflat' >8
	<< { g'8-[-( aflat-]-) } \\ { bflat,4 } >>
	eflat16-[-( g bflat g-] eflat-[ aflat c aflat-]-)

	eflat-[ g bflat g-] eflat-[ aflat c aflat-] < eflat g bflat >8 r < aflat, c f > r

	< bflat! g' >16-.-( r < bflat eflat >-. r < bflat f' >-. r < bflat aflat' >-.-) r eflat-[ g bflat g-] eflat-[ aflat c aflat-]

	eflat-[ g bflat g-] eflat-[ aflat c aflat-] < eflat g >8-.-( r < f aflat d >-.-) r

	r16 g-[-( bflat eflat!-.-)-]
	<< { g,4-( f eflat-)-~^\markup { \italic { \magnify #1.2 { poco rit. } } }

	eflat16-[-( d8 c bflat a16-]-) \afterGrace < f aflat >2->-\fermata(						% 50

	{ bflat64[ aflat g aflat bflat c d eflat f g				%
	\change Staff = "up" \stemDown aflat128 bflat c d eflat f g aflat bflat c d eflat f g aflat bflat c d eflat]	%
	f16-.-\p-)-[ d-.-(^\markup { \italic rit. } bflat-.-]-) a8-\fermata-\pp aflat-\fermata } } \\

	{ r16 c,,,,-[-( eflat c'-]-) r aflat,-[-( c f-]-) r a,-[-( c f-])

	bflat,8-[-( eflat d c-]-) < bflat d >2-\fermata

	s1 } >>

	eflat'16-.-( r g-. r aflat-. r c-.-) r
	bflat,16-[ g' eflat g-] bflat,-[ aflat' d, aflat' -]

	eflat32-[-(-\< g bflat g bflat g bflat g-]-\! < bflat, aflat' >8-) r8
	eflat32-[-(-\< g bflat g bflat g bflat g-]-\! < bflat, aflat' >8-) r8

	eflat32-[-(_\markup { \italic { piu cresc. } } g bflat g bflat g bflat g-]-) < bflat, aflat' >4-( < eflat g >8-) r8 r
	\clef "treble"
	< bflat' d aflat' >-\sustainOn-(

	< eflat g >16-\sustainOff-) r < bflat d aflat' >8-\sustainOn-( < eflat g >16-\sustainOff-)  r16 < bflat d aflat' >8-\sustainOn-( < eflat g >16-\sustainOff-) r r8
	\clef "bass"
	bflat,32-.-[-(^\> bflat-. bflat-. bflat-.-] bflat-.-[ bflat-. bflat-. bflat-.-]-)^\!

	eflat,16 r bflat'32-.-[-(^\> bflat-. bflat-. bflat-.-]-)^\! eflat,16 r bflat32-.-[-(^\> bflat-. bflat-. bflat-.-]-)^\! eflat16 r r8 r4
}

\score {
  \context PianoStaff \with {
    \override VerticalAxisGroup.staff-staff-spacing = #'((basic-distance . 15))
    \consists #Span_stem_engraver
    } <<
    \context Staff = "up" <<
    	\upper
    	>>
    \context Staff = "down" <<
      \clef bass
      \lower
      >>
  >>
  \layout {
    \context {
      \Score
      \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/2)
    }
  }

  \midi {
    \tempo 8 = 69
    }
}
