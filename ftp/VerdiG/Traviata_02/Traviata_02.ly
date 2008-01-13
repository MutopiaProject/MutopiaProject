\version "2.10.25"
\header {
    title = \markup \center-align { \bigger "La Traviata" " " }
    subtitle = "Brindisi dell introduzione"
    subsubtitle = \markup {\italic "«Libiamo ne'lieti calici»"}
    composer = "G. Verdi"
    arranger = "Transcripción de N. Toledo"
    piece = "Nº 2"

    %copyright = "Calcografía de la 'Nueva Biblioteca Musical Económica', 1857-1869"
    % Mutopia headers
    mutopiatitle = "La Traviata - N2 Brindisi"
    mutopiacomposer = "VerdiG"
    mutopiainstrument = "Piano"
    source = "Calcografía de la 'Nueva Biblioteca Musical Económica', 1857-1869"
    style = "Romantic"
    copyright = "Public Domain"
    maintainer = "Alberto Corella"
    maintainerEmail = "ppiano@telefonica.net"
 footer = "Mutopia-2008/01/13-1215"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

upper = \relative c'' {
    \clef treble
    \key bes \major
    \time 3/8
    R4.^\markup{\column {\line {\bold "Allegretto. ("\note #"4" #1 \bold " = 69)"} " "}} |
    r8 r \once\override DynamicText #'extra-offset = #'(-2.5 . 2) <f, f'>\f |
    <d'd'>4.-> ~ |
    <d d'>8 <f, f'>-. <d' d'>-. | % 1.1 - 4
    <d d'>8-. <f f,>-. <d d'>-. |
    \set fingeringOrientations = #'(left) \override DynamicLineSpanner #'staff-padding = #3 \once\override PhrasingSlur #'positions = #'(7.0 . 6.0)<d-1 d'-5>\(\<[ \grace {ees'16-4[_( d-5])} \set fingeringOrientations = #'(up) \once\override Fingering #'avoid-slur = #'inside <cis-4 cis,>8 <d d,>]\) |
    <f f,>4.\!\>( ~ |
    \revert DynamicLineSpanner #'staff-padding
    <f f,>8 <ees ees,> <d d,>)\! | % 1.2 - 8
    \once\override DynamicText #'extra-offset = #'(0 . -2)
    <c c,>\ppp \acciaccatura {d8-5} <c-4 ees,-1>16 <b-3 d,-1> <c-4 ees,-1> <d-5 f,-1> |
    <c-4 ees,-1>8 \acciaccatura {d8-5} <c ees,>16( <b d,> <c ees,> <d f,>) |
    <c-5 ees,-2>4( <bes-4 d,-1>8) |
    f8-2 r <f f,>\f | % 1.3 - 12
    <d d'>4. ~ |
    <d d'>8 <f, f'>-. <d' d'>-. |
    <d d'>8-. <f f,>-. <d d'>-. |
    \override DynamicLineSpanner #'staff-padding = #3 \once\override PhrasingSlur #'positions = #'(7.0 . 6.0)<d d'>\(\<[ \grace {ees'16[_( d])} <cis cis,>8 <d d,>]\) | % 1.4 - 16
    <f f,>4.\!\>( ~ |
    \revert DynamicLineSpanner #'staff-padding
    <f f,>8 <ees ees,> <d d,>)\! |
    \once\override DynamicText #'extra-offset = #'(0 . -2)
    <c c,>\ppp \acciaccatura {d8} <c ees,>16 <b d,> <c ees,> <d f,> |
    <c ees,>8 \acciaccatura {d8} <c ees,>16( <b d,> <c ees,> <d f,>) |
    R4.^\markup{\musicglyph #"scripts.ufermata"} |
    R4. | % 1.5 - 22
    \once\override TextScript #'staff-padding = #2.0
    r8^\markup{\italic "con grazia. leggeriss."} r f,,-1 |
    d'4. ~ |
    d8 f,-. d'-. |
    d8-. f,-. d'-. |
    d8-3\([ \appoggiatura{ees16-4[ d-3]} cis8-2 d-3\)] | % 2.1 - 27
    f4.-5 ~ |
    f8\( ees d\) |
    c-2\pp \acciaccatura {d8-4} c16-3\( b c d\) |
    c8 \acciaccatura {d8} c16\( b c d\) | % 2.2 - 31
    c4-3\( bes8-2 |
    f8-1\) r f |
    d'4. ~ |
    d8-. f,-. d'-. |
    d8-. f,-. d'-. | % 2.3 - 36
    d8\([ \appoggiatura{ees16[ d]} cis8 d\)] |
    f4. ~ |
    f8\( ees d\) |
    c\pp \acciaccatura {d8} c16\( b c d\) |
    c8 \acciaccatura {d8} c16\( b c d\) | % 2.4 - 41
    bes!4 r8 |
    r r bes-2 |
    ees4-4 ees8-3 |
    ees-3 \acciaccatura {f8-4} ees16-3\( d ees f\) |
    ees4->( d8) | % 2.5 - 46
    \once\override TextScript #'staff-padding = #2.0
    d4(^\markup{\italic "legato."} f,8-1) |
    c'4-3\p c8 |
    c8-3 \acciaccatura {d8-4} c16\( b c d\) |
    c4.( |
    bes8) r bes-2 | % 2.6 - 51
    ees4-4 ees8-3 |
    ees8 \acciaccatura {f8} ees16\( d ees f\) |
    ees4.( |
    d4)\( \override Fingering #'avoid-slur = #'inside f8-4 |
    \set fingeringOrientations = #'(down) <a,-1>4 \revert Fingering #'avoid-slur <a-3>8\) | % 3.1 - 56
    a8-3 \acciaccatura {bes8-4} a16-3\( gis a bes\) |
    a4.\< ~ |
    a8\( c-5 f,-1\)\! |
    d'4. ~ |
    d8 f,-. d'-. | % 3.2 - 61
    d8-. f,-. d'-. |
    d8\([ \appoggiatura{ees16[ d]} cis8 d\)] |
    \acciaccatura {g,8} g'4.-> ~ |
    g8\( \once\override Fingering #'avoid-slur = #'inside f-4 ees\) |
    d8-2\ppp \acciaccatura {ees8-4} d16-3\( cis d ees\) | % 3.3 - 66
    c8-2 \acciaccatura {d8-4} c!16\( b c d\) |
    bes!8 <d bes' d>4\f\> ~ |
    <d bes' d>8\!\( <f aes f'> <ees g ees'>\) |
    <d f d'> \acciaccatura {ees'8} <d f,>16\p\( <cis e,> <d f,> <ees! g,>\) |
    <c! ees,!>8 \acciaccatura {d8} <c ees,>16\( <b d,> <c ees,> <d f,>\) | % 3.4 - 71
    <bes! d,>8 <d, bes' d>4\f\> ~ |
    <d bes' d>8\!\( <f aes f'> <ees g ees'>\) |
    <d f d'> \acciaccatura {ees'8} <d f,>16\( <cis e,> <d f,> <ees! g,>\) |
    <c! ees,!>8 \acciaccatura {d8} <c ees,>16\( <b d,> <c ees,> <d f,>\) |
    <bes! d,>8 <bes d f bes>-> r |
    r\fermata r f,8 | % 3.5 - 77
    d'4.\p ~ |
    d8 f,-. d'-. |
    d8-. f,-. d'-. |
    d8\([ \appoggiatura{ees16[ d]} cis8 d\)] |
    f4.-> ~ |
    f8\( ees d\) | % 4.1 - 83
    c\pp \acciaccatura {d8-4} c16-3\( b c d\) |
    c8 \acciaccatura {d8} c16\( b c d\) |
    c4\( bes8 |
    f8\) r f |
    d'4. ~ | % 4.2 - 88
    d8-. f,-. d'-. |
    d8-. f,-. d'-. |
    d8\([ \appoggiatura{ees16[ d]} cis8 d\)] |
    f4. ~ |
    f8\( ees d\) |
    c \acciaccatura {d8} c16\( b c d\) | % 4.3 - 94
    c8-.\( \acciaccatura {d8} c16 b c d\) |
    bes4 r8 |
    r r bes |
    ees4 ees8 |
    ees-.\( \acciaccatura {f8} ees16 d ees f\) | % 4.4 - 99
    ees4( d8) |
    d4( f,8) |
    c'4 c8 |
    c-. \acciaccatura {d8} c16\( b c d\) |
    c4.( |
    bes8) r bes | % 4.5 - 105
    ees4 ees8 |
    ees \acciaccatura {f8} ees16\( d ees f\) |
    ees4.( |
    d4)\( f8 |
    a,4 a8-3\) | % 4.6 - 110
    a8 \acciaccatura {bes8} a16\( gis a bes\) |
    a4.\< ~ |
    a8\! c( f,) |
    d'4. ~ |
    d8 f, d' | % 5.1 - 115
    d-. f,-. d'-. |
    d8\([ \appoggiatura {ees16[ d]} cis8 d\)] |
    \acciaccatura {g,8} g'4. ~ |
    g8\( f ees\) |
    d8 \acciaccatura {ees8} d16\( cis d ees\) | % 5.2 - 120
    c!8 c16\( bes c d\) |
    bes8 bes'4 ~ |
    bes4 bes,8 |
    g'4.\f ~ |
    g8-. bes,-. g'-. |
    g-. bes,-. g'-. | % 5.3 - 126
    g-3\([ \appoggiatura {aes16[ g]} fis8-2 g-3]\) |
    bes4.-5\ff\> ~ |
    bes8\( aes g\)\! |
    f8-2 \acciaccatura {g8-4} f16-3\( e f g\) |
    f8 \acciaccatura {g8} f16\( e f g\) | % 5.4 - 131
    f4\( ees8 |
    bes\) r bes |
    g'4. ~ |
    g8-. bes,-. g'-. |
    g-. bes,-. g'-. |
    g\([ \appoggiatura {aes16[ g]} fis8 g]\) | % 5.5 - 137
    c4. ~ |
    c8\( bes aes\) |
    g8 \acciaccatura {a8-4} g16\( fis g a\) |
    f!8 \acciaccatura {g8} f16\( e f g\) |
    ees!8 r bes | % 5.6 - 142
    ees4\p ees8 |
    ees8 \acciaccatura {f8} ees16\( d ees f\) |
    ees4.( |
    d4) f,8 |
    c'4 c8 | % 6.1 - 147
    c8 \acciaccatura {d8} c16\( b c d\) |
    c4.( |
    bes4) bes8 |
    ees4 ees8 |
    ees8 \acciaccatura {f8} ees16\( d ees f\) | % 6.2 - 152
    ees4.( |
    d4) f8 |
    a,4 a8 |
    a8 \acciaccatura {bes8} a16\( g a bes\) |
    a4. ~ | % 6.3 - 157
    a8\( c <f f,>\) |
    \override TextSpanner #'edge-text = #'("con 8ª " . "")
    \textSpannerUp
    d4.\pp\startTextSpan ~ |
    d8-. f,-. d'-. |
    d8-. f,-. d'-. |
    d8\([ \appoggiatura{ees16[ d]} cis8 d\)] | % 6.4 - 162
    f4. ~ |
    f8\( ees d\) | 
    c \acciaccatura {d8} c16\( b c d\) |
    c8 \acciaccatura {d8} c16\( b c d\) |
    c4( c8) | % 6.5 - 167
    f,8 r f |
    d'4.-> ~ |
    d8 f,-. d'-. |
    d-. f,-. d'-. |
    d[\( \appoggiatura {ees16[ d]} cis8 d]\) |
    g4.-> ~ | % 7.1 - 173
    g8\( f ees\) |
    d8 \acciaccatura {ees8} d16\( cis d ees\) |
    c!8 \acciaccatura {d8} c16\( b c d\) |
    bes8\stopTextSpan #(set-octavation 1) <f' f'>4\f-> ~ |
    <f f'>8 <f f'>4 ~ | % 7.2 - 178
    <f f'>8\( <a f' a> <g ees' g>\) |
    <f d' f>16( <g ees' g>) <f d' f>8-. <ees c' ees>-. |
    <d bes' d> <f f'>4-> ~ |
    <f f'>8 <f f'>4 ~ |
    <f f'>8\( <a f' a> <g ees' g>\) |
    <f d' f>16( <g ees' g>) <f d' f>8-. <ees c' ees>-. | % 7.3 - 184
    <d bes' d>8\f\< f'4\startTrillSpan_\markup{\finger "2 3"} ~ |
    f4. ~ |
    f4. ~ |
    \afterGrace f4.\stopTrillSpan {e16[-1 f]-2} |
    \set fingeringOrientations = #'(left) 
    <d-2 f-3 bes-5>16\!\ff  bes <d f bes> bes <d f bes> bes | % 7.4 - 189
    <d f bes> bes <d f bes> bes <d f bes> bes |
    <d f bes> bes <d f bes> bes <d f bes> bes |
    <d f bes> bes <d f bes> bes <d f bes> bes |
    <d f bes>8 #(set-octavation 0) r r\fermata | % fin
    \bar "|."
}
lower = \relative c {
    \clef bass
    \key bes \major
    \time 3/8
    \once\override Fingering #'extra-offset = #'(0 . -2.5)
    bes8-5^\f \set fingeringOrientations = #'(left) <f'-5 bes-2 d-1> <f bes d> |
    bes, <f' bes d> <f bes d> |
    bes, <f' bes d> <f bes d> |
    bes, <f' bes d> <f bes d> | % 1.1 - 4
    bes, <f' bes d> <f bes d> |
    bes, <f' bes d> <f bes d> |
    bes, <f' bes d> <f bes d> |
    bes, <f' bes d> <f bes d> | % 1.2 - 8
    <f f,> <f-5 a-3 ees'-1> <f a ees'> |
    <f f,> <f a ees'> <f a ees'> |
    bes, <f' bes d> <f bes d> |
    bes, <f' bes d> <f bes d> | % 1.3 - 12
    bes, <f' bes d> <f bes d> |
    bes, <f' bes d> <f bes d> |
    bes, <f' bes d> <f bes d> |
    bes, <f' bes d> <f bes d> | % 1.4 - 16
    bes, <f' bes d> <f bes d> |
    bes, <f' bes d> <f bes d> |
    <f f,> <f a ees'> <f a ees'> |
    <f f,> <f a ees'> <f a ees'> |
    R4.^\markup{\musicglyph #"scripts.ufermata"} |
    bes,8 <f' bes d> <f bes d> | % 1.5 - 22
    bes, <f' bes d> <f bes d> |
    bes, <f' bes d> <f bes d> |
    bes, <f' bes d> <f bes d> |
    bes, <f' bes d> <f bes d> |
    bes, <f' bes d> <f bes d> | % 2.1 - 27
    bes, <f' bes d> <f bes d> |
    bes, <f' bes d> <f bes d> |
    f-5 <a ees'> <a ees'> |
    f <a ees'> <a ees'> | % 2.2 - 31
    bes, <f' bes d> <f bes d> |
    bes, <f' bes d> <f bes d> |
    bes, <f' bes d> <f bes d> |
    bes, <f' bes d> <f bes d> |
    bes, <f' bes d> <f bes d> | % 2.3 - 36
    bes, <f' bes d> <f bes d> |
    bes, <f' bes d> <f bes d> |
    bes, <f' bes d> <f bes d> |
    f <a ees'> <a ees'> |
    f <a ees'> <a ees'> | % 2.4 - 41
    bes, <f' bes d> <f bes d> |
    bes, <f' bes d> <f bes d> |
    << {\override Staff.NoteCollision #'merge-differently-dotted = ##t ees4.} \\ {ees8 <g bes ees> <g bes ees>} >> |
    << {ees4.} \\ {ees8 <g bes ees> <g bes ees>} >> |
    bes, <f' bes d> <f bes d> | % 2.5 - 46
    bes, <f' bes d> <f bes d> |
    f <a ees'> <a ees'> |
    f <a ees'> <a ees'> |
    bes, <f' bes d> <f bes d> |
    bes, <f' bes d> <f bes d> | % 2.6 - 51
    << {g4.} \\ {g8 <bes ees g> <bes ees g>} >> |
    << {g4.} \\ {g8 <bes ees g> <bes ees g>} >> |
    <a a,>8 <a d f> <a d f> |
    <a a,>8 <a d f> <a d f> |
    <a a,>8 <a cis e> <a cis e> | % 3.1 - 56
    <a a,>8 <a cis e> <a cis e> |
    d, <a' d f> <a d f> |
    c, <f a ees'> <f a ees'> |
    bes, <f' bes d> <f bes d> |
    bes, <f' bes d> <f bes d> | % 3.2 - 61
    bes, <f' bes d> <f bes d> |
    bes, <f' bes d> <f bes d> |
    <f f,> <f bes d> <f bes d> |
    <f f,> <f bes d> <f bes d> |
    <f f,> <f bes d> <f bes d> | % 3.3 - 66
    <f f,> <f a ees'> <f a ees'> |
    \set fingeringOrientations = #'(left) 
    <bes-2 d-1>8 <bes, bes,>16_([ <d d,>) <f f,>8] |
    <aes aes,> <d, d,> <ees ees,> |
    <f f,> <f bes d> <f bes d> | 
    <f f,> <f a ees'> <f a ees'> | % 3.4 - 71
    <bes d>8 <bes, bes,>16_([ <d d,>) <f f,>8] |
    <aes aes,> <d, d,> <ees ees,> |
    <f f,> <f bes d> <f bes d> | 
    <f f,> <f a ees'> <f a ees'> |
    <bes d> <bes f d bes>-> r |
    R4.^\markup{\musicglyph #"scripts.ufermata"} | % 3.5 - 77
    bes,8 <f' bes d> <f bes d> |
    bes, <f' bes d> <f bes d> |
    bes, <f' bes d> <f bes d> |
    bes, <f' bes d> <f bes d> |
    bes, <f' bes d> <f bes d> |
    bes, <f' bes d> <f bes d> | % 4.1 - 83
    f <a ees'> <a ees'> |
    f <a ees'> <a ees'> |
    bes, <f' bes d> <f bes d> |
    bes, <f' bes d> <f bes d> |
    bes, <f' bes d> <f bes d> | % 4.2 - 88
    bes, <f' bes d> <f bes d> |
    bes, <f' bes d> <f bes d> |
    bes, <f' bes d> <f bes d> |
    bes, <f' bes d> <f bes d> |
    bes, <f' bes d> <f bes d> |
    f <a ees'> <a ees'> | % 4.3 - 94
    f <a ees'> <a ees'> |
    bes, <f' bes d> <f bes d> |
    bes, <f' bes d> <f bes d> |
    << {ees4.} \\ {ees8 <g bes ees> <g bes ees>} >> |
    << {ees4.} \\ {ees8 <g bes ees> <g bes ees>} >> | % 4.4 - 99
    bes, <f' bes d> <f bes d> |
    bes, <f' bes d> <f bes d> |
    f <a c ees> <a c ees> |
    f <a c ees> <a c ees> |
    <bes bes,> <f bes d> <f bes d> |
    <bes bes,> <f bes d> <f bes d> | % 4.5 - 105
    << {g4.} \\ {g8 <bes ees g> <bes ees g>} >> |
    << {g4.} \\ {g8 <bes ees g> <bes ees g>} >> |
    <a a,> <a d f> <a d f> |
    <a a,> <a d f> <a d f> |
    <a a,> <a cis e> <a cis e> | % 4.6 - 110
    <a a,> <a cis e> <a cis e> |
    d, <a' d f> <a d f> |
    c, <f a ees'!> <f a ees'> |
    bes, <f' bes d> <f bes d> |
    bes, <f' bes d> <f bes d> | % 5.1 - 115
    bes, <f' bes d> <f bes d> |
    bes, <f' bes d> <f bes d> |
    <f f,> <f bes d> <f bes d> |
    <f f,> <f bes d> <f bes d> |
    <f f,> <f bes d> <f bes d> | % 5.2 - 120
    <f f,> <f a ees'> <f a ees'> |
    \set fingeringOrientations = #'(left) 
    <bes-2 d-1>8  <bes,-5 d-3>\( <c-4 ees-2> |
    <d-3 f-1> <ees-2 g-1> <f-4 aes-2>\) |
    <ees ees,> <bes ees g> <bes ees g> |
    ees, <bes' ees g> <bes ees g> |
    ees, <bes' ees g> <bes ees g> | % 5.2 - 126
    ees, <bes' ees g> <bes ees g> |
    <ees ees,> <bes ees g> <bes ees g> |
    <ees ees,> <bes ees g> <bes ees g> |
    <bes bes,> <bes d aes'> <bes d aes'> |
    <bes bes,> <bes d aes'> <bes d aes'> | % 5.3 - 131
    <ees ees,> <bes ees g> <bes ees g> |
    <ees ees,> <bes ees g> <bes ees g> |
    <ees ees,> <bes ees g> <bes ees g> |
    <ees ees,> <bes ees g> <bes ees g> |
    <ees ees,> <bes ees g> <bes ees g> |
    <ees ees,> <bes ees g> <bes ees g> | % 5.4 - 137
    <bes bes,> <bes ees g> <bes ees g> |
    <bes bes,> <bes ees g> <bes ees g> |
    <bes bes,> <bes ees g> <bes ees g> |
    <bes bes,> <bes d aes'> <bes d aes'> |
    <ees ees,> <bes ees g> <bes ees g> | % 5.5 - 142
    << {ees4.} \\ {ees8 <g bes ees> <g bes ees>} >> |
    << {g4.} \\ {g8 <bes ees g> <bes ees g>} >> |
    bes,8 <f' bes d f> <f bes d f> |
    bes,8 <f' bes d f> <f bes d f> |
    f <a c ees f> <a c ees f> | % 6.1 - 147
    f <a c ees f> <a c ees f> |
    bes,8 <f' bes d f> <f bes d f> |
    bes,8 <f' bes d f> <f bes d f> |
    << {g4.} \\ {g8 <bes ees g> <bes ees g>} >> |
    << {g4.} \\ {g8 <bes ees g> <bes ees g>} >> | % 6.2 - 152
    <a a,>8 <a d f> <a d f> |
    <a a,>8 <a d f> <a d f> |
    <a a,> <a cis e> <a cis e> |
    <a a,> <a cis e> <a cis e> |
    d, <a' d f> <a d f> | % 6.3 - 157
    c, <f a ees'> <f a ees'> |
    <bes-1 bes,-5>-. f-.-2 d-.-3 |
    <bes' bes,>-. f-. d-. |
    <bes' bes,>-. f-. d-. |
    <bes' bes,>-. f-. d-. | % 6.4 - 162
    <bes' bes,>-. f-. d-. |
    <bes' bes,>-. f-. d-. |
    <a' a,>-. f-. ees-. |
    <a a,>-. f-. ees-. |
    <bes' bes,>-. f-. d-. | % 6.5 - 167
    <bes' bes,>-. f-. d-. |
    <bes' bes,>-. f-. d-. |
    <bes' bes,>-. f-. d-. |
    <bes' bes,>-. f-. d-. |
    <bes' bes,>-. f-. d-. |
    <f f,> bes, d | % 7.1 - 173
    <f f,> bes, d |
    <f f,> bes, d |
    <f ees f,> <f ees a,> <f ees f,> |
    <f d bes> r <gis f d b> |
    <a f ees c> r <a f cis> | % 7.2 - 178
    <bes f d> r <c g ees> |
    <d bes f> r <c a f> |
    <bes d> r <gis f d b> |
    <a f ees c> r <a f cis> |
    <bes f d> r <c g ees> |
    <d bes f> r <c a f> | % 7.3 - 184
    <f, d bes> <f c a f> <f d bes> |
    <f c a f> <f d bes> <f c a f> |
    <f d bes> <f c a f> <f d bes> |
    <f c a f> <f d bes> <f c a f> |
    <f d bes> <bes f d bes> <bes f d bes> | % 7.4 - 189
    <bes f d bes> <bes f d bes> <bes f d bes> |
    <bes f d bes> <bes f d bes> <bes f d bes> |
    <bes f d bes> <bes f d bes> <bes f d bes> |
    <bes f d bes> r r\fermata | % fin
    \bar "|."
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
    first-page-number = 11
    print-first-page-number = ##t
    ragged-last-bottom = ##f
    %#(set-paper-size "a4")
}
