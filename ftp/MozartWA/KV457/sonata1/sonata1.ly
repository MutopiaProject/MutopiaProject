\version "2.18.0"
#(set-global-staff-size 20)
\include "english.ly"

\header {
 title = "Piano Sonata in C minor (KV. 457)"
 subtitle = "1st Movement"
 composer = "W.A. Mozart"
 
 mutopiatitle = "Piano Sonata in C Minor - KV. 457 (1st Movement)"
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

 footer = "Mutopia-2016/04/09-356"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { "Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain " "by the typesetter " \char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}

%{ Maintenance note:
   This update includes several pitch edits so that this edition
   matches several scans available in IMSLP that most likely were not
   available when this was transcribed. All changes of this type have
   been marked "Breitkopf" in the comment since Breitkopf was the
   specific reference I used.

   See: http://imslp.org/wiki/Special:ImagefromIndex/56441
   -gl
%}

\paper {
  top-margin = 12 \mm
  bottom-margin = 10 \mm
}

upper = \relative c' {
	\time 2/2
	\key c \minor
	\override TupletBracket.bracket-visibility = ##f 
	\override TextScript.padding = #2
	\override DynamicText.padding = #3.5
    \tempo "Molto allegro" 2 = 84
	
	c2^^-\f_\markup { \translate #(cons 2 1) \italic ten. } eflat4-\staccatissimo g-\staccatissimo
	
	c-\staccatissimo eflat-\staccatissimo r8. eflat16-.-\p eflat8-(-[-\trill d16 eflat-]
	
	g4 c,-.-) c-. c-.
	
	aflat'-( b,-)-. b-. r       % gl: a->aflat, Breitkopf
	
	% 5
	g,2^^-\f_\markup { \translate #(cons 2 1) \italic ten. } b4-\staccatissimo d-\staccatissimo
	
	g-\staccatissimo b-\staccatissimo r8. d16-.-\p d8-(-[-\trill c16 d-]
	
	f4 b,-.-) b-. b-.
	
	g'-( c,-)-. c-. r
	
	g2.-\f << { \voiceOne eflat'4-~ } \\ { g,4-\p-( } >>
		
	% 10
	<< { eflat' d2 c4-~ } \\ { fsharp,4 f e-\< eflat } >>
	
	<< { c'-( b^.-) } \\ { d,2-)-\f-\! } >> r4
	<< { g'-( } \\ { eflat-~-\p } >>
	
	<< { fsharp f e eflat } \\ { eflat d2-\< c4-~ } >>
	
	<< { d2-)-\f } \\ { c4-(-\! b^.-) } >> r < b d aflat' >->-~
	
	< b d aflat' >-( < c eflat g >-) r8. g16-[-( d'8.-.-) f16-]-(
	
	%15
	eflat16-\trill-[ d eflat f-] g4-.-) r < b, d aflat' >->-~
	
	< b d aflat' >-( < c eflat g >-)-. r8. f16-[-( b8.-.-) f'16-]-(
	
	eflat8-[-\fp g, c eflat,-]-) r f-[-(-\p aflat d,-]-)
	
	r eflat-[-( g c,-]-) r d-[-( f b,-]-)
	
	c2^^ eflat4-\staccatissimo g-\staccatissimo
	
	% 20
	c-\staccatissimo eflat-\staccatissimo r8. eflat,16-. eflat8-\trill-[-( d16 eflat-]
	
	\tuplet 3/2 { aflat!8_>-[ bflat c-] } \tuplet 3/2 { bflat-[ aflat g-] } \tuplet 3/2 { f-[ g aflat-] } \tuplet 3/2 { g-[ f eflat-] }
	
	
	\tuplet 3/2 { d-[ eflat f-] } \tuplet 3/2 { eflat-[ d c-] } \tuplet 3/2 { bflat-[-\> c bflat-] } \tuplet 3/2 { aflat-[ bflat aflat-]-\! }
	
	g4.-\mp-)-( aflat32-[ g f g-] aflat4 d,
	
	eflat8-.-[-)^\< g-.-]^\! bflat4.-(^\> a8-[^\! aflat fsharp-]
	
	% 25
	g4. aflat32-[ g f! g-] aflat4 d,
	
	eflat8-.-)-[ eflat'-\mf-(-\> d c-] bflat-[ a aflat fsharp-]-\!
	
	g4 bflat-) r8 bflat-.-[-(_\markup { \italic cresc. } bflat-. bflat-.-]-)
	
	f'_>-[-( eflat-)-] eflat4 r8 eflat-.-[-( eflat-. eflat-.-]-)
	
	eflat8-\f-[-( f16 g-] f8-.-)-[ eflat-.-] d-.-[-\> c-. bflat-. a-.-\!-]
	
	% 30
	c4-(-\> bflat-)-\! r-\p eflat8-. eflat-.
	
	bflat'4 r r eflat,8-. eflat-.
	
	bflat'4 r r eflat,8-. eflat-.
	
	bflat'4-\< eflat,8-. eflat-. bflat'4 eflat,8-. eflat-.
	
	bflat'4-.-( bflat-. bflat-. bflat-.-)-\!
	
	% 35
	bflat8-[-(-\> a aflat f-] bflat8-[ a aflat f-]-)-\!
	
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
	
	<< { eflat2.-( g8 f \stemDown eflat4-) } \\ { s2. d4 } >>
	
	r8 eflat-( d-[ dflat-\< c cflat-]-\!
	%%% NOTE: I bumped beat 1 up to the previous bar. Hope you don't mind.
	
	bflat2-^-\mf-)-\< < b, b' >^^
	
	% 50
	< c c' >4-\f-(-\! < dflat dflat' >-\fz-) r2
	
	\override TupletBracket.transparent = ##t
	\tuplet 3/2 { c'8-\f-[ f g,-] } \tuplet 3/2 { aflat-[ c e,-] } \tuplet 3/2 { f-[ aflat b,-] } \tuplet 3/2 { c-[ f g,-] }
	
	\clef "bass"
	\relative c' {
	\tuplet 3/2 { aflat-[ c e,-] } \tuplet 3/2 { f-[ aflat b,-] } \tuplet 3/2 { c-[ f g,-] } \tuplet 3/2 { aflat-[ c e,-] }
	
	\change Staff = "down"
	\clef bass
	r4 r8 c8-( aflat'-[  f c' aflat-]
	
	f'-[ c aflat' f-]
	\change Staff = "up"
	\clef "treble"
	c'8-[ aflat f' c-]
%	\revert Slur.beautiful
	
	% 55
	aflat'-[ f c' aflat-] f'-[ c aflat' f-]
	
	c'4_>-) r eflat_> r
	
	r8 bflat,-\p-[-( bflat' a-] aflat-[ g-\< gflat f-]-)-\!
	
	f-(-\> eflat-)-\! eflat2-( << { g!8 f } \\ { d4 } >>
	
	eflat4-) r8 eflat-( e_>-[ f-]-) r8 f-(
	
	% 60
	fsharp_> g-) r8 g-(_\markup { \italic cresc. } bflat_>-[ aflat-]-) r8 aflat-(
	
	a bflat_>-) r bflat-( b_>-[ c-]-) r eflat
	
	eflat_>-\f-( eflat,-\> eflat2 g8 f-\!
	
	eflat-.-\f-) eflat-. eflat-\trill-[-( d16 eflat-] f8-.-)-[ f-.-] f-\trill-[-( eflat16 f-]
	
	g8-.-\f-)_\markup { \translate #(cons 2.2 0) \italic cresc. } g-. g-\trill-[-( f16 g-] aflat8-.-)-[ aflat-.-] aflat-\trill-[-( g16 aflat-]
	
	% 65
	\tuplet 3/2 { bflat8-\ff-)-[-( c d-] } \tuplet 3/2 { eflat-[ d c-] } \tuplet 3/2 { bflat-[ aflat g-] } \tuplet 3/2 { f-[ eflat d-] }
	
	c4-.-) < eflat aflat c >-. < eflat g bflat >-. < f, aflat d >-.
	
	< g eflat' >-. \tuplet 3/2 { bflat'8_>-[-( aflat g-] } \tuplet 3/2 { f-[ eflat d-] } \tuplet 3/2 { eflat-[ dflat b-] }
	
	c4-.-) \tuplet 3/2 { c'8_>-[-( bflat aflat-] } \tuplet 3/2 { g-[ f eflat-] } \tuplet 3/2 { d!-[ aflat' f-] }
	
	eflat4-.-) \tuplet 3/2 { bflat8->-\mf-[-( aflat g-] } \tuplet 3/2 { f-[ eflat d-] } \tuplet 3/2 { eflat-[ dflat b-] }
	
	% 70
	c4-.-) \tuplet 3/2 { c'8_>-[-( bflat! aflat-] } \tuplet 3/2 { g-[ f eflat-] } \tuplet 3/2 { d!-[ aflat' f-] }
	
	eflat2^^-\f-) g4-\staccatissimo bflat-\staccatissimo
	
	eflat-\staccatissimo g-\staccatissimo r8. g16-. g8-\trill-[-( f16 g-]
	
	bflat4 eflat,-.-)_\markup { \italic dim. } eflat-. eflat-.
	
	aflat-\p-( b,-) b r
	
	\bar ":..:"
	
	% 75
	c,2^^-\f e4-\staccatissimo g-\staccatissimo
	
	c-\staccatissimo e-\staccatissimo r8. g16-. g8-\trill-[-( f16 g-]
	
	\tuplet 3/2 { bflat8_>-)-[-( c dflat-] } \tuplet 3/2 { c-[ bflat aflat-] } \tuplet 3/2 { g-[ aflat bflat-] } \tuplet 3/2 { aflat-[ g f-] }
	
	\tuplet 3/2 { e-[ g e-] } \tuplet 3/2 { dflat-[ e dflat-] } \tuplet 3/2 { bflat-[-\> dflat bflat-] } \tuplet 3/2 { g-[ bflat g-]-\! }
	
	aflat4.-)-\mp-( bflat32 aflat g aflat bflat4 e,
	
	\override TupletBracket.transparent = ##t
	
	% 80
	f8-.-) aflat-. c4.-(-\> b8-\! bflat g
	
	aflat4. bflat32 aflat g aflat bflat4 e,
	
	f8-.-)-[ f'-\mf-(-\> eflat! dflat-] c-[ b bflat g-]-)-\!
	
	aflat2^^-\f c4-\staccatissimo f-\staccatissimo
	
	aflat-\staccatissimo c-\staccatissimo r2
	
	% 85
	\tuplet 3/2 { c8_>-[-( d eflat-] } \tuplet 3/2 { d-[ c bflat-] } \tuplet 3/2 { a-[ bflat c-] } \tuplet 3/2 { bflat-[ a g-]-) }
	
	\tuplet 3/2 { fsharp-[-( a fsharp-] } \tuplet 3/2 { eflat-[ a eflat-] } \tuplet 3/2 { d-[ a' d,-] } \tuplet 3/2 { c-[ a' c,-] }
	
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
	
	\clef "bass"
	< d, f aflat >1-\pp-(
	
	< d f g >4-) r4 r2-\fermata
	
	% 100
	\clef "treble"
	c'2^^-\f-1 eflat4-\staccatissimo-2 g-\staccatissimo-1
	
	c-\staccatissimo-2 eflat-\staccatissimo-4 r8. eflat16-.-\p eflat8-(-[-\trill d16 eflat-]
	
	g4 c,-.-) c-. c-.
	
	aflat'-( b,-)-. b-. r       % a->aflat, Breitkopf
	
	g,2^^-\f-1 b4-\staccatissimo-2 d-\staccatissimo-1
	
	% 105
	g-\staccatissimo-2 b-\staccatissimo-4 r8. d16-.-\p d8-(-[-\trill c16 d-]
	
	f4 b,-.-) b-. b-.
	
	g'-( c,-)-. c-. r
	
	g2.-\f << { \voiceOne eflat'4-~ } \\ { g,4-( } >>
		
	<< { eflat' d2 c4-~ } \\ { fsharp,4 f e eflat } >>
	
	% 110
	<< { c'-( b^.-) } \\ { d,2-)-\f } >> r4 << { g'-( } \\ { eflat-~-\p } >>
	
	<< { fsharp f-\< e eflat } \\ { eflat d2 c4-~ } >>
	
	<< { d2-\f-)-\! } \\ { c4-( b^.-) } >> r < b d aflat' >->-~
	
	< b d aflat' >-( < c eflat g >-) r8. g16-[-( d'8.-.-) f16-]-(

	eflat16-\trill-[ d eflat f-] g4-.-) r < b, d aflat' >->-~
	
	% 115
	< b d aflat' >-( < c eflat g >-)-. r8. f16-[-( b8.-.-) f'16-]-(
	
	eflat8-[-\fp g, c eflat,-]-) r f-[-(-\p aflat d,-]-)
	
	r eflat-[-( g c,-]-) r d-[-( f b,-]-)
	
	c2^^-\f eflat4-\staccatissimo g-\staccatissimo
	
	c-\staccatissimo eflat-\staccatissimo < c, aflat' >-\staccatissimo < eflat c' >-\staccatissimo
	
	% 120
	< aflat, f' >-\staccatissimo < c aflat' >-\staccatissimo < f, dflat' >-\staccatissimo < aflat f' >-\staccatissimo
	
	c2.-\mp-( aflat'4-)
	
	aflat4.-( f8 dflat4-) r
	
	c2-~ c8-[ aflat'-( bflat aflat-]-)

	aflat4.-( f8 dflat4-) dflat4-~
		
	% 125
	dflat8-[ b-( c d-] f!-[ eflat d c-]
	
	g'4-) r-\p r c,8-. c-.
	
	g'4 r r c,8-. c-.
	
	g'4-\< c,8 c g'4 c,8 c

	g'4-.-( g-. g-. g-.-)-\!
		
	% 130
	g8-[-(-\> fsharp f d-] g-[ fsharp f d-.-]-)-\!
	
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
	\slurNeutral < eflat eflat' >-\fz-) r8 eflat'-\p-[-( d! c-]
	
	b^> d f,4-) r8 aflat-[-( g f-]
	
	e g bflat,4-) r8 dflat-[-(_\markup { \italic cresc. } c bflat-]-)
	
	\clef "bass"
	\tuplet 3/2 { aflat8-\f-[-( c e,-] } \tuplet 3/2 { f-[ aflat b,-] } \tuplet 3/2 { c-[ f g,-] } \tuplet 3/2 { aflat-[ c e,-] }
	
	% 150
	f8-) r r4 r2

	\change Staff = "down"
	R1	
	
	R
	
	R
	
	\change Staff = "up"
	\clef "treble"
	r8-\p g''-[-(-\< g' fsharp-] f-[ e eflat d-]-)-\!
	
	% 155
	d-( c-) << { c2( eflat8 d } \\ { s2 b4 } >>
	
	<< { c4-\p-) } \\ { c4 } >> r8 c-( csharp_>-[ d-]-) r8 d-(
	
	f_>_\markup { \italic cresc. } eflat-) r eflat-( e_>-[ f-]-) r f-(
	
	fsharp_> g-) r g-( bflat_>-[ aflat-]-) r c
	
	c-\f-(-\> c, c2 eflat8 d
	
	% 160
	c-.-\f-) c-. c-\trill-[-( b16 c-] d8-.-)-[ d-.-] d-\trill-[-( c16 d-]
	
	eflat8-.-)_\markup { \italic cresc. } eflat-. eflat-\trill-[-( d16 eflat-] f8-.-)-[ f-.-] f-\trill-[-( eflat16 f-]
	
	\tuplet 3/2 { g8-\ff-)-[-( c bflat!-] } \tuplet 3/2 { aflat-[ g f-] } \tuplet 3/2 { eflat-[ d c-] } \tuplet 3/2 { bflat-[ aflat g-] }
	
	aflat4-.-) < c f aflat >-. < c eflat g >-. < d, f b >-.
	
	< eflat c' >-. \tuplet 3/2 { g'8_>-\f-[-( fsharp aflat-] } \tuplet 3/2 { g-[ f eflat-] } \tuplet 3/2 { d-[ eflat c-] }
	
	% 165
  % bflat->b, Breitkopf
	b4-.-) \tuplet 3/2 { f'8_>-[-( e g-] } \tuplet 3/2 { f-[ eflat d-] } \tuplet 3/2 { c-[ b d-] }
	
	c4-.-) \tuplet 3/2 { g'8_>-[-( fsharp aflat-] } \tuplet 3/2 { g-[ f eflat-] } \tuplet 3/2 { d-[ eflat c-] }
	
	\tuplet 3/2 { aflat'-\fz-[ g f-] } \tuplet 3/2 { eflat-[ d c-] } \tuplet 3/2 { b-[ aflat g-] } \tuplet 3/2 { f-[ eflat d-] }
	\bar ":|."
	
	c4-\ff-) r r2
	
	c'2_> eflat4-\staccatissimo g-\staccatissimo
	
	% 170
	c-\staccatissimo eflat-\staccatissimo r2
	
	aflat,,2_> c4-\staccatissimo eflat-\staccatissimo
	
	a-\staccatissimo c-\staccatissimo r \tuplet 3/2 { c8-[-( eflat c-] }
	
	\tuplet 3/2 { a-[ c a-] } \tuplet 3/2 { fsharp-[ a fsharp-] } \tuplet 3/2 { eflat-[ fsharp eflat-] } \tuplet 3/2 { c-[ eflat c-] }
	
	g4-.-\f-) g'2_>-( f!16 eflat d c-)
	
	% 175
    #(define afterGraceFraction (cons 31 32))
	\appoggiatura eflat8 \afterGrace d1 \startTrillSpan ( { c16[ d] ) \stopTrillSpan }
	%\grace eflat8-( d1-\trill-)-(-\> \bar "" \grace { c16-[ d-]-) } \bar "|"

	\tuplet 3/2 { r8 c-\p-[-( c'-]-) } \tuplet 3/2 { r8 b,-[-( b'-]-) } \tuplet 3/2 { r8 c,-[-( c'-]-) } \tuplet 3/2 { r8 g,-\f-[-( g'-]-) }
	
	\tuplet 3/2 { r8 aflat,-\p-[-( aflat'-]-) } \tuplet 3/2 { r8 g,-[-( g'-]-) } \tuplet 3/2 { r8 aflat,-[-( aflat'-]-) } \tuplet 3/2 { r8 eflat,-\f-[-( eflat'-]-) }
	
	\tuplet 3/2 { r8 f,-\p-[-( f'-]-) } \tuplet 3/2 { r8 fsharp,-[-( fsharp'-]-) } \tuplet 3/2 { r8 g,-[-( g'-]-) } \tuplet 3/2 { r8 g,,-\f-[-( g'-]-) }
	
	\tuplet 3/2 { r8 c,-\p-[-( c'-]-) } \tuplet 3/2 { r8 b,-[-( b'-]-) } \tuplet 3/2 { r8 c,-[-( c'-]-) } \tuplet 3/2 { r8 g,-\f-[-( g'-]-) }
	
	% 180
	\stemUp \slurUp
	\tuplet 3/2 { \change Staff = "down" r8 aflat,-[-( \change Staff = "up" aflat'-]-) }
	\tuplet 3/2 { \change Staff = "down" r8 g,-[-( \change Staff = "up" g'-]-) }
	\tuplet 3/2 { \change Staff = "down" r8 aflat,-[-( \change Staff = "up" aflat'-]-) }
	\tuplet 3/2 { \change Staff = "down" r8 eflat,-[-( \change Staff = "up" eflat'-]-) }
	
	\tuplet 3/2 { \change Staff = "down" r8 f,^\p-[-( \change Staff = "up" f'-]-) }
	\tuplet 3/2 { \change Staff = "down" r8 fsharp,-[-( \change Staff = "up" fsharp'-]-) }
	\tuplet 3/2 { \change Staff = "down" r8 g,-[-( \change Staff = "up" g'-]-) }
	\tuplet 3/2 { \change Staff = "down" r8 g,,^\f-[-( g'-]-) }
	
	\tuplet 3/2 { r8^\p c,-( eflat } \tuplet 3/2 { g-[ eflat c-] } \tuplet 3/2 { g'-[ eflat c-] } \tuplet 3/2 { f!-[ d b-]-) }
	
	\tuplet 3/2 { r8^\markup { \italic dim. } g-( c } \tuplet 3/2 { eflat-[ c g-] } \tuplet 3/2 { eflat'-[ c g-] } \tuplet 3/2 { d'-[ b g-]-) }
	
	s1
	
	% 185
	s
	
	\bar "|."
		}
	}
	
	%%%%%%%%%% BASS STAVE %%%%%%%%%%

lower = \relative c, {
	\time 2/2
	\key c \minor
	\tupletSpan 4
	
	< c c' >2^^-\sustainOn < eflat eflat' >4-\staccatissimo-\sustainOff < g g' >-\staccatissimo
	
	< c c' >-\staccatissimo < eflat eflat' >-\staccatissimo r2
	
	\clef "treble"
	r4 < eflat' g >-. < eflat g >-. < eflat g >-. % gl: lowered an octave
	
	r < d f aflat >-.	< d f aflat >-. r
	
	% 5
	\clef "bass"
	< g,,, g' >2^^-\sustainOn < b b' >4-\staccatissimo-\sustainOff < d d' >-\staccatissimo
	
	< g g' >-\staccatissimo < b b' >-\staccatissimo r2

	\clef "treble"
	\relative c' {
	r4 
	\once \override DynamicText.transparent = ##t
	< d f aflat >-\mp-. < d f aflat >-. < d f aflat >-.
	
	r < eflat g >-. < eflat g >-. r
	}
	
	\clef "bass" \stemDown
	g8-[-(-\sustainOn g' g, g'-] g,-[ g' g, g'-]-)-\sustainOff
	
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
	
	\stemNeutral
	c4 r f r
	
	g r g, r
	
	\clef "treble"
	\relative c' {
	c2^^-\f-\sustainOn eflat4-\staccatissimo-\sustainOff g-\staccatissimo
	
	% 20
	c-\staccatissimo eflat-\staccatissimo r2
	}
	
	\clef "bass"
	< bflat,! bflat'! >2^^-\sustainOn < d d' >4-\staccatissimo-\sustainOff < f f' >-\staccatissimo
	
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
	
	\change Staff = "up"
	f'4.-> r8 r2
	
	r2 % another translator from lower stave
	\change Staff = "down"
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
	% gl (Breitkopf): < eflat aflat >-.-) r r < eflat f aflat >-(
	< eflat aflat >-.-) r r < bflat f' aflat >-(
	
	< eflat g >-.-)-\sustainOn r r2-\sustainOff
	
	< eflat, eflat' >2^^-\sustainOn < g g' >4-\staccatissimo-\sustainOff < bflat bflat' >-\staccatissimo
	
	< eflat eflat' >-\staccatissimo < g g' >-\staccatissimo r2
	
	< g d' f >2. r4
	
	% 75
	< c,, c' >2^^-\sustainOn < e e' >4-\staccatissimo-\sustainOff < g g' >-\staccatissimo
	
	< c c' >-\staccatissimo < e e' >-\staccatissimo r2
	
	< bflat, bflat' >2^^-\sustainOn < e e' >4-\staccatissimo-\sustainOff < g g' >-\staccatissimo
	
	< bflat bflat' >-\staccatissimo < dflat dflat' >-\staccatissimo r2
	
	f8-\p-[-( c' aflat c-] g-[ c bflat c-]-)
	
	aflat8-[-( c f, c'-] e,-[ c' c, c'-]-)
	
	f,8-[ c' aflat c-] g-[ c bflat c-]
	
	% 80
	aflat8-[ c f, c'-] e,-[ c' c, c'-]
	
	\tuplet 3/2 { f,-[-( aflat c-] } \tuplet 3/2 { bflat-[ aflat g-] } \tuplet 3/2 { f-[ aflat c-] } \tuplet 3/2 { bflat-[ aflat g-] }
	
	\tuplet 3/2 { f-[ aflat c-] } \tuplet 3/2 { bflat-[ aflat g-] } \tuplet 3/2 { f-[ g f-] } \tuplet 3/2 { eflat!-[ f eflat-]-) }
		
	% 85
	< d, d' >2^^-\sustainOn < fsharp fsharp' >4-\staccatissimo-\sustainOff < a a' >-\staccatissimo

	< d d' >-\staccatissimo < fsharp fsharp' >-\staccatissimo r2
	
	\override TupletBracket.transparent = ##t
	\tuplet 3/2 { g8-[ bflat d-] } \tuplet 3/2 { c-[ bflat a-] } \tuplet 3/2 { g-[ bflat d-] } \tuplet 3/2 { c-[ bflat a-] }
	
	\tuplet 3/2 { g-[ bflat d-] } \tuplet 3/2 { c-[ bflat a-] } \tuplet 3/2 { g-[ bflat d-] } \tuplet 3/2 { g,-[ bflat d-] }
	
	\tuplet 3/2 { f,!-[ b d-] } \tuplet 3/2 { g,-[ b d-] } \tuplet 3/2 { aflat!-[ b d-] } \tuplet 3/2 { g,-[ b d-] }
	
	% 90
	\tuplet 3/2 { f,-[ b d-] } \tuplet 3/2 { g,-[ b d-] } \tuplet 3/2 { aflat-[ b d-] } \tuplet 3/2 { f,-[ b d-] }
	
	\tuplet 3/2 { eflat,-[ g c-] } \tuplet 3/2 { f,-[ aflat c-] } \tuplet 3/2 { eflat,-[ g c-] } \tuplet 3/2 { d,-[ f c'-] }
	
	\tuplet 3/2 { eflat,-[ g c-] } \tuplet 3/2 { d,-[ f c'-] } \tuplet 3/2 { eflat,-[ g c-] } \tuplet 3/2 { c,-[ eflat g-] }
	
	\tuplet 3/2 { b,-[ d g-] } \tuplet 3/2 { c,-[ d g-] } \tuplet 3/2 { b,-[ d g-] } \tuplet 3/2 { a,-[ d g-] }
	
	\tuplet 3/2 { b,-[ d g-] } g,4-\staccatissimo r2
	
	% 95
	\clef "treble"
	r2 < d'' b' >
	
	r < b aflat' >
	
	r1
	
	\clef "bass"
	< b,, b' >1-\sustainOn-(
	
	< bflat bflat' >4-\sustainOff-) r4 r2-\fermata % gl: Breitkopf
	
	% 100
	< c c' >2^^-\sustainOn < eflat eflat' >4-\staccatissimo-\sustainOff < g g' >-\staccatissimo
	
	< c c' >-\staccatissimo < eflat eflat' >-\staccatissimo r2
	
	\clef "treble"
	r4 < eflat' g >-. < eflat g >-. < eflat g >-. % gl: Breitkopf
	
	r < d f aflat >-.	< d f aflat >-. r
	
	\clef "bass"
	< g,,, g' >2^^-\sustainOn < b b' >4-\staccatissimo-\sustainOff < d d' >-\staccatissimo
	
	% 105
	< g g' >-\staccatissimo < b b' >-\staccatissimo r2

	\clef "treble"
	\relative c' {
	r4 
	\once \override DynamicText.transparent = ##t
	< d f aflat >-\mp-. < d f aflat >-. < d f aflat >-.
	
	r < eflat g >-. < eflat g >-. r
	
	}
	
	\clef "bass" \stemDown
	g8-[-(-\sustainOn g' g, g'-] g,-[ g' g, g'-]-)-\sustainOff
	
	
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
	\stemNeutral
	c4 r f r
	
	g r g, r

	r2-\sustainOn c'2^^

	eflat4-\staccatissimo-\sustainOff g-\staccatissimo < aflat,,, aflat' >2-\sustainOn
				
	% 120
	< c c' >4-\staccatissimo-\sustainOff < f f' >-\staccatissimo < aflat aflat' >2

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

	< g bflat > r r2            %gl: Breitkopf
			
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

    % gl: added bflat as 4th note in bass (Breitkopf)
	<< { eflat-[-( g eflat g-]-) e-[-( g e g-]-) } \\ { c,4 c bflat! bflat } >>
	
	% 140
	<< { c8-( f fsharp4-) } \\ { a,4 < aflat c > } >> r2
	
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
	\tuplet 3/2 { r8 c'-[-( f-] } \tuplet 3/2 { aflat-[ f aflat-] } \tuplet 3/2 { c-[ aflat c-] } \tuplet 3/2 { f-[ c f-] }
	
	\change Staff = "up"
	\tuplet 3/2 { aflat-[ f aflat-] } \tuplet 3/2 { c-[ aflat c-] }
	\clef "treble"
	\tuplet 3/2 { f-[ c f-] } \tuplet 3/2 { aflat-[ f aflat-] }
	
	\tuplet 3/2 { c-[ aflat c-] } \tuplet 3/2 { f-[ c f-] } \tuplet 3/2 { aflat-[ f aflat-] } c-.-)-[ g-\mp-]-(
	
	aflat-[ e f csharp-] d-)-[ aflat'-(-\> f d-]-)-\!
	
	\change Staff = "down"
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
	
	< c, c' >2->-\sustainOn < eflat eflat' >4-\staccatissimo-\sustainOff < g g' >-\staccatissimo
	
	< c c' >-\staccatissimo < eflat eflat' >-\staccatissimo r2
	
	% 170
	< aflat,, aflat' >2->-\sustainOn < c c' >4-\staccatissimo-\sustainOff < eflat eflat' >-\staccatissimo
	
	< aflat aflat' >-\staccatissimo < c c' >-\staccatissimo r2
	
	< fsharp,, fsharp' >2->-\sustainOn < a a' >4-\staccatissimo-\sustainOff < c c' >-\staccatissimo
	
	< fsharp fsharp' >-\staccatissimo < a a' >-\staccatissimo < c c' >-\staccatissimo < eflat eflat' >-\staccatissimo
	
	\tuplet 3/2 { g8-[-( c eflat-] } \tuplet 3/2 { g,-[ c eflat-] } \tuplet 3/2 { g,-[ c eflat-] } \tuplet 3/2 { g,-[ c eflat-]-) }
	
	% 175
	\tuplet 3/2 { g,-\sustainOn-[-( b f'-] } \tuplet 3/2 { g,-[ b f'-] } \tuplet 3/2 { g,-[ b f'-] } \tuplet 3/2 { g,-[ b f'-\sustainOff-]-) }
	
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
  \layout { }  
  
  \midi {
    \tempo 4 = 240
    }

}
