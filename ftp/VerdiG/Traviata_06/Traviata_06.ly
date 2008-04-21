\version "2.10.33"
\header {
    title = \markup \center-align { \bigger "La Traviata" "Atto Secondo" " "}
    subtitle = "Scena ed aria"
    subsubtitle = \markup {\italic "«De miei bollenti spiriti»"}
    composer = "G. Verdi"
    arranger = "Transcripción de N. Toledo"
    piece = "Nº 6"

    %copyright = "Calcografía de la 'Nueva Biblioteca Musical Económica', 1857-1869"
    % Mutopia headers
    mutopiatitle = "La Traviata - N6 Scena ed aria"
    mutopiacomposer = "VerdiG"
    mutopiainstrument = "Piano"
    source = "Calcografía de la 'Nueva Biblioteca Musical Económica', 1857-1869"
    style = "Romantic"
    copyright = "Public Domain"
    maintainer = "Alberto Corella"
    maintainerEmail = "ppiano@telefonica.net"
 footer = "Mutopia-2008/04/21-1399"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

% Definiciones
stemExtend = {
    \once\override Stem #'Y-extent  = #'(0 . -1)
    \once\override Stem #'length = #14
}
stemExtendOn = {
    \override Stem #'Y-extent  = #'(0 . -1)
    \override Stem #'length = #14
}
stemExtendOff = {
    \revert Stem #'Y-extent
    \revert Stem #'length
}

noFlag = \once \override Stem #'flag-style = #'no-flag
noFlagOn = \override Stem #'flag-style = #'no-flag
noFlagOff = \revert Stem #'flag-style

upper = \relative c'' {
    \clef treble
    \key c \major
    \time 4/4
    \once\override DynamicLineSpanner #'staff-padding = #4
    r2\p^\markup{\column {\line {\bold "Allegro vivace. ("\note #"4" #1 \bold " = 132)"} " " " "}} << {c4.-3\( d16 c\)} \\ {e,16-4 g-2 e g e g e g} >> |
    << {b4.-2\( c16-4 b\) a4.\( b16-4 a\)} \\ {d,-4 f-2 d f d f d f c e c e c e c e} >> |
    gis8-.-2 b-.-1 d-.-3 f-.-5 e-.-4 d-. c-. b-. | % 1.1 - 3
    c-.-3 e-. b-. e-. a,-.-1 b16( c) b8-.[ a-.] |
    gis-2[ b-3] e-5 r << {c4.\( d16 c\)} \\ {e,16 g e g e g e g} >> |
    << {b4.\( c16 b\) a4.\( b16 a\)} \\ {d, f d f d f d f c e c e c e c e} >> | % 1.2 - 6
    gis8-. b-. d-. f-. e-. d-. c-. b-. |
    c-. e-. b-. e-. a,-. b16( c) b8-.[ a-.] |
    gis8-2 b e r a,-1 c e r | % 1.3 - 9
    gis, b e r a, c e r |
    \once\override Staff.OttavaBracket #'extra-offset = #'(0 . 2)
    #(set-octavation 1) \once\override DynamicLineSpanner #'staff-padding = #3 e'8-3\f f-4 c-1 d-2 e-3 f c d |
    e f c d e f c d | % 1.4 - 12
    e4 #(set-octavation 0) r f,4. b,8 |
    \bar "||"
    c4^\markup{\bold "Andante"} r4 r8 f-.-5\( a,-. b-.\) |
    d8-4 c-3 r c-3\( b[ f' a, b]\) |
    d8 c r bes16 bes d4 c8. gis16 | % 1.5 - 16
    a4 <f c a> f'^\markup{\bold "Adagio."}\<\( f8. f16\! |
    f4 f8-4 ges-5 f-4 ees-3 bes-1 c-2\) |
    ees4-4 des-3 r des8.-3 des16 |
    des4 des8. des16 des8-. des-. des-. des-. | % 2.1 - 20
    \override Fingering #'avoid-slur = #'inside
    c4-1 c bes8-5\( a!16-2 bes-5 c8-1 des-2\) |
    ees2-3^\<\( \set fingeringOrientations = #'(down) <aes-5>->\! | 
    <g-3>8^\> <f-1> <ees-3> <des-2> <c-1> <bes-2> <des-3> <f-5>\!\) |
    \unset fingeringOrientations
    \stemDown
    aes,4\trill\( \appoggiatura {bes16[ aes]} g8 aes \stemNeutral c4. bes8\) | % 2.2 - 24
    aes4 r8 <ees c ges> ~ <ees bes ges>4 r8 <ees a, g> ~ |
    <ees bes g>8 r r4 <d aes f>8 r r4\fermata |
    \bar "||"
    \key ees \major
    \time 3/4
    R2.^\markup{\column {\line {\bold "Andante. ("\note #"4" #1 \bold " = 60)"} " "}} | % 2.3 - 27
    \once\override TextScript #'staff-padding = #4
    bes'4-3(_\markup{"De miei bollenti spiriti..."} g8.)-1\( bes16-3 c8. bes16 |
    g8. aes16 g4\) r4 |
    c4-4( aes8.-2)\( c16-3 des8.-4-> c16-3 | % 2.4 - 30
    aes8.-2 bes16 aes4\) r |
    d!4\(\< d8. d16 ees8.-4 ees16\) |
    \once\override PhrasingSlur #'extra-offset = #'(0 . 2) c8\( \override Fingering #'avoid-slur = #'outside d16(-2 ees)-3 \once\override TextScript #'extra-offset = #'(0 . -4) f4.^\markup{\finger "4-3"} fis8-4\)\! | % 2.5 - 33
    \once\override TextScript #'extra-offset = #'(0 . 2.5) g16-.^\>^\markup{\italic "stent."} d-. ees-. c-. bes8\! r c8._1^\pp d16 |
    ees4 r r |
    bes bes8. bes16 ees[-4 ees] r8 | % 2.6 - 36
    ees8.->( d16) d4.. c16-2 |
    c4->-2( b16-1) b-.\( c-. d-.\) f8.->-4( ees16) |
    d2.( | % 3.1 - 39
    g,4-1)\< bes8.-2 bes16 ees8.-4 ees16 |
    f4-1 g aes8. aes16 |
    aes4-4\!\f\> ~ aes16  g-3 d-1 ees f8. ees16\! | % 3.2 - 42
    ees4^\ppp f,16_1_\( aes g aes\) c8. bes16 |
    ees4 r16 bes bes bes c bes r8 |
    ees8.( bes16-.) bes-.\( bes-. bes-. bes-.\) c8. bes16 | % 3.3 - 45
    << {bes4^\markup{\finger "3" } a^\markup{\finger "4" } aes8^\markup{\finger "3" } s } \\ {g4^1 ges^2 f^1} >> |
    g4^\markup{\finger "21"}\< bes8.-2 bes16 ees8. ees16 |
    f4 g aes8. aes16 | % 3.4 - 48
    aes4\!\ff\> ~ aes16 g d ees f8.-4 ees16\! |
    ees4^\ppp \phrasingSlurDown f,16_\markup{\italic "morendo"}\( aes g aes\) \phrasingSlurNeutral c8. bes16 |
    ees4 r r8. ees16-4 | % 3.5 - 51
    \once\override TextScript #'extra-offset = #'(0 . 2)
    f2^\markup{\italic "dolciss."} ~ f8 bes, |
    ees4 r r8. ees16-4 | % 3.6 - 53
    \cadenzaOn
    f2 ~ f8[ ees \once\override TextScript #'extra-offset = #'(0 . -2) d_\markup{\italic "á piacere"} c-1] c8.-4 bes16 bes8[ r16 aes] bes-.-3 d-.-1 f-. g-. aes4^\f ~ aes16[ e-1 f-4 cis-2] d-3[ a-1 bes-2 b-1] d4 c8 r16 d[-3 cis d] g4.\fermata f8
    \cadenzaOff
    \bar "|" % 4.1 - 54
    ees2. |
    R2.^\markup{\musicglyph #"scripts.ufermata"} |
    \bar "||"
    \key c \major
    \time 4/4
    R1^\markup{\column {\line {\bold "Allegro. ("\note #"2" #1 \bold " = 80)"} " " }} |
    g,8-.-1 aes-.-2 g-. c-. b-. e-.-5 d-. b-. | % 4.2 - 58
    <g g'>-. <aes aes'>-. <g g'>-. <c c'>-. <b b'>-. <e e'>-. <d d'>-. <b b'>-. |
    <g g'>-. <e' e'>-. <d d'>-. <b b'>-. <g g'>-. <e' e'>-. <d d'>-. <b b'>-. |
    <g g'>4 r d4. dis8 |
    e4 r e'4.\fermata e8 | % 4.3 - 62
    \once\override TextScript #'extra-offset = #'(-2 . 0)
    e,4_\markup{\dynamic pp} r8. e32 e e4 r8. e32 e |
    <e d>4 r8. <e d>32 <e d> <e d>4 r8. <e d>32 <e d> |
    e4 r8. e32 e e4 r8. e32 e | % 4.4 - 65
    s4 r8. s16 s4 r8. s16 |
    e4 r8. e32 e e4 r8. e32 e |
    s4 r8. s16 s4 r8. s16 | % 4.5 - 68
    d4 r8. d32 d d4 r8. d32 d |
    <d b>4 r8. <d b>32 <d b> <d b>4 r8. <d b>32 <d b> |
    <c ees>4 r8. <c ees>32 <c ees> <c ees>4 r8. <c ees>32 <c ees> | % 4.6 - 71
    <c d fis>4 r8. <c d fis>32 <c d fis> <c d fis>4 r8. <c d fis>32 <c d fis> |
    <b d g>4 r8. <b d g>32 <b d g> <b d g>4 r8. <b d g>32 <b d g> |
    <c ees g>4 r8. <c ees g>32 <c ees g> <c ees g>4 r8. <c ees g>32 <c ees g> | % 5.1 - 74
    <b d g>4 r8. <b d g>32 <b d g> <b d g>4 r8. <b d g>32 <b d g> |
    <c ees g>4 r8. <c ees g>32 <c ees g> <c ees g>4 r8. <c ees g>32 <c ees g> |
    \repeat "tremolo" 4 {<b' d g>16\ff g16} \repeat "tremolo" 4 {<b d g>16 g16} |
    <b d g>8. <g g'>16 <g g'>8. <b b'>16 <b b'>8. <d d'>16 <d d'>8. <f f'>16 | % 5.2 - 78
    <f f'>8. <g, g'>16 <g g'>8. <b b'>16 <b b'>8. <d d'>16 <d d'>8. <f f'>16 |
    <f f'>2 r4 r8. <f, d b g>16 |
    <f d b g>2 r4 r8. <f d b g>16 |
    <f d b g>2 r2\fermata | % 5.3 - 82
    \bar "||"
    \break
    \time 4/4
    r2\p^\markup{\column {\line {\bold "Allegro. ("\note #"4" #1 \bold " = 108)"} " " }} r4 r8. \phrasingSlurDown fis32-2\( a |
    \phrasingSlurNeutral
    g4\) r8. b32-2 d c4 d->( |
    e) e-> e-> f8-5[ ~ f32 e\( d cis]\) | % 5.4 - 85
    d4-3 d-> d-> e8-4[ ~ e32\( d c! b\)] |
    d4.-4\( c8 g4\) r8. fis32 a |
    \textSpannerUp
    \override TextSpanner #'edge-text = #'("con 8ª ad libitum" . "")
    \once\override TextSpanner #'extra-offset = #'(0 . 2)
    g4\startTextSpan  r8. b32( d) c4 d->( | % 5.5 - 88
    e) e-> e->\stopTextSpan  f8-5[ ~ f32\( e d cis\)] |
    d4 \once\override TextSpanner #'extra-offset = #'(0 . 2) d\startTextSpan  a'-> ~ a8 g32 f e d |
    c2\stopTextSpan r4 r8. dis32( f) | % 5.6 - 91
    e4-3 ~ e8.-4\( f16 e8. d16 c8. d16\) |
    e4.\( d16 c b4\) r8. dis32 f |
    e4 ~ e8.\( f16-> e8. d16 c8. d16\) | % 6.1 - 94
    e4 e2-> ~ \stemDown e8[ \once\override TextSpanner #'extra-offset = #'(0 . 2) r16\startTextSpan \set stemLeftBeamCount = #1 fis,32 a] |
    g4 ~ g8. b32( d) c4 d->( |
    \stemNeutral
    e) e-> e->\stopTextSpan f8-5[ ~ f32 e\( d cis]\) | % 6.2 - 97
    d4 \once\override TextSpanner #'extra-offset = #'(0 . 2) d\startTextSpan a'-> ~ a8[ g32\( f e d\)] |
    c4\stopTextSpan r8. b32-2( d-4) c4.->^\markup{\finger "34"}\( b16 bes\) |
    a4 r8. dis32-2( f-4) e4.->^\markup{\finger "34"}\( dis16 d\) | % 6.3 - 100
    c4-1\< r8. fis32( a) g4 g |
    a4.-4\!\>\( g16 f!\) e4.\( d16-3 e-4\)\! |
    c4.\(^\markup{\finger "25"} fis,16-2 g a4.\)\( g16 f\) | % 6.4 - 103
    e4 r8. b'32( d) c4.->\( b16 bes |
    a4 r8. dis32(\< f) e4.->\( dis16 d\) |
    c4 r8. \once\override TextSpanner #'extra-offset = #'(0 . 2) fis32(\startTextSpan a) g4.\( fis!16 f\)\! | % 6.5 - 106
    e4\> g a bes |
    bes4.\!\stopTextSpan\(\> a8-5 g f e d\)\! |
    << {g2-5 r4 r8 g} \\ {r8 <e c g>16\ff <e c g> <e c g>8 <e c g> <e c g> <e c g> <e c g> <e c g>} >> |
    << {a2-5 ~ a8_\markup{\italic "a piacere."} g f e} \\ {<f d b>4 s2.} >> \noBreak
    \bar ""
    \cadenzaOn
    cis16-2 d f4.\fermata-5 e8-4
    \cadenzaOff
    \bar "|" % 6.6 - 110
    c8 \ff <c ees g c>4_\markup{\italic "poco piu mosso."} <c ees g c> <c ees g c> <c ees g c>8 |
    c'16-5 b-4 c b c-5 aes f d c-3 b-2 d-1 f-2 aes-4 g-3 aes g |
    <c, ees g c>8 <c ees g c>4 <c ees g c> <c ees g c> <c ees g c>8 | % 7.1 - 113
    c'16 b c b c aes f d c b d f aes g aes g |
    fis4-2 ~ fis16\( g-1 a b\) c4 ~ c16\( b-1 c d\) |
    ees\( b-1 c d\) ees\( b c d\) ees b\( c d ees e-1 f fis\) | % 7.2 - 116
    g4 <g ees c g> <g ees c g> <g ees c g> |
    <g ees c g>4 r <g, d b g> r\fermata |
    \bar "||"
    r2\p^\markup{\column {\line {\bold "Allegro. ("\note #"4" #1 \bold " = 108)"} " " }} r4 r8. \phrasingSlurDown fis,32\( a |
    \phrasingSlurNeutral
    g4\) r8. b32 d c4 d->( | % 7.3 - 120
    e) e-> e-> f8[ ~ f32 e\( d cis]\) | 
    d4 d-> d-> e8[ ~ e32\( d c! b\)] |
    d4.\( c8 g4\) r8. fis32 a | % 7.4 - 123
    \textSpannerUp
    \override TextSpanner #'edge-text = #'("con 8ª ad libitum" . "")
    \once\override TextSpanner #'extra-offset = #'(0 . 2)
    g4\startTextSpan  r8. b32( d) c4 d->( | 
    e) e-> e->\stopTextSpan  f8[ ~ f32\( e d cis\)] |
    d4 \once\override TextSpanner #'extra-offset = #'(0 . 2) d\startTextSpan  a'-> ~ a8 g32 f e d | % 7.5 - 126
    c2\stopTextSpan r4 r8. dis32( f) | 
    e4 ~ e8.\( f16 e8. d16 c8. d16\) |
    e4.\( d16 c b4\) r8. dis32 f | % 7.6 - 129
    e4 ~ e8.\( f16-> e8. d16 c8. d16\) | 
    e4 e2-> ~ \stemDown e8[ \once\override TextSpanner #'extra-offset = #'(0 . 2) r16\startTextSpan \set stemLeftBeamCount = #1 fis,32 a] |
    g4 ~ g8. b32( d) c4 d->( | % 8.1 - 132
    \stemNeutral
    e) e-> e->\stopTextSpan f8[ ~ f32 e\( d cis]\) |
    d4 \once\override TextSpanner #'extra-offset = #'(0 . 2) d\startTextSpan a'-> ~ a8[ g32\( f e d\)] |
    c4\stopTextSpan r8. b32( d) c4.->\( b16 bes\) | % 8.2 - 135
    a4 r8. dis32( f) e4.->\( dis16 d\) | 
    c4\< r8. fis32( a) g4 g |
    a4.\!\>\( g16 f!\) e4.\( d16 e\)\! | % 8.3 - 138
    c4.\( fis,16 g a4.\)\( g16 f\) |
    e4 r8. b'32( d) c4.->\( b16 bes |
    a4 r8. dis32(\< f) e4.->\( dis16 d\) | % 8.4 - 141
    c4 r8. \once\override TextSpanner #'extra-offset = #'(0 . 2) fis32(\startTextSpan a) g4.\( fis!16 f\)\! |
    e4\> g a bes |
    bes4.\!\stopTextSpan\(\> a8 g f e d\)\! |
    << {g2-5 r4 r8 g} \\ {r8 <e c g>16\ff <e c g> <e c g>8 <e c g> <e c g> <e c g> <e c g> <e c g>} >> | % 8.5 - 145
    << {a2-5 ~ a8_\markup{\italic "a piacere."} g f e} \\ {<f d b>4 s2.} >> \noBreak
    \bar ""
    \cadenzaOn
    cis16-2 d f4.\fermata-5 e8
    \cadenzaOff
    \bar "||" 
    \once\override TextScript #'extra-offset = #'(0 . 3)
    c8\ff^\markup{\italic "piu mosso."} \repeat "unfold" 3 {<e' c>16 e,16} \repeat "tremolo" 4 {<c' g'>16 g16} |
    \repeat "tremolo" 4 {<c fis>16 fis,16} \repeat "tremolo" 4 {<c' f>16 f,16} | % 8.6 - 148
    <c' e>16 e, <c' e> e, <b' dis> fis <b dis> fis <g b e> e <g b e> e <a f'!> f <a f'> f |
    <e e'>4.. <g g,>16 <e e'>4.. <d d'>16 |
    <c' c,>8 \repeat "unfold" 3 {<e c>16 e,16} \repeat "tremolo" 4 {<c' g'>16 g16} | % 9.1 - 151
    \repeat "tremolo" 4 {<c fis>16 fis,16} \repeat "tremolo" 4 {<c' f>16 f,16} |
    <c' e>16 e, <c' e> e, <b' dis> fis <b dis> fis <g b e> e <g b e> e <a f'!> f <a f'> f |
    <e e'>4.. <g g,>16 <e e'>4.. <d d'>16 | % 9.2 - 154
    <c c'>8 r <f f'>2-> <b, b'>4 |
    <c c'>8 r <f f'>2-> <b, b'>4 |
    <c c'>8 <g' c>16 e <g b> d <g b> d <g c> e <g c> e <g b> d <g b> e |
    <g c>16 e <g c>16 e <g b> d <g b> d <g c> e <g c> e <g b> d <g b> e | % 9.3 - 158
    <e g c>8 b'16-2( d-4) c8-.-3 fis,16-2( a) g8-. dis16( f) e8-. b16( d) |
    c8 b16( d) c8-. fis,16( a) g8-. dis16( f) e8-. b16( d) |
    \repeat "tremolo" 2 {c8 g8} \repeat "tremolo" 2 {c8 g8} | % 9.4 - 161
    c4 r <c' e g c> r |
    <c g e> r <c e g c> r |
    <c g e> r r r8. c,16 |
    c2 r4 r8. c16 |
    c1\fermata | % fin
    \bar "|."
}
lower = \relative c {
    \clef bass
    \key c \major
    \time 4/4
    r2 s2 |
    s1 |
    << {b'16 d b d b d b d gis, d' b d e, e' b e} \\ {r2 gis,4\( e-5} >> | % 1.1 - 3
    << {a16 e' c e g,! e' b e f, e'_1 b_2 e b, dis'_1 a_2 dis} \\ {a4 g f-5 b,-5\)} >> |
    << {e16 e'_1 b_2 e b e b e} \\ {e,4-5 r} >> s2 |
    s1 | % 1.2 - 6
    << {b'16 d b d b d b d gis, d' b d e, e' b e} \\ {r2 gis,4\( e} >> |
    << {a16 e' c e g,! e' b e f, e' b e b, dis' a dis} \\ {a4 g f b,\)} >> |
    << {e16 e' dis e b e gis, e' e, e' dis e c e a, e'} \\ {e,4-5 b'8-2 gis-3 e4-5 c'8 a} >> | % 1.3 - 9
    << {e16 e' dis e b e gis, e' e, e' dis e c e a, e'} \\ {e,4 b'8 gis e4 c'8 a} >> |
    <b gis e>4 <a c> <b gis e> <a c> |
    <b gis e> <a c> <b gis e> <a c> | % 1.4 - 12
    <b gis e> r <b g f d>2 |
    \bar "||"
    r8 <c g e c>-. <c g e c>-. <c g e c>-. <b g f d>2 |
    r8 <c g e c>-. <c g e c>-. <c g e c>-. <b g f d>2 |
    r8 <c g e c> <c bes g e c> r r2 | % 1.5 - 16
    r4 f, r2 |
    <aes des f>2\( <ges aes c ees> |
    <f aes des>1\)\( |
    <fes aes des> | % 2.1 - 20
    <ees aes c>2\) <des ees g bes> |
    <c ees aes c>1 |
    <des f aes des>2 r |
    <ees aes c>2\( <ees g bes des> | % 2.2 - 24
    <aes c>4\) r8 <a, a,>( <bes bes,>4 r8 <ces ces,>( |
    <bes bes,>) r r4 <bes bes,>8 r r4\fermata |
    \bar "||"
    \key ees \major
    \time 3/4
    << {\once\override Fingering #'extra-offset = #'(-1 . -1) ees8-5^\markup{\dynamic pp} s ees s ees s} \\ {\set fingeringOrientations = #'(up) ees16 <g-3 bes-1>^. <g bes>^. <g bes>^. ees <g bes>^. <g bes>^. <g bes>^. ees <g bes>^. <g bes>^. <g bes>^. } >> | % 2.3 - 27
    << {ees8 s ees s ees s} \\ {ees16 <g bes>^. <g bes>^. <g bes>^. ees <g bes>^. <g bes>^. <g bes>^. ees <g bes>^. <g bes>^. <g bes>^. } >> |
    << {ees8 s ees s ees-5 s} \\ {ees16 <g bes>^. <g bes>^. <g bes>^. ees <g bes>^. <g bes>^. <g bes>^. ees <g-3 bes-2>^. <g-3 b-1>^. <g-3 c-1>^. } >> |
    << {f8-5 s f s f s} \\ {f16 <aes-3 c-1>^. <aes c>^. <aes c>^. f <aes c>^. <aes c>^. <aes c>^. f <aes c>^. <aes c>^. <aes c>^. } >> | % 2.4 - 30
    << {f8 s f s f-5 s} \\ {f16 <aes c>^. <aes c>^. <aes c>^. f <aes c>^. <aes c>^. <aes c>^. f <aes-3 c-1>^. <aes-3 des-2>^. <aes-3 d-1>^. } >> |
    << {bes8 s bes s g s} \\ {\set fingeringOrientations = #'(down) bes16-4 <d-2 f-1>^. <d f>^. <d f>^. bes <d f>^. <d f>^. <d f>^. g,-5 <bes-3 ees-1>^. <bes ees>^. <bes ees>^. } >> |
    << {aes8 s aes s a s} \\ {aes16-4 <c-2 ees-1>^. <c ees>^. <c ees>^. aes <c f>^. <c f>^. <c f>^. a <c ees fis>^. <c ees fis>^. <c ees fis>^. } >> | % 2.5 - 33
    << {bes,8 s bes s bes s} \\ {bes16 <ees g bes>^. <ees g bes>^. <ees g bes>^. bes <ees g bes>^. <ees g bes>^. <ees g bes>^. bes <f' aes bes>^. <f aes bes>^. <f aes bes>^.} >> |
    << {ees8 s ees s ees s} \\ {ees16 <g bes>^. <g bes>^. <g bes>^. ees <g bes>^. <g bes>^. <g bes>^. ees <g bes>^. <g bes>^. <g bes>^. } >> |
    << {d8 s d s c s} \\ {d16_5 <f-3 bes-1>^. <f bes>^. <f bes>^. d <f bes>^. <f bes>^. <f bes>^. c <ees f a>^. <ees f a>^. <ees f a>^.} >> | % 2.6 - 36
    << {bes8 s bes' s aes s} \\ {bes,16 <d f bes>^. <d f bes>^. <d f bes>^. bes' <d f>^. <d f>^. <d f>^. aes <c d fis>^. <c d fis>^. <c d fis>^. } >> |
    << {g8 s g s g s} \\ {g16 <b d g>^. <b d g>^. <b d g>^. g <b d g>^. <b d g>^. <b d g>^. g <c ees g>^. <c ees g>^. <c ees g>^. } >> |
    << {g8 s g s f s} \\ {g16 <b d g>^. <b d g>^. <b d g>^. g <b d g>^. <b d g>^. <b d g>^. f <bes d aes'>^. <bes d aes'>^. <bes d aes'>^. } >> | % 3.1 - 39
    << {ees,8 s d s c s} \\ {ees16 <g bes ees>^. <g bes ees>^. <g bes ees>^. d <f bes d>^. <f bes d>^. <f bes d>^. c <ees g c>^. <ees g c>^. <ees g c>^. } >> |
    << {s2 f8 s} \\ {<aes aes,>16 <aes c f> <aes c f> <aes c f> <c c,> <e c g> <e c g> <e c g> f, <aes c f> <aes c f> <aes c f> } >> |
    << {bes,8 s bes s bes s} \\ {bes16 <ees aes>^. <ees aes>^. <ees aes>^. bes <ees g>^. <ees g>^. <ees g>^. bes <ees g>^. <ees g>^. <ees g>^. } >> | % 3.2 - 42
    << {bes8 s bes s bes s} \\ {bes16 <ees f aes> <ees f aes> <ees f aes> bes <d f aes> <d f aes> <d f aes> bes <d f aes> <d f aes> <d f aes> } >> |
    << {ees8 s g s f s} \\ {ees16 <bes' ees g>^. <bes ees g>^. <bes ees g>^. g <bes ees>^. <bes ees>^. <bes ees>^. f <bes d aes'>^. <bes d aes'>^. <bes d aes'>^. } >> |
    << {ees,8 s g s f s} \\ {ees16 <bes' ees g> <bes ees g> <bes ees g> g <bes ees> <bes ees> <bes ees> f <bes d aes'> <bes d aes'> <bes d aes'> } >> | % 3.3 - 45
    << {ees,8 s c s d s} \\ {ees16 <g bes ees>^. <g bes ees>^. <g bes ees>^. c, <ees a c>^. <ees a c>^. <ees a c>^. <d bes> <aes' b d>^. <aes b d>^. <aes b d>^. } >> |
    << {ees8 s d s c s} \\ {ees16 <g bes ees> <g bes ees> <g bes ees> d <f bes d> <f bes d> <f bes d> c <ees g c> <ees g c> <ees g c>} >> |
    << {s2 f8 s} \\ {<aes aes,>16 <aes c f>^. <aes c f>^. <aes c f>^. <c c,> <e c g>^. <e c g>^. <e c g>^. f, <aes c f>^. <aes c f>^. <aes c f>^. } >> | % 3.4 - 48
    << {bes,8 s bes s bes s} \\ {bes16 <ees aes> <ees aes> <ees aes>  bes <ees g> <ees g> <ees g> bes <ees g> <ees g> <ees g> } >> |
    << {bes8 s bes s bes s} \\ {bes16 <ees f aes>^. <ees f aes>^. <ees f aes>^. bes <d f aes>^. <d f aes>^. <d f aes>^. bes <d f aes>^. <d f aes>^. <d f aes>^. } >> |
    << {ees8 s ees s ees s} \\ {ees16 <g bes ees> <g bes ees> <g bes ees> ees <g bes ees> <g bes ees> <g bes ees> ees <g bes ees> <g bes ees> <g bes ees> } >> | % 3.5 - 51
    << {r16 <f-2 aes-4> <f aes> <f aes> r <f aes> <f aes> <f aes> r <f aes> <f aes> <f aes> } \\ {d[-5 r r des-4] c-5[ r r ces-5] bes[-5 r r bes]-5} >> |
    << {ees8-4 s ees s ees s} \\ {ees16 <g-1 bes-2> <g bes> <g bes> ees <g bes> <g bes> <g bes> ees <g bes> <g bes> <g bes>} >> | % 3.6 - 53
    \cadenzaOn
    << {r16 <f-2 aes-4> <f aes> <f aes> r <f aes> <f aes> <f aes> <f aes>8 s2 s8 r4\fermata s1 s1 s8} \\ {d16[ r r des] c[ r r ces] bes8 s2 s8 s4 s1 s1 s8} >>
    \cadenzaOff
    \set Score.currentBarNumber = #55
    \bar "|" % 4.1 - 54
    ees16 <g bes ees> <g bes ees> <g bes ees> ees <g bes ees> <g bes ees> <g bes ees> ees <g bes ees> <g bes ees> <g bes ees> |
    <ees g bes ees>4\arpeggio r r\fermata |
    \bar "||"
    \key c \major
    \time 4/4
    g,8-. aes-. g-. c-. b-. e-. d-. b-. |
    g-. aes-. g-. c-. b-. e-. d-. b-. | % 4.2 - 58
    g-. aes-. g-. c-. b-. e-. d-. b-. |
    g-. e'-. d-. b-. g-. e'-. d-. b-. |
    g4 r << {a'2} \\ {<f f,>2} >> |
    << {\stemExtend gis4} \\ {<e e,>4} >> r r2 | % 4.3 - 62
    << {\stemExtendOn \noFlagOn <a c>4 s8. <a c>32 <a c>\noBeam <a c>4 s8. <a c>32 <a c>\noBeam} \\ {a,8^.-3 b^. c^. b^. a^. b^. c^. a^.} >> |
    << {<gis' b>4 s8. <gis b>32 <gis b>\noBeam <gis b>4 s8. <gis b>32 <gis b>\noBeam} \\ {gis,8^.-4 a^. b^. c^. d^.-3  dis^. e^. gis,^.} >> |
    << {<a' c>4 s8. <a c>32 <a c>\noBeam <a c>4 s8. <a c>32 <a c>\noBeam} \\ {a,8^. b^. c^. b^. a^. b^. c^. a^.} >> | % 4.4 - 65
    << {\stemExtendOff \noFlagOff <fis' b dis>4 s8. <fis b dis>32 <fis b dis> <fis b dis>4 s8. <fis b dis>32 <fis b dis>} \\ {b,8^.-2 ais^. b^. c^. b^.-2 a^. g^.-1 fis^.-2} >>
    << {\stemExtendOn \noFlagOn <g' b>4 s8. <g b>32 <g b>\noBeam <g b>4 s8. <g b>32 <g b>\noBeam} \\ {e,8^.-3 fis^. g^. fis^. e^.-3 fis^. g^. gis^.-4} >> |
    << {\stemExtendOff \noFlagOff <e' a cis>4 s8. <e a cis>32 <e a cis> <e a cis>4 s8. <e a cis>32 <e a cis>} \\ {a,8^.-3 gis^.-4 a^.-3 bes^.-2 a^.-1 g^. f^. e^.} >> | % 4.5 - 68
    << {\stemExtendOn \noFlagOn <f' a>4 s8. <f a>32 <f a>\noBeam <f a>4 s8. <f a>32 <f a>\noBeam} \\ {d,8^.-5 e^. f^. e^. d^. e^. f^. fis^.} >> |
    << {g'4 s8. g32 g\noBeam g4 s8. g32 g\noBeam} \\ {g,8^.-1 fis^.-2 g^.-1 aes^.-2 g^.-1 f^. ees^. d^.} >> |
    << {g'4 s8. g32 g\noBeam g4 s8. g32 g\noBeam} \\ {c,,8^. d^. ees^. d^. c^. d^. ees^. c^.} >> | % 4.6 - 71
    \stemDown aes'8^._3 bes^. c^. bes^. aes^. bes^. c^. aes^. |
    g^. fis^. g^. aes^. g^._1 f^. ees^. d^. |
    c^. d^. ees^. d^. f^. ees^. d^. c^. | % 5.1 - 74
    g'^. fis^. g^. aes^. g^._1 f^. ees^. d^. |
    c^. d^. ees^. d^. f^. ees^. d^. c^. |
    \stemNeutral
    \repeat "tremolo" 4 <g' b d g>8 \repeat "tremolo" 4 <g b d g>8 |
    <g b d g>8. <g b d g>16 <g b d g>8. <g b d g>16 <g b d g>8. <g b d g>16 <g b d g>8. <g b d g>16 | % 5.2 -78
    <g b d g>8. <g b d g>16 <g b d g>8. <g b d g>16 <g b d g>8. <g b d g>16 <g b d g>8. <g b d g>16 |
    <g b d g>2 r4 r8. <g g,>16 |
    <g g,>2 r4 r8. <g g,>16 |
    <g g,>2 r2\fermata | % 5.3 - 82
    \bar "||"
    \time 4/4
    <c' c,>8 <g c e>16 <g c e> <g c e>8 <g c e> <g c e> <g c e> <g c e> <g c e> |
    <c c,>8 <g c e>16 <g c e> <g c e>8 <g c e> <g c e> <g c e> <aes b d f> <aes b d f> | 
    <c c,>8 <g c e>16 <g c e> <g c e>8 <g c e> <g c e> <g c e> <g c e> <g c e> | % 5.4 - 85
    <g g,>8 <g b d f>16 <g b d f> <g b d f>8 <g b d f> <g b d f> <g b d f> <g b d f> <g b d f> |
    <c c,>8 <g c e>16 <g c e> <g c e>8 <g c e> <g c e> <g c e> <g c e> <g c e> |
    <c, c,>8 <g' c e>16 <g c e> <g c e>8 <g c e> <g c e> <g c e> <aes b d f> <aes b d f> |  % 5.5 - 88
    <c, c,>8 <g' c e>16 <g c e> <g c e>8 <g c e> <c c,> <g c e>16 <g c e> <g c e>8 <g c e> |
    <g g,>8 <g b d f>16 <g b d f> <g b d f>8 <g b d f> <g g,> <g b d f>16 <g b d f> <g b d f>8 <g b d f> |
    <c c,>8 <g c e>16 <g c e> <g c e>8 <g c e> <c c,> <g c e>16 <g c e> <g c e>8 <g c e> | % 5.6 - 91
    e8 <gis b e>16 <gis b e> <gis b e>8 <gis b e> a <c e>16 <c e> <c e>8 <c e> |
    e,8 <gis b e>16 <gis b e> <gis b e>8 <gis b e> e <gis b e>16 <gis b e> <gis b e>8 <gis b e> |
    e8 <gis b e>16 <gis b e> <gis b e>8 <gis b e> a <c e>16 <c e> <c e>8 <c e> | % 6.1 - 94
    e,8 <gis b e>16 <gis b e> <gis b e>8 <gis b e> e <gis b e>16 <gis b e> <gis b e>8 <gis b e> |
    <c, c,>8 <g' c e>16 <g c e> <g c e>8 <g c e> <g c e> <g c e> <aes b d f> <aes b d f> |
    <c, c,>8 <g' c e>16 <g c e> <g c e>8 <g c e> <c c,> <g c e>16 <g c e> <g c e>8 <g c e> | % 6.2 - 97
    <g g,>8 <g b d f>16 <g b d f> <g b d f>8 <g b d f> <g g,> <g b d f>16 <g b d f> <g b d f>8 <g b d f> |
    <c c,> <g c e>16 <g c e> <g c e>8 <g c e> e <g bes c> c, <g' bes c> |
    f8 <a c f>16 <a c f> <a c f>8 <a c f> gis <b d e> e, <b' d e> | % 6.3 - 100
    a8 <c e>16 <c e> <c e>8 <c e> b <d g> g, <b g'> |
    <c c,>8 <c e>16 <c e> <c e>8 <c e> <aes aes,>8 <aes c f>16 <aes c f> <aes c f>8 <aes c f> |
    <g g,>8 <g c e>16 <g c e> <g c e>8 <g c e> <g g,> <f g b>16 <f g b> <f g b>8 <f g b> | % 6.4 - 103
    c8 <e g c>16 <e g c> <e g c>8 <e g c> e <g bes c> c, <g' bes c> |
    f8 <c' f> a <c f> gis <b e> e, <gis b e> |
    a8 e' c e b <d g> g, <b d g> | % 6.5 - 106
    <c c,>8 <c e> <c c,> <c e> <c c,> <c f> <c c,> <c g'> |
    <f c f,>4 r r2 |
    r8 <g, e c g>16 <g e c g> <g e c g>8 <g e c g> <g e c g> <g e c g> <g e c g> <g e c g> |
    <g d b g>4 r r2\fermata
    \bar ""
    \cadenzaOn
    s2 s8
    \cadenzaOff
    \bar "|"  % 6.6 - 110
    <c, c,>8 <d d,> <ees ees,> <f f,> <g g,> <a a,> <b b,> <c c,> |
    <f, c aes>4 <f c aes f> <d b g> <d b g> |
    <c c,>8 <d d,> <ees ees,> <f f,> <g g,> <a a,> <b b,> <c c,> | % 7.1 - 113
    <f, c aes>4 <f c aes f> <d b g> <d b g> |
    \repeat "unfold" 8 { <ees c a>16 fis16 } |
    \repeat "unfold" 8 { <ees c a>16 fis16 } | % 7.2 - 116
    <g ees c g>4 <g ees c g> <g ees c g> <g ees c g> |
    <g ees c g> r <g d b g> r\fermata |
    \bar "||"
    <c c,>8 <g c e>16 <g c e> <g c e>8 <g c e> <g c e> <g c e> <g c e> <g c e> | 
    <c c,>8 <g c e>16 <g c e> <g c e>8 <g c e> <g c e> <g c e> <aes b d f> <aes b d f> | % 7.3 - 120
    <c c,>8 <g c e>16 <g c e> <g c e>8 <g c e> <g c e> <g c e> <g c e> <g c e> |
    <g g,>8 <g b d f>16 <g b d f> <g b d f>8 <g b d f> <g b d f> <g b d f> <g b d f> <g b d f> |
    <c c,>8 <g c e>16 <g c e> <g c e>8 <g c e> <g c e> <g c e> <g c e> <g c e> |  % 7.4 - 123
    <c, c,>8 <g' c e>16 <g c e> <g c e>8 <g c e> <g c e> <g c e> <aes b d f> <aes b d f> |  
    <c, c,>8 <g' c e>16 <g c e> <g c e>8 <g c e> <c c,> <g c e>16 <g c e> <g c e>8 <g c e> |
    <g g,>8 <g b d f>16 <g b d f> <g b d f>8 <g b d f> <g g,> <g b d f>16 <g b d f> <g b d f>8 <g b d f> | % 7.5 - 126
    <c c,>8 <g c e>16 <g c e> <g c e>8 <g c e> <c c,> <g c e>16 <g c e> <g c e>8 <g c e> | 
    e8 <gis b e>16 <gis b e> <gis b e>8 <gis b e> a <c e>16 <c e> <c e>8 <c e> |
    e,8 <gis b e>16 <gis b e> <gis b e>8 <gis b e> e <gis b e>16 <gis b e> <gis b e>8 <gis b e> | % 7.6 - 129
    e8 <gis b e>16 <gis b e> <gis b e>8 <gis b e> a <c e>16 <c e> <c e>8 <c e> |
    e,8 <gis b e>16 <gis b e> <gis b e>8 <gis b e> e <gis b e>16 <gis b e> <gis b e>8 <gis b e> |
    <c, c,>8 <g' c e>16 <g c e> <g c e>8 <g c e> <g c e> <g c e> <aes b d f> <aes b d f> | % 8.1 - 132
    <c, c,>8 <g' c e>16 <g c e> <g c e>8 <g c e> <c c,> <g c e>16 <g c e> <g c e>8 <g c e> |
    <g g,>8 <g b d f>16 <g b d f> <g b d f>8 <g b d f> <g g,> <g b d f>16 <g b d f> <g b d f>8 <g b d f> |
    <c c,> <g c e>16 <g c e> <g c e>8 <g c e> e <g bes c> c, <g' bes c> | % 8.2 - 135
    f8 <a c f>16 <a c f> <a c f>8 <a c f> gis <b d e> e, <b' d e> | 
    a8 <c e>16 <c e> <c e>8 <c e> b <d g> g, <b g'> |
    <c c,>8 <c e>16 <c e> <c e>8 <c e> <aes aes,>8 <aes c f>16 <aes c f> <aes c f>8 <aes c f> | % 8.3 - 138
    <g g,>8 <g c e>16 <g c e> <g c e>8 <g c e> <g g,> <f g b>16 <f g b> <f g b>8 <f g b> |
    c8 <e g c>16 <e g c> <e g c>8 <e g c> e <g bes c> c, <g' bes c> |
    f8 <c' f> a <c f> gis <b e> e, <gis b e> | % 8.4 - 141
    a8 e' c e b <d g> g, <b d g> | 
    <c c,>8 <c e> <c c,> <c e> <c c,> <c f> <c c,> <c g'> |
    <f c f,>4 r r2 |
    r8 <g, e c g>16 <g e c g> <g e c g>8 <g e c g> <g e c g> <g e c g> <g e c g> <g e c g> | % 8.5 - 145
    <g d b g>4 r r2\fermata
    \bar ""
    \cadenzaOn
    s2 s8
    \cadenzaOff
    \bar "||"
    <c, c,>8 <c c,> <c c,> <c c,> <bes' bes,> <bes bes,> <bes bes,> <bes bes,> |
    <a a,>8 <a a,> <a a,> <a a,> <aes aes,> <aes aes,> <aes aes,> <aes aes,> | % 8.6 - 148
    <g g,>8 <g g,> <b,! b,!>[ <b b,>] <e e,> <e e,> <d d,>[ <d d,>] |
    \repeat "tremolo" 4 {<e c g>16 g16} \repeat "tremolo" 4 {<d b g>16 g16} |
    <g e c>8 <c, c,> <c c,> <c c,> <bes' bes,> <bes bes,> <bes bes,> <bes bes,> | % 9.1 - 151
    \repeat "tremolo" 4 <a a,>8 \repeat "tremolo" 4 <aes aes,>8 |
    <g g,>8 <g g,> <b,! b,!>[ <b b,>] <e e,> <e e,> <d d,>[ <d d,>]|
    \repeat "tremolo" 4 {<e c g>16 g16} \repeat "tremolo" 4 {<d b g>16 g16} | % 9.2 - 154
    <g e c>8 r <aes c d>2-> <g b d>4 |
    <c g e c>8 r <aes c d>2-> <g b d>4 |
    \stemDown
    <c g e c>8 <g e c> <g d b g>[ <g d b g>] <g e c> <g e c> <g d b g>[ <g d b g>] |
    <g e c>8 <g e c> <g d b g>[ <g d b g>] <g e c> <g e c> <g d b g>[ <g d b g>] | % 9.3 - 158
    \stemNeutral
    <g e c>4 <g e c> <g e c> <g e c> |
    <g e c>4 <g e c> <g e c> <g e c> |
    \repeat "tremolo" 2 {<c, c,>8 <g g,>8} \repeat "tremolo" 2 {<c c,>8 <g g,>8} | % 9.4 - 161
    <c g c,>4 r <c e g c> r |
    <c g c,>4 r <c e g c> r |
    <c g c,>4 r r r8. <c c,>16 |
    <c c,>2 r4 r8. <c c,>16 |
    <c c,>1\fermata | % fin
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
    first-page-number = 39
    print-first-page-number = ##t
    ragged-last-bottom = ##f
    %#(set-paper-size "a4")
}
