\version "2.10.16"

#(ly:set-option 'point-and-click #f)
#(set-global-staff-size 20)
#(set-default-paper-size "a4")

\header
{
	piece = \markup { \bold "Presto agitato" }
	
	mutopiatitle = "Sonata No. 14 “Moonlight” (3rd Movement: Presto agitato)"
	mutopiacomposer = "BeethovenLv"
	mutopiainstrument = "Piano"
	date = "1802"
	source = "Berners, 1908 (edited by A. Winterberger)"
	style = "Classical"
	copyright = "Creative Commons Attribution-ShareAlike 2.5"

	filename = "moonlight3.ly"
	maintainer = "Stewart Holmes"
	maintainerEmail = "stewart@stewartholmes.com"
	maintainerWeb = "www.stewartholmes.com"
	lastupdated = "2007/Feb/11"

	tagline = \markup 	{ \center-align
					\fontsize #-3.5
					{
						\center-align
						{
							\fill-line {  "" "Creative Commons Attribution-ShareAlike 2.5 License" "" "Typeset by Chris Sawer and Stewart Holmes" "" }
							\fill-line { "" "Music from The Mutopia Project (www.mutopiaproject.org)" "" "Engraving by GNU LilyPond (www.lilypond.org)" "" }

						}
					}
				}
	copyright = ""
}

nudge = #(define-music-function (parser location shift) (number?)
#{
	\once \override Score.SeparationItem #'padding = #$shift
#})

moveTie = #(define-music-function (parser location shift) (pair?)
#{
	\once \override Tie #'extra-offset = $shift
#})

tieHeadGap  = #(define-music-function (parser location shift) (number?)
#{
	\once \override Tie #'details #'note-head-gap = #$shift
#})

blank =
{
	\override NoteHead #'transparent  = ##t
	\override Stem #'transparent = ##t
}
unblank =
{
	\revert NoteHead #'transparent
	\revert Stem #'transparent
}

clearTuplet = 
{
	\override TupletNumber #'transparent = ##t
	\override TupletBracket #'bracket-visibility = ##f
}

revertTuplet =
{
	\revert TupletNumber #'transparent
	\revert TupletBracket #'bracket-visibility
}

noAvoid = 
{
	\once \override Fingering #'avoid-slur = #'none	
}

pedalShift = #(define-music-function (parser location shift) (pair?)
#{
	\once \override Staff.SustainPedal #'extra-offset = $shift
#})

fingercol = { c4-\markup { \override #'(baseline-skip . 1.4) \finger \column { "5" "4" } } }

moveFingering = #(define-music-function (parser location shift) (pair?)
#{
	\once \override Fingering #'extra-offset = $shift
#})

moveDynamics = #(define-music-function (parser location shift) (pair?)
#{
	\once \override DynamicText #'extra-offset = $shift
#})

moveSlur = #(define-music-function (parser location shift) (pair?)
#{
	\once \override Voice.Slur #'extra-offset = $shift
#})

topmain =  \relative c'
{
	
	
	\set tupletSpannerDuration = #(ly:make-moment 1 4)
	
	\key cis \minor
	\time 4/4
	\clef bass
	
	r16_\p gis, cis \moveFingering #'(0 . 2) e_4 gis cis, \moveFingering #'(0 . -1) e-2 gis-3
	cis e, gis cis-4 \clef treble e gis, cis e_4 |		%1
	
	\repeat volta 2 {
		gis cis, e gis_3 cis e, gis \moveFingering #'(0 . 2) cis_4
		e gis, cis e-4 <gis e cis gis>8-.-\sf <gis e cis gis>-. \clef bass |
		r16 gis,,, bis \moveFingering #'(0 . 1) dis_3 gis bis, dis gis-4
		bis dis, gis bis-4 \clef treble dis gis, bis! dis_3 |
		gis bis, dis gis_4 bis dis, gis \moveFingering #'(0 . 1) bis_4
		dis gis, bis dis-3 <gis dis bis gis>8-.-\sf <gis dis bis gis>-. \clef bass |
		r16 cis,,, eis gis-3 cis eis, gis cis-4
		\clef treble eis gis, cis eis_4 gis cis, eis gis_3 |	%5
		cis eis, gis \moveFingering #'(0 . 2) cis_4 eis gis, cis eis-4
		gis cis, eis gis-3 <cis gis eis cis>8-.-\sf <cis gis eis cis>-. \clef bass |
		r16 cis,,,-( fis a-3) \clef treble cis-. cis-( fis a_3)
		cis-. cis-( fis a-3) <cis fis, cis>8-.-\sf <cis fis, cis>-. \clef bass |
		r16 cis,,, e fisis-3 \clef treble cis'-. cis-( e fisis_3)
		cis'-. cis-( e fisis-3) <cis' fisis, cis>8-.-\sf <cis fisis, cis>-. |
		<bis gis bis,>-.-\f gis,16-[ gis'-] gis, gis' ais,-2 gis'
		bis,-1 gis' cis,-2 gis' dis-3 gis bis,-1 gis' |		%9
		dis-3 gis cis,-2 gis' fis-4 gis e-3 gis dis-2 gis cis,-1 gis' \moveFingering #'(0 . -1) bis,-2 gis' \moveFingering #'(0 . -2) a,!-1 fisis'-4 |
		\moveFingering #'(0 . -2.5) gis,-1 gis'-5 gis, gis' gis, gis' ais, gis' bis, gis' cis, gis' dis gis bis, gis' |
		dis gis cis, gis' fis gis e gis dis gis cis, gis' bis, gis' a,! fisis' |
		gis, gis'-5 a, fisis'-4 gis, gis' a, fisis' gis, gis' a, fisis' gis, gis' a, fisis' | %13
		<gis gis,>4-. \once \override DynamicText #'extra-offset = #'(0 . 0.2) gis,,2._\sf^\fermata \clef bass |
		r16_\p gis, cis \moveFingering #'(0 . 2) e_4 gis cis, e gis-3 cis e, gis cis-4 \clef treble e gis, cis e_4 |
		
		%end of page
		
		gis cis, e gis_3 cis e, gis \moveFingering #'(0 . 1) cis_4 e e gis cis-4 <e e,>8-.-\sf <e e,>-. \clef bass |
		r16 e,,, fisis cis'-4 e fisis, cis' e-4 \clef treble
		fisis cis e fisis_3 cis' e, fisis \moveFingering #'(0 . 2) cis'_4 |			%17
		e fisis, cis' e-4 fisis cis e fisis-3
		cis' e, fisis cis'-4 <e e,>8-.-\sf <e e,>-. \clef bass |
		r16 \once \override Slur #'control-points = #'((0.5 . 1) (1.5 . 9) (36 . 7.5) (45 . 4.3))
		dis,,,-(_\markup {\italic "cresc."} ais' \moveFingering #'(0 . -2) cis-4 dis ais cis \moveFingering #'(0 . -2.3) dis-3 \clef treble
		ais' cis, dis \moveFingering #'(0 . 1) ais'_4 cis dis, ais' \moveFingering #'(0 . 2) cis_4) |
		\once \override Slur #'control-points = #'((1 . 1.8) (15 . 9) (38 . 7.5) (46 . 0.5))
		dis-( ais cis \moveFingering #'(0 . -3.5) dis-3 ais' cis, dis \moveFingering #'(0 . -3) ais'-4 cis ais dis, cis ais' dis, cis ais-) |
		b4-.-\p
		\once \override Slur #'control-points = #'((1.75 . 1.6) (11 . 5) (22 . 6) (33.5 . 3.6))
		\once \override TextScript #'extra-offset = #'(-1 . 0)
		dis2-\markup { \finger "4 - 5" } ( \moveFingering #'(0 . 1) b8._4 gis16_2) |					%21
		\grace { fisis(-[ gis ais)-] } gis4-3-( fisis-2) ~ fisis8 \moveFingering #'(-0.5 . -4.5) fisis-1( dis'8. fisis,16-) |
		ais4-3( gis-2) ~ gis8 gis-( dis'8. gis,16-) |
		b4-4( ais-3) ~ ais8 ais-2( dis8. ais16-) |
		b8-. <dis' dis,>4_\markup {\italic "cresc."} <dis dis,>8 ~
		<dis dis,> <dis dis,>-. <b b,>-. <gis gis,>-. |		%25
		<gis gis,>-. <fisis fisis,>4 <fisis fisis,>8 ~
		<fisis fisis,> <fisis fisis,>-. <dis' dis,>-. <fisis, fisis,>-. |
		<ais ais,>-. <gis gis,>4 <gis gis,>8 ~
		<gis gis,> <gis gis,>-. <dis' dis,>-. <gis, gis,>-. |
		<b b,>-. <ais ais,>4 <ais ais,>8 ~ <ais ais,> <ais ais,>-. <dis dis,>-. <ais ais,>-. |
		<bis bis,>2-\sf <cis cis,>-\sf |				%29
		\once \override Script #'extra-offset = #'(0 . 1) <ais ais,>4^\trill \grace { gis16-3(-[ ais-4)-] } <b! b,!>2.-\sf |
		<gis gis,>2-\sf <a! a,!>-\sf |
		\once \override Script #'extra-offset = #'(0 . 1) <fisis fisis,>4^\trill \grace { eis16-3(-[ fisis-4)-] } <gis gis,>2.-\sf |
		<a! e cis a!>2-\ff ~ <a e cis a>16 \once \override DynamicText #'extra-offset = #'(-0.3 . -0.75) e-1\p fis gis a-1 b-3 cis-4 b-3 |	%33
		a-2 e-1 fis gis a b cis b a e fis gis a b cis b |
		a e_\markup {\italic "cresc."} fis gis a-1 b cis d e-5 dis-3 e-5 dis-3 e-5 cis-3 b-2 a-1 |
		gis2-2\p \moveFingering #'(-3 . -1.5) ais-3^\trill \grace { gis16-(-[ ais-)-] } |
		gis4-2-. <a,! e cis a!>-\ff ~ <a e cis a>16 e-\p fis gis a b cis b |		%37
		a e fis gis a b cis b a e fis gis a b cis b |
		a e_\markup {\italic "cresc."} fis gis a b cis b a e fis gis a b cis b |
		a e fis gis \moveFingering #'(0 . -2) a-1 b cis d-1 e fis gis a-1 b cis d-1 dis |
		<e-5 e,>2-\f <gis,-5 gis,>-\f |							%41
		<b-5 b,>-\f <fisis,-\tweak #'extra-offset  #'(-0.5 . -3)-5 cis fisis,>-\f |
		<gis b, gis>8-5 <b dis,>^\markup { \override #'(baseline-skip . 1.4) \finger \column { "5" "1" } }-.-[-\p <b dis,>-. <b dis,>-.-]
		<b dis,>-. <b dis,>-. <ais dis,>-4-. <gis dis>-3-. |
		<fisis dis>-2 <dis' fisis,>^\markup { \override #'(baseline-skip . 1.4) \finger \column { "5" "1" } }-[ <dis fisis,> <dis fisis,>-]
		<dis fisis,> <dis fisis,> <dis gis,>^\markup { \override #'(baseline-skip . 1.4) \finger \column { "5" "2" } } <dis ais>^\markup { \override #'(baseline-skip . 1.4) \finger \column { "5" "3" } } |
		<dis b>^\markup { \override #'(baseline-skip . 1.4) \finger \column { "5" "4" } } <b dis,>-[ <b dis,> <b dis,>-] <b dis,> <b dis,> <ais dis,> <gis dis> |	%45
		<fisis dis> <dis' fisis,>-[ <dis fisis,> <dis fisis,>-]
		<dis fisis,> <dis fisis,> <dis gis,> <dis ais> |
		<dis b>-. <dis b>^\markup { \override #'(baseline-skip . 1.4) \finger \column { "4" "2" } }-.-[ <dis b>-( <b gis>-)-] r <e cis>^\markup { \override #'(baseline-skip . 1.4) \finger \column { "5" "3" } }-. <e cis>-( <cis gis>-) |
		r <dis b>^\markup { \override #'(baseline-skip . 1.4) \finger \column { "4" "2" } }-. <dis b>-( <b gis>-) r <dis ais>^\markup { \override #'(baseline-skip . 1.4) \finger \column { "5" "3" } }-. <dis ais>-( <ais fisis>-) |
		<b gis>^\markup { \override #'(baseline-skip . 1.4) \finger \column { "4" "2" } } <b' dis, b>-[_\markup {\dynamic p \italic "cresc."} <b dis, b> <b dis, b>-]
		<b dis, b> <b dis, b> <ais cis, ais> <gis b, gis> |					%49
		<fisis ais, fisis> <e' fisis, e>-[-\f <e fisis, e> <e fisis, e>]
		<e fisis, e> <e fisis, e> <dis fisis, dis> <cis fisis, cis> |
		<b gis b,> <b dis, b>-[-\markup {\dynamic p \italic "cresc."} <b dis, b> <b dis, b>]
		<b dis, b> <b dis, b> <ais cis, ais> <gis b, gis> |
		<fisis ais, fisis> <e' fisis, e>-[-\f <e fisis, e> <e fisis, e>]
		<e fisis, e> <e fisis, e> <dis fisis, dis> <cis fisis, cis> |
		<b gis b,> <b gis>^\markup { \override #'(baseline-skip . 1.4) \finger \column { "2" "1" } }-.-[-\p <b gis>-( <dis b>-)-] r <cis gis>^\markup { \override #'(baseline-skip . 1.4) \finger \column { "3" "1" } }-. <cis gis>-( <e cis>-) |	%53
		r <b gis>^\markup { \override #'(baseline-skip . 1.4) \finger \column { "2" "1" } }-. <b gis>-( <dis b>-) r <ais fisis>^\markup { \override #'(baseline-skip . 1.4) \finger \column { "2" "1" } }-. <ais fisis>-( <dis ais>-) |
		
		%end of page 4
		
		r <b dis,>^\markup { \override #'(baseline-skip . 1.4) \finger \column { "4" "1" } }-._\markup {\italic "cresc."} <b dis,>-( <dis gis,>-) r <a! cis,>^\markup { \override #'(baseline-skip . 1.4) \finger \column { "4" "1" } }-. <a cis,>-( <cis e,>-) |
		r <gis b,>^\markup { \override #'(baseline-skip . 1.4) \finger \column { "4" "1" } }-. <gis b,>-( <b dis,>-)
		\once \override TextScript #'extra-offset = #'(-1.7 . 0) r_\markup {\italic "decresc."} <fisis ais,>-4-. \moveSlur #'(0 . 0.5) <fisis ais,>-( <ais cis,>-) |
		<gis b,>4-\p r r b,8._4( gis16-) |							%57
		fisis4 <dis' fisis,-\tweak #'extra-offset #'(0 . 1)-2 cis>-.-( <dis fisis, cis>-. <dis fisis, cis>-.-) |
		\grace { b,16-[ gis'-3-] } dis'2.-5 b'8.-4-( gis16-) |
		fisis4 <dis' fisis, cis>-.-( <dis fisis, cis>-. <dis fisis, cis>-.-) |
		\stemDown \grace { b,16-[ gis'-3-] } dis'2 \stemDown \grace { cis,16-[ fisis-2-] } dis'2 |			%61
		\stemDown \grace { b,16-[ gis'-] } dis'2 \stemDown \grace { cis,16-[ fisis-] } dis'2 |
		b,,16_\markup {\italic "cresc."} gis'-5 dis gis b, gis' dis gis b, gis' dis gis b, gis' dis gis |
		bis, fis'-4 dis fis bis, fis' dis fis bis, fis' dis fis bis, fis' dis fis \clef bass |
	} \alternative {
		{ <e cis gis e>-\fp gis,, cis e gis cis, e gis cis e, gis cis \clef treble e gis, cis e } %65
		{ \clef bass <eis cis gis eis>-\fp cis, eis gis-3 cis eis, gis cis-4 \clef treble
		eis! gis, cis eis_4 gis cis, eis gis_3 }
	}
	
	cis eis, gis \moveFingering #'(0 . 2) cis_4 eis gis, cis eis-4
	gis cis, eis gis-3 <cis gis eis cis>8-.-\sf <cis gis eis cis>-. \clef bass |
	r16 cis,,, eis gis-3 cis eis, gis cis-4 \clef treble eis gis, cis eis_4 gis cis, eis gis_3 |
	cis eis, gis \moveFingering #'(0 . 2) cis_4 eis gis, cis eis-4
	gis cis, eis gis-3 <cis gis eis cis>8-.-\sf <cis gis eis cis>-. \clef bass |	%69
	r16 cis,,,-( fis a-3-) \clef treble cis-. cis-( fis a-3-)
	cis-. cis-( fis a-3-) <cis a fis cis>8-.-\sf <cis a fis cis>-. \clef bass |
	r16 cis,,,-( gis' b-) \clef treble cis-. cis-( gis' b-)
	cis-. cis-( gis' b-) <cis b gis cis,>8-.-\sf <cis b gis cis,>-. |
	<cis a fis cis>4-.
	\once \override Slur #'control-points = #'((1.55 . 1.3) (11 . 5) (22 . 6) (32.8 . 2.65))
	cis,2-5-(-\p a8._4 fis16-) |
	
	%end of page 5
	
	\grace { eis16-(-[ fis gis-)-] } fis4-( eis-) ~ eis8 eis-( cis'8. eis,16-) |	%73
	gis4-3-( fis-) ~ fis8 fis-( cis'8. fis,16-) |
	a4-4-( gis-3-) ~ gis8 \moveFingering #'(-0.7 . -4) gis-2-( \moveFingering #'(-2 . -3.8) cis8.-4 gis16-) |
	\stemUp a_1 \moveFingering #'(0 . 2) cis_4 \moveFingering #'(0 . 1) a_2 \moveFingering #'(0 . 2) cis_4 fis,_1 cis' a cis fis, cis' a cis fis, cis' a cis |
	gis_1 \moveFingering #'(0 . 2) cis_4 \moveFingering #'(0 . 1) b_3 \moveFingering #'(0 . 2) cis_4 gis cis b cis gis cis b cis gis cis b cis |		%77
	fis,_1 \moveFingering #'(0 . 2) cis'_4 \moveFingering #'(0 . 1) a_2 \moveFingering #'(0 . 2) cis_4 fis, cis' a cis fis, cis' a cis fis, cis' a cis |
	fis,_1_\markup {\italic "cresc."} \moveFingering #'(0 . 2) d'_5 \moveFingering #'(0 . 1) a_2 \moveFingering #'(0 . 2) d_5 fis, d' a d \moveFingering #'(0 . 1) a_1 \moveFingering #'(0 . 2) d_4 \moveFingering #'(0 . 1) c_3 \moveFingering #'(0 . 2) d_4 a d c d |
	\once \override DynamicText #'extra-offset = #'(0 . -1) g,_1-\fp \moveFingering #'(0 . 2) d'_4 \moveFingering #'(0 . 1) b_2 \moveFingering #'(0 . 2) d_4 g, d' b d g, d' b d g, d' b d |
	\stemDown \moveFingering #'(0 . -2) a-1 d-4 \moveFingering #'(0 . -1) c-3 d-4 a d c d a d c d a d c d |					%81
	\moveFingering #'(0 . -2) g,-1 d'-4 \moveFingering #'(0 . -1) b-2 d-4 g, d' b d g, d' b d fis, d' b d |
	\moveFingering #'(0 . -2) gis,!-1 d'-4 \moveFingering #'(0 . -1) b-2 d-4 gis, cis b cis \moveFingering #'(0 . -2) gis-1 cis-3 \moveFingering #'(0 . -1) b-2 cis-3 gis cis b cis |
	\stemUp \once \override DynamicText #'extra-offset = #'(0 . -1.2) fis,_1-\f \moveFingering #'(0 . 2) cis'_4 \moveFingering #'(0 . 1) a_2 \moveFingering #'(0 . 2) cis_4 fis, cis' a cis \stemDown fis,-\sf fis' \moveFingering #'(0 . -2) a,-2 fis' fis, fis' a, fis' |
	\stemNeutral fis, fis' <dis! gis,> fis fis, fis' <dis gis,> fis
	fis, fis' <dis gis,> fis fis, fis' <dis gis,> fis |			%85
	e,-\sf e' cis e e, e' cis e e,-\sf e' cis e e, e' cis e |
	dis,-\sf dis' cis dis dis, dis' cis dis dis,-\sf dis' cis dis dis, dis' cis dis |
	<dis bis dis,>4-\fp gis,2-4-( a8 gis |
	fis4-3 gis8-5 fis e4-3 fis8-5 e |						%89
	dis4-3 e8-5 dis cis4 dis8-5 cis |
	\moveFingering #'(0 . -2) bis2-5 cis-) |
	dis4-. gis'-4_\markup {\italic "cresc."} ~ gis8 gis-. a-. gis-. |
	fis-. <fis cis a>-. <gis dis b>-. <fis cis a>-.
	<e b gis>-. <e b gis>-. <fis cis a>-. <e b gis>-. |			%93
	
	%end of page 6
	
	<dis a fis>-. <dis a fis>-. <e b gis>-. <dis a fis>-.
	<cis gis e>-. <cis gis e>-. <dis a fis>-. <cis gis e>-. |
	<bis-4 fis dis>2-\p-\< <cis-5 e, cis>-\! |
	\grace { bis,16-[ fis'-]-( } <dis' fis,>2.-\>-) <cis e, cis>4-\! |
	
	\once \override DynamicLineSpanner   #'padding = #0.2
	<bis fis dis>-.-\<-( <bis fis dis>-. <cis e, cis>-. <cis e, cis>-.-\!-) | %97
	
	\grace { bis,16-[ fis'-]-( } \once \override DynamicLineSpanner   #'padding = #2.1 <dis' fis,>2.-\>-) <e, cis>8-( cis'-\!-) |
	
	
	<fis, dis>-(_\markup {\italic "cresc."} bis-) <fis dis>-( bis-) <e, cis>-( cis'-) <e, cis>-( cis'-) |
	<fis, bis,>-( dis'-) <fis, bis,>-( dis'-)
	\once \override TextScript #'extra-offset = #'(0 . -0.6) <e, cis>-(_\markup {\italic "decresc."} cis'-) <e, cis>-( cis'-) |
	<a dis, cis a>1-\p |							%101
	<gis dis bis gis>-\pp \clef bass |
	r16 gis,,-\fp cis e gis cis, e gis cis e, gis cis \clef treble e gis, cis e |
	gis cis, e gis cis e, gis cis
	e gis, cis e <gis e cis gis>8-.-\sf <gis e cis gis>-. \clef bass |
	r16 gis,,, bis dis gis bis, dis gis
	bis dis, gis bis \clef treble dis gis, bis! dis |			%105
	gis bis, dis gis bis dis, gis bis
	dis gis, bis dis <gis dis bis gis>8-.-\sf <gis dis bis gis>-. \clef bass |
	r16 cis,,, eis gis cis eis, gis cis
	\clef treble eis gis, cis eis gis cis, eis gis |
	cis eis, gis cis eis gis, cis eis
	gis cis, eis gis <cis gis eis cis>8-.-\sf <cis gis eis cis>-. \clef bass |
	r16 cis,,,-( fis a-) \clef treble cis-. cis-( fis a-)
	cis-. cis-( fis a-) <cis fis, cis>8-.-\sf <cis fis, cis>-. \clef bass |	%109
	r16 cis,,, e fisis \clef treble cis'-. cis-( e fisis-)
	cis'-. cis-( e fisis-) <cis' fisis, cis>8-.-\sf <cis fisis, cis>-. |
	<bis gis bis,>-.-\f gis,16-[ gis'-] gis, gis' ais, gis'
	bis, gis' cis, gis' dis gis bis, gis' |
	dis gis cis, gis' fis gis e gis dis gis cis, gis' bis, gis' a,! fisis' |
	gis, gis' gis, gis' gis, gis' ais, gis' bis, gis' cis, gis' dis gis bis, gis' | %113
	dis gis cis, gis' fis gis e gis dis gis cis, gis' bis, gis' a,! fisis' |
	gis, gis' a, fisis' gis, gis' a, fisis' gis, gis' a, fisis' gis, gis' a, fisis' |
	<gis gis,>4-. \once \override DynamicText #'extra-offset = #'(0 . 0.4) gis,,2._\sf^\fermata |
	
	%end of page 7
	
	r4-\p gis'2-5-( \noAvoid e8._4 cis16-) |						%117
	\grace { bis16-[-( cis dis-)-] } cis4-( bis-) ~ bis8 bis-( gis'8. bis,16-) |
	dis4-3-( cis-) ~ cis8 cis-( gis'8. cis,16-) |
	e4-3-( dis-) ~ dis8 \moveFingering #'(-1.3 . -5.3) dis-2-( \moveFingering #'(-1.3 . -4.1) gis8.-4 \moveFingering #'(-1.3 . -5.8) dis16-2-) |
	\moveFingering #'(-0.25 . -3) e8-1-. <gis' gis,>4_\markup {\italic "cresc."} <gis gis,>8 ~
	<gis gis,> <gis gis,> <e e,>-. <cis cis,>-. |			%121
	<cis cis,>-. <bis bis,>4 <bis bis,>8 ~ <bis bis,> <bis bis,>-. <gis' gis,>-. <bis, bis,>-. |
	<dis dis,>-. <cis cis,>4 <cis cis,>8 ~ <cis cis,> <cis cis,>-. <gis' gis,>-. <cis, cis,>-. |
	<e e,>-. <dis dis,>4 <dis dis,>8 ~ <dis dis,> <dis dis,>-. <gis gis,>-. <dis dis,>-. |
	<eis eis,>2-\sf <fis fis,>-\sf |					%125
	<dis dis,>4^\trill \grace { cis16-3-(-[ dis-4-)-] } <e! e,!>2.-\sf |
	<cis cis,>2-\sf <d d,>-\sf |
	<bis bis,>4^\trill \grace { ais16-3-(-[ bis-4-)-] } <cis cis,>2.-\sf |
	<d a fis d>2-\ff ~ <d a fis d>16 a-1-\p b-2 cis-3 d-1 e-3 fis-4 e-3 |		%129
	d-2 \moveFingering #'(0 . -2) a-1 b cis d e fis e d a b cis d e fis e |
	d_\markup {\italic "cresc."} a b cis d-1 e fis g a gis-3 b-5 a g fis e d-3 |
	cis2-\p dis!^\trill \grace { cis16-(-[ dis-)-] } |
	cis4-.
        \stemUp
        \change Staff = "down"
        <d, a fis d>^\ff ~ <d a fis d>16 a^\p b cis
        \change Staff = "up"
        \stemNeutral
	d e fis e |		%133
	
	%end of page 8
	
	d a b cis d_\markup {\italic "cresc."} e fis e d a b cis d e fis e |
	d a b cis d_1 e fis g_1 a b cis d-1 e fis g-1 gis-4 |
	<a a,>2-\f <cis, cis,>-\f |
	<e e,>-\f \once \override Staff.Clef #'extra-offset = #'( -2 . 0 ) \clef bass <bis, fis bis,>-\f |				%137
	<cis e, cis>8 \clef treble <e-5 gis,>-[-.-\p <e gis,>-. <e gis,>-.-]
	<e gis,>-. <e gis,>-. \moveFingering #'(0 . -1) <dis gis,>-4-. \moveFingering #'(0 . -1.5) <cis gis>-5-. |
	\moveFingering #'(0 . -2) <bis gis>-2 <gis' bis,>^\markup { \override #'(baseline-skip . 1.4) \finger \column { "4" "2" } }-[ <gis bis,> <gis bis,>-] <gis bis,> <gis bis,_1> <gis cis,_2> <gis dis_1> |
	<gis e>^\markup { \override #'(baseline-skip . 1.4) \finger \column { "4" "2" } } <e gis,>-[ <e gis,> <e gis,>-] <e gis,> <e gis,> <dis gis,> <cis gis> |
	<bis gis> <gis' bis,>-[ <gis bis,> <gis bis,>-]
	<gis bis,> <gis bis,> <gis cis,> <gis dis> |				%141
	<gis e>-. <gis e>^\markup { \override #'(baseline-skip . 1.4) \finger \column { "4" "2" } }-.-[ <gis e>-( <e cis>^\markup { \override #'(baseline-skip . 1.4) \finger \column { "3" "1" } }-)-] r <a fis>^\markup { \override #'(baseline-skip . 1.4) \finger \column { "4" "2" } }-. <a fis>-( <fis cis>^\markup { \override #'(baseline-skip . 1.4) \finger \column { "3" "1" } }-) |
	r <gis e>-. <gis e>-( <e cis>-) r <gis dis>^\markup { \override #'(baseline-skip . 1.4) \finger \column { "4" "2" } }-. \moveSlur #'(0 . -0.25) <gis dis>-( <dis bis>^\markup { \override #'(baseline-skip . 1.4) \finger \column { "3" "1" } }-) |
	<gis e cis>^\markup { \override #'(baseline-skip . 1.4) \finger \column { "5" "4" "2" } } <e' gis, e>-[-\p <e gis, e> <e gis, e>-]
	<e gis, e> <e gis, e> <dis fis, dis> <cis e, cis> |
	<bis dis, bis> <bis' dis, bis>-[-\f <bis dis, bis> <bis dis, bis>-]
	<bis dis, bis> <bis dis, bis> <cis e, cis> <dis fis, dis> |		%145
	<e gis, e> <e, gis, e>-[-\p <e gis, e> <e gis, e>-]
	<e gis, e> <e gis, e> <dis fis, dis> <cis e, cis> |
	<bis dis, bis> <bis' dis, bis>-[-\f <bis dis, bis> <bis dis, bis>-]
	<bis dis, bis> <bis dis, bis> <cis e, cis> <dis fis, dis> |
	<e gis, e> <cis gis>-[-.-\p <cis gis>-( <gis e>-)-] r <cis a>-. <cis a>-( <a fis>-) |
	r <gis e>-. <gis e>-( <e cis>-) r <gis dis>-. <gis dis>-( <dis bis>-) |	%149
	r \once \override TextScript #'extra-offset = #'(0 . -0.6)<gis cis,>-._\markup {\italic "cresc."} <gis cis,>-( <e gis,>-) r <fis a,>-. <fis a,>-( <d fis,>-) |
	r <e gis,>-. <e gis,>-( <cis e,>-)_\markup {\italic "decresc."} r <dis! fis,>-. <dis fis,>-( <bis dis,>-) |
	<cis e,>4-\p r r e,8._4 cis16 |
	
	%end of page
	
	bis4 <gis' bis, fis>-.-( <gis bis, fis>-. <gis bis, fis>-.-) |		%153
	\grace { e,16-[ cis'-] } gis'2. e'8.-4-( cis16-) |
	bis4 <gis' bis, fis>-.-( <gis bis, fis>-. <gis bis, fis>-.-) |
	\grace { e,16-[ cis'-] } gis'2 \grace { fis,16-[ bis-] } gis'2 |
	\grace { e,16-[ cis'-] } gis'2 \grace { fis,16-[ bis-] } gis'2 \clef bass | %157
	e,,16_\markup {\italic "cresc."} cis' gis cis e, cis' gis cis e, cis' gis cis e, cis' gis cis |
	<eis, cis> cis' gis cis <eis, cis> cis' gis cis
	<eis, cis> cis' gis cis <eis, cis> cis' gis cis |
	\moveDynamics #'(0.2 . 0) <cis a fis cis>-.-\fp cis, fis a cis fis, a cis \clef treble fis a, cis fis a cis, fis a |
	cis fis, a cis fis a, cis fis
	a cis, fis a <cis a fis cis>8-.-\sf <cis a fis cis>-. \clef bass |		%161
	r16 cis,,, e gis cis e, gis cis \clef treble e gis, cis e gis cis, e gis |
	cis e, gis cis e gis, cis e
	gis cis, e gis <cis gis e cis>8-.-\sf <cis gis e cis>-. \clef bass |
	
	\override Beam #'positions = #'(-5 . -4)
	\stemDown r cis,,,32 \nudge #0.1 e fisis ais \nudge #0.3 \stemUp <cis ais fisis e cis>4 ~ <cis ais fisis e cis>8
	\revert Beam #'positions
	
	\override Beam #'positions = #'(-8 . -7)
	\stemDown \override Clef #'miminum-X-extent = #'(1 . 1) \clef treble cis32 \nudge #0.1 e fisis ais \nudge #0.3 \stemUp <cis ais fisis e cis>4 ~ |
	\revert Beam #'positions
	
	<cis ais fisis e cis>8
	
	\override Beam #'positions = #'(-4 . -3)
	\stemDown cis32 \nudge #0.2 e fisis ais \stemUp
	\revert Beam #'positions
	\nudge #0.5
	
	<cis ais fisis e cis>2.^\fermata-\sf \clef bass |				%165
	
	
	\stemDown r8
	
	\override Beam #'positions = #'(-6 . -5)
	a,,,!32 bis dis fis
	\revert Beam #'positions
	
	\stemUp <a! fis dis bis a>4 ~ <a fis dis bis a>8
	
	\override Beam #'positions = #'(-9 . -8	)
	\stemDown \clef treble a32 bis dis fis \nudge #0.25 \stemUp <a fis dis bis a>4 ~ |
	\revert Beam #'positions
	
	%end of page
	
	\override Beam #'positions = #'(-6 . -5)
	\stemDown <a fis dis bis a>16 a bis dis \stemDown \once \override DynamicText #'extra-offset = #'(0.15 . 2.1) \once \override Script #'extra-offset = #'(0.7 . 0.5) <a' dis, bis a>2.^\fermata^\sf \stemNeutral |
	\revert Beam #'positions
	
	r16-\p gis, e gis cis, gis' e gis cis, gis' e gis cis, gis' e gis |
	dis gis fis gis dis gis fis gis dis gis fis gis dis gis fis gis |		%169
	cis, gis' e gis cis, gis' e gis cis, gis' e gis cis, gis' e gis |
	bis, gis' fis gis bis, gis' fis gis bis, gis' fis gis bis, gis' fis gis |
	<gis e cis>4-. <gis' gis,>2-\p <e e,>8.-( <cis cis,>16-) |
	<cis cis,>4-( <bis bis,>-) ~ <bis bis,>8 <bis bis,>-( <gis' gis,>8. <bis, bis,>16-) |	%173
	<dis dis,>4-( <cis cis,>-4-) ~ <cis cis,>8 <cis cis,>-( <gis' gis,>8. <cis, cis,>16-) |
	<e e,>4-( <dis dis,>-4-) ~ <dis dis,>8 \moveFingering #'(-1 .-3) <dis dis,>-4-( \moveFingering #'(-1 .-3) <gis gis,>8.-5 \moveFingering #'(-1 .-3) <dis dis,>16-4-) |
	<fis fis,>8-5-(_\markup {\italic "cresc."} <e e,>-) <cis' cis,>-. <e, e,>-.
	<fis fis,>-( <eis eis,>-) <cis' cis,>-. <eis, eis,>-. |
	
	\override Fingering #'avoid-slur = #'none
	
	<gis gis,>-( \moveFingering #'(0 . 0.6) <fis fis,>-4-) <cis' cis,>-. <fis, fis,>-.
	<a a,>-( \moveFingering #'(0 . 0.6) <gis gis,>-4-) <cis cis,>-. <gis gis,>-. |				%177
	
	\times 2/3 { \once \override Slur #'control-points = #'((1.5 . 3.75) (7 . 5) (14 . 5) (18.8 . 1.5))  a8-5-(-\f fis cis } \clearTuplet \times 2/3 { a \moveFingering #'(0 . 0) fis_4 cis-) \slurUp 
		
	\once \override Slur #'control-points = #'((1.5 . 3) (7 . 4.5) (15.5 . 3) (19.4 . -8))
		a'-( fis cis
		\stemUp
		\change Staff = "down"                                                                                                                               
	a \moveFingering #'(0 . 2) fis_4 cis-) } | %3/5
	\once \override Slur #'control-points = #'((1.5 . 5.5) (15 . 22) (40 . 20) (48.5 . 12.5))   a'16-( fis-4 cis a cis fis-4 a-1 cis
	\stemNeutral
	\change Staff = "up"
	\moveFingering #'(0 . -3) fis-4 \moveFingering #'(0 . -2) a-1 cis fis a fis cis a-) |
	\times 2/3 { \once \override Slur #'control-points = #'((1.5 . 3.75) (7 . 5) (14 . 5) (19.9 . 1.5)) a'8-(-\f fis d a fis d-4-) 
		
		\once \override Slur #'control-points = #'((1.5 . 3) (7 . 4.5) (15.5 . 3) (19.4 . -8)) a'-( fis d
		\stemUp
		\change Staff = "down"
	a fis-4 d-) } |
	\once \override Slur #'control-points = #'((1.5 . 5.5) (15 . 22) (43 . 20) (48.2 . 12.3)) a'16-( fis-4 d a d fis-4 a-1 d
	\stemNeutral
	\change Staff = "up"
	\moveFingering #'(0 . -3) fis-4 \moveFingering #'(0 . -2) a-1 d fis a fis d a-) |							%181
	\times 2/3 { \once \override Slur #'control-points = #'((1.5 . 4.75) (6 . 5.5) (14 . 4) (18.5 . 2)) \moveFingering #'(0 . 0.5) cis'8-4-(-\f ais fisis e \moveFingering #'(0 . -1) cis-3 \moveFingering #'(0 . -2) ais-2-) \moveFingering #'(0 . 0.5) e'-5-( cis ais } fisis16 e_1 cis_3 ais_2-) |
	
	\revertTuplet
	
	%end of page
	
	\stemDown
	
	\once \override Slur #'control-points = #'((1.5 . -1.25) (20 . 10) (47 . 10) (52.5 . 2.5))
	
	\moveFingering #'(0 . -3.5) e'-5-( cis
	\stemUp
	\change Staff = "down"
	ais fisis \moveFingering #'(0 . 2) e_1 \moveFingering #'(0 . 1) cis_2 \moveFingering #'(0 . 2) e_1 fisis \once \override TupletNumber #'extra-offset = #'(0 . 5) \times 4/6 { ais-[
		\stemDown
		\change Staff = "up"
	cis \moveFingering #'(0 . -3.5) e-1 fisis ais cis-] e-1-[ fisis ais cis ais e-]-) } |
	\clearTuplet \times 2/3 { \once \override Slur #'control-points = #'((2 . 5.5) (30 . 11) (80 . 4) (94.5 . -7.5)) e'8-( \moveFingering #'(0 . 1.5) cis-4 gis } \times 2/3 { e \moveFingering #'(0 . -1) cis-4 gis e' cis gis } \stemUp e16 \moveFingering #'(0 . 2) cis'_4 gis e | \revertTuplet
	cis_2 gis'_5 e cis
	\stemUp
	\change Staff = "down"
	\moveFingering #'(0 . 3) gis_1 \moveFingering #'(0 . 5) e'_5 cis gis e \moveFingering #'(0 . 4) cis'_4 gis e \moveFingering #'(0 . 1) cis_2 \moveFingering #'(0 . 3) gis'_5 \moveFingering #'(0 . 2) e_4 \moveFingering #'(0 . 1) cis_2-) |				%185
	
	\phrasingSlurUp
	\slurDown
	
	\once \override PhrasingSlur #'control-points = #'((1.5 . 2.5) (28 . 12) (64 . 21) (95.5 . 18.75)) gis_2-\( a_1 ais b bis cis cisis dis e eis fis fisis gis a! ais b |
	
	\change Staff = "up"
	bis cis cisis dis \times 4/5 { e16-( eis fis fisis gis-) }
	\times 4/5 { a16-[-( ais b! bis cis-]-) } \times 2/3 { d16-[-( dis e-]-) } eis32 (fis fisis gis-)\) |
	a1*3/4^\trill \grace { \stemDown \once \override PhrasingSlur #'control-points = #'((1.25 . 2.75)(15 . 5)(35 . 3)(43 . -10.25)) gis8 \([fis e dis fis cis bis dis a gis fis a e dis fis cis bis dis
		\stemUp
		\change Staff = "down"
   a gis fis a e dis fis cis bis] dis4-.-( a-. gis-.-)\) } \once \override TextScript #'extra-offset = #'(0 . -1) s4_\markup { \translate #(cons -6 0) { \italic "decresc."} } |
   \change Staff = "up"
   s1^\markup {"Adagio"} |						%189
   \change Staff = "down"
   s1 |
   \once \override DynamicText #'extra-offset = #'(0 . 1.5) \once \override TextScript #'extra-offset = #'(0 . 9.5) cis4-2-.^\p^\markup {"Tempo I"}
   \stemNeutral
   \change Staff = "up"
   r r \moveFingering #'(0 . -1) e'8._4-( \moveFingering #'(0 . -1) cis16_2-) |
   bis4_1 <gis' bis, fis>-.-( <gis bis, fis>-. <gis bis, fis>-.-) |
   \grace { e,16-[ cis'-] } gis'2. e'8.-4-( \moveFingering #'(0 . -1) cis16-2-) |					%193
   \moveFingering #'(0 . -1) bis4-1 <gis' bis, fis>-.-( <gis bis, fis>-. <gis bis, fis>-.-) |
   \grace { e,16-[ cis'-] } gis'2_\markup {\italic "cresc."} \grace { fis,16-[ bis-] } gis'2 |
   \grace { e,16-[ cis'-] } gis'2 \grace { fis,16-[ bis-] } gis'2 |
   \grace { e,16-[ cis'-] } \slurUp gis'16-( \f \moveFingering #'(0 . -3) e,-1 gis cis e \moveFingering #'(0 . -2) gis,-1 cis e gis \moveFingering #'(0 . -1) cis,-1 e gis cis e,-1 gis cis-) | %197
   \once \override Slur #'control-points = #'((1.5 . 5.5) (12 . 7) (36 . 7.5) (42 . 2.75)) e-5-(-\sf cis gis e \moveFingering #'(0 . -0.2) cis'-5 gis e cis gis'-5 e cis gis \moveFingering #'(-0.5 . -2) e'-5 cis gis e-) |
   \slurUp \once \override Slur #'control-points = #'((1.5 . 3.25)(12.5 . 4)(35 . 2)(44.3 . -6.75)) cis'-5-( gis e cis \moveFingering #'(-1 . -3) gis'-5 e cis gis
   \stemUp
   \change Staff = "down"
   \moveFingering #'(-1.5 . -3) e'-5 cis gis e \moveFingering #'(-1.5 . -3) cis'-5 gis e gis-) \slurNeutral |
   cis,4 g'\rest
   \stemNeutral
   \change Staff = "up"
   <cis'' gis e cis>-.-\ff r |
   <cis, gis e cis>-. r r2 \bar "|." |						%201
}

topsecondary =  \relative c' {
	
	\override Staff.NoteCollision   #'merge-differently-dotted = ##t
	
	s1*163
	
	<< { \tieDown \stemUp s8 s32*3 \moveTie #'(0 . 0.5) ais32 ~ \blank ais4 s8 s32*3 \unblank ais'32 ~ \blank ais4 } \\
	{ \tieDown \stemUp s8 s32*2 \tieHeadGap #1.2 \moveTie #'(0.4 . 0.6) fisis,16 ~ \blank fisis4 s8 s32*2 \unblank fisis'16 ~ \blank fisis4 } \\
	{ \tieDown \stemUp s8 s32 \tieHeadGap #0.75 \moveTie #'(0 . 0.4) e,16. ~ \blank e4 s8 s32 \unblank e'16. ~ \blank e4 } \\
	{ \tieDown \stemUp s8 \moveTie #'(0 . -0.6) cis,8 ~ \blank cis4 s8 \unblank cis'8 ~ \blank cis4 } >>
	
	<< { \tieDown \stemUp s8 s32*3 \unblank ais''32 ~ \blank ais2 s4 } \\
	{ \tieDown \stemUp s8 s32*2 \unblank \moveTie #'(0 . 0.4) fisis16 ~ \blank fisis2 s4 } \\
	{ \tieDown \stemUp s8 s32 \unblank \tieHeadGap #0.7 \moveTie #'(-0.1 . 0.3) e16. ~ \blank e2 s4 } \\
	{ \tieDown \stemUp s8 \unblank \moveTie #'(0 . -0.4) cis8 ~ \blank cis2 s4 } >>
	
	<< { \tieDown \stemUp s8 s32*3 \unblank \tieHeadGap #0.75 \moveTie #'(0 . 0.3) fis,,32 ~ \blank fis4 s8 s32*3 \unblank fis'32 ~ \blank fis4 } \\
	{ \tieDown \stemUp s8 s32*2 \unblank \tieHeadGap #0.4 \moveTie #'(0 . 0.5) dis,16 ~ \blank dis4 s8 s32*2 \unblank dis'16 ~ \blank dis4 } \\
	{ \tieDown \stemUp s8 s32 \unblank \tieHeadGap #0.75 bis,16. ~ \blank bis4 s8 s32 \unblank bis'16. ~ \blank bis4 } \\
	{ \tieDown \stemUp s8 \unblank \moveTie #'(0 . -0.75) a,8 ~ \blank a4 s8 \unblank a'8 ~ \blank a4 } >>
	
	<< { \tieDown \stemUp s16*3 \unblank \tieHeadGap #0.75 \moveTie #'(-0.2 . 0.7) dis'16 ~ \blank dis2 s4 } \\
	{ \tieDown \stemUp s16*2 \unblank \tieHeadGap #1.5 \moveTie #'(-0.7 . 0.5) bis8 ~ \blank bis2 s4 } \\
	{ \tieDown \stemUp s16 \tieHeadGap #1.2 \moveTie #'(-0.1 . 0.25) \unblank a8. ~ \blank a2 s4 } >>
	\stemNeutral
}

bottom =  \relative c {
	
	\key cis \minor
	\time 4/4
	\clef bass
	
	cis,8_5-. gis'_2-. cis,-. gis'-. cis,-. gis'-. cis,-. gis'-. |	%1
	\repeat volta 2 {
		cis,-. gis'-. cis,-. gis'-.
		cis,-. gis'-. <cis cis,>-. gis-. |
		bis,_5-. gis'_2-. bis,-. gis'-. bis,-. gis'-. bis,-. gis'-. |
		bis,-. gis'-. bis,-. gis'-.
		bis,-. gis'-. <bis bis,>-. gis-. |
		b,!_5-. gis'_2-. b,-. gis'-. b,-. gis'-. b,-. gis'-. |		%5
		b,-. gis'-. b,-. gis'-. b,-. gis'-. <b b,>-. gis-. |
		a,-. a'-. a,-. a'-. a,-. a'-. a,-. a'-. |
		a,-. a'-. a,-. a'-. a,-. a'-. a,-. a'-. |
		<gis gis,>-. << { \moveFingering #'(-0.25 . -2) bis'8-4 bis cis dis e \moveFingering #'(-1.5 . -3) fis-2 \moveFingering #'(-1 . -3) dis-3 } \\ { \moveFingering #'(0.5 . 3) gis,4.-5 ~ gis2 ~ } >> |	%9
		<< { \moveFingering #'(-0.5 . -3) fis'8-2 \moveFingering #'(-0.5 . -3.5) e-3 \moveFingering #'(-1.5 . -3) a-1 \moveFingering #'(-1 . -3) gis-2 \moveFingering #'(-1 . -2.5) fis-3 \moveFingering #'(-1.5 . -3) e-1 \moveFingering #'(-1.5 . -3) dis-2 \moveFingering #'(-1 . -3) cis-3 } \\ { gis1 } >> |
		<< { \moveFingering #'(-0.5 . -2) bis8-4 bis bis cis dis e fis dis } \\ { gis,1 ~ } >> |
		<< { fis'8 e a gis fis e dis cis } \\ { gis1 } >> |
		<bis gis>8-. <cis gis>-. <bis gis>-. <cis gis>-.
		<bis gis>_\markup { \override #'(baseline-skip . 1.4) \finger \column { "1" "5" } }-. <cis gis>_\markup { \override #'(baseline-skip . 1.4) \finger \column { "2" "5" } }-. <bis gis>_\markup { \override #'(baseline-skip . 1.4) \finger \column { "1" "4" } }-. <cis gis>_\markup { \override #'(baseline-skip . 1.4) \finger \column { "2" "4" } }-. |		%13
		<bis gis>4-. <gis, gis,>2.^\fermata |
		cis,8_5-. gis'_2-. cis,-. gis'-. cis,-. gis'-. cis,-. gis'-. |
		
		%end of page 1
		
		cis,-. gis'-. cis,-. gis'-. cis,-. gis'-. <cis cis,>-. gis-. |
		ais,_5-. cis'_1-. ais_3-. cis_2-. ais-. cis-. ais-. cis-. |		%17
		ais-. cis-. ais-. cis-. ais-. cis-. <ais ais,>-. cis_2-. |
		fisis,,_5-. dis''_1-. fisis,_5-. dis'_2-. fisis,-. dis'-. fisis,-. dis'-. |
		fisis,-. dis'-. fisis,-. dis'-. fisis,-. dis'-. fisis,-. dis'-. |
		gis,16_4 dis' b dis gis, dis' b dis gis, dis' b dis gis, dis' b dis |	%21
		ais_3 dis cis dis ais_4 dis cis dis ais dis cis dis ais dis cis dis |
		b_3 dis b dis b dis b dis b dis b dis b dis b dis |
		fisis,_5 dis' fisis, dis' fisis, dis' fisis, dis'
		fisis, dis' fisis, dis' fisis, dis' fisis, dis' |
		gis,_4 dis' b dis gis, dis' b dis gis, dis' b dis gis, dis' b dis |	%25
		ais_3 dis cis dis ais_4 dis cis dis ais dis cis dis ais dis cis dis |
		b_3 dis b dis b dis b dis b dis b dis b dis b dis |
		fisis, dis' fisis, dis' fisis, dis' fisis, dis'
		fisis,_5 dis' fisis, dis' fisis, dis' fisis, dis' |
		fis,!_4 dis' gis, dis' fis, dis' gis, dis' e,_5 cis' gis cis e, cis' gis cis |	%29
		e,_4 cis' fis, cis' dis,_5 b' fis b dis, b' fis b dis, b' fis b |
		d,_4 b' e, b' d, b' e, b' cis,_5 a' e a cis, a' e a |
		cis,_4 ais' dis,!_3 ais' b,_5 gis' dis gis b, gis' dis gis b, gis' dis gis |
		<cis a! e cis>2 ~ <cis a e cis>4 r \clef treble |			%33
		
		%end of page
		
		<a'' e cis>4-4-. r <a e cis>-. r |
		<a e cis>-. <a e cis>-. <a e cis>-. <a e cis>-. |
		dis,16_5 b' gis_3 b dis, b' gis b dis, cis' fisis,_4 cis' dis, cis' fisis, cis' |
		<b-2 gis-3 e-5>4-. \clef bass <cis,, a! e cis> ~ <cis a e cis> r |		%37
		r <a' e cis-4>-. r <a e cis>-. |
		r8 <a e cis>-. r <a e cis>-. r <a e cis>-. r <a e cis>-. |
		<a e cis>4 r r2 |
		\moveFingering #'(0 . -2) cis,16-4 a' e a cis, a' e a \moveFingering #'(0 . -2) cisis,-5 b' eis, b' cisis, b' eis, b' |	%41
		\moveFingering #'(0 . -1) dis,-4 b' gis b dis, b' gis b dis,, dis' cisis-2 dis cisis dis cisis dis |
		gis,8_5 gis'_4-.-[ gis-. gis-.-] gis-. gis-. ais_3-. b_2-. |
		<cis dis,>-\markup { \override #'(baseline-skip . 1.4) \finger \column { "1" "5" } } <dis cis>-\markup { \override #'(baseline-skip . 1.4) \finger \column { "1" "2" } }-[ <dis cis> <dis cis>-] <dis cis> <dis cis> <dis b>-\markup { \override #'(baseline-skip . 1.4) \finger \column { "1" "3" } } <dis ais>-\markup { \override #'(baseline-skip . 1.4) \finger \column { "1" "4" } } |
		<gis, gis,> gis-[ gis gis-] gis gis ais b |				%45
		<cis dis,> <dis cis>-[ <dis cis> <dis cis>-] <dis cis> <dis cis> <dis b> <dis ais> |
		gis,,-. <b' gis>-\markup { \override #'(baseline-skip . 1.4) \finger \column { "2" "4" } }-.-[ <b gis>-( <dis b>-)-] cis,-. <cis' gis>-\markup { \override #'(baseline-skip . 1.4) \finger \column { "2" "4" } }-.-[ <cis gis>-( <e cis>-)-] |
		dis,-. <b' gis>-\markup { \override #'(baseline-skip . 1.4) \finger \column { "2" "3" } }-.-[ <b gis>-( <dis b>-)-] dis,-. <ais' fisis>-\markup { \override #'(baseline-skip . 1.4) \finger \column { "2" "3" } }-.-[ <ais fisis>-( <dis ais>-)-] |
		<gis,, gis,> <dis' gis,>_5-[ <dis gis,> <dis gis,>-] <dis gis,> <dis gis,> <dis ais>_4 <dis b>_3 | %49
		<dis cis dis,> <cis' dis,>-[ <cis dis,> <cis dis,>-] <cis dis,> <cis dis,> <b dis,> <ais dis,> |
		<gis, gis,> <dis' gis,>-[ <dis gis,> <dis gis,>-] <dis gis,> <dis gis,> <dis ais> <dis b> |
		<dis cis dis,> <cis' dis,>-[ <cis dis,> <cis dis,>-] <cis dis,> <cis dis,> <b dis,> <ais dis,> |
		<gis gis,> <dis' b>-\markup { \override #'(baseline-skip . 1.4) \finger \column { "1" "2" } }-.-[ <dis b>-( <b gis>-)-] cis,-. <e' cis>-\markup { \override #'(baseline-skip . 1.4) \finger \column { "1" "2" } }-.-[ <e cis>-( <cis gis>-)-] |	%53
		dis,-. <dis' b>-\markup { \override #'(baseline-skip . 1.4) \finger \column { "1" "2" } }-.-[ <dis b>-( <b gis>-)-] cis,-. <dis' ais>-\markup { \override #'(baseline-skip . 1.4) \finger \column { "1" "2" } }-. <dis ais>-( <ais fisis>-) |
		
		%end of page
		
		b, \clef treble <gis'' dis>-\markup { \override #'(baseline-skip . 1.4) \finger \column { "1" "2" } }-.-[ <gis dis>-( <dis b>-)-]
		\clef bass cis,-. \clef treble <a''! e>-\markup { \override #'(baseline-skip . 1.4) \finger \column { "1" "2" } }-.-[ <a e>-( <e cis>-)-] \clef bass |
		dis,-. \clef treble <gis' dis>-\markup { \override #'(baseline-skip . 1.4) \finger \column { "1" "2" } }-.-[ <gis dis>-( <dis b>-)-]
		\clef bass dis,-. \clef treble <fisis' cis>-\markup { \override #'(baseline-skip . 1.4) \finger \column { "1" "2" } }-.-[ <fisis cis>-( <cis ais>-)-] | \clef bass |
			gis,16 gis' dis gis gis, gis' dis gis gis, gis' dis gis gis, gis' dis gis |		%57
		gis, ais' dis, ais' gis, ais' dis, ais' gis, ais' dis, ais' gis, ais' dis, ais' |
		gis, gis' dis gis gis, gis' dis gis gis, gis' dis gis gis, gis' dis gis |
		gis, ais' dis, ais' gis, ais' dis, ais' gis, ais' dis, ais' gis, ais' dis, ais' |
		gis, gis' dis gis gis, gis' dis gis gis, ais' dis, ais' gis, ais' dis, ais' |		%61
		gis, gis' dis gis gis, gis' dis gis gis, ais' dis, ais' gis, ais' dis, ais' |
		gis, gis' dis gis gis, gis' dis gis gis, gis' dis gis gis, gis' dis gis |
		gis, fis' dis fis gis, fis' dis fis gis, fis' dis fis gis, fis' dis fis |
	} \alternative {
		{ cis,8_5-. gis'_2-. cis,-. gis'-. cis,-. gis'-. cis,-. gis'-. }				%65
		{ cis,8_5-. gis'-. cis,-. gis'-. cis,-. gis'-. cis,-. gis'-. }
	}
	
	cis,8-. gis'-. cis,-. gis'-. cis,-. gis'-. <cis cis,>-. gis-. |
	b,_5-. gis'_2-. b,-. gis'-. b,-. gis'-. b,-. gis'-. |
	b,-. gis'-. b,-. gis'-. b,-. gis'-. <b b,>-. gis-. |		%69
	a,-. a'-. a,-. a'-. a,-. a'-. a,-. a'-. |
	eis,-. eis'-. eis,-. eis'-. eis,-. eis'-. eis,-. eis'-. |
	<fis fis,>16 \moveFingering #'(0 . 4) cis''_1 \moveFingering #'(0 . 3) a_2 \moveFingering #'(0 . 4) cis_1 fis,-4 cis' a cis fis, cis' a cis fis, cis' a cis |
	
	%end of page
	
	gis-3 cis b cis gis cis b cis gis-4 cis b cis gis cis b cis |				%73
	a-3 cis a cis a cis a cis a cis a cis a cis a cis |
	\moveFingering #'(0 . -1) eis,-5 cis' eis, cis' eis, cis' eis, cis' eis, cis' eis, cis' eis, cis' eis, cis' |
	fis,4-4-. cis'2-1-( a8.-2 fis16-4-) |
	fis4-3-( eis-) ~ eis8 \once \override Slur #'control-points = #'((1 . 1.5) (5 . 5.5) (12 . 5.5) (15.5 . 1.5)) eis-( cis'8. eis,16-) |		%77
	gis4-2-( fis-) ~ fis8 \once \override Slur #'control-points = #'((1 . 2) (5 . 5.5) (12 . 5.5) (15.75 . 1.8)) fis-4-( cis'8. fis,16-4-) |
	fis8-3-. \once \override Slur #'control-points = #'((1 . 2) (3 . 7) (12 . 7) (15.5 . 2.)) fis-4-( d'8. fis,16-4-) fis8-3-.
	\once \override Slur #'control-points = #'((1 . 1.85) (5 . 6.5) (12 . 6.5) (15.5 . 1.85)) fis-4-( d'8. fis,16-4-) |
	g4-3-. d2-1-( b8.-2 g16-4-) |
	\slurDown
	g4-3-( fis-4-) ~ fis8 fis-( d'8. fis,16-) |			%81
	a4-2-( g-) ~ g8 g-( d'8. fis,16-4-) |
	fis4-3-( eis-4-) ~ eis8 eis-( cis'8. eis,16-) |
	\override Fingering #'extra-offset = #'(0 . -0.5)
	fis8-3-. fis-2-( a-1 fis-2-) 
	\override Fingering #'extra-offset = #'(0 . -1)
	d-4-. d-2-( fis-1 d-2-) |
	\override Fingering #'extra-offset = #'(0 . -1.5)
	bis2-4 ~ bis8 bis-( dis-2 bis-) |				%85
	cis-3-. cis-2-( e-1 cis-2-) a-4-. a-2-( cis-1 a-2-) |
	fis-4-. fis-3-( a-1 fis-4-) fisis-3-. fisis-4-( ais-2 fisis-4-) |
	\revert Fingering #'extra-offset
	\stemDown \moveFingering #'(0 . -5) gis16-3 gis' \moveFingering #'(0 . -5) gis,-5 gis' gis, gis' gis, gis' gis, gis' gis, gis' gis, gis' gis, gis' |
	<< { <cis' a>2 <b gis> } \\ { gis,,16 gis' gis, gis' gis, gis' gis, gis' gis, gis' gis, gis' gis, gis' gis, gis' } >> | %89
	<< { <a' fis>2 <gis e> } \\ { gis,,16 gis' gis, gis' gis, gis' gis, gis'
	gis, gis' gis, gis' gis, gis' gis, gis' } >> |
	<< { <fis' dis>2 <e cis> } \\ { gis,,16 gis' gis, gis' gis, gis' gis, gis'
	gis, gis' gis, gis' gis, gis' gis, gis' } >> |
	\grace { bis16-[ gis'-] } gis,, gis' gis, gis' gis, gis' gis, gis'
	gis, gis' gis, gis' gis, gis' gis, gis' |
	gis, gis' gis, gis' gis, gis' gis, gis' gis, gis' gis, gis' gis, gis' gis, gis' |  %93
	
	%end of page
	
	gis, gis' gis, gis' gis, gis' gis, gis' gis, gis' gis, gis' gis, gis' gis, gis' |
	gis, gis' gis, gis' gis, gis' gis, gis' gis, gis' gis, gis' gis, gis' gis, gis' |
	gis, gis' gis, gis' gis, gis' gis, gis' gis, gis' gis, gis' gis, gis' gis, gis' |
	gis, gis' gis, gis' gis, gis' gis, gis' gis, gis' gis, gis' gis, gis' gis, gis' |  %97
	gis, gis' gis, gis' gis, gis' gis, gis' gis, gis' gis, gis' gis, gis' gis, gis' |
	gis, gis' gis, gis' gis, gis' gis, gis' gis, gis' gis, gis' gis, gis' gis, gis' |
	gis, gis' gis, gis' gis, gis' gis, gis' a,_4 a' a, a' a, a' a, a' |
	<fis fis,_5>1 |								%101
	<gis gis,-"4-5"> |
	\slurNeutral
	\stemUp
	cis,8_3-. gis'_1-. cis,_5-. gis'_2-. cis,-. gis'-. cis,-. gis'-. |
	cis,-. gis'-. cis,-. gis'-.
	cis,-. gis'-. <cis cis,>-. gis-. |
	bis,-. gis'-. bis,-. gis'-. bis,-. gis'-. bis,-. gis'-. |		%105
	bis,-. gis'-. bis,-. gis'-.
	bis,-. gis'-. <bis bis,>-. gis-. |
	b,!-. gis'-. b,-. gis'-. b,-. gis'-. b,-. gis'-. |
	b,-. gis'-. b,-. gis'-. b,-. gis'-. <b b,>-. gis-. |
	a,-. a'-. a,-. a'-. a,-. a'-. a,-. a'-. |	%109
	a,-. a'-. a,-. a'-. a,-. a'-. a,-. a'-. |
	<gis gis,>-. << { bis'8-. bis cis dis e fis dis } \\ { gis,4. ~ gis2 ~ } >> |
	<< { fis'8 e a gis fis e dis cis } \\ { gis1 } >> |
	<< { bis8 bis-. bis cis dis e fis dis } \\ { gis,1 ~ } >> |		%113
	<< { fis'8 e a gis fis e dis cis } \\ { gis1 } >> |
	<bis gis>8-. <cis gis>-. <bis gis>-. <cis gis>-.
	<bis gis>-. <cis gis>-. <bis gis>-. <cis gis>-. |
	<bis gis>4-. <gis, gis,>2.^\fermata |
	
	%end of page
	\stemNeutral
	\moveFingering #'(0 . -2) cis16-4 gis' e gis cis, gis' e gis cis, gis' e gis cis, gis' e gis |	%117
	\moveFingering #'(0 . -1) dis-4 gis fis gis dis gis fis gis dis gis fis gis dis gis fis gis |
	\moveFingering #'(0 . -1) e-3 gis e gis e gis e gis e gis e gis e gis e gis |
	\moveFingering #'(0 . -2) bis,-5 gis' bis, gis' bis, gis' bis, gis' bis, gis' bis, gis' bis, gis' bis, gis' |
	\moveFingering #'(0 . -2) cis,-4 gis' e gis cis, gis' e gis cis, gis' e gis cis, gis' e gis |	%121
	\moveFingering #'(0 . -1) dis-4 gis fis gis dis gis fis gis dis gis fis gis dis gis fis gis |
	\moveFingering #'(0 . -1) e-3 gis e gis e gis e gis e gis e gis e gis e gis |
	\moveFingering #'(0 . -2) bis,-5 gis' bis, gis' bis, gis' bis, gis' bis, gis' bis, gis' bis, gis' bis, gis' |
	\moveFingering #'(0 . -2) b,!-5 gis' \moveFingering #'(0 . -2) cis,-3 gis' b, gis' cis, gis' a,_5 fis' cis_3 fis a, fis' cis fis |	%125
	a,_5 fis' b,_4 fis' gis,_5 e' b_3 e gis, e' b e gis, e' b e |
	g,_5 e' a,_3 e' g, e' a, e' fis,_5 d' a_3 d fis, d' a d |
	fis,_5 dis'! gis,_4 dis' e,_5 cis' gis_3 cis e, cis' gis cis e, cis' gis cis |
	<fis d a fis>2 ~ <fis d a fis>4 r |					%129
	<d' a fis>_4 r <d a fis> r |
	<d a fis> <d a fis> <d a fis> <d a fis> |
	gis,16 e' cis e gis, e' cis e gis, fis' bis, fis' gis, fis' bis, fis' |
	<e cis a>4_4-. \stemDown <fis,, d a fis> ~ <fis d a fis> \stemNeutral r |	%133
	
	%end of page
	
	r <d' a fis>_4-. r <d a fis>-. |
	r8 <d a fis> r <d a fis> r <d a fis> r <d a fis> |
	fis,16_4 d' a d fis, d' a d fisis,_5	 e' ais, e' fisis, e' ais, e' |
	gis,_4 e' cis e gis, e' cis e gis,, gis' fisis gis fisis gis fisis gis |	%137
	cis,8 cis'_4-.-[ cis-. cis-.-] cis-. cis-. dis_3-. e_2-. |
	<fis gis,> <gis fis>-\markup { \override #'(baseline-skip . 1.4) \finger \column { "1" "2" } }-[ <gis fis> <gis fis>-] <gis fis> <gis fis> <gis e>_3 <gis dis>_4 |
	<cis, cis,> cis-[ cis cis-] cis cis dis e |
	<fis gis,> <gis fis>-[ <gis fis> <gis fis>-] <gis fis> <gis fis> <gis e> <gis dis> |	%141
	<cis, cis,>-. <e cis>-\markup { \override #'(baseline-skip . 1.4) \finger \column { "2" "4" } }-.-[ <e cis>-( <gis e>-\markup { \override #'(baseline-skip . 1.4) \finger \column { "1" "3" } }-)-] fis,-. <fis' cis>-\markup { \override #'(baseline-skip . 1.4) \finger \column { "2" "4" } }-.-[ <fis cis>-( <a fis>-\markup { \override #'(baseline-skip . 1.4) \finger \column { "1" "3" } }-)-] |
	gis,-. <e' cis>-.-[ <e cis>-( <gis e>-)-] gis,-. <dis' bis>-\markup { \override #'(baseline-skip . 1.4) \finger \column { "2" "4" } }-.-[ <dis bis>-( <gis dis>-\markup { \override #'(baseline-skip . 1.4) \finger \column { "1" "3" } }-)-] |
	<cis, cis,> <gis' cis,>-\markup { \override #'(baseline-skip . 1.4) \finger \column { "1" "5" } }-[ <gis cis,> <gis cis,>-] <gis cis,> <gis cis,> <gis dis>_4 <gis e>_3 |
	<gis-\tweak #'extra-offset #'(-2 . -2)-1 fis-\tweak #'extra-offset #'(-1.4 . -2)-2 gis,-5> <fis' gis,>-\markup { \override #'(baseline-skip . 1.4) \finger \column { "1" "5" } }-[ <fis gis,> <fis gis,>-]
	<fis gis,> <fis gis,> <e gis,>-\markup { \override #'(baseline-skip . 1.4) \finger \column { "1" "5" } } <dis gis,>-\markup { \override #'(baseline-skip . 1.4) \finger \column { "2" "5" } } |						%145
	<cis, cis,> <gis' cis,>-[ <gis cis,> <gis cis,>-] <gis cis,> <gis cis,> <gis dis> <gis e> |
	<gis fis gis,> <fis' gis,>-[ <fis gis,> <fis gis,>-] <fis gis,> <fis gis,> <e gis,> <dis gis,> |
	<cis cis,> \clef treble <e cis>-.-[ <e cis>-( <gis e>-)-]
	\clef bass fis,-. \clef treble <fis' cis>-.-[ <fis cis>-( <a fis>-)-] \clef bass |
	gis,-. \clef treble <e' cis>-.-[ <e cis>-( <gis e>-)-]
	\clef bass fis,-. \clef treble <dis' bis>-.-[ <dis bis>-( <gis dis>-)-] \clef bass |	%149
	e,-. <cis' gis>-\markup { \override #'(baseline-skip . 1.4) \finger \column { "2" "4" } }-.-[ <cis gis>-( <e cis>-\markup { \override #'(baseline-skip . 1.4) \finger \column { "1" "3" } }-)-] fis,,-. <a' fis>-\markup { \override #'(baseline-skip . 1.4) \finger \column { "2" "4" } }-.-[ \moveSlur #'(0 . 0.4) <a fis> ( <d a>-\markup { \override #'(baseline-skip . 1.4) \finger \column { "1" "3" } }-)-] |
	gis,,-. <gis' e>-\markup { \override #'(baseline-skip . 1.4) \finger \column { "2" "4" } }-.-[ <gis e>-( <cis gis>-\markup { \override #'(baseline-skip . 1.4) \finger \column { "1" "3" } }-)-] gis,-. <fis' dis!>-\markup { \override #'(baseline-skip . 1.4) \finger \column { "2" "4" } }-.-[ \moveSlur #'(0 . 0.25) <fis dis> ( <bis fis>-\markup { \override #'(baseline-skip . 1.4) \finger \column { "1" "3" } }-)-] |
	cis,,16 cis' gis cis cis, cis' gis cis cis, cis' gis cis cis, cis' gis cis |
	
	%end of page
	
	cis, dis' gis, dis' cis, dis' gis, dis' cis, dis' gis, dis' cis, dis' gis, dis' |	%153
	cis, cis' gis cis cis, cis' gis cis cis, cis' gis cis cis, cis' gis cis |
	cis, dis' gis, dis' cis, dis' gis, dis' cis, dis' gis, dis' cis, dis' gis, dis' |
	cis, cis' gis cis cis, cis' gis cis cis, dis' gis, dis' cis, dis' gis, dis' |
	cis, cis' gis cis cis, cis' gis cis cis, dis' gis, dis' cis, dis' gis, dis' |		%157
	cis, cis' gis cis cis, cis' gis cis cis, cis' gis cis cis, cis' gis cis |
	b, b' cis, b' b, b' cis, b' b, b' cis, b' b, b' cis, b' |
	<a a,>8-. fis-. a,-. fis'-. a,-. fis'-. a,-. fis'-. |
	a,-. fis'-. a,-. fis'-. a,-. fis'-. <a a,>-. fis-. |		%161
	gis,-. e'-. gis,-. e'-. gis,-. e'-. gis,-. e'-. |
	gis,-. e'-. gis,-. e'-. gis,-. e'-. <gis gis,>-. e-. |
	
	fisis,4 ~ fisis8 \stemDown
	
	\override Beam #'positions = #'(-11 . -10)
	fisis32 ais \nudge #0.3 cis \nudge #0.1 e 
	\revert Beam #'positions
	
	\stemUp <fisis e cis ais fisis>4 ~ <fisis e cis ais fisis>8 \stemDown
	
	\override Beam #'positions = #'(-8 . -7)
	fisis32 ais cis \nudge #0.1 e \nudge #0.3 |
	\revert Beam #'positions
	
	\stemUp <fisis e cis ais fisis>4 \stemNeutral <e' cis ais fisis>2.^\fermata |	%165
	\stemUp fis,,,!4 ~ fis8 \stemDown
	
	\override Beam #'positions = #'(-11 . -10)
	fis32 a bis dis \stemUp 
	\revert Beam #'positions
	
	<fis dis bis a fis>4 ~ <fis dis bis a fis>8 \stemDown 
	
	\override Beam #'positions = #'(-8 . -7)
	fis32 a bis dis
	\revert Beam #'positions |
	
	%end of page
	
	\stemUp <fis dis bis a fis>4 \stemNeutral \moveDynamics #'(0.2 .  0) \once \override Script #'extra-offset = #'(0.7 . 0.5) <dis' bis a fis>2.^\fermata_\sf |
	cis,4-. gis'2-1-( e8.-2 cis16-4-) |
	\tieDown cis4-3-( bis-4-) ~ bis8 \once \override Slur #'control-points = #'((1 . 0) (4 . 4) (12 . 4) (15.5 . 0)) bis-( gis'8. bis,16-) \tieNeutral |				%169
	dis4-2-( cis-3-) ~ cis8 \once \override Slur #'control-points = #'((1 . 0.25) (5 . 4.5) (12 . 4.5) (16 . 0.25)) cis-4-( gis'8. cis,16-) |
	e4-2-( dis-3-) ~ dis8 \once \override Slur #'control-points = #'((1 . 0.75) (5 . 5) (12 . 5) (15.5 . 0.75)) dis-4-( gis8. dis16-) |
	\moveFingering #'(0 . -1) e-3 gis e gis e gis e gis e gis e gis e gis e gis |
	fis-2 gis fis gis fis gis fis gis fis gis fis gis fis gis fis gis |			%173
	\moveFingering #'(0 . -1) e-3 gis e gis e gis e gis e gis e gis e gis e gis |
	\moveFingering #'(0 . -2) bis,-5 gis' bis, gis' bis, gis' bis, gis' bis, gis' bis, gis' bis, gis' bis, gis' |
	\moveFingering #'(0 . -2) cis,-4 gis' cis, gis' cis, gis' cis, gis' b,!_5 cis b_2 cis b cis b cis |
	a_3 cis a cis a cis a cis eis, cis' eis,_5 cis' eis, cis' eis, cis' |			%177
	
	\tieDown <fis, cis fis,>1 ~ |
	<fis cis fis,> |
	<fis d fis,> ~ |
	<fis d fis,> |										%181
	<fisis cis fisis,> ~ |
	
	%end of page
	
	<fisis cis fisis,> |
	<gis cis, gis> ~ |
	<gis cis, gis> |									%185
	s1 |
	R |
	<fis'' bis, gis> |
	<fisis,, fisis,-\tweak #'extra-offset #'(0 . -4)-5> |									%189
	<gis gis,-"4-5"> |
	\stemDown cis,16_3 cis'_1 gis_2 cis_1 \stemNeutral cis,_5 cis' gis cis cis, cis' gis cis cis, cis' gis cis |
	cis, dis' gis, dis' cis, dis' gis, dis' cis, dis' gis, dis' cis, dis' gis, dis' |
	cis, cis' gis cis cis, cis' gis cis cis, cis' gis cis cis, cis' gis cis |		%193
	cis, dis' gis, dis' cis, dis' gis, dis' cis, dis' gis, dis' cis, dis' gis, dis' |
	cis, cis' gis cis cis, cis' gis cis cis, dis' gis, dis' cis, dis' gis, dis' |
	cis, cis' gis cis cis, cis' gis cis cis, dis' gis, dis' cis, dis' gis, dis' |
	
	\slurDown
	<cis gis cis,> e-5-(-[ gis cis-] e gis,-5 cis e \clef treble gis cis,-5 e gis cis e,-5 gis cis-) |	%197
	
	\override Fingering #'avoid-slur = #'none
	
	\moveFingering #'(0 . 3) e_1-( cis gis e \moveFingering #'(0 . 2) cis'_1 gis e cis \clef bass gis'-1 e cis gis e'-1 cis gis e-) |
	\slurDown cis'-1-( gis e cis \moveFingering #'(0 . 3) gis'_1 e cis gis \stemDown \moveFingering #'(-1.3 . -2) e'-1 cis gis e \moveFingering #'(-1.4 . -3) cis'-1 gis e gis-) \slurNeutral |
	cis,4 cis\rest \stemNeutral <cis' gis e cis>-. r |
	<cis gis e cis>-. r r2 \bar "|." |							%201
}

bottomsecondary =  \relative c {
	
	\override Staff.NoteCollision   #'merge-differently-dotted = ##t
	
	s1*163
	
	s4
	
	<< { \tieDown \stemUp s8 s32*3 \moveTie #'(0 . 0) \tieHeadGap #0.7 e,32 ~ \blank e4 s8 s32*3 \unblank \tieHeadGap #2 \moveTie #'(-1.25 . 0) e'32 ~ \blank e4 s2. } \\
	{ \tieDown \stemUp s8 s32*2 \moveTie #'(-0.4 . 0) \tieHeadGap #0.7 cis,16 ~ \blank cis4 s8 s32*2 \unblank \tieHeadGap #2.1 \moveTie #'(-1.75 . 0.2) cis'16 ~ \blank cis4 s2. } \\
	{ \tieDown \stemUp s8 s32 \slurDown \moveTie #'(-0.4 . 0) \tieHeadGap #0.7 ais,16. ~ \blank ais4 s8 s32 \unblank \tieHeadGap #2 \moveTie #'(-1.4 . 0) ais'16. ~ \blank ais4 s2. } \\
	{ \tieDown \stemUp s8 fisis,8 ~ \blank fisis4 s8 \unblank fisis'8 ~ \blank fisis4 s2. } >> 
	
	s4
	
	<< { \tieDown \stemUp s8 s32*3 \unblank dis32 ~ \blank dis4 s8 s32*3 \unblank \tieHeadGap #1.5 \moveTie #'(-0.85 . 0.3) dis'32 ~ } \\
	{ \tieDown \stemUp s8 s32*2 \unblank \moveTie #'(-0.1 . 0) \tieHeadGap #1 bis,16 ~ \blank bis4 s8 s32*2 \unblank \tieHeadGap #0.75 \moveTie #'(-0.6 . 0.5) bis'16 ~ } \\
	{ \tieDown \stemUp s8 s32 \unblank \moveTie #'(-0.15 . 0) \tieHeadGap #0.8 a,16. ~ \blank a4 s8 s32 \unblank \moveTie #'(-0.2 . 0)  a'16. ~ } \\
	{ \tieDown \stemUp s8 \unblank fis,8 ~ \blank fis4 s8 \unblank fis'8 ~ } >>
	
	<< { \tieDown \blank dis'4 s2. } \\
	{ \tieDown \blank bis4 s2. } \\
	{ \tieDown \blank a4 s2. } \\
	{ \tieDown \blank fis4 s2. } >>
	
	\stemNeutral
}

lineBreaks = 
{
	s1*2 | \break
	s1*2 | \break
	s1*2 | \break
	s1*3 | \break %end of page 1
	s1*3 | \break
	s1*3 | \break
	s1*2 | \break
	s1*2 | \break % bar 19
	s1*2 | \break %end of page 2
	s1*2 | \break
	s1*2 | \break
	s1*2 | \break
	s1*2 | \break % bar 29
	s1 s1 | \break %end of page 3
	s1*3 | \break
	s1*3 | \break
	s1*3 | \break
	s1*3 | \break % bar 39
	s1*3 | \break %end of page 4
	s1*3 | \break
	s1*3 | \break
	s1*3 | \break
	s1*3 | \break
	s1*3 | \break %end of page 5
	s1*2 | \break % bar 59
	s1*2 | \break
	s1*2 | \break
	s1*2 | \break %1st time bar
	s1*2 | \break
	s1*2 | \break
	s1*2 | \break
	s1*2 | \break
	s1*2 | \break
	s1*2 | \pageBreak 
	s1 s1 | \break
	s1*2 | \break
	s1*2 | \break
	s1*3 | \break
	s1*3 | \break
	s1*3 | \break % bar 96
	s1*2 | \break
	s1*4 | \break
	s1*2 | \break
	s1*2 | \break
	s1*2 | \break
	s1*2 | \break
	s1*3 | \break
	s1*3 | \break
	s1*2 | \pageBreak
	s1*2 | \break
	s1*2 | \break
	s1*2 | \break
	s1*2 | \break
	s1*3 | \pageBreak
	s1*2 | \break
	s1*3 | \break
	s1*3 | \break
	s1*3 | \break
	s1*3 | \break
	s1*3 | \break
	s1*2 | \break
	s1*3 | \break
	s1^1 | s^2 | \break %\break
	s1^3 | s^4 | \pageBreak %\pageBreak
	s1*2 | \break \noPageBreak
	s1*3 | \break
	s1*3 | \break
	s1*2 | \break
	s1*2 | \break % bar 167
	s1*2 | \break
	s1*2 | \break
	s1*2 | \break
	s1*2 | \break
	s1*2 | \pageBreak
	s1*2 | \break
	s1*2 | \break
	s1*2 | \break
	s1*2 | \break
	s1*2 | \pageBreak
	s1*3 | \break
	s1*2 | \break
	s1*2 | \break
	s1*2 | \break
	s1*2 | \break
	s1*3 | \break
}

sustain = 
{
	\override Staff.SustainPedalLineSpanner #'staff-padding = #5
	
	s1 | s2. s8-\sustainDown \pedalShift #'(3 . 0) s-\sustainUp |
	s1 | s2. s8-\sustainDown \pedalShift #'(3 . 0) s-\sustainUp |
	s1 | s2. s8-\sustainDown \pedalShift #'(3 . 0) s-\sustainUp |
	s2. s8-\sustainDown \pedalShift #'(2 . 0) s-\sustainUp | s2. s8-\sustainDown \pedalShift #'(1 . 0) s-\sustainUp |
	s1 | s | s | s | s | s | s |
	
	s2. s8-\sustainDown \pedalShift #'(4 . 0) s-\sustainUp | s1 | 
	s2. s8-\sustainDown \pedalShift #'(4 . 0) s-\sustainUp | s1 | % bar 19
	s s s s s s s s s s s s s s s s s s s s s s s s s s s s s s s s s s s s s s s s s s s s s s s
	
	s2. s8-\sustainDown \pedalShift #'(3 . 0) s-\sustainUp | s1 |
	s2. s8-\sustainDown \pedalShift #'(3 . 0) s-\sustainUp | s2. s8-\sustainDown \pedalShift #'(4 . 0) s-\sustainUp |
	s2. s8-\sustainDown \pedalShift #'(2.6 . -1) s-\sustainUp | % bar 71
	s1 s s s s s s s s s s s s s s s s s s s s s s s s s s s s s s s
	s2. s8-\sustainDown \pedalShift #'(3 . 0) s-\sustainUp | s1 |
	s2. s8-\sustainDown \pedalShift #'(3 . 0) s-\sustainUp | s1 |
	s2. s8-\sustainDown \pedalShift #'(3 . 0) s-\sustainUp | s2. s8-\sustainDown \pedalShift #'(4 . 0) s-\sustainUp |
	s2. s8-\sustainDown \pedalShift #'(4 . 0) s-\sustainUp | % bar 110
	s1*12
	s1*15
	s1*16
	s1*5
	
	s2. s8-\sustainDown \pedalShift #'(3 . 0) s-\sustainUp | % bar 159
	s1 |
	s2. s8-\sustainDown \pedalShift #'(3 . 0) s-\sustainUp |
	s1 | 
	s2. s8-\sustainDown \pedalShift #'(3 . 0) s-\sustainUp |
	
	s1\sustainDown
	s4 \pedalShift #'(5.9 . 0) s2.\sustainUp |
	s1\sustainDown | 
	s4 \pedalShift #'(8 . 0) s2.\sustainUp |
	s1*8
	s1*10
	s1*16
	
}

\book
{
\paper
{
ragged-last-bottom = ##f
%annotate-spacing = ##t
head-separation = 0.5\mm
top-margin = 4\mm
page-top-space = 6.8\mm
bottom-margin = 8\mm
first-page-number = 8
print-first-page-number = ##t
}
\score {
	\context PianoStaff
	<<
		\context Staff = "up"
		<<
			\lineBreaks
			\topmain
			\topsecondary
		>>
		\context Staff = "down"
		<<
			\bottom
			\bottomsecondary
			\sustain
		>>
	>>
	
	\layout
	{
		indent = 0\mm
		ragged-last = ##f
		ragged-bottom = ##f
		ragged-last-bottom = ##f
		between-system-padding = #0.1
		between-system-space = #0.1
	}
}
}

\score {
	\context PianoStaff
	<<
		\context Staff = "up"
		<<
			\set Staff.midiInstrument = #"acoustic grand"
			\topmain
			\topsecondary
		>>
		\context Staff = "down"
		<<
			\set Staff.midiInstrument = #"acoustic grand"
			\bottom
			\bottomsecondary
		>>
	>>
	
	\midi
	{
		%\tempo 4 = 160
		\context
		{
			\Voice
			\remove Dynamic_performer
		}
	}
}