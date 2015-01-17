\version "2.18.2"
\include "english.ly"

#(set-global-staff-size 18)
%#(set-default-paper-size "letter")

\header {
	title = "THE HARLEM RAG."
	subsubtitle = "MARCH & CAKE WALK."
	composer = "Tom Turpin (1873 - 1922)"
	mutopiatitle = "The Harlem Rag"
	mutopiacomposer = "TurpinT"
	mutopiainstrument = "Piano"
	opus = ""
	date = "1899"
	source = "Jos. Stern & Co."
	style = "Jazz"
	license = "Public Domain"
	maintainer = "Stan Sanderson"
	maintainerEmail = "physinfoman@ameritech.net"
	lastupdated = "2015/01/11"  %update to v2.18.2 (Javier Ruiz-Alma)
	
 footer = "Mutopia-2015/01/17-443"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
	}

\paper{ 
        top-margin = 8 \mm
	line-width = 171 \mm
	indent = 8 \mm
	top-markup-spacing.basic-distance = #6 %-dist. from bottom of top margin to the first markup/title
        markup-system-spacing.basic-distance = #7 %-dist. from header/title to first system
        system-system-spacing.basic-distance = #18
        top-system-spacing.basic-distance = #12
}

Up =  { \stemUp \tieUp }
Down =  { \stemDown \tieDown }
Neutral =  { \stemNeutral \tieNeutral }
doubleSlursOn = \set doubleSlurs = ##t
doubleSlursOff = \set doubleSlurs = ##f
shapeSlurA = \shape #'(( -0.25 . -0.5) (-0.15 . -0.45) (-0.15 . -0.45) (-0.1 . -0.5)) Tie
pushRest = \once \override Rest.extra-offset = #'(1.1 . 0.1)

RH =  \relative c'' { \key c \major \time 2/4
%%% 1
	c16_\f^\markup { \bold \larger \column { "Allegretto" " " } } c8 g16 c8 g |
	af16 c8 af16 g4 | <f b>16 <f b>8 <f c'>16 <f b>8 <f a!> |
	<f g>8 r r16 g16_\mf a b |
%%% 5
	\repeat volta 2 {
	<f e'>8[ <f d'> <f e'> <f d'>] | <f e'> d'16 e~ e d( b g) |
	<e d'>8[ <e c'> <e d'> <e c'>] | <e d'> c'16 \shapeSlurA d~ d c( a g) |
	<f c'>8[ <f b> <f c'> <f b>] |
%%% 10
	<f c'> b16 c~ c b( a g) | <e a>8[ <e g> <e a> <e g>] |
	<e a>8 g16 a~ a g( a c) | <e f,>8[ <d f,> <e f,> <d f,>] |
	<e f,>8 d16 e~ e d b g |
%%% 15
	<e d'>8[ <e c'> <e d'> <e c'>] | <e d'> c'16 \shapeSlurA d~ d c( a g) |
	<g f'>8[ <g e'> <g f'> <g e'>]| <fs e'> d'16 e~ e d c a |
	<f! e'>8[ <f d'> <f e'> <f g d'>] | 
	}
	\alternative  {{ <e g c>4~ <g e c>16 g( a b) }
		{ <e, g c>8 r8_\markup { \dynamic f \italic \whiteout "marcato." } r4}
	} \break
%%% 22
	\repeat volta 2 {
	r8 <a cs g'>16 <a cs g'> <a cs g'>8 <a cs g'> |
	r8 <a cs g'>[ r <a cs g'>] | 
	r8 <a d f>16 <a d f> <a d f>8 <a d f> |
	r8 <a d f>[ r <a d f>] |
	r8 <g b f'>16 <g b f'> <g b f'>8 <g b f'> |
%%% 27
	r8 <g b f'>[ r <g b f'>] | r <g c e>16 <g c e> <g c e>8 <g c e> |
	<g c e>[ <g c e> <g c e> <g c e>] |
	r8 <a cs g'>16 <a cs g'> <a cs g'>8 <a cs g'> |
	r8 <a cs g'>[ r <a cs g'>] |
%%% 32
	r8 <a d f>16 <a d f> <a d f>8 <a d f> | r <a d f>[ r <a d f>] |
	r8 <g b f'>16 <g b f'> <g b f'>8 <g b f'> | r <g b f'>[ r <g b f'>] |
	}
	\alternative {
		{r8 <g c e>16 <g c e> <g c e>8  <g c e> |
			 <g c e>[ <g c e> <g c e> <g c e>] |}
		{r <g c e>16 <g c e> <g c e>8 <g c e> |
		 <g c e>8 r r16 g_\mf a b |}
		 } \bar "||" 
%%% 40
	<f e'>8[ <f d'> <f e'> <f d'>] | <f e'> d'16 e~ e d b g |
	<e d'>8[ <e c'> <e d'> <e c'>] | <e d'> c'16 \shapeSlurA d~ d c a g |
	<f c'>8[ <f b> <f c'> <f b>] | 
%%% 45
	<f c'> b16 c~ c b a g | <e a>8[ <e g> <e a> <e g>] |
	<e a> g16 a~ a g a c | <f, e'>8[ <f d'> <f e'> <f d'>] | 
	<f e'> d'16 e~ e d b g |
%%% 50
	<e d'>8[ <e c'> <e d'> <e c'>] | <e d'> c'16 \shapeSlurA d~ d c a g |
	<g f'>8[ <g e'> <g f'> <g e'>] | <fs e'> d'16 e~ e d c a |
	<f! e'>8 <f d'> <f e'> <f g d'> | 
	<e g c>8 r <c' e g c>^^_\sfz r |\bar "||" \key f \major \break
	
%%% 56
	f,8^\markup {\translate #(cons -8 0) \column { \huge \bold "TRIO."  " " } } <f a d>4 <f a c>8 | 
	<d fs>8 <d a' d>4 <d a' c>8 | <d g>8 <d g c>4 <d g bf>8 |
	d4 a'8 g | f <f a c>4 <f a>8 |
%%% 61
	\doubleSlursOn <f d>4( <a f>) \doubleSlursOff |
	<e g>4 c16 d8 c16 |
	d8[ <c c'>^^ <d c'>^^ <e c'>^^] | \break
	f^^ <f a d>4 <f a c>8 |
	<d fs> <d a' d>4 <d a' c>8 |
%%% 66
	<d g>8 <d g c>4 <d g bf>8 | d4 a'8 g |
	f8 <f a c>4 <g bf>8 | <f a>4( <e g>)( | 
	f8) <d d'>4^^ <c c'>8^^
%%% 71
	<d d'>8^^[ <c c'> <d d'> <e e'>] | \bar "||" \break
	<f f'>8^^_\mf <d' d'>4 <c c'>8 | <fs, fs'>8 <d' d'>4 <c c'>8 |
	<g g'>8 <c c'>4 <bf bf'>8 | <d, d'>4 <a' a'>8 <g g'> |
%%% 76
	<f f'>8 <c' c'>4 <a a'>8 | <f f'>4 <a a'> |
	<g c e g>4 <c, c'>16 <d d'>8 <c c'>16 |
	<d d'>8[ <c c'>^^ <d d'>^^ <e e'>^^] | <f f'>^^ <d' d'>4 <c c'>8 |
%%% 81
	<fs, fs'>8 <d' d'>4 <c c'>8 | <g g'>8 <c c'>4 <bf bf'>8 |
	<d, d'>4 <a' a'>8 <g g'> | <f f'>8 <c' c'>4 <bf bf'>8 |
	<<{ \pushRest d8\rest <d f>[ \pushRest d8\rest <c e>]}\\{<a a'>4 <g g'>}>> |
%%% 86
	<f f'>8 r c16 d8 c16 | f8 r <f a c f>^^ r | \bar "||"
%%% 88
	a16 d8 a16 d8 a | bf16 g8 bf16 a4 | 
%%% 90
	bf'16 d8 bf16 a f8 f16 | e( g f e) d8 r |
	g,16 c8 g16 c8 g | af16 f8 af16 g4 |
	af'16 c8 af16 g e8 e16 |
%%% 95
	d16( f e d) c8 r | c,16 d8 c16 d8 c |
	c16 e8 c16 e8 c | g'16 c8 g16 c8 g |
	c[ <c, c'>^^ <d d'>^^ <e e'>^^] | \bar "||"
%%% 100
	<f f'>8^^ <d' d'>4 <c c'>8 | <fs, fs'>8 <d' d'>4 <c c'>8 |
	<g g'>8 <c c'>4 <bf bf'>8 | <d, d'>4 <a' a'>8 <g g'> | 
	<f f'>8 <c' c'>4 <a a'>8 |
%%% 105
	<f f'>4 <a a'> | <g c e g> <c, c'>16 <d d'>8 <c c'>16 |
	<d d'>8[ <c c'>^^ <d d'>^^ <e e'>^^] | <f f'> <d' d'>4 <c c'>8 |
	<fs, fs'>8 <d' d'>4 <c c'>8 |
%%% 110
	<g g'>8 <c c'>4 <bf bf'>8 | <d,d'>4 <a' a'>8 <g g'> |
	<f f'>8 <c' c'>4 <bf bf'>8 | 
	<<{\pushRest d8\rest <d f>[ \pushRest d8\rest <c e>]}\\
	  {<a a'>4 <g g'>}>> |
	<f f'>8 r <c c'>16 <d d'>8 <c c'>16 |
%%% 115
	\override Score.OttavaBracket.padding = #2
	 f8 r \ottava #1 <f' a c f>^^ \ottava #0 r | \bar "|."

	
}

LH =  \relative c' { \key c \major \time 2/4
%%% 1
	c16 c8 g16 c8 g | af16 c8 af16 g4 |
	<g d'>16 <g d'>8 <af d>16 <g d'>8 <g c> |
	<g b>8 r <g, g,>^^ r |
%%% 5
	b8 <f' g b> g, <f' g b> | b, <f' g b> g, <f' g b> |
	c <e g c> g, <e' g c> | c <e g c> g, <e' g c> |
	d8 <f g b> g, <f' g b> |
%%% 10
	d8 <f g b> g, <f' g b> | c <e g c> g, <e' g c> |
	c <e g c> g, <e' g c> | b <f' g b> g, <f' g b> |
	b, <f' g b> g, <f' g b> |
%%% 15
	c <e g c> g, <e' g c> | c <e g c> g, <e' g c> |
	cs <g' a cs> a, <g' a cs> | d <fs a c!> d <fs a c> |
	g, <f'! g b> g, <f' g b> |
	<c c'> <g g'>^^ <c, c'>^^ r
	<c' c'>[ <ds ds,> <e e,> <g g,>] 
%%% 22
	<a a,>4. <a a,>8 | <e' e,>4 <cs cs,>8 <a a,> |
	<d d,>4. <d d,>8 | <a a,>4 <a a,>8 <af af,> |
	<g g,>4. <g g,>8 |
%%% 27
	<d d,>4( <ds ds,>)( | <e e,>2)( | 
	<e e,>8)[ <ds ds,> <e e,> <g g,>] |
	<a a,>4. <a a,>8 | <e e'>4 <cs cs'>8 <a a'> |
%%% 32
	<d d'>4. <d d'>8 | <a a'>4 <a a'>8 <af af'> | 
	<g g'> <a! a'!>4 <g g'>8 |
	<e' e'>4 <d d'> | <c c'>2~ <c c'>8 <ds, ds'>^^[ 
		<e e'>^^ <g g'>^^] |
	<c c'>[ <g g'> <a a'> <g g'>] | <c, c'>^^ r <g g'>^^ r |
%%% 40
	b'8 <f' g b> g, <f' g b> | b, <f' g b> g, <f' g b> |
	c <e g c> g, <e' g c> | c <e g c> g, <e' g c> |
	d <f g b> g, <f' g b> |
%%% 45
	d <f g b> g, <f' g b> | c <e g c> g, <e' g c> | 
	c <e g c> g, <e' g c> | b <f' g b> g, <f' g b> |
	b, <f' g b> g, <f' g b> | 
%%% 50
	c <e g c> g, <e' g c> | c <e g c> g, <e' g c> |
	cs <g' a cs> a, <g' a cs> | d <fs a c!> d <fs a c> |
	g, <f'! g b> g, <f' g b> |
	<c c'> r <c c,>^^ r | \key f \major
%%% 56
	f8^\p <a c> ef <a c> | d, <fs a> c <fs a> |
	bf, <d g> g, <d' g> | bf <d g> g, <d' g bf> |
	c <f a> d <f a d> |
%%% 61
	b, <f' g> g, <f' g b!> | <c e g c>4 c16 d8 c16 |
	d8[ <bf bf'>^^ <a a'>^^ <g g'>^^] |
	<f f'>^^ <a' c> ef <a c> | d, <fs a> c <fs a> |
%%% 66
	bf, <d g> g, <d' g> | bf <d g> g, <d' g bf> |
	c <f a> bf, <d g bf> | d <g b> c, <g' bf> |
	<f a> d4^^ c8^^ |
%%% 71
	d^^[ <bf bf'>^^ <a a'>^^ <g g'>^^] | <f f'>^^ <a' c> ef <a c> |
	d, <fs a> c <fs a> | bf, <d g> g, <d' g> |
	bf <d g> g, <d' g bf> |
%%% 76
	c <f a> d <f a d> | b, <f' g d> g, <f' g b!> |
	<c c'>4 c16 d8 c16 | d8[ <bf bf'>^^ <a a'>^^ <g g'>^^] |
	<f f'>^^ <a' c> ef <a c> |
%%% 81
	d, <fs a> c <fs a> | bf, <d g> g, <d' g> |
	bf <d g> g, <d' g bf> | c <f a> bf, <d g bf> |
	d <g b> c, <g' bf> |
%%% 86
	<f a> r c16 d8 c16 | f,8 r^\sfz <f f'>^^ r |
	a'16^\f d8 a16 d8 a | bf16 g8 bf16 a4 |
%%% 90
	\clef treble <d g bf>4( <d f a>) |
	<a cs g'>8 <a cs g'> <d f> r | \clef bass g,16 c8 g16 c8 g |
	af16 f8 af16 g4 | \clef treble <c f af>4( <c e g>) |
%%% 95
	<g b f'>8 <g b f'> <c e> r | \clef bass c,16 d8 c16 d8 c |
	c16 e8 c16 e8 c | g'16 c8 g16 c8 g |
	c8[ <bf, bf'>^^ <a a'>^^ <g g'>^^] |
%%% 100
	<f f'>^\ff^^ <a' c> ef <a c> | d, <fs a> c <fs a> |
	bf, <d g> g, <d' g> | bf <d g> g, <d' g bf> |
	c <f a> d <f a d> |
%%% 105
	b, <f' g d'> g, <f' g b> | <c c'>4 c16 d8 c16 |
	d8[ <bf bf'>^^ <a a'>^^ <g g'>^^] | <f f'> <a' c> ef <a c> |
	d,8 <fs a> c <fs a> | 
%%% 110 
	bf, <d g> g, <d' g> | bf <d g> g, <d' g bf> |
	c <f a> bf, <d g bf> | d <g b> c, <g' bf> |
	<f a>8 r c16 d8 c16 | f,8 r^\sfz <f f'>^^^\markup {\bold "D.C."} r |
}


\score { 
	\context PianoStaff <<
		\set PianoStaff.midiInstrument = "honky-tonk"
		\context Staff = "up" <<
			\clef treble
			\RH
		>>
		\context Staff = "down" <<
		        \clef bass
			\LH
		>>
	>>

\layout {
   \context {
            \PianoStaff
            \override StaffGrouper.staff-staff-spacing.minimum-distance = #12
        }
}

  \midi {
    \tempo 4 = 72
    }


}		
