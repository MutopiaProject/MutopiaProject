\version "2.10.33"
\header {
    title = \markup \center-align { \bigger "La Traviata" " " }
    subtitle = "Scena e duetto"
    subsubtitle = \markup {\italic "«Parigi ò cara noi lasceremo»"}
    composer = "G. Verdi"
    arranger = "Transcripción de N. Toledo"
    piece = "Nº 17"

    %copyright = "Calcografía de la 'Nueva Biblioteca Musical Económica', 1857-1869"
    % Mutopia headers
    mutopiatitle = "La Traviata - N17 Scena e duetto"
    mutopiacomposer = "VerdiG"
    mutopiainstrument = "Piano"
    source = "Calcografía de la 'Nueva Biblioteca Musical Económica', 1857-1869"
    style = "Romantic"
    copyright = "Public Domain"
    maintainer = "Alberto Corella"
    maintainerEmail = "ppiano@telefonica.net"
 footer = "Mutopia-2008/08/12-1518"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
stemExtend = \once \override Stem #'length = #20
noFlag = \once \override Stem #'flag-style = #'no-flag
stemExtendOn = \override Stem #'length = #20
noFlagOn = \override Stem #'flag-style = #'no-flag
stemExtendOff = \revert Stem #'length
noFlagOff = \revert Stem #'flag-style

upper = \relative c'' {
    \clef treble
    \key g \major
    \time 4/4
    \once\override MultiMeasureRestText #'padding = #1.5
    R1^\markup{\line {\bold "Allegro assai vivo. ("\note #"4" #1 \bold " = 108)"}} 
    r4 \once\override DynamicLineSpanner #'padding = #2 r8.\pp d,16 d'4 r8. <cis cis'>16 |
    <c! c'!>4 r8. <b b'>16 <ais ais'>4 r8. <a a'>16 |
    <gis gis'>4 r8. <g g'>16 <fis fis'>4 r8. <f f'>16 | % 1.1 - 4
    <e e'>4 r8. <ees ees'>16 <d d'>4 r8. <cis cis'>16 |
    <d d'>4 r8. <d d'>16 <d' d'>4 r8. <cis cis'>16 |
    <c! c'!>4 r8. <b b'>16 <ais ais'>4 r8. <a a'>16 |
    <gis gis'>4 r8. <g g'>16 <fis fis'>4 r8. <f f'>16 | % 1.2 - 8
    <e e'>4 r8. <ees ees'>16 <d d'>4 r8. <cis cis'>16 |
    <d d'>4 r8. <d d'>16 <c' c'>4 r8. <b b'>16 |
    <a a'>4 r8. <g g'>16 <fis fis'>4 r8. <e e'>16 |
    <dis dis'>4 r8. <c c'>16 <b b'>4 r8. <a' a'>16 | % 1.3 - 12
    <a a'>4 r8. <gis gis'>16 <g g'>4 r8. <fis fis'>16 |
    <e e'>4 r8. <b b'>16 <c' c'>4 r8. <b b'>16
    <a a'>4 r8. <g g'>16 <fis fis'>4 r8. <e e'>16 |
    <dis dis'>4 r8. <c c'>16 <b b'>4 r8. <a' a'>16 | % 1.4 - 16
    <a a'>4 r8. <g g'>16 <a a'>4 r8. <g g'>16 |
    <a a'>4 r8. <g g'>16 <a a'>4 r8. <g g'>16 |
    <a a'>4 r8. <e e'>16 <fis fis'>4 r8. <e e'>16 |
    <fis fis'>4 r8. <e e'>16 <fis fis'>4 r8. <e e'>16 | % 1.5 - 20
    \once\override DynamicLineSpanner #'padding = #2
    cis'8.\pp[ b16 cis8. b16] cis8.[ b16 cis8. b16] |
    cis8.[ b16 cis8. b16] cis8.[ b16 cis8. b16] |
    cis8.[ b16 cis8. b16] \once\override DynamicLineSpanner #'padding = #1 cis8.[\< b16 cis8. b16] |
    cis8.[ b16 cis8. b16] cis8.[ b16 cis8. b16] | % 2.1 - 24
    cis8.[ b16 cis8. b16] cis8.[ b16 cis8. b16] |
    cis8.[ b16 cis8. b16] cis8.[ b16 cis8. b16] |
    <gis' b e>8\!\ff e <gis b e> e <gis b e> e <gis b e> e |
    <gis b e> e <gis b e> e <gis b e> e <gis b e> e |
    <gis b e>4 gis\(-3 a gis | % 2.2 - 29
    fis e dis cis |
    <cis cis,> b ais b |
    c! dis, cis'4.\)\fermata b8 |
    \bar "|."
    \key e \major
    e,8 r r4 r8 gis-2 gis a |
    ais4\( \once\override Fingering #'avoid-slur = #'inside b4.-1 cis8 dis e\)-1 | % 2.3 - 34
    eis4 fis r8 <cis cis'>\( <e e'!> <dis dis'> |
    <cis cis'>4  <b b'>4. <a a'>8 <cis cis'> <b b'> |
    <a a'>4 <gis gis'>\) r8 gis gis a |
    \stemDown ais8.\( b16 \stemNeutral b4. cis8 dis e | % 2.4 - 38
    eis4 fis4.\) cis8\( e dis |
    cis8. b16 b4.\) a8\( cis b |
    a4 gis\) r8 <gis gis'>\( <gis gis'> <e' e'> |
    <e e'>4 <dis dis'>4. <bis bis'>8 <cis cis'> <dis dis'> | % 2.5 - 42
    <fis fis'>4 <e e'>4.\) <cis cis'>8\( <dis! dis'!> <e e'> |
    <e e'> <dis! dis'!> <b b'>4.->\) <fis fis'>8 <g g'> <fis fis'> |
    <b b'>4 r r8 dis\( e fis | % 2.6 - 45
    fis2\)( a,8) a\( b cis |
    \once\override Fingering #'avoid-slur = #'inside
    cis2-4 b8\) gis a b |
    b4. a8 b4. a8 |
    gis4 r r8 dis'\( e fis | % 3.1 - 49
    fis2\)( a,8) a\( b cis |
    cis2 b8\) gis a b |
    b4. a8 b4. a8 |
    gis4 r8 gis gis'4.->( fis8) | % 3.2 - 53
    fis4.->( e8) e4.->( dis8) |
    dis4.->( cis8) dis4.->( cis8) |
    cis\( b gis4\) r8 b-5 a fis |
    gis4 r8 gis gis'4.->( fis8) | % 3.3 - 57
    fis4.->( e8) e4.->( dis8) |
    dis4.->( cis8) dis4.->( cis8) |
    cis-.\< b-. gis-. e'-. e-. dis-. b-. fis'-. |
    fis-. e-. b-. gis'-. gis-.\! fis-. b,-. b-. | % 3.4 - 61
    <b gis' b>4->\ff <ais fisis' ais>-> <a fis' a>-> <gis e' gis>-> |
    <gis e' gis>8 <fis dis' fis> << {<fis' a>2\fermata <dis a>4} \\ {<dis a>4 b\rest\fermata r} >> |
    <e gis,>4-> <gis b, gis>-> <gis b, gis>-> <gis b, gis>-> |
    <gis b, gis>2-> <gis b, gis>-> |
    <gis b, gis> r |
    R1 |
    <aes ees c! aes>1 ~ | % 3.5 - 68
    <aes ees c! aes> |
    << {g1\(} \\ {<des bes>1} \\ {\stemDown g,_\(} >> |
    << {f'2 g\)} \\ {<des bes>1} \\ {\stemDown f,2 g\)} >> |
    R1^\markup{\musicglyph #"scripts.ufermata"} |
    \bar "|."
    \key aes \major
    \time 3/8
    \once\override MultiMeasureRestText #'padding = #2 
    R4.^\markup{\line {\bold "Andante mosso. ("\note #"8" #1 \bold " = 100)"}} |
    \noBreak
    R4. |
    R4. | % 3.6 - 75
    \once\override TextScript #'padding = #1.5
    c16.^\markup{\italic "dolciss."}-3\pp\([ des32] c8 aes\)-2 |
    c16.\([ des32] c8 aes\) |
    c16.\([ des32] c8 f\)-5 |
    ees4( des16) r |
    bes16.-2\([ c32] bes8 c |
    ees4_5 des8\) | % 4.1 - 81
    bes16.-2\([ c32] bes8 des |
    c4 aes8\) |
    c16.\([ des32] c8 aes\) |
    c16.\([ des32] c8 aes\) |
    c16.\([\< des32] c8 f\)\! |
    ees4( des16) r |
    bes16.\([\< c32] bes8 c\! | % 4.2 - 88
    ees4 des8\) |
    bes16.\([ c32] bes8 c\)-3 |
    aes4.-1 |
    f'16.^\f\(-4[ e32] f8 g\) |
    f4( e8) |
    ees!16.-2[\( d32] ees8 f\) |
    ees4( d8) | % 4.3 - 95
    des!16.-2[\( c32] des8 ees\) |
    c^\f( aes'4) |
    \stemDown
    \once\override DynamicLineSpanner #'padding = #2 bes,!16.-2^\pp\([ a32] \stemNeutral bes8 c\) |
    aes4. |
    c16.\([ des32] c8 aes\) |
    c16.\([ des32] c8 aes\) |
    c16.\([\< des32] c8 f\)\! | % 4.4 - 102
    ees4(\> des16) r\! |
    bes16.\([\< c32] bes8 c\! |
    ees4 des8\) | 
    bes16.\([ c32] bes8 des |
    c4 aes8\) |
    c16.\([ des32] c8 aes\) |
    c16.\([ des32] c8 aes\) | % 4.5 - 109
    c16.\([\< des32] c8 f\)\! |
    ees4( des16) r |
    bes16.\([ c32] bes8 c | 
    ees4 des8\) |
    bes16.\([ c32] bes8 c\) |
    aes4. | % 4.6 - 115
    << {f'16.[\( e32] f8 g\)} \\ {des4.-2(} >> |
    << {f4( e8)} \\ {c8)-1 r r} >> |
    << {ees!16.-4\([ d32] ees8 f\)} \\ {a,4.(} >> |
    << {ees'4( d8)} \\ {bes8-2) r r} >> |
    << {\once\override DynamicLineSpanner #'padding = #2 des!16.-3\([\< c32] des8 ees\)\!} \\ {g,4.} >> |
    << {c8( aes'4)} \\ {aes,8\> r r\!} >> | % 5.1 - 121
    bes16.-2\pp\([ a32] bes8 c->\) |
    \repeat "volta" 2 {
        <aes'-5 aes,>8\( g f |
        ees d des-3\) |
        c-2\( \grace {des16[ c b c]} \once\override Fingering #'avoid-slur = #'inside f8-5 ees\) | % 5.2 - 125
        ees16.->-4\([ \once\override Fingering #'avoid-slur = #'inside des32-3] bes16-2\)\noBeam << {d16-. ees-. e-.} \\ {<bes g>16-. <bes g>-. <bes g>-.} >> |
        << {f'16-. fes-.-> ees-. d-. ees-. e-.} \\ {<des bes g>-. <des bes g>-. <des bes g>-. <d bes g>-. <des bes g>-. <des bes g>-. } >> |
        << {f16-. fes-.-> ees-. d-. ees-. e-.} \\ {<des bes g>-. <des bes g>-. <des bes g>-. <d bes g>-. <des bes g>-. <des bes g>-. } >> |
        << {f16-. fes-.-> ees-. d-. des-. bes-.} \\ {<des bes g>-. <des bes g>-. <des bes g>-. g,-. g-. g-.} >> | % 5.3 - 129
        << {aes'8-5\( g f} \\ {<c aes>8 r r} >> |
        << {\stemDown ees d des\)} \\ {s4.} >> |
        c8\( \grace {des16[ c b c]} f8 ees\) |
        ees16.->\([ des32] bes16\)\noBeam << {d16-. ees-. e-.} \\ {<bes g>16-. <bes g>-. <bes g>-.} >> | % 5.4 - 133
        << {f'16-. fes-.-> ees-. d-. ees-. e-.} \\ {<des bes g>-. <des bes g>-. <des bes g>-. <d bes g>-. <des bes g>-. <des bes g>-. } >> |
        << {f16-. fes-.-> ees-. d-. ees-. e-.} \\ {<des bes g>-. <des bes g>-. <des bes g>-. <d bes g>-. <des bes g>-. <des bes g>-. } >> |
        << {f16-. fes-.-> ees-. d-. des-. bes-.} \\ {<des bes g>-. <des bes g>-. <des bes g>-. g,-. g-. g-.} >> |
        << {ces8 des ees} \\ {aes,8 r r} >> | % 5.5 - 137
        << {fes'4.-5} \\ {r16 ges,-._1 aes-._2 bes-._3 c-._1 des-.} >> |
        << {ees8 f! ges} \\ {ces,4 r8} >> |
        << {aes'4.->-5} \\ {r16 bes,-. c!-. d-. ees-. f-.} >> |
        \set fingeringOrientations = #'(up) \acciaccatura {<f-3 aes-5>8} <ees-2 g-4>16->( <d fis>) <ees g>-. <c-1 aes'-5>-> <des-2 f-4>-. <bes g'>-> | % 6.1 - 141
        \acciaccatura {<des-3 f-5>8} <c-2 ees-4>16( <b d>) <c ees>-. <a-1 f'-5>-> <bes-2 des-4>-. <g ees'-5>-> |
        \acciaccatura {<bes des>8} <aes c>16( <g b>) <aes c> -. <ges ees'>-> <f des'>-. \once\override Fingering #'extra-offset = #'(0 . 2) <fes-1 bes-4>-> |
        <ees aes>16\pp\( ees <c' ees>8. <bes des>16\) |
    }
    <aes c ees>16-.\pp <aes c d>-. <aes c ees>-. <aes c e>-. <aes c f>-. <aes c fes>-. |
    << {<des ees>8 <des f> <des ees>} \\ {g,8 r r} >> | % 6.2 - 146
    << {<c ees>16\noBeam} \\ {aes16} >> d,16 ees e f fes |
    \cadenzaOn
    <des ees>8\noBeam ees8\noBeam\fermata ~ ees8[ fes-1_>_\markup{\italic "a piacere"} g bes] des[-> fes->-1] aes4->( g8) r16^\markup{\dynamic "pp"}\pp << {d16-.-1\( ees-. e-.} \\ {<bes g>-.\( <bes g>-. <bes g>-.} >> 
    \cadenzaOff
    \bar "|"
    \set Score.currentBarNumber = #149
    << {f'16-. fes-. ees-. d-. ees-. e-.} \\ {<des bes g>-. <des bes g>-. <des bes g>-. <d bes g>-. <des bes g>-. <des bes g>-.} >> | % 6.3 - 149
    \cadenzaOn
    << {f16-.[ fes-.] ees8\)} \\ {<des bes g>16-.[ <des bes g>-.] <des bes g>8\)} >> r8\fermata r16 d,-.^\([ ees-. e-.] f-.[ fes-> ees-. d!-. ees-. e-.] f-.[ fes->] ees8-.\) r r16 << {bes'-.-2\( a-. bes-.\) f'4^\f( ees16) g,-1 fis-2 g-1} \\ {des16-.-4\( c-. des-.\) a'4-2( g16) \change Staff=lower bes,-4 a bes } >> 
    \cadenzaOff
    << {des'4 \noFlag c8\fermata} \\ {f,4 \noFlag ees8\fermata} >> | % 6.4 - 150
    <aes-4 c,-1>16-.\mf \once\override Fingering #'extra-offset = #'(0 . 2.5) <aes-1 c-2 d-3>-. <aes c ees>-. <aes c e>-. <aes c f>-. <aes c fes>-. |
    <aes c ees>-._\markup{\italic "allarg."} <aes c d>-. <aes c ees>-. <aes c e>-. <aes c f>-. <aes c g'>-. |
    <aes c aes'>4.\fermata |
    \bar "|."
    \time 4/4
    aes4_2^\markup{\line {\bold "Allegro. ("\note #"4" #1 \bold " = 120)"}} r8 aes aes4 r8 aes | % 6.5 - 154
    aes2-2\p( g8) des' des des |
    des2-4( c8) b c des |
    c2( bes!8) f' ees des |
    des ces r4 r8 ees-4 ees ees |
    ees bes r4 r8 bes bes bes | % 7.1 - 159
    ces4-4 aes r8 ees' ees ees |
    ees4( d) r8 ces-3 ces ces |
    ces4( bes) r8 bes bes bes |
    bes4( aes) r8 aes aes aes |
    aes4-2 ges8-1 ces-3 des[ ces] r ees | % 7.2 - 164
    des ces r4 r8 ces ces ces |
    ces4( bes) r8 bes bes bes |
    bes4 aes r2 |
    #(define afterGraceFraction (cons 15 16))
    \once\override DynamicLineSpanner #'padding = #2
    \once \override Script #'script-priority = #-100
    \afterGrace des1\trill^\markup{\finger "23"}\< {c16[\( des]\!} |
    ges2\) r4 r8 des-5 | % 7.3 - 169
    \once \override Script #'script-priority = #-100
    \afterGrace aes1\trill^\markup{\finger "23"}\< {g!16[\( aes]\!} |
    ees'2\) r2 |
    \afterGrace f,1\trill\< {e16[\( f]\!} |
    ees'2\) r4 r8 des-5 | % 7.4 - 173
    ces16\( bes aes bes\) ges4-1 r8 des'-2 ees f |
    \bar "||"
    \key c \major
    \once\override DynamicLineSpanner #'padding = #2 fis4(\p fis,) r r8 a\( |
    gis fis\) r4 r r8 fis |
    gis fis r4 r8 fis fis gis | % 7.5 - 177
    a4 fis r r8 fis |
    gis fis r4 r r8 fis |
    fis'2( fis,4) r |
    fis r r2 | % 7.6 - 181
    fis'2.. fis8 |
    <cis cis,>\pp <d d,> <cis cis,> <d d,> <gis, gis,> r <b b,> r |
    <cis cis,> <d d,> <cis cis,> <d d,> <gis, gis,> r <b b,> r |
    <cis cis,> <d d,> <dis dis,> <e e,> <eis eis,> <fis fis,> <g! g,!> <gis gis,> | % 8.1 - 185
    <a a,> <ais ais,> <b b,> <bis bis,> <cis cis,> <d d,> <dis dis,> <eis eis,> |
    <fis cis a fis>2\ff-> <fis d a fis> |
    <fis d b fis> e,4.\fermata d8 |
    d4 cis8 r cis cis r cis |
    fis cis r4 r8 cis-4 cis b | % 8.2 - 190
    b ais r4 ais r |
    cis8 b r4 r8 b ais b |
    d cis r4 r8 cis d e |
    d2( b8) b ais b |
    d cis r4 r8 cis d e | % 8.3 - 195
    d2( b8) <b b'> <cis cis'> <d d'> |
    <e e'>4 <g g'> <fis fis'> <e e'> |
    <e e'> <d d'> <cis cis'> <b b'> |
    <ais ais'> <g! g'!> <fis fis'> <e e'> |
    \once\override TextScript #'padding = #1.5 <d d'>4_\markup{\italic "tutta forza"} r r2 |
    \noBreak
    R1 | % 8.4 - 201
    g2-1 g4. g8 |
    bes2( g4) r |
    g2 a4. bes8 |
    c2 a |
    r4 c-2\( d ees |
    d2^\markup{\finger "35"} d,4. d8 |
    d2.. d8\) | % 8.5 - 208
    g8-3 g16-2( a)-3 a(-2 b)-3 b( c) c( d) d( e) \once\override TextScript #'padding = #1.5 e(_\markup{\italic "cresc."} f) f(-1 fis)-2 |
    \once\override DynamicLineSpanner #'padding = #1.5 g8\< g16( a) a( b) b( c) c( d) d( e) e( f) f( fis)\! |
    \once\override DynamicLineSpanner #'padding = #1 \repeat "tremolo" 4 {<g d b>16\ff g,} \repeat "tremolo" 4 {<g' d b>16 g,} |
    \repeat "tremolo" 4 {<g' d b>16 g,} \repeat "tremolo" 4 {<g' d b>16 g,} |
    <g' d b>4 g,2\fermata r8 g,-2 | % 8.6 - 213
    \bar "|."
    << {\once\override TextScript #'padding = #2 e'4^\markup{\line {\bold "Allegro. ("\note #"4" #1 \bold " = 120)"}} e\( f d} \\ {e,4-._\markup{\italic "legato con espress."} e-. f-. d-.} >> |
    << {e'4 c_3 a_1 b_4\)} \\ {e,4-. s2.} >> |
    g4 b f a |
    g2( e8) r g4 |
    << {e'4\( e f d} \\ {e,4-.\> e-. f-. d-.} >> | % 9.1 - 218
    << {e'4 c a b} \\ {e,4-. s2 s4\!} >> |
    << {\once\override DynamicLineSpanner #'padding = #2 \once\override Fingering #'avoid-slur = #'inside gis4-2\pp b a \once\override TextScript #'padding = #1.5 c\)_\markup{\italic "dim."}} \\ {s1} >> |
    b2( e,4) e'-4 |
    << {\set fingeringOrientations = #'(left) <d-3 f-5>4->\( <cis ais>-> <d b>-> <e c>->\)} \\ {g,1} >> |
    << {g'4.-5( f8)-5 d4-3 d} \\ {\set fingeringOrientations = #'(left) <b-1 g-2>2 <b g>4 r } >> | % 9.2 - 223
    e4-4\(\pp b-1 c d\) |
    e4^\> e2 e4\! |
    <e e,>^\f\( <e e,> <f f,> <d d,>\) |
    <e e,>\> <c c,>^\markup{\dynamic "ff"} a'4.->( g8)\! |
    d4 d \acciaccatura f8 e4. d8 | % 9.3 - 228
    c2 r4 g |
    << {e'\( e f d\)} \\ {e,-.\> r-. f-. d-.} >> |
    << {e'\( c a c\)(} \\ {e,-. s2 s4\!} >> |
    << {g) b( f) a} \\ {s1} >> |
    g2( e8) r g4 | % 9.4 - 233
    << {e'\( e f d\)} \\ {e,-.\> e-. f-. d-.} >> |
    << {e'\( c a b\)} \\ {e,-. s2 s4\!} >> |
    gis\p\( b a c\) |
    b2( e,4) e'^\f |
    << {<d f>4-> <cis ais>-> <d b>-> <e c>->} \\ {g,1} >> | % 9.5 - 238
    << {g'4.->( f8) d4 d\(} \\ {<b g>2 <b g>4 r} >> |
    << {\stemDown \once\override DynamicLineSpanner #'padding = # 1.5 e\pp b c d\)} \\ {s1} >> |
    \once\override DynamicLineSpanner #'padding = # 2 e4\< e2 e4\! |
    <e e,>\f\> <e e,> <f f,>-> <d d,> |
    <e e,> <c c,>\!^\markup{\dynamic "ff"} a'4.->( g8) | % 9.6 - 243
    d4 d \acciaccatura f8-4 e4 d |
    << {g2.-5\( f8 ees\)} \\ {c2-1 r } >> |
    d4-.\( d-. c-. c-.\) |
    << {g'2.-5\( f8 ees\)} \\ {bes4.-3 a8 g4 r} >> | % 10.1 - 247
    d'4-.\( d-. c-. c-.\) |
    b! r8 <ais ais'>-.\( <b b'>-. <c c'>-. <d d'>-. <e e'>-.\) |
    <f f'>8. g,16-2 g8-2 <ais ais'>-.\( <b b'>-. <c c'>-. <d d'>-. <e e'>-.\) |
    <f f'>8. g,16-2 g8-2 <ais ais'>-.\( <b b'>-._\markup{\italic "cresc"} <c c'>-. <d d'>-. <e e'>-.\) | % 10.2 - 251
    <f f'>4.\< <ais, ais'>8-.\( <b b'>-. <c c'>-. <d d'>-. <e e'>-.\)\! |
    <f f'> r <d-2 f-4>2 <c e>4 |
    <c-2 e-4>4.( <b d>8) <b-2 d-4>4.( <a c>8) |
    <a c>4.( <g b>8) <g b>4.->( <f a>8) |
    <f a>4.(_\markup{\italic "allarg."}  <e g>8) <e-1 g-3>4-> <dis-2 fis-4>-> | % 10.3 - 256
    <d! f!>2 r4 g-1 |
    g'-5\( fis f e\) |
    << {g2.-5-> s4} \\ {\once\override TextScript #'padding = #2 e4-3_\markup{\italic "à tempo."} d-> a-> \set fingeringOrientations = #'(up) <g-1 b-2>->} >> |
    <c-3 e-5>4\( \once\override Fingering #'avoid-slur = #'inside e-3 f d\) |
    << {g2-5^\markup{\italic "dolciss."}\( \once\override Fingering #'avoid-slur = #'inside f-5} \\ {e4(-3 c a b\)(} >> |
    << {e2-5\) r} \\ {g,4) b( f) a} >> | % 10.4 - 262
    << { R1 } \\ { g2( e8) r g4 } >>|
    << {s1} \\ {e'4\(\>^\markup{\dynamic "f"} e f d\) } >> |
    << {g2\( f} \\ {e4\( c\! a b\)} >> |
    << {\set fingeringOrientations = #'(up) <e-5 gis,-2>\)\pp( <d-4 b-2>) <c a>_( c)} \\ {s1} >> |
    b2-3( e,4) e' |
    << {<d f>4->\( <cis ais>-> <d b>-> <e c>->\)} \\ {g,1} >> | % 10.5 - 268
    << {g'4. f8 d4 d} \\ {<b g>2 <b g>4 r} >> |
    \once\override DynamicLineSpanner #'padding = #1.5 e4\(\pp b c d\) |
    \once\override DynamicLineSpanner #'padding = #2 e\< e2 e4\! |
    <e e,>^\markup{\dynamic "f"}\> <e e,> <f f,> <d d,> |
    <e e,> <c c,>^\markup{\dynamic "ff"} <f-3 a-5>4. <e g>8\! |
    <d-3 g,-1>4 <d g,> \acciaccatura f8 <e g>4.\fermata <d f>8 | % 10.6 - 274
    \bar "|."
    \once\override TextScript #'padding = #1.5 <c e>4^\markup{\hcenter "Più mosso"} r8 <e e'>-.\( <d d'>-. <c c'>-. <b b'>-. <a a'>-.\) |
    <g g'>4\(\> f' e d |
    d c8\)\! <e e'>-.\( <d d'>-. <c c'>-. <b b'>-. <a a'>-.\) |
    <g' g,>4 f e d | % 11.1 - 278
    cis8-2 <bes bes'>4-> <a a'>8\noBeam <g g'> <bes bes'>4-> <a a'>8 |
    <g g'> <bes bes'>4-> <a a'>8\noBeam <g g'> <bes bes'>4-> <a a'>8 |
    << {cis8-2 d4-> e-> f8} \\ {a,2.-1} >> a8 d |
    \acciaccatura <e-3 g-5>8 <d-2 f-4>8\( <c e> <e g,>4\) r8 g, \acciaccatura b8 a8 g | % 11.2 - 282
    <g bes cis g'>2-> <g bes cis g'>-> |
    <g bes d g>-> <g bes d g>-> |
    <ees'-2 a-5>4 <d-1 g-4> <c-1 f-3> <bes-2 ees!-5> |
    <aes d>-> <g c>-> <d gis b>-> <dis a' c>-> |
    <g g'>4.. <g g'>16 <c c'>4.. <c c'>16 | % 11.3 - 287
    <e e'>4.. <e e'>16 <g g'>4.. <g g'>16 |
    <a a'>8\noBeam <a fis ees c a>16 <a fis ees c a> <a fis ees c a>8 <a fis ees c a> <a fis ees c a> <a fis ees c a> <a fis ees c a> <a fis ees c a> |
    <a fis ees c a>4-> <a fis ees c a>-> <a fis ees c a>-> <a fis ees c a>-> |
    \repeat "tremolo" 4 {<a f! d>16 b,} \repeat "tremolo" 4 {<a' f d>16 b,} |
    \cadenzaOn
    <b d f a>2 << {a'4-5} \\ {a,4-1} >>
    \cadenzaOff
    << {g'4 f e8 \acciaccatura g8 f4\fermata \noFlag d8} \\ {g,4 f e8-4 f4\fermata \noFlag d8} >> | % 11.4 - 292
    c'8 <c c'>16( <b b'>) <c c'>8 <c c'> <c c'> <c c'> <c c'> <c c'> |
    <c c'> <e e'>16( <dis dis'>) <e e'>8 <e e'> <e e'> <e e'> <e e'> <e e'> |
    <e e'>4 r r2\fermata |
    <c c,>1\fermata | % fin
    \bar "|."
}
lower = \relative c {
    \clef bass
    \key g \major
    \time 4/4
    << {d,8 d' d d d, d' d d} \\ {d,4 r d r} >> |
    << {d8 d' d d d, d' d d} \\ {d,4 r d r} >> |
    d'8 <fis c'> <fis c'> <fis c'> d <fis c'> <fis c'> <fis c'> |
    d <fis c'> <fis c'> <fis c'> d <fis c'> <fis c'> <fis c'> | % 1.1 - 4
    d <g b> <g b> <g b> d <g b> <g b> <g b> |
    d <g b> <g b> <g b> d <g b> <g b> <g b> |
    d <fis c'> <fis c'> <fis c'> d <fis c'> <fis c'> <fis c'> |
    d <fis c'> <fis c'> <fis c'> d <fis c'> <fis c'> <fis c'> | % 1.2 - 8
    d <g b> <g b> <g b> d <g b> <g b> <g b> |
    d <g b> <g b> <g b> d <g b> <g b> <g b> |
    b, <dis a'> <dis a'> <dis a'> b <dis a'> <dis a'> <dis a'> |
    b <dis a'> <dis a'> <dis a'> b <dis a'> <dis a'> <dis a'> | % 1.3 - 12
    b <e g> <e g> <e g> b <e g> <e g> <e g> |
    b <e g> <e g> <e g> b <e g> <e g> <e g> |
    b <dis a'> <dis a'> <dis a'> b <dis a'> <dis a'> <dis a'> |
    b <dis a'> <dis a'> <dis a'> b <dis a'> <dis a'> <dis a'> | % 1.4 - 16
    c <e g c> <e g c> <e g c> c <e g c> <e g c> <e g c> |
    c <e g c> <e g c> <e g c> c <e g c> <e g c> <e g c> |
    cis <e fis ais> <e fis ais> <e fis ais> cis <e fis ais> <e fis ais> <e fis ais> |
    cis <e fis ais> <e fis ais> <e fis ais> cis <e fis ais> <e fis ais> <e fis ais> | % 1.5 - 20
    b <e gis b> <e gis b> <e gis b> b <e gis b> <e gis b> <e gis b> |
    b <dis fis a b> <dis fis a b> <dis fis a b> b <dis fis a b> <dis fis a b> <dis fis a b> |
    \set fingeringOrientations = #'(up)
    b-5 <e-2 gis-1> b <eis gis> b <fis' a> b, <dis-3 fis-2> |
    b <e gis> b <eis gis> b <fis' a> b, <dis fis> | % 2.1 - 24
    b <e gis> b <eis gis> b <fis' a> b, <dis fis> |
    b <e gis> b <eis gis> b <fis' a> b, <dis fis> |
    <b e gis b>4 <b e gis b> <b e gis b> <b e gis b> |
    <b e gis b> <b e gis b> <b e gis b> <b e gis b> |
    <b e gis b> \clef treble gis''-2\( a gis | % 2.2 - 29
    \override Fingering #'avoid-slur = #'inside
    fis e-1 dis cis |
    \clef bass <a dis, b> b-1 ais b |
    c! dis, cis'4.\) b8 |
    \bar "|."
    \key e \major
    << {e,8 s gis s e s gis s} \\ {e-5 \set fingeringOrientations = #'(down) <b'-2 e-1> gis <b e> e, <b' e> gis <b e>} >> |
    << {e,8 s gis s e s gis s} \\ {e <b' e> gis <b e> e, <b' e> gis <b e>} >> | % 2.3 - 34
    << {dis,8 s b s dis s b s} \\ {dis <fis a b> b, <fis' a b> dis <fis a b> b, <fis' a b>} >> |
    << {dis8 s b s dis s b s} \\ {dis <fis a b> b, <fis' a b> dis <fis a b> b, <fis' a b>} >> |
    << {e8 s gis s e s gis s} \\ {e <b' e> gis <b e> e, <b' e> gis <b e>} >> |
    << {e,8 s gis s e s gis s} \\ {e <b' e> gis <b e> e, <b' e> gis <b e>} >> | % 2.4 - 38
    << {dis,8 s b s dis s b s} \\ {dis <fis a b> b, <fis' a b> dis <fis a b> b, <fis' a b>} >> |
    << {dis8 s b s dis s b s} \\ {dis <fis a b> b, <fis' a b> dis <fis a b> b, <fis' a b>} >> |
    << {e8 s gis s e s gis s} \\ {e <b' e> gis <b e> e, <b' e> gis <b e>} >> |
    << {gis,8 s gis s} \\ {gis <fis' gis bis> gis, <fis' gis bis>} >> gis, <fis' gis bis> gis, <fis' gis bis> | % 2.5 - 42
    cis <e gis cis> cis <e gis cis> fis <ais cis e> fis <ais cis e> |
    fis <b dis> fis <b dis> fis <ais cis e> fis <ais cis e> |
    b, <dis fis b> b <dis fis b> b <dis fis b> b <dis fis b> | % 2.6 - 45
    b <dis a' b> b <dis a' b> b <dis a' b> b <dis a' b> |
    b <e gis b> b <e gis b> b <e gis b> b <e gis b> |
    b <dis a' b> b <dis a' b> b <dis a' b> b <dis a' b> |
    b <e gis b> b <e gis b> b <e gis b> b <e gis b> | % 3.1 - 49
    b <dis a' b> b <dis a' b> b <dis a' b> b <dis a' b> |
    b <e gis b> b <e gis b> b <e gis b> b <e gis b> |
    b <dis a' b> b <dis a' b> b <dis a' b> b <dis a' b> |
    << {e8 s gis s dis s gis s} \\ {e8 <b' e> gis <b e> dis, <bis' dis> gis <bis dis>} >> | % 3.2 - 53
    << {cis,8 s gis' s} \\ {cis,8 <cis' e> gis <cis e>} >> \stemDown gis, <dis' fis gis> gis, <dis' fis gis> \stemNeutral |
    a <cis e a> a <cis e a> ais <cis e g> ais <cis e g> |
    b <e gis b> b <e gis b> b <dis fis a> b <dis fis a> |
    << {e8 s gis s dis s gis s} \\ {e8 <b' e> gis <b e> dis, <bis' fis'!> gis <bis fis'>} >> | % 3.3 - 57
    << {cis,8 s gis' s gis, s gis s} \\ {cis8 <cis' e> gis <cis e> gis, <dis' fis bis> gis, <dis' fis bis>} >> |
    << {a8 s a s ais s ais s} \\ {a8 <cis e a> a <cis e a> ais <e' g cis> ais, <e' g cis>} >> |
    << {b8 s b s b s b s} \\ {b8 <e gis b> b <e gis b> b <dis fis a b> b <dis fis a b>} >> |
    << {b8 s b s b s b s} \\ {b8 <e gis b> b <e gis b> b <dis fis a b> b <dis fis a b>} >> | % 3.4 - 61
    <b b,>4 <b b,> <b b,> <b b,> |
    <b b,> <b b,> r2\fermata |
    <e e,>4-> <e e,>-> <e e,>-> <e e,>-> |
    <e e,>2-> <dis dis,>-> |
    <d d,> r |
    R1 |
    <ees c'! ees>1 ~ | % 3.5 - 68
    <ees c'! ees>( |
    <des' ees,>) ~ |
    <des ees,> |
    R1^\markup{\musicglyph #"scripts.ufermata"} |
    \bar "|."
    \key aes \major
    \time 3/8
    aes8-4\p <c-2 ees-1> <c ees> |
    aes <c ees> <c ees> |
    aes <c ees> <c ees> | % 3.6 - 75
    aes <c ees> <c ees> |
    aes <c ees> <c ees> |
    aes <c ees> <c ees> |
    ees, <g des' ees> <g des' ees> |
    ees <g des' ees> <g des' ees> |
    ees <g des' ees> <g des' ees> | % 4.1 - 81
    ees <g des' ees> <g des' ees> |
    aes <c ees> <c ees> |
    aes <c ees> <c ees> |
    aes <c ees> <c ees> |
    aes <c ees> <c ees> |
    ees, <g des' ees> <g des' ees> |
    ees <g des' ees> <g des' ees> | % 4.2 - 88
    ees <g des' ees> <g des' ees> |
    ees <g des' ees> <g des' ees> |
    aes <c ees> <c ees> |
    des, <aes' des f> <bes des g> |
    c, <g' c f> <g c e> |
    f <a c ees> <a c f> |
    bes, <f' bes ees> <f bes d> | % 4.3 - 95
    ees <g bes des!> <g bes ees> |
    <aes aes,> <aes c ees> <aes c ees> |
    ees <g des' ees> <g des' ees> |
    aes <c ees> <c ees> |
    aes <c ees> <c ees> |
    aes <c ees> <c ees> |
    aes <c ees> <c ees> | % 4.4 - 102
    ees, <g des' ees> <g des' ees> |
    ees <g des' ees> <g des' ees> |
    ees <g des' ees> <g des' ees> | 
    ees <g des' ees> <g des' ees> |
    aes <c ees> <c ees> |
    aes <c ees> <c ees> |
    aes <c ees> <c ees> | % 4.5 - 109
    aes <c ees> <c ees> |
    ees, <g des' ees> <g des' ees> |
    ees <g des' ees> <g des' ees> | 
    ees <g des' ees> <g des' ees> |
    ees <g des' ees> <g des' ees> |
    aes <c ees> <c ees> | % 4.6 - 115
    des, <aes' des f> <bes des g> |
    c, <g' c f> <g c e> |
    f <a c ees> <a c f> |
    bes, <f' bes ees> <f bes d> |
    ees <g bes des!> <g bes ees> |
    <aes aes,> <aes c ees> <aes c ees> | % 5.1 - 121
    ees <g des' ees> <g des' ees> | 
    \repeat "volta" 2 {
        aes16-4 \set fingeringOrientations = #'(left) <c-2 ees-1> <c ees> <c ees> ees,-5[ <c' ees>] |
        aes <c ees> <c ees> <c ees> ees,[ <c' ees>] |
        aes <c ees> <c ees> <c ees> ees,[ <c' ees>] | % 5.2 - 125
        bes-3 <des ees> <des ees> <des ees> ees,[ <des' ees>] |
        g, <bes des ees> <bes des ees> <bes des ees> ees,[ <bes' des ees>] |
        g <bes des ees> <bes des ees> <bes des ees> ees,[ <bes' des ees>] |
        ees, <g bes des ees> <g bes des ees> <g bes des ees> ees[ <g bes des ees>] | % 5.3 - 129
        aes <c ees> <c ees> <c ees> ees,[ <c' ees>] |
        aes <c ees> <c ees> <c ees> ees,[ <c' ees>] |
        aes <c ees> <c ees> <c ees> ees,[ <c' ees>] |
        bes <des ees> <des ees> <des ees> ees,[ <bes' des ees>] | % 5.4 - 133
        g <bes des ees> <bes des ees> <bes des ees> ees,[ <bes' des ees>] |
        g <bes des ees> <bes des ees> <bes des ees> ees,[ <bes' des ees>] |
        ees, <g bes des ees> <g bes des ees> <g bes des ees> ees[ <g bes des ees>] |
        <aes aes,> <aes ces ees> <aes ces ees> <aes ces ees> <ces! ces,>[ <aes ces ees>] | % 5.5 - 137
        <ges ges,>\sustainDown <ges bes des fes> <ges bes des fes> <ges bes des fes> <ges ges,>[ <ges bes des fes>]\sustainUp |
        ces, <ges' ces ees> <ges ces ees> <ges ces ees> ees[ <ges ces ees>] |
        <bes bes,>\sustainDown <bes d f> <bes d f> <bes d f> <bes bes,>[ <bes d f>]\sustainUp |
        ees,-. ees'-. ees-. ees-. ees-. ees-. | % 6.1 - 141
        ees,-. ees'-. ees-. ees-. ees-. ees-. |
        <ees aes,>8 r <bes! f des>16 r |
        <c aes ees> r r8 <des bes g ees>16 r |
    }
    <c aes>8 r r |
    <des g, ees> r r | % 6.2 - 146
    << {s16 \stemExtendOn \noFlagOn <aes c>\noBeam <aes c>\noBeam <aes c>\noBeam <aes c>\noBeam <aes c>\noBeam \stemExtendOff  \noFlagOff  } \\ {aes,8 r r} >> |
    \cadenzaOn
    << {\stemExtend \noFlag g'8} \\ {ees8} >> des'8 ~ des2\fermata des8-> des-> fes4_1->( ees8) r16 s8. 
    \cadenzaOff
    \bar "|"
    s4. | % 6.3 - 149
    \cadenzaOn
    s4 r8\fermata\ppp r16 <g, bes>-._\([ <g bes>-. <g bes>-.] <g bes des!>-.[ <g bes des>-. <g bes des>-. <g bes>-. <g bes des>-. <g bes des>-.] <g bes des>-.[ <g bes des>-.] <g bes des>8-.\) r r16 s8. s2 
    \cadenzaOff
    s4. | % 6.4 - 150
    aes,8-.\sustainDown ees'-. ees-. |
    aes,-. ees'-. ees-. |
    aes,4.\fermata\sustainUp |
    \bar "|."
    \time 4/4
    R1 | % 6.5 - 154
    << {\repeat "tremolo" 4 {des'16-2 ees-1} \repeat "tremolo" 4 {des16 ees} } \\ {bes2-3( ees,-5)} >> |
    << {\repeat "tremolo" 4 {c'16-2 ees-1} \repeat "tremolo" 4 {c16 ees} } \\ {aes,2-4( ees-5)} >> |
    << {\repeat "tremolo" 4 {des'16 ees} \repeat "tremolo" 4 {des16 ees} } \\ {g,2( ees)} >> |
    \appoggiatura {ces16-2[\ff bes]} aes8 <aes'-4 ces-2 ees-1>-.\( <aes ces ees>-. <aes ces ees>-.\) \repeat "tremolo" 4 <aes ces ees>8-. |
    \repeat "tremolo" 4 <g bes ees>8-. \repeat "tremolo" 4 <g bes ees>8-. | % 7.1 - 159
    \repeat "tremolo" 4 <f aes ces ees>8-. \repeat "tremolo" 4 <f aes ces ees>8-. |
    \repeat "tremolo" 4 <bes d>8-. \repeat "tremolo" 4 <bes aes'!>8-. |
    \repeat "tremolo" 4 <bes ges'>8-. \repeat "tremolo" 4 <bes ges'>8-. |
    \repeat "tremolo" 4 <bes d f>8-. \repeat "tremolo" 4 <bes d f>8-. |
    \appoggiatura {ees,16[ des]} ces8 <ges' ces ees>-.\( <ges ces ees>-. <ges ces ees>-.\) \repeat "tremolo" 4 <ges ces ees>8-. | % 7.2 - 164
    \repeat "tremolo" 4 <ees' ges>8-. \repeat "tremolo" 4 <ees ges>8-. |
    \repeat "tremolo" 4 <des! ges>8-. \repeat "tremolo" 4 <des ges>8-. |
    \repeat "tremolo" 4 <ces des f>8-. \repeat "tremolo" 4 <ces des f>8-. |
    bes,8 des ges des bes des ges des |
    bes des ges des bes des ges des | % 7.3 - 169
    ees <ges aes> c <ges aes> ees <ges aes> c <ges aes> |
    ees <ges aes> c <ges aes> ees <ges aes> c <ges aes> |
    <f des> aes ces aes <f des> aes ces aes |
    <f des> aes ces aes <f des> aes ces aes | % 7.4 - 173
    <ges des ges,>8 r r4 r2 |
    \bar "||"
    \key c \major
    << {s4 e8 s fis s a s} \\ {<c a dis,>8^> <c a> e,-5 <a c> fis-4 c'-1 a-2 c-1 } >> |
    << {dis,8 s e s fis s a s} \\ {dis,8 <a' c> e <a c> fis c' a c} >> |
    << {dis,8 s e s fis s a s} \\ {dis,8 <a' c> e <a c> fis c' a c} >> | % 7.5 - 177
    << {dis,8 s e s fis s a s} \\ {dis,8 <a' c> e <a c> fis c' a c} >> |
    << {dis,8 s e s fis s a s} \\ {dis,8 <a' c> e <a c> fis c' a c} >> |
    << {cis,8 s eis s fis s a s} \\ {cis,8 <a' cis> eis <a cis> fis cis' ais cis} >> |
    << {bis,8 s dis s bis s dis s} \\ {bis8 <fis' a> dis <fis a> bis, <fis' a> dis <fis a>} >> | % 7.6 - 181
    << {bis,8 s dis s bis s dis s} \\ {bis8 <fis' a> dis <fis a> bis, <fis' a> dis <fis a>} >> |
    cis8_2 d cis d g, r b r |
    cis d cis d gis, r b r |
    cis-2 d-1 dis-3 e eis fis-3 g-1 gis-3 | % 8.1 - 185
    a-1 ais-3 b bis cis d dis eis |
    <fis cis a fis>2-> <d a fis d> |
    <b fis d b> r\fermata |
    <eis, cis>16 gis <eis cis> gis ~ <gis eis cis>8 r <gis cis,>16 b <gis cis,> b ~ <b gis cis,>8 r |
    <fis cis>16 a <fis cis> a ~ <a fis cis>8 r <gis eis cis>16 b <gis eis cis> b ~ <b gis eis cis>8 r | % 8.2 - 190
    << {fis,8_5 fis' fis fis fis, fis' fis fis} \\ {<cis e>1} >> |
    << {fis,8 fis' fis fis fis, fis' fis fis} \\ {<d b>1} >> |
    << {fis,8 fis' fis fis fis, fis' fis fis} \\ {<cis e>1} >> |
    << {fis,8 fis' fis fis fis, fis' fis fis} \\ {<d b>1} >> |
    << {fis,8 fis' fis fis fis, fis' fis fis} \\ {<cis e>1} >> | % 8.3 - 195
    << {fis,8 fis' fis fis fis, fis' fis fis} \\ {<d b>1} >> |
    <fis fis,>8 <fis ais cis e> <fis ais cis e> <fis ais cis e> <fis fis,> <fis ais cis e> <fis ais cis e> <fis ais cis e> |
    <fis fis,> <fis b d> <fis b d> <fis b d> <fis fis,> <fis b d> <fis b d> <fis b d> |
    <fis fis,> <fis ais cis e> <fis ais cis e> <fis ais cis e> <fis fis,> <fis ais cis e> <fis ais cis e> <fis ais cis e> |
    <g g,>1 ~ |
    <g g,>1 | % 8.4 - 201
    R1 |
    <g bes d>\pp ~ |
    <g bes d>
    <c a g ees>\( |
    <g ees a,> |
    <bes g d> |
    <a fis d>\) | % 8.5 - 208
    <g d b g>8 <g d b g> <g d b g> <g d b g> <g d b g> <g d b g> <g d b g> <g d b g> |
    <g d b g> <g d b g> <g d b g> <g d b g> <g d b g> <g d b g> <g d b g> <g d b g> |
    \repeat "tremolo" 4 { <d b g>16 g} \repeat "tremolo" 4 { <d b g>16 g} |
    \repeat "tremolo" 4 { <d b g>16 g} \repeat "tremolo" 4 { <d b g>16 g} |
    <g d b g>4 r r2\fermata | % 8.6 - 213
    \bar "|."
    <g c,>4-. <g c,>-. <a c,>-. <b c,>-. |
    <c c,>-. <g e c>-. <a f c>-. <a f c>-. |
    <g e g,>-. <g e g,>-. <f d g,>-. <f d g,>-. |
    <e c>-. <g e c>-. <g e c>-. <g e c>-. | |
    <g c,>-. <g c,>-. <a c,>-. <b c,>-. | % 9.1 - 218
    <c c,>-. <c g e c>-. <d a f>-. <d a f>-. |
    <e b gis e> <e b gis e> <e c a e> <e c a e> |
    <e b gis e> <b gis e> <b gis e> <b gis e> |
    <g! d' f> <g ais cis> <g b d> <g c e> |
    <g! b d>-> <g b d f>-> <g b d>-> <g b d>-> | % 9.2 - 223
    <e' b gis e> <b gis e> <c a e> <d a e> |
    <e b gis e> <e b gis e> <e b gis e> <e b gis e> |
    <g, c,> <g c,> <a c,> <b g c,> |
    <c g c,> <g e c> <a f c> <g e c> |
    <g b f'> <g b f'> <g b f'> <g b f'> | % 9.3 - 228
    <c e> <c g e c> <c g e c> <c g e c> |
    <g c,>-. <g c,>-. <a c,>-. <b c,>-. |
    <c c,>-. <g e c>-. <a f c>-. <a f c>-. |
    <g e g,>-. <g e g,>-. <f d g,>-. <f d g,>-. |
    <e c>-. <g e c>-. <g e c>-. <g e c>-. | % 9.4 - 233
    <g c,>-. <g c,>-. <a c,>-. <b c,>-. |
    <c c,>-. <c g e c>-. <d a f>-. <d a f>-. |
    <e b gis e>-. <e b gis e>-. <e c a e>-. <e c a e>-. |
    <e b gis e>-. <e b gis e>-. <e b gis e>-. <e b gis e>-. |
    <g, b d f>-> <g ais cis>-> <g b d>-> <g c e>-> | % 9.5 - 238
    <g b d>-> <g b d f>-> <g b d>-> <g b d>-> |
    <e gis b e> <e gis b> <e a c> <e a d> |
    <e gis b e> <e gis b e> <e gis b e> <e gis b e> |
    <g c,> <g c,> <a c,> <b g c,> |
    <c c,> <g e c> <a f c> <g e c> | % 9.6 - 243
    <g b f'> <g b f'> <g b f'> <g b f'> |
    c,8 <g' c ees> <g c ees> <g c ees> c, <g' c ees> <g c ees> <g c ees> |
    d <g bes d> <g bes d> <g bes d> d <fis c' d> <fis c' d> <fis c' d> |
    g <bes d> <bes d> <bes d> c, <g' c ees> <g c ees> <g c ees> | % 10.1 - 247
    d <g bes d> <g bes d> <g bes d> d <fis c' d> <fis c' d> <fis c' d> |
    g <b! d> g <b d> aes <b d f> aes <b d f> |
    g <b d f> g <b d f> aes <b d f> aes <b d f> |
    g <b d f> g <b d f> aes <b d f> aes <b d f> | % 10.2 - 251
    g <b d f> g <b d f> aes <b d f> aes <b d f> |
    <g b d f>4 r r2 |
    R1 |
    R1 |
    R1 | % 10.3 - 256
    R1 |
    R1 |
    R1 |
    <g e c>4-. <g e c>-. <a f c>-. <b g c,>-. |
    <c g c,>-. <g e c>-. <a f c>-. <a f c>-. |
    <g e g,>-. <g e g,>-. <f d g,>-. <f d g,>-. | % 10.4 - 262
    <e c>-. <g e c>-. <g e c>-. <g e c>-. |
    <g e c>-. <g e c>-. <a f c>-. <b g c,>-. |
    <c g c,>-. <g e c>-. <f a d>-. <f a d>-. |
    <e gis b e>-. <e gis b e>-. <e a c e>-. <e a c e>-. |
    <e gis b e>-. <e gis b e>-. <e gis b e>-. <e gis b e>-. |
    <g! d' f>-> <g ais cis>-> <g b d>-> <g c e>-> |% 10.5 - 268
    <g b d>-> <g b d f>-> <g b d>-> <g b d>-> |
    <e gis b e> <e gis b> <e a c> <e a d> |
    <e gis b e> <e gis b e> <e gis b e> <e gis b e> |
    <g! c,> <g c,> <a c,> <b g c,> |
    <c g c,> <g e c> <a f c> <g e c> |
    <f d g,> <f d g,> <f d g,> <f d g,>8\fermata r | % 10.6 - 274
    \bar "|."
    c8 <g' c e> <g c e> <g c e> e <g c e> <g c e> <g c e> |
    d <g b d f> <g b d f> <g b d f> <g g,> <g b d f> <g b d f> <g b d f> |
    c, <g' c e> <g c e> <g c e> e <g c e> <g c e> <g c e> |
    d <g b d f> <g b d f> <g b d f> <g g,> <g b d f> <g b d f> <g b d f> | % 11.1 - 278
    <e e,> <g bes cis> <g bes cis> <g bes cis> <e e,> <g bes cis> <g bes cis> <g bes cis> |
    <e e,> <g bes cis> <g bes cis> <g bes cis> <e e,> <g bes cis> <g bes cis> <g bes cis> |
    <f f,> <f a d> cis <g' a e'> d <f a d> f <a d> |
    g <c e> <c e> <c e> <g g,> <g b d f> <g b d f> <g b d f> | % 11.2 - 282
    r8 <e e,>\( <dis dis,> <e e,>\) r <ees ees,>\( <d d,> <ees ees,>\) |
    r <d d,>\( <cis cis,> <d d,>\) r <des des,>\( <c c,> <des des,>\) |
    <c c'>4-> <bes bes'>-> <aes aes'>-> <g g'>-> |
    <f f'> <ees ees'> <f f'> <fis fis'> |
    r8 <g' c e>16 <g c e> <g c e>8 <g c e> r <g c e>16 <g c e> <g c e>8 <g c e> | % 11.3 - 287
    r <g c e>16 <g c e> <g c e>8 <g c e> r <g c e>16 <g c e> <g c e>8 <g c e> |
    r8 <g g,>16 <g g,> <g g,>8 <g g,> <g g,> <g g,> <g g,> <g g,> |
    <g g,>4 <g g,> <g g,> <g g,> |
    \repeat "tremolo" 4 <g g,>8 \repeat "tremolo" 4 <g g,>8 |
    \cadenzaOn
    <g d b g>2
    s4
    \cadenzaOff
    s1 |
    <c, e g c>8 <c c'>16( <b b'>) <c c'>8 <c c'> <c c'> <c c'> <c c'> <c c'> |
    <c c'> <e e'>16( <dis dis'>) <e e'>8 <e e'> <e e'> <e e'> <e e'> <e e'> |
    <e e'>4 r r2\fermata |
    <c c,>1\fermata | % fin
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
    first-page-number = 122
    print-first-page-number = ##t
    ragged-last-bottom = ##f
    %#(set-paper-size "a4")
}
