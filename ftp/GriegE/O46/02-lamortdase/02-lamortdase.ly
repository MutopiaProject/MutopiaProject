\header {
mutopiatitle = "Ases Tod"
mutopiasubtitle = "La Mort D'Ase"
mutopiacomposer = "E. Grieg (1843-1907)"
mutopiapoet = "Henrik Ibsen"
mutopiaopus = "O 46 No. 2"
mutopiainstrument = "Piano"
date = "1874-76 - rescored by Grieg 1886"
style = "Romantic"
title = "Ases Tod"
subtitle = "La Mort D'ase"
composer = "Edvard Grieg (1843 - 1907)"
meter = "Andante doloroso"
opus = "Op. 46 No. 2 - from Peer Gynt Suite I"
copyright = "Public Domain"
source = "Kunkel Brothers 1891 - Kunkel's Musical Review, May 1893"
filename = "lamortdase.ly"
tagline = "Public Domain"
maintainer = "Deborah Lowrey"
maintainerEmail = "drlowrey@karmaresources.com"
maintainerWeb = "http://www.karmaresources.com"
lastupdated = "2002/07/05"
% footer = "Public Domain"
 tagline = "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by Deborah Lowrey (\\texttt{http://www.karmaresources.com}).\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
  footer = "Mutopia-2002/07/05-246"
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%										%
%	This Piano piece's main source was from the Kunkel Brothers 1891,	%
%	reprinted in 1893. Many of the slurs and fingerings were extremely	%
%	excessive (and unnecessary), and so, were omitted. Many of the		%
%	dynamics and (de)crescendi were left as entered	to help reduce		%
%	file size and make the sheetmusic (and file) less busy. If you are	%
%	interested in the fingering for this piece, please email your		%
%	request to the address @maintainerEmail. Karmically, Deborah		%
%										%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Global = \notes {\key d\major \time 4/4}

rightHand = \notes \relative c {
\clef "bass"
\context Staff <
\context Voice = VA {
	d4\p\cr fis fis2\rc 
	d4\cr fis fis2\rc
	d4\cr e8 fis g4 fis\rc
	e\decr fis8 gis <cis,4.\rced ais'> r8 
	d4\pp fis eis2
% 5
	d4 fis eis2
	e4 fis8 gis cis,4 gis'8 g
	fis e <d2 fis> r4 
\clef treble
	a'\mf\cr cis cis2\rc 
	a4\cr cis cis2\rc
% 10
\stemDown
	a4\cr b8 cis d4 cis4\rc
	b\decr cis8 dis <gis,4.\rced eis'4.> r8
\stemBoth
	a4\cr cis bis2\rc 
	a4\cr cis bis2\rc
\stemDown
	b4_#'( bold ( italic "cresc.")) cis8 dis <gis,4 eis'> dis'8 d
% 15
\tieDown
	cis8 b <a2 cis> ~ <a8 cis> r8
\stemBoth
	<fis4\f\cr b> b cis2\rc
	<fis,4\cr b> b cis2\rc
\stemDown
	d4\cr [e8 fis] g4 fis
	e [fis8 gis] ais4.\rc r8 
% 20
\property Voice.DynamicText \override #'extra-offset = #'(0 . 1.0)
	<fis,4 b\ff > b\cr <cis2 eis\rc>
	<fis,4 b\cr > b <cis2 eis\rc>
\property Voice.DynamicText \revert #'extra-offset
	e4 fis8 gis ais4 <d,8 gis> <e g>
	fis8 e <b2 d> r4
	eis'2_\p\decr <d\rced fis>
% 25
	eis\decr <d\rced fis>
	eis\cr <fis\rc a>
	<b,\decr eis> <ais4.\rced cis> r8
	ais2\decr <g\rced b>
	ais\decr <g\rced b>
% 30
	ais\cr <b\rc d>
	<e,\decr ais> <d4.\rced fis> r8
	eis2_#'(bold (italic "pi\\`u")) <d fis>
	eis\decr <d\rced fis>
	eis\cr <fis\rc a>
% 35
	<b,\decr eis> <ais4.\rced cis> r8
	\clef bass
	ais2\decr <g\rced b>
	ais\decr <g\rced b>
	ais\cr <b\rc d>
	<e,\decr ais> <d4.\rced fis> r8
% 40
	<e2\decr ais> <d4.\rced fis> r8
	<e1 ais>
	d2\pp\decr ~ d8 r8 r4
	d2 ~ d8\rced r8 r4
	d1\ppp }

\context Voice = VB {
	\clef bass
\stemDown
	fis4 b <ais2 cis>
	fis4 b <ais2 cis>
\stemUp
	d4 cis b cis8 d
	e4 d cis4. s8
\stemDown
	fis,4 b <b2 cis^\accent>
% 5
	fis4 b <b2 cis^\accent>
\stemUp
	<b4 e> <b d> <ais cis> <b8 d> <cis e>
	ais4 b2 s4
	\clef treble
	cis4 fis <eis2 gis>
	cis4 fis <eis2 gis>
% 10
	a4 gis fis gis8 a
	b4 a gis4. s8
	cis,4 fis <fis2 gis>
	cis4 fis <fis2 gis>
	<fis4 b> <fis a> gis <fis8 a> <gis b>
% 15
\tieUp
	eis4 fis2 ~ fis8 s8
	<d4 fis> <fis b> <fis2 cis'>
	<d4 fis> <fis b> <fis2 cis'>
	d'4 <cis,4 cis'> <b b'> [<cis8 cis'8> <d8 d'8>]
	e'4 <d,4 d'> <cis4. cis'> s8
% 20
	<d4 fis> <fis b> <b2 cis^\accent>
	<d,4 fis> <fis b> <b2 cis^\accent>
	<b4 e^\accent> <d, d'^\accent> <cis cis'> <b'8 d^\accent> <cis e^\accent>
	<ais,4 ais'> <fis'2 b^\accent> s4 
	<b b'> <cis bes'> <a'2>
% 25
	<b,4 b'> <cis bes'> <a'2>
	<b,4 b'> <cis bes'> d cis8 c
	a'4 g fis4. s8
	<e,4 e'> <fis ees'> d'2
	<e,4 e'> <fis ees'> d'2
% 30
	<e,4 e'> <fis ees'> g fis8 f
	d'4 cis b4. s8
	<b,4 b'> <cis\p bes'> a'2
	<b,4 b'> <cis bes'> a'2
	<b,4 b'> <cis bes'> d cis8 c
% 35
	a'4 g fis4. s8
	\clef bass
	<e,4 e'> <fis ees'> d'2
	<e,4 e'> <fis ees'> d'2
	<e,4 e'> <fis ees'> g fis8 f
	d'4 cis b4. s8
% 40
	d4 cis b4. s8
\slurUp
	d2\decr ( ) cis\rced
	b2 ~ b8 s8 s4
	b2 ~ b8 s8 s4
	b1 } >
}

leftHand = \notes \relative c, {
\context Staff <
\context Voice = VA {
\stemUp
	b4 d fis2 
	b,4 d fis2
\stemDown
	b,4 cis8 d e4 d
	cis4 d8 e fis4. s8
\stemUp
	b,4 d g2 
% 5
	b,4 d g2
\stemDown 
	cis,4 d8 e fis4 e 
	d8 cis b2 s4
\stemUp
	fis'4 a cis2 
	fis,4 a cis2 
% 10
\stemDown
	fis,4 gis8 a b4 a
	gis a8 b cis4. s8
\stemUp
	fis,4 a d2 
	fis,4 a d2
\stemDown
	gis,4 a8 b cis4 b
% 15
\tieDown
	a8 gis fis2 ~ fis8 s8
\stemUp
	b,4 d <fis2 cis'>
	b,4 d <fis2 cis'>
\stemDown
	b,4 cis8 d e4 d
	cis d8 e fis4. s8 
% 20
\stemUp
	b,4 d <g2 cis>
	b,4 d <g2 cis>
\stemDown
	cis,4_\accent <d8_\accent b'> e_\accent fis4_\accent e_\accent
	d8_\accent cis_\accent b2_\accent r4
\clef treble
\stemUp
	g'''2( )d
% 25
	g( )d
	g( d
	cis )fis4. s8
\clef bass
\stemDown
	c2( )g
	c2( )g
% 30
	c( g
	fis )b4. s8
\stemUp
	g,2( )d
	g( )d
	g( d
% 35
	cis )fis4. s8
	c2( )g
	c( )g
	c( g
	fis )b4. s8
% 40
	fis2( )b4. s8
	fis1
\stemDown
\tieDown
	b2 ~ b8 s8 s4
	b2 ~ b8 s8 s4
	b1 
}

\context Voice = VB {
\stemUp
	b'4 b cis2
	b4 b cis2
	b2 b2
	b2 fis4. r8
	b4 b cis2^\accent
% 5
	b4 b cis2^\accent
	cis4 d8 e fis4 e
	d8 cis b2 r4
	fis'4 fis gis2
	fis4 fis gis2
% 10
	fis2 fis
	fis cis4. r8
	fis4 fis gis2^\accent
	fis4 fis gis2^\accent
\stemUp
	gis4 a8 b cis4 b
% 15
	a8 gis fis2 ~ fis8 r8
	b,4 d ais'2
	b,4 d ais'2
	b,4 b b b
	b b <cis4. ais'> r8
% 20
	b4 d b'2
	b,4 d b'2
	<b,4 cis> d8 e fis4 e
	d8 cis <fis,2 b> r4
\clef treble
	s1
% 25
	s s s s s
% 30
\stemUp
	s s g'2 d
	g d
	g d
% 35
	cis fis4. r8
	c2 g
	c g
	c g
	fis b4. r8
% 40
	fis2 b4. r8
	fis1
\tieUp
	fis2 ~ fis8 r8 r4
	fis2 ~ fis8 r8 r4
	fis1 }>
}

pedals = \notes {
	\stemUp
	r8_#'( bold ( italic "Pedale")) g r g r g4.
	r8 g r g r g4.
	r8 g r8. g16 r8 g r g
	r g r r16 g r8 g4 r8
	r g r g r g4.
% 5
	r8 g r g r g4.
	r8 g r16 g r g r8 g r16 g r g
	r g r g r8 g4. r4
	r8 g r g r g4.
	r8 g r g r g4.
% 10
	r8 g r8. g16 r8 g r g
	r g r8. g16 r8 g4 r8
	r g r g r g4.
	r8 g r g r g4.
	r8 g r16 g r g r8 g r16 g r g
% 15
	r16 g r g r4 g g8 r
	r g r g r g4.
	r8 g r g r g4.
	r8 g r r16 g r8 g r16 g r g
	r8 g r r16 g r8 g4 r8
% 20
	r g r g r g4.
	r8 g r g r g4.
	r8 g r16 g r g r8 g r16 g r g
	r g r g r8 g4. r4
	r8 g r g r g4.
% 25
	r8 g r g r g4.
	r8 g r g r4 r8 g
	r4 r8 g r g4 r8
	r g r g r g4.
	r8 g r g r g4.
% 30
	r8 g r g r4 r8 g
	r g r g r g4 r8
	r g r g r g4.
	r8 g r g r g4.
	r8 g r g r4 r8 g
% 35
	r4 r8 g r g4 r8
	r g r g r g4.
	r8 g r g r g4.
	r8 g r g r4 r8 g
	r g r g r g4 r8
% 40
	r8 g r g r g4 r8
	r4 g r g
	r g( )g8 r r4
	r g( )g8 r8 r4
	r g2. 
}
\score {

<
  \context PianoStaff <
    \context Staff = "up" <
  \property PianoStaff.midiInstrument = "acoustic grand"
     \Global \clef treble 

	\context Voice=one \rightHand
		>
\context Staff = "down" < 
  \property PianoStaff.midiInstrument = "acoustic grand"
	\Global \clef bass 
	\context Voice = one \leftHand
>
  >
  \context RhythmicStaff <
    	\stemUp
	\pedals
	>
>
\midi {
 \tempo 4=50 
	}
\paper {
\translator{
      \RhythmicStaffContext
    	}
    }
}
