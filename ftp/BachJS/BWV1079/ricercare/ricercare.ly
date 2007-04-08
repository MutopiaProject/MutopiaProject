\version "2.6.4"

%#(set-default-paper-size "a4")
%#(set-default-paper-size "letter")

#(set-global-staff-size 17)

\header{
title="Ricercare"
subtitle="Musicalisches Opfer"
opus="BWV 1079"
composer="Johann Sebastian BACH (1685 - 1750)"

mutopiatitle = "Musicalisches Opfer, Ricercare"
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
lastupdated = "2006/March/02"

footer = "Mutopia-2006/03/02-690"
tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

% Macros %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

staffUpper = {\change Staff = upper \stemDown}
staffLower = {\change Staff = lower \stemUp}

nobracket = \override TupletBracket #'bracket-visibility = ##f

% Voices %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

soprano = \relative c''{

	\nobracket

	%1-5

	\stemDown c2 ees 
	g aes 
	b, b4\rest g' 
	fis2 f 
	e ees~ 

	%6-10
	
	ees4 d des c 
	b a8 g c4 f 
	ees2 d\trill 
	c4 c'-. fis,-. a-. 
	\stemUp bes,-. d'-. g,-. bes-.

	%11-15
 
	ees,-. g-. c, c'~ 
	c bes8 a bes a g f! 
	e d e2 fis4 
	g8 d g a g f! ees! d 
	c2~ c8 d ees c 
	
	%16-20

	d4 c' bes a 
	d g,~ g fis
	g-. bes-. e,-. g-. 
	c, d8 e f2~ 
	f4 aes d, f 

	%21-25

	bes, c8 d ees2~ 
	ees4 d8 c d c b a 
	g4 a8 b c b c4~
	c bes!2 aes4 
	g2 d'2\rest 

	%26-30

	bes8\rest \stemDown ees8 d c d f ees d 
	g2~ g8 des c bes 
	\stemUp a g a c \stemDown f2~ 
	f4 \stemUp b, d8\rest c4 b8
	c8 bes! aes g f aes g f 

	%31-35

	ees4 ees' d des 
	c bes2 a4 
	d des c ces 
	bes aes2 g4
	c ces bes2 

	%36-40

	a4 aes g2~ 
	g8 f ees d c ees d c 
	b4 bes'4\rest bes2\rest 
	\times 2/3 {r8 g[ c]} \times 2/3{ees[ c ees]} \times 2/3{g[ des c]} \times 2/3{bes[ aes g]} 
	aes4 aes4\rest aes2\rest 

	%41-45

	\times 2/3{r8 f[ bes]} \times 2/3{des[ bes des]} \times 2/3{f[ ces bes]} \times 2/3{aes[ ges f]} 
	ges8 ees'4 d!8 ees bes c!4~ 
	c8 bes4 a8 bes f g4 
	aes8 f'4 e8 f c d!4~
	d8 c4 b8 c g a4 

	%46-50

	\times 2/3{bes!8[ g bes]} \times 2/3{d[ bes d]} g2~
	\times 2/3{g8[ fis e]} \times 2/3{fis[ a d]} c2~ 
	c2~ c8 a bes4~ 
	bes8 a bes g a2~
	a8 g aes fis g4. f8 

	%51-55

	e2~ e8 d ees c 
	d1~ 
	d8 e fis g fis e d c 
	bes g a bes a g fis e
	d4 aes'\rest aes2\rest 

	%56-60
	
	d8\rest d ees f ees d c bes 
	a b c d g,4 f'~ 
	f8 d ees f b,4 aes'!~ 
	aes8 f g aes g f ees d 
	c ees f g f ees d c

	%61-65

	g'4 g, c8 d ees4~ 
	ees a, b8 c d4~ 
	d g, a8 bes! c4~ 
	c8 a bes c bes a! g fis 
	g1~ 

	%66-70

	g4 c2 bes4~
	bes aes8 g aes2~ 
	aes4. fis8 g2~ 
	g4. e8 f aes bes c 
	bes aes g f g bes c des 

	%71-75

	c bes aes g aes c d! e
	f2 aes 
	c des 
	e, f4\rest c' 
	b2 bes 
	
	%76-80

	a aes~
	aes4 g ges f 
	e d!8 c f4 bes 
	aes2 g 
	fis4 ees!8 d g4 c 

	%81-85

	b bes a aes
	g2~ g8 g a bes! 
	a g f4~ f8 f g aes 
	g f ees4~ ees8 c d ees 
	d c f4~ f8 d ees f 

	%86-90
	
	ees d g4~ g8 ees f d
	ees4 bes'\rest bes2\rest 
	\times 2/3{f8\rest c[ f]} \times 2/3{aes[ f aes]} \times 2/3{c[ ges f]} \times 2/3{ees![ des c]} 
	des4 bes'\rest bes2\rest 
	\times 2/3{f8\rest bes,[ ees]} \times 2/3{ges[ ees ges]} \times 2/3{bes[ fes ees]} \times 2/3{des[ ces bes]} 

	%91-95

	ces4 f\rest f\rest f8\rest aes,
	g4 d'\rest d\rest d8\rest ges, 
	f4 f'\rest f\rest f8\rest bes, 
	a4 d\rest d\rest d8\rest aes 
	g4 g'\rest g8\rest g f ees 

	%96-100
	
	d4 aes'\rest bes8\rest \stemDown ees, d c
	d g, aes f g4 \stemUp bes'8\rest g 
	a b c4~ c8 a b d 
	g,2~ g8 fis g4~ 
	g8 c, f e f2~ 

	%101-105
	
	f8 d ees! f ees d c b
	c b c d \stemDown c bes a g 
	a2. \stemUp bes'!4 
	a d,2 c4~ 
	c8 a bes g e bes' a! ees 

	%106-110

	d4 d' cis c
	b8 a bes4~ bes8 a ees'4~ 
	ees8 d g4 a\rest a8 c,! 
	c( bes) f'4\rest f8\rest des c bes 
	f'\rest bes, aes g bes\rest g f e 

	%111-115

	e( f) f'\rest d! f\rest f f\rest d
	f8\rest c'! bes aes f\rest aes g f 
	f( g) f\rest c c( b) f'4~ 
	f ees8 aes, aes( g) des'4~ 
	des c8 ees d des c ces 

	%116-120

	ces( bes) f'4\rest f\rest f8\rest ees
	ees( d) d\rest aes g! ges f fes 
	fes( ees) aes\rest ees fes! f ges g 
	aes g ges f bes2~ 
	bes8 g! aes f ges g aes a 

	%121-125

	bes a aes g c2~
	c8 a bes4 d2\rest 
	d4\rest g, fis f~ 
	f ees8 d \times 2/3{ees[ f g]} \times 2/3{aes[ g f]} 
	ees4 c' b bes 

	%126-130

	a aes2 g8 f
	e[ d16 c] f8[ bes] aes4 g 
	\times 2/3{f8[ g aes]} \times 2/3{bes[ aes g]} \times 2/3{aes[ bes c]} \times 2/3{des[ c bes]} 
	c4 f~ f ees~ 
	ees8 des c bes aes ces bes aes 

	%131-135

	bes4 ees2 des4~
	des8 c bes aes ges beses aes ges 
	aes4 des2 c4~ 
	c bes2 aes8 g 
	f2 bes4\rest bes~ 

	%136-140

	bes8 aes g f e des' c bes
	aes g f g aes2~ 
	aes8 c bes aes g f' ees des 
	c bes aes bes c2~ 
	c4 b d2\rest 
	
	%141-145

	c ees
	g aes 
	b, b'4\rest g 
	fis2 f 
	e ees~ 

	%146-150

	ees4 d des c
	b4 a8 g c4 f 
	ees2 d4 des 
	c8 g' aes bes aes g fis g 
	fis2~ fis8 fis g a 

	%151-155

	g f! ees d ees c d ees
	d2~ d8 c bes a! 
	bes d g4 d8 g bes4~ 
	bes8 g a bes~ bes[ a!16 g] fis[ g a8] 
	d,4 d' g,8 a bes4~ 

	%156-160

	bes e, fis8 g a4~
	a d, e8 f! g4~ 
	g8 e f g f e! d cis 
	d1~ 
	d4 g2 fis4 

	%161-165

	g d'-. g,-. bes-.
	e,8 f g e c4 bes'~ 
	bes aes!8 g aes g f ees! 
	d ees f g aes g aes4~ 
	aes g8 f g f ees d 

	%166-170

	c4 d8 ees f2~ 
	f4 ees8 d ees d c bes!
	a4 aes g f~ f2~ 
	f4. ees8 
	d4 g2 fis4 

	%171-175
	
	g8 d' ees f ees d c bes! 
	a c d ees d c b a! 
	g b c d c bes a g
	fis2 bes4\rest \stemDown ees 
	\stemUp f,!8 d ees f ees d c b 

	%176-180

	c f g aes g f ees d 
	ees2~ ees8 bes' aes g 
	\stemDown fis ees' d4~ d8 aes'! g f! 
	e des' c4~ c f,~
	f8 d ees! c a ees' d aes 

	%181-185

	\stemUp g fis g4 fis f 
	e8 d ees4~ ees8 d aes'4~ 
	aes8 g c4 f\rest d8 f,! 
	f ees d'\rest c d\rest c d\rest b 
	\grace {\slurUp b4(} c2) d\rest

}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

alto = \relative c''{

	\nobracket

	%1-5

	s1
	s
	s
	s
	s

	%6-10

	s
	s
	s
	s
	g2 bes

	%11-15

	c ees 
	fis, g4\rest d' 
	cis2 c 
	b bes~ 
	bes4 a aes g 

	%16-20

	fis e8 d g4 c 
	bes2 a
	g g4\rest \tieDown bes~ 
	bes aes!8 g aes g f ees! 
	d ees f g aes g aes4~ 

	%21-25

	aes g8 f g f ees d 
	c4 d8 ees f ees f4~ 
	f2~ f4. ees8
	d4-. g-. c,-. f~ 
	f ees8 d ees d c bes! 

	%26-30

	\staffLower a8 g a2 b4 
	c8 g c d c bes! aes! g 
	\tieUp f2~ f8 \tieDown 
	g aes! f g4 \staffUpper f'4 ees d
	g \staffLower c,2 b4 

	%31-35

	\staffUpper c c'2 bes4~ 
	bes8 aes g f ees ges f ees 
	f4 bes2 aes!4~ 
	aes8 g f ees des fes ees des
	ees4 aes2 g4~ 

	%36-40

	g f2 ees8 d 
	c4 \staffLower c, f fis 
	\times 2/3 {g8[ d g]} \times 2/3{b[ g b]} \times 2/3{d[ aes! g]} \times 2/3{f[ ees d]} 
	ees4 aes4\rest aes2\rest
	\times 2/3{f8\rest c[ f]} \times 2/3{aes[ f aes]} \times 2/3{c[ ges f]} \times 2/3{ees[ des c]} 

	%41-45

	des4 aes'4\rest aes2\rest 
	\staffUpper b2\rest b4\rest b8\rest ees 
	d b\rest b4\rest b\rest b8\rest des 
	c b\rest b4\rest b\rest b8\rest f'
	e b8\rest b4\rest b\rest b8\rest ees 

	%46-50

	d b\rest b4\rest ees8\rest d' c bes 
	a ees\rest ees4\rest bes'8\rest bes' a! g 
	a d, ees c d4 bes16\rest a'! g fis 
	g2~ g8 e fis a!
	d,2~ d8 cis d4 

	%51-55

	g,8\rest g c b c2~ 
	c8 a bes! c bes a g fis 
	g4 \staffLower d, aes'\rest fis 
	g aes\rest aes2\rest 
	aes8\rest bes c d c bes a! g 

	%56-60

	f!4 f'\rest f\rest g, 
	f c'\rest c\rest \staffUpper d'4 
	g, ees\rest ees2\rest 
	c ees 
	g aes

	%61-65

	\staffLower b, \staffUpper ees4\rest g 
	fis2 f 
	e ees~ 
	ees4 d des c 
	\staffLower b a8 g c4 \staffUpper f 

	%66-70

	ees2 d
	c~ c8 c d ees! 
	d c bes4~ bes8 bes c des 
	c bes \staffLower \tieUp aes4~ aes8 f g aes 
	g f bes4~ bes8 g aes bes 

	%71-75

	aes g c4~ c8 aes bes g
	aes \staffUpper c d e \tieDown f2~ 
	f8 ees! des c \staffLower \tieUp bes2~ 
	bes8 des c bes aes2~ 
	aes8 aes g f g2 
	
	%76-80

	f8 \staffUpper c' d e \tieDown f2~
	f8 f g aes bes c des bes
	c1~ 
	c4 b c8 d ees!4~ 
	ees8 c fis,4 g\rest ees' 

	%81-85

	d g2 f!4~
	f ees8 d ees2~ 
	ees4. cis8 d2~ 
	d4. \staffLower b,8 c \staffUpper ees f g 
	f ees d c d f g aes! 

	%86-90

	g f ees d ees g a b
	\times 2/3{c[ g c]} \times 2/3{ees[ c ees]} \times 2/3{g[ des c]} \times 2/3{bes![ aes! g]} 
	aes4 ees\rest ees2\rest 
	\times 2/3{ees8\rest f[ bes]} \times 2/3{des![ bes des]} \times 2/3{f[ ces bes]} \times 2/3{aes![ ges f]} 
	ges4 ees\rest ees2\rest 

	%91-95

	ees8\rest aes4 g8 aes ees f4~
	f8 ees4 d8 ees bes c4 
	des8 bes'4 a8 bes f g!4~ 
	g8 f4 e8 f c d4 
	\times 2/3{ees!8[ c ees]} \times 2/3{g[ ees g]} c2~ 

	%96-100

	\times 2/3{c8[ b a]} \times 2/3{b[ d g]} \tieUp \stemUp f2~
	f2~ f8 d \stemDown \tieDown ees4~ 
	ees8 d ees c d2~ 
	d8 c des b c4. bes8 
	a2~ a8 g aes f 

	%101-105

	g1~
	g4 fis'2 \tieUp \stemUp g4~ 
	g8 e f! g \stemDown f e d cis 
	d c! bes a g bes aes g 
	fis4 d cis c 

	%106-110

	\staffLower b8 a bes \staffUpper g'8 \staffLower a, \staffUpper g' fis \staffLower a,
	\staffLower g4. fis8 g4. \staffUpper fis'8 
	g4. ees'8 d( cis) ees,\rest a 
	a( g) ees4\rest ees8\rest bes' aes g 
	ees\rest des c bes \staffLower c\rest bes aes g 

	%111-115

	\slurUp g( aes) \staffUpper g'\rest ces g\rest ces g\rest ces
	g8\rest aes' g f g,\rest f' ees d 
	\slurDown d( ees) ees,4\rest ees\rest ees8\rest aes 
	aes( g) d4\rest d\rest ees8\rest bes' 
	bes ees, aes4 ees\rest ees8\rest d! 

	%116-120
	
	d( ees) ees\rest bes' a aes g ges
	ges( f) \staffLower c\rest c b bes a aes 
	\slurUp aes( g!) g4 aes bes 
	ees, \staffUpper c'8\rest c des d ees e 
	f e f \staffLower aes, bes4 c 

	%121-125

	f, \staffUpper d'8\rest d ees e f fis
	g fis g4 ees\rest ees8\rest d 
	cis c b bes \staffLower a bes b c 
	d4 c2 b4 
	c \staffUpper ees8\rest \tieDown aes~ aes g16 f g4~ 
	
	%126-130

	g8[ f16 ees] d8 c \staffLower b4 \tieUp bes~
	bes aes8 g f4 e 
	f \staffUpper c'8\rest e f4 ees8\rest g 
	aes4 ees8\rest aes g4 ges 
	f ees2 d!4 

	%131-135

	g ees8\rest ges f4 fes
	ees des2 c4 
	f ees8\rest fes ees2 
	d!4 des \tieDown c2~ 
	c8 \staffLower c bes aes ges f e f 

	%136-140

	e2 f\rest 
	\staffUpper	c'4\rest f~ f8 e ees d 
	des4 \staffLower g, bes aes\rest 
	\staffUpper ees'\rest ees8\rest bes'~ bes aes g fis 
	f! aes g f ees d c b 

	%141-145

	c ees\rest ees4\rest ees8\rest b' c d
	es4 c2 f4~ 
	f8 d ees f ees d c bes! 
	a c d ees d c b a! 
	g b c d c bes a g 

	%146-150

	fis4 g2 aes!4~
	aes8 d, ees f ees d \staffLower c b 
	c \staffUpper f g aes~ aes aes g f 
	e2 ees 
	d8 c' d ees d c bes a 

	%151-155

	bes g a bes aes g fis g
	fis4 g8 a d,4 d\rest 
	g2 bes 
	c ees 
	fis, g4\rest d' 

	%156-160

	cis2 c 
	b bes~ 
	bes4 a aes g 
	fis e8 d g4 c 
	bes2 a 

	%161-165

	g4 g\rest g\rest des'
	g, bes e,8 f g e 
	c4 d8 e f2~ 
	f4 aes d,8 ees f d 
	bes4 c8 d ees2~ 

	%166-170

	ees4 d8 c d c \staffLower b a 
	g4 a8 b \tieUp c2~
	c4 b c d 
	g, a8 b c b c4~ 
	c8 b a b \staffUpper c ees d c

	%171-175

	d4 \staffLower g, c8 d \staffUpper \tieDown ees4~ 
	ees \staffLower a, b8 c \tieUp d4~ 
	d g, a8 bes! c4~
	c8 a bes c bes a! g fis 
	g1~ 
	
	%176-180

	g4 c2 b4 
	c8 g aes! bes! aes g f ees 
	d fis g a g f e d 
	c e f g f ees d! c
	b4 g' fis f 

	%181-185

	e8 d ees c' d, c' b d,
	c4. b8 c4. b'!8 
	c4. \staffUpper aes'8 g fis ees\rest d 
	d c ees\rest ees ees\rest d ees\rest f 
	\grace {\stemDown \tieDown f4(} e2) e\rest

}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bass = \relative c{

	\nobracket

	%1-5

	d1\rest 
	d1\rest 
	d1\rest 
	d1\rest 
	d1\rest 
	
	%6-10
	
	d1\rest 
	d1\rest 
	d1\rest 
	d1\rest 
	d1\rest 

	%11-15

	d1\rest 
	d1\rest 
	d1\rest 
	d1\rest 
	d1\rest 

	%16-20
	
	d1\rest 
	d1\rest 
	d1\rest 
	d1\rest 
	d1\rest 
	
	%21-25
	
	d1\rest 
	d1\rest 
	\stemUp c2 \stemDown ees 
	g aes 
	\stemUp b, r4 \stemDown g' 
	
	%26-30
	
	fis2 f 
	e \tieDown ees~ 
	ees4 d des c 
	b a8 g c4 f 
	ees2 d 
	
	%31-35
	
	c8 d ees f g ees f g 
	aes4 bes c8 bes c4 
	bes8 c, des ees f d ees f 
	g4 aes bes8 aes bes4
	aes8 bes, ces des ees c d e 

	%36-40

	f ees! des c b d c bes 
	a2 aes 
	g b 
	c e
	f,2 a 
	
	%41-45
	
	bes d! 
	\stemUp ees,4 f g! a 
	bes c des e, 
	f g a b
	c \stemDown d ees! \stemUp fis, 
	
	%46-50
	
	g2 bes 
	\stemDown d ees 
	\stemUp fis, d'4\rest d 
	cis2 c
	b bes~ 
	
	%51-55
	
	bes4 a aes g 
	fis e8 d g4 c 
	\stemDown bes2 a 
	g4 e' fis a,
	bes g' a c, 
	
	%56-60
	
	d bes' c ees,~ 
	ees8 d ees f ees d c b 
	c f g aes g f ees d 
	ees4 \stemUp c \stemDown c' g 
	ees' c d,\rest f~

	%61-65
	
	f8 d ees f ees d c bes! 
	a c d ees d c b a! 
	g b c d c bes a g 
	fis4 ees'\rest ees\rest ees 
	f,!8 d' ees f ees d c b 
	
	%66-70
	
	c d ees f g aes! g f 
	e c d e f4 \stemUp f, 
	bes \stemDown d ees! \stemUp ees, 
	aes \stemDown c des2~ 
	des4 d ees2~ 
	
	%71-75
	
	ees4 e f2~
	f4 bes,4\rest bes8\rest des' c bes 
	aes2~ aes8 aes g f 
	g2~ g8 g f ees! d!2 
	bes8\rest e d c 
	
	%76-80
	
	f2~ f8 f g aes
	\tieUp bes1~ 
	bes8 \tieDown g aes bes aes g f e 
	f e f g f ees d c 
	d a' bes c bes a g fis 
	
	%81-85
	
	g a bes c d ees d c 
	b g a b c4 \stemUp c, 
	\stemDown f a bes \stemUp bes, 
	\stemDown ees g aes!2~ 
	aes4 a bes2~ 
	
	%86-90
	
	bes4 b c d,\rest 
	\stemUp c2 \stemDown e 
	f a 
	\stemUp bes, \stemDown d! 
	ees g! 
	
	%91-95
	
	\stemUp aes,4 bes c! d!
	\stemDown ees f ges \stemUp a, 
	bes c \stemDown d! e 
	f g aes! \stemUp b, 
	c2 \stemDown ees 
	
	%96-100
	
	g aes
	\stemUp b, d4\rest \stemDown g 
	fis2 f 
	e \tieUp ees~ 
	ees4 \tieDown d des c 
	
	%101-105
	
	b a8 g c4 f
	ees2 d\trill 
	\stemUp cis4 b8 a \stemDown d4 g 
	fis f e ees 
	d1~ 
	
	%106-110
	
	d~ 
	d4 d cis c 
	b8 a bes g' a, g' d fis 
	\stemUp g,4 \stemDown bes' e, g 
	c, d8 e f e f4~ 
	
	%111-115
	
	f aes d, f
	\stemUp bes,4 \stemDown c8 d ees! d ees4~ 
	ees8 d ees f ees d c b 
	c b c des c bes aes g 
	\stemUp aes4 c \stemDown ees f 
	
	%116-120
	
	\stemUp g, bes \stemDown d ees
	f, aes c d 
	ees, ees' d des 
	c aes g ges 
	f f' e ees 
	
	%121-125
	
	d bes a aes
	g g' fis f 
	e ees2 d8 c 
	b[ a16 g] c8 f ees4 d 
	c8 d ees c des d ees e 
	
	%126-130
	
	f c f ees! d c des bes
	c2~ \times 2/3{c8[ bes c]} \times 2/3{des[ c bes]} 
	aes4 c \stemUp f,2~ 
	f8 g aes bes c aes bes c \stemDown 
	des4 ees f8 ees f4 
	
	%131-135
	
	\stemUp ees8 f, ges aes bes g aes bes
	c4 \stemDown des ees8 des! ees4 
	\stemUp des8 ees, fes ges aes f g a 
	bes aes! ges f e g f ees 
	\stemDown des4 f bes des 
	
	%136-140
	
	g, c4. bes8 aes g
	f4 aes des f 
	bes, ees4. des8 c bes 
	aes4 c f aes 
	d,! g4. f8 ees d 
	
	%141-145
	
	ees c bes aes \stemUp g f ees d
	c c' d ees \stemDown f g aes f 
	g4 \stemUp g, c8 d \stemDown \tieUp ees4~ 
	ees \stemUp \tieDown a, b8 c d4~ 
	d g, a8 bes! c4~ 
	
	%146-150
	
	c8 a bes c bes aes g fis
	g4 d'\rest d\rest \stemDown g 
	aes! f \tieUp bes2~ 
	bes4 g c2~ 
	c4 a d2~ 
	
	%151-155
	
	d c~
	c8 a bes c bes a g fis 
	g fis g a g f ees d 
	ees4 c \clef alto c''2~ 
	c8 \tieDown a bes c bes a g f! 

	%156-160

	e g a bes a g fis e!
	d fis g a g f e d 
	cis4 cis\rest cis\rest bes' 
	\stemUp c,!8 a bes c bes a g fis 
	\clef bass \stemDown g f! ees d \stemUp c bes c d 

	%161-165

	\stemDown g, g' fis g bes d g, bes
	c2 d,4\rest c' 
	aes! c f, g8 aes 
	bes2 d,4\rest bes' 
	g bes ees, f8 g

	%166-170

	aes2 d,4\rest d 
	ees g c, d8 e
	f ees! d f ees d c b 
	c2 ees 
	g aes! 
	
	%171-175
	
	b, b4\rest g' 
	fis2 f 
	e \tieDown ees~
	ees4 d des c 
	b a8 g c4 f 
	
	%176-180
	
	ees2 d 
	c1~ 
	c2 bes!~ 
	bes aes
	g1~ 
	
	%181-185
	
	g~ 
	g4 g fis f 
	\stemUp e8 d ees c' d, c' g b 
	c4 aes f g 
	c,2 c'\rest

}

% Score %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

global = {\time 2/2 \key c \minor}

\score{
  \context PianoStaff <<
    \context Staff = "upper" {\global \clef treble <<\soprano \\ \alto>> \bar "|."}
    \context Staff = "lower" {\global \clef bass \bass}
  >>
  \midi {\tempo 4=120}
  \layout{}
}

