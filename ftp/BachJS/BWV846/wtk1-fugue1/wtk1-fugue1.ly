\version "2.4.0"

\header {
	opus = "BWV 846, Fuga à 4"
	composer = "Johann Sebastian Bach (1685--1750)"
	enteredby = "Shay Rojansky, updated by Andreas Scherer"

	% mutopia headers.
	mutopiatitle = "Das Wohltemperierte Clavier I, Fuga 1 (c-major)"
	mutopiacomposer = "BachJS"
	mutopiaopus = "BWV846"
	mutopiainstrument = "Piano"
	style = "Baroque"
	copyright = "Public Domain"
	maintainer = "Andreas Scherer"
	maintainerEmail = "andreas_mutopia@freenet.de"
	lastupdated = "2004/Nov/08"

	footer = "Mutopia-2004/11/08-4"
	tagline = "\\raisebox{10mm}{\\parbox{188mm}{\\quad\\small\\noindent " + \footer + " \\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[188mm][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[188mm][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}}"
}

tenor = \relative c' {
	\stemDown \slurDown \tieDown
	r8 c d e f8. g32 f e8 a |
	d, g ~ g16 a g f e f e d c d c b |
	a8 fis' g4 ~ g8 fis!16 e fis8 d \break |
	g f! e d c r r g' ~ |
%% 5
	g f16 e f4 ~ f16 f e8 d4 |
	c8 f r16 g f e f8 d g4 ~ |
	g4 r r2 |
	r1 \break |
	r8 g a b c8. d32 c b8 e
%% 10
	a, d ~ d16 e d c b8 r r d,[ |
	e fis] g8. a32 g fis8[b] e,[a] ~ |
	a16 b a gis fis8[f] e[d] ~ d16 e fis! gis! |
	a gis a b gis fis gis a b8 r r4 |
	r8 c, d e \stemUp f8. g32 f e8 a |
%% 15
	d, g ~ g16 a g f e8 \stemDown e[fis g] ~ |
	g8[fis] gis[a] ~ a g![a b] \break |
	c8. d32 c b8[e] a,[d] ~ d16 e d c |
	b8[g'] cis,[d] e[cis!] d[e] \break |
	a,8 r r e[fis g] \stemNeutral a8. b32 a |
%% 20
	g8[c] fis,[b] ~ b16 c b a \stemDown g fis e d |
	e4 d ~ d16 a' g f! e g f! a |
	g4 ~ g16[a bes8] c4 d8 g, |
	g4. f8 ~ f e d4 |
	e8 a4 g8 ~ g f[g a] |
%% 25
	bes8. c32 bes a8[d] g,[c] ~ c16 d c bes! |
	a[ bes a g] f[ g f e] d4 ~ d8.[ g16] |
	a4 r16 f'[ d8] e2 | \bar "|."
}

soprane = \relative c' {
	\stemUp \slurUp \tieUp
	r1 |
	r2 r8 g'[a b] |
	c8. d32 c b8[e] a,[d] ~ d16 e d c |
	b g a b c b c d e d e fis g8 b, |
%% 5
	c a d16 c b a g8. g16 f e f g |
	a g a b c2 b4 |
	r8 c[d e] f8. g32 f e8 a |
	d, g ~ g16 a g f e8 a ~ a16 b a g |
	f2 e8. fis16 g4 ~
%% 10
	g fis g16 f! e d c d c b |
	a c b a g8 r r16 c[b a] gis8 e' |
	d[c16 b] a gis! a b c fis, gis! a b8[a16 b]
	c8[ f] e[d] ~ d[c16 b] b8.^\downmordent a16 |
	a4 r r2 |
%% 15
	r r8 g[a b] |
	c8. d32 c b8 c[d e] f!8. g32 f |
	e8[a] d,[g] ~ g16 a g f e8 a |
	d,[bes'] a[g16 f] g f g e f g g^\prall f32 g |
	a16 cis, d g e8.^\prall d16 d8 r r4 |
%% 20
	r2 r4 r8 g,[ |
	a b] c8. d32 c b8[e] a,[d] ~ |
	d16 e d c b c d e f g a g f e d c |
	b4 c8 d g, c4 b8 |
	c4 b8 bes a d4 c8 |
%% 25
	d e f4 ~ f16 a g f e f e d |
	c2 r16 g32[a b!16 c] d[e f8] ~ |
	f32[c d e f16 g] a8. b16 <g c>2^\fermata |
}

alt = \relative c {
	\stemUp \slurUp \tieUp
	r1 |
	r |
	r |
	r8 g'[a b] c8. d32 c b8 e |
%% 5
	a, d ~ d16 e d c b8 c ~ c bes |
	a[d] g,[c] r16 a b c d4 |
	g, r8 g[a b] c8. d32 c |
	b8[e] a,[d] ~ d16 e d c! b!8 e ~ |
	e4 d c16 b c a e' d c b |
%% 10
	c a b c d c b a g4 r |
	r1 |
	r8 e[fis gis] a8. b32 a gis!8 c |
	fis, b ~ b16 c b a gis8 a4 gis8 |
	a4 r8 g[a b] c8. d32 c |
%% 15
	b8[e] a,[d] ~ d[g,] d'4 |
	c8[a] e'4 d8 r r4 |
	r8 a[b cis] d8. e32 d c!8 f! |
	b, e ~ e16 f e d cis8 r r4 |
	r8 a[b cis] d8. e32 d c!8 fis |
%% 20
	b, e ~ e16 fis e d c2 ~ |
	c16 d c b a g a fis g8 b[c d] |
	e8. f32 e d8[g] c,[f] ~ f16 g f e |
	d4 e8 d ~ d g, g4 ~
	g8 c,[d e] f8. g32 f e8 a |
%% 25
	d, g ~ g16 a g f e d e f g a bes g |
	a e f g a b! c a b2 |
	c1 |
}

bass = \relative c {
	\stemDown \slurDown \tieDown
	r1 |
	r |
	r |
	r |
%% 5
	r2 r8 c[d e] |
	f8. g32 f e8[a] d,[g] ~ g16 a g f |
	e f e d c d c b a8[d] a'[fis] |
	g16 a bes g cis,8 d a'4 e |
	a16 b c d c b a g c8 r r4 |
%% 10
	r2 r8 g,[a b] |
	c8. d32 c b8[e] a,[d] ~ d16 e d c |
	b8 e4 d8[c] f!4 e8 ~ |
	e d4 e8 f! e16 d e4 |
	a, r r2 |
%% 15
	r8 g[a b] c8. d32 c b8 e |
	a, d ~ d16 e d c b8 bes a g |
	a fis' g e d ~ d e f! |
	g8. a32 g f8[bes] e,[a] ~ a16 bes! a g |
	f e f d g8 a d,2 ~ |
%% 20
	d16 e d c b a g fis e8 e' fis g ~ |
	g a16 g fis8 d g2 ~ |
	g a4 b8 c |
	f,16 a g f e d c b c d e f g8 g, |
	c1 ~ |
%% 25
	c ~ |
	c ~ |
	c_\fermata |
}

global = { \time 4/4 \key c \major }

\score {
	 \new PianoStaff << 
		\new Staff << \global \soprane \\ \tenor >>
		\new Staff << \global \clef "bass" \alt \\ \bass >>
	>> 

	\midi { \tempo 4 = 66 }
	\layout{ %{ Use LilyPond defaults %} }
}
