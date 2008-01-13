\version "2.10.25"
\header {
    title = \markup \center-align { \bigger "La Traviata" " " }
    subtitle = "Scena ed aria"
    subsubtitle = \markup {\italic "«Ah fors e lui che l'anima»"}
    composer = "G. Verdi"
    arranger = "Transcripción de N. Toledo"
    piece = "Nº 5"

    %copyright = "Calcografía de la 'Nueva Biblioteca Musical Económica', 1857-1869"
    % Mutopia headers
    mutopiatitle = "La Traviata - N5 Scena ed aria"
    mutopiacomposer = "VerdiG"
    mutopiainstrument = "Piano"
    source = "Calcografía de la 'Nueva Biblioteca Musical Económica', 1857-1869"
    style = "Romantic"
    copyright = "Public Domain"
    maintainer = "Alberto Corella"
    maintainerEmail = "ppiano@telefonica.net"
 footer = "Mutopia-2008/01/13-1218"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
upper = \relative c'' {
    \clef treble
    \key aes \major
    \time 3/8
    << {\times 2/3 {<g bes>16^\markup{\column {\line {\bold "Andantino. ("\note #"4" #1 \bold " = 96)"} " "}}[ <bes e> <e g>]} <g bes>8 r} \\ {\times 2/3 {e,16[ g bes]} e8 s} >> |
    << {\times 2/3 {<f, aes>16[ <aes c> <c f>]} <f aes>8 r} \\ {\times 2/3 {c,16[ f aes]} c8 s} >> |
    << {\times 2/3 {<e, g>16[ <g c> <c e>]} <e g>8 r} \\ {\times 2/3 {c,16[ e g]} c8 s} >> |
    R4. | % 1.1 - 4
    \stemUp
    \once\override TextScript #'extra-offset = #'(0 . -1)
    des16[_\markup{\dynamic p } \once\override TextScript #'extra-offset = #'(0 . -1.5) r_\markup{"Ah fors'è lui che l'anima..."} c r aes] r |
    \noBreak
    \stemNeutral
    f4-1^\markup{\italic dolciss.}\( f'8 |
    des4 f8-5\) |
    c4.-1( |
    \times 2/3 {bes16-.)-2[ c-.-1 des-.] } f8-4 ees-3 |
    \appoggiatura {ees16-3[ des]} c4 aes'8-5 | % 1.2 - 10
    \stemDown
    \times 2/3 {g,16-.-1[ aes-. bes-.]} c8-> c-> |
    \stemNeutral
    f,8-1[ \appoggiatura {aes16[ g]} f8] r |
    des'16-.[ r c-. r aes-.] r |
    f4\( f'8 |
    des4 f8\) |
    c4. | % 1.3 - 16
    \times 2/3 {bes16-.[ c-. des-.]} f8 ees |
    \appoggiatura {ees16[ des]} c4 aes'8 |
    \stemDown
    \times 2/3 {g,16-.[ aes-. bes-.]} c8 c |
    \stemNeutral
    f,8[ \appoggiatura {aes16[ g]} f8] r |
    \times 2/3 {\once\override DynamicLineSpanner #'staff-padding = #2.5 f16[-2\pp e-3 f]}  f8 g-1 |
    aes8.-2 bes16 aes8 | % 1.4 - 22
    \times 2/3 {aes16-.-2[ \once\override TextScript #'extra-offset = #'(0 . -1.5) g-._\markup{\italic cres.} aes-.]} aes8 bes |
    c8.-1\(\f\< des16-3 c8-2\) |
    \times 2/3 {c16-2[ b c]} c8 d |
    e8.\(\! d16 c8\) |
    \times 2/3 {c16-.[^\markup{\dynamic ppp} b-. c-.]} c8 d |
    e4.\fermata | % 1.5 - 28
    \key f \major
    \bar "||"
    \textSpannerUp
    \override TextSpanner #'edge-text = #'("con 8ª ad libitum" . "")
    \once\override TextSpanner #'extra-offset = #'(0 . 2)
    f4\startTextSpan(\pp\> e16.\! d32) |
    e4( d16. c32) |
    \stemDown
    a8( bes g) | % 2.1 - 31
    \stemNeutral
    a8.( g16 f8) |
    f'4->( e16. d32) |
    e4( d16. c32) |
    \stemDown
    a8. bes16 \times 2/3 {bes16-.[ a-. g-.]} | % 2.2 - 35
    a4( f8) |
    des'-.\( des-. des-.\) |
    c4( f,8) |
    des'\( des16-. des-. des-. des-.\) | % 2.3 - 39
    c4(\< f8)\!\stopTextSpan |
    a( g16) r \acciaccatura g8 \times 2/3 {f16 e d} |
    d8( c16) r \times 2/3 {c16-. f-. a,-.} |
    d8( c16) r \times 2/3 {a16-. bes-. g-.} | % 2.4 - 43
    << {f4 r8} \\ {<c a>8 r r} >> |
    << {\times 2/3 {<g' bes>16[ <bes e> <e g>]} <g bes>8 r} \\ {\times 2/3 {e,16[ g bes]} e8 s} >> |
    << {\times 2/3 {<f, aes>16[ <aes c> <c f>]} <f aes>8 r} \\ {\times 2/3 {c,16[ f aes]} c8 s} >> |
    << {\times 2/3 {<e, g>16[ <g c> <c e>]} <e g>8 r} \\ {\times 2/3 {c,16[ e g]} c8 s} >> |
    \bar "||"
    \key aes \major
    R4. | % 2.5 - 48
    des16[ r c r aes] r |
    f4^\markup{\italic dolciss.}\( f'8 |
    des4 f8\) |
    c4.( |
    \times 2/3 {bes16-.)[ c-. des-.] } f8 ees | % 3.1 - 53
    \appoggiatura {ees16[ des]} c4 aes'8 |
    \stemDown
    \times 2/3 {g,16-.[ aes-. bes-.]} c8-> c-> |
    \stemNeutral
    f,8[ \appoggiatura {aes16[ g]} f8] r |
    des'16-.[ r c-. r aes-.] r |
    f4\( f'8 | % 3.2 - 58
    des4 f8\) |
    c4. |
    \times 2/3 {bes16-.[ c-. des-.]} f8 ees |
    \appoggiatura {ees16[ des]} c4 aes'8 |
    \stemDown
    \times 2/3 {g,16-.[ aes-. bes-.]} c8-> c-> | % 3.3 - 63
    \stemNeutral
    f,8[ \appoggiatura {aes16[ g]} f8] r |
    \times 2/3 {\once\override DynamicLineSpanner #'staff-padding = #2.5 f16[\pp e f]}  f8 g |
    aes8.-2 bes16 aes8 |
    \times 2/3 {aes16-.[ \once\override TextScript #'extra-offset = #'(0 . -1.5) g-._\markup{\italic cres.} aes-.]} aes8 bes |
    c8.-1\(\f\< des16 c8\) | % 3.4 - 68
    \times 2/3 {c16[ b c]} c8 d |
    e8.\(\! d16 c8\) |
    \times 2/3 {c16-.[^\markup{\dynamic ppp} b-. c-.]} c8 d |
    e4.\fermata | % 3.5 - 72
    \key f \major
    \bar "||"
    \textSpannerUp
    \override TextSpanner #'edge-text = #'("con 8ª ad libitum" . "")
    \once\override TextSpanner #'extra-offset = #'(0 . 2)
    f4\startTextSpan(\pp\> e16.\! d32) |
    e4( d16. c32) |
    \stemDown
    a8( bes g) |
    \stemNeutral
    a8.( g16 f8) | % 3.6 - 76
    f'4->( e16. d32) |
    e4( d16. c32) |
    \stemDown
    a8. bes16 \times 2/3 {bes16-.[ a-. g-.]} |
    a4( f8) | % 4.1 - 80
    des'-.\( des-. des-.\) |
    c4( f,8) |
    des'\( des16-. des-. des-. des-.\) |
    c4(\< f8)\!\stopTextSpan | % 4.2 - 84
    a( g16) r \acciaccatura g8 \times 2/3 {f16 e d} |
    d8( c16) r \times 2/3 {c16-. f-. a,-.} |
    d8( c16) r \times 2/3 {a16-. bes-. g-.} |
    << {<f c>8} \\ {a,8} >> r \times 2/3 {<g' bes e>16-. <g bes d>-. <g bes e>-.} | % 4.3 - 88
    <f a f'>8->( c'16) r \times 2/3 {<g bes e>16-. <g bes d>-. <g bes e>-. } |
    <a c f>8 r r |
    \cadenzaOn
    c4 ~ \tiny c16\([ \override Fingering #'avoid-slur = #'inside fis-2 a-4 g-3] bes-5[ dis,-2 f-4 e-3] g-5[ b,-1 d-4 c-3] e-5[ a,-1 c-4 bes-3] d-5[ fis,-2 a g\)] \normalsize \stemUp bes-5_([ e,)] \stemNeutral d'8.-5\fermata c16  % 4.4 - 91
    \cadenzaOff
    \bar "|"
    \set Score.currentBarNumber = #92
    << {fis,8-1 r r} \\ {r <fis c a> <fis c a>} >> | % Pongo el sostenido para que no salga la alteración
    << {R4.} \\ {r8 <f c a> <f c a>} >> |
    <f c a>4 r8\fermata |
    \bar "||"
    \time 4/4
    r4\fermata r8 c' c[ a] r f' | % 4.5 - 95
    \bar "||"
    <f f,>8\p^\markup{\column {\line {\bold "Allegro. ("\note #"4" #1 \bold " = 120)"} " "}} \times 2/3 {f16-. c-. a-.} f8-.[ <c' a'>] <a f'> \times 2/3 {a'16-. f-. c-.} a8-.[ <f' c'>] |
    <a e a,>8 a,\noBeam a[ a] a4. g8 |
    f8 \times 2/3 {d'16-. a-. f-.} d8[ <a' f'>] <f d'> \times 2/3 {f'16-. d-. a-.} f8[ <a f' a>] | % 4.6 - 98
    <b f d>4 r f'-3 e8-2 d-1 |
    << {c8 s8} \\ {c8^\markup{\finger 5} \override TextScript #'extra-offset = #'(0 . -4) c,16^\markup{\finger 1} c^\markup{\finger 2} \revert TextScript #'extra-offset } >> c16_4 c_3 c_2 c_1 c c c c c_4 c c c | % 5.1 - 100
    c c c c c c c c c c c c c c c c |
    c c c c c c c c c c c c c c c c | % 5.2 - 102
    c c c c c c c c c c c c c c c c |
    c c c c c c c c c c c c c c c c |
    <c c'>4 c' r8 c-1 c d | % 5.3 - 105
    ees4 r r8 ees-3 ees f |
    << {ges4-5( ees) r r8. ees16} \\ {ges,2-1 r} >> |
    << {g'!2( ees4) r8. d16-2} \\ {g,2\ff r} >> |
    f'4.. ees16 \times 2/3 {ees4-. d-. c-.} | % 5.4 - 109
    \cadenzaOn
    bes4-3 ~ \once\override PhrasingSlur #'positions = #'(2.5 . 4) bes16\( c-4 bes-3 a-2 bes-3 c-1 d ees f-1[ g aes bes] c-5[ aes-3 f-1 g-3] aes-4[ f-2 d-1 ees-2] f-3[ d-1 aes-2 bes] c[ aes f ees_2] d4_1\)_\markup{\italic "con forza."} r16 bes'[ a bes] g'8. f16
    \cadenzaOff
    \bar "|" % 5.5 - 110
    \set Score.currentBarNumber = #111
    << {<ees! bes>4} \\ {g,4} >> r4\fermata r8_\markup{\italic "doce à piacere"} bes'16-4\( aes!-3 g-2 aes-3 f-1 g-4\) |
    ees4-2 r r8 bes'16\( aes g aes f g\) |
    \once\override PhrasingSlur #'positions = #'(4 . 3)
    \once\override PhrasingSlur #'eccentricity = #-4
    ees8\( des'16-5 c bes aes g-1 f-4 ees-3 f d! f ees f d f | % 6.1 - 112
    \textSpannerDown
    \override TextSpanner #'edge-text = #'("allarg. " . "")
    ees16\startTextSpan f des ees c8-1 ees-4 bes4-2 ees\)\fermata\stopTextSpan |
    \bar "||"
    \key aes \major
    \time 6/8
    \partial 8*2
    <c c'>8-.^\markup{\column {\line {\bold "Allº brillante. ("\note #"4" #1 \bold " = 84)"} " "}} <des des'>-. |
    <f f'>4(-> <ees ees'>8) <des des'>16([ <c c'>) <bes bes'>8-. <aes aes'>-.] |
    \acciaccatura aes'8 g4^\markup{\finger "23"}\trill f8 \acciaccatura aes8 g4\trill f8 | % 6.2 - 116
    f4\trill^\markup{\finger "34"} ees8-2 <g g,>-.[ <aes aes,>-. <bes bes,>-.] |
    <des des,>4.->( <c c,>8) <c c,>-. <des des,>-. |
    <f f,>4( <ees ees,>8) <des des,>16([ <c c,>) <bes bes,>8-. <aes aes,>-.] |
    \acciaccatura aes8 g4\trill f8 \acciaccatura aes8 g4\trill f8 | % 6.3 - 120
    f8_3 ees16(_2 g_1 bes_2 des_3) <f f,>8-> <ees ees,>-> r |
    r4 r8\fermata r8 c,8-.-1_\markup{"Sempre libera degg'io"} des-.-2 |
    \noBreak
    f4->-4( \override Fingering #'avoid-slur = #'outside ees8-3) des16([-2 c-1) bes8-.-4  aes-.] | % 6.4 - 123
    \acciaccatura aes8 g4_\markup{\finger 23}\trill f8_1 \acciaccatura aes8 g4\trill f8 |
    f4\trill^\markup{\finger 34}_( ees8-2) g-.-1[ aes-. bes-.] |
    des4.-4( c8-3) c-.-1 des-. |
    f4->( ees8) des16[( c) bes8-. aes-.] | % 6.5 - 127
    \acciaccatura aes8 g4\trill f8 \acciaccatura aes8 g4\trill f8 |
    f4_( ees8) \times 2/3 {des'16[ ees des} c8 bes] |
    aes4 r8 r c-.-1 c-. |
    c16(-4 bes) g8-. bes-. bes16( aes) f8-. aes-.-4 |
    g8-2 c,4-1 r8 c'-. c-. | % 7.1 - 132
    c16( bes) g4 bes16[-3( aes) f8-. f'-.-5] |
    \afterGrace e4.\trill {dis16[( e])} \afterGrace g4.\trill {fis16[( g)]} |
    c8[-5 e,16\(_2 g_1 c_2 e_4\)] f8-5[ f,16\(_1 aes!_2 c_3 f_5\)] |
    <<{e8 s4.} \\ {c4._\fermata ~ c8 <c c,> <des des,>}>> | % 7.2 - 136
    \once\override TextScript #'extra-offset = #'(0 . -1) <f f,>4\(_\markup{\italic "con affetto."} <ees ees,>8 <des des,>16[ <c c,>\) <bes bes,>8-. <aes aes,>-.] |
    \acciaccatura aes8 g4\trill f8 \acciaccatura aes8 g4\trill f8 |
    f4( ees8) << {\once\override TupletNumber #'transparent = ##t \times 2/3 {des'16 ees-5 des-4} s4} \\ {\set fingeringOrientations = #'(left) <des-4 des,-1>8 \set fingeringOrientations = #'(up right) <c-5 c,-1> <bes bes,> } >> |
    <aes aes,>16 r \once\override Staff.OttavaBracket #'extra-offset = #'(0 . 1) #(set-octavation 1) <aes aes'>4\> ~ <aes aes'>8 <g g'> <ges ges'>\! |
    <f f'>16 r <g! g'!>4\> ~ <g g'>8 <f f'> <fes fes'>\! | % 7.3 - 141
    <ees ees'>16 r <f f'>4\> ~ <f f'>8 <ees ees'> <des des'>\! |
    <c c'>\arpeggio #(set-octavation 0) bes16-2 a bes8 \acciaccatura ees8-4 des-.-3 c-.-1 bes-.-3 |
    aes16-2 r \once\override Staff.OttavaBracket #'extra-offset = #'(0 . 1) #(set-octavation 1) <aes' aes'>4\> ~ <aes aes'>8 <g g'> <ges ges'>\! |
    <f f'>16 r <g! g'!>4\> ~ <g g'>8 <f f'> <fes fes'>\! |
    <ees ees'>\< #(set-octavation 0) f16-4\( ees des c-1\) bes8-.-2 g'16\(-5 f ees des\) | % 7.4 - 146
    c8-. aes'16\( g f ees\) des8-. bes'16\( aes g f\) |
    ees8-.\! des'16-3\( \override Fingering #'avoid-slur = #'inside c bes-4 aes g f ees-3 des c \revert Fingering #'avoid-slur bes-2\) |
    f'16(-4 ees-2) aes4-5-> ~ aes8 bes,-1 \acciaccatura d8-3 ees8-4 | % 7.5 - 149
    \bar "||"
    \time 3/8
    << {aes4-5_(^\markup{Andantino.} g16. f32)} \\ {aes,4_\markup{\dynamic pp \italic "sotto voce"} r8} >> |
    g'4\( f16. ees32\) |
    c8-1\( des-4 bes-2\) |
    c8.-3\( bes16 aes8\) |
    aes'4-5\( g16. f32\) | % 8.1 - 154
    g4\( f16. ees32\) |
    c8. des16 \times 2/3 {des-4[ c bes]} |
    c4-4( aes8-2) |
    fes'-.-5\( fes-. fes-.\) | % 8.2 - 158
    ees4-4( aes,8-1) |
    fes'8-5 fes16-.-3\( fes-. fes-. fes-.\) |
    ees4-2( aes8-5) |
    \once\override DynamicLineSpanner #'staff-padding = #2 g8-3(\f f16-2) r \times 2/3 {aes16-.-4 g-. f-.} | % 8.3 - 162
    f8-3( ees16-2) r \times 2/3 {ees16-.-2 aes-.-5 c,-.-1} |
    f8-4( ees16-3) r \times 2/3 {c16-.-2 \acciaccatura ees8-4 des16-.-3 bes-.-2} |
    \bar "||"
    \time 4/4
    aes4-1^\markup{\bold "Allegro."} r8 ees' ees[ c] r aes' |
    << {\once\override DynamicLineSpanner #'staff-padding = #2.5 aes1-5\ff} \\ {a,8\rest \phrasingSlurUp <f' c aes>16\( <f c aes> <f c aes>8[ <f c aes>] <f c aes>[ <f c aes> <f c aes> <f c aes>]\) \phrasingSlurNeutral} >> | % 8.4 - 166
    \cadenzaOn
    << {aes8 c16-5 bes aes g f ees-2 d-1 f-2 aes-5 g  \stemDown f[ees-3 d c-1 bes-2 c-1 d ees f-1 g aes bes c] r bes4\fermata \stemNeutral } \\ {<f d aes>4 r r s8*7 s4} >> 
    \cadenzaOff
    \bar "|"
    \set Score.currentBarNumber = #168
    << {ees4} \\ {<bes g>} >> r4\fermata \once\override TextScript #'extra-offset = #'(0 . 4) r8^\markup{\italic "dolce a piac."} bes'16-4\( aes g aes f g\) | % 8.5 - 168
    ees4-2 r r8 bes'16\( aes g aes f-1 g-2\) |
    ees8-1 des'16-3\( \override Fingering #'avoid-slur = #'inside c-1 bes-4 aes g f ees-3 f d f ees f d f |
    ees-3 f des! ees c8-1 \revert Fingering #'avoid-slur ees-4 bes4-2\) ees\fermata-5 | % 9.1 - 171
    \bar "||"
    \time 6/8
    \once\override TextScript #'extra-offset = #'(0 . 3)
    r4^\markup{\bold "1º Tempo."} r8\fermata r8 c-._\markup{\italic "assai brillante"} des-.|
    f4->( ees8) des16[( c) bes8-. aes-.] |
    \acciaccatura aes8 g4\trill f8 \acciaccatura aes8 g4\trill f8 |
    f4\trill_( ees8) g-.[ aes-. bes-.] | % 9.2 - 175
    des4.( c8-.) c-. des-. |
    f4->( ees8) des16[( c) bes8-. aes-.] |
    \acciaccatura aes8 g4\trill f8 \acciaccatura aes8 g4\trill f8 |
    f4_( ees8) \times 2/3 {des'16[ ees des} c8 bes] | % 9.3 - 179
    aes4 r8 r c8-. c-. |
    c16([ bes) g8-. bes-.] bes16([ aes) f8-. aes-.] |
    g8 c,4 r8 c'8-. c-. |
    c16( bes) g4 bes16([ aes) f8-. f'-.] | % 9.4 - 183
   \afterGrace e4.\trill {dis16[ e]} \once\override TextScript #'script-priority = #-100 \afterGrace g4.^\prall^\markup{\natural} {fis16[ g]} |
    c8[ e,16\( g c e\)] f8[ f,16\( aes! c f\)] |
    << {e8 s2 s8} \\ {c4._\fermata ~ \once\override TextScript #'extra-offset = #'(0 . -1) c8[_\markup{\italic "con affetto."} <c c,> <des des,>]} >> | % 9.5 - 186
    \noBreak
    <f f,>4\( <ees ees,>8 <des des,>16[ <c c,>\) <bes bes,>8-. <aes aes,>-.] |
    \appoggiatura aes8 g4\trill f8 \appoggiatura aes8 g4\trill f8 |
    f4-3( ees8-2) << {\tupletDown \once\override TupletNumber #'transparent = ##t \times 2/3 {des'16-4 ees-5 des-4} \tupletNeutral s4} \\ {<des des,>8[ <c c,> <bes bes,>]} >> |
    <aes aes,>16 r \once\override Staff.OttavaBracket #'extra-offset = #'(0 . 1) #(set-octavation 1) <aes aes'>4\> ~ <aes aes'>8 <g g'> <ges ges'>\! | % 10.1 - 190
    <f f'>16 r <g! g'!>4\> ~ <g g'>8 <f f'> <fes fes'>\! |
    <ees ees'>16 r <f f'>4\> ~ <f f'>8 <ees ees'> <des des'>\! |
    <c c'>8\arpeggio #(set-octavation 0) bes16-2\( a bes8\) \acciaccatura ees8 des8 c bes |
    aes16 r \once\override Staff.OttavaBracket #'extra-offset = #'(0 . 1) #(set-octavation 1) <aes' aes'>4\> ~ <aes aes'>8 <g g'> <ges ges'>\! | % 10.2 - 194
    <f f'>16 r <g! g'!>4\> ~ <g g'>8 <f f'> <fes fes'>\! |
    <ees ees'>8 #(set-octavation 0)  f16\( ees des c\) bes8-. g'16\( f ees des\) |
    c8-. aes'16\( g f ees\) des8-. bes'16\( aes g f\) |
    ees8-. des'16\( c bes aes g f ees des c bes\) | % 10.3 - 198
    f'( ees) aes4 ~ aes8 bes,-1 \acciaccatura d8-3 ees8-4 |
    << {aes4.-5\( g4-4 f8-3} \\ {aes,4-1 r8 r4 r8} >> |
    << {g'16-5[ f-4] ees-5\) r r8 r4 r8} \\ {r8 ees,16-1-.\< f-. g-. aes-. bes-. c-. des-. ees-. f-. g-.\!} >> |
    << {aes4.-3\( g4-2 f8} \\ {r4 r8 r4 r8} >> | % 10.4 - 202
    << {g16[ f] ees-5\) r r8 r4 r8} \\ {r8 ees,16-1-.\< f-. g-. aes-. bes-. c-. des-. ees-. f-. g-.\!} >> |
    aes8 <aes aes'>4-> ~ <aes aes'>8 <aes aes'>4->_\markup{\italic "cresc."} ~ |
    <aes aes'>8 <aes aes'>4-> ~ <aes aes'>8 <a a'>4-> |
    c16-4(\f\> bes-3) bes[-3( aes-2)] aes-3( g-2) g([ f)] f( ees) ees-2([ d-1)]\! | % 10.5 - 206
    f-3( ees) aes8-. c,-. ees16-4 des f8-5-. g,-. |
    << {aes'4.-5\( g4 f8} \\ {aes,4-1 r8 r4 r8} >> |
    << {g'16[ f] ees\) r r8 r4 r8} \\ {r8 ees,16-.\< f-. g-. aes-. bes-. c-. des-. ees-. f-. g-.\!} >> | % 10.6 - 209
    << {\once\override Staff.NoteCollision #'merge-differently-dotted = ##t aes4.\( g4 f8} \\ {aes8 r r r4 r8} >> |
    << {g16[ f] ees\) r r8 r4 r8} \\ {r8 g,16-1\< aes-.-2 bes-.-3 c-. des-. ees-. f-.-1 g-. aes-. bes-.\!} >> |
    c8 <c c,>4-> ~ <c c,>8 <c c,>4-> ~ |
    <c c,>8 <c c,>4-> ~ <c c,>8 <c c,>4-> | % 11.1 - 213
    \set subdivideBeams = ##t
    \set beatLength = #(ly:make-moment 1 8)
    c16-4([ bes-3) a-2( bes-3) g-1( aes-3)] e-1([ f-4) c-1( des-2) g-5( f-4)] |
    \unset subdivideBeams
    \unset beatLength
    f-4\( ees c aes ees8\) f'4-5 ees8-3 |
    aes4.-5 #(define afterGraceFraction (cons 7 8)) \afterGrace c,4.\trill {b16_([ c])} | % 11.2 - 216
    f4.-5 ees4.-3 |
    aes4.-5 \afterGrace c,4.\trill {b16_([ c])} |
    f4. ees | % 11.3 - 219
    aes16\ff aes, aes' aes, aes' aes, aes' aes, aes' aes, aes' aes, |
    bes' bes, bes' bes, bes' bes, bes' bes, bes' bes, bes' bes, 
    c' c, c' c, c' c, c'8-5 aes16-4\( f-3 ees-2 c-1\) | % 11.4 - 222
    f4.-4 ~ f4 ees8-3 |
    aes,8-1 <c ees aes>16 <c ees aes> <c ees aes>8 <c ees aes> <c ees aes> <c ees aes> |
    <c ees aes> <c ees aes>16 <c ees aes> <c ees aes>8 <c ees aes> <c ees aes> <c ees aes> | % 11.5 - 225
    <c ees aes>4 r8 <ees aes c>4 r8 |
    <c ees aes>4 r8 <ees aes c>4 r8 |
    <c ees aes>4 r8 r4 r16 <aes ees c> |
    <aes ees c>4 r8 r4 r16 <aes ees c> |
    <aes ees c>2.\fermata | % fin
    \bar "|."
}
lower = \relative c {
    \clef bass
    \key aes \major
    \time 3/8
    s4 r8 |
    s4 r8 |
    s4 r8 |
    <f aes c f>8-.\p r <f aes c f>-. | % 1.1 - 4
    <f aes c f>-. r <f aes c f>-. |
    <f aes c>-. r <f aes c f>-. |
    <f bes des f>-. r <f bes des f>-. |
    <f aes c f>-. r <f aes c f>-. |
    <g bes des ees>-. r \set fingeringOrientations = #'(left )<g-5 bes-3 des-2 ees-1>-. |
    <aes-4 c-2 ees-1>-. \unset fingeringOrientations r <aes c ees>-. | % 1.2 - 10
    <c bes e, c>-. r <c bes e, c>-. |
    <c aes f>-. r <c aes f>-. |
    <f, aes c f>-. r <f aes c f>-. |
    <f aes c>-. r <f aes c f>-. |
    <f bes des f>-. r <f bes des f>-. |
    <f aes c f>-. r <f aes c f>-. | % 1.3 - 16
    <g bes des ees>-. r <g bes des ees>-. |
    <aes c ees>-. r <aes c ees>-. |
    <c bes e, c>-. r <c bes e, c>-. |
    <c aes f>-. r <c aes f>-. |
    <f, des bes>-. r <g ees des bes>-. |
    <aes ees c aes>-. r <aes ees c aes>-. | % 1.4 - 22
    <aes f des>8-. r <bes g f des>-. |
    <c g e c>-. r <c g e c>-. |
    <aes c f>-. r <aes ces d f>-. |
    <g bes c! e>-. r <g bes c e>-. |
    <f aes c f>-.\pp r <f aes b f'>-. |
    <c e g c>-. r r\fermata | % 1.5 - 28
    \key f \major
    \bar "||"
    \stemDown
    \times 2/3 {\set fingeringOrientations = #'(up right) <f-1 f,-5>16[\arpeggio\sustainDown a-3 c-2]} \times 2/3 {f16-1[ a-2 f-1]} \times 2/3 {c16-2[ a-3 \once\override Staff.SustainPedal #'extra-offset = #'(0 . -3) f-5]\sustainUp} |
    \times 2/3 {<c-1 c,-5>16[\arpeggio\sustainDown bes'-3 c-2]} \times 2/3 {e16-1[ g-2 e-1]} \times 2/3 {c16-2[ bes-3 \once\override Staff.SustainPedal #'extra-offset = #'(0 . -4) g-5]\sustainUp} |
    \times 2/3 {<c, c,>16[\arpeggio\sustainDown bes' c]} \times 2/3 {e16[ g e]} \times 2/3 {c16[ bes \once\override Staff.SustainPedal #'extra-offset = #'(0 . -4) g]\sustainUp} | % 2.1 - 31
    \times 2/3 {<f f,>16[\arpeggio\sustainDown a c]} \times 2/3 {f16[ a f]} \times 2/3 {c16[ a \once\override Staff.SustainPedal #'extra-offset = #'(0 . -2) f]\sustainUp} |
    \times 2/3 {<f f,>16[\arpeggio\sustainDown a c]} \times 2/3 {f16[ a f]} \times 2/3 {c16[ a \once\override Staff.SustainPedal #'extra-offset = #'(0 . -3) f]\sustainUp} |
    \times 2/3 {<c c,>16[\arpeggio\sustainDown bes' c]} \times 2/3 {e16[ g e]} \times 2/3 {c16[ bes \once\override Staff.SustainPedal #'extra-offset = #'(0 . -3) g]\sustainUp} |
    \times 2/3 {<c, c,>16[\arpeggio\sustainDown bes' c]} \times 2/3 {e16[ g e]} \times 2/3 {c16[ bes \once\override Staff.SustainPedal #'extra-offset = #'(0 . -4) g]\sustainUp} | % 2.2 - 35
    \times 2/3 {<f f,>16[\arpeggio\sustainDown a c]} \times 2/3 {f16[ a f]} \times 2/3 {c16[ a \once\override Staff.SustainPedal #'extra-offset = #'(0 . -1) f]\sustainUp} |
    \times 2/3 {<f f,>16[\arpeggio\sustainDown bes des]} \times 2/3 {f16[ bes f]} \times 2/3 {des16[ bes \once\override Staff.SustainPedal #'extra-offset = #'(0 . -1) f]\sustainUp} |
    \times 2/3 {<f f,>16[\arpeggio\sustainDown a c]} \times 2/3 {f16[ a f]} \times 2/3 {c16[ a \once\override Staff.SustainPedal #'extra-offset = #'(0 . -1) f]\sustainUp} |
    \times 2/3 {<f f,>16[\arpeggio\sustainDown bes des]} \times 2/3 {f16[ bes f]} \times 2/3 {des16[ bes \once\override Staff.SustainPedal #'extra-offset = #'(0 . -3) f]\sustainUp} | % 2.3 - 39
    \times 2/3 {<f f,>16[\arpeggio\sustainDown a c]} \times 2/3 {f16[ a f]} \times 2/3 {c16[ a \once\override Staff.SustainPedal #'extra-offset = #'(0 . -1) f]\sustainUp} |
    \times 2/3 {<bes g d bes>16\arpeggio\sustainDown[ d-5 g-3]} \once\override Staff.SustainPedal #'extra-offset = #'(0 . -3) bes8-._\markup{\finger 2}\sustainUp r |
    \times 2/3 {<a, f c>16\arpeggio\sustainDown[ c-5 f-2]} \once\override Staff.SustainPedal #'extra-offset = #'(0 . -2) a8-._\markup{\finger 1}\sustainUp r |
    \times 2/3 {<bes, g e c>16\arpeggio\sustainDown[ c-5 e-3]} \once\override Staff.SustainPedal #'extra-offset = #'(0 . -2) g8-._\markup{\finger 1}\sustainUp r | % 2.4 - 43
    <f, f,>4 r8 |
    s4 r8 |
    s4 r8 |
    s4 r8 |
    \bar "||"
    \key aes \major
    <f aes c f>8-. r <f aes c f>-. | % 2.5 - 48
    <f aes c f>-. r <f aes c f>-. |
    <f aes c>-. r <f aes c f>-. |
    <f bes des f>-. r <f bes des f>-. |
    <f aes c f>-. r <f aes c f>-. |
    <g bes des ees>-. r <g bes des ees>-. | % 3.1 - 53
    <aes c ees>-. r <aes c ees>-. |
    <c bes e, c>-. r <c bes e, c>-. |
    <c aes f>-. r <c aes f>-. |
    <f, aes c f>-. r <f aes c f>-. |
    <f aes c>-. r <f aes c f>-. | % 3.2 - 58
    <f bes des f>-. r <f bes des f>-. |
    <f aes c f>-. r <f aes c f>-. |
    <g bes des ees>-. r <g bes des ees>-. |
    <aes c ees>-. r <aes c ees>-. |
    <c bes e, c>-. r <c bes e, c>-. | % 3.3 - 63
    <c aes f>-. r <c aes f>-. |
    <f, des bes>-. r <g ees des bes>-. |
    <aes ees c aes>-. r <aes ees c aes>-. |
    <aes f des>8-. r <bes g f des>-. |
    <c g e c>-. r <c g e c>-. | % 3.4 - 68
    <aes c f>-. r <aes ces d f>-. |
    <g bes c! e>-. r <g bes c e>-. |
    <f aes c f>-.\pp r <f aes b f'>-. |
    <c e g c>-. r r\fermata | % 3.5 - 72
    \key f \major
    \bar "||"
    \stemDown
    \times 2/3 {\set fingeringOrientations = #'(up right) <f-1 f,-5>16[\arpeggio\sustainDown a-3 c-2]} \times 2/3 {f16-1[ a-2 f-1]} \times 2/3 {c16-2[ a-3 \once\override Staff.SustainPedal #'extra-offset = #'(0 . -3) f-5]\sustainUp} |
    \times 2/3 {<c c,>16[\arpeggio\sustainDown bes' c]} \times 2/3 {e16[ g e]} \times 2/3 {c16[ bes \once\override Staff.SustainPedal #'extra-offset = #'(0 . -4) g]\sustainUp} |
    \times 2/3 {<c, c,>16[\arpeggio\sustainDown bes' c]} \times 2/3 {e16[ g e]} \times 2/3 {c16[ bes \once\override Staff.SustainPedal #'extra-offset = #'(0 . -4) g]\sustainUp} |
    \times 2/3 {<f f,>16[\arpeggio\sustainDown a c]} \times 2/3 {f16[ a f]} \times 2/3 {c16[ a \once\override Staff.SustainPedal #'extra-offset = #'(0 . -2) f]\sustainUp} | % 3.6 - 76
    \times 2/3 {<f f,>16[\arpeggio\sustainDown a c]} \times 2/3 {f16[ a f]} \times 2/3 {c16[ a \once\override Staff.SustainPedal #'extra-offset = #'(0 . -3) f]\sustainUp} |
    \times 2/3 {<c c,>16[\arpeggio\sustainDown bes' c]} \times 2/3 {e16[ g e]} \times 2/3 {c16[ bes \once\override Staff.SustainPedal #'extra-offset = #'(0 . -3) g]\sustainUp} |
    \times 2/3 {<c, c,>16[\arpeggio\sustainDown bes' c]} \times 2/3 {e16[ g e]} \times 2/3 {c16[ bes \once\override Staff.SustainPedal #'extra-offset = #'(0 . -4) g]\sustainUp} |
    \times 2/3 {<f f,>16[\arpeggio\sustainDown a c]} \times 2/3 {f16[ a f]} \times 2/3 {c16[ a \once\override Staff.SustainPedal #'extra-offset = #'(0 . -1) f]\sustainUp} | % 4.1 - 80
    \times 2/3 {<f f,>16[\arpeggio\sustainDown bes des]} \times 2/3 {f16[ bes f]} \times 2/3 {des16[ bes \once\override Staff.SustainPedal #'extra-offset = #'(0 . -1) f]\sustainUp} |
    \times 2/3 {<f f,>16[\arpeggio\sustainDown a c]} \times 2/3 {f16[ a f]} \times 2/3 {c16[ a \once\override Staff.SustainPedal #'extra-offset = #'(0 . -1) f]\sustainUp} |
    \times 2/3 {<f f,>16[\arpeggio\sustainDown bes des]} \times 2/3 {f16[ bes f]} \times 2/3 {des16[ bes \once\override Staff.SustainPedal #'extra-offset = #'(0 . -3) f]\sustainUp} |
    \times 2/3 {<f f,>16[\arpeggio\sustainDown a c]} \times 2/3 {f16[ a f]} \times 2/3 {c16[ a \once\override Staff.SustainPedal #'extra-offset = #'(0 . -1) f]\sustainUp} | % 4.2 - 84
    \times 2/3 {<bes g d bes>16\arpeggio\sustainDown[ d g]} \once\override Staff.SustainPedal #'extra-offset = #'(0 . -3) bes8-.\sustainUp r |
    \times 2/3 {<a, f c>16\arpeggio\sustainDown[ c f]} \once\override Staff.SustainPedal #'extra-offset = #'(0 . -2) a8-.\sustainUp r |
    \times 2/3 {<bes, g e c>16\arpeggio\sustainDown[ c e]} \once\override Staff.SustainPedal #'extra-offset = #'(0 . -2) g8-.\sustainUp r |
    <f, f,>8 r << {\times 2/3 {c'16-. c-. c-.}} \\ {c,8} >> | % 4.3 - 88
    << {f8 r \times 2/3 {c'16-. c-. c-.}} \\ {f,8 r c} >> |
    << {f8} \\ {f8} >> r r |
    \cadenzaOn
    <c e g c>8 r s8 s1 s4 r8\fermata s8  % 4.4 - 91
    \cadenzaOff
    <f f,>8\sustainDown r r\sustainUp |
    <f f,> r r |
    <f f,>4 r8\fermata |
    \bar "||"
    \time 4/4
    r4\fermata r8 r8 r2 | % 4.5 - 95
    <f a c>8 r r <f f'>\noBeam <f c'> r r <f a> |
    <cis cis'> r r4 r2 |
    <d f a>8 r r <d d'>\noBeam <d a'> r r <d d'> | % 4.6 - 98
    \stemNeutral
    <g g,>4 r r2 |
    <c, c,>4 r r r8 c,16-4( d | % 5.1 - 100
    ees4) r r r8 d16( ees |
    f4) r r r8 ees16( f | % 5.2 - 102
    ges4) r r r8 e!16( f |
    g!4) r r r8 f16( g |
    aes4) r r2 | % 5.3 - 105
    R1 |
    <ces ees ges a!>2 r |
    <bes! ees g bes!>2 r |
    R1 | % 5.4 - 109
    \cadenzaOn
    <bes d f bes>4 s2. r4 s2. r2 s4 % 5.5 - 110
    \cadenzaOff
    \bar "|"
    <ees bes ees,>4 r\fermata r2 |
    R1 |
    R1  % 6.1 - 112
    R1^\markup{\musicglyph #'"scripts.ufermata"} |
    \bar "||"
    \key aes \major
    \time 6/8
    \partial 8*2
    r8 r |
    <aes aes,>8 <c aes ees> <c aes ees> <c aes ees> <c aes ees> <c aes ees> |
    <aes aes,> <f aes b d> <f aes b d> <f aes b d> <f aes b d> <f aes b d> | % 6.2 - 116
    <ees ees,> <ees g bes! des!> <ees g bes des> <ees g bes des> <ees g bes des> <ees g bes des> |
    <aes aes,> <c aes ees> <c aes ees> <c aes ees> <c aes ees> <c aes ees> |
    <aes aes,> <c aes ees> <c aes ees> <c aes ees> <c aes ees> <c aes ees> |
    <aes aes,> <f aes b d> <f aes b d> <f aes b d> <f aes b d> <f aes b d> | % 6.3 - 120
    <ees ees,> <ees g bes! des!> <ees g bes des> r4 r8 |
    R2.^\markup{\musicglyph #'"scripts.ufermata"} |
    <aes aes,>8^\markup{\dynamic pp} \set fingeringOrientations = #'(left)<aes-4 c-2 ees-1> <aes c ees> <aes c ees> <aes c ees> <aes c ees> | % 6.4 - 123
    <aes aes,> <aes b d> <aes b d> <aes b d> <aes b d> <aes b d> |
    <ees ees,> <ees g bes! des!> <ees g bes des> <ees g bes des> <ees g bes des> <ees g bes des> |
    <aes aes,> <aes c ees> <aes c ees> <aes c ees> <aes c ees> <aes c ees> |
    <aes aes,> <aes c ees> <aes c ees> <aes c ees> <aes c ees> <aes c ees> | % 6.5 - 127
    <aes aes,> <aes b d> <aes b d> <aes b d> <aes b d> <aes b d> |
    <ees ees,> <ees g bes! des!> <ees g bes des> <ees g bes des> <ees g bes des> <ees g bes des> |
    <aes aes,> <c aes ees> <c aes ees> <c aes ees> <c aes ees> <c aes ees> |
    g <bes c e> <bes c e> f <aes c> <aes c> |
    c, <e g> <e g> c <e g c> <e g c> | % 7.1 - 133
    g <bes c e> <bes c e> f <aes c> <aes c> |
    c, <e g c> <e g c> d <f g b> <f g b> |
    e <g c> <g c> f <aes! c f> <aes c f> |
    <c g e c>4 r8 r4\fermata r8 | % 7.2 - 136
    <aes aes,>8 <c aes ees> <c aes ees> <c aes ees> <c aes ees> <c aes ees> |
    <aes aes,> <f aes b d> <f aes b d> <f aes b d> <f aes b d> <f aes b d> |
    <ees ees,> <ees g bes! des!> <ees g bes des> <ees ees,> <ees g bes des> <ees g bes des> |
    <aes aes,> <c aes ees> <c aes ees> <aes aes,> <c aes ees> <c aes ees> |
    des, <f aes bes > <f aes bes> des <f aes bes > <f aes bes> | % 7.3 - 141
    ees <aes c> <aes c> ees <aes c> <aes c> |
    ees <g bes des> <g bes des> ees <g bes des> <g bes des> |
    aes, <ees' aes c> <ees aes c> aes, <ees' aes c> <ees aes c> |
    des <f aes bes> <f aes bes> des <f aes bes> <f aes bes> |
    ees <aes c> <aes c> ees <g bes des> <g bes des> | % 7.4 - 146
    ees <aes c> <aes c> ees <g bes des> <g bes des> |
    ees <aes c> <aes c> ees <g bes des> <g bes des> |
    ees <aes c> <aes c> ees <g bes des> <g bes des> | % 7.5 - 149
    \bar "||"
    \time 3/8
    <aes aes,>8 <aes c ees> <aes c ees> |
    ees <g bes des ees> <g bes des ees> |
    ees <g bes des ees> <g bes des ees> |
    <aes aes,>8 <aes c ees> <aes c ees> |
    <aes aes,>8 <aes c ees> <aes c ees> | % 8.1 - 154
    ees <g bes des ees> <g bes des ees> |
    ees <g bes des ees> <g bes des ees> |
    <aes aes,>8 <aes c ees> <aes c ees> |
    <aes aes,>8 <aes des fes> <aes des fes> | % 8.2 - 158
    <aes aes,>8 <aes c ees> <aes c ees> |
    <aes aes,>8 <aes des fes> <aes des fes> |
    <aes aes,>8 <aes c ees> <aes c ees> |
    des,8 <f bes des> <f bes des> | % 8.3 - 162
    ees8 <aes c> <aes c> |
    ees8 <g bes des> <g bes des> |
    \bar "||"
    \time 4/4
    r8 <aes c ees>16 <aes c ees> <aes c ees>4 r8 <aes c ees aes>16 <aes c ees aes> <aes c ees aes>4 |
    r8 <f f,>16 <f f,> <f f,>8[ <f f,>] <f f,>[ <f f,> <f f,> <f f,>] | % 8.4 - 166
    \cadenzaOn 
    <bes, bes,>4 r r2\fermata s8*5 s4
    \cadenzaOff
    <ees ees,>4 r\fermata r2 | % 8.5 - 168
    R1 |
    R1 |
    R1^\markup{\musicglyph #'"scripts.ufermata"} | % 9.1 - 171
    \bar "||"
    \time 6/8
    R2.^\markup{\musicglyph #'"scripts.ufermata"} |
    <aes aes,>8^\pp <aes c ees> <aes c ees> <aes c ees> <aes c ees> <aes c ees> |
    <aes aes,> <aes b d> <aes b d> <aes b d> <aes b d> <aes b d> |
    <ees ees,> <ees g bes! des!> <ees g bes des> <ees g bes des> <ees g bes des> <ees g bes des> | % 9.2 - 175
    <aes aes,> <aes c ees> <aes c ees> <aes c ees> <aes c ees> <aes c ees> |
    <aes aes,> <aes c ees> <aes c ees> <aes c ees> <aes c ees> <aes c ees> |
    <aes aes,> <aes b d> <aes b d> <aes b d> <aes b d> <aes b d> |
    <ees ees,> <ees g bes! des!> <ees g bes des> <ees g bes des> <ees g bes des> <ees g bes des> | % 9.3 - 179
    <aes aes,> <c aes ees> <c aes ees> <c aes ees> <c aes ees> <c aes ees> |
    g <bes c e> <bes c e> f <aes c> <aes c> |
    c, <e g> <e g> c <e g c> <e g c> |
    g <bes c e> <bes c e> f <aes c> <aes c> | % 9.4 - 183
    c, <e g c> <e g c> d <f g b> <f g b> |
    e <g c> <g c> f <aes! c f> <aes c f> |
    <c g e c>4 r8\fermata r4 r8 | % 9.5 - 186
    <aes aes,>8 <c aes ees> <c aes ees> <c aes ees> <c aes ees> <c aes ees>  |
    <aes aes,> <f aes b d> <f aes b d> <f aes b d> <f aes b d> <f aes b d> |
    <ees ees,> <ees g bes! des> <ees g bes des> <ees ees,> <ees g bes des> <ees g bes des> |
    <aes aes,> <c aes ees> <c aes ees> <aes aes,> <c aes ees> <c aes ees> | % 10.1 - 190
    des, <f aes bes> <f aes bes> des <f aes bes> <f aes bes> |
    ees <aes c> <aes c> ees <aes c> <aes c> |
    ees <g bes des> <g bes des> ees <g bes des> <g bes des> |
    aes, <ees' aes c> <ees aes c> aes, <ees' aes c> <ees aes c> | % 10.2 - 194
    des <f aes bes> <f aes bes> des <f aes bes> <f aes bes> |
    ees <aes c> <aes c> ees <g bes des> <g bes des> |
    ees <aes c> <aes c> ees <g bes des> <g bes des> |
    ees <aes c> <aes c> ees <g bes des> <g bes des> | % 10.3 - 198
    ees <aes c> <aes c> ees <g bes des> <g bes des> |
    aes <c ees> <c ees> aes <c ees> <c ees> |
    ees, <g bes des> <g bes des> ees <g bes des> <g bes des>  |
    aes <c ees> <c ees> aes <c ees> <c ees> | | % 10.4 - 202
    ees, <g bes des> <g bes des> ees <g bes des> <g bes des>  |
    aes <c ees> <c ees> ges <c ees> <c ees> |
    f, <aes c f> <aes c f> ees <ges a c> <ges a c> |
    des <f bes des> <f bes des> des <f bes des> <f bes des> | % 10.5 - 206
    ees <aes c> <aes c> ees <g bes des> <g bes des> |
    aes <c ees> <c ees> aes <c ees> <c ees> |
    ees, <g bes des> <g bes des> ees <g bes des> <g bes des> | % 10.6 - 209
    aes <c ees> <c ees> aes <c ees> <c ees> |
    ees, <g bes des> <g bes des> ees <g bes des> <g bes des> |
    aes <c ees> <c ees> g <bes c e> <bes c e> |
    f <aes c f> <aes c f> ees <ges a c> <ges a c> | % 11.1 - 213
    des <f bes des> <f bes des> des <f bes des> <f bes des> |
    ees <aes c> <aes c> ees <g bes ees> <g bes ees> |
    <aes ees c>16 c <aes ees c> c <aes ees c> c \set fingeringOrientations = #'(up) <aes-2 f-4> c-1 <aes f> c <aes f> c | % 11.2 - 216
    <aes f des> bes <aes f des> bes <aes f des> bes <g-4 ees-2> bes-1 <g ees> bes <g ees> bes |
    <aes ees c>16 c <aes ees c> c <aes ees c> c <aes f> c <aes f> c <aes f> c |
    <aes f des> bes <aes f des> bes <aes f des> bes <g ees> bes <g ees> bes <g ees> bes | % 11.3 - 219
    <c aes ees c>8 <c aes ees c> <c aes ees c> <c aes ees c> <c aes ees c> <c aes ees c> |
    <fes, aes bes> <fes aes bes> <fes aes bes> <fes aes bes> <fes aes bes> <fes aes bes> |
    <ees aes c> <ees aes c> <ees aes c> <ees aes>16 c' <ees, aes> c' <ees, aes> c' | % 11.4 - 222
    <bes g ees> des <bes g ees> des <bes g ees> des <bes g ees> des <bes g ees> des <bes g ees> des |
    <c aes>8 <aes ees c aes>16 <aes ees c aes> <aes ees c aes>8 <aes ees c aes> <aes ees c aes> <aes ees c aes> |
    <aes ees c aes> <aes ees c aes>16 <aes ees c aes> <aes ees c aes>8 <aes ees c aes> <aes ees c aes> <aes ees c aes> | % 11.5 - 225
    <aes ees c aes>4 r8 <aes c ees>4 r8 |
    <aes ees c aes>4 r8 <aes c ees>4 r8 |
    <aes ees c aes>4 r8 r4 r16 <aes ees aes,> |
    <aes ees aes,>4 r8 r4 r16 <aes ees aes,> |
    <aes ees aes,>2.\fermata | % fin
}
\score {
    \new GrandStaff <<
        \new Staff = upper { \upper } 
        \new Staff = lower { \lower }
       >>
       \layout {
         
       }
        \midi { }
     }

\paper {
    first-page-number = 29
    print-first-page-number = ##t
    ragged-last-bottom = ##f
    %#(set-paper-size "a4")
}
