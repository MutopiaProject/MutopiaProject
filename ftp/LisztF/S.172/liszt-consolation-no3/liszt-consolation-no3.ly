\version "2.18.0"

\header {

  title = "Consolation"
  composer = "F. Liszt"
  opus = "S.172 No.3"

  mutopiatitle = "Consolation, S.172 No.3"
  mutopiacomposer = "LisztF"
  mutopiapoet = ""
  mutopiaopus = "S.172"
  mutopiainstrument = "Piano"
  date = ""
  source = "Breitkopf & Härtel, 1850"
  style = "Romantic"
  maintainer = "Ryan Prince"
  maintainerEmail = "rprincerp@gmail.com"
  maintainerWeb = ""
  moreInfo = "This file was created from a public domain scan of the work's first edition which is located in the Petrucci Music Library, http://imslp.org/."

  license = "Creative Commons Attribution 3.0"
  footer = "Mutopia-2019/06/23-1647"
  copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white "ǀ" \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {"ǀ" "ǀ"}}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " ©" 2019 ""by " \maintainer " — " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by/3.0" "Creative Commons Attribution 3.0 (Unported) License" " — free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white "ǀ" }}}
  tagline = ##f
}

\paper {
  system-count = #20		% this just fits the score into 4 pages, for both A4 and letter size
  }

\score {

\new PianoStaff <<

  \set PianoStaff.instrumentName = "Piano"
  \set PianoStaff.connectArpeggios = ##t
  \new Staff = "up" \relative c'' << { \time 4/4 \key des \major \clef treble \set subdivideBeams = ##t
    \override MultiMeasureRest.staff-position = #2

    \stemDown R1 _\markup { \small \dynamic ppp \italic "sempre legatissimo" }		        | % 1
    R1  											| % 2
    b2\rest b4\rest \once \override TextScript.extra-offset = #'(-2.0 . 0.0)f'
		^\markup { \small \italic "Cantando" }						| % 3
    f2\( bes,8 c des f\)									| % 4
    f2~\( f8 es f es\)										| % 5
    des2.~\( des16 f des bes'									| % 6
    aes4\) b,\rest b\rest f'									| % 7
    f2\( bes,8 c des f\)									| % 8
    f2~\( f8 e aes g\)										| % 9
    f2.~\( f16 aes f des'									| % 10
    c4\) b,\rest b\rest aes'									| % 11
    aes2\( d,8 es f aes\)									| % 12
    aes2~\(^> aes8 bes,-. c-. d-.								| % 13
    es-._\< f-. ges-. aes-.\) a\! c4^^ bes8							| % 14
    bes2~\(^> bes8*4/6[ aes des c e, f]								| % 15
    bes8*2/3[ aes c,] des[ ges f] g,-.[ aes-. bes-.] c-.[ des-. f-.]				| % 16
    f2~ f8 es f es										| % 17
    des4\) b\rest b2\rest									| % 18
    b\rest b4\rest <f' f'>									| % 19
    <f f'>2\arpeggio\( <bes, bes'>8 <c c'> <des des'> <f f'>\)					| % 20
    <f~ f'~>2\arpeggio\( <f f'>8 <es es'> <f f'> <es es'>\)					| % 21
    <des~ des'>2\( des16[ f des bes' aes f' des bes']						| % 22
    aes4\) b,,\rest b\rest <f' f'>								| % 23
    <f f'>2\( <bes, bes'>8 <c c'> <des des'> <f f'>						| % 24
    <f~ f'~>2 <f f'>8 <e e'> <aes aes'> <g g'>\)						| % 25
    <f~ f'~>2\( <f f'>16[ aes f des' c aes' f des']						| % 26
    c4\) b,,\rest b\rest c									| % 27
    c2\( g8[ aes bes des]\)									| % 28
    c4 b\rest b\rest c'										| % 29
    \stemUp c2\arpeggio\( <e, g>8[ <f aes> <g bes> <bes des>]\)					| % 30
    \stemDown <a~ c~>2\( <a c>8 <bes d> <f a> <bes d>						| % 31
    <a c> <bes d> <f a> <bes d> <a c> <bes d> <f a> <bes d>\)					| % 32
    <a~ c~>2\( <a c>8_\< <b^2 d^4> <c^2 e^4> <d f>\!\)						| % 33
    <e g>4-- <d f>-- <c e>-- <b d>--								| % 34
    <a c> b,\rest b\rest e									| % 35
    e2\( b8 c d f										| % 36
    e4\) b\rest b\rest \stemUp e'								| % 37
    e2\( \stemDown <gis,! b>8 <a c> <b d> <d f>\)						| % 38
    <cis~ e~>2\( <cis e>8 <d fis> <a cis> <d fis>						| % 39
    <cis e> <d fis> <a cis> <d fis> <cis e> <d fis> <a cis> <d fis>\)				| % 40
    <des! f!>4_\< <ges,! es'! ges!> <aes! f' aes!> <bes ges' bes>\!				| % 41
    <bes~ ges'~ bes~>2-.-> <bes ges' bes>8 ^\markup { \small \italic "poco rit." } <aes f' aes>
		<ges es' ges> <es aes es'>							| % 42
    <f des' f>2 b,\rest										| % 43
    \stemUp b\rest b4\rest f									| % 44
    f2_\( bes,8 c des f\)									| % 45
    f2_~_\( f8 es f es										| % 46
    des4\) b'4\rest b2\rest									| % 47
    \stemDown b2\rest b4\rest <f' f'>4								| % 48
    <f f'>2\(\arpeggio <bes, bes'>8 <c c'> <des des'> <f f'>					| % 49
    <f~ f'~>2 <f f'>8 <es es'> <f f'> <es es'>\)						| % 50
    <des~ des'~>2\( <des des'>16[ f des bes' aes f' des bes']					| % 51
    aes4\) b,,\rest b\rest b8*4/3\rest \stemUp des,8*2/3^-					| % 52
    des2_~^\( des16[ bes' ges es' des bes' ges es']						| % 53
    des4\) b,\rest b\rest b8\rest \stemDown des8						| % 54
    \stemUp des2.^~^\( des16 fes des ges							| % 55
    e16*1/2 a e b' a cis a dis \ottava #1 \set Staff.ottavation = #"8" cis e cis f e aes e bes'
		aes cis aes dis aes cis aes dis aes cis aes dis aes cis aes dis\)		| % 56
    <des f!>4\( s2.										| % 57
    \stemDown <f, aes>8 <ges bes> <des f> <ges bes> <f aes> <ges bes> <des f> <ges bes>		| % 58
    <f aes>[ <des f> \ottava #0 <bes des> <ges bes> <f aes> <des f> <bes des> <ges bes>]	| % 59
    \stemUp <f aes>4 <des f> <bes des> <ges_~ bes_~>						| % 60
    <ges bes>2 <f aes>4\) b'\rest							  \bar "|." % 61

  } \\ \relative c'' {

    \once \override TextScript.extra-offset = #'(-3.5 . 2.0) s1 ^\markup
		{ \bold "Lento placido." } 							| % 1
    s												| % 2
    s												| % 3
    s												| % 4
    s												| % 5
    s												| % 6
    s												| % 7
    s												| % 8
    s												| % 9
    s												| % 10
    s												| % 11
    s												| % 12
    s												| % 13
    s												| % 14
    s												| % 15
    s												| % 16
    s												| % 17
    s												| % 18
    s												| % 19
    s												| % 20
    s												| % 21
    s												| % 22
    s												| % 23
    s												| % 24
    s												| % 25
    s												| % 26
    s												| % 27
    s ^\markup { \small \dynamic mf \italic "expressivo" }					| % 28
    s1												| % 29
    <bes e>8\arpeggio s8 s2.									| % 30
    \once \override TextScript.extra-offset = #'(-3.5 . 0.0)
		s1 ^\markup { \small \italic "dolcissimo" }					| % 31
    s												| % 32
    s												| % 33
    s												| % 34
    s2. s4 ^\markup { \small \dynamic mf \italic "expressivo" }					| % 35
    s1												| % 36
    s												| % 37
    <d gis>8 s8 s2.										| % 38
    s1 _\markup { \small \italic "dolcissimo"  }						| % 39
    s												| % 40
    s												| % 41
    s												| % 42
    s												| % 43
    s												| % 44
    s												| % 45
    s												| % 46
    s												| % 47
    s												| % 48
    s												| % 49
    s												| % 50
    s												| % 51
    s												| % 52
    s												| % 53
    s												| % 54
    <fes, beses>2.\arpeggio _> s8 beses16 s16							| % 55
    \override TextSpanner.bound-details.left.text = \markup { \italic "smorzando" }
		\textSpannerDown s8*1/2\startTextSpan cis s e s a s cis s e s e s e
		s e\stopTextSpan								| % 56
    <f!^~ aes^~>2_\ppp <f aes>8 <ges bes> <des f> <ges bes>					| % 57
    s1												| % 58
    \override TextSpanner.bound-details.left.text = \markup
		{ \italic "rit.           perdendosi" }
    s8 s s s\startTextSpan s2									| % 59
    s1												| % 60
    s2 s2\stopTextSpan										| % 61

  } >>

  \new Staff = "down" \relative c << { \time 4/4 \key des \major \clef bass
    \override MultiMeasureRest.staff-position = #2

    \tuplet 3/2 4 { r8 f[_\( des' aes f' des aes f des' aes f' des]\) }				| % 1
    r8*8/12 f,[_\( des' aes f' des aes f des' aes f' des]\)					| % 2
    r f,[_\( des' aes f' des aes f des' aes f' des]\)						| % 3
    r g,[_\( des' bes f' des bes g des' bes f' des]\)						| % 4
    r ges,![_\( c aes f' c aes ges c aes es' c]\)						| % 5
    r f,[_\( des' aes f' des aes f des' aes f' des]\)						| % 6
    r f,[_\( des' aes f' des aes f des' aes f' des]\)						| % 7
    r g,[_\( des' bes f' des bes g des' bes f' des]\)						| % 8
    r g,[_\( des' bes f' des]\) r g,[_\( des' bes e c]\)					| % 9
    r aes[_\( f' c aes' f c aes f' c aes' f]\)							| % 10
    r aes,[_\( f' c aes' f c aes f' c aes' f]\)							| % 11
    r aes,[_\( d ces aes' d, ces aes d ces aes' d,]\)						| % 12
    r ges,[_\( es' bes ges' es bes ges es' bes ges' es]\)					| % 13
    R1   											| % 14
    r8*8/12 f,[_\( des' aes f' des aes f des' aes f' des]\)					| % 15
    R1  											| % 16
    r8*8/12 g,[_\( des' bes f' des]\) r ges,[_\( c aes es' c]\)					| % 17
    r f,[_\( des' aes f' des aes f des' aes f' des]\)						| % 18
    r f,[_\( des' aes f' des aes f des' aes f' des]\)						| % 19
    r g,[_\( des' bes f' des bes g des' bes f' des]\)						| % 20
    r ges,![_\( c aes f' c aes ges c aes es' c]\)						| % 21
    r f,[_\( des' aes f' des aes f des' aes f' des]\)						| % 22
    r f,[_\( des' aes f' des aes f des' aes f' des]\)						| % 23
    r g,[_\( des' bes f' des bes g des' bes f' des]\)						| % 24
    r g,[_\( des' bes f' des]\) r g,![_\( des' bes e c]\)					| % 25
    r aes[_\( f' c aes' f c aes f' c aes' f]\)							| % 26
    r aes,[_\( f' c aes' f c aes f' c aes' f]\)							| % 27
    r bes,[_\( e c g' e c bes e c g' e]\)							| % 28
    r aes,[_\( f' c aes' f c aes f' c aes' f]\)							| % 29
    r bes,[_\( e c g' e c bes e c g' e]\)							| % 30
    r a,[_\( f' c a' f c a f' c a' f]\)								| % 31
    r a,[_\( f' c a' f]\) r a,[_\( f' c a' f]\)							| % 32
    r a,[_\( e' c a' e c a e' c a' e]\)								| % 33
    r gis,[_\( e' b gis' e]\) d,2\rest								| % 34
    r8*8/12 \clef treble c'[_\( a' e c' a e c a' e c' a]\)					| % 35
    b\rest d,[_\( gis e b' gis e d gis e b' gis]\)						| % 36
    r c,[_\( a' e c' a e c a' e c' a]\) \clef bass						| % 37
    r \clef treble d,[_\( gis e b' gis e d gis e b' gis]\) \clef bass				| % 38
    r \clef treble cis,[_\( a' e cis' a e cis a' e cis' a]\) \clef bass				| % 39
    r \clef treble cis,[_\( a' e cis' a]\) \clef bass r \clef treble cis,[_\(
		a' e cis' a]\) \clef bass							| % 40
    r \clef treble des,![_\( aes' f des' aes f \clef bass des aes f des' aes]\)			| % 41
    r ges[_\( es' c aes' es c ges es' c aes' es]\)						| % 42
    r f,[_\( des' aes aes' des, aes f des' aes aes' des,]\)					| % 43
    r f,[_\( des' aes aes' des, aes f des' aes aes' des,]\)					| % 44
    r des,[_\( bes' g f' bes,]\) r2								| % 45
    r8*8/12 des,[_\( c' aes ges'! c,]\) r2							| % 46
    \stemDown r8*8/12 des,[^\( aes' \clef treble f' des bes' aes f' des bes' aes f		| % 47
    des bes aes f \clef bass des aes f des' aes f' des aes]\)					| % 48
    \stemUp r g[_\( des' bes f' des bes g des' bes f' des]\)					| % 49
    r ges,![_\( c aes f' c aes ges c aes es' c]\)						| % 50
    r f,[_\( des' ces aes' des, ces f, des' ces aes' des,]\)					| % 51
    \override Beam.positions = #'(7 . 7)
    d,\rest f[_\( des' ces aes' des, ces f, des' ces aes' \change Staff="up"
		\stemDown des,]\)								| % 52
    \revert Beam.positions
    \change Staff="down" \stemUp r des,[_\( bes' ges ges' bes, ges des bes' ges ges'
		bes,]\)										| % 53
    \change Staff="down" \stemUp r des,[_\( bes' ges ges' bes, ges des bes' ges ges'
		bes,]\)										| % 54
    d,\rest des[_\( beses' fes fes' beses, fes des beses' fes fes' beses,]\)			| % 55
    s1												| % 56
    r8*8/12 f[_\( des' aes f' des aes f des' aes f' des]\)					| % 57
    r f,[_\( des' aes f' des]\) r f,[_\( des' aes f' des]\)					| % 58
    s1												| % 59
    s												| % 60
    s												| % 61

  } \\ \relative c, {

    \stemDown des1 \sustainOn									| % 1
    des												| % 2
    des~											| % 3
    des~ \sustainOff \sustainOn									| % 4
    des~ \sustainOff \sustainOn									| % 5
    des~ \sustainOff \sustainOn									| % 6
    des												| % 7
    des~ \sustainOff \sustainOn									| % 8
    des2 c \sustainOff \sustainOn								| % 9
    f1~ \sustainOff \sustainOn									| % 10
    f												| % 11
    f \sustainOff \sustainOn									| % 12
    ges \sustainOff \sustainOn									| % 13
    s \sustainOff										| % 14
    aes												| % 15
    s												| % 16
    aes2 \sustainOn aes \sustainOff \sustainOn							| % 17
    des,1~ \sustainOff \sustainOn								| % 18
    des												| % 19
    des~ \sustainOff \sustainOn									| % 20
    des~ \sustainOff \sustainOn									| % 21
    des~ \sustainOff \sustainOn									| % 22
    des \sustainOff \sustainOn									| % 23
    des~ \sustainOff \sustainOn									| % 24
    des2 c2 \sustainOff \sustainOn								| % 25
    f1~ \sustainOff \sustainOn									| % 26
    f~												| % 27
    f~ \sustainOff \sustainOn									| % 28
    f \sustainOff \sustainOn									| % 29
    f \sustainOff \sustainOn									| % 30
    f \sustainOn										| % 31
    f2 \sustainOff \sustainOn f									| % 32
    e1 \sustainOff \sustainOn									| % 33
    e2 \sustainOff \sustainOn s									| % 34
    a1*1/8 \sustainOff \sustainOn s8 s2.							| % 35
    s1 \sustainOff \sustainOn									| % 36
    s \sustainOff \sustainOn									| % 37
    a1*1/8 \sustainOff \sustainOn s8 s2.							| % 38
    a1*1/8 \sustainOff \sustainOn s8 s2.							| % 39
    a2*1/4 s4. a!2*1/4 s4.									| % 40
    aes!1*1/8 \sustainOff \sustainOn s8 s2.							| % 41
    aes1 \sustainOff \sustainOn									| % 42
    des, \sustainOff \sustainOn									| % 43
    des												| % 44
    s2 \sustainOff \sustainOn s2 \sustainOff							| % 45
    s1 \sustainOn										| % 46
    s \sustainOff \sustainOn									| % 47
    s												| % 48
    des \sustainOff \sustainOn									| % 49
    des \sustainOff \sustainOn									| % 50
    des \sustainOff \sustainOn									| % 51
    s												| % 52
    des \sustainOff \sustainOn									| % 53
    s												| % 54
    des \sustainOff \sustainOn									| % 55
    s												| % 56
    des \sustainOff \sustainOn									| % 57
    s												| % 58
    s												| % 59
    s												| % 60
    s4 s s s \sustainOff									| % 61

  } >>
>>

\layout {}
\midi {}

}
