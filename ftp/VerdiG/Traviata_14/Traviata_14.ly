\version "2.10.33"
\header {
    title = \markup \center-align { \bigger "La Traviata" " "}
    subtitle = "Largo del Finale II"
    subsubtitle = \markup {\italic "«Oh!... infamia orribile»"}
    composer = "G. Verdi"
    arranger = "Transcripción de N. Toledo"
    piece = "Nº 14"

    %copyright = "Calcografía de la 'Nueva Biblioteca Musical Económica', 1857-1869"
    % Mutopia headers
    mutopiatitle = "La Traviata - N14 Largo del Finale II"
    mutopiacomposer = "VerdiG"
    mutopiainstrument = "Piano"
    source = "Calcografía de la 'Nueva Biblioteca Musical Económica', 1857-1869"
    style = "Romantic"
    copyright = "Public Domain"
    maintainer = "Alberto Corella"
    maintainerEmail = "ppiano@telefonica.net"
 footer = "Mutopia-2008/08/12-1515"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}


upper = \relative c'' {
    \clef treble
    \key ees \major
    \time 4/4
    \partial 16*5
    aes16\noBeam^\markup{\line {\bold "Largo. ("\note #"4" #1 \bold " = 54)"}} aes8. g16 |
    g8 f <aes d, b>-.[ r16 <aes d, b>-.] <aes d, b>8-.\noBeam r16 aes\noBeam aes8. g16 |
    g8 f <aes d, b>-.[ r16 <aes d, b>-.] <aes d, b>8-.\noBeam r16 f-1\noBeam\( d'8. c16\) | % 1.1 - 3
    c8->( bes) <bes d, bes!>-.[ r16 <bes d, bes>] <bes d, bes>8 r16 c \stemDown bes8. aes16 \stemNeutral |
    g8( ees) \once\override TextScript #'padding = #2 r8.^\markup{\italic "grandioso."} d'16-2 ees4..( c16) | % 1.2 - 5
    bes8.-3\( aes16 f8\)[ r16 g] bes4..-4( aes16) |
    g8.\( f16 ees8-2\)\noBeam r16 d'-2 ees8.( d16) ees8.( c16) | % 1.3 - 7
    bes8.( aes16 f8)[ r16 bes] d8.->-5( c16) \times 2/3 {c8\( bes aes\)} |
    g8 r \times 2/3 {g8-.-1\( g-. g-.\)} \times 2/3 {g8-. aes-. r} \times 2/3 {bes8-.\( bes-. bes-.\)} | % 1.4 - 9
    \times 2/3 {b8-. c-. r} \times 2/3 {d8-.\( d-. d-.\)} \times 2/3 ees4. \times 2/3 {f8\( ees c\)} |
    \times 2/3 bes4. \times 2/3 {d16\( ees g,8 bes\)} \times 2/3 {d4 c8} \times 2/3 {g16\( aes c,8 d\)\fermata} | % 1.5 - 11
    \once\override TextScript #'padding = 2 \times 2/3 {ees8_\markup{\dynamic p \italic "sotto voce."}\( r16 ees' des ces\)} \times 2/3 {bes16[\( bes r ees des ces]\)} \times 2/3 {bes16[\( bes r ees des ces]\)} \times 2/3 {bes16[\( bes r a bes ces!]\)} | % 2.1 - 12
    \times 2/3 {bes16[\( bes r a bes ces]\)} \times 2/3 {bes16[\( bes r a bes ces]\)} \times 2/3 {bes16[\( bes r aes'! f d]\)} \times 2/3 {bes16[\( bes r aes! ges f]\)} | % 2.2 - 13
    \times 2/3 {ees8[\( r16 ees' des ces]\)} \times 2/3 {bes16[\( bes r fes' ees des!]\)} \times 2/3 {ces!16[\( ces r ces bes aes]\)} \times 2/3 {g16[\( g r des' ces! bes]\)} | % 2.3 - 14
    \times 2/3 {aes16[\( aes r bes ces des]\)} \times 2/3 {ees16[\( ees r d ees f]\)} \times 2/3 {aes16[\( ges r ees ces! a]\)} \times 2/3 {ces!16[\( bes r aes ges f]\)} | % 2.4 - 15
    \times 2/3 <g bes ees g>4.\arpeggio\mf ~ \times 2/3 {<g' ees>8 <f d> <ees c>} \times 2/3 {<d bes>16([ <ees c>) <c aes>8-. <aes f>-.]} \times 2/3 {<d bes>16( <ees c>) <c aes>8-. <aes f>-.} | 
    \override TupletNumber #'transparent = ##t \override TupletBracket #'transparent = ##t \times 2/3 {<bes g>8 <g' ees>4 ~ } \times 2/3 {<g ees>8 <f d> <ees c>} \times 2/3 {<d bes>16([ <ees c>) <c aes>8-. <aes f>-.]} \times 2/3 {<d bes>16( <ees c>) <c aes>8-. <aes f>-.} | % 2.5 - 17
    \times 2/3 {<g ees>8 r r} \once\override DynamicLineSpanner #'padding = #1.5 \times 2/3 {<g bes>8-.\p <g bes>-. <g bes>-.} \times 2/3 {<g b>16-. <g b>-. r8 r} \times 2/3 {<g b>8-. <g b>-. <g b>-.} |
    \times 2/3 {<g c>16-. <g c>-. r8 r} \once\override DynamicLineSpanner #'padding = #1.5 \times 2/3 {<c g' c>8->\ff <f g b d>-> <ees g c ees>->} \times 2/3 {<f bes d f>8 r r} \once\override DynamicLineSpanner #'padding = #1 \times 2/3 {<ees, f a>8-.\pp <ees f a> <ees f a>} | % 2.6 - 19
    \pageBreak
    <d f bes>4 r r8. f'16-4\([ g8. f16] |
    d8. ees16\) d4 r8. d16\([ ees8. c16\)] | % 3.1 - 21
    bes8.\( c16 bes4\) r8. a16-1\([ c8. bes16\)] |
    a8.-1( ees'16-4) ees4 r8. d16-3\([ f8. ees16] | % 3.2 - 23
    d8. ees16\) d4 r8. f16\([ g8. f16]  |
    d8. ees16\) d4 r8. d16\([ ees8. c16\)] | % 3.3 - 25
    bes8.\( c16 bes4\) r8.^\f a16\([ bes8. g'16\)] |
    f8.-> ees16 c4 r8.^\pp ees16-. \times 2/3 {ees8-.\( d-. c-.\)} | % 3.4 - 27
    \override TupletNumber #'transparent = ##f \times 4/6 {<bes d,>8[ r16 bes16 bes bes]} \stemUp \times 4/6 {bes8[ r16 bes16 bes bes]} \stemNeutral bes8.\<\([ bes16 g'8. f16\)] |
    ees4( d)\! ~ d8.[ c16-1\(_\markup{\italic "dim."} c8.-4 c16\)] | % 3.5 - 29
    bes8. g16 \override TupletNumber #'transparent = ##t \times 2/3 {bes8[ r16 bes bes bes]} bes8[\< r16 bes]\( g'8. f16\) |
    ees4-3( d^\markup{\finger "23"})\!\> ~ \times 2/3 {d8\( cis d} \times 2/3 {f8-^ ees-^ c-^\)\!} | % 4.1 - 31
    bes8.\( g16 \times 2/3 {bes8\)[ r16 bes bes bes]} bes8[ r16 g aes8. a16] |
    bes4 bes8.[ bes16] << {ees4.. ees16} \\ {f,8.[ f16 f8. f16]} \\ {a2} >> | % 4.2 - 33
    << {\times 2/3 {\once\override DynamicLineSpanner #'padding = #2 \once\override Fingering #'extra-offset = #'(0 . -2) ees'4-5\< \once\override Fingering #'extra-offset = #'(0 . -2) d8-5} \times 2/3 {f4 f8} \times 2/3 {f4 ees8} \times 2/3 {aes4 aes8\!}} \\ {<bes, f>4 <d aes!> <c g> <bes f'>} >> |
    << {\override TupletNumber #'transparent = ##t \times 2/3 {aes'8 g f-> ~} \times 2/3 {f8 ees d-> ~} \times 2/3 {d8 c bes-> ~} \times 2/3 {bes8 aes f->}} \\ {\override TupletNumber #'transparent = ##t \times 2/3 {<bes ees>8[ r aes]} \times 2/3 {g8[ r f]} \times 2/3 {ees8[ r des]} \times 2/3 {c8[ r ees]}} >> | % 4.3 - 35
    <ees g>4 #(set-octavation 1) \once\override DynamicLineSpanner #'padding = #-0.5 \times 2/3{<bes'' bes'>8\> <a a'> <aes aes'>} \times 2/3 {<g g'>8 <f f'> <ees ees'>\!} \times 2/3 {<d d'>8 <ees ees'> <c c'>} #(set-octavation 0) |
    \override TupletBracket #'transparent = ##t \times 2/3 {<bes bes'>8( <a a'> <bes bes'>) } \times 2/3 {<f' f'>4( <ees ees'>8)} \times 2/3 {<d d'>8 <cis cis'> <d d'>} \times 2/3 {<g g'>4( <f f'>8)} | % 4.4 - 37
    \break
    \times 2/3 {<ees ees'>4 r8} \times 2/3 {<g, g'>8\( <aes aes'> <a a'>} \times 2/3 {<bes bes'>8 <c c'> <d d'>} \times 2/3 {<ees ees'>8 <f f'> <g g'>\)} | % 4.5 - 38
    \break
    \times 2/3 {<aes aes'>4( <e e'>16 <f f'>)} \times 2/3 {<g g'>4( <f f'>16 <d d'>)} \times 2/3 {<bes bes'>4( <a a'>16 <bes bes'>)} \times 2/3 {<g' g'>4( <f f'>16 <d d'>)} | % 5.1 - 39
    \break
    \times 2/3 {<bes bes'>4 r8} \times 2/3 {<g g'>8\( <aes aes'> <a a'>} \times 2/3 {<bes bes'>8 <c c'> <d d'>} \times 2/3 {<ees ees'>8 <f f'> <g g'>\)} | % 5.2 - 40
    \break
    \times 2/3 {<aes aes'>4( <e e'>16 <f f'>)} \times 2/3 {<g g'>4( <f f'>16 <d d'>)} \times 2/3 {<b b'>4( <fis fis'>16 <g g'>)} \times 2/3 {<f' f'!>4( <ees ees'>16 <d d'>)} | % 5.3 - 41
    \break
    << {\override TupletNumber #'transparent = ##t \override TupletBracket #'transparent = ##t \times 2/3 {c'8 r r } \times 2/3 {ees,8 f g} \times 2/3 {c,8 d ees} \times 2/3 {ees8 f g}} \\ {\override TupletNumber #'transparent = ##t \times 2/3 {c,8 d ees} g,4 a f} >> | % 5.4 - 42
    \break
    \times 2/3 {<g' g'>4->( <f f'>8)} \times 2/3 {<aes aes'>4->( <g g'>8)} \times 2/3 {<f f'>4->( <ees ees'>8)} \times 2/3 {<d d'>4->_\markup{\italic "cres."}( <c c'>8)} | % 5.5 - 43
    \break
    \times 2/3 {<c c'>4( <bes bes'>8)} \times 2/3 {<ees g ees'>8-. <f aes f'>-. <g bes g'>-.} \times 2/3 {\once\override TextScript #'padding = #2 <aes c aes'>4_\markup{\italic "sempre"} <g bes g'>8} \times 2/3 {\acciaccatura{<bes d bes'>8} \once\override TextScript #'padding = #1.5 <aes c aes'>4_\markup{\italic "cres." \dynamic ff} <d, bes' d>8} | % 5.6 - 44
    \times 2/3 {<ees g ees'>4 r8} \times 2/3 {<g, g'>8\( <aes aes'> <a a'>} \times 2/3 {<bes bes'>8 <c c'> <d d'>} \times 2/3 {<ees ees'>8 <f f'> <g g'>\)} | % 6.1 - 45
    \break
    \times 2/3 {<aes aes'>4( <e e'>16 <f f'>)} \times 2/3 {<g g'>4( <f f'>16 <d d'>)} \times 2/3 {<bes bes'>4( <a a'>16 <bes bes'>)} \times 2/3 {<g' g'>4( <f f'>16 <d d'>)} | % 6.2 - 46
    \break
    \times 2/3 {<bes bes'>4 r8} \times 2/3 {<g g'>8\( <aes aes'> <a a'>} \times 2/3 {<bes bes'>8 <c c'> <d d'>} \times 2/3 {<ees ees'>8 <f f'> <g g'>\)} | % 6.3 - 47
    \break
    \times 2/3 {<aes aes'>4( <e e'>16 <f f'>)} \times 2/3 {<g g'>4( <f f'>16 <d d'>)} \times 2/3 {<b b'>4( <fis fis'>16 <g g'>)} \times 2/3 {<f' f'!>4( <ees ees'>16 <d d'>)} | % 6.4 - 48
    \break
    << {\override TupletNumber #'transparent = ##t \override TupletBracket #'transparent = ##t \times 2/3 {c'8 r r } \times 2/3 {ees,8 f g} \times 2/3 {c,8 d ees} \times 2/3 {ees8 f g}} \\ {\override TupletNumber #'transparent = ##t \times 2/3 {c,8 d ees} g,4 a f} >> | % 6.5 - 49
    \break
    \times 2/3 {<g' g'>4->( <f f'>8)} \times 2/3 {<aes aes'>4->( <g g'>8)} \times 2/3 {<f f'>4->( <ees ees'>8)} \times 2/3 {<d d'>4->_\markup{\italic "cres."}( <c c'>8)} | % 6.6 - 50
    \break
    \times 2/3 {<c c'>4( <bes bes'>8)} \times 2/3 {<ees g ees'>8-. <f aes f'>-. <g bes g'>-.} \times 2/3 {\once\override TextScript #'padding = #2 <aes c aes'>4_\markup{\italic "sempre"} <g bes g'>8} \times 2/3 {\acciaccatura{<bes d bes'>8} \once\override TextScript #'padding = #1.5 <aes c aes'>4_\markup{\italic "cres." \dynamic ff} <d, bes' d>8} | % 7.1 - 51
    \times 2/3 {<ees g ees'>8 <g g'> <bes bes'>-> ~} \times 2/3 {<bes bes'>8 <ees, ees'> <g g'>-> ~ } \times 2/3 {<g g'>8 <c, c'> <ees ees'>-> ~ } \times 2/3 {<ees ees'>8 <aes, aes'> <c c'>} |
    <b b'>4 r \once\override DynamicLineSpanner #'padding = #2 r\ppp \times 2/3 {<b f d>8-. <b f d>-. <b f d>-.} | % 7.2 - 53
    \times 2/3 {<c ees, c>8 r r } << {\override TupletNumber #'transparent = ##t \override TupletBracket #'transparent = ##t \set PianoStaff.connectArpeggios = ##t \times 2/3 {c8\( d <ees>\arpeggio\)} \times 2/3 {bes8\noBeam b\rest \once\override DynamicLineSpanner #'padding = #3 b\rest\pp}} \\ {\override TupletNumber #'transparent = ##t \times 2/3 {<ges ees>8 <ges d> <ges c,>\arpeggio} \times 2/3 {g8\noBeam s4}} >> \times 2/3 {<aes! d, bes>8-. <aes c, bes>-. <aes d, bes>-.} |
    \times 2/3 {<g ees bes>8\ff <g' g'>[ <bes bes'>]-> ~} \times 2/3 {<bes bes'>8 <ees, ees'> <g g'>-> ~ } \times 2/3 {<g g'>8 <c, c'> <ees ees'>-> ~ } \times 2/3 {<ees ees'>8 <aes, aes'> <c c'>} | % 7.3 - 55
    <b b'>4 r \once\override DynamicLineSpanner #'padding = #2 r\ppp \times 2/3 {<b f d>8-. <b f d>-. <b f d>-.} |
    \times 2/3 {<c ees, c>8 r r } << {\override TupletNumber #'transparent = ##t \override TupletBracket #'transparent = ##t \set PianoStaff.connectArpeggios = ##t \times 2/3 {c8\( d <ees>\arpeggio\)} \times 2/3 {bes8\noBeam b\rest \once\override DynamicLineSpanner #'padding = #3 b\rest\pp}} \\ {\override TupletNumber #'transparent = ##t \times 2/3 {<ges ees>8 <ges d> <ges c,>\arpeggio} \times 2/3 {g8\noBeam s4}} >> \times 2/3 {<aes! d, bes>8-. <aes c, bes>-. <aes d, bes>-.} | % 7.4 - 57
    \break
    \times 2/3 {<g ees bes>8 <ees bes g> <ees bes g>} \times 2/3 {<g ees>32[\( bes, <g' ees> bes, <g' ees> bes, <g' ees> bes, <g' ees> bes, <g' ees> bes,] } \times 2/3 {<g' bes>32[ ees <g bes> ees <g bes>\< ees <g bes> ees <g bes> ees <g bes> ees] } \stemUp \times 2/3 {<bes' ees>32[ g <bes ees> g <bes ees> g <bes ees> g <bes ees> g <bes ees> g]\)\! \stemNeutral } | % 7.5 - 58
    \break
    \times 4/6 {\repeat "tremolo" 12 {<g' bes ees>32 ees}} \times 4/6 {\repeat "tremolo" 12 {<g bes ees>32 ees}} |
    \times 2/3 {<g bes ees>8->[ <ees g bes ees>-> <ees g bes ees>->]} \times 2/3 {<ees g bes ees>8->[ <ees g bes ees>-> <ees g bes ees>->]} \times 2/3 {<ees g bes ees>8-> r r} \times 2/3 {<g bes ees g>8-> r r} |
    <ees g bes ees>4 r8. <ees, g,>16 <ees g,>4 r8. <ees g,>16 |
    <ees g,>2 r\fermata | % fin
    \bar "|."
}
lower = \relative c {
    \clef bass
    \key ees \major
    \time 4/4
    \partial 16*5
    r16 r4 |
    r <f f,>8[-. r16 <f f,>]-. <f f,>8-. r r4 |
    r <f f,>8[-. r16 <f f,>]-. <f f,>8-. r r4 | % 1.1 - 3
    r <f bes,>8[-. r16 <f bes,>]-. <f bes,>8-. r r4 |
    \stemDown
    \override TupletNumber #'transparent = ##t
    \times 2/3 {<ees ees,>8 <g bes>-.( <g bes>-.)} \times 2/3 {<g bes ees>8-.\( <g bes ees>-. <g bes ees>-.\)} \times 2/3 {<g g,> <g bes ees>-.\( <g bes ees>-.} \times 2/3 {<g bes ees>8-. <g bes ees>-. <g bes ees>-.\)} | % 1.2 - 5
    \times 2/3 {<f f,>8 <aes bes d>-.\( <aes bes d>-. } \times 2/3 {<aes bes d>8-. <aes bes d>-. <aes bes d>-.\)} \times 2/3 {<bes, bes'>8 <aes' bes d>-.\( <aes bes d>-. } \times 2/3 {<aes bes d>8-. <aes bes d>-. <aes bes d>-.\) } |
    \times 2/3 {<ees ees,>8 <g bes>-.\( <g bes>-.} \times 2/3 {<g bes>8-. <g bes>-. <g bes>-.\)} \times 2/3 {<g g,> <g bes ees>-.\( <g bes ees>-.} \times 2/3 {<g bes ees>8-. <g bes ees>-. <g bes ees>-.\)} | % 1.3 - 7
    \times 2/3 {<f f,>8 <aes bes d>-.\( <aes bes d>-. } \times 2/3 {<aes bes d>8-. <aes bes d>-. <aes bes d>-.\)} \times 2/3 {<bes, bes'>8 <aes' bes d>-.\( <aes bes d>-. } \times 2/3 {<aes bes d>8-. <aes bes d>-. <aes bes d>-.\) } |
    \times 2/3 {<ees ees,>8 <g bes ees> <g bes ees>} \times 2/3 {<e e,>8 <e g bes des> <e g bes des>} \times 2/3 {<f f,>8 <f aes c> <f aes c>} \times 2/3 {<g g,>8 <g bes ees> <g bes ees>} | % 1.4 - 9
    \times 2/3 {<aes aes,>8 <aes c ees> <aes c ees>} \times 2/3 {<b b,>8 <b d f aes> <b d f aes>} \times 2/3 {<c c,>8 <c ees g> <c ees g>} \times 2/3 {<a a,>8 <a c ees ges> <a c ees ges>} |
    \times 2/3 {<bes bes,>8 <bes ees g!> <bes ees g>} \times 2/3 {bes,8 <ees g bes> <ees g bes>} \times 2/3 {bes8 <d f aes bes> <d f aes bes>} <bes d f aes bes>8 r\fermata | % 1.5 - 11
    \override TupletNumber #'transparent = ##f
    \times 2/3 {<ees ges bes>16-> <ees ges bes> r8 r} \times 2/3 {<ees ges bes>16-> <ees ges bes>^\p r8 r} \times 2/3 {<ees ges bes>16-> <ees ges bes>^\p r8 r} \times 2/3 {<ees ges bes>16-> <ees ges bes>^\p r8 r} | % 2.1 - 12
    \times 2/3 {<d f aes bes>16-> <d f aes bes> r8 r} \times 2/3 {<d f aes bes>16-> <d f aes bes>^\p r8 r} \times 2/3 {<d f aes bes>16-> <d f aes bes>^\p r8 r} \times 2/3 {<d f aes bes>16-> <d f aes bes>^\p r8 r} | % 2.2 - 13
    \times 2/3 {<ees ges bes>16-> <ees ges bes> r8 r} \times 2/3 {<des fes ges bes>16-> <des fes ges bes>^\p r8 r} \times 2/3 {<ces ees ges! ces>16-> <ces ees ges ces>^\p r8 r} \times 2/3 {<bes des! ees g>16-> <bes des ees g>^\p r8 r} | % 2.3 - 14
    \times 2/3 {<aes ces ees aes>16-> <aes ces ees aes> r8 r} \times 2/3 {<ces! ees aes ces!>16-> <ces ees aes ces>^\p r8 r} \times 2/3 {<bes ees ges bes>16-> <bes ees ges bes>^\p r8 r} \times 2/3 {<bes d f aes>16-> <bes d f aes>^\p r8 r} | % 2.4 - 15
    \times 4/6 {<ees bes g ees>16-.\arpeggio g-. aes-. bes-. c-. d-.} \times 2/3 {ees8-2 aes,-5 aes-1} \times 2/3 {<f d bes>8.[ bes16 bes bes]} \times 2/3 {<f d bes>8. bes16 bes bes} |
    \times 4/6 {<ees, bes g ees>16-.\arpeggio g-. aes-. bes-. c-. d-.} \override TupletNumber #'transparent = ##t \override TupletBracket #'transparent = ##t \times 2/3 {ees8-2 aes,-5 aes-1} \times 2/3 {<f d bes>8.[ bes16 bes bes]} \times 2/3 {<f d bes>8. bes16 bes bes} | % 2.5 - 17
    \times 2/3 {<bes g ees>8 r r} \clef treble \times 2/3 {ees8-. ees ees} \times 2/3 {<d f>16-. <d f>-. r8 r} \times 2/3 {<d f>8-. <d f>-. <d f>-.} |
    \times 2/3 {<c ees>16-. <c ees>-. r8 r} \clef bass \times 2/3 {<ees, ees,>8-> <d d,>-> <c c,>->} \times 2/3 {<f d bes! f>8 r r} \times 2/3 {<f f,>8-. <f f,>-. <f f,>-.} | % 2.6 - 19
    \override TupletNumber #'transparent = ##t
    \once\override Staff.SustainPedal #'extra-offset = #'(-1.5 . 2) \times 2/3 {<bes, bes,>8\sustainDown <f' bes d> <f bes d>^\pp} \times 2/3 {<bes, bes,>8 <f' bes d> <f bes d>} \times 2/3 {<bes, bes,>8 <f' bes d> <f bes d>} \times 2/3 {<bes, bes,>8 <f' bes d> \once\override Staff.SustainPedal #'extra-offset = #'(0 . -2) <f bes d>\sustainUp} |
    \once\override Staff.SustainPedal #'extra-offset = #'(-1.5 . 2) \times 2/3 {<bes, bes,>8\sustainDown <f' bes d> <f bes d>} \times 2/3 {<bes, bes,>8 <f' bes d> <f bes d>} \times 2/3 {<bes, bes,>8 <f' bes d> <f bes d>} \times 2/3 {<bes, bes,>8 <ees g ees'> \once\override Staff.SustainPedal #'extra-offset = #'(0 . -2) <f a ees'>\sustainUp} | % 3.1 - 21
    \times 2/3 {<bes, bes,>8 <f' bes d> <f bes d>} \times 2/3 {<bes, bes,>8 <f' bes d> <f bes d>} \times 2/3 {<bes, bes,>8 <f' bes d> <f bes d>} \times 2/3 {<bes, bes,>8 <f' bes d> <f bes d>} |
    \times 2/3 {<f f,>8 <f a c ees> <f a c ees>} \times 2/3 {<f f,>8 <f a c ees> <f a c ees>} \times 2/3 {<f f,>8 <f a c ees> <f a c ees>} \times 2/3 {<f f,>8 <f a c ees> <f a c ees>} | % 3.2 - 23
    \times 2/3 {<bes, bes,>8 <f' bes d> <f bes d>} \times 2/3 {<bes, bes,>8 <f' bes d> <f bes d>} \times 2/3 {<bes, bes,>8 <f' bes d> <f bes d>} \times 2/3 {<bes, bes,>8 <f' bes d> <f bes d>} |
    \times 2/3 {<bes, bes,>8 <f' bes d> <f bes d>} \times 2/3 {<bes, bes,>8 <f' bes d> <f bes d>} \times 2/3 {<bes, bes,>8 <f' bes d> <f bes d>} \times 2/3 {<bes, bes,>8 <ees g ees'>-> <f a ees'>} | % 3.3 - 25
    \times 2/3 {<bes, bes,>8 <f' bes d> <f bes d>} \times 2/3 {<bes, bes,>8 <f' bes d> <f bes d>} \times 2/3 {<bes, bes,>8 <f' bes d> <f bes d>} \times 2/3 {<bes, bes,>8 <g' bes des e> <g bes des e>} |
    \times 2/3 {<f f,>8 <f a c ees!> <f a c ees>} \times 2/3 {<f f,>8 <f a c ees> <f a c ees>} \times 2/3 {<f f,>8 <f a c ees> <f a c ees>} \times 2/3 {<f f,>8 <f a c ees> <f a c ees>} | % 3.4 - 27
    \times 2/3 {<bes, bes,>8 <f' bes d> <f bes d>} \times 2/3 {<bes f d bes>8 <f bes d> <f bes d>} \times 2/3 {<bes, bes,>8 <aes' bes d> <aes bes d>} \times 2/3 {<bes, bes,>8 <aes' bes d> <aes bes d>} |
    \times 2/3 {<bes, bes,>8 <aes' bes d> <aes bes d>} \times 2/3 {<bes, bes,>8 <aes' bes d> <aes bes d>} \times 2/3 {<bes, bes,>8 <aes' bes d> <aes bes d>} \times 2/3 {<bes, bes,>8 <aes' bes d> <aes bes d>} | % 3.5 - 29
    \times 2/3 {<ees ees,>8 <ees g bes ees> <ees g bes ees>} \times 2/3 {<ees ees,>8 <ees g bes ees> <ees g bes ees>}  \times 2/3 {<ees ees,>8 <ees g bes ees> <ees g bes ees>}  \times 2/3 {<ees ees,>8 <ees g bes ees> <ees g bes ees>} |
    \times 2/3 {<bes bes,>8 <aes' bes d> <aes bes d>} \times 2/3 {<bes, bes,>8 <aes' bes d> <aes bes d>} \times 2/3 {<bes, bes,>8 <aes' bes d> <aes bes d>} \times 2/3 {<bes, bes,>8 <aes' bes d> <aes bes d>} | % 4.1 - 31
    \times 2/3 {<ees ees,>8 <ees g bes ees> <ees g bes ees>} \times 2/3 {<ees ees,>8 <ees g bes ees> <ees g bes ees>}  \times 2/3 {<ees ees,>8 <g bes ees> <g bes ees>}  \times 2/3 {<ees ees,>8 <g bes ees> <g bes ees>} |
    \times 2/3 {<d d,>8 <f bes d> <f bes d>} \times 2/3 {<d d,>8 <f bes d> <f bes d>} \times 2/3 {<c c,>8 <f a ees'> <f a ees'>} \times 2/3 {<c c,>8 <f a ees'> <f a ees'>} | % 4.2 - 33
    \times 2/3 {<bes, bes,>8 <f' bes d> <f bes d>} \times 2/3 {<b, b,>8 <aes' b d> <aes b d>} \times 2/3 {<c, c,>8 <g' c ees> <g c ees>} \times 2/3 {<d d,>8 <aes' bes d> <aes bes d>} |
    \times 2/3 {<ees ees,>8[ r <b' d f>] } \times 2/3 {<c ees>8[ r <g b d>]} \times 2/3 {<aes c>8[ r <e g>]} \times 2/3 {<f aes>8[ r <ces ces'>]} | % 4.3 - 35
    \times 2/3 {<bes bes'>8 <ees g bes> <ees g bes>} \times 2/3 {<bes' bes,>8 <bes ees g> <bes ees g>} \times 2/3 {<bes bes,>8 <bes ees g> <bes ees g>} \times 2/3 {<bes bes,>8 <a c ees fis> <a c ees fis>} |
    \times 2/3 {<bes bes,>8 <bes ees g> <bes ees g>} \times 2/3 {<bes bes,>8 <bes ees g> <bes ees g>} \times 2/3 {<bes bes,>8 <bes d f aes> <bes d f aes>} \times 2/3 {<bes bes,>8 <bes d f aes> <bes d f aes>} | % 4.4 - 37
    << {\override TupletNumber #'transparent = ##t \override TupletBracket #'transparent = ##t \times 2/3 {<g bes ees>8 ees16-.[ <g bes ees>-. bes,-. <g' bes ees>-.]} \times 2/3 {<g bes ees>8 ees16-.[ <g bes ees>-. bes,-. <g' bes ees>-.]} \times 2/3 {<g bes ees>8 ees16-.[ <g bes ees>-. bes,-. <g' bes ees>-.]} \times 2/3 {<g bes ees>8 ees16-.[ <g bes ees>-. bes,-. <g' bes ees>-.]}} \\ {\override TupletNumber #'transparent = ##t \override TupletBracket #'transparent = ##t \slurUp \times 2/3 {ees16-5([ d)-5 ees8-.-5 bes-5]} \times 2/3 {ees16[( d) ees8-. bes-.]} \times 2/3 {ees16[( d) ees8-. bes-.]} \times 2/3 {ees16[( d) ees8-. bes-.]}} >> | % 4.5 - 38
    << {\times 2/3 {<aes' bes d>8 f16-.[ <aes bes d>-. bes,-. <aes' bes d>-.]} \times 2/3 {<f aes bes>8 d16-.[ <f aes bes>-. bes,-. <f' aes bes>-.]} \times 2/3 {<aes bes d>8 f16-.[ <aes bes d>-. bes,-. <aes' bes d>-.]} \times 2/3 {<f aes bes>8 d16-.[ <f aes bes>-. bes,-. <f' aes bes>-.]}} \\ {\times 2/3 {f16([ e) f8-. bes,]} \times 2/3 {d16[( cis) d8-. bes-.]} \times 2/3 {f'16[( e) f8-. bes,-.]} \times 2/3 {d16[( cis) d8-. bes-.]}} >> | % 5.1 - 39
    << {\times 2/3 {<g' bes ees>8 ees16-.[ <g bes ees>-. bes,-. <g' bes ees>-.]} \times 2/3 {<g bes ees>8 ees16-.[ <g bes ees>-. bes,-. <g' bes ees>-.]} \times 2/3 {<g bes ees>8 ees16-.[ <g bes ees>-. bes,-. <g' bes ees>-.]} \times 2/3 {<g bes ees>8 ees16-.[ <g bes ees>-. bes,-. <g' bes ees>-.]}} \\ {\times 2/3 {ees16([ d) ees8-. bes]} \times 2/3 {ees16[( d) ees8-. bes-.]} \times 2/3 {ees16[( d) ees8-. bes-.]} \times 2/3 {ees16[( d) ees8-. bes-.]}} >> | % 5.2 - 40
    << {\times 2/3 {<aes' b d>8 f16-.[ <aes b d>-. b,-. <aes' b d>-.]} \times 2/3 {<f g b>8 d16-.[ <f g b>-. g,-. <f' g b>-.]} \times 2/3 {<g b d>8 f16-.[ <g b d>-. b,-. <g' b d>-.]} \times 2/3 {<f g b>8 d16-.[ <f g b>-. g,-. <f' g b>-.]}} \\ {\times 2/3 {f16([ e) f8-. b,]} \times 2/3 {d16[( cis) d8-. g,-.]} \times 2/3 {f'16[( e) f8-. b,-.]} \times 2/3 {d16[( cis) d8-. g,-.]}} >> | % 5.3 - 41
    << {\times 2/3 {<ees' g c>8 c16-.[ <c' ees>-. g-. <c ees>-.]} \times 2/3 {<ees, g c>8 c16[ <ees' g>-. c-. <ees g>-.]} \times 2/3 {<a, c f>8 f16-.[ <c' f>-. a-. <c f>-.]} \times 2/3 {f,16( \set stemRightBeamCount = #1 e!) \set stemLeftBeamCount = #1 f-. <a c>-. f,-. <a' c>-.} } \\ {\times 2/3 {c,16([ b) c8-. g'-.]} \times 2/3 {c,16([ b) c8-. c'-.]} \times 2/3 { f,16([ e) f8-. a-.]} \times 2/3 {<f, a c>16([ e) <f f'>8-. f-.]}} >> | % 5.4 - 42
    << {\times 2/3 {<bes' f d>8 bes,16-.[ <d' f>-. bes-. <d f>-.]} \times 2/3 {<aes f d>8 b,16-.[ <d' f aes>-. b-. <d f aes>-.]} \times 2/3 {<c g ees>8 c,16-.[ <ees' g>-. c-. <ees g>-.]} \times 2/3 {<fis, ees c>8 a,16-.[ <c' ees fis>-. a-. <c ees fis>-.]}} \\ {\times 2/3 {bes,16([ a) bes8-. bes'-.]} \times 2/3 {b,16([ ais) b8-. b'-.]} \times 2/3 {c,16([ b!) c8-. c'-.]} \times 2/3 {a,16([ gis) a8-. a'-.]}} >> | % 5.5 - 43
    << {\times 2/3 {<bes g ees>8 bes,16-.[ <ees' g>-. bes-. <ees g>-.]} \times 2/3 {<bes g ees>8 bes,16-.[ <ees' g>-. bes-. <ees g>-.]} \times 2/3 {<aes,! f d>8 bes,16-.[ <d' f aes!>-. bes-. <d f aes>-.]} \times 2/3 {<aes! f d>8 bes,16-.[ <d' f aes!>-. bes-. <d f aes>-.]}} \\ {\times 2/3 {bes,16([ a) bes8-. bes'-.]} \times 2/3 {bes,16([ a!) bes8-. bes'-.]} \times 2/3 {bes,16([ a!) bes8-. bes'-.]} \times 2/3 {bes,16([ a!) bes8-. bes'-.]}} >> | % 5.6 - 44
    << {\times 2/3 {<g bes ees>8 ees16-.[ <g bes ees>-. bes,-. <g' bes ees>-.]} \times 2/3 {<g bes ees>8 ees16-.[ <g bes ees>-. bes,-. <g' bes ees>-.]} \times 2/3 {<g bes ees>8 ees16-.[ <g bes ees>-. bes,-. <g' bes ees>-.]} \times 2/3 {<g bes ees>8 ees16-.[ <g bes ees>-. bes,-. <g' bes ees>-.]}} \\ {\times 2/3 {ees16([ d) ees8-. bes]} \times 2/3 {ees16[( d)^\pp ees8-. bes-.]} \times 2/3 {ees16[( d) ees8-. bes-.]} \times 2/3 {ees16[( d) ees8-. bes-.]}} >> | % 6.1 - 45
    << {\times 2/3 {<aes' bes d>8 f16-.[ <aes bes d>-. bes,-. <aes' bes d>-.]} \times 2/3 {<f aes bes>8 d16-.[ <f aes bes>-. bes,-. <f' aes bes>-.]} \times 2/3 {<aes bes d>8 f16-.[ <aes bes d>-. bes,-. <aes' bes d>-.]} \times 2/3 {<f aes bes>8 d16-.[ <f aes bes>-. bes,-. <f' aes bes>-.]}} \\ {\times 2/3 {f16([ e) f8-. bes,]} \times 2/3 {d16[( cis) d8-. bes-.]} \times 2/3 {f'16[( e) f8-. bes,-.]} \times 2/3 {d16[( cis) d8-. bes-.]}} >> | % 6.2 - 46
    << {\times 2/3 {<g' bes ees>8 ees16-.[ <g bes ees>-. bes,-. <g' bes ees>-.]} \times 2/3 {<g bes ees>8 ees16-.[ <g bes ees>-. bes,-. <g' bes ees>-.]} \times 2/3 {<g bes ees>8 ees16-.[ <g bes ees>-. bes,-. <g' bes ees>-.]} \times 2/3 {<g bes ees>8 ees16-.[ <g bes ees>-. bes,-. <g' bes ees>-.]}} \\ {\times 2/3 {ees16([ d) ees8-. bes]} \times 2/3 {ees16[( d) ees8-. bes-.]} \times 2/3 {ees16[( d) ees8-. bes-.]} \times 2/3 {ees16[( d) ees8-. bes-.]}} >> | % 6.3 - 47
    << {\times 2/3 {<aes' b d>8 f16-.[ <aes b d>-. b,-. <aes' b d>-.]} \times 2/3 {<f g b>8 d16-.[ <f g b>-. g,-. <f' g b>-.]} \times 2/3 {<g b d>8 f16-.[ <g b d>-. b,-. <g' b d>-.]} \times 2/3 {<f g b>8 d16-.[ <f g b>-. g,-. <f' g b>-.]}} \\ {\times 2/3 {f16([ e) f8-. b,]} \times 2/3 {d16[( cis) d8-. g,-.]} \times 2/3 {f'16[( e) f8-. b,-.]} \times 2/3 {d16[( cis) d8-. g,-.]}} >> | % 6.4 - 48
    << {\times 2/3 {<ees' g c>8 c16-.[ <c' ees>-. g-. <c ees>-.]} \times 2/3 {<ees, g c>8 c16[ <ees' g>-. c-. <ees g>-.]} \times 2/3 {<a, c f>8 f16-.[ <c' f>-. a-. <c f>-.]} \times 2/3 {f,16( \set stemRightBeamCount = #1 e!) \set stemLeftBeamCount = #1 f-. <a c>-. f,-. <a' c>-.} } \\ {\times 2/3 {c,16([ b) c8-. g'-.]} \times 2/3 {c,16([ b) c8-. c'-.]} \times 2/3 { f,16([ e) f8-. a-.]} \times 2/3 {<f, a c>16([ e) <f f'>8-. f-.]}} >> | % 6.5 - 49
    << {\times 2/3 {<bes' f d>8 bes,16-.[ <d' f>-. bes-. <d f>-.]} \times 2/3 {<aes f d>8 b,16-.[ <d' f aes>-. b-. <d f aes>-.]} \times 2/3 {<c g ees>8 c,16-.[ <ees' g>-. c-. <ees g>-.]} \times 2/3 {<fis, ees c>8 a,16-.[ <c' ees fis>-. a-. <c ees fis>-.]}} \\ {\times 2/3 {bes,16([ a) bes8-. bes'-.]} \times 2/3 {b,16([ ais) b8-. b'-.]} \times 2/3 {c,16([ b!) c8-. c'-.]} \times 2/3 {a,16([ gis) a8-. a'-.]}} >> | % 5.6 - 50
    << {\times 2/3 {<bes g ees>8 bes,16-.[ <ees' g>-. bes-. <ees g>-.]} \times 2/3 {<bes g ees>8 bes,16-.[ <ees' g>-. bes-. <ees g>-.]} \times 2/3 {<aes,! f d>8 bes,16-.[ <d' f aes!>-. bes-. <d f aes>-.]} \times 2/3 {<aes! f d>8 bes,16-.[ <d' f aes!>-. bes-. <d f aes>-.]}} \\ {\times 2/3 {bes,16([ a) bes8-. bes'-.]} \times 2/3 {bes,16([ a!) bes8-. bes'-.]} \times 2/3 {bes,16([ a!) bes8-. bes'-.]} \times 2/3 {bes,16([ a!) bes8-. bes'-.]}} >> | % 7.1 - 51
    \break
    \stemNeutral \times 2/3 {<ees bes g ees>8-> <ees g, ees>-> <d f, d>->} \times 2/3 {<c ees, c>8-> <c ees, c>-> <bes d, bes>->} \times 2/3 {<aes c, aes>8-> <aes c, aes>-> <g bes, g>->} \times 2/3 {<f aes, f>8-> <f aes, f>-> <ees g, ees>->} |
    <d f, d>4 r r \times 2/3 {<g g,>8-. <g g,>-. <g g,>-.} | % 7.2 - 53
    \override TupletBracket #'transparent = ##t \times 2/3 {<aes aes,>8 r r} \times 2/3 {<a a,>8^\< <a a,> <a a,>} \times 2/3 {<bes bes,>8\! r r} \times 2/3 {<aes bes,>8-. <aes bes,>-. <aes bes,>-.} |
    \times 2/3 {<g ees>8 <ees' g, ees>-> <d f, d>->} \times 2/3 {<c ees, c>8-> <c ees, c>-> <bes d, bes>->} \times 2/3 {<aes c, aes>8-> <aes c, aes>-> <g bes, g>->} \times 2/3 {<f aes, f>8-> <f aes, f>-> <ees g, ees>->} | % 7.3 - 55
    <d f, d>4 r r \times 2/3 {<g g,>8-. <g g,>-. <g g,>-.} |
    \times 2/3 {<aes aes,>8 r r} \times 2/3 {<a a,>8^\< <a a,> <a a,>} \times 2/3 {<bes bes,>8\! r r} \times 2/3 {<aes bes,>8-. <aes bes,>-. <aes bes,>-.} | % 7.4 - 57
    \times 2/3 {ees16-2( d) ees8-. bes-.} << {\override TupletBracket #'transparent = ##t \override TupletNumber #'transparent = ##t \times 2/3 {ees16( d) ees8-. bes-.} \times 2/3 {\set fingeringOrientations = #'(left) <ees-2>16([ d) ees8-. bes-.]} \times 2/3 {<ees-2>16( d) ees8-. bes-.}} \\ {\set fingeringOrientations = #'(left) \override TupletBracket #'transparent = ##t \override TupletNumber #'transparent = ##t \times 2/3 {ees8 r r} \times 2/3 {<bes-4>8 r r}\times 2/3 {<g-5>8 r r}} >> | % 7.5 - 58
    \times 2/3 {<ees' ees,>8->^\ff <bes' bes,>-> <g g,>->} \times 2/3 {<ees ees,>8->[ <bes' bes,>-> <g g,>->]} \times 2/3 {<ees ees,>8->[ <bes' bes,>-> <g g,>->]} \times 2/3 {<ees ees,>8->[ <bes' bes,>-> <g g,>->]} |
    \times 2/3 {<ees ees,>8->[ <ees bes g ees>-> <ees bes g ees>->]} \times 2/3 {<ees bes g ees>8->[ <ees bes g ees>-> <ees bes g ees>->]} \times 2/3 {<ees bes g ees>8-> r r} \times 2/3 {<ees g bes ees>8-> r r} |
    <ees bes g ees>4 r8. <ees bes ees,>16 <ees bes ees,>4 r8. <ees bes ees,>16 |
    <ees bes ees,>2 \once\override TextScript #'padding = #2 r\fermata_\markup{\right-align "Fine dell' atto secondo. "} | % fin
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
    first-page-number = 104
    print-first-page-number = ##t
    ragged-last-bottom = ##f
    %#(set-paper-size "a4")
}
