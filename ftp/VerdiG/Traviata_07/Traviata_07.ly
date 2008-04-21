\version "2.10.33"
\header {
    title = \markup \center-align { \bigger "La Traviata" " "}
    subtitle = "Scena e duetto"
    subsubtitle = \markup {\italic "«Pura siccome un angelo»"}
    composer = "G. Verdi"
    arranger = "Transcripción de N. Toledo"
    piece = "Nº 7"

    %copyright = "Calcografía de la 'Nueva Biblioteca Musical Económica', 1857-1869"
    % Mutopia headers
    mutopiatitle = "La Traviata - N7 Scena e duetto"
    mutopiacomposer = "VerdiG"
    mutopiainstrument = "Piano"
    source = "Calcografía de la 'Nueva Biblioteca Musical Económica', 1857-1869"
    style = "Romantic"
    copyright = "Public Domain"
    maintainer = "Alberto Corella"
    maintainerEmail = "ppiano@telefonica.net"
 footer = "Mutopia-2008/04/21-1400"
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
    <f, aes,>8-.^\markup{\column{\bold "Moderato" " "}} <f aes,>-. <f aes,>-. r <f aes,>8-. <f aes,>-. <f aes,>-. r |
    \once\override DynamicLineSpanner #'staff-padding = #3 \repeat "tremolo" 4 {f16(-3^\> e)\!} f4 r |
    <f aes,>8-. <f aes,>-. <f aes,>-. r <f aes,>8-. <f aes,>-. <f aes,>-. r |
    \repeat "tremolo" 4 {f16(^\> e)\!} f4 r | % 1.1 - 4
    << {d'2 r4 aes!8 g} \\ {<aes f>2 r2} >> |
    g8 f r4 r8 aes16 aes aes8 g |
    g8 f r f16 f f4 e!8 f |
    aes8 g r4 r c8.-3 des16 | % 1.2 - 8
    c4( bes8)[ r16 bes] \stemDown aes8-.\( aes-. bes-. c-.\) \stemNeutral |
    c4 g r8 c-2 d e |
    f4(\< f,8) r f'4-5 f8. e16 |
    e4 d8[ r16 d-2] d8-.-1 e-. f-. g-.-1\! | % 1.3 - 12
    \once\override Fingering #'extra-offset = #'(0 . 4.5) \once\override TextScript #'extra-offset = #'(0 . 1) a1^\markup{\bold "Allegro"}_5 ~ |
    \times 2/3 {a8\( bes a} \times 2/3 {\once\override DynamicLineSpanner #'staff-padding = #2.5 f8\pp d c\)} \times 2/3 {\once\override TextScript #'extra-offset = #'(0 . -1) a8_\markup{\italic "allarg."} d c} \times 2/3 {g8 bes a} |
    << {g2^\markup{\finger "25"}( f4)} \\ {r4 \set fingeringOrientations = #'(left) <e-4 b-2> <f-5 a,-1>} >> r4 | % 1.4 - 15
    c'4-3 b!8. c16 e4. d8 |
    d4 c r8 c-2 c c |
    ees4 r <g, ees des bes> r |
    ees2 r\fermata | % 1.5 - 19
    \bar "||"
    \key aes \major
    \time 4/4
    R1^\markup{\column {\line {\bold "Allegro moderato. ("\note #"4" #1 \bold " = 84)"} " "}} |
    \phrasingSlurDown c'4-5\(^\markup{\italic "dolciss."} aes8 ees\) \phrasingSlurNeutral c'4-5 c-3 |
    c4..\( des16 c4\) r | % 2.1 - 22
    \phrasingSlurDown c4\( aes8 ees\) \phrasingSlurNeutral c'4 c |
    c4..\( des16 c4\) r |
    bes4-2\(\< a8 bes c4 des\) |
    des4.-5\(\!\> c8 bes4 aes\)\! | % 2.2 - 26
    aes4.\(_2 bes16 c bes4 aes\) |
    g2(_2 des'!4-4) r |
    c4\(-5 aes8 ees c'4-. c-.\) |
    c4-3 ~ c16^\markup{\italic "legg."}\( b c des\) c4 r | % 2.3 - 30 
    c4\( aes8 ees c'4-. c-. |
    c4 ~ c16\( b c des\) c4 r |
    bes4-2\(\< a8 bes c4 des\)\! |
    f4.-5\( ees8 des \override Fingering #'avoid-slur = #'inside c-1 bes-3 aes\) |% 2.4 - 34
    \revert Fingering #'avoid-slur
    bes4.-3\( c16 des\) f,8 g c bes |
    aes4.\( c16 bes aes4\) r |
    g4_1 g8 g aes4 g |
    bes4..\( aes16 aes4\) r | % 2.5 - 38
    bes4-2 bes8. bes16 c4 \appoggiatura ees8 des4 |
    c4.-3 c8 c-.\( c-. c-. c-.\) |
    c8.-3 des16-4 c8 c c-.\( c-. c-. c-.\) |
    c4..\< c16\!\>\ff ees8. des16 ees8. des16\! | % 2.6 - 42 
    c16 ees,-2 d\pp ees c'8-4_\markup{\italic "ritar."}^\markup{\italic "sten."} des-5 bes16-3 ees,-2 d! ees bes'8-4^\markup{\italic "sten."} c-5 |
    <aes-3 c,-1>4 r8 << {\override TextSpanner #'edge-text = #'("animando" . "poco a poco") \once\override TextSpanner #'extra-offset = #'(0 . 2) \phrasingSlurDown g16-1\(\startTextSpan aes bes4\)( aes8) \slurDown g16( aes)} \\ {s4 \noFlagOn \stemExtendOn <ges ees>8 \once \override NoteColumn #'force-hshift = #-1.7 <ges ees>\noBeam \noFlagOff \stemExtendOff s8 } >> |
    << {\slurUp bes4( aes8) \slurDown g16( aes) bes4\stopTextSpan ~ bes16 \phrasingSlurDown c\( des ees\) } \\ {s8 \noFlagOn \stemExtendOn <f, des> <f des>\noBeam s4 <ees c>8 <ees c>\noBeam \noFlagOff \stemExtendOff s8} >> | % 3.1 - 45
    << {ges'4-5( f8-5) a,16-1_( bes) c4( bes8) a16_( bes)} \\ {r8 <ges bes> <f aes> r s \noFlagOn \stemExtendOn <f aes>8 \once \override NoteColumn #'force-hshift = #-1.7 <f aes>\noBeam \noFlagOff \stemExtendOff s8} >> |
    << {c'4( bes8) a16_( bes) c4 ~ c16 d-1 ees f} \\ {\noFlagOn \stemExtendOn s8 <ees, g>8 <ees g>\noBeam s4 <d f>8 <d f>\noBeam s8 } >> |
    << {aes''4( g!8) b,16-2 c des4( c8) b16_( c)} \\ {r8 <aes c> <g! bes> r s \noFlagOn \stemExtendOn <e g bes> \once \override NoteColumn #'force-hshift = #-1.7 <e g bes>\noBeam s \noFlagOff \stemExtendOff } >> | % 3.2 - 48
    << {des'4( c8) b16_( c) d4^\markup{\finger "41"} ~ d16 \phrasingSlurDown e\( f g\) \phrasingSlurNeutral} \\ {\noFlagOn \stemExtendOn s8 <f, aes>8 <f aes>\noBeam s s <e g> <e g>\noBeam s \noFlagOff \stemExtendOff } >> |
    \once\override Fingering #'avoid-slur = #'inside c'16-2\p\( \once\override Fingering #'avoid-slur = #'inside c-1 aes'-5 \once\override Fingering #'avoid-slur = #'inside c,-1\) c\( c aes' c,\) c\( c aes' c,\) c\( c aes' c,\) |
    c\( c f-4 c\) c\( c f c\) c\( c f c\) c\( c f c\) | % 3.3 - 51
    \override Fingering #'avoid-slur = #'inside c16-2\( c-1 ees-3 c\) c\( c ees c\) c\( c ees c\) c\( c ees c\) |
    \revert Fingering #'avoid-slur
    \phrasingSlurDown
    r16 fis,\(-2 d'-5 fis,\) r fis\( d' fis,\) r fis\( d' fis,\) r fis\( d' fis,\) |
    r16\< g\(-1 d'-5 g,\) r fis-2\( d' fis,\) r g\( d' g,\) r fis\( d' fis,\) | % 3.4 - 54
    r16 g\( d' g,\) r fis\( d' fis,\) r g\( d' g,\) r fis\( d' fis,\) |
    \phrasingSlurNeutral
    g16-1\( \override Fingering #'avoid-slur = #'inside fis-2 g-1 a b-1 a b c d cis-3 d-1 ees-2 f-3 e-1 f g\) |
    \repeat "tremolo" 4 {<f aes!>16\!\ff c16} \tieDown \repeat "tremolo" 4 {<f aes>16 c16 ~} \tieNeutral | % 3.5 - 57
    <c f aes c>8 r <f aes c f>4-> r2 |
    <g, b d>8 r <g b d g>4-> r2\fermata |
    R1^\markup{\musicglyph #"scripts.ufermata"}_\markup{\italic "lunga"} |
    \bar "||"
    \key ees \major
    \time 6/8
    \partial 4
    c8-.-1^\markup{\column {\line {\bold "Vivace. ("\note #"4" #1 \bold " = 102)"} " "}} d-. | % 3.6 - 61
    \noBreak
    ees16->-3\(\pp d c4\) r8 c-. d-. |
    ees16->\( d c4\) r8 c-. d-. |
    \once\override TextScript #'extra-offset = #'(0 . -2)
    ees16->-5_\markup{\dynamic ff}\( f g4\) ~ g8 f ees |
    d16-2( g-5) g,4-1 r8 c-.-1 d-. | % 4.1 - 65
    ees16->\( d c4\)_\markup{\dynamic p} r8 c-. d-. |
    ees16->\( d c4\) r8 c-. d-. |
    \once\override TextScript #'extra-offset = #'(0 . -2)
    ees16->_\markup{\dynamic ff}\( f g4\) ~ g8 f ees |
    d16( g) g,4 r8 <g g'>_\markup{\italic "á piacere"} <g g'> | % 4.2 - 69
    <g g'>4. f'8 ees d |
    c4( bes8_\markup{\italic "a tempo."} bes4^\markup{\italic "dim"}( aes8 |
    aes4( g8) g4( f8) |
    \set fingeringOrientations = #'(up)
    << {ees8 g \set fingeringOrientations = #'(up) <g-5 f-4>} \\ {ees4 s8} >> <g-5 ees-3>8 <g-5 d-2> <g-5 c,-1> | % 4.3 - 73
    <g-5 b,-1>4 r8 r c-. d-. |
    ees16->\( d c4\)\pp r8 c-. d-. |
    ees16->\( d c4\) r8 c-. d-. |
    ees16->\( f\f g4\) ~ g8 f ees | % 4.4 - 77
    d16\( g g,4\) r8 des'-3 des |
    des16\( c c4\) ces8-.-1\( ces-. ces-.\) |
    ces16\( bes bes4\) r8 g-1 g |
    g4 ees'8 d4 c8 | % 4.5 - 81
    b8-1 d4\fermata-3 ~ d8 d-3 dis-4 |
    \bar "|."
    \key c \major
    << {e4-5^\markup{"Ancora piú vivo"} e8-5 e4 e8} \\ {e,8-1 e e e e e} >>
    << {e'4 e8 e4 e8} \\ {e,8\< e e e e e } >> |
    << {e'4 e8 e4 e8} \\ {e,8 e e e e e\!} >> | % 4.6 - 85
    e'4. d4\p r8 |
    \override TextSpanner #'edge-text = #'("con 8ª" . "")
    \once\override TextSpanner #'extra-offset = #'(0 . 2) 
    f4.->\startTextSpan ~ f8 e d |
    c4.-> ~ c8 c d |
    c4\(-> b8 a4-> g8\) | % 5.1 - 89
    g'4.-> fis-> |
    f!-> e-> |
    e8\( cis d\) e4-> d8 |
    c!4.( b) | % 5.2 - 93
    g'4.-> fis-> |
    f!-> e->\stopTextSpan |
    \repeat "unfold" 6 <bes e bes'>8 |
    \repeat "unfold" 6 <bes e bes'>8 | % 5.3 - 97
    << {bes'4-5\( \override Fingering #'avoid-slur = #'inside a8-5 g4-5 \revert Fingering #'avoid-slur f8-5\)} \\ {r8 <c e> <c f> r8 <cis a> <d a>} >> |
    << {e4\( \override Fingering #'avoid-slur = #'inside d8-5 cis4-4 \revert Fingering #'avoid-slur d8-5\)} \\ {r8 <bes g> <a f> r <g bes> \set fingeringOrientations = #'(left) <a-2>} >> |
    r8 <c dis fis a>( <c e g>) r <c dis fis a>( <c e g>) | % 5.4 - 100
    r8 <c dis fis a>( <c e g>) r <c dis fis a>( <c e g>) |
    <b d! f! a>8 \repeat "unfold" 5 <b d f a>8 |
    \cadenzaOn
    \set Staff.connectArpeggios = ##t
    << {a'2-5\arpeggio ~ \times 2/3 {a4 g f} } \\ {<f d b>4\arpeggio s2.} >> \stemUp \times 2/3 {e4 f_4 d} \stemDown b16 r g'4\fermata
    \cadenzaOff
    \bar "|"
    \set Score.currentBarNumber = #103
    <c g e c>4 r8 \acciaccatura {g,,16[ a b]} c4 r8 | % 5.5 - 104
    r8 r4 r8 c'4 |
    des4.-5\(_\markup{\italic "a piacere"} bes |
    g f |
    e!4\) r8 r4 r8 |
    r4 r8 r4 c'8 | % 5.6 - 109
    \stemNeutral
    des4.\( bes |
    g f |
    e!4 ~ e16 f e4\) r8 |
    R2.^\markup{\musicglyph #"scripts.ufermata"} |
    \bar "|."
    \key aes \major
    \time 2/4
    aes16-3[^\markup{\column {\line {\bold "Andante piúttosto mosso. ("\note #"4" #1 \bold " = 96)"} " "}} aes r aes] g[ f r f] | % 6.1 - 114
    \noBreak
    c'8.._( f,32) f8[ r16 aes] |
    g16[ f r c'] c8[ r16 c] |
    f4( f,8)[ r16 c'] |
    des16 des r8 bes8. bes16 |
    ees8. aes,16 aes8[ r16 aes] | % 6.2 - 119
    g16[ f r f] f'8. f16\< |
    e16-4([ c)] <g-5 bes,!-2>64 g, <bes g'>16 r32 <fis' a,>64 fis, <a fis'>16 r32 <aes f'>64 f <aes f'>16 r32\! |
    <g e'>64 e <g e'>16 r32 <bes'-5 g-3>64 bes, <bes' g>16 r32 <fis a>64 fis,_\markup{\italic "cresc"} <fis' a>16 r32 <f aes>64 f, <f' aes>16 r32 | % 6.3 - 122
    <e g>64 g, <e' g>16 r32 <bes' g'>64 g <bes g'>16 r32 <a fis'>64 fis <a fis'>16 r32 <aes f'>64 f <aes f'>16 r32 |
    <g e'>64 e <g e'>16 r32 <g' bes>64 bes, <g' bes>16 r32 <fis a>64 a, <fis' a>16 r32 <f aes>64 aes, <f' aes>16 r32 |
    <g e g,>4 g | % 6.4 - 125
    c, r8\fermata  <c c,>8 |
    <aes aes'>16^\markup{\italic "con semplicita"} r <aes aes'> r <g g'> r <f f'> r |
    <c' c'-5>32\( b'-4 c-5 aes-3\) f8-2 r <c c,>16 r |
    <aes aes'>16 r <aes aes'> r <g g'> r <f f'> r | % 6.5 - 129
    <c' c'>32\( b' c aes\) f8 r <f f,>8 |
    <des des'>16 r <des des'> r <c c'> r <bes bes'> r |
    <ees' ees,>32\( d ees c\) aes8 r16. aes,32-3\noBeam aes16. g32 | % 6.6 - 132
    f4 r8.. g32-2 |
    c4( c,16) r <c c'> r |
    <bes' bes'>16 r <bes bes'> r <aes aes'> r <g g'> r |
    <c c'>32\( b' c aes\) f8 r <c c,>16 r | % 7,1 - 136
    <bes bes'>16 r <bes bes'> r <aes aes'> r <g g'> r |
    <c c'>32\( b' c aes\) f8 r <f f,>16 r |
    <des des'>16 r <des des'> r <c c'> r <bes bes'> r | % 7.2 - 139
    \override TextSpanner #'edge-text = #'("con 8ª ad libitum" . "") 
    \once\override TextSpanner #'extra-offset = #'(0 . 2)
    f'8-4\startTextSpan[ ~ f32 ees\( des c]\) c8-4[ ~ c32 des-5\( f, bes-4]\) |
    aes8[ ~ aes32 ees-2\( d ees]\) fes8._( ees16) |
    aes4\stopTextSpan r8 <aes aes'> |
    <f' f'>8\([ <ees ees'> <des des'> <c c'>\)] | % 7.3 - 143
    \set fingeringOrientations = #'(left)
    <bes'-5 bes,-1>32\ppp\( aes g! bes\) \set fingeringOrientations = #'(up) <aes-4 aes,-1>4 f,8-1 |
    aes32\( ges f aes\) g4 aes8 |
    f8.-1\( g16 aes8\) <aes aes'>\noBeam |
    <f' f'>8\([\> <ees ees'> <des des'> <c c'>\)]\! | % 7.4 - 147
    <bes' bes,>32\ppp\( aes g bes\) <aes aes,>4( des,8) |
    aes32\([ ges f aes ges16\) ees'-5] ~ \stemUp ees8.[ ges,32-2 aes] \stemNeutral |
    << {f16\([ aes r ces-5] ces-5-. ces-. ces-. ces-.\) } \\ {r4 \set fingeringOrientations = #'(left) <f,-2 des>-1 ~ } >> |
    << {ces'16.-5\([ bes32-4 bes16 des-5\)] des-4-.\( des-. des-. des-.\)} \\ {<ges, des>8 r bes4} >> | % 7.5 - 151
    <aes-1 c-2>8. ees'16-3\( ees-. ees-. ees-. ees-.\) |
    << {ges16.-5 f32 s8} \\ {ees16.[ des32 ees16.-3 des32]} >> c16.[ bes32 c16. bes32] |
    \appoggiatura bes8-3 aes32\([ g! aes f\) des'8-5] r16 des-3-. des-. ees-. |
    des-3 c-1 bes-3 aes g! aes f'16.\fermata-5 ees32 | % 7.6 - 155
    \override TextSpanner #'edge-text = #'("con 8ª " . "") 
    des8 \once\override TextSpanner #'extra-offset = #'(0 . 2) fes4->\startTextSpan\( ees16. des32\) |
    fes4.\( ees16. des32\) | % 8.1 - 157
    ees4.\( des16. c32\) |
    des4( aes8) r | % 8.2 - 159
    fes'4.\( ees16. des32\) |
    fes4.\( ees16. des32\) | % 8.3 - 161
    ees4.\( des16. c32\) |
    des4( aes8) r | % 8.4 - 163
    ces4.\( des16. ees32\) |
    ges4.\( fes16. des32\) | % 8.5 - 165
    bes4.\( ces16. des32\) |
    fes8->( ees16) r aes,8\( bes16. ces32\) | % 9.1 - 167
    ees8( des16) r g,!8\( aes16. bes32\) |
    \once\override DynamicLineSpanner #'Y-offset = #-6
    ces16\f[ ees8-> ees-> ees-> ees16] | % 9.2 - 169
    ees8\stopTextSpan[_\markup{\italic "á piacere con forza"} ges->-4 f-> ees]-> |
    \noBreak
    d8.-1 ees16-2 ees4-5 ~ |
    ees8[ ges,-2\( f-1 ees-2\)] |
    bes16-1\([\p \override Script #'avoid-slur = #'inside \once\override Fingering #'extra-offset = #'(0 . 2) <d-1 bes'-4>8-> <aes' ces>-> \once\override Fingering #'extra-offset = #'(0 . 2) <f-2 bes,-1>-> \revert Script #'avoid-slur <bes bes,>16->\)] ~ | % 9.3 - 173
    <bes bes,>16\([ \override Script #'avoid-slur = #'inside \once\override Fingering #'extra-offset = #'(0 . 1) <bes,-1 ees-2>8-> \once\override Fingering #'extra-offset = #'(0 . 1) <bes-1 ges'-5>-> <aes f'>-> <ges ees'>16\)]( |
    <d' f,>16)[\(_\markup{\italic "dim."} \once\override Fingering #'extra-offset = #'(0 . 2) <d-1 bes'-4>8 <aes' ces>-> <f bes,>-> <bes bes,>16\)] ~ |
    <bes bes,>16\([ \once\override Fingering #'extra-offset = #'(0 . 1) <bes,-1 ees-2>8-> \once\override Fingering #'extra-offset = #'(0 . 1) <bes-1 ges'-5>-> <aes f'>-> <ges ees'>16\)] |
    \revert Script #'avoid-slur
    <f d'>8 r bes'4\fermata | % 9.4 - 177
    \bar "|."
    \key ees \major
    \time 6/8
    g4.-1^\markup{\column {\line {\bold "Andantino cantabile. ("\note #"4" #1 \bold " = 50)"} " "}}  g4 g8 |
    \noBreak
    aes4 ~ aes16. g32 aes4 r8 |
    aes4. aes4 aes8 |
    bes4-2 ~ bes16. a32 bes4 r8 | % 10.1 - 181
    bes4.-2 c4 c8 |
    << {d4-4 d8 ees4.} \\ {bes2.-2 ~} >> |
    << {d4. c8 d ees} \\ {bes4. a4.-1} >> |
    << {d4-4 ~ \phrasingSlurDown d16.\( c32 bes4\) \phrasingSlurNeutral r8} \\ {bes4-2 r8 r4 r8 } >> | % 10.2 - 185
    f'4.-5 ees8\(-4 c ees\) |
    bes4-2\( g8 bes\)[ r bes-4] |
    c8-.-5 c-. c-. \phrasingSlurDown c-5\( d,-1 c'\) \phrasingSlurNeutral |
    bes4 g8 bes4 r8 | % 10.3 - 189
    << {aes'4.\( g4 d8-2\)} \\ {aes4. g} >> |
    << {f'8-5\( ees d c-5 bes aes\)} \\ {g4.-1 f} >> |
    << {g8-2 c8.-5 bes16 f8-2 ces'8.-5 bes16} \\ {ees,4. d8 r r} >> |
    ees8-1\> <d' d'>->[( <ees ees'>)] r <a a,>->\!( <bes bes,>)] | % 10.4 - 193
    des,4-4\p( ces8) \stemDown bes16-2[\( ces f,8-1 bes-4\)] \stemNeutral |
    ees,8\> <d' d'>->[( <ees ees'>)] r <a a,>->\!( <bes bes,>)] |
    des,4\p( ces8) \stemDown bes16[( ces) f,8-. bes-4-.] \stemNeutral |
    ges4-2 ees8-1 ces'-5-.\([ ces-. ces-.\)] | % 10.5 - 197
    ces4-4(^\> bes8-3)\! bes\([ ces des\)] |
    ges,8.-2 ees16-1 ges8 ces-.\( ces-. ces-.\) |
    ces4-3( bes8-2) des\([ ees des\)] | % 10.6 - 200
    ces4-3 ges8_1 \phrasingSlurDown bes-3^\pp\(-. bes-. aes-.\) \phrasingSlurNeutral |
    aes8.-2 ges16-1 ges8 des'-.-4\(_\markup{\italic "cresc."} des-. ces-.\) |
    ces4( bes8) <f'! f'!>\(_\markup{\italic "con forza"} <f f'> <ees ees'>\) |
    <d d'>\(\> <c ees c'>-> <aes c aes'>\) <g bes g'>\( <aes c aes'>-> <f aes f'>\) | % 11.1 - 204
    <ees g ees'>\( <aes c aes'> <g bes g'>\) <f aes f'>\( c-1 d-2\)\! |
    << {\set fingeringOrientations = #'(right) <g-5>4. g4-3 g8} \\ {\set fingeringOrientations = #'(right) <ees-3>4 r8 r4 r8} >> |
    aes4-1 ~ aes16. g32 aes4 r8 |
    aes4.\( aes4 aes8 | % 11.2 - 208
    bes4 ~ bes16. a32 bes4\) r8 |
    << {\stemDown \override Fingering #'avoid-slur = #'inside bes4.-3\( c4-4 c8 \stemNeutral} \\ {s2.} >> |
    << {d4-5 d8-5 \revert Fingering #'avoid-slur ees4.-5\)} \\ {r8 bes-3 aes-2 g-1 bes-2 c-1} >> |
    << {\once\override DynamicLineSpanner #'staff-padding = #2 f4.-5^\> f4-5 ees8-4\!} \\ {d8-3 d-3 d ees-4 g,-1 a-1} >> | % 11.3 - 212
    << {d4-4 ~ d16. ees32-5 d4-4} \\ {bes4-2 ~ bes16. c32-3 bes4-2} >> r8 |
    f'4.->-5\( ees8 c ees\) |
    bes4\( g8 bes[\) r bes] |
    << {c8-.-5\( c-. c-.\) c-.\( d,-. c'-.\)} \\ {aes8 aes aes aes r r} >> | % 11.4 - 216
    << {bes4 g8 ees'-4 d c} \\ {ees,4.( bes'4) r8} >> |
    << {\once\override DynamicLineSpanner #'staff-padding = #2.5 aes'4.-5\< g4 d8\!} \\ {\once\override Slur #'positions = #'(-1 . 0) b2.-1(} >> |
    << {s2.} \\ {\set fingeringOrientations = #'(up) <d-2 f-4>8-.\>) <c-1 ees-3>-. <bes-3 d-5>-. <aes-2 c-4>-. <g-1 bes-3>-. <f-3 aes-5>-.\!} >>
    \stemDown <ees-2 g-4>8 <aes-3 c-5>8.-> <g-2 bes-4>16 <f-2 d-1>8 <aes-3 ces-5>8.-> <bes-4 d,-1>16 \stemNeutral | % 11.5 - 220
    ees,8 <d d'>_(-> <ees ees'>) r <d d'>_(-> <ees ees'>) |
    \once\override TextScript #'extra-offset = #'(0 . -4)
    r8_\markup{\italic "cresc."} <d d'>_(-> <ees ees'>) << {f'4.-5->} \\ {des4( ces8^2)} >> |
    << {aes'8-5 ges-4 f ees4-4 ees8} \\ {\once\override DynamicLineSpanner #'staff-padding = #3 bes4-1\ff bes8-2 a4-1 a8} >> |
    << {\override Staff.NoteCollision #'merge-differently-dotted = ##t bes8-2 r g'-5\( aes4 d,8\)} \\ {bes16.([ c32)]-3 \once\override DynamicLineSpanner #'staff-padding = #5 bes16.([-1\pp c32)]-2 bes16.[( c32]) bes8-1 bes-> aes} >> | % 12.1 - 224
    << {ees'8 <d, d'>_(-> <ees ees'>)} \\ {ges8 s4} >> r8 <d d'>_(-> <ees ees'>) |
    \once\override TextScript #'extra-offset = #'(0 . -4)
    r8_\markup{\italic "cresc."} <d d'>_(-> <ees ees'>) << {f'4.->} \\ {des4( ces8)} >> |
    << {aes'8 ges f ees4 ees8} \\ {\once\override DynamicLineSpanner #'staff-padding = #3 bes4\ff bes8 a4 a8} >> |
    << {\override Staff.NoteCollision #'merge-differently-dotted = ##t bes8 r g'\( aes4 d,8\)} \\ {bes16.([ c32)] \once\override DynamicLineSpanner #'staff-padding = #5 bes16.([\pp c32)] bes16.[( c32]) bes8 bes-> aes} >> | % 12.2 - 228
    << {ees'4 r8 f-5 ees d} \\ {g,8 r8. bes16 <aes ces>4.} >> |
    << {ees'4} \\ {<bes g>4} >> r8 ces-5\fermata aes-3 ges-2 |
    f4-1\< r8 \stemUp f'4-3 ees8 |
    \bar ""
    \override TupletNumber #'transparent = ##t
    \times 2/3 {d16-1\![ aes'-5 f-3]} \times 2/3 {d16-2[ c-1\> aes-2]} f8-1 c'4-5 bes8\fermata\! | % 12.3 - 231
    \set Score.currentBarNumber = #231
    << {g2.} \\ {\stemUp d8\rest <ees bes g> <es bes g> r <ees bes g> <ees bes g>} >> |
    <ees bes g>4 r8 r4\fermata r8 | 
    \bar "|."
    \time 4/4
    \partial 4 bes'8.-3^\markup{\column {\line {\bold "Sostenuto. ("\note #"4" #1 \bold " = 88)"} " "}} bes16 | \noBreak
    c8 bes \set fingeringOrientations = #'(left) <g-4 bes,-1>[-. r16 <aes-5 bes,-1>]-. \set fingeringOrientations = #'(up) <f-3 bes,-1>8-. bes16-5[ bes-5] bes8[-5 bes]-5 | % 12.4 - 234
    c16( bes) bes8-. <g bes,>-.[ r16 <aes bes,>-.] <f bes,>8-. bes[ bes bes] |
    ces4 <ees,-4 ges,-1>8-.[ r16 <fes-5 ges,-1>-.] <des-3 ges,-1>8-. r r ges |
    aes8 ges <ees ges,>-.[ r16 <fes ges,>-.] <des ges,>8-. r des'8. des16 |
    fes8 ees <ges,-3 ces,-1>-.[ r16 <aes-4 ces,-3>-.] <beses-5 ces,-1>8 r r ges | % 12.5 - 238
    beses2 r4 r8 dis |
    dis2( b!4) r8 dis-3 |
    \bar "||"
    \key g \major
    fis4-5 e dis cis |
    b2( e4) r |
    dis4( fis,!8.) a16 gis4. fis8 | % 12.6 - 243
    <e'-5 e,-1>4 ~ e16-1 fis-2 g-3 a-1 ais4-2( b8)-3 r |
    e,4-1 ~ e16 fis g a ais4( b8) r |
    fis,4-2 ~ fis16 g a b d4( c8) r | % 13.1 - 246
    dis,4-1 ~ dis16 e fis g b4( a8) r |
    g4 r8 \phrasingSlurUp \stemDown e''16-3\( ees-2 d4.-1 cis16-3 c-2\) |
    b4.\( a16-4 g-3\) fis4.-2\( g16-3 gis-4\) | % 13.2 - 249
    a4-5( d,8-.-2) e'16-3\( ees d4. cis16 c\) |
    b4.\( a16 g fis4. g16 gis\) |
    a4( d,8-.) e'16\( ees d4. cis16 c\) |
    b4.\( a16 g fis4. g16 gis\) | % 13.3 - 253
    \stemNeutral
    a4-5( d,8-1[) cis16-2 d-1] dis8-2( e16-3) r\< f8-1( fis16-2) r |
    g8-1( gis16-2) r a8-1( bes16-2) r b8-3( c16-4) r cis8-2( d16-3) r\! |
    ees16-4\( d cis d\) d,8-1[ cis16 d] dis8( e16) r\< f8( fis16) r | % 13.4 - 256
    g8( gis16) r a8( bes16) r b8( c16) r cis8( d16) r\! |
    ees16-4\( d cis d\) d,8-.[ d'-.] ees16\( d cis d\) d,8-.[ d'-.] |
    ees16\( d cis d\) d,8-.[ d'-.] ees16\( d cis d\) d,8-.[ d'-.] | % 13.5 - 259
    d16-3\(\ff cis-2 d-3 ees-4\) \repeat "unfold" 3 {d16\( cis d ees\) } |
    \repeat "unfold" 4 {d16\( cis d ees\) } |
    d8. <d d,>16 <d d,>8. <d d,>16 <d d,>8. <d d,>16 <d d,>8. <d d,>16 |
    <d d,>4 r r r8. d,16 | % 13.6 - 263
    \phrasingSlurNeutral
    \bar "||"
    \key bes \major
    \override TextSpanner #'edge-text = #'("con 8ª ad libitum" . "")
    d2\f\startTextSpan->^\markup{\column {\line {\bold "Allegro moderato. ("\note #"4" #1 \bold " = 108)"} " "}} r4 r8. d16-3 |
    d4..-3\( ees16-4 d4..-3 bes16\) |
    g4..\(-1 a16 g4\) r8. g16-2 |
    g2-2 a8.-3\<[ b16-1 c8.-2 d16-3\!] | % 14.1 - 263
    f2-5->( ees4-4) r8. d16 |
    f4->-5\( ees d c-2\) |
    d4..->-4\( c16 bes4\) r8. bes16-3 |
    a4.-2\( bes16 c\) bes4 a |
    g4._\markup{\italic "morendo"}\( bes16 a\) g4 r\stopTextSpan | % 14.2 - 268
    d'4-3 d8. ees16 d4.. bes16 |
    g4.. a16 g4 r8. g16 |
    g2 a8.[\< b16 c8. d16] |
    f2->(\! ees4) r8. d16-4 |
    d4-4 c bes c | % 14.3 - 273
    d2 ~ d8 c-2\< d-3 ees-4\! |
    bes2-2 a8-.-1^\markup{\italic "dim"} bes-. c\fermata d-. |
    bes4.-2 d16 c bes4 r8. \set fingeringOrientations = #'(left) <d-2 f-4>16 |
    \once\override TextScript #'extra-offset = #'(0 . 2)
    <ees-3 g-5>4..(^\markup{"animando con molta pasione"} <d f>16) <ees g>4..( <d f>16) |
    <d-2 f-4>2->( <c-1 ees-3>8) r <c-1 ees-3>4 | % 14.4 - 278
    \override Script #'avoid-slur = #'inside
    <b-1 d-2>4->\( <c-1 ees-3>-> <d-2 f-4>-> <ees-3 g-5>->\) |
    \revert Script #'avoid-slur
    <d-2 f-4>2->( <bes-1 d-2>4) r |
    \stemDown
    <d-5 bes-3 d,-1>4 <cis a cis,>8. <d bes d,>16 <g ees g,>4..\fermata <f d f,>16 |
    <f d f,>4..->\( <e cis e,>16 <ees c ees,>4\) r8. d16 |
    f4..->-5( ees16-4) \override TupletNumber #'transparent = ##f \times 2/3 {ees4 d c} | % 14.5 - 283
    d4 r8 d8-.-4 d-.\([ d-. d-. d-.]\) |
    \override Fingering #'avoid-slur = #'outside
    d4->-4( cis8-.-3) c-. c-.\( c-. c-. c-.\) |
    c4->-4( bes8-3) bes-.^\markup{\italic "cresc."} bes-. bes-. bes-. bes-. |
    bes8.->-3 a16-2 bes8.-> a16 bes8.-> a16 bes8.-> a16 | % 14.6 - 287
    \stemNeutral
    d,4-1 d'->-5 d-> d16-> r \once\override TextScript #'extra-offset = #'(0 . 2.5) <f-5 d-3 f,-1>8^\markup{\italic "con pasione, sempre piú animando."} \noBreak |
    <g ees g,>4->( r8. <f d f,>16) <g ees g,>4->( r8. <f d f,>16) |
    <f d f,>2->( <ees c ees,>4) <ees-5 c-3 ees,-1> |
    <d b d,>4 <ees c ees,>\< <f d f,> <g ees g,>\! | % 15.1 - 291
    <f d f,>2( <d bes d,>4) r |
    <bes-1 d-2 bes'-5>4 <a cis a'>8. <bes d bes'>16 <ees g ees'>4.\fermata \set fingeringOrientations = #'(up) <d-3 f-5>8 |
    <d f>4..->( <cis-2 e-4>16) <c-1 ees-3>4 r8.<b-1 d-3>16 |
    <d-3 f-5>4..-> <c-2 ees-4>16 \times 2/3 {<c-3 ees-5>4-. <bes d>-. <a c>-.} | % 15.2 - 295
    <bes d>8 r r bes\p << {r4 r8 bes} \\ {a-1-.\( bes-.-2 c-.-3 bes-.-2\)} >> |
    << {g'4( f8) r r4 r8 bes,} \\ {aes4.-1 bes8-2 a-.-1\( bes-. c-. bes-.\)} >> |
    << {f'4-5( ees8-4) r r4 r8 bes} \\ {g4.-1 bes8-2 a!-.\( bes-. c-. bes-.\)} >> |
    << {a!8-2\( d4->-5 c8-4\) a-2\( d4-5-> c8-4\)} \\ {f,2-1\pp ees} >> | % 15.3 - 299
    << {bes'8-3\( ees4-5-> d8-4\) c-3\( f4-5-> ees8-4\)} \\ {d,2-1 f-1} >> |
    << {d'8-4\( g4->-5 f8-4\) ees-2\( a4-5-> g8-4\)} \\ {bes,2-1 c-1} >> |
    << {f4-2} \\ {d4-1} >> <bes' bes'> <a a'> <aes aes'> |
    <aes aes'>8 <g g'> <f f'> <ees ees'> <d d'> <c c'> <d d'> <ees ees'> | % 15.4 - 303 
    <bes bes'>4 r8. f'16-2 <bes-5 d,-2 bes-1>4..\< <c f, c>16 |
    <d-5 bes-3 d,-1>4..-> <ees c ees,>16 <f d f,>4..-> <g ees g,>16\! |
    <c, a c,>2 r8 <c a c,>-. <b gis b,>-. <c a c,>-. |
    <g ees' g>2..\fermata\ff <f d' f>8 | % 15.5 - 307
    <bes f des bes>8->\arpeggio\noBeam <f,-5 des-3 bes-2> <f des bes> <f des bes> <f des bes> <f des bes> <f des bes> <f des bes>  |
    r c'-1\noBeam c-1 c ees4 r8 des |
    <bes des f bes>->\arpeggio\noBeam <f des bes> <f des bes> <f des bes> <f des bes> <f des bes> <f des bes> <f des bes> | % 16.1 - 310
    r8 c' c c ees4. des8 |
    <bes des f bes>->\arpeggio\noBeam \once\override DynamicLineSpanner #'padding = #2 <f des bes>\< <f des bes> <f des bes> <f des bes> <f des bes> <f des bes> <f des bes>\! | 
    \repeat "tremolo" 4 {<d! f ces'>16\ff ces} \repeat "tremolo" 4 {<d f ces'>16 ces} |
    <d f ces'>4 r r2 | % 16.2 - 314
    \bar "||"
    ces'4^\markup{"Adagio á piacere"} ces8. ces16 bes4.. aes16 |
    aes4 ges r2 |
    <c-2 ees-4>2 <des-3 f-5>4.. <c-3 a-1>16 |
    <c-3 ees-5>4 <bes-2 des-4> r r8 des |
    des c r4 r r8 c | % 16.3 - 319
    c8 bes r4 r2 |
    \once\override Script #'script-priority = #-100 r2\fermata^\markup{\italic "colla parte"} r4 r8. d!16-3_\markup{"Conosca il sagrifizio..."} |
    \noBreak
    ees4..-4( d16) ees4..( d16) |
    d2 c4 r8. c16 |
    b4-1 c d ees |
    d2-3( bes4-2) r | % 16.4 - 325
    d4-3 cis8. d16 g4..\fermata-5 f16-4 |
    f4..-4 e16 ees4 r8.\fermata \once\override TextScript #'extra-offset = #'(0 . -2) ees16-3_\markup{"Addio!"} |
    \noBreak
    d8 c r4 r2 |
    f2-3 e4.-2 f8-3 |
    a2-5( g4..-4) d16-1 | % 16.5 - 330
    f2.-4( ees4-3) |
    <bes-1 d-2>8\ff <d-2 f-3 bes-5>16 bes-1 <d f bes> bes <d f bes> bes \repeat "tremolo" 4 {<d f bes>16 bes } |
    \repeat "tremolo" 4 {<d f bes>16 bes } \repeat "tremolo" 4 {<d f bes>16 bes } |
    <d f bes>4 r <d f bes> r |
    <bes f d> r <d f bes> r |
    bes,1\fermata |
    \bar "|."
    
}
lower = \relative c {
    \clef bass
    \key c \major
    \time 4/4
    r4 b! r c |
    << {\repeat "tremolo" 4 {aes'16(-2 g16)} aes4 r} \\ {des,2-5 ~ des4 r} >> |
    r4 b! r c |
    << {\repeat "tremolo" 4 {aes'16( g16)} aes4 r} \\ {d,!2 ~ d4 r} >> | % 1.1 - 4
    <b! b'!>2 r |
    R1 |
    R1 |
    r4 <c e! g c> r2 | % 1.2 - 8
    <c g' bes>2( <c f aes>) |
    << {\set fingeringOrientations = #'(up) <e-2 g-1>1} \\ {c2-4( bes-5)} >> |
    \set fingeringOrientations = #'(left) \repeat "tremolo" 4 { <a-5 c-3>16 f'16-1} \repeat "tremolo" 4 { <a, c>16 f'16} |
    \set fingeringOrientations = #'(up) \repeat "tremolo" 4 { <bes,-4 d-2>16 f'16-1} \repeat "tremolo" 4 { <bes, d>16 f'16} | % 1.3 - 12
    <c f>16 a' <c, f> a' <cis, f> a' <cis, f> a' <d, f> a' <d, f> a' <des, f> a' <des, f> a' |
    <a f c>8\arpeggio r r4 <a f c>8 r <bes e, c> r |
    r4 c,( f) r | % 1.4 - 15
    r2 <g b! d f> |
    <c g e c>2 r |
    r2 <ees, ees,>4 r |
    R1^\markup{\musicglyph #"scripts.ufermata"}  | % 1.5 - 19
    \bar "||"
    \key aes \major
    \time 4/4
    <aes aes,>8^\p <c aes ees>-.^\markup{Cantabile} \repeat "unfold" 6 {<c aes ees>8-.} |
    <aes aes,>8 \repeat "unfold" 7 <c aes ees>8-. |
    <aes aes,>8 \repeat "unfold" 7 <c aes ees>8-. | % 2.1 - 22
    <aes aes,>8 \repeat "unfold" 7 <c aes ees>8-. |
    <aes aes,>8 \repeat "unfold" 7 <c aes ees>8-. |
    ees,8 <g des'> <g des'> <g des'> ees <g des'> <g des'> <g des'> |
    <aes aes,>8 \repeat "unfold" 7 <c aes ees>8 | % 2.2 - 26
    f,8 <aes c> <aes c> <aes c> bes, <aes' bes d> <aes bes d> <aes bes d> |
    ees8 <g des'! ees> <g des' ees> <g des' ees> ees <g des' ees> <g des' ees> <g des' ees> |
    <aes aes,>8 \repeat "unfold" 7 <c aes ees>8 |
    <aes aes,>8 \repeat "unfold" 7 <c aes ees>8 | % 2.3 - 30
    <aes aes,>8 \repeat "unfold" 7 <c aes ees>8 |
    <aes aes,>8 \repeat "unfold" 7 <c aes ees>8 |
    ees,8 <g des'> <g des'> <g des'> ees <g des'> <g des'> <g des'> |
    c,8 <ees aes c> <ees aes c> <ees aes c> f <aes c> <aes c> <aes c> | % 2.4 - 34
    des,8 <f aes bes> <f aes bes> <f aes bes> ees <g bes des> <g bes des> <g bes des> |
    <aes aes,> <c aes ees> <c aes ees> <c aes ees> <aes aes,> <c aes ees> <c aes ees> <c aes ees> |
    e, <g bes des> <g bes des> <g bes des> e <g bes des> <g bes des> <g bes des> |
    f <aes c> <aes c> <aes c> f <aes c> <aes c> <aes c> | % 2.5 - 38
    g <bes des ees> <bes des ees> <bes des ees> g <bes des ees> <bes des ees> <bes des ees> |
    aes-4 \set fingeringOrientations = #'(up) <c-2 ees-1> \unset fingeringOrientations <c ees> <c ees> f, <aes c f> <aes c f> <aes c f> |
    e <g c e> <g c e> <g c e> f <aes c f> <aes c f> <aes c f> |
    <c g e>4( <c a ges ees> des,8) <f bes des> bes, <des f bes> | % 2.6 - 42
    <ees aes c>4 r <ees g des'> r |
    <aes ees aes,>4 r r8^\pp <aes c> <aes c> r |
    r8 aes aes r r aes aes r | % 3.1 - 45
    r8 des->( des,) r r <bes' des> <bes des> r |
    r8 bes bes r r bes bes r |
    r ees( ees,) r r c' c r | % 3.2 - 48
    r8 c c r r c c r |
    \override TextSpanner #'edge-text = #'("crescendo" . "poco a poco") 
    <f c aes f> r <f c aes f> r\startTextSpan <f c aes f> r <f c aes f> r |
    <f c aes> r <f c aes> r <f c aes> r <f c aes> r | % 3.3 - 51
    <g, c ees g>8 r <g c ees g> r <g c ees g> r\stopTextSpan <g c ees g> r |
    <a c d> r <a c d> r <a c d> r <a c d> r |
    <g b d> r <aes! c d> r <g b d> r <aes c d> r  | % 3.4 - 54
    <g b d> r <aes! c d> r <g b d> r <aes c d> r  |
    <g b d>8 r r4 r2 |
    \repeat "tremolo" 4 <f c aes f>8 \repeat "tremolo" 4 <f c aes f>8 | % 3.5 - 57
    <f c aes f>8 r <f c aes f>4-> r2 |
    <d b g>8 r <g d b g>4-> r2\fermata 
    R1^\markup{\musicglyph #"scripts.ufermata"} 
    \bar "||"
    \key ees \major
    \time 6/8
    \partial 4
    r8 r | % 3.6 - 61
    \once\override TextScript #'extra-offset = #'(0 . 3)
    r8 <c g ees c>-. <c g ees>-. <c aes f>-. r r |
    r8 <c g ees c>-. <c g ees>-. <c aes f>-. r r |
    r8 <ees c ees,>-. <ees c g>-. <c ees g>-. r r |
    r8 <g b d>-.-> <g b d g>-.-> <g g,>-> r r | % 4.1 - 65
    r8 <c g ees c>-. <c g ees>-. <c aes f>-. r r |
    r8 <c g ees c>-. <c g ees>-. <c aes f>-. r r |
    r8 <ees c ees,>-. <ees c g>-. <c ees g>-. r r |
    r8 <g b d>-.-> <g b d g>-.-> <g g,>-> r r | % 4.2 - 69
    <aes f d bes!>8 r r r4 r8 |
    <bes g ees>8-. r r <f c aes>-. r r |
    <g ees bes>-. r r <aes f d bes>-. r r |
    r8 <g ees>-> <g d>-> <g c,>-> <g b,>-> <g a,>-> | % 4.3 - 73
    <g g,>4-> r8 r4 r8 |
    r8 <c g ees c>-. <c g ees>-. <c aes f>-. r r |
    r8 <c g ees c>-. <c g ees>-. <c aes f>-. r r |
    r8 <ees c ees,>-. <ees c g>-. <c ees g>-. r r | % 4.4 - 77
    <g g,>8 <g b>-. <b d>-. <e, e,> <e g bes>-. <g bes des>-. |
    \stemDown
    <f f,> <f aes> <aes c> <d, d,> <d f aes> <f aes ces> |
    <ees ees,> <ees g> <g bes> d! <f g> <f g b> |
    c <ees g> <ees g c> a, <d fis> <fis a c> | % 4.5 - 81
    <g d b g>8 r r\fermata r4 r8 |
    \stemNeutral
    \bar "|."
    \key c \major
    << {g4.-1\( gis-2} \\ {c,8-5 c c c c c} >> |
    << {a'4.-1 bes-2} \\ {c,8 c c c c c} >> |
    << {a'4.-1 aes8 g-1 ges\)} \\ {c,8 c c c c c} >> | % 4.6 - 85
    <f a cis>8 <f a cis> <f a cis> <f a d> <f a d> <f a d> |
    \repeat "unfold" 6 <aes d f>8 |
    \repeat "unfold" 6 <g c e>8 |
    \repeat "unfold" 6 <f g b d>8 | % 5.1 - 89
    e8 <bes' cis> <bes cis> ees, <a c> <a c> |
    d, <aes' b!> <aes b> cis, <g' bes> <g bes> |
    <a f d> <a f d> <a f d> <f aes f'> <f aes f'> <f aes f'> |
    <g c e> <g c e> <g c e> <g b! d> <g b d> <g b d> | % 5.2 - 93
    e8 <bes' cis> <bes cis> ees, <a c> <a c> |
    d, <aes' b!> <aes b> cis, <g' bes> <g bes> |
    <c, c,>^\ff <c c,> <c c,> <cis cis,> <cis cis,> <cis cis,> |
    <d d,> <d d,> <d d,> <e e,> <e e,> <e e,> | % 5.3 - 97
    <f f,> g'([ f)] r e( d) |
    r cis( d) r e( f) |
    <g, e c g>4 r8 <g e c g>4 r8 | % 5.4 - 100
    <g e c g>4 r8 <g e c g>4 r8 |
    \repeat "unfold" 6 <f b, g>8 |
    \cadenzaOn
    <f b, g>4 s r8 s2 r4 r8\fermata s4 s8
    \cadenzaOff
    \bar "|"
    < c e g c>4 r8 \acciaccatura {g16[ a b]} <c c,>4 r8 | % 5.5 - 104
    R2. |
    des'4.\( bes |
    g f |
    e!4\) r8 r4 r8 |
    R2. | % 5.6 - 109
    des'4.\( bes |
    g f |
    e!4\) r8 r4 r8 |
    R2.^\markup{\musicglyph #"scripts.ufermata"} |
    \bar "|."
    \key aes \major
    \time 2/4
    r8 <f aes c>-. r <f aes c f>-. | % 6.1 - 114
    r8 <f aes c>-.[ <f c aes f>-.] r |
    r <f aes c>-. r <aes c f>-. |
    r <f aes c>-.[ <f c aes f>-.] r |
    r <bes f des bes>-. r <des bes g ees>-. |
    r <aes ees c>-.[ <c, aes c,>-.] r | % 6.2 - 119
    r <des f aes>-. r <f des b g>-. |
    \set fingeringOrientations = #'(left)
    <g,-2 c,-5>64 c-1 <g c,>16 r32 c,64 c' c,16 r32 c64 c' c,16 r32 c64 c' c,16 r32 |
    \unset fingeringOrientations 
    c64 c' c,16 r32 c64 c' c,16 r32 c64 c' c,16 r32 c64 c' c,16 r32 | % 6.3 - 122 
    c64 c' c,16 r32 c64 c' c,16 r32 c64 c' c,16 r32 c64 c' c,16 r32 |
    c64 c' c,16 r32 c64 c' c,16 r32 c64 c' c,16 r32 c64 c' c,16 r32 |
    <c c'>4 r | % 6.4 - 125
    r4 r8\fermata r8 |
    \stemDown
    f16-.[ r <c' f aes>-.] r f,-.[ r <c' f aes>-.] r |
    f,16-.[ r <c' f aes>-.] r f,-.[ r <c' f aes>-.] r |
    f,16-.[ r <c' f aes>-.] r f,-.[ r <c' f aes>-.] r | % 6.5 - 129
    f,16-.[ r <c' f aes>-.] r f,-.[ r <c' f aes>-.] r |
    bes16-.[ r <des f bes>-.] r ees-.[ r <g des'>-.] r |
    <aes aes,>16-.[ r <c aes ees>-.] r <aes aes,>-.[ r <c aes ees>-.] r | % 6.6 - 132
    des,16[-. r <f aes des>]-. r g,[-. r <f' g b>]-. r |
    c16[-. r <e g c>]-. r c[-. r <e g>-.] r |
    c16[-. r <e g>-.] r c-.[ r <e bes' c>-.] r |
    c16[-. r <f aes c>-.] r c-.[ r <f aes>-.] r | % 7.1 - 136
    c16[-. r <e g c>-.] r c-.[ r <e bes' c>-.] r |
    <f f,>16-.[ r <f aes c>-.] r <f f,>-.[ r <f aes c>-.] r |
    bes,16-.[ r <f' bes des>-.] r <ees ees,>-.[ r <ees g des'>-.] r | % 7.2 - 139
    c16-.[ r <ees aes c>-.] r des-.[ r <f bes des>-.] r |
    ees16-.[ r <aes c>-.] r <e g bes des>8 r |
    <aes aes,>16[ r <aes c ees>] r <aes aes,>[ r <aes c ees>] r |
    <aes aes,>16[ r <aes c ges'>] r <aes aes,>[ r <aes ees' ges>] r | % 7.3 - 143
    <aes aes,>16[ r <aes des f>] r <aes aes,>[ r <aes des f>] r |
    <aes aes,>16[ r <aes c ees>] r <aes aes,>[ r <aes c ees>] r |
    des,16[ r <aes' des f>] r des,[ r <aes' des f>] r |
    <aes aes,>16[ r <aes c ges'>] r <aes aes,>[ r <aes ees' ges>] r | % 7.4 - 147
    <aes aes,>16[ r <aes des f>] r <aes aes,>[ r <aes des f>] r |
    <aes aes,>16[ r \once\override TextScript #'extra-offset = #'(0 . 2) <aes c ees>]^\markup{\italic "dolciss."} r <aes aes,>[ r <aes c ees>] r |
    des,16[ r <f aes des>] r des[ r <aes' ces>] r |
    des,16[ r <ges bes>] r e[ r <g bes>] r | % 7.5 - 151
    f16[ r <aes c>] r <f f,>[ r <f a c>] r |
    des16[ r <f bes des>] r <ges ges,>[ r <ges bes ees>] r |
    <aes aes,>16[ r <aes des f>] r <aes aes,>16[ r <aes des f>] r |
    <aes aes,>16[ r <aes c ees ges>] r <aes aes,>16[ r <aes c ees ges>] r\fermata | % 7.6 - 155
    << {\once\override TextScript #'extra-offset = #'(-1 . 3) des,32_\markup{\finger "5"}[ \once\override TextScript #'extra-offset = #'(0 . 5.5) des'_\markup{\finger "1"} \once\override TextScript #'extra-offset = #'(0.5 . 2.5) ees,_\markup{\finger "5"} \once\override TextScript #'extra-offset = #'(0 . 5.5) des'_\markup{\finger "1"} \once\override TextScript #'extra-offset = #'(0.5 . 3) fes,_\markup{\finger "5"} des' \once\override TextScript #'extra-offset = #'(0.5 . 3.5) ges,_\markup{\finger "4"} des'] aes[\sustainDown \set fingeringOrientations = #'(down) \once\override Fingering #'extra-offset = #'(0 . 5) <des-2 fes-1> <des fes> <des fes> <des fes> <des fes> <des fes> <des fes>\sustainUp] } \\ {des,16-.\pp ees-. fes-. ges-. aes8-3 r} >> |
    << {des,32[ des' ees, des' fes, des' ges, des'] aes[\sustainDown <des fes> <des fes> <des fes> <des fes> <des fes> <des fes> <des fes>]\sustainUp } \\ {des,16-. ees-. fes-. ges-. aes8 r} >> | % 8.1 - 157
    << {aes,32[ ges' bes, ges' c, ges' des ges] ees[\sustainDown \once\override Fingering #'extra-offset = #'(0 . 4.5) <c'-3 ges'-1> <c ges'> <c ges'> <c ges'> <c ges'> <c ges'> <c ges'>]\sustainUp } \\ {aes,16-. bes-. c-. des-. ees8-4 r} >> |
    << {des32[ des' ees, des' fes, des' ges, des'] aes[ <des fes> <des fes> <des fes> <des fes> <des fes> <des fes> <des fes>] } \\ {des,16-. ees-. fes-. ges-. aes8 r} >> | % 8.2 - 159
    << {des,32[ des' ees, des' fes, des' ges, des'] aes[ <des fes> <des fes> <des fes> <des fes> <des fes> <des fes> <des fes>] } \\ {des,16-. ees-. fes-. ges-. aes8 r} >> |
    << {des,32[ des' ees, des' fes, des' ges, des'] aes[ <des fes> <des fes> <des fes> <des fes> <des fes> <des fes> <des fes>] } \\ {des,16-. ees-. fes-. ges-. aes8 r} >> | % 8.3 - 161
    << {aes,32[ ges' bes, ges' c, ges' des ges] ees[ <c' ges'> <c ges'> <c ges'> <c ges'> <c ges'> <c ges'> <c ges'>] } \\ {aes,16-. bes-. c-. des-. ees8 r} >> |
    << {des32[ des' ees, des' fes, des' ges, des'] aes[ <des fes> <des fes> <des fes> <des fes> <des fes> <des fes> <des fes>] } \\ {des,16-. ees-. fes-. ges-. aes8 r} >> | % 8.4 - 163
    << {aes,32[ aes' bes, aes' ces, aes' des, aes'] ees[ <aes ces> <aes ces> <aes ces> <aes ces> <aes ces> <aes ces> <aes ces> ] } \\ {aes,16 bes ces des ees8 r} >> |
    << {des32[ des' ees, des' fes, des' ges, des'] aes[ <des fes> <des fes> <des fes> <des fes> <des fes> <des fes> <des fes>] } \\ {des,16-. ees-. fes-. ges-. aes8 r} >> | % 8.5 - 165
    << {\once\override Fingering #'extra-offset = #'(1 . -8.5) ges32-5[ fes'-1 \once\override Fingering #'extra-offset = #'(1 . -8) aes,-4 fes' \once\override Fingering #'extra-offset = #'(1 . -7.5) bes,-3 fes' \once\override Fingering #'extra-offset = #'(1 . -7.5) ces-3 fes] des[ \once\override Fingering #'extra-offset = #'(0 . 5) <des-2 fes-1> <des fes> <des fes> <bes ges> <des fes> <des fes> <des fes>]} \\ {ges,16 aes bes ces des8-2 s} >> |
    << {\once\override Fingering #'extra-offset = #'(1 . -10) ces,32-5[ \once\override Fingering #'extra-offset = #'(0 . -7) ces'-1 \once\override Fingering #'extra-offset = #'(1 . -8.5) ges-2 \once\override Fingering #'extra-offset = #'(0 . -7) ces-1 \once\override Fingering #'extra-offset = #'(1 . -10) ces,-5 \once\override Fingering #'extra-offset = #'(0 . 4.5) <ces'-2 ees-1> <ces ees> <ces ees>] fes,[ <ces' ees> aes <ces ees> fes, <ces' ees> <ces ees> <ces ees>]} \\ {ces,16 ges' ces, r fes aes fes r} >> | % 9.1 - 167
    << {bes,32[ bes' fes bes bes, <bes' des> <bes des> <bes des>] ees,[ <bes' des> g! <bes des> ees, <bes' des> <bes des> <bes des>]} \\ {bes,16 fes' bes, r ees g ees r } >> |
    \override TextSpanner #'edge-text = #'("con 8ª adlibitum" . "") 
    \once\override TextSpanner #'extra-offset = #'(0 . 2) 
    aes,->\startTextSpan ees'-> a,-> ees'-> bes-> ees-> ces-> ees-> | % 9.2 - 169
    c!8\stopTextSpan r r4 |
    R2 |
    R2 |
    << {r4 d,8.-3\( ees32-2 f-1} \\ {bes,16 bes' bes, bes' bes,-5 bes bes bes} >> |
    << {ges'4-2 aes8-1 a-1\)} \\ {bes,16-5 bes bes bes bes bes bes bes} >> |
    << {bes'8 r d,8.-3\( ees32-2 f-1} \\ {bes,16 bes' bes, bes' bes,-5 bes bes bes} >> |
    << {ges'4-2 aes8-1 a-1\)} \\ {bes,16-5 bes bes bes bes bes bes bes} >> |
    <bes bes'>8 r r4\fermata | % 9.4 - 173
    \bar "|."
    \key ees \major
    \time 6/8
    ees'8 <g bes ees> <g bes ees> ees <g bes ees> <g bes ees> |
    ees8 <aes bes d> <aes bes d> ees <aes bes d> <aes bes d> |
    ees8 <aes bes d> <aes bes d> ees <aes bes d> <aes bes d> |
    ees8 <g bes ees> <g bes ees> ees <g bes ees> <g bes ees> | % 10.1 - 181
    ees8 <g bes ees> <g bes ees> ees <aes c ees> <aes c ees> |
    bes,8 <aes' bes d> <aes bes d> <g g,> <g bes ees> <g bes ees> |
    <f f,>8 <bes d f> <bes d f> f <a ees' f> <a ees' f> |
    bes,8 <f' bes d> <f bes d> bes, <f' bes d> <f bes d> | % 10.2 - 185
    bes,8 <f' bes d> <f bes d> bes, <ees aes c> <ees aes c> |
    bes8 <ees g bes> <ees g bes> bes <ees g bes> <ees g bes> |
    bes <f' aes> <f aes> bes, <f' aes> <f aes> |
    ees <g bes> <g bes> ees <g bes> <g bes> | % 10.3 - 189
    d8 <f g b> <f g b> d <f g b> <f g b> |
    c8 <ees g c> <ees g c> aes, <aes' c> <aes c> |
    bes,8 <ees g bes> <ees g bes> <aes f bes,> r r |
    <ees ees,> <g! bes ees> <g bes ees> <ges ges,> <ges bes ees> <ges bes ees> | % 10.4 - 193
    f8 <aes ces ees> <aes ces ees> bes, <aes' bes d> <aes bes d> |
    <ees ees,> <g! bes ees> <g bes ees> <ges ges,> <ges bes ees> <ges bes ees> |
    f8 <aes ces ees> <aes ces ees> bes, <aes' bes d> <aes bes d> |
    ces,8[ <ees ges ces>16. <ees ges ces>32 <ees ges ces>8] ces[ <ees ges ces>16. <ees ges ces>32 <ees ges ces>8] | % 10.5 - 197
    ces8[ <fes ges bes>16. <fes ges bes>32 <fes ges bes>8] ces[ <fes ges bes>16. <fes ges bes>32 <fes ges bes>8] |
    ces8[ <ees ges ces>16. <ees ges ces>32 <ees ges ces>8] ces[ <ees ges ces>16. <ees ges ces>32 <ees ges ces>8] |
    ces8[ <fes ges bes>16. <fes ges bes>32 <fes ges bes>8] ces[ <fes ges bes>16. <fes ges bes>32 <fes ges bes>8] | % 10.6 - 200
    ces8 <ees ges ces> <ees ges ces> d! <f bes d!> <f bes d> |
    ees <ges bes ees> <ges bes ees> f <aes ces des> <aes ces des> |
    ges <bes des> <bes des> <a a,>\< <f ces' ees> <f ces' ees>\! |
    \set Staff.connectArpeggios = ##t
    << {<bes>4.\arpeggio <bes>\arpeggio} \\ {<bes,>8\arpeggio r r <bes>\arpeggio r r} >> | % 11.1 - 204
    << {<bes'>4.\arpeggio <bes>\arpeggio} \\ {<bes,>8\arpeggio r r <bes>\arpeggio r r} >> |
    ees8[ <g bes ees>16. <g bes ees>32 <g bes ees>8] ees[ <g bes ees>16. <g bes ees>32 <g bes ees>8] |
    ees8[ <aes bes d>16. <aes bes d>32 <aes bes d>8] ees[ <aes bes d>16. <aes bes d>32 <aes bes d>8] |
    ees8[ <aes bes d>16. <aes bes d>32 <aes bes d>8] ees[ <aes bes d>16. <aes bes d>32 <aes bes d>8] | % 11.2 - 208
    ees8[ <g bes ees>16. <g bes ees>32 <g bes ees>8] ees[ <g bes ees>16. <g bes ees>32 <g bes ees>8] |
    ees8[ <g bes ees>16. <g bes ees>32 <g bes ees>8] ees[ <aes c ees>16. <aes c ees>32 <aes c ees>8] |
    bes,8[ <f' bes d>16. <f bes d>32 <f bes d>8] <g g,>[ <g bes ees>16. <g bes ees>32 <g bes ees>8] |
    <f f,>8[ <f bes d>16. <f bes d>32 <f bes d>8] <f f,> <f a ees'>16. <f a ees'>32 <f a ees'>8] | % 11.3 - 212
    <bes bes,>8[ <f bes d>16. <f bes d>32 <f bes d>8] <bes bes,>[ <f bes d>16. <f bes d>32 <f bes d>8] |
    bes,8[ <f' bes d>16. <f bes d>32 <f bes d>8] bes,8[ <ees aes c>16. <ees aes c>32 <ees aes c>8] |
    bes8[ <ees g bes>16. <ees g bes>32 <ees g bes>8] bes[ <ees g bes>16. <ees g bes>32 <ees g bes>8] |
    bes8[ <f' aes>16. <f aes>32 <f aes>8] bes,[ <f' aes>16. <f aes>32 <f aes>8] | % 11.4 - 216
    ees8[ <g bes>16. <g bes>32 <g bes>8] ees[ <g bes>16. <g bes>32 <g bes>8] |
    d8[ <f aes b>16. <f aes b>32 <f aes b>8] d[ <f aes b>16. <f aes b>32 <f aes b>8] |
    c8[ <ees g c>16. <ees g c>32 <ees g c>8] <f f,>8[ <f aes c>16. <f aes c>32 <f aes c>8] |
    bes,8[ <ees g bes>16. <ees g bes>32 <ees g bes>8] <aes f bes,>8 r r | % 11.5 - 220
    \set fingeringOrientations = #'(up) 
    \repeat "tremolo" 6 {<ges,-3 ees-5>32( ees')} \repeat "tremolo" 6 {<aes,-3 f-5>32( ees')} |
    \repeat "tremolo" 6 {<bes ges>32( ees)} \repeat "tremolo" 6 {<des-5 aes'-2>32( ces')} |
    << {\override Staff.NoteCollision #'merge-differently-dotted = ##t ges,4. ces} \\ {ges8 <bes des ges> <bes des ges> ces <ees ges a> <ees ges a> } >> |
    bes8 <ees g bes> <ees g bes> bes <f' aes bes> <f aes bes> | % 12.1 - 224
    \repeat "tremolo" 6 {<ges, ees>32( ees')} \repeat "tremolo" 6 {<aes, f>32( ees')} |
    \repeat "tremolo" 6 {<bes ges>32( ees)} \repeat "tremolo" 6 {<des aes'>32( ces')} |
    << {\override Staff.NoteCollision #'merge-differently-dotted = ##t ges,4. ces} \\ {ges8 <bes des ges> <bes des ges> ces <ees ges a> <ees ges a> } >> |
    bes8 <ees g bes> <ees g bes> bes <f' aes bes> <f aes bes> | % 12.2 - 228
    ees,8[ <bes' ees g>16. <bes ees g>32 <bes ees g>8] ees,[ <ces' d f aes>16. <ces d f aes>32 <ces d f aes>8] |
    ees,8[ <bes' ees g>16. <bes ees g>32 <bes ees g>8] << {aes'8-1\fermata f-2 ees-3} \\ {\set fingeringOrientations = #'(left) <f-2 bes,-5>8 r r} >> |
    d4-4^\markup{\italic "á piacere."} r8 aes'4-4 a8 |
    \bar ""
    \override TupletNumber #'transparent = ##t
    \times 2/3 {bes16-2[ f'-1 d-2]} \times 2/3 {bes16-3[ aes!-4 f-1]} d8-5 aes'4-2 g8-3\fermata | % 12.3- 231 
    << {\once \override NoteColumn #'force-hshift = #1.7 ees2.} \\ {\stemUp ees,4 r8 ees4 r8} \\ {\stemDown ees8[ bes'16. bes32 bes8] ees,[ bes'16. bes32 bes8]} >>
    <ees ees,>4 r8 r4\fermata r8 |
    \bar "|."
    \time 4/4
    \partial 4 r4 |
    r4 <ees ees,>8-.[ r16 <f f,>-.] <d d,>8-. r r4 | % 12.4 - 234
    r4 <ees ees,>8-.[ r16 <f f,>-.] <d d,>8-. r r4 |
    r4 <ces ces,>8-.[ r16 <des des,>-.] <bes bes,>8-. r r4 |
    r4 <ces ces,>8-.[ r16 <des des,>-.] <bes bes,>8-. r r4 |
    r4 <ees! ees,!>8-.[ r16 <fes fes,>-.] <ges ges,>8-. r r4 | % 12.5 - 238
    R1 |
    R1 |
    \bar "||"
    \key g \major
    << {a1( } \\ {\set doubleSlurs = ##t <dis, b>1( } >> |
    << { gis)(} \\ {<e b>)(} >> |
    << { fis!)} \\ {<dis b>)} >>  | % 12.6 - 243
    << {e4 s2.} \\ {e16-5 b'-1 g!-3 b \repeat "unfold" 6 {g16 b}} >> |
    << {g,4 s2.} \\ {g16-5 g'-1 e-2 g \repeat "unfold" 6 {e16 g} } >> |
    << {a,4 s2.} \\ {a16-5 a'-1 fis-2 a \repeat "unfold" 6 {fis16 a} } >> | % 13.1 - 246
    b,16 a' fis a fis a fis a dis, b' fis b fis b fis b |
    << {\override Staff.NoteCollision #'merge-differently-headed = ##t e,4 s fis2} \\ {e8 <g b e> <g b e> <g b e> fis <a c d> <a c d> <a c d>} >> |
    << {g2 e} \\ {g8 <b d> <b d> <b d> e, <g a cis> <g a cis> <g a cis>} >> | % 13.2 - 249
    << {d4 s fis2} \\ {d8 <fis a d> <fis a d> <fis a d> fis <a c d> <a c d> <a c d>} >> |
    << {g2 e} \\ {g8 <b d> <b d> <b d> e, <g a cis> <g a cis> <g a cis>} >> |
    << {d4 s fis2} \\ {d8 <fis a d> <fis a d> <fis a d> fis <a c d> <a c d> <a c d>} >> |
    << {g2 e} \\ {g8 <b d> <b d> <b d> e, <g a cis> <g a cis> <g a cis>} >> | % 13.3 - 253
    \repeat "unfold" 4 {d8[ <fis a d>]} |
    \repeat "unfold" 4 {d8[ <g bes d>]} |
    \repeat "unfold" 4 {d8[ <fis a d>]} | % 13.4 - 256
    \repeat "unfold" 4 {d8[ <g bes d>]} |
    d8[ <fis a d>] d <fis a d> d[ <g bes d>] d <g bes d> |
    d8[ <fis a d>] d <fis a d> d[ <g bes d>] d <g bes d> | % 13.5 - 259
    <d fis a d>4-> <g bes d>-> <d fis a d>-> <g bes d>-> |
    <d fis a d>4-> <g bes d>-> <d fis a d>-> <g bes d>-> |
    <d fis a d>8.[ <d d,>16] <d d,>8. <d d,>16 <d d,>8.[ <d d,>16] <d d,>8. <d d,>16 |
    <d d,>4 r r2 | % 13.6 - 263
    \bar "||"
    \key bes \major
    <g d bes g>4-. <g d bes g>-. <g d bes g>-.<g d bes g>-.|
    <g d bes g>-.<g d bes g>-.<g d bes g>-.<g d bes g>-.|
    <g d bes g>-.<g d bes g>-.<g d bes g>-.<g d bes g>-.|
    <g f d g,>-. <g f d g,>-. <g f d g,>-. <g f d g,>-. | % 14.1 - 263
    <c g ees c>4-. <c g ees c>-.<c g ees c>-. <c g ees c>-. |
    <ees c g f>-.  <ees c g f>-. <ees c g f>-. <ees c g f>-. |
    <d c a fis>-. <d c a fis>-. <d bes g>-. <d bes g>-. |
    <c a g ees>-. <c a g ees>-. <d bes g d>-. <c a fis d>-. |
    <g d bes g>-.<g d bes g>-.<g d bes g>-.<g d bes g>-.| % 14.2 - 268
    <g d bes g>-.<g d bes g>-.<g d bes g>-.<g d bes g>-.|
    <g d bes g>-.<g d bes g>-.<g d bes g>-.<g d bes g>-.|
    <g f d g,>-. <g f d g,>-. <g f d g,>-. <g f d g,>-. |
    <c g ees c>4-. <c g ees c>-.<c g ees c>-. <c g ees c>-. |
    <f, ees c f,>-. <f ees c f,>-. <f ees c f,>-. <f ees c f,>-. | % 14.3 - 273
    <f d bes>-. <aes f d bes>-. \set fingeringOrientations = #'(left) <g-1 ees-3>-. <c-1 ges-3 ees-5>-. |
    <d bes f>-. <d bes f>-. <ees c a f>-. <ees c a f>\fermata |
    <bes f d bes>-. <f d bes>-. <f d bes>-. <f d bes>-. |
    <f d bes>-.^\markup{\column {\line {\bold "("\note #"4" #1 \bold " = 132)"} " "}} <f d bes>-. <f d bes>-. <f d bes>-. |
    <f c a f>-. <f c a f>-. <f c a f>-. <f c a f>-. | % 14.4 - 278
    <f c a f>-. <f c a f>-. <f c a f>-. <f c a f>-. |
    <f d bes>-. <f d bes>-. <f d bes>-. <f d bes>-. |
    <f d bes>-. <f d bes>-. <f d bes>-. <f d bes>-.\fermata |
    <f c a f>-. <f c a f>-. <f c a f>-. <f c a f>-. |
    <f a c ees>-. <f a c ees>-. <f a c ees>-. <f a c ees>-. | % 14.5 - 283
    <bes f d bes>-. <bes f d bes>-. <bes f d bes>-. <bes f d bes>-. |
    <a-5 d-2 e-1>-. <a-5 cis-3 e-1>-. <fis a c ees>-. <fis a c ees>-. |
    <g c d>-. <g bes d>-. <g bes e>-. <g bes e>-. |
    <a f d a>-. <a f d a>-. <g e a,>-. <g e a,>-. | % 14.6 - 287
    <f d>4 r r2 |
    bes,8-._5 f'\(_5 \set fingeringOrientations = #'(down) <bes-2 d-1> f\) bes,-. f'\( <bes d> f\) |
    f,-. f'\( <a c> f\) f,-. f'\( <a c> f\) |
    f,-. f'\( <a c> f\) f,-. f'\( <a c> f\) | % 15.1 - 291
    <f f,>-. f-5\( <bes d> f\) <f f,>-. f\( <bes d> f\) |
    <f f,>-. f\( <bes d f> f\) <f f,> f <bes d f> r\fermata |
    <f f,> f\( <a c ees> f\) <a c ees> f\( <a c ees> f\) |
    <f f,> f <a c ees> f <a c ees> f <a c ees> f | % 15.2 - 295
    bes, <d f bes> <d f bes> <d f bes> bes <d f bes> <d f bes> <d f bes> |
    bes <f' aes bes> <f aes bes> <f aes bes> bes, <f' aes bes> <f aes bes> <f aes bes> |
    bes, <ees g bes> <ees g bes> <ees g bes> bes <ees g bes> <ees g bes> <ees g bes> |
    f, <ees' f a!> <ees f a> <ees f a> f, <ees' f a> <ees f a> <ees f a> | % 15.3 - 299
    g, <bes d g> g <bes d g> a <ees' f a> a, <ees' f a> |
    bes <d f bes> bes <d f bes> c <ees f a> c <ees f a> |
    d <f bes d> d <f bes d> d <f bes d> d <f bes d> |
    ees <g bes ees> ees <g bes ees> ees <g c> ees <g c> | % 15.4 - 303
    f <bes d f> f <bes d f> f <bes d f> f <bes d f> |
    f <bes d f> f <bes d f> f <bes d f> f <bes d f> |
    f <a c ees> f <a c ees> f <a c ees> f <a c ees> |
    <f a c ees>2\arpeggio r\fermata | % 15.5 - 307
    <bes, bes,>8[ bes16-3 b-2 c8-1 des-3] d-1 ees-3 e-2 f-1 |
    << {\set fingeringOrientations = #'(up) <bes-3 c-2 ees-1>8 <bes c ees> <bes c ees> <bes c ees> <a c ees> <a c ees> <a c ees> <a c ees> } \\ {ges2-5 f} >> |
    <bes, bes,>8[ bes16-3 b c8 des] d ees e f | % 16.1 - 310
    << {<bes c ees>8 <bes c ees> <bes c ees> <bes c ees> <a c ees> <a c ees> <a c ees> <a c ees> } \\ {ges2 f} >> |
    <bes, bes,>8->[ bes16 b c8 des] d ees e f |
    \repeat "tremolo" 4 <aes aes,>8 \repeat "tremolo" 4 <aes aes,>8 |
    <aes aes,>4 r r2 | % 16.2 - 314
    \bar "||"
    R1
    <bes ges ees>8 r r4 r2 |
    <f a c ees>8 r r4 r2 |
    <ges bes des>8-. r r4 r2 |
    <ees ges c>8-. r r4 r2 | % 16.3 -319
    <f bes des>8-. r r4 r2 |
    <f a c>8-. r r4 r2\fermata |
    R1 |
    <f a c ees>8 r r4 r2 |
    R1 |
    <f bes d>8 r r4 r2 | % 16.4 - 325
    R1^\markup{\musicglyph #"scripts.ufermata"} |
    <f a c ees>8-. r r4 r2 |
    r4 r8 c'-1\noBeam bes a r4 |
    d2-2 cis4.-3 d8-2 |
    f2-1( ees4..-2) b16-4 | % 16.5 - 330
    d2.-1( c4-2) |
    \repeat "tremolo" 4 <bes f d bes>8 \repeat "tremolo" 4 <bes f d bes>8 |
    \repeat "tremolo" 4 <bes f d bes>8 \repeat "tremolo" 4 <bes f d bes>8 |
    <bes f d bes>4 r <bes d f> r |
    <bes f d bes> r <bes d f> r |
    <bes, bes,>1\fermata | % fin
}
\score {
    \new GrandStaff <<
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
    first-page-number = 48
    print-first-page-number = ##t
    ragged-last-bottom = ##f
    %#(set-paper-size "a4")
}
