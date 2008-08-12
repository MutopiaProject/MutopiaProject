\version "2.10.33"
\header {
    title = \markup \center-align { \bigger "La Traviata" "Atto Terzo" " " }
    subtitle = "Scena ed Aria"
    subsubtitle = \markup {\italic "«Addio del passato»"}
    composer = "G. Verdi"
    arranger = "Transcripción de N. Toledo"
    piece = "Nº 15"

    %copyright = "Calcografía de la 'Nueva Biblioteca Musical Económica', 1857-1869"
    % Mutopia headers
    mutopiatitle = "La Traviata - N15 Scena ed Aria"
    mutopiacomposer = "VerdiG"
    mutopiainstrument = "Piano"
    source = "Calcografía de la 'Nueva Biblioteca Musical Económica', 1857-1869"
    style = "Romantic"
    copyright = "Public Domain"
    maintainer = "Alberto Corella"
    maintainerEmail = "ppiano@telefonica.net"
 footer = "Mutopia-2008/08/12-1516"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

stemExtend = \once \override Stem #'length = #22
noFlag = \once \override Stem #'flag-style = #'no-flag


upper = \relative c'' {
    \clef treble
    \key ees \major
    \time 4/4
    << {\set fingeringOrientations = #'(left) <c'-3>2^\markup{\line {\bold "Andante. ("\note #"4" #1 \bold " = 60)"}} b4 c} \\ {\set fingeringOrientations = #'(left) <g-1>1} >> |
    \set fingeringOrientations = #'(right) <b-1 d-3>2 \set fingeringOrientations = #'(up) <c ees>\( |
    <b d> <d-3 f-5>4 <c ees>-> |
    <b d>2 ~ <b d>4\) r |
    \override Fingering #'avoid-slur = #'inside <des-2 g-5>2\( <c-1 fis-4>4 <b-1 f'-5> | % 1.1 - 5
    << {\set fingeringOrientations = #'(left) <ees-4>2  \once\override Fingering #'extra-offset = #'(-0.5 . -1) d4-5 \once\override Fingering #'extra-offset = #'(-0.5 . -1.5) c-4} \\ {\set fingeringOrientations = #'(left) <c-2>2 fis,-2} >> |
    << {c'2-5 b} \\ {f!-1 r} >> |
    bes!2.-3\)\(_\markup{\italic "dolente."} \once\override Script #'avoid-slur = #'inside c4-> |
    bes2 aes4\) r |
    g-2\( aes g f\) | % 1.2 - 10 
    f2-3( ees4) r |
    << {ees2.-3\(\< f8 g\!} \\ {<des g,>1} >> |
    << {\set PianoStaff.connectArpeggios = ##t bes'2\arpeggio aes4\) r} \\ {<des, g,>2\arpeggio( <c aes>)} >> |
    << {ees4.( d16-2)\< ees f8 g aes bes\!} \\ {<des, g,>2 r} >> |
    <des g des'>4\>( <c aes' c>4.) \revert Fingering #'avoid-slur c'8-.-5\( c-. c-.\)\! | % 1.3 - 15
    c4-5 b ~b8-. bes-.\( bes-. bes-.\) |
    bes4_\markup{\italic "dim."} a-1 ~ a8 aes-.-3\( aes-. aes-.\) |
    aes8\(\> g4 f ees d!8\)\!( |
    des2) aes'4. des,8 |
    c2\( bes'4._\markup{\italic "cres."} aes8 | % 1.4 - 20
    f4-1_\markup{\italic "poco a poco"} aes4. f'8 ees des |
    des4->\)( c8[) r16 ges] bes4.(\> aes8)\! |
    f4 aes4. f'8-5 ees des ~ |
    des16\> c-2 ees8-4 ~ees16 bes-2 des8-4 ~ des16 aes c8 ~ c16 ges-2 c aes\! | % 1.5 - 24
    f4-1 r \once \override Script #'script-priority = #-100 \afterGrace g!2\trill^\markup{\finger "34"}( {\once\override Fingering #'extra-offset = #'(-0.5 . -3) f16[-2 g]} |
    aes4) \once\override TextScript #'padding = #1.5 r_\markup{\italic "cresc."} \once \override Script #'script-priority = #-100 \afterGrace b2\trill^\markup{\finger "34"}( {a16[ b]} |
    c4) \once\override TextScript #'padding = #1.5 r_\markup{\italic "sempre"} \afterGrace d2\trill( {cis16[ d]} |
    ees4)\( e f fis\) | % 2.1 - 28
    \once\override Staff.OttavaBracket #'padding = #2 #(set-octavation 1) g4.-3\(_\markup{\italic "assai" \dynamic ff} aes8\noBeam aes16 g d ees f ees c aes\) #(set-octavation 0) |
    \override Fingering #'avoid-slur = #'inside aes4.\(_\markup{\italic "dim"} g8\noBeam aes16 g d-1 ees g f d ees\) |
    c16 r ees'8(\f\>->[ d16)] r des8->([ c16)] r ces8->([ bes16)] r aes8\! | % 2.2 - 31
    aes8-3([_\markup{\dynamic "pp" \italic " morendo."} g16]) r aes8[( g16]) r aes8[( g16]) r aes8[(-4 g16])-3 r |
    c,16 r ees'8(\>->[ d16)] r des8->([ c16)] r ces8->([ bes16)] r aes8\! |
    aes16-4(\< g) aes( g) aes( g) aes( g)\! aes(\> g) fis( g) f( g) d( g)\! | % 2.3 - 34
    c,16\pp r \acciaccatura b'8-3 c16-4 r r8 \acciaccatura b8 c16 r r8 \acciaccatura b8 c16 r r8 b16-3 r |
    c16-4 r \acciaccatura b8 c16 r r8 \acciaccatura b8 c16 r r8 \acciaccatura b8 c16 r r8 b16 r |
    \once\override TextScript #'extra-offset = #'(0 . -3) \once\override TrillSpanner #'padding = #1 c1\startTrillSpan ^\markup{\finger "34"} ~ | % 2.4 - 37
    c1 ~ |
    \phrasingSlurDown \once\override DynamicLineSpanner #'padding = #2 \afterGrace c1\stopTrillSpan\ppp {b16[-2\( c]-3} |
    c,2\) \phrasingSlurNeutral r\fermata |
    \bar "|."
    \once\override TextScript #'padding = #2 r4_\markup {"Rec" \super "vo"} r8 g aes g r g16 g |
    d'8 c r ees\noBeam d c r4 | % 2.5 - 42
    \bar "||"
    << {c'2\( b4 c\)} \\ {\once\override TextScript #'padding = #2 g1_\markup{"1º tempo"}} >> |
    <b d>2 <c ees> |
    <b d> <d f>4 <c ees>-> |
    <b d>2 r4 r8 g,^\markup{Rec.} |
    aes8 g r16 g g a c8 b r d16 d | % 2.6 - 47
    d4 g,8 g16 g g8.[ g16 g8. g16] |
    aes!4 r ees_2 f8_1 g |
    bes aes r4 r8 c bes aes |
    aes4 ges8. ges16 ges8.[ ges16 bes8. aes16] | % 3.1 - 51
    f4 r8 aes_2\( aes f'-5 ees des\) |
    des4-3( c8-1)[ r16 ges-2] bes4. aes8 |
    ges\( f aes4 ~aes8 f' ees des\) |
    des c ees-5 c aes-2 a-5 bes8.-> ges16 | % 3.2 - 55
    \acciaccatura aes8 ges8 f r4 r8 aes-2 aes aes |
    a a r4 a8 a16 a a8 b |
    c4 r c b8. fis16 |
    a8 g r4 b8.[ b16 c8. d!16] | % 3.3 - 59
    ees!2-5( fis,8-1) r r4 |
    \bar "||"
    \time 3/8
    \key g \major
    \once\override MultiMeasureRestText #'padding = #3.5
    R4.^\markup{\line {\bold "Andantino. ("\note #"8" #1 \bold " = 96)"}} |
    \noBreak
    \once\override TextScript #'extra-offset = #'(-3 . -4)
    g'4^\markup{\dynamic "pp"}-5\( fis16. e32 |
    fis4 e16. d32\) |
    b8\( c a\) |
    b8.-3\( a16 g8\) | % 3.4 - 65
    g'4\( fis16. e32 |
    fis4 e16. d32\) |
    b8\( c a |
    b4 g8\) |
    \override Fingering #'avoid-slur = #'outside
    ees'8-.-4\( ees-. ees-.\) |
    d4( g,8) |
    ees'-.\( ees-. ees-.\) | % 3.5 - 72
    d4( g8) |
    b8-5( a16) r \times 2/3 {\acciaccatura a8-4 g16-. fis-. e-.} |
    e8( d16) r \times 2/3 {d16-. g-. b,-.} |
    ees8 d16 r r8 |
    \bar "||"
    \key c \major
    \time 4/4
    s1 |
    r4^\markup{Rec\super"vo"} r8. a16 a4 fis8[ r16 a] | % 3.6 - 78
    a4( fis8) r a16 a b8.[ fis!] |
    \stemUp g8 e16-3 \change Staff = lower e,-1 \change Staff = upper e' \change Staff = lower e, \change Staff = upper e'\change Staff = lower e, \change Staff = upper e' \change Staff = lower e, \change Staff = upper e' \change Staff = lower e, \change Staff = upper e' \change Staff = lower e, \change Staff = upper e' \change Staff = lower e, \change Staff = upper |
    e'4->-4 \stemNeutral d' c8-. b-. a-. gis-.-4 |
    f!4( e8) r r4 b'8. b16 |
    c8 b r b16 b b4 b8 b16 b |
    << {d4-5( c8-4) r r4 r} \\ {r <a e>4\< ~ <e gis d'> ~ <e a c>\!} >> | % 4.1 - 84
    << {<b' f'!>2( gis4.) gis8} \\ {f!2 r} >> |
    b8( a) <a e>4(^\markup{\italic "adagio."} <b f>8) r16 b_3 ais-._2[ b-._1 c-. d-.] |
    e1->\fermata( |
    \bar ".|"
    \time 6/8
    \once\override TextScript #'padding = #'1.5
    e,4-1)^\markup{\line {\bold "Andante mosso ("\note #"4" #1 \bold " = 60)"}} f'8->-5 e b d |
    \noBreak
    c8-.-3 a16\( b c a\) b8-.-4 gis16\( a b gis\) | % 4.2 - 89
    a8 r r r4 \once\override TextScript #'padding = #'1.5 e8^\markup{\italic "legato è dolente è" \dynamic "pp"} |
    \noBreak
    c'8-.-4 c4-> ~ c8 a16\( b c a\) |
    c8-. c4-> ~ c8 a16\( b c a\) |
    b8 b4->-4 ~ b8 gis16-2\( a b gis\) |
    a4.-3 ~ a8 e' e, | % 4.3 - 94
    c'8-.-4 c4-> ~ c8 a16\( b c a\) |
    c8-. c4-> ~ c8 a16\( b c a\) |
    b8 b4-> ~ b8 gis16\( a b gis-2\) |
    a4.-1 ~ a8\( b c\) |
    <g' e g,>4.\(\pp <a f a,>4 <a f a,>8\) | % 4.4 - 99
    <g e g,>4.\( <f d f,>8-^ <g e g,>-^ <a f a,>-^\) |
    <g e g,>4.->\( <f d f,>8-^ <g e g,>-^ <a f a,>-^\) |
    \set doubleSlurs = ##t
    <g e g,>4.( <e c e,>8) r g,-1 |
    \unset doubleSlurs
    <g' e g,>4.\( <a f a,>4 <a f a,>8\) |
    <g e g,>4.\( <f d f,>8-^ <g e g,>-^ <a f a,>-^\) |
    <g e g,>4.\( <f d f,>8 <a f a,>-> <g e g,>\) | % 4.5 - 105
    <e c e,>8 e4->-5\> ~ e8 d4-> ~ |
    d8 c4-> ~ c8\!\pp <a a'>16\( <b b'> <c c'> <a a'>\) |
    <b b'>8 <e e,>4 r8 a,16-2\( b c a\) |
    b8-3 e,4 r8 <a a'>16\( <b b'> <c c'> <a a'>\) |
    <b b'>8 <e e'>4 r8 a,16-2\( b c a\) |
    b4.-1 \once \override Script #'script-priority = #-100 bis-2\fermata | % 4.6 - 111
    cis8-3_\markup{\dynamic "pp" \italic "e legg."} cis4-> ~ cis8 a16\( b cis a\) |
    cis8_\markup{\italic "cresc."} cis4-> ~ cis8 a16\( b cis a\) |
    cis8->\< cis4 ~ cis8 bis16\( cis d cis\)\! |
    e4.->-5^\markup{\italic "con fuoco"}( d4)( cis8) |
    cis4.( b8)-1\< ais16-2\( b-1 cis d\)\! | % 5.1 - 116
    fis4.->-5( e4) a,8 |
    fis'4.-5\> ~ fis8 e d\! |
    cis8 a'4->-5 ~ a8 a16-4( g!-3) f!8-2 ~ |
    f8-4 e16-3( d-2) c8->-1 ~ c8 b16-2\( c-3 d b\) |
    a8 a'4-> ~ a8 a16( g!) f!8-> ~ | % 5.2 - 121
    f8 e16( d) c8-> ~ c b16\( c d b\) |
    \stemDown a8-.-1 a16\( b c a\) \stemNeutral e'8-. a,16\(^\markup{\italic "allarg."} b c a\) |
    e'8-.^\markup{\italic "morendo"} a,16\( b c a\) e'8-. a,16\( b c a\) |
    \once\override DynamicLineSpanner #'padding = #2 a'2.-5\ppp | % 5.3 - 125
    \once\override Staff.OttavaBracket #'padding = #2 #(set-octavation 1) <a c e a>8->\arpeggio\ff #(set-octavation 0) r f^\markup{"1º Tempo"} \once\override DynamicLineSpanner #'padding = #1.5 e(\pp b) d-. |
    c8-. a16\( b c a\) b8-. gis16\( a b gis\) | 
    a8 r r r4 \once\override TextScript #'padding = #'1.5 e8^\markup{\italic "legato è dolente è" \dynamic "pp"} |
    \noBreak
    c'8-. c4-> ~ c8 a16\( b c a\) | % 5.4 - 129
    c8-. c4-> ~ c8 a16\( b c a\) |
    b8 b4-> ~ b8 gis16\( a b gis\) |
    a4. ~ a8 e' e, |
    c'8-. c4-> ~ c8 a16\( b c a\) | % 5.5 - 133
    c8-. c4-> ~ c8 a16\( b c a\) |
    b8 b4-> ~ b8 gis16\( a b gis\) |
    a4. ~ a8\( b c\) |
    <g' e g,>4.\(\pp <a f a,>4 <a f a,>8\) | 
    <g e g,>4.\( <f d f,>8-^ <g e g,>-^ <a f a,>-^\) | % 5.6 - 138
    <g e g,>4.->\( <f d f,>8-^ <g e g,>-^ <a f a,>-^\) |
    \set doubleSlurs = ##t
    <g e g,>4.( <e c e,>8) r g, |
    \unset doubleSlurs
    <g' e g,>4.\( <a f a,>4 <a f a,>8\) |
    <g e g,>4.\( <f d f,>8-^ <g e g,>-^ <a f a,>-^\) |
    <g e g,>4.\( <f d f,>8 <a f a,>-> <g e g,>\) | % 6.1 - 143
    <e c e,>8 e4->\> ~ e8 d4-> ~ |
    d8 c4-> ~ c8\!\pp <a a'>16\( <b b'> <c c'> <a a'>\) |
    <b b'>8 <e e,>4 r8 a,16\( b c a\) |
    b8 e,4 r8 <a a'>16\( <b b'> <c c'> <a a'>\) |
    <b b'>8 <e e'>4 r8 a,16\( b c a\) | % 6.2 - 148
    b4. \once \override Script #'script-priority = #-100 bis\fermata | 
    cis8_\markup{\dynamic "pp" \italic "e legg."} cis4-> ~ cis8 a16\( b cis a\) |
    cis8_\markup{\italic "cresc."} cis4-> ~ cis8 a16\( b cis a\) |
    cis8->\< cis4 ~ cis8 bis16\( cis d cis\)\! | % 6.3 - 152
    e4.->^\markup{\italic "con fuoco"}( d4)( cis8) |
    cis4.( b8)\< ais16\( b cis d\)\! | 
    fis4.->( e4) a,8 |
    fis'4.\> ~ fis8 e d\! | % 6.4 - 156
    cis8 a'4-> ~ a8 a16( g!) f!8 ~ |
    f8 e16( d) c8-> ~ c8 b16\( c d b\) |
    a8 a'4-> ~ a8 a16( g!) f!8-> ~ |
    f8 e16( d) c8-> ~ c b16\( c d b\) |
    \stemDown a8-. a16\( b c a\) \stemNeutral e'8-. a,16\(^\markup{\italic "allarg."} b c a\) | % 6.5 - 161
    e'8-.^\markup{\italic "morendo"} a,16\( b c a\) e'8-. a,16\( b c a\) |
    \once\override DynamicLineSpanner #'padding = #2 a'2.\ppp | %
    \once\override Staff.OttavaBracket #'padding = #2 #(set-octavation 1) <a c e a>8->\arpeggio\f\noBeam #(set-octavation 0) <e, c a>-.\pp\([ <e c a>-. <e c a>-. <e c a>-. <e c a>-.\)] |
    <e c a>2.\fermata | % fin
    \bar "|."
}
lower = \relative c {
    \clef bass
    \key ees \major
    \time 4/4
    \clef treble
    <c'' ees>2 <d f>4 ees |
    <g g,>1\( ~ |
    <g g,>2. <fis fis,>4 |
    <g g,>2\) ~ <g g,>4 r |
    << {<e bes'>2\( <ees a>4 <d g>} \\ {s1} >> | % 1.1 - 5
    << {\once\override Fingering #'extra-offset = #'(0 . -2) g2-1 \once\override Fingering #'extra-offset = #'(0 . -2.5) d-1} \\ {c2-5 a4-3 aes-4} >> |
    << {d2\)} \\ {g,2-5} >> r2 |
    \clef bass
    c,,8-.-5 r <bes' c e g>-. r c,-. r <bes' c e g>-. r |
    f-. r <bes c e g>-. r f-. r <aes c f>-. r |
    g-. r <b d f>-. r g-. r <b d f>-. r | % 1.2 - 10
    c,8-. r <g' b d f>-. r c, r <g' c ees>-. r |
    bes,-. r <g' bes des ees>-. r bes,-. r <g' bes des ees>-. r |
    aes,-. r <g' bes des ees>-. r aes,-. r <aes' c ees>-. r |
    <ees ees,>-. r <bes' des ees g>-. r <ees, ees,>-. r <bes' des ees g>-. r |
    <aes aes,>-. r <c ees aes>-. r f,-. r <c' ees aes>-. r | % 1.3 - 15
    g-. r <d' f g>-. r c,-. r <c' e g>-. r |
    f,-. r <c' f>-. r b, r <b' d f>-. r |
    \set fingeringOrientations = #'(up) <c,-5 ees-3> r <d f> r <ees g> r <ees g> r |
    <f-4 aes-2>-.\( <f aes>-. <f aes>-. <f aes>-.\) <f aes>-.\( <f aes>-. <f aes>-. <f aes>-.\) |
    <ees ges aes c>-.\( <ees ges aes c>-. <ees ges aes c>-. <ees ges aes c>-.\) <ees ges aes c>-.\( <ees ges aes c>-. <ees ges aes c>-. <ees ges aes c>-.\) | % 1.4 - 20
    <des des,>8-.\( aes'-._4 \set fingeringOrientations = #'(down) \once\override Fingering #'extra-offset = #'(0 . -2) <des-2 f-1>-. aes-.\) <des f>-.\( aes-. <des f>-. aes-.\) |
    <des, des,>8-.\( aes'-._5 \once\override Fingering #'extra-offset = #'(0 . -2) <ees'-2 ges-1>-. aes,-.\) <c ges'>-.\( aes-. <c ges'>-. aes-.\) |
    <des, des,>8-.\( aes'-. <des f>-. aes-.\) <des f>-.\( aes-. <des f>-. aes-.\) |
    <des, des,>8-.\( aes'-. <c ges'>-. aes-.\) <c ees ges>-.\( aes-. <c ees ges>-. aes-.\) | % 1.5 - 24
    <des, des,>8 <aes' des f> <aes des f> <aes des f> << {\override Staff.NoteCollision #'merge-differently-headed = ##t e2} \\ {e8-5 <bes' des> <bes des> <bes des>} >> |
    << {f2 g} \\ {f8-5 <aes c> <aes c> <aes c> g <d'! f> <d f> <d f>} >> |
    << {aes2 b} \\ {aes8-4 <c ees> <c ees> <c ees> b <f' aes> <f aes> <f aes>} >> |
    << {c8[ <ees g>] bes <c e> a[ <c f>] aes <c fis>} \\ {c4 bes! a aes} >> | % 2.1 - 28
    <g g,>8 <g c ees> <g c ees> <g c ees> <g g,>8 <g c ees> <g c ees> <g c ees> |
    <g g,> <g b d f> <g b d f> <g b d f> <g g,> <g b d f> <g b d f> <g b d f> |
    <c g ees c> r r4 <f c aes f>8 r r4 | % 2.2 - 31
    g,,8 r <g' c ees> r g, r <g' b d f> r |
    <c g ees c> r r4 <f c aes f>8 r r4 |
    g,,8 r <g' c ees> \once\override TextScript #'padding = #1.5 r^\markup {\italic "allag."} g, r <g' b d f> r | % 2.3 - 34
    <c g ees c>16 r r8 <aes c f>16 r r8 <g c ees>16 r r8 <f  aes c f>16[ r <g b d>] r |
    <c g ees c>16 r r8 <aes c f>16 r r8 <g c ees>16 r r8 <f  aes c f>16[ r <g b d>] r |
    \set fingeringOrientations = #'(right) <ees'-1 g,-2 c,-5>4\arpeggio r8. <ees c aes>16 <ees c g>8 r <ees g, ees> r | % 2.4 - 37
    <ees g, c,>4\arpeggio r8. <ees, c aes>16( <ees c g>8) r <ees g, ees> r |
    <ees g, c,>4\arpeggio r <ees g, c,>\arpeggio r |
    <ees g, c,>2\arpeggio r\fermata |
    \bar "|."
    R1 |
    R1 | % 2.5 - 42
    \bar "||"
    \clef treble
    <c'' ees>2\( <d f>4 ees\) |
    <g g,>1 ~ |
    <g g,>2. <fis fis,>4-> |
    <g g,>2 r |
    R1 | % 2.6 - 47
    \clef bass
    R1 |
    <aes,,! ees! c aes!>1 ~ |
    <aes ees c aes>2 r |
    R1 | % 3.1 - 51
    des,8-.-^-5 aes'-.-5 <des f>-. aes-. <des f>-. aes-. <des f>-. aes-. |
    des,-.-^ aes'-. <c ges'>-. aes-. <c ees>-. aes-. <c ees>-. aes-. |
    des,-.-^ aes'-. <des f>-. aes-. <des f>-. aes-. <des f>-. aes-. |
    des,-.-^ aes'-. <c ges'>-. aes-. <c ges'>-. aes-. <c ges'>-. aes-. | % 3.2 - 55
    <des aes f des>4 r r2 |
    <a e cis>2 r |
    <a e c!>4 r <a fis dis b> r |
    <g e>4 r r2 | % 3.3 - 59
    <c a fis d!>4 r r2 |
    \bar "||"
    \time 3/8
    \key g \major
    \once\override DynamicLineSpanner #'padding = #3
    \repeat "tremolo" 12 {<b g>64^\ppp d} |
    \once\override TextScript #'padding = #3.5
    \repeat "tremolo" 12 {<b g>64^\markup{\italic "sotto voce."} d} |
    \noBreak
    \repeat "tremolo" 12 {<c a g>64 d} |
    \repeat "tremolo" 12 {<c a g>64 d} |
    \repeat "tremolo" 12 {<b g>64 d} | % 3.4 - 65
    \repeat "tremolo" 12 {<b g>64 d} |
    \repeat "tremolo" 12 {<c a g>64 d} |
    \repeat "tremolo" 12 {<c a g>64 d} |
    \repeat "tremolo" 12 {<b g>64 d} |
    \set fingeringOrientations = #'(up)
    \repeat "tremolo" 12 {<c-2 g-5>64 ees-1} |
    \repeat "tremolo" 12 {<b g>64 d} |
    \repeat "tremolo" 12 {<c g>64 ees} | | % 3.5 - 72
    \repeat "tremolo" 12 {<b g>64 d} |
    \repeat "tremolo" 12 {<g, e! c>64 c} |
    \repeat "tremolo" 12 {<g d>64 b} |
    <a fis d>8 r r |
    \bar "||"
    \key c \major
    \time 4/4
    << {<a fis dis>1} \\ {<c,! c,!>1->} >> |
    R1 | % 3.6 - 78
    <b dis fis a>1\pp |
    \stemDown e,4. f!16 fis g4._1 a16_3 ais |
    << {\stemExtend gis'4} \\ {<e b>4->} >> r r2 |
    R1*2 |
    r4 c'-1 b a | % 4.1 - 84
    <gis d'>2 r |
    \set doubleSlurs = ##t
    r4 <c c,>( <d d,>8) r r4 |
    R1^\markup{\musicglyph #"scripts.ufermata" } |
    \bar ".|"
    \time 6/8
    r4 r8 <d b gis e> r r |
    <c a e> r r <b gis e> r r | % 4.2 - 89
    a,8 <e' a c>-. <e a c>-. <e a c>-. r r |
    a,8 <e' a c>-. <e a c>-. <e a c>-. r r |
    a,8 <e' a c>-. <e a c>-. <e a c>-. r r |
    e,8 <e' gis d'>-. <e gis d'>-. <e gis d'>-. r r |
    a,8 <e' a c>-. <e a c>-. <e a c>-. r r | % 4.3 - 94
    a,8 <e' a c>-. <e a c>-. <e a c>-. r r |
    a,8 <e' a c>-. <e a c>-. <e a c>-. r r |
    e,8 <e' gis d'>-. <e gis d'>-. <e gis d'>-. r r |
    a,8 <e' a c>-. <e a c>-. <e a c>-. r r |
    c8 <g' c e>-. <g c e>-. c, <a' c f>-. <a c f>-. | % 4.4 - 99
    g, <g' b f'>-. <g b f'>-. g, <g' b f'>-. <g b f'>-. |
    g, <g' b f'>-. <g b f'>-. g, <g' b f'>-. <g b f'>-. |
    c, <g' c e> <g c e> c, <g' c e> <g c e> |
    c, <g' c e>-. <g c e>-. c, <a' c f>-. <a c f>-. |
    g, <g' b f'>-. <g b f'>-. g, <g' b f'>-. <g b f'>-. |
    g, <g' b f'>-. <g b f'>-. g, <g' b f'>-. <g b f'>-. | % 4.5 - 105
    c, <g' c e>-. <g c e>-. b, <gis' d' e>-. <gis d' e>-. |
    a, <a' c e>-. <a c e>-. f <a c dis>-. <a c dis>-. |
    e <gis b>-. <gis b>-. e <a c e>-. <a c e>-. |
    e <gis b>-. <gis b>-. e <a c e>-. <a c e>-. |
    e <gis b e>-. <gis b e>-. e <a c e>-. <a c e>-. |
    <e gis b e>8 r r r4\fermata r8 | % 4.6 - 111
    <a e cis a>8-.\( <a e cis a>-. <a e cis a>-.\) <a e cis a>-.\( <a e cis a>-. <a e cis a>-.\) |
    <a fis cis a>-.\( <a fis cis a>-. <a fis cis a>-.\) <a fis cis a>-.\( <a fis cis a>-. <a fis cis a>-.\) |
    <a g! cis, a>-.\( <a g cis, a>-. <a g cis, a>-.\) <a g cis, a>-.\( <a g cis, a>-. <a g cis, a>-.\) |
    <e' ais, fis d>-.\( <e ais, fis d>-. <e ais, fis d>-.\) <d b fis d>-.\( <d b fis d>-. <d b fis d>-.\) |
    <dis cis a fis>-.\( <dis cis a fis>-. <dis cis a fis>-.\) <dis b a fis>-.\( <dis b a fis>-. <d b a f>-.\) | % 5.1 - 116
    <cis a e>-.\( <cis a e>-. <cis a e>-.\) <cis a e>-.\( <cis a e>-. <c a e>-.\) |
    <d b gis e> <d b gis e> <d b gis e> <d b gis e> r r |
    <a e cis a> r r <a f! d> r r |
    <c! a e> r r <d gis, e> r r |
    <c! a> r r <a f! d> r r | % 5.2 - 121
    <c! a e> r r <d gis, e> r r |
    <c! a> r r <e c a> r r |
    <c a e> r r <a e c> r r |
    R2. | % 5.3 - 125
    \stemNeutral <a, a,>8-> r r \stemDown <e' gis b d> r r |
    <c' a e> r r <b gis e> r r | 
    a,8 <e' a c>-. <e a c>-. <e a c>-. r r |
    a,8 <e' a c>-. <e a c>-. <e a c>-. r r | % 5.4 - 129
    a,8 <e' a c>-. <e a c>-. <e a c>-. r r |
    e,8 <e' gis d'>-. <e gis d'>-. <e gis d'>-. r r |
    a,8 <e' a c>-. <e a c>-. <e a c>-. r r | 
    a,8 <e' a c>-. <e a c>-. <e a c>-. r r | % 5.5 - 133
    a,8 <e' a c>-. <e a c>-. <e a c>-. r r |
    e,8 <e' gis d'>-. <e gis d'>-. <e gis d'>-. r r |
    a,8 <e' a c>-. <e a c>-. <e a c>-. r r |
    c8 <g' c e>-. <g c e>-. c, <a' c f>-. <a c f>-. | 
    g, <g' b f'>-. <g b f'>-. g, <g' b f'>-. <g b f'>-. | % 5.6 - 138
    g, <g' b f'>-. <g b f'>-. g, <g' b f'>-. <g b f'>-. |
    c, <g' c e> <g c e> c, <g' c e> <g c e> |
    c, <g' c e>-. <g c e>-. c, <a' c f>-. <a c f>-. |
    g, <g' b f'>-. <g b f'>-. g, <g' b f'>-. <g b f'>-. |
    g, <g' b f'>-. <g b f'>-. g, <g' b f'>-. <g b f'>-. | % 6.1 - 143
    c, <g' c e>-. <g c e>-. b, <gis' d' e>-. <gis d' e>-. |
    a, <a' c e>-. <a c e>-. f <a c dis>-. <a c dis>-. |
    e <gis b>-. <gis b>-. e <a c e>-. <a c e>-. |
    e <gis b>-. <gis b>-. e <a c e>-. <a c e>-. |
    e <gis b e>-. <gis b e>-. e <a c e>-. <a c e>-. | % 6.2 - 148
    <e gis b e>8 r r r4\fermata r8 | 
    <a e cis a>8-.\( <a e cis a>-. <a e cis a>-.\) <a e cis a>-.\( <a e cis a>-. <a e cis a>-.\) |
    <a fis cis a>-.\( <a fis cis a>-. <a fis cis a>-.\) <a fis cis a>-.\( <a fis cis a>-. <a fis cis a>-.\) |
    <a g! cis, a>-.\( <a g cis, a>-. <a g cis, a>-.\) <a g cis, a>-.\( <a g cis, a>-. <a g cis, a>-.\) | % 6.3 - 152
    <e' ais, fis d>-.\( <e ais, fis d>-. <e ais, fis d>-.\) <d b fis d>-.\( <d b fis d>-. <d b fis d>-.\) |
    <dis cis a fis>-.\( <dis cis a fis>-. <dis cis a fis>-.\) <dis b a fis>-.\( <dis b a fis>-. <d b a f>-.\) | 
    <cis a e>-.\( <cis a e>-. <cis a e>-.\) <cis a e>-.\( <cis a e>-. <c a e>-.\) |
    <d b gis e> <d b gis e> <d b gis e> <d b gis e> r r | % 6.4 - 156
    <a e cis a> r r <a f! d> r r |
    <c! a e> r r <d gis, e> r r |
    <c! a> r r <a f! d> r r | 
    <c! a e> r r <d gis, e> r r |
    <c! a> r r <e c a> r r | % 6.5 - 161
    <c a e> r r <a e c> r r |
    R2. | 
    \stemUp <a, a,>8-> \stemDown a-.\([ a-. a-. a-. a-.\)] |
    \stemUp a2.\fermata | % fin
    \bar "|."
}
\score {
    \new PianoStaff <<
        \new Staff = upper { \upper } 
        \new Staff = lower { \lower }
       >>
       \layout {
        \context {
            \Staff
            \consists Span_arpeggio_engraver
        } 
       }
        \midi { }
     }

\paper {
    first-page-number = 112
    print-first-page-number = ##t
    ragged-last-bottom = ##f
    %#(set-paper-size "a4")
}
