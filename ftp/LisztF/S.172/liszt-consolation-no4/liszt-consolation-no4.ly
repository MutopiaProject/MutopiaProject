\version "2.12.2"

\header {

  title = "Consolation"
  composer = "F. Liszt"
  opus = "S.172 No.4"

  mutopiatitle = "Consolation, S.172 No.4"
  mutopiacomposer = "LisztF"
  mutopiapoet = ""
  mutopiaopus = "S.172"
  mutopiainstrument = "Piano"
  date = ""
  source = "Breitkopf & Härtel, 1850"
  style = "Romantic"
  copyright = "Creative Commons Attribution 3.0"
  maintainer = "Ryan Prince"
  maintainerEmail = "rprincerp@gmail.com"
  maintainerWeb = ""
  moreInfo = "This file was created from a public domain scan of the work's first edition which is located in the Petrucci Music Library, http://imslp.org/."

 footer = "Mutopia-2009/06/29-1650"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2009. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/3.0" http://creativecommons.org/licenses/by/3.0 } } } }
}

\score {

\new PianoStaff <<
  \set PianoStaff.instrumentName = "Piano"
  \set PianoStaff.connectArpeggios = ##t
  \new Staff = "up" \relative c' << { \time 4/4 \key des \major \clef treble
  \set Staff.extraNatural = ##f

    \partial 2 \stemUp \once \override TextScript #'extra-offset = #'(-4.0 . 0.0) <aes des f>4
		^\( _\markup { \small \whiteout \italic "Cantabile con divozione." }
                <bes des f>									|
    aes'8 ges f4 es^\< bes'8.\arpeggio aes16\!							| % 1
    aes2.\arpeggio f4\)										| % 2
    b8\rest des4^\( c8^~ c bes4 aes8_~								| % 3
    aes8 ges4 f8 f2\)										| % 4
    es4.^(^\( e8) f4 f										| % 5
    aes8 ges f4 es^\< bes'8.\arpeggio aes16\!							| % 6
    aes2.\arpeggio f4\)										| % 7
    b8\rest des4^\( c8^~ c8 bes4 ces8^~								| % 8
    ces bes4 a8 bes2\)										| % 9
    b1\rest											| % 10
    b\rest											| % 11
    b2\rest aes4^-^\( aes^-									| % 12
    beses4. aes8 aes fes' es des								| % 13
    des4.\arpeggio^(^\> c8)\!\) cis4^_ b^_							| % 14
    b8[^( a]) a[^( g]) g[^( fis!]) fis[^( eis])							| % 15
    \stemUp fis2 <a, d fis>^\( _\markup { \small \whiteout \italic
        "marcato ed espressivo il basso" }							| % 16
    <b d e> <b d g>										| % 17
    <g e'>\) <aes! des! f!>									| % 18
    <bes des es> < bes des ges>									| % 19
    <ges es'>^\fermata <f c' f>4^\( <f des' f> _\markup { \whiteout \small \italic
        "stringendo" }										| % 20
    \stemUp aes'8 ges f4_\< aes\)^\( aes							| % 21
    b8 a gis4\) b^\(\! b									| % 22
    d4. c8 c\) bes!4 a8										| % 23
    a ges4 f8 f2_~										| % 24
    f4 b\rest \crescTextCresc \clef bass \stemDown aes,2_\<^\( ^\markup
		{ \small \italic "slargando" }							| % 25
    \stemUp aes,\!^> \crescHairpin aes,^^							| % 26
    des\) d'4\rest \stemDown <f aes des>							| % 27
    <fes beses des> <fes beses des> <ges bes des> <ges bes es>					| % 28
    <f des' f>2 d4\rest <f aes des>								| % 29
    <fes beses des> <fes beses des> <ges bes des> <ges bes es>					| % 30
    <f des' f>2^\( <f des' f>_\<								| % 31
    \clef treble \stemUp <aes aes'>2.\arpeggio_\>^( <ges ges'>4\!)				| % 32
    <f des' f>2\) <f aes des f>									| % 33
    <f aes des f>1									  \bar "|." % 34

  } \\ \relative c' {
  \set Staff.extraNatural = ##f

    \once \override TextScript #'extra-offset = #'(-3.5 . 2.0) s2 ^\markup
		{ \bold "Quasi Adagio." } 							|
    \stemDown <bes des>4 <aes des> <ges bes> <ges c es>\arpeggio				| % 1
    <f des'>1\arpeggio										| % 2
    s8 <des' f>4_\> <des f>8 <des ges>4 <des f>\!						| % 3
    <bes es> <bes des> <bes des>2								| % 4
    c4. s8 <aes des>4 <bes des>									| % 5
    <bes des> <aes des> <ges bes> <ges c es>\arpeggio						| % 6
    <f des'>1\arpeggio										| % 7
    s8 <des' f>4 <es_~ a_~>8 <es a> <des bes'> <es ges>4					| % 8
    <des f> <c! es> des2									| % 9
    s1												| % 10
    s												| % 11
    s2 r8^\< <c es> r <des fes>\!								| % 12
    r^\> <es ges> s8\! s4. <fes aes>4								| % 13
    <es ges beses>2\arpeggio r8 <cis e> r <cis eis>						| % 14
    r <cis fis> r <b d> r <a cis> r < gis b>							| % 15
    a2 s2											| % 16
    s1												| % 17
    d4._( cis8) s2										| % 18
    s1												| % 19
    des4._( c8) s2										| % 20
    <aes es'>4 <aes des> <aes es'> <aes fes'>							| % 21
    <b fis'>4 <b e> <b fis'!>\! <b g'>								| % 22
    <d a'>2_\> <d g>4\! \once \override TextScript #'extra-offset = #'(0.0 . -3.0) s8 _\markup
		{ \small \italic "dimin." } \stemUp a'!8					| % 23
    s1												| % 24
    s												| % 25
    s2 s4_\< s\!										| % 26
    s1												| % 27
    s												| % 28
    s												| % 29
    s												| % 30
    s												| % 31
    s32 des,1*31/32										| % 32
    s1												| % 33
    s												| % 34

  } >>

  \new Staff = "down" \relative c << { \time 4/4 \key des \major \clef bass
  \set Staff.extraNatural = ##f

    \stemDown des4 \stemUp des									|
    des des bes aes										| % 1
    <des, aes'>1										| % 2
    \stemDown s8 bes''4^\( aes8 ges4 des							| % 3
    es \stemUp bes g2										| % 4
    aes4\) d\rest \stemDown des4 \stemUp des							| % 5
    des des bes aes										| % 6
    <des, aes'>1										| % 7
    \stemDown d'8\rest bes'4 f8 ges4 es								| % 8
    f \stemUp f \stemDown <bes, f'>2								| % 9
    d2\rest \stemUp aes'4^-^\(^\< aes^-								| % 10
    beses4.^\> aes8\! aes fes' es des								| % 11
    des4\arpeggio^\> c8\!\) r8 d,2\rest								| % 12
    d1\rest											| % 13
    d2\rest d8\rest \stemDown a'^. d,\rest gis^.						| % 14
    d\rest fis^. d\rest \stemUp b8^. d\rest cis^. d\rest <cis, cis'>^.				| % 15
    <fis cis'>2 <fis, fis'>4_\( <fis fis'>							| % 16
    <a a'>8 <g g'> <fis fis'>4 <e e'> \grace { fis'!16[_( e dis e] } <b b'>8.) <a a'>16		| % 17
    <a a'>2\arpeggio <f! f'!>4\)_\( <f f'>							| % 18
    <aes aes'>8 <ges ges'> <f f'>4 <es es'>\arpeggio \grace { f'32 [_(es d es] }
		<bes bes'>8.) <aes aes'>16							| % 19
    <aes aes'>2\arpeggio^\fermata\) <a f' a>4 <bes f' bes>					| % 20
    <c aes' c> <des aes' des> <c aes' c> <des aes' des>						| % 21
    <dis b' dis> <e b' e> <dis b' fis'>\arpeggio <e b' g'>\arpeggio				| % 22
    \stemDown <fis d' a'>2\arpeggio <g d' bes'!>4 d'\rest					| % 23
    d1\rest											| % 24
    d4\rest \stemUp <d' es>4 f\arpeggio <d! f> \clef treble					| % 25
    aes'8\arpeggio ges f4 es\arpeggio \grace { f32[_\( es d es] } bes'8.\arpeggio\) aes16	| % 26
    aes2\arpeggio ^> \clef bass <des,,, des'>4._\( <ces ces'>8					| % 27
    <ces ces'>8 <beses beses'>4 <aes aes'>8 <aes aes'> <ges ges'>4 <es es'>8			| % 28
    <des des'>2\) <des' des'>4._\( <ces ces'>8							| % 29
    <ces ces'>8 <beses beses'>4 <aes aes'>8 <aes aes'> <ges ges'>4 <es es'>8			| % 30
    <des des'>2\) <bes' des>									| % 31
    <ges des' bes'>1\arpeggio									| % 32
    <des' aes'>2 <des f aes des>								| % 33
    <des f aes des>1										| % 34

  } \\ \relative c {
  \set Staff.extraNatural = ##f

    \stemDown s4 bes										|
    ges des es aes,										| % 1
    s1												| % 2
    s												| % 3
    s												| % 4
    s2. bes'4											| % 5
    ges des es aes,										| % 6
    s1												| % 7
    s												| % 8
    s4 f' s2											| % 9
    s2 r8 <c' es> r <des fes>									| % 10
    r8 <es ges> s2 <fes aes>4									| % 11
    <ges beses>\arpeggio s2.									| % 12
    s1												| % 13
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
    s4 <g bes> d'\arpeggio _\( ces								| % 25
    <bes es>\arpeggio <aes des> <g bes des>\arpeggio <ges c es>\arpeggio			| % 26
    <f ces' des>2\arpeggio\) s									| % 27
    s1												| % 28
    s												| % 29
    s												| % 30
    s												| % 31
    s												| % 32
    s												| % 33
    s												| % 34

  } >>

>>

\layout {
  \context {
    \Score
    \override SpacingSpanner #'base-shortest-duration = #(ly:make-moment 1 22)
  }
}
\midi { }

}
