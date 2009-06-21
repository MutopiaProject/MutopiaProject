\version "2.12.2"

\header {

  title = "Mazurka."
  composer = "F. Chopin. Op.33 No.1"
  poet = \markup { \small "A Mlle la Comtesse MOSTOWSKA." } % this is actually the dedication

  mutopiatitle = "Mazurka: Op.33, No.1"
  mutopiacomposer = "ChopinFF"
  mutopiapoet = ""
  mutopiaopus = "Op. 33, No. 1"
  mutopiainstrument = "Piano"
  date = "1837-1838"
  source = "G. Schirmer, 1894"
  style = "Romantic"
  copyright = "Creative Commons Attribution 3.0"
  maintainer = "Ryan Prince"
  maintainerEmail = "rprincerp@gmail.com"
  maintainerWeb = ""
  moreInfo = "This file was created from a public domain scan of the work.  The source is located in the Petrucci Music Library, http://imslp.org/."

 footer = "Mutopia-2009/06/21-1682"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2009. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/3.0" http://creativecommons.org/licenses/by/3.0 } } } }
}

su = \stemUp
sd = \stemDown
nb = \noBreak
bk = \break

\score {

\new PianoStaff <<
  \set PianoStaff.instrumentName = "Piano"
  \set PianoStaff.connectArpeggios = ##t
  \new Staff = "up" \relative c' << { \time 3/4 \key gis \minor \clef treble

    \partial 4*1 \su \once \override TextScript #'extra-offset = #'(-3.5 . 0.0)
        dis^\markup { \bold "Mesto." }_>_\p^2^\(					\nb	| % 0
    e8.^3[ dis16^2] <cisis gis'^3 b^5>4 <cis fisis^2 ais^4>				\nb	| % 1
    gis'2^3^>\)^~ gis8^\([ ais]								\nb	| % 2
    \sd b^1[ cis] dis4 \su \slurDown \acciaccatura fis8 \slurNeutral \sd e4		\nb	| % 3
    dis8^( gis16)\)] b,\rest  \su dis2^4^>^\(				\noPageBreak	\bk	| % 4
    dis8.[ cis16^3] e4^5 dis^4\)							\nb	| % 5
    \acciaccatura cis8 b8.^4_\([ ais16] <e gis cis>4 <dis gis b>\)			\nb	| % 6
    e8.^3^\([ dis16] <cisis gis' b>4^5 <cis fisis ais>^4				\nb	| % 7
    gis'2^3 b4^\markup { \finger "5-2" }						\nb	| % 8
    dis8.^4[ cis16] e4 dis\)						\noPageBreak	\bk	| % 9
    \acciaccatura cis8 b8._\([ ais16] <e gis cis>4 <dis gis b>\)			\nb	| % 10
    \grace { e16_(_\markup { \finger "2" }[ fis_\markup { \finger "3" }] }
        e8.)_\markup { \finger "1" } ^\([ dis16_\markup { \finger "2" }]
        <cisis gis' b>4 <cis fisis ais>	\nb						\nb	| % 11
    gis'2*1/2\) dis4 b'^\markup { \finger "5" }^\(					\nb	| % 12
    ais8.^4[ gis!16] fis4 b^>								\nb	| % 13
    ais8.[ gis16] fis4 gis^3^>						\noPageBreak	\bk	| % 14
    ais8.^4[ b16^5] <ais^2 cis^3>4_\< <gisis^2 bis^4>					\nb	| % 15
    <ais^2 cis^3>8.[ <b! gis'>16^2^5] <ais^1 fis'^4^~>2\!\)				\nb	| % 16
    fis'8.^\([ eis16^2_~] <eis^1 b'^5>4 <fis^2 ais^4>\)					\nb	| % 17
    fis,8.^\(_\prall^2[ eis16_~] \sd eis4 \su ais\)					\nb	| % 18
    fis'8.^\(^2[ eis16_~] \sd eis4 \su ais				\noPageBreak    \bk	| % 19
    fis,8.^\(_\prall^2[ eis16_~] \sd eis4 \su ais\)					\nb	| % 20
    gis4._\f^3^\( ais8^4[ gis_\prall^3 fisis^1]						\nb	| % 21
    gis_.^2[ cis_.^3] \sd dis4^. e^._>\)						\nb	| % 22
    \su e,^1^\markup { \italic "appassionato." }_\( fis4.^3_> cis8^1			\nb	| % 23
    dis^2[ fis] gis4 dis\)							\pageBreak	| % 24

    <e e'>_\p^\( \sd <fis fis'>4. \su \override
        TextSpanner #'bound-details #'left #'text = \markup { \whiteout \italic "dim." }
        \override TextSpanner #'(bound-details right text) = \markup { \dynamic "f" }
        \override TextSpanner #'dash-fraction = #0.2
        \textSpannerDown <cis cis'>8\startTextSpan					\nb	| % 25
    <dis dis'>8[ <fis fis'>] \sd <gis gis'>4 \su <dis dis'>				\nb	| % 26
    <e e'>4 \sd <fis fis'>4. \su <cis cis'>8						\nb	| % 27
    <dis dis'>2 fis4\)^\(								\nb	| % 28
    gis4.\stopTextSpan ais8[ gis_\prall fisis]				\noPageBreak	\bk	| % 29
    gis[ cis] \sd dis4^. e^._>\)							\nb	| % 30
    \su e,_\( fis4._> cis8								\nb	| % 31
    dis[ fis] gis4 dis\)								\nb	| % 32
    <e e'>_\p^\( \sd <fis fis'>4._\markup { \italic "dim." } \su <cis cis'>8		\nb	| % 33
    <dis dis'>8[ <fis fis'>] \sd <gis gis'>4 \su <dis dis'>		\noPageBreak	\bk	| % 34
    <e e'>4 \sd <fis fis'>4. \su <cis cis'>8\)						\nb	| % 35
    <dis dis'>2^\fermata dis4_>_\(							\nb	| % 36
    e8.[ dis16] <cisis gis' b>4 <cis fisis ais>						\nb	| % 37
    gis'2\)^~ gis8^\([ ais]								\nb	| % 38
    \sd b[ cis] dis4 \su \slurDown \acciaccatura fis8 \slurNeutral \sd e4 \noPageBreak	\bk	| % 39
    dis8[ gis16\)] b,\rest \su dis2^>							\nb	| % 40
    dis8.^\([ cis16] e4 dis\)								\nb	| % 41
    \acciaccatura cis8 b8._\([ ais16] <e gis cis>4 <dis gis b>\)			\nb	| % 42
    e8.^\([ dis16] <cisis gis' b>4 <cis fisis ais>					\nb	| % 43
    gis'2 b4^\markup { \finger "5-2" }					\noPageBreak	\bk	| % 44
    dis8.^4^\([ cis16] e4 dis\)								\nb	| % 45
    \acciaccatura cis8 b8._\([ ais16] <e gis cis>4 <dis gis b>\)			\nb	| % 46
    \grace { e16^\(_([ fis] } e8.)[ dis16] <cisis gis' b>4 <cis fisis ais>		\nb	| % 47
    a4\rest \sd <b dis>2_\fermata\)							\nb\bar"|." % 48

  } \\ \relative c' {

    s4												| % 0
    s2.												| % 1
    \sd b4\rest <b dis> b\rest									| % 2
    s2.												| % 3
    s4 e\rest <gis_~ b_~>									| % 4
    <gis b> <gis ais> <gis b>									| % 5
    s2.												| % 6
    s												| % 7
    b,4\rest <b dis> <b dis>									| % 8
    e\rest <gis ais> <gis b>									| % 9
    s2.												| % 10
    s												| % 11
    a,4\rest b2*1/2 e4^\markup { \finger "2" }							| % 12
    e2.												| % 13
    e2.												| % 14
    <e^1 fis^2>4  fis2										| % 15
    s2.												| % 16
    b4 s2											| % 17
    s4 \su b \sd fis										| % 18
    f4\rest \su b'\sd fis									| % 19
    s4 \su b,\sd fis										| % 20
    s2.												| % 21
    s												| % 22
    s												| % 23
    s												| % 24

    s2.												| % 25
    s												| % 26
    s												| % 27
    s												| % 28
    s												| % 29
    s												| % 30
    s												| % 31
    s												| % 32
    s												| % 33
    s												| % 34
    s												| % 35
    s												| % 36
    s2.												| % 37
    a,4\rest <b dis> a\rest									| % 38
    s2.												| % 39
    a4\rest d\rest <gis_~ b_~>									| % 40
    <gis b> <gis ais> <gis b>									| % 41
    s2.												| % 42
    s												| % 43
    a,4\rest <b dis> <b dis>									| % 44
    e\rest <gis ais> <gis b>									| % 45
    s2.												| % 46
    s												| % 47
    \su gis2.^\fermata										| % 48

  } >>


  \new Staff = "down" \relative c << { \time 3/4 \key gis \minor \clef bass

    d4\rest											| % 0
    d\rest d\rest s										| % 1
    f\rest \su <dis gis> d\rest									| % 2
    d1*3/4\rest											| % 3
    d4\rest d\rest \sd <gis_~ dis'^~>								| % 4
    <gis dis'> <cis, cis'>4^\( \su <gis gis'>\)							| % 5
    d'\rest <cis, cis'>_\( <gis gis'>\)								| % 6
    d''\rest d\rest s										| % 7
    g\rest <dis gis> <dis gis>									| % 8
    d\rest \sd <cis cis'>^\( \su <gis gis'>\)							| % 9
    d'\rest <cis, cis'>_\( <gis gis'>\)								| % 10
    d''\rest d\rest dis,_\markup { \finger "5" } ^\(						| % 11
    gis_\markup { \finger "3" } \sd gis'_\markup { \finger "1" }_( g_\markup { \finger "1" } )\)| % 12
    \su cis8.^\markup { \finger "2" } [ b16] ais4 dis^>						| % 13
    cis8.[ b16] ais4 b										| % 14
    cis8.[ dis16] e4 dis									| % 15
    <cis fis>8.[ <d eis>16] fis2 \clef treble							| % 16
    gis4 cis2 \clef bass									| % 17
    d,,4\rest cis'2 \clef treble								| % 18
    b'4\rest cis2 \clef bass									| % 19
    d,,4\rest cis'2										| % 20
    c4\rest <gis cis e> <gis cis e>								| % 21
    s4 d\rest d\rest										| % 22
    fis,4 \sd <cis' fis ais> <cis fis ais>							| % 23
    \su b \sd <dis fis b> <dis fis b>								| % 24

    \su fis,\sustainOn \sd <cis' fis ais> <cis fis ais>\sustainOff				| % 25
    \su b\sustainOn \sd <dis fis b> <dis fis b>\sustainOff					| % 26
    \su fis,\sustainOn \sd <cis' fis ais> <cis fis ais>\sustainOff				| % 27
    a'\rest\sustainOn \su <fis b> d\rest\sustainOff						| % 28
    c'\rest\sustainOn <gis cis e> <gis cis e>							| % 29
    <gis cis e>\sustainOff d\rest d\rest							| % 30
    fis,\sustainOn \sd <cis' fis ais> <cis fis ais>\sustainOff					| % 31
    \su b\sustainOn \sd <dis fis b> <dis fis b> \sustainOff					| % 32
    \su fis,\sustainOn \sd <cis' fis ais> <cis fis ais>\sustainOff				| % 33
    \su b\sustainOn \sd <dis fis b> <dis fis b>\sustainOff					| % 34
    \su fis,\sustainOn \sd <cis' fis ais> <cis fis ais>\sustainOff				| % 35
    a'\rest\sustainOn \su <fis b>^\fermata\sustainOff d\rest					| % 36
    d\rest d\rest s										| % 37
    \sd gis,2_\markup { \finger "4" } d'4\rest							| % 38
    d1*3/4\rest											| % 39
    d4\rest d\rest <gis_~ dis'^~>								| % 40
    <gis dis'> <cis, cis'>^\( \su <gis gis'>\)							| % 41
    d'\rest <cis, cis'>_\( <gis gis'>\)								| % 42
    d''\rest d\rest s										| % 43
    a'\rest <dis, gis> <dis gis>								| % 44
    d\rest \sd <cis cis'>^\( \su <gis gis'>\)							| % 45
    d'\rest <cis, cis'>_\( <gis gis'>\)								| % 46
    d''\rest d\rest s										| % 47
    a'\rest <dis, gis>2_\fermata								| % 48

  } \\ \relative c, {

    s4												| % 0
    s2 \su dis4_5_(										| % 1
    \sd gis2_4) s4										| % 2
    s2.												| % 3
    s												| % 4
    s												| % 5
    s												| % 6
    s2 \su dis4_5_(										| % 7
    \sd gis2_4) s4										| % 8
    s2.												| % 9
    s												| % 10
    s												| % 11
    s												| % 12
    fis'2._5											| % 13
    fis2.											| % 14
    fis4 fis2											| % 15
    fis4_~ <fis cis'>8.[ dis'!16^(] cis4_\()							| % 16
    cis2*1/2_\)_\( s4\sustainOn fis4\sustainOff\)						| % 17
    s4 <cis, gis'>_\(\sustainOn fis\sustainOff\)						| % 18
    s <cis' gis'>_\(\sustainOn fis\sustainOff\)							| % 19
    s <cis, gis'>4\sustainOn_\( fis\sustainOff\)						| % 20
    e!2.\sustainOn_~										| % 21
    <e gis cis e>4\sustainOff s2								| % 22
    s4\sustainOn s s\sustainOff									| % 23
    s\sustainOn s s\sustainOff									| % 24

    s2.												| % 25
    s												| % 26
    s												| % 27
    b2 s4											| % 28
    e2._~											| % 29
    e4 s s											| % 30
    s2.												| % 31
    s												| % 32
    s												| % 33
    s												| % 34
    s												| % 35
    b2_\fermata s4										| % 36
    s2 dis,4_\markup { \finger "5" }_\(								| % 37
    f'4\rest \su <dis gis>\) s									| % 38
    s2.												| % 39
    s												| % 40
    s												| % 41
    s												| % 42
    s4 s \sd dis,_\(										| % 43
    gis2_\) e4\rest										| % 44
    s2.												| % 45
    s												| % 46
    s2 dis4_\markup { \finger "5" }_\(								| % 47
    gis2.\)_\markup { \finger "4" }_\fermata_\sustainOn						| % 48

  } >>

>>

\layout { }

\midi { }

}
