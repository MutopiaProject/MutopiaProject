\version "2.10.16"

#(ly:set-option 'point-and-click #f)
#(set-default-paper-size "a4" )
#(set-global-staff-size 20 )

\header
{
	title = "Sonata No. 14, 'Moonlight'"
	composer = "Ludwig van Beethoven"
	opus = "Op. 27, No. 2"
	piece = \markup { \bold "Adagio sostenuto" }

	mutopiatitle = "Sonata No. 14 “Moonlight” (1st Movement: Adagio sostenuto)"
	mutopiacomposer = "BeethovenLv"
	mutopiainstrument = "Piano"
	date = "1802"
	source = "Berners, 1908 (edited by A. Winterberger)"
	style = "Classical"
	mutopiacopyright = "Creative Commons Attribution-ShareAlike 2.5"

	maintainer = "Stewart Holmes"
	maintainerEmail = "stewart@stewartholmes.com"
	maintainerWeb = "www.stewartholmes.com"
	lastupdated = "2007/Feb/11"

	copyright = \markup { \teeny \center-align { "Copyright © 2007" "Licensed under the Creative Commons Attribution-ShareAlike 2.5 License" "http://creativecommons.org/licenses/by-sa/2.5." } }
	footer = "Mutopia-2007/02/11-276"
	tagline = ""
}

down =
{
	\change Staff = "down"
}
up =
{
	\change Staff = "up"
}

moveFingering = #(define-music-function (parser location shift) (pair?)
#{
	\once \override Fingering #'extra-offset = $shift
#})

moveText = #(define-music-function (parser location shift) (pair?)
#{
	\once \override TextScript #'extra-offset = $shift
#})

movePhrasingSlur = #(define-music-function (parser location shift) (pair?)
#{
	\once \override PhrasingSlur #'extra-offset = $shift
#})

fingerscript =
{
	\once \override TextScript #'font-size = #-5
	\once \override TextScript #'font-encoding = #'fetaNumber
}

topmain =  \relative c'
{
	\key e \major
	\time 2/2
	\clef treble
	\stemUp
	
	s1*4			%1
	s2 r4 gis'8.^\pp gis16 |	%5
	gis2. gis8. gis16 |
	\movePhrasingSlur #'(0 . 2) \fingerscript \moveText #'(0 . 1.5) gis2-"5 - 4" \(a2-5 |
	\fingerscript \moveText #'(0 . -1) gis2-"4 - 5" fis4-4 \moveFingering #'(0 . 2) b-5\) |
	e,-3 r r2 |		%9
	r r4 g8. g16 |
	g2. g8. g16 |
	g2. \(fis4-4\) |
	\fingerscript fis2-"5 - 4" \(\moveFingering #'(0 . 1) g4-5 \moveFingering #'(0 . 0.5) e-4\) |		%13
	fis2-5 fis |
	b,4 r r 
	%\once \override PhrasingSlur #'control-points = #'((0 . 0) (3 . 5) (6 . 5) (10 . 0)) 
	\fingerscript 
	
	
	\override PhrasingSlur #'extra-offset = #'(0 . 2)
	%\override PhrasingSlur #'after-line-breaking = #pagebreakone
	\moveText #'(0 . 1.2) b'-"5 - 4" \( |  
	
	\revert PhrasingSlur #'extra-offset
	
	c2.-5 ais4-4\) |
	b2.-5 \fingerscript \moveFingering #'(-0.1 . -0.15) b4-"5 - 4" \( |		%17
	\moveFingering #'(0 . 1.3) c2.-5 ais4-4\) |
	b2-5 \(b |
	b \fingerscript a-"4 - 5"\) |
	\fingerscript g-"4 - 5" \fingerscript fis-"4 - 5" |		%21
	\fingerscript cis-"3 - 5" cis4 cis |
	\down
	fis,-1
	\up
	r r cis''8. cis16 |
	cis2. cis8. cis16 |
	cis2 \(bis4 cis-4\) |	%25
	dis2.-5 \fingerscript dis4-"5 - 4" |
	e2-5 \(\fingerscript dis4-"4 - 5" \fingerscript cis-"4 - 5"\) |
	s-\p \moveFingering #'(0 . 0.5) gis-4 \(\moveFingering #'(0 . 1) a-5 \moveFingering #'(0 . 1) fis-3\) |
	s gis, \(a fis\) |		%29
	s cis''-4 \(e cis\) |
	\down
	s cis,-4 \(e cis\) |
	\up
	s1*2 |			%33
	s1*3 |
	\stemDown
	\phrasingSlurDown
	s4 \clef bass s4 a8*2/3 dis,4*2/3 \(cis4 |	%37
	bis2\) dis4 \(\moveText #'(0.9 . -6) \fingerscript cis-"1 - 2" |
	bis2\) \moveText #'(-1 . -7) \fingerscript d4-"2 - 1" \(\moveFingering #'(-0.15 . -0.1) cis-2 |
	bis2_\markup {\italic "decresc."}\) s2 |
	s1 |			%41
	\stemUp
	s4 \clef treble s s gis''8.^\pp gis16 |
	gis2. gis8. gis16 |
	\phrasingSlurUp
	\fingerscript gis2-"5 - 4" \(\moveFingering #'(0 . 1.1) a-5 |
	\fingerscript gis-"4 - 5" \moveFingering #'(0 . 1.6) fis4-4 b4-5\) |		%45
	e,-3 r r b'8. b16 |
	b2. b8. b16 |
	\fingerscript b2-"5 - 4" \(\moveFingering #'(0 . 1.1) bis4-5 cis-4\) |
	\fingerscript dis2-"5 - 4" \(\moveFingering #'(0 . 1.1) e-5 |		%49
	\fingerscript d-"4 - 5" \fingerscript bis-"4 - 5"\) |
	cis2.-5 \fingerscript cis4-"5 - 4" \( | 
	\moveFingering #'(0 . 1) d2.-5 bis4-4\) |
	cis2.-5 cis4 \( |	%53
	d2. bis4\) | 
	cis2 cis |
	b!2. b4 |
	a-4 a-5 gis-4 gis-5 | 	%57
	fis2-4_\markup {\italic "cresc."} \(\fingerscript gis4-"5 - 4" a-5\) |
	\fingerscript gis2-"4 - 5"-\p gis-5 |
	cis,4-3 s s2 | 
	s1 |			%61
	s1 |
	s2 \clef bass s4 \moveFingering #'(0 . 1) bis4-5 | 
	s8*2/3 \clef treble s4*2/3 s2. |
	s2 \clef bass s4 bis4-5 | 		%65
	s1 |
	s2 d,\rest |
	d\rest <cis' gis e>-\pp |
	<cis gis e>1^\fermata |			%69
	
	\stemNeutral
	\bar "|."
}

topsecondary =  \relative c'
{
	#(override-auto-beam-setting '(end * * * *)  1 4)
	#(override-auto-beam-setting '(end * * * *)  2 4)
	#(override-auto-beam-setting '(end * * * *)  3 4)
	
	\set tupletSpannerDuration = #(ly:make-moment 1 4)
	
	\set fingeringOrientations = #'(up)
	
	\override TextScript   #'padding = #2
	
	\times 2/3
	{
		\stemUp gis8-1^\markup {\italic "Si deve suonare tutto questo pezzo delicatissimamente e senza sordini"} cis-3 e-5
		
		\override TupletNumber #'transparent = ##t
		\override TupletBracket #'bracket-visibility = ##f
		
		gis, cis e	gis, cis e	gis, cis e |
		
		
		gis, cis e	gis, cis e	gis, cis e	gis, cis e |
		\moveFingering #'(0 . -0.5) a,-1\( cis-2 e-4	a, cis e\)	a, \(d-3 fis-5	a, d fis\) | 
		gis, \(bis-2 fis'-5	gis, cis-3 e-5	gis, cis-4 dis-5	fis, \moveFingering #'(0 . 0.05) bis-3 dis-5\) |
		
		\down
		\phrasingSlurUp e, \( gis \moveFingering #'(0 . 4) cis-4\)
		\up
		\stemDown
		\phrasingSlurDown \moveFingering #'(0 . -0.5) gis-1 \( cis e-4\)      gis, \(cis e-3\)     gis, \(cis e\)    | %5
		
		gis, dis' fis	gis, dis' fis	gis, dis' fis	gis, dis' fis | 
		gis, cis e	gis, cis e	a, cis fis	a, cis fis    |
		gis, b e	gis, b e	a, b dis	a-1 b-1 \moveFingering #'(-0.1 . 0) dis-3       |
		gis, b e-4	gis, b e	gis, b e	gis, b e      |  %9
		g, b e		g, b e		g, b e-4	g, b e-4        |
		g, b f'		g, b f'		g, b f'		g, b f'       |
		g, c e		g, b e		g, cis e-3
		\down
		\stemUp
		fis, cis' e   | 
		fis, b d       fis, b d       g, b cis       e, b' cis     | %13
		fis, b \moveFingering #'(0 . 4.5) d-4       fis, b d       fis, ais \moveFingering #'(0 . 4.5) cis-3   fis, ais cis  |
		\up
		\stemDown
		b-1 d fis        b, d fis       b, dis fis     b, dis fis    | 
		
		%end of page 1
		
		b, e g	 	b, e g		b, e g		b, e g |
		b, dis fis	b, dis fis	b, dis fis	b, dis fis | %17
		b, e g		b, e g		b, e g		b, e g | 
		b, dis fis	b, dis fis	b, d eis	b d eis |
		b cis gis'	b, cis gis'	a, cis fis	a, cis fis |
		\down
		\stemUp
		g, b \moveFingering #'(0 . 4.5) d-3	g, b d		fis, a dis	fis, a dis |  %21
		cis, \moveFingering #'(0 . 2) fis-1 \moveFingering #'(0 . 3) a-4	\moveFingering #'(0 . 1) cis,-1 \moveFingering #'(0 . 2) fis-2 \moveFingering #'(0 . 3) a-4	cis, fis \moveFingering #'(0 . 3) gis-3	cis, eis gis  |
		\stemDown
		fis a-2 \moveFingering #'(0 . 1) cis-4	\stemUp \moveFingering #'(0 . 3) a-1 \moveFingering #'(0 . 4) cis-2
		\up \stemDown
		fis-4	\stemDown cis-1 fis a-3      cis, fis a    |
		cis, gis' b	cis, gis' b	cis, gis' b	cis, gis' b | 
		
		
		\moveText #'(0 . 0.9) cis,_\markup{\italic "cresc."} fis a-3	cis, fis a	bis, fis' a	cis, fis a | %25
		dis, fis gis	dis fis gis	dis fis gis	dis-1 \moveFingering #'(-0.1 . -0.05) fis-2 \fingerscript \moveText #'(-0.65 . 1.4) gis-"1 - 2" |
		e gis cis-4	e, gis cis-3	\moveText #'(0 . 0.9) dis,_\markup{\italic "descresc."} fis a	cis, e ais-4 | 
		\stemUp
		bis bis, dis
		\stemDown
		gis bis, dis	a' bis, dis	fis bis, dis |
		\stemUp
		r bis-4 dis-5
		\stemDown
		gis,-2 bis-4 dis-5	a-1 bis dis	fis,-2 bis dis  | %29
		\stemNeutral
		\down
		e,
		\up
		e'-1 gis
		\stemDown
		cis e, gis	e' e, gis	cis e, gis | 
		\down
		\stemUp
		r e, gis
		\stemDown
		cis e, gis	e' e, gis	cis e, gis |
		\stemUp

		\once \override PhrasingSlur #'control-points = #'( ( 1.17 . 5.8) ( 4.53 . 16.0) ( 21.1 . 19.0) ( 30.9 . 15.3) )
		\phrasingSlurUp \moveFingering #'(-1.35 . 3.3) dis-1 \( \moveFingering #'(0 . 3) a'-3 \moveFingering #'(0 . 2) fis-2
		\up
		bis-5 a-1 dis-4      bis-1 fis'-3 dis   a' fis bis-5\) |
		\down
		\once \override PhrasingSlur #'control-points = #'( ( 1.17 . 6.5) ( 4.53 . 18.0) ( 23.1 . 20.0) ( 28.5 . 12.0) )
		\phrasingSlurUp \moveFingering #'(-1.35 . 3.8) e,,-1 \( \moveFingering #'(0 . 4) cis'-4 \moveFingering #'(0 . 3) gis-2
		\up
		\stemNeutral
		e'-5 cis-1 gis'-2	e-1 \moveFingering #'(0 . 1) cis'-4 gis-2	e'-5 cis-4 gis-2\) |  %33
		
		% end of page 2
		cis,-1 \(fisis-3 e-2	ais-5 fisis-1 \moveFingering #'(0 . 1) cis'-3	ais-2 e'-4 cis-2	fisis-5 e-1 ais-4\) |
		fis,!-1 \(\moveFingering #'(0 . 1) bis-3 a!-2	dis-5 bis-1 fis'-3	dis-2 a'-4 fis-3	bis-5 a-1 dis-4\) |
		bis-2 \(fis-1 a-5		dis,-2 fis-3 bis,-1	dis-4 a-1 bis-5		fis-2 a-4 dis,-1 | 
		fis-4 bis,-1 dis-4	a-1 bis-5 fis-2\)
		\stemUp
		a_4 \moveFingering #'(0.6 . 1) dis,-1 \moveFingering #'(0 . 2) fis-4     	\moveFingering #'(0.5 . 1) cis-2 \moveFingering #'(0 . 2.5) fis-4 \moveFingering #'(0 . 3) a-5     | %37
		\moveFingering #'(0 . 0.15) bis,-1 fis' gis		a gis fis	\moveFingering #'(0.3 . 1) dis-2 fis a	cis, fis a |
		\moveFingering #'(0 . 0.15) bis,-1 fis' gis		a gis fis	d fis a	 cis, fis a | 
		\moveFingering #'(0 . -0.25) bis,-1 fis' gis		a gis fis      \stemNeutral
		\moveText #'(-1.1 . 1.5) \fingerscript cis-"2 - 1" \moveFingering #'(-0.15 . -0.15) e-2 cis'	cis, e cis' |
		dis, a'-4 cis		dis, a' cis	dis, gis-3 bis	dis, fis-2 bis | %41
		e, gis-2 cis-4		gis-2 cis-4 e-5 \stemDown
		gis,-1 cis e		gis, cis e    | 
		gis, dis' fis		gis, dis' fis		gis, dis' fis		gis, dis' fis |
		\phrasingSlurUp
		gis, cis e		gis, cis e-3		a, cis fis		a, cis fis |
		gis, b e		gis, b e-3		a, b dis		a b dis |  %45
		gis, b e		b e gis-4		b, e gis		b, e gis |
		b, fis' a		b, fis' a		b, fis' a		b, fis' a |
		\moveText #'(0 . 1.1) b,_\markup{\italic "cresc."} e gis			b, e gis-3		bis, fis' gis	cis,-1 e-1 gis-2 | 
		dis fis gis-3		dis fis gis	e gis cis-4		e, gis cis-3 | %49
		d, fis a       d, fis a       bis, fis' gis  bis, fis' gis |
		cis, e gis     cis, e gis     cis, eis gis   cis, eis gis  | 
		
		%end of page 3
		
		cis, fis a     cis, fis a     cis, fis a     cis, fis a    |
		cis, eis gis   cis, eis gis   cis, eis gis   cis, eis gis  | %53
		cis, fis a     cis, fis a     cis, fis a     cis, fis a    | 
		cis, eis gis   cis, eis gis   cis, fis a     cis, fis a    |
		b,! fis' a     b, fis' a      b, fis' a      b, e! gis     |
		a, e' gis      a, dis fis-3     gis, dis' fis  gis, cis e-3    |  %57
		\down
		\stemUp
		fis, cis' dis  fis, cis' dis  gis, cis dis   a cis \moveText #'(-1 . 5.4) \fingerscript dis-"3 - 2" |
		\moveFingering #'(0 . 3) gis,-1 \moveFingering #'(0 . 4) cis-2 \moveFingering #'(0 . 5) e-3     gis, cis \moveFingering #'(0 . 5) e-4     fis, bis \moveFingering #'(0 . 4) dis-3   fis, bis \moveFingering #'(0 . 4) dis-4 |
		\moveFingering #'(-0.3 . 5) e,-1 gis \moveFingering #'(0 . 4) cis-4
		\up
		\stemNeutral
		gis-2 cis-4 e-5			gis, cis e	gis, cis e    | 
		gis,-2 dis'-4 fis-5	gis, dis' fis		gis, dis' fis		gis, dis' fis | %61
		gis,-1 \(e'-4 cis-2	gis'-5 e-1 cis'-4	gis-1 e'-4 cis-2	gis'-5 e cis    |
		bis-1 dis-3 a-1		bis-5 fis-2 a-4		dis,-1 fis-3 \once \override Tie #'extra-offset = #'(0 . -1) a,-1 ~	a gis-3 fis-2     | 
		<cis'-\tweak #'extra-offset #'(0 . 2)-4 e,-\tweak #'extra-offset #'(0 . 2)_1>\) e-5 cis-1	gis'-3 e-2 \moveFingering #'(0 . 1) cis'-5	gis-1 e'-4 cis-2	gis'-5 e-4 cis-2    |
		bis-1 dis-3 a-1		bis-5 fis-3 a-4		dis,-2 fis-3 \once \override Tie #'extra-offset = #'(0 . -1) a,-1 ~	a gis-3 fis-2     |  %65
		\moveText #'(0 . 1) <cis'-4 e,-1>_\markup{\italic "decresc."} gis cis	e cis gis		r e \(gis			cis gis e\)     |
		r cis \(e			gis e cis\)
	}
}


bottom = \relative c
{
	\override TextScript   #'padding = #2
	\key e \major
	\time 2/2
	\clef bass
	
	\stemUp
	\moveText #'(0 . -2) <cis cis,-"5-4">1^\markup {\italic "sempre pianissimo e senza sordini"} |			%1
	<b b,-"5-4"> |
	<a a,-"5-4">2 <fis fis,-5> |
	<gis gis,-4> <gis gis,-5> |
	<cis gis cis,>1 |		%5
	<bis gis bis,> |
	<cis cis,-"4-3">2 <fis, fis,-5> |
	<b b,-4> <b b,-5> |
	<e e,-3>1 |			%9
	<e e,-4> |
	<d d,-"5-4"> |
	<c c,-"5-4">4 <b b,-5> <ais ais,-4>2 |
	\stemDown
	<b b,> e,4-3 g-2 |			%13
	fis2-3 <fis fis,-\tweak #'extra-offset #'(0 . -4)-5> |
	\stemUp
	<b b,-"3-5">1 ~ |
	
	% end of page 1
	
	<b b,>4 <e e,-"3-5"> <g g,-4> <e e,-"5-4"> |
	<b b,-5>1 ~ |			%17
	<b b,>4 <e e,> <g g,> <e e,> |
	<b b,-"5-4">2 <gis gis,-"5-4"> |
	<eis eis,-5> <fis fis,-"4-5"> |
	\stemDown
	<b b,-"4-5"> <bis bis,-"4-5"> |		%21
	cis,-1 cis-2 |
	\stemUp
	<fis cis fis,>1 |
	<eis' cis eis,> |
	<fis fis,-4>2 <dis dis,-"5-4">4 <cis cis,-"5-4"> |		%25
	<bis gis bis,>2. <bis gis bis,>4 |
	<cis gis cis,-4>2 <fis, fis,>4 <fisis fisis,> |
	<gis gis,-\tweak #'extra-offset #'(0 . -3)-4>1 |
	<gis gis,-\tweak #'extra-offset #'(0 . -3)-5> |			%29
	<gis gis,> |
	<gis gis,> |
	<gis gis,> |
	<gis gis,> |			%33
	<gis gis,> |
	<gis gis,> ~ |
	<gis gis,> ~ |
	<gis gis,> |			%37
	<gis gis,> |
	<gis gis,> |
	<gis gis,>2 <a a,-4> |
	<fis fis,> <gis gis,-"4-5"> |	%41
	<cis gis cis,>1 |
	<bis gis bis,> |
	<cis cis,-"5-3">2 <fis, fis,-5> |
	<b b,-3> <b b,-5> |		%45
	<e e,-"3-5">1 |
	<dis dis,-4> |
	<e e,-5>2 <dis dis,-4>4 <cis cis,-"5-4"> |
	<bis gis bis,-5>2 <cis gis cis,-"4-3"> |	%49
	<fis, fis,-5> <gis gis,-"4-3"> |
	<cis cis,>1 ~ |
	<cis cis,>4 <fis fis,-"3-5"> <a a,-4> <fis fis,-"5-3"> |
	<cis cis,-\tweak #'extra-offset #'(0 . -2)-5>1 ~ |				%53
	<cis cis,>4 <fis fis,> <a a,-4> <fis fis,> |
	<cis cis,-"5-3">2 <fis, fis,-5> |
	<dis' dis,-"3-4">2. <e e,-3>4 |
	<cis cis,-5> <dis dis,-4> <bis bis,-5> <cis cis,-"4-3"> |	%57
	\stemDown
	<a a,>2 <gis gis,>4 <fis fis,> |
	<gis gis,>2 <gis gis,> |
	\stemUp
	<< {
		gis2. gis8.-1 gis16-2 |
		gis2.-1 gis8. gis16 |
		gis2. gis8. gis16 |
		gis2. gis8. gis16 |
		gis2. gis8. gis16 |
		gis2. gis8. gis16 |
		\fingerscript gis2-"1 - 2" cis-1 |
		gis2 gis8*2/3-[ cis8*2/3 gis8*2/3-] e8*2/3_4-[ gis8*2/3 e8*2/3-]
	} \\ {
		cis1 |
		bis-5 |		%61
		cis-3 |
		gis-5 |
		cis-4 |
		gis-5 |		%65
		\fingerscript cis-"4 - 5" ~ |
		cis |
	} >>
	cis2-\pp <cis' gis cis,>_\markup {\column { \italic "attacca subito" \italic "il seguente"}} |
	<cis gis cis,>1^\fermata |
	
	\stemNeutral
	\bar "|."
}

breaking = 
{
	s1*12 \pageBreak
}

\book
{
	\paper
		{
			ragged-last-bottom = ##f
		}


	\score
	{
		\context PianoStaff
		<<
			\context Staff = "up"
			<<
				\set Staff.midiInstrument = #"acoustic grand"
				\context Voice = VA { \voiceOne \override Fingering #'avoid-slur = #'none \topmain }
				\context Voice = VB { \voiceTwo \override Fingering #'avoid-slur = #'none \topsecondary }
			>>
			\context Staff = "down"
			<<
				\set Staff.midiInstrument = #"acoustic grand"
				<< {\breaking} \\ {\bottom} >>
			>>
		>>
	
		\layout
		{
			line-width = 190\mm		
			left-margin = 10\mm
			indent = 0\mm
			ragged-bottom = ##f
			ragged-last-bottom = ##f
		}
	
		\midi
		{
			%\tempo 4 = 54
			\context
			{
				\Voice
				\remove Dynamic_performer
			}
		}
	}
}