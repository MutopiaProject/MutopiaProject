\version "2.8.0"

%#(set-global-staff-size 14)
%# (set-default-paper-size "a4")
\paper{bottom-margin=2\cm}

\header {
	title="Sonata 1"
	composer="G.P. Telemann"
 mutopiatitle = "Sonatas for two recorders"
 mutopiacomposer = "TelemannGP"
 mutopiainstrument = "Recorder duet"
 date = "1730s"
 source = "Nouvelle Édition gravée par Joseph-Louis Renou. À Paris"
 style = "Baroque"
 copyright = "Public Domain"
 maintainer = "Laurent Claessens"
 maintainerEmail = "moky.math@gmail.com"
 maintainerWeb = "http://student.ulb.ac.be/~lclaesse/"
 lastupdated = "16/Dec/2006"
 footer = "Mutopia-2006/12/18-885"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}



FluteUnMovA={
%3
d16 e fis g a8 b16 cis' d'8 d r8 cis
b,16 cis d e fis8 g16 a b8 b,8 r8 a, 
g,16 a, b, cis d8 e16 fis g8 g, r8 fis,8
e,16 b, a, g, g b, a, g, cis e d cis g e d cis
%5
fis fis, e, d, a, fis, e, d, g fis e d b a g fis
g4 r8 fis16 e fis g a b cis8. d16
d16 e fis g a8 b16 cis' d'8 d r8 cis
b,16 a, b, gis, a, gis, a, fis, gis, fis, e,8 r8 dis8
e16 dis e d	e dis e e 	e cis d8	 r8 d8
%10
d16 cis d e, d cis d d d b, cis8 r8 cis8
cis16 b, cis fis, b, a, b, gis, a,16 e a b gis8. a16
a4 r4. cis16 d e cis d b,
cis16 b, a,8 r8 ais,8 b,16 cis d e fis[ g32 a g16 fis]
g b fis b g b dis b e8 dis e fis
%15
g16 b fis b g b fis b g fis e fis fis8. e16
e4 r4 a,16 b, cis d e fis g a
fis16 g a8 r16 fis g e 
d16 e fis g a8 b16 cis'
d'8 d r8 cis8 b,16 cis d e fis8 g16 a
b8 b, r8 a, g,16 a, b, cis d8 e16 fis
%20
g8 g,	 		r8 fis8			 e16 d e cis		 	d cis d b,
cis16 b, a,8		r8 a,8 			b,16 a, b, g,			 b, a, b, d
cis d e8		r16 d e cis		a, cis d a, 			d cis d d,
g,4(			 g,16) fis, g, e,	 fis, cis d g 			e8. d16
d b, ais, b, 		b b, a, gis,		cis a, gis, a,			a a, g, fis,
%25
b, g, fis, g,		g g, fis, e,		a, fis, e, fis,			fis fis, e, d,
g, g fis g		b g fis	g		cis'4 				r16 g16 fis e
fis cis d b, 		cis8. d16 		d4 				r4
 }


FluteDeuxMovA={
r2 d16 e fis g a8 b16 cis' d'8 d r8 cis
b,16 cis d e fis8 g16 a b8 b,8 r8 a, 
 g,16 a, b, cis d8 e16 fis
g g, fis, e, b, g, fis, e, g cis b, a, e cis b, a,
%5
d, a, g, fis, g a, g, fis, b a g fis g fis e d
cis16 b, a,8 r8 d16 cis d a, b, g, a,8 a,
d,4 r4 d16 e fis g a8 b16 cis' 
d'8 d r8 cis8 b,16 a, b, gis, a, gis, a, fis,
gis,16 fis, e,8 r8 e8 fis16 e fis d fis e fis a
%10
gis a b8 r16 a16 b gis e gis a e a gis a a,
d4( d16) cis d b, cis a, cis d e8 e,
a,8 cis16 d e cis d b, cis b, a,8 r8 gis,8
a,16 b, cis d e[ fis32 g fis16 e] d cis b,8 r8 dis8
e8 dis e fis g16 b fis b g b dis b
%15
e8. dis16	 e8 dis 	e16 b, c a,	 b,8 b,
e,16 fis, gis, a, b, cis d e cis d e8 r16 d16 e cis
d16 e fis g a8 b16 cis' d'8 d r8 cis8
b,16 cis d e fis8 g16 a b8 b, r8 a, 	
g,16 a, b, cis	 	d8 e16 fis 	g8 g,	 	r8 fis8 
%20
e16 d e cis d cis d b, cis16 b, a,8 r8 gis8
a16 gis a e a gis a a a fis g8 r8 g8 
g16 fis g a, g fis g g g e fis8 r8 fis8
fis16 e fis b, e d e cis d a, b, g, a,8 ais,8
b,16 d cis d gis, gis fis e a, cis b, cis fis, fis e d
%25
g,16 b,a, b, e, e d cis fis, a, g, e, d, d cis b,
e, e dis e		g e dis e	a,4		r16 e d cis
d a, b, g,		a,8 a,		d,4		r4
}

FluteUnMovB={
r1
r1
r1
r2	d4	a
%5
fis8 gis16 a b8 a gis e cis' e
fis d b d e cis a cis
d8 b, gis b, cis a b, gis
a16 a, b, cis d e fis gis a4 r4
r16 a, b, cis d fis gis a b b, cis dis e e fis gis
%10
a a, b, cis dis dis e fis gis16 gis, a, b, cis cis dis e
fis e fis gis		fis gis a b e8 fis16 gis a4(
a4) gis a8[ a,] fis,[ d,]
g,4 g r8 fis16 e d8 e16 fis
g,8 e16 d	 cis8 d16 e	 fis,8 d16 cis		 b,8 cis16 d
%15
d,8 cis16 b,	a,8 b,16 cis	d,8 e,16 fis,		g,8 fis,16 e,
fis,8 g,16 a,	 b,8 a,16 g,	a,8 b,16 cis		d8 cis16 b,
cis8 d16 e	fis8 e16 d	e8 a,			r4
%18
r8 a8		a8 a8		fis16 g a8		a a
dis8 a a a b, b16 a b a g fis
%20
g4 r4 g,4 r4
fis,4 r4 ais,4 r4
b,16 ais, b, cis b, cis ais, b, cis b, cis d cis d b, cis
d8 cis d b, e8 d e cis
fis4 b,8 d e4 a,8 cis
%25
d4 g,8 b, cis4 fis,8 ais,
b,8 cis16 d	e8 d16 cis	d8 b	cis ais
b,8 cis16 d e8 d16 cis d8. e16 cis4
b,4 fis8 r8 dis8 r8 b, r8
cis8 r8 dis r8 e16 b a b g b a b
%30
e b a b gis b a b d cis d e d fis e d
cis4 r4 d g
e8 fis16 g a8 g fis d b d
e8 c	 a c		 d b, 		g b,
c a, fis a, b, g a, fis
%35
g, b fis, a b, g a, fis
g8. a16 fis8. g16 g4 r4
r16 d e fis g a b cis' d'2(
d'4) cis'2 b4(
b4) a4( a) gis
%40
a16 fis g a b b, cis d e d e fis e fis gis a
d4 a fis8 gis16 a b8 a
gis8 e cis' e fis d b d
e cis a cis d b, gis b,
cis a b, gis a, b,16 cis d8 cis16 b,
%45
cis8 a b, gis a,8 b,16 cis d8 cis16 b,
cis4 r8 fis,8 g,16 fis, g, a, b, a, b, cis
d cis d e fis e fis g a8 cis d b
fis4 e d r16 d,16 e, fis,
g, fis, g, a, b, a, b, cis d16 fis, g, a, b, a, b, cis
%50
d cis d e fis a, b, cis d cis d e fis e fis g
a8 b16 cis' d'8 g fis4 e
d2 r2
}



FluteDeuxMovB={
a,4 d b,8 cis16 d e8 d
cis a,		 fis a,		 b, g, 		e g,
a, fis, d fis, g, e, cis e,
fis, d e, cis	d, d cis a,
%5
d4 d'4 r8 cis'16 b a8 b16 cis'
d8 b16 a gis8 a16 b cis8 a16 gis fis8 gis16 a
b,8 gis16 fis e8 fis16 gis a,8 b,16 cis d8 cis16 b,
cis4 r4 r16 a,16 b, cis d e fis gis
a2( a4) gis(
%10
g) fis( fis4) e4(
e4) 			dis			 e16 cis d e		 fis fis, gis, a,16
b, a, b, cis b, cis d e a,4 d4
b,8 cis16 d e8 d cis a, fis a,
b, g, 			e g, 			a,8 fis, 		d fis,
%15
g, e, cis e, fis, d e, cis
d,8 e,16 fis,		 g,8 fis,16 e,		 fis,8 g,16 a,		 b,8 a,16 g,
a,8 b,16 cis d8 cis16 b, cis8 d16 e fis8 e16 d
e8 a,		 	r4 			c 			r4
b,4 r4 dis r4
%20
r8 e8 e e cis16 d e8 e e
ais, e e e fis, fis16 e fis e d cis
d cis d e d e cis d e d e fis e fis d e
fis4 b4 gis8 a16 b cis'8 b
ais fis d' fis g e cis' e
%25
fis d b d e cis ais cis
d b cis ais b,8 cis16 d e8 d16 cis
d8 b cis ais b, g, e, fis,
b,16 fis e fis 		d fis e fis	 b,16 fis e fis 	dis fis e fis
a,16 gis, a, b, 	a, c b, a, 		g,4 			b,8 r8
%30
gis,8 r8 e, r8 fis, r8 gis, r8
a,4 d b,8 cis16 d e8 d
cis8 a,			 c'4			 r8 b16 a 		g8 a16 b
c8 a16 g		 fis8 g16 a 		b,8 g16 fis		 e8 fis16 g
a,8 fis16 e d8 e16 fis g,8 b fis, a
%35
b, g a, fis g, b fis, a
b,8 g, d8 d, g,16 d, e, fis, g, a, b, cis
d4 r4 r16 d,16 e, fis, g, b, cis d
e16 e fis g a a, b, cis d d e fis g g, a, b,
cis cis d e fis fis, gis, a, b, a, b, cis b, cis d e
%40
a,8 b,16 cis d2 cis4
r8 d8 cis a, d4 d'4
r8 cis'16 b a8 b16 cis' d8 b16 a gis8 a16 b
cis8 a16 gis fis8 gis16 a d8 gis16 fis e8 fis16 gis
a,8 b,16 cis d8 cis16 b, cis8 a b, gis
%45
a,8 b,16 cis d8 cis16 b, cis8 d16 e fis8 e16 d
e8 a, r8 fis,8 g,16 fis, g, a, b, a, b, cis
d cis d e fis e fis g a8 a, b, g,
a,8 fis, g, a, r16 d,16 e, fis, g, fis, g, a,
d d, e, fis,		g, fis, g, a, 		b, a, b, cis		d fis, g, a,
%50
b,16 a, b, cis d cis d e fis a, b, cis d cis d e
fis8[ e] fis[ b,] a,[ d] g,[ a,]
d,2 r2
}

FluteUnMovC={
r4 fis4 fis 
b2.(
b8) ais b cis' fis e
d8 cis d cis b, a,
%5
g, fis, e, fis, g, e,
fis,4 r4 ais,
b, g4. g8
g e fis4. fis8
b8 g e4. fis8
%10
fis2.
r8 c'8 b a g fis
g4 c' a
fis b g
e a8 fis g4
%15
r8 a g4( fis8.) e16
e2.
r8 b a g fis e
fis8 a g fis e d
e g fis e d cis
d4. e8 fis4
r8 g8 e4. d8
cis8 fis, e, g, fis, b,
ais,4 r8 b,8 ais, d
cis fis e g fis b
ais4 ais4. gis16 ais
b8[ fis] b,[ a,] g,[ e,]
a,8[ e] a,[ g,] fis,[ d,]
g,8 fis, e, ais, b, d,
g, e, fis, d, e, fis,
b,4 g e
cis fis d
b, e8 cis d4(
d8) e cis4. b,8
b,2.
}

FluteDeuxMovC={
b,8 cis d cis b, a,
g, fis, e, fis, g, e,
fis,4 r4 ais,4
b, fis4 fis
%5
 b2.(
b8) ais b cis' fis e
d8 cis b, a, b, g,
a, cis d cis d d,
g,4 g,4. fis,8
%10
fis, b, ais, d cis e
dis4 dis4. cis16 dis
e8 b e d c a,
d a d c b, g,
c b, a, dis e g,
%15
c a, b, g, a, b,
e, a, gis, cis b, d
cis4 cis4. b,16 cis
d8 a, d4. d8
d b, cis4. cis8
cis ais, b, cis d cis
d b, cis b, ais, b,
fis,4 r4 r4
r8 fis,8 e,[ g,] fis,[ b,]
ais,4 r8 b,8 ais, d
cis g fis e d cis
d4 g e
cis fis d
b,4 e8 cis d4
r8 e8( d4) cis8. b,16
b,8 fis b, a, g, e,
a, e a, g, fis, d,
g, fis, e, ais, b, d,
g, e, fis,2
b,2.
}


repD={
\times 2/3 {  fis16[ g a] }\times 2/3 {  g[ a b] }\times 2/3 {  a[ b c'] }
\times 2/3 {  b[ c' a] }\times 2/3 {  b[ c' a] }\times 2/3 {  b[ a b] }
}

repE={
d'16[ cis'32 b] a[ g fis e] a[ g fis e]
fis16 a fis a fis a
}

FluteUnMovD={
fis16 g g4
a16[ g32 fis] g[ fis e d] a16[ d]
b8 g4
e8 r8 r8
%5
d16 a, fis a, d a, 
e a, g a, e a,
fis a, a a, g a,
fis g fis e d e
fis g g4
%10
a16[ g32 fis] g[ fis e d] a16[ d]
b8 g4
e8 r8 r8
a,8 b, cis
d8 r8 r8
\times 2/3 {cis16[ d e]}\times 2/3 {d[ e fis]}\times 2/3 {e[ fis g]}
%15
\times 2/3 {fis[ g e]}\times 2/3 {fis[ g e]}\times 2/3 {fis[ e fis]}
\times 2/3 {e[ fis g]}\times 2/3 {fis[ gis a]}\times 2/3 {gis[ a b]}
\times 2/3 {a[ b gis]}\times 2/3 {a[ b gis]}\times 2/3 {a[ gis a]}
b a gis fis e d
a16 gis fis e d cis
d8 r8 r8
%20
cis8 r8 r8
b,16 a, d cis b, a,
gis e fis gis a8(
a16) b gis8. a16
a16[ gis32 fis] e[ d cis b,] e[ d cis b,]
%25
cis16 e cis e cis e
a16[ gis32 fis] e[ d cis b,] e[ d cis b,]
cis16[ a] b,8.[ a,16]
a,4.

\bar ":|:"

cis16 d d4
e16[ d32 cis] d[ cis b, a,] e16[ a,]
%30
d e e4
fis8 r8 r8
fis16 b, b b, fis b,
g8 e g
fis16 b, g b, fis b,
%35
g8 e g
c'16 b a g fis e
a8. b16 g8(
g16) fis fis8. a16
e8. dis16 e8(
e16) d cis( b,) ais, gis,
fis, gis, ais, fis, b, fis
b16 cis' ais8. b16
b([ a32 g)] fis[ e( d) cis] b[ a( gis) a]
gis8 r8 r8
a16[ g32 fis] e[ d cis b,] a[ g fis g]
\repD
d8 e fis
g8 r8 r8
\times 2/3 {  fis16 [ g a ] }\times 2/3 {  g[ a b ] }\times 2/3 {  e[ fis g ] }
\times 2/3 {  fis16[ g e ] }\times 2/3 {  fis [ g e ] }\times 2/3 {  fis[ e fis ] }
g8 r8 r8
fis8 r8 r8
b16 a g fis e d
a g fis e d cis
g fis e d g fis
g8. fis16 e fis(
fis) g e8. d16
\repE
d'[ cis'32 b] a[ g fis e]
a g fis e
fis16[ d'] e8.[ d16]
d4.
\bar ":|"
}





FluteDeuxMovD={
d16 e e4
fis8 r8 r8
g8 e4
cis16[ d32 e] d[ cis b, a,] e16[ a,]
fis,8 d fis,
cis e cis
d fis e
d16 fis, g, e, fis, a,
d e e4
fis8 r8 r8
g8 e4
cis16[ d32 e] d[ cis b, a,] e16[ a,]
 \times 2/3 {cis[ d e]}\times 2/3 {d[ e fis]}\times 2/3 {e[ fis g]}
\times 2/3 {fis[ g e]}\times 2/3 {fis[ g e]}\times 2/3 {fis[ e fis]}
a,8 b, cis
d8 r8 r8
\times 2/3 {cis16[ d e]}\times 2/3 {d[ e fis]}\times 2/3 {b,[ cis d]}
\times 2/3 {cis[ d b,]}\times 2/3 {cis[ d b,]} \times 2/3 {cis[ b, cis]}
d8 r8 r8
cis8 r8 r8
fis16 e d cis b, a,
e d cis b, a, gis,
d cis b, a, d cis
d8. b,16 cis8
cis16 d b,8. a,16
a,16 e cis e cis e
a[ gis32 fis] e[ d cis b,] e[ d cis b,]
%cis8 e cis e cis e a16 a, gis,8. a16
cis16 e cis e cis e
a16[ a,] gis,8.[ a,16]
a,4.

\bar ":|:"

a,16 b, b,4
cis8 r8 r8
b,16 cis cis4
d16[ e32 fis] e[ d cis b,] fis16[ b,]
dis8 b, dis
e16 b, g b, a b,
dis8 b, dis
e16 b, g b, e b,
a g( fis e) dis cis
b, cis dis b, e e,
g, a, b, a, b, g,
cis b, ais, b, ais, cis
g fis e( d) cis b,
e8. fis16 d8(
e16) e cis8. b,16
b,8 r8 r8
e16[ d32 cis] b,[ a, gis, fis,] e[ d cis d]
cis8 r8 r8
d e fis
g8 r8 r8
\repD
\times 2/3 {  a,16[ b, c ] }\times 2/3 {  b, [ cis d ] }\times 2/3 {  cis [ d e ] }
\times 2/3 {  d16[ e cis ] }\times 2/3 {  d[ e cis ] }\times 2/3 {  d[ cis d ] }
e d
cis b, a, g,
d cis b, a, g, fis,
g,8 r8 r8
fis,8 r8 r8
e16 d g fis e d
cis a, b, cis d8(
d16)[ e] cis8.[ d16]
d16 a fis a fis a
\repE
d'16[ d] g,8[ a,]
d,4.
%\bar ":|"
}


globalUn={
 \set Staff.instrument = "Recorder 1"
	\set Staff.midiInstrument = "clav"
}

globalDeux={
 \set Staff.instrument = "Recorder 2"
\set Staff.midiInstrument = "recorder"
}

globalA={
\time 4/4
\key d\major
}

globalB={
\time 4/4
\key d\major
}


globalC={
\time 3/4
\key d\major
}

globalD={
\time 3/8
\key d\major
}

globalAUn={
\globalA
\globalUn
}

globalADeux={
\globalA
\globalDeux
}

globalBUn={
\globalB
\globalUn
}

globalBDeux={
\globalB
\globalDeux
}

globalCUn={
\globalC
\globalUn
}

globalCDeux={
\globalC
\globalDeux
}
globalDUn={
\globalD
\globalUn
}

globalDDeux={
\globalD
\globalDeux
}


\book
{

% PREMIER MOUVEMENT
	\score	
	{\transpose d f''
		<<
			\new Staff    << 
					\globalAUn
					\FluteUnMovA
						>>
			\new Staff << 
					\globalADeux
					 \FluteDeuxMovA
						>>
		>>
		\header {
		     piece = \markup { \hspace #12 \large \bold "Dolce" }
		}
	
	\midi {\tempo 4=50}
	\layout{}
	} 


% DEUXIÈME MOUVEMENT
	\score	
	{\transpose d f''
		<<
			\new Staff    << 
					\globalBUn
					\FluteUnMovB
						>>
			\new Staff << 
					\globalBDeux
					\FluteDeuxMovB
						>>
		>>
		\header {
		     piece = \markup { \hspace #12 \large \bold "Allegro" }
		}
	
	\midi {\tempo 4=80}
	\layout{}
	} 


% TROISIÈME MOUVEMENT
	\score	
	{\transpose d f''
		<<
			\new Staff    << 
					\globalCUn
					\FluteUnMovC
						>>
			\new Staff << 
					\globalCDeux
					\FluteDeuxMovC
						>>
		>>
		\header {
		     piece = \markup { \hspace #12 \large \bold "Largo" }
		}
	
	\midi {\tempo 4=80}
	\layout{}
	} 


% QUATRIÈME MOUVEMENT
	\score	
	{\transpose d f''
		<<
			\new Staff    << 
					\globalDUn
					\FluteUnMovD
						>>
			\new Staff <<  
					\globalDDeux
					\FluteDeuxMovD
						>>
		>>
		\header {
		     piece = \markup { \hspace #12 \large \bold "Vivace" }
		}
	
	\midi {\tempo 4=80}
	\layout{}
	} % End of score

} % End of book

