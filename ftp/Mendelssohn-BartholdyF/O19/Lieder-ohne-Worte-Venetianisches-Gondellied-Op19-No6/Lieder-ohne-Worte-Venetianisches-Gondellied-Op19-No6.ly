\version "2.12.2"

\header {

  title = "Lieder ohne Worte"
  subtitle = "Venetianisches Gondellied"
  composer = "F. Mendelssohn-Bartholdy"
  opus = "Op.19 No.6"

  mutopiatitle = "Lieder ohne Worte: Venetianisches Gondellied, Op.19 No.6"
  mutopiacomposer = "Mendelssohn-BartholdyF"
  mutopiapoet = ""
  mutopiaopus = "Op.19"
  mutopiainstrument = "Piano"
  date = "1829-1830"
  source = "Breitkopf & Härtel, 1874-77"
  style = "Romantic"
  copyright = "Creative Commons Attribution 3.0"
  maintainer = "Ryan Prince"
  maintainerEmail = "rprincerp@gmail.com"
  maintainerWeb = ""
  moreInfo = "This file was created from a public domain scan of the work.  The source is located in the Petrucci Music Library, http://imslp.org/."

 footer = "Mutopia-2009/06/12-1679"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2009. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/3.0" http://creativecommons.org/licenses/by/3.0 } } } }
}

\score {

\new PianoStaff <<
  \set PianoStaff.instrumentName = "Piano"
  \set PianoStaff.connectArpeggios = ##t
  \new Staff = "up" \relative c' << { \time 6/8 \key g \minor \clef treble
  \set Staff.extraNatural = ##f

    \once \override TextScript #'extra-offset = #'(-3.5 . 2.0)
        s1*6/8^\markup { \bold "Andante sostenuto." }_\p					| % 1
    s												| % 2
    \stemUp d4.^\< f!4.^~^\sfz^\>								| % 3
    f4.\! es4.											| % 4
    d4.^\p^~ d4 b'8\rest									| % 5
    s1*6/8											| % 6
    b4\rest b8\rest b4\rest <bes d>8_\(_\markup { \whiteout \italic "cantabile" }		| % 7
    <a c>4 <g bes>8 <fis a>4\) <a c>8_\(							| % 8
    <d, bes'>4 <c a'>8 <bes g'>4\) d8								| % 9
    <c es>4 <c es>8 <c es>16[_( <d f>) <es g>8_. <c es>_.]					| % 10
    s4. d'4\rest <bes d>8^\(^\p									| % 11
    <a c>4 <g bes>8 <fis a>4\) <a c>8^\(							| % 12
    <d, bes'>4 <c a'>8 <bes g'>8\)[ g'^\( a]							| % 13
    \stemDown bes_\<[ cis d] <cis f>^>[ e d]\)							| % 14
    <d a'>4\!^\(_\markup { \whiteout \dynamic "sfz" } f8\> d4*1/2\) s8\! \stemUp
        a_\(_\markup { \whiteout \italic "dim". }						| % 15
    bes[ <e, cis'> <f d'>] <a f'>_\p[ <g e'> <f d'>]\)						| % 16
    <f_~ d'^~>4. <f d'>8 b\rest \stemDown d							| % 17
    \stemUp f4^\( d8 c4 b8\)									| % 18
    c4^\( g8 aes4^> b8\)									| % 19
    c4^\( g8 aes4^> b8\)									| % 20
    c4.^~ c8 d\rest c										| % 21
    es4^\pp a,8 es'4 a,8									| % 22
    es'4.^~ es4^\( d8										| % 23
    c4 bes8 a[ bes g]\)										| % 24
    <d fis a d>_\<[ d'^.^\( d^.] \stemDown d_\>^.[ d^. d^.]\!\)					| % 25
    \stemUp d^._\p^\([ bes^. es^.]\) d4^\( g8\)							| % 26
    d^.^\([ bes^. es^.]\) d4^\( g8\)								| % 27
    d^.^\([ c^. bes^.]\) a4 a8									| % 28
    d4 a8 c4 bes8										| % 29
    d^.^\([ bes^. es^.]\) d4^\( g8\)								| % 30
    d8^.^\([ bes^. es^.]\) d4 g8^~^\sfz								| % 31
    g[ g^.^\(  es^.] d^.[ es^. c^.]								| % 32
    bes!^.[ c^. a^.] g^.[ a^._\p <c, d fis>^.]\)						| % 33
    <bes d g>\sustainOn b'\rest b\rest b4\rest \stemDown <bes d>8_\mf^\(			| % 34
    <a c>4 \stemUp <g bes>8 <fis a>4 <es c'>8\)_\markup { \whiteout \italic "sempre"
        \musicglyph #"pedal.Ped" }							\noBreak| % 35
    <d bes'>4 \stemDown <d' d'>8
        <d d'>4 \stemUp <d, bes'>8_\(^\markup { \italic "dim." }				| % 36
    <c a'>4 <bes g'>8 <a fis'>4 <fis' a>8\)							| % 37
    <d g>4_\pp \stemDown <d' d'>8 <d d'>4 \stemUp <d, bes'>8					| % 38
    g4 \stemDown <d' d'>8 <d d'>4 b8\rest							| % 39
    b4\rest b8\rest \stemUp f!4.^\pp_~								| % 40
    f4.^\>^\( es4.\!										| % 41
    d4.\)_~ d4 b'8\rest										| % 42
    s1*6/8											| % 43
    s4. d,4._~											| % 44
    d8 b'8\rest b\rest d,4._~									| % 45
    d8 b'8\rest b\rest b4*1/2\rest s8^\fermata b8\rest					  \bar "|." % 46

  } \\ \relative c' {
  \set Staff.extraNatural = ##f

    \change Staff=down a8\rest \stemUp <g bes>8^([ d]) a'\rest <g bes>^([ d])			| % 1
    a'\rest <g bes>^([ d]) a'\rest <g a c>^([ es])						| % 2
    a\rest <g bes>^([ d]) a'\rest <a c>^([ f])							| % 3
    a\rest <bes d>^([ f]) a\rest <g c>^([ es])							| % 4
    a\rest <g bes>^([ d]) a'\rest <g bes>^([ d])						| % 5
    a'\rest <a c>^([ d,]) a'\rest <fis a>^([ d])						| % 6
    s1*6/8											| % 7
    s												| % 8
    s												| % 9
    s												| % 10
    \stemUp \change Staff=up d'2.^>_~								| % 11
    \stemDown d2.										| % 12
    s1*6/8											| % 13
    s												| % 14
    s												| % 15
    s												| % 16
    s												| % 17
    e8\rest f[ g] e\rest f[ g]									| % 18
    c[ <c, es> g'] aes[ <d, f> b']								| % 19
    c[ <c, es> g'] aes[ <d, f> b']								| % 20
    e,\rest es[_( g)] e\rest es[_( g)]								| % 21
    es'\sustainOn[ es, fis] es'[ es, fis]							| % 22
    e\rest es[ <fis a>] e\rest es[ a]\sustainOff						| % 23
    e\rest d[ g] c,\rest cis[ g']								| % 24
    s1*6/8											| % 25
    e8\rest <d g>_.[ fis_.] e\rest <g bes>_.[ <bes d>_.]					| % 26
    e,\rest <d g>8[ <fis c'>] e\rest <g bes>[ <bes d>]						| % 27
    e,\rest <d g>[ <d g>] e\rest <es g>[ <es g>]						| % 28
    e\rest <d fis>[ <d fis>] e\rest <d a'>[ <d g>]						| % 29
    e\rest  <d g>[ <fis c'>] e\rest <g bes>[ <bes d>]						| % 30
    e,\rest <d g>_.[ <fis c'>_.] e\rest <g b>[ <b d f!>]					| % 31
    <c es> g\rest_\markup { \italic "dim." } g\rest s4.						| % 32
    e8\rest g[ es] s4.										| % 33
    s1*6/8											| % 34
    s												| % 35
    s												| % 36
    s												| % 37
    s												| % 38
    s												| % 39
    \change Staff=down s4. a,8\rest \stemUp <a c>^([ f])					| % 40
    a\rest <bes d>^([ f]) a\rest <g c>^([ es])							| % 41
    a\rest <g bes>^([ d]) a'\rest <g bes>^([ d])						| % 42
    a'\rest <a c>^([ d,]) a'\rest <fis a>^([ d)]						| % 43
    a'\rest <g bes>^([ d]) a'4\rest a8\rest							| % 44
    a\rest <g bes>^([ d]) a'4\rest a8\rest							| % 45
    s1*6/8											| % 46

  } >>

  \new Staff = "down" \relative c << { \time 6/8 \key g \minor \clef bass
  \set Staff.extraNatural = ##f

    \stemDown g4 g8\rest g4 g8\rest								| % 1
    \stemDown g4 g8\rest g4 g8\rest								| % 2
    <g, g'>4 g'8\rest <f, f'>4 g'8\rest								| % 3
    <bes, bes'>4 g'8\rest <c, c'>4 g'8\rest							| % 4
    d4 e8\rest d4 e8\rest									| % 5
    d4 e8\rest d4 e8\rest									| % 6
    g8[ <g' bes>^( d)] g,[ <g' bes>^( d)]							| % 7
    g,[ <a' c>^( d,)] g,[ <a' c>^( d,)]								| % 8
    g,[ <g' bes>^( d)] g,[ <g' bes>^( d)]							| % 9
    g,[ g'^( es)] g,[ <g' c>^( es)]								| % 10
    g,[ <g' bes>^( d)] g,[ <g' bes>^( d)]							| % 11
    g,[ <a' c>^( d,)] g,[ <a' c>^( d,)]								| % 12
    g,[ <g' bes>^( d)] g,[ g'^( d)]								| % 13
    g,[ <bes' d>^( g)] g,[ <bis' c>^( g)]							| % 14
    f,^.[ <a' d>^( f)] f,^.[ <a' d>^( f)]							| % 15
    g,[ <bes' d>^( g)] a,[ cis'^( a)]								| % 16
    d,[ <a' d>^( f)] d[ <a' d>^( f)]								| % 17
    g,[ <g' b>^( d)]  g,[ <g' b>^( d)]								| % 18
    c,[ g''^( es)] c[ <f aes>^( d)]								| % 19
    c,[ g''^( es)] c[ <f aes>^( d)]								| % 20
    c,[ <es' g>^( c)] c, [ <es' g>^( c)]							| % 21
    fis,^.[ <es' a>^( c)] fis,^.[ <es' a>^( c)]							| % 22
    fis,^.[ <es' a>^( c)] fis,^.[ <es' a>^( c)]							| % 23
    g[ <d' g>^( bes)] es,[ <g' bes>^( es)]							| % 24
    \stemUp d,4 d'8\rest d4\rest d8\rest							| % 25
    <g,, g'>8 d''\rest d\rest d4\rest d8\rest							| % 26
    <g,, g'>8 d''\rest d\rest d4\rest d8\rest							| % 27
    <bes, bes'> d'\rest d\rest <c, c'> d'\rest d\rest						| % 28
    <d, d'> d'\rest d\rest <g, g'> d'\rest d\rest						| % 29
    <g,, g'> d''\rest d\rest d4\rest d8\rest							| % 30
    <g, g'> d'\rest d\rest d4\rest d8\rest							| % 31
    <c, c'> d'\rest d\rest d\rest \stemDown g'^.^\([ es^.]					| % 32
    d^.[ es^. c^.] d\) d,\rest d^(								| % 33
    g,)[ <g' bes>( d)] g,[ <g' bes>( d)]							| % 34
    g, <a' c>^( d,)] g, <a' c>^( d,)]								| % 35
    g,[ <g' bes>( d)] g,[ <g' bes>( d)]								| % 36
    g,[ g'^( d)] g,[ <c' d>^( d,)]								| % 37
    g,[ <g' bes>^( d)] g,[ <g' bes>^( d)]							| % 38
    g,[ <g' bes>^( d)] g,[ <g' bes>^( d)]							| % 39
    g,[ <g' bes>^( d)] <f,, f'>4 g'8\rest							| % 40
    <bes, bes'>4 g'8\rest <c, c'>4 g'8\rest							| % 41
    d4 e8\rest d4 e8\rest									| % 42
    d4 e8\rest d4 e8\rest									| % 43
    g,4 e'8\rest e4\rest e8\rest								| % 44
    g,4 e'8\rest e4\rest e8\rest								| % 45
    \stemUp g,2.^\fermata									| % 46
  } \\ \relative c {
  \set Staff.extraNatural = ##f

    

  } >>

>>

\layout {
  \context {
    \Score
    \override SpacingSpanner #'base-shortest-duration = #(ly:make-moment 1 12)
  }
}

\midi { }

}
