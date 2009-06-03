\version "2.12.2"

\header {

  title = "Consolation"
  composer = "F. Liszt"
  opus = "S.172 No.1"

  mutopiatitle = "Consolation, S.172 No.1"
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

 footer = "Mutopia-2009/06/03-1654"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2009. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/3.0" http://creativecommons.org/licenses/by/3.0 } } } }
}

\score {

\new PianoStaff <<
  \set PianoStaff.instrumentName = "Piano"
  \set PianoStaff.connectArpeggios = ##t
  \new Staff = "up" \relative c'' << { \time 4/4 \key e \major \clef treble
  \set Staff.extraNatural = ##f

  \once \override TextScript #'extra-offset = #'(-3.5 . 0.0) \stemUp
		b4\rest ^\markup { \bold "Andante con moto." }
		<b, e gis>2 ^\(^. <b_~ e_~ b'^~>4^.			| % 1
  <b e b'> <b e a>2^. <b_~ cis_~ fis^~>4^.\)				| % 2
  <b cis fis> <b cis>^\( <b e> <b gis'>\)				| % 3
  <e gis>2~^\( <dis gis>8 fis a ais\)					| % 4
  b2^_ b^_								| % 5
  b^_ b^_^~								| % 6
  b4 \stemDown <b, cis>^\( <b e> <ais gis'>\)				| % 7
  \stemUp gis'2^~ gis8_\( fisis ais cis\)				| % 8
  \stemDown e2^( dis4) \stemUp b8\rest gis^\(				| % 9
  \stemDown b2^~ \stemUp b8 ais b cis\)					| % 10
  \stemDown e2^( dis4) b8\rest \stemUp gis				| % 11
  \stemDown b2^~ \stemUp b8^\( ais cis dis!\)				| % 12
  \grace fis8_( \stemDown e2)^( d4) b8\rest \stemUp g			| % 13
  b2^~^\( b8^( gis! a! c)						| % 14
  \stemDown e2^( d4)\) b8\rest \stemUp g				| % 15
  b2^~ b8^\( g a ais\)							| % 16
  b2^_ b^_								| % 17
  b^_ b^_								| % 18
  b4\rest <b, cis>4^\( <b e> <b gis'>\)					| % 19
  <e gis>2^~^\( gis8 fis a ais\)					| % 20
  b2^_ b^_								| % 21
  b^_ b^_								| % 22
  b4\rest <b, cis>4^\( <b e> <b gis'>\)					| % 23
  <e gis>2^\( gis4 fis8. gis16\)					| % 24
  <gis, b e gis>2.\arpeggio s4					  \bar "|." % 25

  } \\ \relative c' {
  \set Staff.extraNatural = ##f

  \stemDown s1_\markup { \small \italic "dolce" }			| % 1
  s									| % 2
  s									| % 3
  b4_\< ais a\! s							| % 4
  r <b e gis>_._\( r <b e>_.						| % 5
  r <b e a>_. r <b cis fis>_.\)						| % 6
  s1									| % 7
  <ais cis>2 s8_\< s s s\!						| % 8
  s1									| % 9
  s2 fisis'4 s								| % 10
  s1									| % 11
  s2 fisis4 s								| % 12
  s1									| % 13
  s2 fis4 s								| % 14
  s1									| % 15
  s2 s4_\markup { \small \italic "poco rit." } e			| % 16
  r^\markup { \bold "a tempo." } <b e gis!>_._\( r <b e>_.		| % 17
  r <b e a>_. r <b cis fis>_.\)						| % 18
  s4 s_\< s s\!								| % 19
  b4_\> ais a s\!							| % 20
  r <b e gis>_._\( r <gis e'>_.						| % 21
  r <b e a>_. r <b cis fis>_.\)						| % 22
  s4_\markup { \small \italic "poco rit." } s_\< s s\!			| % 23
  b4 ais a2							  	| % 24
  s1									| % 25

  } \\ \relative c' {
  \set Staff.extraNatural = ##f

  s1*19									| % 1-19
  s2 \stemUp dis4 s4							| % 20
  s1*3									| % 21-23
  s2 <cis e>4 \stemDown dis						| % 24
  s1									| % 25

  } >>

  \new Staff = "down" \relative c << { \time 4/4 \key e \major \clef bass
  \set Staff.extraNatural = ##f

  \stemUp d4\rest <e, b'>2^\(^. <gis_~ b^~>4^.				| % 1
  <gis b> <fis b>2^. <a_~ b^~>4^.					| % 2
  <a b>\) <a b>^( <gis b> cis)						| % 3
  cis2^( b4) d\rest							| % 4
  d\rest <e, b'>_._\( d'\rest <gis, b>_.				| % 5
  d'\rest <fis, b>_. d'\rest <a b>_.\)					| % 6
  d\rest <a b>^\( <gis b> <e cis'>\)					| % 7
  e'2^( dis4) d\rest							| % 8
  d\rest \clef treble <dis' gis b>2^.^( <b gis'>4^.)			| % 9
  b'\rest \clef bass \stemDown <gis, e'>^.^( <dis cis'>^.) d\rest	| % 10
  d\rest \clef treble \stemUp <dis' gis b>2_._( <b gis'>4_.)		| % 11
  b'\rest \clef bass \stemDown <gis, e'>^.^( <dis cis'>^.) d\rest	| % 12
  d\rest \clef treble \stemUp <d' g b>2_._( <b g'>4_.)			| % 13
  b'\rest \clef bass \stemDown <g, e'>^.^( <d c'>^.) d\rest		| % 14
  d\rest \clef treble \stemUp <d' g b>2_._( <b g'>4_.)			| % 15
  b'\rest \clef bass \stemDown <g, e'>^.^\( <e c'>^. <c g'>^.\)		| % 16
  d\rest <b gis'!>^.^\( d\rest <gis, e'>^.				| % 17
  d'\rest <fis, a'>^. d'\rest <a fis'>^.\)				| % 18
  d\rest \stemUp <a b>_\( <gis b> <e cis'>\)				| % 19
  <fis cis'>2^( b4) d\rest						| % 20
  d\rest <e, b'>_._\( d'\rest <d, b'>_.					| % 21
  d'\rest <cis, b'>_. d'\rest <a, b'>_.\)				| % 22
  d'\rest b^\( b e\)							| % 23
  cis2^\( b								| % 24
  b2.\)\arpeggio s4							| % 25

  } \\ \relative c, {
  \set Staff.extraNatural = ##f

  \stemDown s1								| % 1
  s									| % 2
  s2. e4								| % 3
  fis2 b4 s								| % 4
  s1									| % 5
  s									| % 6
  s									| % 7
  dis,2. s4								| % 8
  s1									| % 9
  s									| % 10
  s									| % 11
  s									| % 12
  s									| % 13
  s									| % 14
  s									| % 15
  s									| % 16
  s									| % 17
  s									| % 18
  s									| % 19
  s									| % 20
  s									| % 21
  s									| % 22
  s4 a'_\( gis8 e dis cis\)						| % 23
  fis2 b,								| % 24
  e2.\arpeggio s4							| % 25

  } >>

>>

\layout { }
\midi { }

}
