\version "2.10.33"
\header {
    title = \markup \center-align { \bigger "La Traviata" " "}
    subtitle = "Scena e duettino"
    subsubtitle = \markup {\italic "«Ah no severo scrito»"}
    composer = "G. Verdi"
    arranger = "Transcripción de N. Toledo"
    piece = "Nº 8"

    %copyright = "Calcografía de la 'Nueva Biblioteca Musical Económica', 1857-1869"
    % Mutopia headers
    mutopiatitle = "La Traviata - N8 Scena e duettino"
    mutopiacomposer = "VerdiG"
    mutopiainstrument = "Piano"
    source = "Calcografía de la 'Nueva Biblioteca Musical Económica', 1857-1869"
    style = "Romantic"
    copyright = "Public Domain"
    maintainer = "Alberto Corella"
    maintainerEmail = "ppiano@telefonica.net"
 footer = "Mutopia-2008/04/21-1401"
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
    \key bes \major
    \time 4/4
    d4^\markup{\column {\line {\bold "Adagio. ("\note #"4" #1 \bold " = 63)"} " " }} d8. d16 d4.. d16 |
    ees2( d4) r |
    \change Staff = "lower"
    \stemUp
    \override Rest #'direction = #up
    \set fingeringOrientations = #'(up)
    \override Fingering #'extra-offset = #'(0 . 3)
    <a,-3 fis-2>8[ d16\rest \set stemLeftBeamCount = #1 <bes-3 g-1>32 <bes g>] <bes g>8[ d16\rest \set stemLeftBeamCount = #1 <c-4 a-2>32 <c a>] <c a>8[ d16\rest \set stemLeftBeamCount = #1 <d-5 bes-3>32 <d bes>] <d bes>8[ d16\rest \change Staff = "lower" \set stemLeftBeamCount = #1 \override Fingering #'extra-offset = #'(0 . 4) <a-5 fis-2>32 <a fis>] | % 1.1 - 3
    \revert Fingering #'extra-offset
    \set doubleSlurs = ##t \slurUp <a c-3>2( <g-2 bes-4>4) \change Staff = "upper" r4 |
    <b-2 d-1>8[ r16 \set stemLeftBeamCount = #1 <c-1 ees-3>32 <c ees>] <c ees>8[ r16 \set stemLeftBeamCount = #1 <d-2 f-4>32 <d f>] <d f>8[ r16 \set stemLeftBeamCount = #1 <ees-3 g-5>32 <ees g>] <ees g>8[ r16 \set stemLeftBeamCount = #1 <b-1 d-2>32 <b d>] |
    <d-2 f-4>2( <c-1 ees-3>4) r | % 1.2 - 6
    \set doubleSlurs = ##f
    \stemNeutral
    c'4\( c8. c16 b4. c8\) |
    \revert Rest #'direction
    d2( d,4) r8. \once\override DynamicLineSpanner #'padding = #2 d'16-1\p\( |
    bes'4-4 a8\) r16 d,\( bes'4..-> a16\) |
    a2( g4) r8. d16-2 | % 1.3 - 10
    \once\override DynamicLineSpanner #'padding = #2.5
    f!4-4(\pp ees8-3)[ r16 a,] ees'4( \stemDown d8)[ r16 fis,-2] |
    c'4.-5\( bes16 a g4\) r8. d'16 |
    \stemNeutral
    bes'4->( a8) r16 d, bes'4..( a16-3) | % 1.4 - 13
    a4-4 ~ a16\( g fis g\) d4-1 r8. d16-2 |
    f!4-4 ~ f16\( ees-3 a,-1 c-3\) ees4-5 ~ ees16\( d-4 fis,-2 d'-5\) |
    c4^\markup{\finger "4 3"}\( ~ c16 b-1 bes-3 a-2 \stemDown g4-1\) \stemNeutral r8 g-1 | % 1.5 - 16
    \bar "||"
    << {bes4} \\ {g4-1} >> r a8 g r des'-4 |
    << {c8-3[ bes-2]} \\ {g4-1} >> \stemUp bes8 r des-4 bes bes c | % 2.1 - 18
    << {des4-4} \\ {g,4-1} >> bes8 r r8. des16 des8.[ des16] |
    \stemNeutral
    des4( g,8) r r4 r8 g | % 2.2 - 20
    aes4\< aes8[ aes16 aes] bes8 bes bes bes\! |
    des[ c] r4 \once\override DynamicLineSpanner #'padding = #1.5 des!4.\< des8 | % 2.3 - 22
    ees4 ees8[ r16 ees] ees8.[ ees16] ees8.[ ees16] |
    dis2 dis4 r8. dis16\! |
    \bar "||"
    \key c \major
    <e b gis>8 r r4 e e8[ e] | % 2.4 - 25
    e4-5^\markup{\column {\line {\bold "Allegro assai mosso. ("\note #"2" #1 \bold " = 112)"} " " }} gis,8 gis gis gis gis gis |
    \noBreak
    b a r a-1 a[ a a a] |
    c b r4 r b8. b16 |
    << {d8[-4 c]-3} \\ {a4-1} >> r4 r8 <a-1 c-2>\( <b-1 d-3> <c-2 e-4>\) |
    <d-3 f-5>2 ~ <d f>8 <gis,-2 b-4>\( <a-1 c-3> <b-2 d-4>\) | % 2.5 - 30
    <c-3 e-5>2 ~ <c e>8 <a-1 c-2>\( <b d> <c e>\) |
    <d f>2 ~ <d f>8 <gis, b>\( <a c> <b d>\) |
    <c e>2 ~ <c e>8 <a-1 c-2>\( <b d> <c e>\) |
    <d f>2 ~ <d f>8 <gis, b>\( <a c> <b d>\) | % 2.6 - 34
    << {e4 c8[ r16 c] cis4 r8 cis8} \\ {a1} >> |
    << {e'8[ d] r d f[ e] r e} \\ {a,1} >> |
    << {g'4 f r e} \\ {a,1} >> |
    << {e'4 d r cis8 d} \\ {a1} >> | % 3.1 - 38
    << {f'4-5 e r r8 e} \\ {<c a>2\< <cis ais>} >> |
    << {f4 e r e} \\ {<d b>2 <b gis>} >> |
    << {s1} \\ {<f' c a>8[ e] b\rest e f[ e] b\rest e} >> |
    << {s1} \\ {f8[ e] b\rest e16 e f8[ e] b\rest e\!} >> | % 3.2 - 42
    << {<g cis, bes g>1->\f(} \\ {s1} >> |
    << {e4) r r2} \\ {\once\override DynamicLineSpanner #'padding = 2 r2\pp <bes bes,>->} >> |
    r2 <bes bes,>-> |
    << {bes2 r4 bes} \\ {r2 <bes bes,>->} >> | % 3.3 - 46
    << {bes4( a) r2} \\ {r2 <a a,>->} >> |
    g2 << {r4 g} \\ {<g g,>2} >> |
    << {g4. g8 g4. g8-1} \\ {r2 <g g,>2} >> |
    \once\override Script #'script-priority = #-100 \once\override DynamicLineSpanner #'padding = #2 g'4\trill^\markup{\finger "2 3"}(\pp f8-1) r g4\trill( f8) r | % 3.4 - 50
    g4\trill( f8) r g4\trill( f8) r |
    g4\trill( f8) r g4\trill( f8) r |
    g4\trill( f8) r g4\trill( f8)_\markup{\italic "cresc."} r |
    g4\trill( f8) r g4\trill( f8) r | % 3.5 - 54
    \once\override DynamicLineSpanner #'padding = #1 
    g4\trill(\< f8) r g4\trill( f8) r |
    g4\trill( f8) r g4\trill( f8) r\! |
    g4\trill( f8) r g4\trill( f8) r |
    bes8-5\f bes,-1 bes-2 bes bes bes bes bes | % 3.6 - 58
    << {\set fingeringOrientations = #'(up) <bes-2 des-4>8-.\( <bes des>-.\> <bes des>-. <bes des>-. <bes des>-. <bes des>-.\! <bes des>-. <bes des>-.\) } \\ {g2.\mf\( fis8-2 f-3} >> |
    << {<bes-2 c-3>8-.\( <bes c>-. <bes c>-. <bes c>-. <bes c>-. <bes c>-. <bes c>-. <bes c>-.\) } \\ {e,!4\) s4 s2} >> |
    << {<bes' des>8-.\( <bes des>-.\> <bes des>-. <bes des>-. <bes des>-. <bes des>-.\! <bes des>-. <bes des>-.\) } \\ {g2.\( fis8 f} >> |
    << {<bes c>8-.\( <bes c>-. <bes c>-. <bes c>-. <bes c>-. <bes c>-. <bes c>-. <bes c>-.\) } \\ {e,!4\) s4 s2} >> | % 4.1 - 62
    << {<bes' des>8-.\( <bes des>-. <bes des>-. <bes des>-. <bes des>-. <bes des>-. <bes des>-. <bes des>-.\) } \\ {g2.\( fis8 f} >> |
    << {<bes c>8-.\( <bes c>-. <bes c>-. <bes c>-.\) <bes d>-.\( <bes d>-. <bes d>-. <bes d>-.\)} \\ {e,!2\) f} >> |
    << {<bes c>8-.\( <bes c>-. <bes c>-. <bes c>-.\) <bes d>-.\( <bes d>-. <bes d>-. <bes d>-.\)} \\ {e,2 f} >> |
    << {\once\override DynamicLineSpanner #'padding = #6 \repeat "tremolo" 4 {c'16-3\< bes-2} \repeat "tremolo" 4 {cis16-4 bes-2} } \\ {\repeat "tremolo" 4 {e,16-3 g-1} \repeat "tremolo" 4 {e16 g} } >>
    << {\repeat "tremolo" 4 {d'16 bes} \repeat "tremolo" 4 {e16-5 bes-2\!} } \\ {\repeat "tremolo" 4 {d,16-4 g-1} \repeat "tremolo" 4 {c,16-5 <e g>} } >> | % 4.2 - 67
    \bar "||"
    \key f \major
    \override TextSpanner #'edge-text = #'("con 8ª " . "")
    \once\override TextSpanner #'staff-padding = #4
    f'1\(\f\startTextSpan |
    e2.-> d4 |
    c2. bes4\) |
    g2 r |
    f'2\f\>\( f4. f8 |
    e2.-> d4 | % 4.3 - 73
    c2. bes4\!
    g2\) r |
    a'1->\ff\( |
    bes2.. a8 |
    g2.. f8 |
    g2.. f8\) | % 4.4 - 79
    \once\override TextScript #'padding = #2
    e2..(_\markup{\italic "dim"} d8) |
    \once\override DynamicLineSpanner #'padding = #2
    e2..(\pp d8) |
    d1 |
    c2\stopTextSpan r4 r8 c-3 |
    d2..\fermata c8 |
    \once\override DynamicLineSpanner #'padding = #2
    f,4\ff f''8-. e-. f-. c-. a-. c-. | % 4.5 - 85
    f,-.-1 e-.-4 f-.-5 e-. f-. c-. a-. c-. |
    f,-1 e-2 f-3 e f e f e |
    \repeat "tremolo" 2 {f8 e} \repeat "tremolo" 2 {f8 e} |
    \repeat "tremolo" 2 {f8 e} \repeat "tremolo" 2 {f8 e} |
    \repeat "tremolo" 2 {f8 e} \repeat "tremolo" 2 {f8 e} |
    f2 r\fermata | % fin
    \bar "|."
}
lower = \relative c {
    \clef bass
    \key bes \major
    \time 4/4
    R1 |
    R1 |
    \stemDown
    \override Rest #'direction = #down
    <d d,>8[ a16\rest \set stemLeftBeamCount = #1 <d d,>32 <d d,>] <d d,>8[ a16\rest \set stemLeftBeamCount = #1 <d d,>32 <d d,>] <d d,>8[ a16\rest \set stemLeftBeamCount = #1 <d d,>32 <d d,>] <d d,>8[ a16\rest \set stemLeftBeamCount = #1 <d d,>32 <d d,>] | % 1.1 - 3
    <d d,>8 cis,16_5\( d_1 ees_3 e_2 f_1 fis_3 g4_2\) r |
    <g' g,>8[ a16\rest \set stemLeftBeamCount = #1 <g g,>32 <g g,>] <g g,>8[ a16\rest \set stemLeftBeamCount = #1 <g g,>32 <g g,>] <g g,>8[ a16\rest \set stemLeftBeamCount = #1 <g g,>32 <g g,>] <g g,>8[ a16\rest \set stemLeftBeamCount = #1 <g g,>32 <g g,>] | % 1.1 - 3
    <g g,>8 fis,16_4\( g_3 aes_2 a_1 bes_3 b_2 c4_1\) r | % 1.2 - 6
    s1 |
    s1 |
    \revert Rest #'direction
    d8-5 r \set fingeringOrientations = #'(left) <a'-5 c-3 fis-1> r d, r <a' c fis> r |
    d, r <c' d fis a> r d, r <bes' d g> r | % 1.3 - 10
    d, r <a' c fis> r d, r <a' c fis> r | 
    g r <bes d g> r g r <bes d g> r |
    d, r <a' c fis> r d, r <a' c fis> r | % 1.4 - 13
    d, r <bes' d g> r d, r <bes' d g> r |
    d, r <a' c d fis> r d, r <a' c d fis> r |
    <g bes d g> r r4 r2 | % 1.5 - 16
    \bar "||"
    <e bes' des>32 <e bes' des> <e bes' des>8 r16 <f bes des f>32 <f bes des f> <f bes des f>8 r16 <g bes des e>32 <g bes des e> <g bes des e>8 r16 <f bes des f>32 <f bes des f> <f bes des f>8 r16 |
    <e bes' des>32 <e bes' des> <e bes' des>8 r16 <f bes des f>32 <f bes des f> <f bes des f>8 r16 <g bes des e>32 <g bes des e> <g bes des e>8 r16 <f bes des f>32 <f bes des f> <f bes des f>8 r16 | % 2.1 - 18
    <e bes' des>32 <e bes' des> <e bes' des>8 r16 <f bes des f>32 <f bes des f> <f bes des f>8 r16 <g bes des e>32 <g bes des e> <g bes des e>8 r16 <f bes des f>32 <f bes des f> <f bes des f>8 r16 |
    <e bes' des>32 <e bes' des> <e bes' des>8 r16 <e bes' des>32 <e bes' des> <e bes' des>8 r16 <ees bes' des>32 <ees bes' des> <ees bes' des>8 r16 <ees bes' des>32 <ees bes' des> <ees bes' des>8 r16 | % 2.2 - 20
    <ees aes c>32 <ees aes c> <ees aes c>8 r16 <ees aes c>32 <ees aes c> <ees aes c>8 r16 <ees g bes>32 <ees g bes> <ees g bes>8 r16 <ees g bes>32 <ees g bes> <ees g bes>8 r16 |
    <ees aes c>32 <ees aes c> <ees aes c>8 r16 <ees aes c>32 <ees aes c> <ees aes c>8 r16 <ees bes' des>32 <ees bes' des> <ees bes' des>8 r16 <ees bes' des>32 <ees bes' des> <ees bes' des>8 r16 | % 2.3 - 22
    <ees aes c>32 <ees aes c> <ees aes c>8 r16 <ees aes c>32 <ees aes c> <ees aes c>8 r16 <ees aes c>32 <ees aes c> <ees aes c>8 r16 <ees aes c>32 <ees aes c> <ees aes c>8 r16 |
    <a fis dis b>32 <a fis dis b> <a fis dis b>8 r16 <a fis dis b>32 <a fis dis b> <a fis dis b>8 r16 <a fis dis b>32 <a fis dis b> <a fis dis b>8 r16 <a fis dis b>32 <a fis dis b> <a fis dis b>8 r16 |
    \bar "||"
    \key c \major
    \repeat "tremolo" 4 {<e gis>16 b'16} \repeat "tremolo" 4 {<e, gis>16 b'16} | % 2.4 - 25
    <b gis e>8 r r4 r2 |
    r4 <c a e>8 r r2 |
    r4 <b gis e>8 r r2 |
    e,8 e' e e e, e' e e |
    <b gis e> e e e <b gis e> e e e | % 2.5 - 30
    <c a e> e e e <c a e> e e e |
    <b gis e> e e e <b gis e> e e e |
    <c a e> e e e <c a e> e e e |
    <b gis e> e e e <b gis e> e e e | % 2.6 - 34
    << {\override Staff.NoteCollision #'merge-differently-headed = ##t a,2 g} \\ {a8 <c e> <c e> <c e> g <a cis e> <a cis e> <a cis e>} >> |
    << {f2 cis} \\ {f8 <a d> <a d> <a d> cis, <e g a> <e g a> <e g a>} >> |
    << {d2 d} \\ {d8 <f a d> <f a d> <f a d> d <f a d> <f a d> <f a d> } >> |
    << {f2 f} \\ {f8 <a d> <a d> <a d> f <a d> <a d> <a d> } >> | % 3.1 - 38
    e8 <a c e> <a c e> <a c e> e <ais cis e> <ais cis e> <ais cis e> |
    e <b' d e> <b d e> <b d e> e, <gis b e> <gis b e> <gis b e> |
    e[ <a c>] e <ais cis> e[ <b' d>] e, <gis b>  |
    e[ <a c>] e <ais cis> e[ <b' d>] e, <gis b>  | % 3.2 - 42
    \repeat "unfold" 4 {cis,8[ <e g bes>]} |
    \repeat "unfold" 4 {cis8[ <g' e'>]} |
    \repeat "unfold" 4 {cis,8[ <g' e'>]} |
    \repeat "unfold" 4 {cis,8[ <g' e'>]} | % 3.3 - 46
    \repeat "unfold" 4 {cis,8[ <e cis'>]} |
    \repeat "unfold" 4 {a,8[ <e' cis'>]} |
    \repeat "unfold" 4 {a,8[ <e' cis'>]} |
    bes <f' bes d> <f bes d> <f bes d> bes, <f' bes d> <f bes d> <f bes d> | % 3.4 - 50
    bes, <f' a ees'> <f a ees'> <f a ees'> bes, <f' a ees'> <f a ees'> <f a ees'> |
    bes, <f' bes d> <f bes d> <f bes d> bes, <f' bes d> <f bes d> <f bes d> |
    bes, <f' a ees'> <f a ees'> <f a ees'> bes, <f' a ees'> <f a ees'> <f a ees'> |
    bes, <f' bes d> <f bes d> <f bes d> bes, <f' a ees'> <f a ees'> <f a ees'> | % 3.5 - 54
    bes, <f' bes d> <f bes d> <f bes d> bes, <f' a ees'> <f a ees'> <f a ees'> |
    bes, <f' bes d> <f bes d> <f bes d> bes, <f' a ees'> <f a ees'> <f a ees'> |
    bes, <f' bes d> <f bes d> <f bes d> bes, <f' a ees'> <f a ees'> <f a ees'> |
    <bes f d bes> r r4 r2 | % 3.6 - 58
    s1 |
    s4 r4 r2 |
    s1 |
    s4 r4 r2 | % 4.1 - 62
    s1*5 | % 4.2 - 67
    \bar "||"
    \key f \major
    \repeat "tremolo" 4 {<f a c>16 f'} \repeat "tremolo" 4 {<f, a c>16 f'} |
    \repeat "tremolo" 4 {<f, a c>16 f'} \repeat "tremolo" 4 {<f, a c>16 f'} |
    \repeat "tremolo" 4 {<g, bes c>16 e'} \repeat "tremolo" 4 {<g, bes c>16 e'} |
    \repeat "tremolo" 4 {<g, bes c>16 e'} \repeat "tremolo" 4 {<g, bes c>16 e'} |
    \repeat "tremolo" 4 {<f, a c>16 f'} \repeat "tremolo" 4 {<f, a c>16 f'} |
    \repeat "tremolo" 4 {<f, a c>16 f'} \repeat "tremolo" 4 {<f, a c>16 f'} | % 4.3 - 73
    \repeat "tremolo" 4 {<g, bes c>16 e'} \repeat "tremolo" 4 {<g, bes c>16 e'} |
    \repeat "tremolo" 4 {<g, bes c>16 e'} \repeat "tremolo" 4 {<g, bes c>16 e'} |
    \repeat "tremolo" 4 {<f, a c>16 f'} \repeat "tremolo" 4 {<f, a c>16 f'} |
    \repeat "tremolo" 4 {<e, g bes>16 cis'} \repeat "tremolo" 4 {<e, g bes>16 cis'} |
    \repeat "tremolo" 4 {<d, f a>16 d'} \repeat "tremolo" 4 {<d, f a>16 d'} |
    \repeat "tremolo" 4 {<d, f a>16 d'} \repeat "tremolo" 4 {<d, f a>16 d'} | % 4.4 - 79
    \repeat "tremolo" 4 {<b, f'>16 aes'} \repeat "tremolo" 4 {<b, f'>16 aes'} |
    \repeat "tremolo" 4 {<b, f'>16 aes'} \repeat "tremolo" 4 {<b, f'>16 aes'} |
    \repeat "tremolo" 4 {<c, f>16 a'} \repeat "tremolo" 4 {<c, f>16 a'} |
    \repeat "tremolo" 4 {<c, f a>16 c'} \repeat "tremolo" 4 {<c, f a>16 c'} |
    <c bes g e c>4 r r2\fermata |
    \repeat "unfold" 4 {<f,, a c>8 f'} | % 4.5 - 85
    \repeat "unfold" 4 {<f, a c>8 f'} |
    <c a f>4 r <bes' d>2-> |
    <a c>-> <g bes>-> |
    <f a>-> <bes d>-> |
    <a c>-> <g bes>-> |
    <f a> r2\fermata | % fin
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
    first-page-number = 66
    print-first-page-number = ##t
    ragged-last-bottom = ##f
    %#(set-paper-size "a4")
}
