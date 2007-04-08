\version "2.6.4"

%#(set-default-paper-size "a4")
%#(set-default-paper-size "letter")

#(set-global-staff-size 18)

\header{
title="Ricercare a 6"
subtitle="Musikalisches Opfer"
opus="BWV 1079"
composer="Johann Sebastian BACH (1685 - 1750)"

mutopiatitle = "Musikalisches Opfer, Ricercare a 6"
mutopiacomposer = "BachJS"
mutopiaopus = "BWV 1079"
mutopiainstrument = "Harpsichord, Piano"
date = "1747"
source = "Breitkopf & Härtel, 1885"
style = "Baroque"
copyright = "Public Domain"
maintainer = "Arnaud Gossart"
maintainerEmail = "arnaud.gossart@tiscali.fr"
maintainerWeb = "http://arnaud.gossart.chez-alice.fr/"
lastupdated = "2006/Mar/13"

footer = "Mutopia-2006/03/23-702"
tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Voices %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

voiceOne = \relative c''{

	R1*36						%1 to 36
	c2 ees						%37
	g aes
	b, b4\rest g'
	fis2 f						%40
	e ees2.
	d4 des c
	b g c f
	ees2 d
	c2. bes8 c					%45
	d4 c8 d ees4 d
	c d8 ees d c b c
	b d g2 f8 ees
	d1~
	d2 c~						%50
	c bes1
	a2~
	a4 g8 fis g4 a8 bes
	c1~
	c4 d8 c bes4 a				%55
	bes2 c~
	c4 bes g'1
	f4 ees
	d1~
	d4 des c2~					%60
	c bes4 aes
	g2. a8 bes
	c4 bes8 c d4 c8 d
	ees1
	f							%65
	ees~
	ees2 d1
	c4 bes
	aes2 aes'1
	g2~							%70
	g f4 ees
	d c8 d ees2~
	ees4 f8 g aes1
	g2
	c1							%75
	f,4 bes2 aes8 g
	f4 g aes2.
	g4 bes,2\rest
	R1*2
	bes2\rest bes'2.			%81	
	aes4 aes2~
	aes4 g ges2
	f2. bes4
	e,2 f						%85
	g a
	bes1~
	bes2 a
	bes4 f bes2.
	aes!2 bes8 aes				%90
	g2 bes,2\rest
	R1*2
	bes4\rest g' c2~		
	c4 bes2 c8 bes				%95
	a4 aes2 g4
	a bes8 a g2.
	a8 g fis4 a
	d,2. cis8 d
	e2. fis8 g					%100
	a4 g8 fis g1
	fis2
	g2 g
	fis f~
	f4 e8 d e g aes!4~			%105
	aes8 g f e f4 g
	c, f8 ees! des c bes a
	bes c des2 c4
	f, bes4\rest bes2\rest
	R1							%110
	bes2\rest ees
	f2. g4
	aes ees c'2
	b bes2~
	bes4 aes~ aes8 g f e		%115
	f1
	bes,2\rest bes4\rest aes'~
	aes8 g f e f4 g
	c,1~
	c4 bes8 c bes aes g aes		%120
	g2 bes4\rest g'~
	g f2 e4
	f2 f
	d! bes
	bes\rest ees				%125
	c aes
	R1*4
	ees'2 g						%131
	aes c
	d,! bes4\rest bes'
	a2 aes
	g ges2.						%135
	f4 fes ees
	d bes ees aes
	g2 f
	ees4 g bes ees,
	aes f des ees8 f			%140
	ges4 ees c2~
	c8 ees des c bes2~
	bes4 ees8 des c4 bes
	a8 g a bes c des ees c
	des ees des c bes c des bes	%145
	c2. bes4
	c8 ges' f ees des2~
	des8 ees des c des bes f'4~
	f8 ees d! c bes2~
	bes bes8\rest ees f ges		%150
	c, ees des c bes4 a
	bes2 bes\rest
	R1*3
	bes8\rest d e f g aes bes g	%156
	aes1~
	aes4 aes g2~
	g f4 es
	des1~						%160
	des2 c
	f g
	aes1~
	aes2 g
	aes4 bes,4\rest bes2\rest	%165
	bes4\rest g'2 f8 ees
	d2 e
	f8 g aes f d aes' g f
	ees2~ ees8 d c b
	c bes! aes g aes2			%170
	g2 bes\rest
	bes4\rest c~c8 bes a g
	d'2~ d8 c bes a
	g4 bes\rest bes2\rest
	R1*2						
	bes8\rest ees d c bes a g fis	%177
	g4 g'2 fis4
	g bes,\rest bes2\rest
	R1*3						
	bes4\rest f' d g			%183
	c, d8 e f2~
	f4 ees!8 f bes,4 c8 d		%185
	ees4( f16 ees d ees f4 g16 f ees f)
	g4 bes,\rest bes2\rest
	R1
	bes2\rest bes4\rest des~
	des c8 bes a4 f'~			%190
	f d! bes ees
	a, b8 c d4 des~
	des c2 bes!4~
	bes aes8 g aes4 f'
	d g c, d8 e					%195
	f2. ees!8 d
	ees4 b c b\rest
	b\rest ees c f~
	f g8 f ees2.
	ees4 d2~					%200
	d4 des c2.
	c4 b c
	d! b c1
	b2
	c1~							%205
	c
	
	\bar "|."
	
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

voiceTwo = \relative c''{

	R1*8						%1 to 8
	g2 bes
	c ees						%10
	fis, f4\rest d' 
	cis2 c
	b bes2.
	a4 aes g
	fis d g c					%15
	bes2 a
	g4 aes!8 g16 f g4 c
	bes ees c f~
	f ees8 d ees2.
	d4 a b						%20
	c g g\rest c8 bes!
	a g f4 g\rest aes
	g4. f8 ees d c b
	c4 c' f,2~
	f4 ees g\rest bes			%25
	ees d8 c b4 c
	d2. e8 f
	e4 fis g a
	d,2. ees!8 d
	c1~							%30
	c4 fis, g a
	bes8 a g2 fis4
	g2 g\rest
	g4\rest f f'2~
	f4 ees2 d8 c				%35
	d2. ees8 d
	c2 g8\rest c bes aes
	g4 c2 d4~
	d g8 f ees d c bes!
	a4 b8 c d2~					%40
	d4 c8 b c2~
	c8 bes! aes!2 f4
	g g\rest g\rest c8 b
	c2. bes!8 aes
	g4 f8 g aes4 g8 aes			%45
	bes1 
	aes 
	g4. b8 c2~
	c bes!~
	bes2. a8 g					%50
	a2. g8 fis
	g2. fis8 e
	fis4 d g2~
	g4 a8 g fis4 g
	a2~ a8 g4 fis8				%55
	g2 a
	d, g\rest
	g\rest c~
	c bes1
	aes4 g						%60
	f1~
	f2 ees4 f8 g
	f2 bes~
	bes4 b c2
	d1~							%65
	d2 c~
	c bes!4 aes!
	g1~
	g4 f f'1
	ees4 des					%70
	c1
	bes
	c2. d8 ees
	f2 ees~
	ees4 f8 g f4 ees			%75
	d2 ees~
	ees d
	ees g,\rest
	R1
	g2\rest ees'~				%80
	ees4 d des2.
	c4 ces2
	bes2. ees4~
	ees d8 c bes2
	c2. bes8 c					%85
	des2 c4 d8 ees
	f2. ees8 f
	ges2 f2~
	f2. ees8 d
	c2 g\rest					%90
	c ees
	g4 d g2~
	g4 f2 g8 f
	ees4 ees2 f8 ees
	d4 g4. f8 ees d				%95
	c4 f bes, c~
	c d8 c bes4 g
	e'2 g,4\rest a~
	a g8 fis g4 g\rest
	R1							%100
	g4\rest a bes g8 a
	bes c d4~ d2~
	d4 g, ees'2~
	ees8 d c b c4 d
	g,4. bes!8 aes! g f e		%105
	f g aes2 g4
	f g\rest g2\rest
	R1
	g2\rest g4\rest bes
	c2. d4						%110
	ees bes ees2
	d! des~
	des4 c8 des ees g aes4~
	aes8 g f e f4 g
	c,2 g\rest					%115
	g4\rest c2 bes8 aes
	g aes bes4~ bes8 g' f e
	f g aes2 g4~
	g f4. ees!8 des c
	des1						%120
	c~
	c4 des2 c4~
	c c aes f
	aes2 aes\rest
	g4\rest bes g ees			%125
	ges2 ees~
	ees g4\rest c~
	c8 f, g a bes c des bes
	ees1~
	ees8 aes, bes c des ees f des	%130
	bes4. c8 des c bes4
	aes ees'8 des ees4 aes~
	aes8 c bes aes g f ees d!
	c ges' f ees d c bes c
	des fes ees des c bes aes bes	%135
	ces des ces bes aes ges f ges
	aes ces bes aes g! f ees d!
	ees4 ees'2 d8 c!
	des2. c8 bes
	ces2. bes8 a				%140
	bes2. a4
	f'2. aes,!4
	ges2. ees'4~
	ees c f,2~					
	f4 f'2 e4					%145
	ees! d des2
	c~ c8 c bes a
	bes2 g4\rest g8\rest c
	f,2~ f8 e4 f8
	g f e f ges2				%150
	f~ f8 f ees! f
	ges aes ges f ees f ges ees
	f4 g\rest g2\rest
	g8\rest c, des ees f aes g f
	c'1							%155
	R1
	g8\rest c d e f1
	ees!4 des
	c1~
	c4 c bes2~					%160
	bes aes 
	des!1
	ees2. d!4
	ees1~
	ees4 ees2 des!8 c			%165
	bes4 g\rest g2\rest
	R1*4
	g2 b						%171
	c ees
	fis, g4\rest d'
	cis2 c
	b bes2.						%175
	a4 aes g
	fis d g c
	bes2 a
	g4 d' bes ees
	a, b8 c d2					%180
	g,4 a8 b c2
	b bes
	a aes4 g
	g2 f4 g8 a
	bes2 f						%185
	c' g4\rest bes~
	bes aes!8 bes c4 des8 c
	bes2. f4
	e c'2 bes8 aes!
	g4 c f, g8 a				%190
	bes2 g\rest
	g4\rest d2 g8 aes!
	bes4 aes2 g4~
	g c2 d8 c
	b4 c g\rest aes!8 bes		%195
	c2~ c8 d c b
	c4 f, g g\rest
	g2\rest g4\rest aes
	g d'2 c8 b
	c2. f4						%200
	g bes,!2 bes4
	a aes2 aes4 
	g2. aes4
	g2 g
	g1~							%205
	g
	
	\bar "|."
	
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

voiceThree = \relative c'{

	c2 ees						%1
	g aes
	b, b4\rest g'4
	fis2 f
	e ees2.						%5
	d4 des c
	b g c f
	ees2 d 
	c4 ees8 d16 c d4 g
	ees aes g c~				%10
	c4 bes8 a bes2~
	bes4 a e fis
	g d d\rest g8 f!
	ees! d c4 c\rest ees
	d4. c8 bes4 a				%15
	g g' c, d
	ees2 c4\rest ees
	d g ees aes
	g g, c bes
	a2 d						%20
	g,4 g'8 aes g f ees d 
	c4 d8 e f2~
	f4 b, c aes
	g2 a4 b
	c c' f,8 ees d4				%25
	g fis g2
	a4 g8 fis g2~
	g4 a bes a~
	a g8 fis g2~
	g4 a8 g fis4 g				%30
	a2 d,4 e8 fis
	g f! ees! d ees4 d8 c
	bes4 g g'2~
	g4 f8 g aes!2
	g2. f8 ees					%35
	f2. g8 f
	ees4 f8( ees16 d) c4 c\rest
	c\rest g'2 f8 ees
	d4 b g' c,\rest		
	c2\rest c4\rest g'~			%40
	g g2 f8 g
	aes g f2 aes4
	d, c8 b c2
	g'4. fis8 g2
	c,1							%45
	bes2 c\rest
	c\rest f4. ees8
	d2 g~
	g4 d g f
	ees2 c\rest					%50
	R1*2
	c4\rest d2 c8 d
	ees1
	d2. c4						%55
	d c8 d ees4 d8 c
	g'2 bes1
	a2~
	a g4 f
	ees1~						%60
	ees2 d1 
	c2~
	c f
	g4. f8 ees4 f8 g
	aes2 g~						%65
	g2. aes8 g
	f1~
	f2 ees~
	ees d
	bes'1~						%70
	bes2 aes4 g
	f2 g4 f8 g
	aes1
	c,4\rest bes'2 c8 des
	c1							%75
	bes~
	bes~
	bes2 c,\rest 
	f2. bes4 
	ees,2. aes4					%80
	g4 f8 ees f4 g
	ees f8 ges f4 ees
	d2 ees
	f2. e8 f
	g4 f8 g aes2				%85
	bes c,\rest
	c4\rest bes'2 c8 des
	ees2. d!8 c
	d2 c,\rest
	R1							%90
	c4\rest g' c2.
	bes2 c8 bes
	aes4. g8 aes4 bes8 aes
	g4 c,\rest c2\rest
	R1*4					
	c4\rest d g2.				%99
	a8 bes c4 d8 ees!			%100
	d2. ees4
	d4 g, a8 bes c4~
	c bes c,2\rest
	R1
	c2\rest c4\rest c			%105
	d2. e4
	f c f2
	e ees~
	ees4 d8 c d f ges4~
	ges8 f ees d ees4 f			%110
	bes, ees'8 des ces bes aes g
	aes bes ces2 bes4
	aes c,\rest c2\rest
	R1
	f2 aes						%115
	c des
	e, c4\rest c'
	b2 bes
	a aes2.
	g4 ges f					%120
	e c f bes
	aes2 g
	f2 c\rest
	c4\rest f4 d bes
	des2 c\rest					%125
	c4\rest ees c aes
	c2 c\rest
	R1
	c8\rest ees f g aes bes c aes
	f1							%130
	ees4 g bes des
	ees aes, c,2\rest
	R1*20
	c8\rest c' bes aes g aes bes g	%153
	aes2 c,\rest				
	c8\rest c' bes aes g f e g	%155
	c,4 c\rest c2\rest
	c\rest c8\rest ees'! des c
	bes1~
	bes4 bes aes2~
	aes g4 f					%160
	ees2. f8 ges
	f4 g!8 aes bes2
	c4 bes aes4. bes8
	ces4 des2 c8 bes
	c4 c2 bes8 aes				%165
	g4 bes2 aes8 g
	f2 g
	c,4 c' b2
	c8 bes! aes g f4 aes
	g2~ g8 g f ees				%170
	d c b a g4 d'
	c ees g c,\rest
	c\rest d g2~
	g8 bes a g a2~
	a4 g8 fis g4. f8			%175
	ees d ees4 c c\rest
	R1
	c4\rest d' ees d8 c
	bes4 c,\rest g'2
	fis f						%180
	e c4\rest ees
	d g c, d8 e
	f4 c d8 c d4
	g,2 a4 f
	f'2 c\rest					%185
	c4\rest a' f bes
	ees, f8 g aes!2.
	g8 f g2~
	g4 f8 e f4 c\rest
	R1							%190
	c4\rest f d g
	c, d8 ees f4 e8 f
	g4 c, f2
	e4 f8 g f2
	g2. f8 g					%195
	aes2.
	g8 f
	g4 d c c\rest
	R1*3
	c2\rest c4\rest ees			%201	
	c f2 ees4
	d2 ees4 f
	ees2 d
	c1~							%205
	c
	
	\bar "|."
	
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

voiceFour = \relative c'{

	R1*24						%1 to 24
	g2 bes						%25
	c ees
	fis, a4\rest d
	cis2 c
	b bes2.
	a4 aes g					%30
	fis d g c
	bes2 a
	g4 c2 bes4
	a d2 c4
	b c8 d c2.					%35
	b8 a b2
	c4 d8( c16 b) c2~
	c4 ees c f~
	f ees8 d ees2.
	d4 a b						%40
	c g c2~
	c4 d8 ees f4 aes,
	g2. f4 
	g c d e8 f
	e4 d8 e f2~					%45
	f4 ees!8 f g4. f8
	ees c b c d2
	g,1~
	g~
	g4 a8 bes c4 ees			%50
	d1
	e4 ees2 d8 c
	d4 b g2~
	g4 fis b2\rest
	b\rest b4\rest a~			%55
	a g2 fis4 
	g d ees2.
	e4 f2~
	f4 fis g2.
	g4 aes!2~					%60
	aes4 a bes2.
	b4 c bes
	a2 bes4 aes
	g2 aes4 g
	f ees8 f g2~				%65
	g4 g aes2~
	aes4 a bes2.
	b4 c2~
	c4 c d2.
	d4 ees2~					%70
	ees4 ees f2~
	f ees4 d
	c1
	bes
	aes~						%75
	aes2 g4 aes
	bes1
	bes2\rest ees~
	ees4 d des2.
	c4 ces2						%80
	bes2. ees4
	aes,2. f4
	bes1~
	bes4 c des2
	c2. des8 c					%85
	bes2 c
	bes1
	c
	bes2 bes\rest
	bes4\rest c f2~				%90
	f4 ees2 d8 c
	d2. ees8 des
	c4. b8 c4 d!
	ees4 aes,\rest aes2\rest
	bes d						%95
	ees4 aes,\rest aes\rest g
	d' a bes2~
	bes a4 g8 fis
	g2~ g8 fis g bes
	e,2 aes\rest				%100
	aes4\rest a d, g~
	g8 a bes g d'2
	bes\rest bes4\rest g
	a2. b4
	c g c2						%105
	b bes~
	bes4 a8 g a c des4~
	des8 c bes a bes4 c~
	c bes8 aes! ges f ees d
	ees f ges2 f4				%110
	ees1~
	ees2. bes4
	c aes aes' aes\rest
	aes2\rest aes4\rest c~
	c8 bes c des c bes aes g	%115
	aes2. g8 f
	c'2~ c4 f,8 g
	aes4 aes\rest aes\rest aes8\rest g
	a bes c2 f4~
	f bes, bes2\rest			%120
	bes4\rest g' aes g
	c,4. bes16 aes bes2~
	bes4 aes aes2\rest
	R1*3
	aes8\rest g a bes c des ees c	%127
	des1~
	des4 c8 bes aes4 aes\rest
	R1*15
	bes2 des					%145
	f ges
	a, a4\rest f'
	e2 ees
	d des2.
	c4 ces bes					%150
	a f bes ees
	des2 c
	bes c~
	c2. bes4
	aes g8 f g2.				%155
	f2 e4
	f4 c des2~
	des8 d c d ees2~
	ees8 e d e f2~
	f8 f e f g2~				%160
	g8 g f g aes2~
	aes g4 aes8 bes
	ees,2 aes,
	ees'1~
	ees2 bes'\rest				%165
	ees, g
	bes8 c d bes g des' c bes
	c4 f2 ees8 d!
	c4. bes8 aes4 f'
	c2~ c8 ees! d c				%170
	b c d ees f g aes! f
	g4 aes,\rest aes2\rest
	R1
	aes2\rest aes8\rest g' fis e
	d c b a g4 bes				%175
	c2~ c8 fis, g a
	bes4 a g a
	bes aes\rest aes\rest d
	d aes\rest aes\rest bes
	c d8 ees d c d4~			%180
	d c aes2\rest
	aes\rest aes4\rest g
	a2 b
	c2. bes!8 c
	f,4 g8 a bes2				%185
	a aes
	g4 g\rest g2\rest
	R1
	aes4\rest c aes des
	g, aes8 bes c2				%190
	bes2. c8 d!
	ees4 d aes\rest bes~
	bes f' aes,\rest des
	c2 aes4\rest d!~
	d c8 b c2~					%195
	c aes\rest
	aes\rest aes4\rest ees'
	d g2 f4
	g aes,\rest aes2\rest 
	aes4\rest c d a				%200
	b g2 c4
	f, aes!2 ees4
	g f ees d
	ees8 f g2.
	g1~							%205
	g
	
	\bar "|."
	
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

voiceFive = \relative c{

	R1*16						%1 to 16
	c2 ees
	g aes
	b, a'4\rest g
	fis2 f						%20
	e ees2.
	d4 des c
	b g c f
	ees2 d
	c4 ees8 d16 c d4 g			%25
	ees aes g c~
	c bes8 a bes2~
	bes4 a e fis
	g d g\rest g8 f!
	ees! d c4 g'\rest ees		%30
	d4. c8 bes4 a
	g g' c, d
	ees2 e
	f2. ees!8 d
	g1~							%35
	g
	aes2. g8 f
	ees2 f
	g c4 a					
	d d,2 g4					%40
	c c,2 d8 ees
	f1~
	f4 ees8 d ees4 aes
	g4 bes8 a bes2~
	bes aes!1					%45
	g2~
	g f1
	ees4 d8 c
	d1 
	ees2 g						%50
	d4 e8 fis g2.
	fis8 g a2
	d,2. ees8 d
	c2 g'\rest
	g4\rest d2 ees4				%55
	d ees8 d c2
	d g4\rest bes,
	c1
	d
	ees							%60
	f
	g2. c,4
	f1
	ees
	d2. c8 d					%65
	ees2. d8 ees
	f2. ees8 f
	g2. f8 g
	aes2. g8 aes
	bes2. aes8 bes				%70
	c2 f,
	bes1
	aes2. g4
	f ees8 f g2~
	g4 c, f2~					%75
	f ees
	f1
	ees2 bes'\rest
	R1*5
	bes2\rest bes~
	bes4 a aes2					%85
	g ges
	f1
	ees4 d8 ees f2~
	f bes\rest
	f aes						%90
	c4. bes8 aes g aes4
	g4. f8 ees2
	f8 g aes2 f4
	g2 bes\rest
	g bes						%95
	c ees
	fis, bes4\rest d
	cis2 c
	b bes2.
	a4 aes g					%100
	fis d g c
	bes2 a
	g bes\rest
	R1*3
	bes2\rest f					%107
	g2. a4
	bes f bes2
	a aes~						%110
	aes4 g8 f g bes ces4~
	ces8 bes aes g aes4 bes
	ees, aes8 bes aes g f e
	f g aes2 g4
	f2 bes\rest					%115
	R1
	g4\rest bes8 aes g4 aes8 g
	f e f2 c'4~
	c8 des c bes c4 aes
	bes8 c des ees des4 bes		%120
	c1~
	c4 f, g c~
	c g\rest g2\rest
	g8\rest c, d ees f g aes f
	g4 g\rest g2\rest			%125
	g8\rest bes, c des ees f ges ees
	f1~
	f2 g!~
	g4 ees2 aes4~
	aes8 f g aes bes c des bes	%130
	g4 ees bes'2\rest
	R1*12
	f2 a						%144
	bes4 aes! g2
	a8 f g a bes c des bes
	f'4 c f8 ees des c
	bes c bes a bes4 c~
	c f, bes aes!
	g2 g4\rest bes				%150
	c g\rest g2\rest
	g4\rest bes2 aes!4~
	aes g8 f g2~
	g f~
	f e4 g\rest					%155
	R1
	g2\rest g4\rest aes, 
	bes2~ bes8 bes aes bes
	c2~ c8 c bes c 
	des2~ des8 des c des		%160
	ees1
	des
	c2 ces~
	ces4 bes8 aes bes2
	aes c 						%165
	ees g\rest
	g4\rest bes2 aes8 g
	aes4 f g2
	aes8 g f2 ees8 d
	ees4 e f f'~				%170
	f8 ees d c d4 g,\rest
	g\rest g2 a8 bes!
	a2 d,4 g\rest
	R1
	g2\rest g8\rest f ees d		%175
	c4. d8 ees2
	d4 fis g g\rest
	g2\rest g4\rest a
	bes g\rest g\rest g
	a2 b						%180
	c4 c,8 d ees! c aes'!4~
	aes g8 f e4 c
	f g\rest f2
	e ees
	d4 c d bes					%185
	c d8 ees d c d4
	ees2. aes4
	f bes ees, f8 g
	aes4 g f aes
	bes c8 des c4 a				%190
	f g8 a bes4 a8 bes
	c4 a aes bes8 aes
	g4 aes f bes
	g2 g4\rest aes
	g2 g2\rest					%195
	R1
	g4\rest aes g c~
	c b c2
	g4\rest b c g
	a2. d4						%200
	g, bes! c g
	a f2 aes4
	d,2 c~
	c d8 ees f4
	e1~							%205
	e
	
	\bar "|."
		
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

voiceSix = \relative c{

	R1*48						%1 to 48
	g2 bes
	c ees						%50
	fis, d'4\rest d
	cis2 c
	b bes2.
	a4 aes g
	fis d g c					%55
	bes2 a
	g1
	a
	bes
	c							%60
	d
	ees~
	ees2 d1
	c2~
	c b							%65
	c1
	d
	ees
	f
	g							%70
	aes~
	aes2 g~
	g f4 ees
	d2 ees
	aes,1						%75
	bes~
	bes
	ees,2 ees'\rest
	R1*6
	ees2\rest f2.				%85
	e4 ees2~~
	ees4 d des2
	c f
	bes, d
	f d\rest					%90
	R1*3
	c2 ees
	g1~							%95
	g4 f ees2
	d1~
	d
	d2. e8 d
	cis2 c~						%100
	c bes4 c
	d1 
	g,2 d'\rest
	R1*9
	d2\rest c					%113
	d2. e4
	f1~							%115
	f8 ees! des c bes4 bes'~
	bes8 aes g f e4 f
	d!2. e4
	f4. g8 aes4 f
	bes1~						%120
	bes8 g c bes aes g f e
	f ees! des c bes4 c
	f8 g aes g f ees d! c 
	bes1
	d8\rest aes' g f ees des c bes	%125
	aes1						
	a4 c a f
	bes des bes g
	c ees c aes!
	des1~						%130
	des8 ees des c bes aes g bes 
	c des c bes aes g f aes
	bes, bes' c d ees f g4~
	g8 c, d ees f ees d f
	bes,4 c8 des ees des c ees	%135
	aes,4 aes'8 g aes4 ces
	bes1~
	bes8 ees, f g aes c! bes aes
	g f ees f g bes aes ges
	f ees des ees f aes ges f	%140
	ees des c des ees ges f ees
	des c bes c des ees f d
	ees des c des ees f ges ees
	f1~
	f1~							%145
	f1~
	f2 d4\rest f
	g!2. a4
	bes aes! g f
	e2 ees2.					%150
	f8 ees des4 c
	bes2 c
	d!4 ees2 e4
	f ees! des2
	c2. bes4					%155
	aes2 g
	f1
	g
	aes
	bes							%160
	c~
	c2 bes
	aes4 g f2
	ees1
	aes2 d\rest					%165
	R1*5
	d4\rest g~ g8 f ees d		%171
	ees d c b c2~
	c8 ees d c bes! a g f
	e4 e' fis d
	g2 g,						%175
	a8 bes c2 bes8 c
	d2 ees~
	ees8 d c bes c4 d
	g d\rest d2\rest
	R1*7					
	d2\rest ees					%187
	d des
	c f
	e ees						%190
	d g
	fis f
	e4 f d g
	c, d8 e f2~
	f4 ees! aes2.				%195
	g8 f c'2
	c, ees
	g aes
	b, d4\rest g
	fis2 f						%200
	e ees2.
	d4 des c
	b g c f,
	g2 g
	c1~							%205
	c
	
	\bar "|."
	
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Score %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

global = {\time 2/2 \key c \minor}

\score{

	\context StaffGroup <<
		\new Staff <<\global \clef treble \voiceOne>>
		\new Staff <<\global \clef soprano \voiceTwo>>
		\new Staff <<\global \clef alto \voiceThree>>
		\new Staff <<\global \clef tenor \voiceFour>>
		\new Staff <<\global \clef tenor \voiceFive>>
		\new Staff <<\global \clef bass \voiceSix>>
		>>
  \midi {\tempo 4=120}
  \layout{}

}

