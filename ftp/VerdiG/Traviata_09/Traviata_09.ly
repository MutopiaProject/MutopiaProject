\version "2.10.33"
\header {
    title = \markup \center-align { \bigger "La Traviata" " "}
    subtitle = "Scena ed aria"
    subsubtitle = \markup {\italic "«Di Provenza il mar il suol»"}
    composer = "G. Verdi"
    arranger = "Transcripción de N. Toledo"
    piece = "Nº 9"

    %copyright = "Calcografía de la 'Nueva Biblioteca Musical Económica', 1857-1869"
    % Mutopia headers
    mutopiatitle = "La Traviata - N9 Scena ed aria"
    mutopiacomposer = "VerdiG"
    mutopiainstrument = "Piano"
    source = "Calcografía de la 'Nueva Biblioteca Musical Económica', 1857-1869"
    style = "Romantic"
    copyright = "Public Domain"
    maintainer = "Alberto Corella"
    maintainerEmail = "ppiano@telefonica.net"
 footer = "Mutopia-2008/04/21-1402"
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
    \key f \major
    \time 4/4
    \once\override TextScript #'padding = #1.5
    c4^\markup{\bold "Andante"} c8. c16 d4. ees8 |
    d4 a r8 a-1\( bes c |
    d4 \once\override DynamicLineSpanner #'padding = #2 bes8\)\pp r <g bes>-.[ <g bes>-.] <g bes>-. r | % 1.1 - 3
    <f a>8-.[ <f a>-.] <f a>-. r <ees g>-.[ <ees g>-.] <ees g>-. r |
    <d f>4 r <f a>8-.[ <f a>-.] <f a>-. r |
    <e! g>-.[ <e g>-.] <e g>-. r <d f>-.[ <d f>-.] <d f>-. r |
    \set fingeringOrientations = #'(up)
    <cis-2 e-3>4 r8 a'-2 bes[ a16 r32 a] a8.[ b16] | % 1.2 - 7
    cis8[ cis] r cis cis[ cis d e] |
    e4( a,8) r\fermata r2 |
    \bar "|."
    \time 2/2
    a,8-.-1^\markup{\column {\line {\bold "Allegro. ("\note #"2" #1 \bold " = 104)"} " "}} cis-.-2 e-.-1 g-. bes-. a-. e-. a-.-4 |
    a-.-5 g-. f-. e-. d-.-1 f-.-4 e-. d-. | % 1.3 - 11
    a-.-1 cis-. e-. g-. bes-. a-. e-. a-. |
    a-. g-. f-. e-. d-. f-. e-. d-. |
    c-.-1 e-. g-. c-. d-.-5 c-. g-. c-.-4 | % 1.4 - 14
    c-.-5 bes-. a-. g-. f-.-1 a-.-4 g-. f-. |
    c-. e-. g-. bes-. d-. c-. g-. c-. |
    d-. c-. g-. c-. c-. bes-. a-. g-. |
    f4 r r2 | % 1.5 - 18
    #(set-octavation 1)
    \repeat "tremolo" 4 {<des'' f aes>16 aes} \repeat "tremolo" 4 {<des f aes>16 aes} |
    \repeat "tremolo" 4 {<aes des f>16 f} \repeat "tremolo" 4 {<aes des f>16 f} |
    \repeat "tremolo" 4 {<aes des>16\> f} \repeat "tremolo" 4 {<aes des>16 f} |
    #(set-octavation 0)
    \repeat "tremolo" 4 {<f aes>16 des} \once\override DynamicLineSpanner #'padding = #2 \repeat "tremolo" 4 {<des f>16 aes\!} |
    \repeat "tremolo" 4 {<bes! des f>16 g} \repeat "tremolo" 4 {<bes! des f>16 g} | % 2.1 - 23
    \repeat "tremolo" 4 {<g bes des>16 fes} \repeat "tremolo" 4 {<g bes des>16 fes} |
    \repeat "tremolo" 4 {<aes c>16 ees} \repeat "tremolo" 4 {<aes c>16 ees} |
    \override TextScript #'padding = #1.5 \repeat "tremolo" 4 {<ees ges bes>16 ces_\markup{\italic "dim."}} \repeat "tremolo" 4 {<ees ges bes>16 ces} \revert TextScript #'padding |
    \once\override DynamicLineSpanner #'padding = #3  \repeat "tremolo" 4 {<f aes>16\pp des} \repeat "tremolo" 4 {<f aes>16 des} |
    \repeat "tremolo" 4 {<c ees ges>16 aes} \repeat "tremolo" 4 {<c ees ges>16 aes} | % 2.2 - 28
    \repeat "tremolo" 4 {<des f>16 aes} \repeat "tremolo" 4 {<des f>16 aes} |
    \repeat "tremolo" 4 {<bes des f>16\ppp g!} \repeat "tremolo" 4 {<bes des f>16 g} |
    << {fes'2( des4) r8. \stemDown des'16 \stemNeutral } \\ {<des, bes g>4 s2.} >> |
    des'2\( c4.. des16 |
    des1 |
    aes4\) r r \once\override DynamicLineSpanner #'padding = # 3.5 r8\p aes,16\( a | % 2.3 - 34
    bes4\) r r r8 bes16\( b |
    c4\) r r2\fermata |
    \bar "|."
    \key des \major
    \time 4/4
    \once\override TextScript #'padding = #4.5
    \set fingeringOrientations = #'(left)
    r2^\markup{\bold "Andante più tosto mosso. ("\note #"4" #1 \bold " = 60)"} r4 <f'-1 aes-2>8(\< <bes-2 des-4>)\! | % 2.4 - 37
    \acciaccatura <c-3 ees-5>8 <bes des>-.[ <aes c>-.] \acciaccatura <bes-3 des-5>8 <aes c>-.[ <ges bes>-.] <ges bes>4 <ges-1 bes-3>8( <aes c>) |
    \set fingeringOrientations = #'(up)
    \acciaccatura <bes des>8 <aes c>-.[ <ges bes>-.] \acciaccatura <aes c>8 <ges bes>-.[ <f aes>-.] <f aes>4 <des-1 f-2>8( <ges-2 bes-4>) |
    \acciaccatura <aes-3 c-5>8 <ges bes>-.[_\markup{\italic "allarg."} <f aes>-.] \acciaccatura <ges bes>8 <f aes>-.[ <ees ges>-.] <ees ges>-.[_\markup{\italic "morendo"} <e g>-.] <f aes>( <ees ges>16)\fermata r | % 2.5 - 40
    r2 r4 aes,8-1( des-3) |
    \acciaccatura ees8 des-.\( c-. c-.-3 bes-.\) bes4-> bes8(^\markup{\italic "dolcis."} c) |
    \acciaccatura des8 c-.\( bes-. bes-.-3 aes-.\) aes4 f8(-1^\markup{\italic "marc."} bes) | % 2.6 - 43
    \acciaccatura c8 bes-.\( aes-. aes-. ges-. ges4\) ees8(^\pp ges) |
    \stemUp
    ges8 <f aes f'>-.\( <f aes f'>-. <f aes f'>-.\) \stemNeutral <des f des'> r aes'( des) |
    \acciaccatura ees8 des-.\( c-. c-. bes-.\) bes4^\markup{\italic "dolce"} bes8 c | % 3.1 - 46
    \acciaccatura des8 c-.\( bes-. bes-.-3 aes-.\) aes4 f8(-1^\markup{\italic "marc."} bes) |
    \acciaccatura c8 bes-.\( aes-. aes-. ges-. ges4\) ees8(^\pp ges) |
    \stemUp
    ges8 <f aes f'>-.\( <f aes f'>-. <f aes f'>-.\) \stemNeutral <des f des'> r des-1 des | % 3.2 - 49
    des-1\( beses'-.-3 beses-. beses-.\) des4\( ces8 beses |
    aes\) <des f, des>-. <f aes, f>-. <des f, des>-. <f aes, f> r des, des |
    des\( bes'! bes_\markup{\italic "dolce"} bes\) des4\( c8 bes\) | % 3.3 - 52
    aes <des f, des>-. <f aes, f>-. <des f, des>-. <f aes, f>4 \once\override TextScript #'padding = #1 aes,8(^\markup{\italic "espress."} f') |
    << {f( ees) ees-. ees-. ees4 ees8( f)} \\ {aes,2( ges4) r} >>|
    << {ees'8( des) des-. des-. bes2} \\ {f4 r fes r} >> | % 3.4 - 55
    r8 <aes aes'>-.\( <des des'>-. <ees ees'>-.\) <f f'>2-> ~ |
    \once\override TextScript #'padding = #2
    <f f'>8_\markup{\italic "con forza"} <f aes f'>-. <ges bes ges'>-. <f aes f'>-. <des f des'>16 r << {\once\override TextScript #'extra-offset = #'(-2 . -2) aes8-3\noBeam_\markup{\italic "rall."} bes-4 \once\override Script #'script-priority = #-100 c\fermata^\markup{\finger "5 3"}} \\ {r8 <ges c,> r\fermata} >> |
    des'2 r4 <f aes>8( <bes des>) | % 3.5 - 58
    \acciaccatura <c ees>8 <bes des>-.[ <aes c>-.] \acciaccatura <bes des>8 <aes c>-.[ <ges bes>-.] <ges bes>4 <ges bes>8( <aes c>) |
    \set fingeringOrientations = #'(up)
    \acciaccatura <bes des>8 <aes c>-.[ <ges bes>-.] \acciaccatura <aes c>8 <ges bes>-.[ <f aes>-.] <f aes>4 <des f>8( <ges bes>) |
    \acciaccatura <aes c>8 <ges bes>-.[_\markup{\italic "allarg."} <f aes>-.] \acciaccatura <ges bes>8 <f aes>-.[ <ees ges>-.] <ees ges>-.[_\markup{\italic "morendo"} <e g>-.] <f aes>( <ees ges>16)\fermata r | % 3.6 - 61
    \once\override DynamicLineSpanner #'padding = #1 r2\pp r4 aes,8( des) |
    \acciaccatura ees8 des-.\( c-. c-. bes-.\) bes4-> bes8(^\markup{\italic "dolcis."} c) |
    \acciaccatura des8 c-.\( bes-. bes-. aes-.\) aes4 f8(^\markup{\italic "marc."} bes) | % 4.1 - 64
    \acciaccatura c8 bes-.\( aes-. aes-. ges-. ges4\) ees8(^\pp ges) |
    \stemUp
    ges8 <f aes f'>-.\( <f aes f'>-. <f aes f'>-.\) \stemNeutral <des f des'> r aes'( des) |
    \acciaccatura ees8 des-.\( c-. c-. bes-.\) bes4^\markup{\italic "dolce"} bes8 c | % 4.2 - 67
    \acciaccatura des8 c-.\( bes-. bes-. aes-.\) aes4 f8(^\markup{\italic "marc."} bes) |
    \acciaccatura c8 bes-.\( aes-. aes-. ges-. ges4\) ees8(^\pp ges) |
    \stemUp
    ges8 <f aes f'>-.\( <f aes f'>-. <f aes f'>-.\) \stemNeutral <des f des'> r des des | % 4.3 - 70
    des-1\( beses'-. beses-. beses-.\) des4\( ces8 beses |
    aes\) <des f, des>-. <f aes, f>-. <des f, des>-. <f aes, f> r des, des |
    des\( bes'! bes_\markup{\italic "dolce"} bes\) des4\( c8 bes\) | % 4.4 - 73
    aes <des f, des>-. <f aes, f>-. <des f, des>-. <f aes, f>4 \once\override TextScript #'padding = #1 aes,8(^\markup{\italic "espress."} f') |
    << {f( ees) ees-. ees-. ees4 ees8( f)} \\ {aes,2( ges4) r} >>|
    << {ees'8( des) des-. des-. bes2} \\ {f4 r fes r} >> | % 4.5 - 76
    r8 <aes aes'>-.\( <des des'>-. <ees ees'>-.\) <f f'>2-> ~ |
    \once\override TextScript #'padding = #2
    <f f'>8_\markup{\italic "con forza"} <f aes f'>-. <ges bes ges'>-. <f aes f'>-. <des f des'>16 r << {\once\override TextScript #'extra-offset = #'(-2 . -2) aes8\noBeam_\markup{\italic "rall."} bes c\fermata} \\ {r8 <ges c,> r\fermata} >> |
    << {des'8 s4. \acciaccatura <ges bes>8 <f aes> <e g> \set fingeringOrientations = #'(up) <ees-2 ges-4>4} \\ {des8 \set fingeringOrientations = #'(up) <des-1 f-2> <ges-3 bes-5> <f aes> r aes, ees' aes,-1} >> | % 4.6 - 79
    << {des-2 <des f>\( <ges bes> <f aes>\) \acciaccatura <ges bes>8 <f aes>[ <e g>] ges4\fermata} \\ {des8 r r4 s4 ees4} >> |
    \cadenzaOn
    ges4-4 ~ \once\override TextScript #'padding = #1 ges16^\markup{\italic "à piacere"}[ f ees f-4 des ees c-1 ees-4 bes ees-5] aes,4-2 r16 aes-2[ g aes]
    \cadenzaOff
    f'4.-5 ees8 bes4.-2 c8-1 | % 5.1 - 78
    << {des2-3^\markup{\italic "morendo"} r2} \\ {r8 \phrasingSlurUp <f aes, f>^.\( <f aes, f>^. <f aes, f>^.\) <des f, des> <f aes, f>^.\( <f aes, f>^. <f aes, f>^.\) } >> |
    <des f, des>2 r2\fermata |
    \bar "|."
    \key bes \major
    \time 3/4
    \partial 4 aes8. aes16 |
    aes2 aes8. aes16 | % 5.2 - 82
    aes2 aes8. g16 |
    <f aes c f>8-.\pp^\markup{\bold "Allegro. ("\note #"4" #1 \bold " = 138)"} r <g bes c e>-. r r4 |
    <f aes c f>8-. r <g bes c e>-. r r4 |
    <f aes c f>8-. r <g bes c e>-. r r4 | % 5.3 - 86
    <f aes c f>8 r r4 <g b d g>8->\ff r |
    \once\override DynamicLineSpanner #'padding = #1.5
    <ees g c ees>8-.\pp r <f g b d>-. r r4 | % 5.4 - 88
    <ees g c ees>8-. r <f g b d>-. r r4 |
    <ees g c ees>8-. r <f g b d>-. r r4 |
    <ees g c ees>8 r r4 <fis a d fis>8 r | % 5.5 - 91
    \once\override DynamicLineSpanner #'padding = #1
    <g bes d>-.\pp r <fis a c d>-. r r4 |
    <g bes d>8-. r <fis a c d>-. r r4 |
    <g bes d>8-. r <fis a c d>-. r r4 | % 5.6 - 94
    <g bes d>8 r r4 <a cis e a>8 r |
    \set tupletSpannerDuration = #(ly:make-moment 1 4)
    \times 2/3 {d,8[ fis a] d[-1 fis a] d-.[( d-. d-.]\)} |
    \times 2/3 {d8([ cis) cis-.] cis([ c) c-.] c([ bes) bes-.]} | % 6.1 - 97
    \times 2/3 {d,,8[ fis a] d[ fis a] d-.[( d-. d-.]\)} |
    \times 2/3 {d8([ cis) cis-.] cis([ c) c-.] c([ bes) bes-.]} |
    \times 2/3 {a8\([ <cis cis,> <d d,>\)] <d d,>\([ <cis cis,> <d d,>\)] <d d,>\([ <cis cis,> <d d,>\)]} | % 6.2 - 100
    \times 2/3 {<d d,>8\([ <cis cis,> <d d,>\)] <d d,>\([ <cis cis,> <d d,>\)] <d d,>\([ <cis cis,> <d d,>\)]} |
    <ees a, ees>2 r4\fermata |
    \bar "|."
    \time 4/4
    \once\override DynamicLineSpanner #'padding = #2
    \once\override TextScript #'padding = #1.5
    \set fingeringOrientations = #'(left)
    <c-3 ees-5>2.\pp^\markup{\bold "Assai Moderato. ("\note #"4" #1 \bold " = 96)"}\( <bes d>8 <c ees>\) |
    \noBreak
    \acciaccatura <c ees>8 <bes d>( <a c>) <a c>2 <g bes>8( <a c>) |
    \acciaccatura <a c>8 <g bes> <f a> <f a>2 <ees g>8( <f a>) % 6.3 - 105
    \set fingeringOrientations = #'(up)
    \acciaccatura <f a>8 <ees g>-.\( <d f>-. <d f>-. \once\override TextScript #'padding = #2 <d f>-.\)_\markup{\italic "allarg."} <d-3 f-5>-.\( <cis e>-. <c-1 ees-3>-. <a-1 c-2>-.\) |
    R1^\markup{\musicglyph #"scripts.ufermata"} |
    r4 r8. a16\( bes8.[ a16 bes8. g16]\) |
    f16-. g-. ees-. f-. d8-. ees-.\<\( f-. g-. a-. bes-.\)\! | % 6.4 - 109
    b8 c4 ~ c16. b32 c8.([ b16) c8.( bes16)] |
    a16 bes g a f8\( ees'\< d c g a\)\! |
    bes4 r8. a16 bes8.[ a16 bes8. g16] | % 6.5 - 112
    f16-. g-. ees-. f-. d8-. ees-.\( f-. g-. a-. bes-.\) |
    b8 c4->\( c8 c8[ <c c'> <d d'>8. <c c'>16]\) |
    \set doubleSlurs = ##t
    <c c'>4( <bes bes'>8) bes a16-. bes-. g-. a-. f-. g-. e-. a-. | % 6.6 - 115
    d,4 r8 d-1\( d'-5 d c bes\) |
    <c c'>16-. <d d'>-. <bes bes'>-. <c c'>-. <a a'>8-. d,-.\( c'-. c-. bes-. a-.\) |
    <bes bes'>16-. <c c'>-. <a a'>-. <bes bes'>-. <g g'>8-. d-.\( d'-. d-. c-. bes-.\) | % 7.1 - 118
    <c c'>16-. <d d'>-. <bes bes'>-. <c c'>-. <a a'>8-. d,-.\( c'-. c-. bes-. a-.\) |
    bes4..\fermata \stemDown a16-2_\markup{\italic "dolciss."} \acciaccatura c8-4 bes8.[\( a16 bes8. g16]\) |
    \stemNeutral
    <f f'>16-. <g g'>-. <ees ees'>-. <f f'>-. <d d'>8-. ees-.\(\< f-. g-. a-. bes-.\)\! | % 7.2 - 121
    b8 c4 <d d'>8 <f f'>4.->\fermata <ees ees'>8 |
    <d d'>16 <ees ees'> <c c'> <d d'> <bes bes'>8 f bes a g8. a16 |
    bes4 r8 <d d'>-. <c c'>-.\> <bes bes'>-. <a a'>-. <g g'>-.\! | % 7.3 - 124
    <f f'>16-. <g g'>-. <e e'>-. <g g'>-. \set doubleSlurs = ##f <f f'>8( <d' d'>) <c c'>\( <bes bes'> <a a'> <g g'>\) |
    <f f'>16-. <g g'>-. <e e'>-. <g g'>-. <f f'>8( <bes bes'>) <a a'> <g g'>4-> <c c'>8 |
    <bes bes'>8 <a a'>4-> <d d'>8\noBeam <c c'> <bes bes'>4-> <ees ees'>8 | % 7.4 - 127
    <d d'>8 <f d' f>->\f <e c' e>-> <ees c' ees>-> <d bes' d>-> <c a' c>-> <bes g' bes>-> <g bes cis g'>-> |
    <f' f'>16-> <g g'>-. <e e'>-. <g g'>-. <f f'>16-> <g g'>-. <e e'>-. <g g'>-. <f f'>16-> <g g'>-. <e e'>-. <g g'>-. <f f'>16-> <g g'>-. <e e'>-. <g g'>-. |
    \once\override TextScript #'padding = #1.5
    <f f'>8\noBeam_\markup{\italic "à piacere"} f, bes c \times 2/3 {d8[ ees d] c[ f, f']\fermata} | % 7.5 - 130
    <f d bes f>4\ff ~ <f d bes f>16 g-2 a bes bes4( a8) r |
    <f d bes f>4 ~ <f d bes f>16 g a bes bes4( a8) r | % 8.1 - 132
    d16-3\( cis d ees\) d\( cis d ees\) d\( cis d ees\) d\( cis d ees\) |
    d\( cis d ees\) d\( cis d ees\) d-3( c-2) c-3( bes-2) bes( a) a( g) | % 8.2 - 134 
    fis-2\( a-1 d-3 cis\) ees\( d cis d\) g,\( bes d cis\) ees\( d cis d\) |
    fis,\( a d cis\) ees\( d cis d\) g,\( bes d cis\) ees\( d cis d\) | % 8.3 - 136
    d16-3\( cis d ees\) d\( cis d ees\) d\( cis d ees\) d\( cis d ees\) |
    d16\( cis d ees\) d\( cis d ees\) d\( cis d ees\) d\( cis d ees\) | % 8.4 - 138
    d4 r8\fermata d,,8\( d' d c bes\) |
    <c c'>16-. <d d'>-. <bes bes'>-. <c c'>-. <a a'>8-. d,-.\( c'-. c-. bes-. a-.\) |
    <bes bes'>16-. <c c'>-. <a a'>-. <bes bes'>-. <g g'>8-. d-.\( d'-. d-. c-. bes-.\) | % 8.5 - 141
    <c c'>16-. <d d'>-. <bes bes'>-. <c c'>-. <a a'>8-. d,-.\( c'-. c-. bes-. a-.\) |
    bes4..\fermata \stemDown a16_\markup{\italic "dolciss."} \acciaccatura c8 bes8.[\( a16 bes8. g16]\) |
    \stemNeutral
    <f f'>16-. <g g'>-. <ees ees'>-. <f f'>-. <d d'>8-. ees-.\(\< f-. g-. a-. bes-.\)\! | % 9.1 - 144
    b8 c4 <d d'>8 <f f'>4.->\fermata <ees ees'>8 |
    <d d'>16 <ees ees'> <c c'> <d d'> <bes bes'>8 f bes a g8. f16 | % 9.2 - 146
    bes4 r8 <d d'>-. <c c'>-.\> <bes bes'>-. <a a'>-. <g g'>-.\! |
    <f f'>16-. <g g'>-. <e e'>-. <g g'>-. <f f'>8( <d' d'>) <c c'>\( <bes bes'> <a a'> <g g'>\) |
    <f f'>16-. <g g'>-. <e e'>-. <g g'>-. <f f'>8( <bes bes'>) <a a'> <g g'>4-> <c c'>8 | % 9.3 - 149
    <bes bes'>8 <a a'>4-> <d d'>8\noBeam <c c'> <bes bes'>4-> <ees ees'>8 | 
    <d d'>8 <f d' f>->\f <e c' e>-> <ees c' ees>-> <d bes' d>-> <c a' c>-> <bes g' bes>-> <g bes cis g'>-> | % 9.4 - 151
    <f' f'>16-> <g g'>-. <e e'>-. <g g'>-. <f f'>16-> <g g'>-. <e e'>-. <g g'>-. <f f'>16-> <g g'>-. <e e'>-. <g g'>-. <f f'>16-> <g g'>-. <e e'>-. <g g'>-. |
    \once\override TextScript #'padding = #1.5
    <f f'>8\noBeam_\markup{\italic "à piacere"} f, bes c \times 2/3 {d8[ ees d] c[ f, f']\fermata} | % 9.5 - 153
    \repeat volta 2 {
      \once\override TextScript #'padding = #2
      <bes bes,>8\<^\markup{"Poco piu vivo"} <c c,>4-> <bes bes,>8 <bes bes,> <c c,>4-> <bes bes,>8 |
      <bes bes,>8 <c c,>4-> <bes bes,>8 <bes bes,> <c c,>4-> <d d,>8\! | % 10.1 - 155
      \repeat "unfold" 4 {ees16 ees, ees' ees,} |
      ees'16 ees, ees' ees, des' des, des' des, des' des, b' b, c' c, des' des, | % 10.2 - 157
      c' c, c' c, bes' bes, bes' bes, bes' bes, a' a, bes' bes, c' c, |
      d'! d,! d' d, d' d, f f, d'' d, d' d, d' d, c' c, | % 10.3 - 159
    }
    \repeat "tremolo" 4 {<e g bes>16 des} \repeat "tremolo" 4 {<e g bes>16 des} |
    <e g bes>8 r r4 r8 e! e e |
    e4 e r2 |
    g4. g8 g4. g8 |
    g4. g8 g4. g8 | % 10.4 - 164
    f!8\f\< f,16 g a bes c d ees f g a bes c d ees |
    \repeat "tremolo" 4 {f16\!\ff f,} \repeat "tremolo" 4 {f'16 f,} |
    \repeat "tremolo" 4 {<f bes>16 d} \repeat "tremolo" 4 {<f bes>16 d} | % 10.5 - 167
    \repeat "tremolo" 4 {<f bes>16 d} \repeat "tremolo" 4 {<f bes>16 d} |
    <d f bes>4 r <d f bes d> r |
    <bes d f bes> r <d f bes d> r |
    <bes d f bes> r r r8. bes,16 |
    bes2 r4 r8. bes16 |
    bes1\fermata | % fin
    \bar "|."
}
lower = \relative c {
    \clef bass
    \key f \major
    \time 4/4
    R1 |
    <d fis a d>1 |
    r2 <g d'>8-.[ <g d'>-.] <g d'>-. r | % 1.1 - 3
    <d d'>-.[ <d d'>-.] <d d'>-. r <ees bes'!>-.[ <ees bes'>-.] <ees bes'>-. r |
    <bes' bes,>4 r <c f,>8-.[ <c f,>-.] <c f,>-. r |
    <c c,>-.[ <c c,>-.] <c c,>-. r <a d,>-.[ <a d,>-.] <a d,>-. r |
    <a a,>4 r r2 | % 1.2 - 7
    R1 |
    R1^\markup{\musicglyph #"scripts.ufermata"} |
    \bar "|."
    \time 2/2
    a,8-.-5 cis-. e-. g-.-1 bes-.-2 a-.-3 e-. a-.-1 |
    a-.-1 g-. f-. e-. d-. f-.-1 e-. d-. | % 1.3 - 11
    a-.-5 cis-. e-. g-. bes-. a-. e-. a-. |
    a-. g-. f-. e-. d-. f-. e-. d-. |
    c-.-5 e-. g-. bes-. d-.-1 c-. g-. c-.-1 | % 1.4 - 14
    c-. bes-. a-. g-. f-. a-. g-. f-. |
    c-. e-. g-. bes-. d-. c-. g-. c-. |
    d-. c-. g-. c-. c-. bes-. a-. g-. | 
    \repeat "tremolo" 8 {f,32 e} \repeat "tremolo" 8 {f32 e} | % 1.5 - 18
    \repeat "tremolo" 4 {<aes des f>16 aes'} \repeat "tremolo" 4 {<aes, des f>16 aes'} |
    \repeat "tremolo" 4 {<aes, des f>16 aes'} \repeat "tremolo" 4 {<aes, des f>16 aes'} |
    \repeat "tremolo" 4 {<aes, des f>16 aes'} \repeat "tremolo" 4 {<aes, des f>16 aes'} |
    \repeat "tremolo" 4 {<aes, des f>16 aes'} \repeat "tremolo" 4 {<aes, des f>16 aes'} |
    \repeat "tremolo" 4 {aes,,16 aes'} \repeat "tremolo" 4 {aes,16 aes'} | % 2.1 - 23
    \repeat "tremolo" 4 {aes,16 aes'} \repeat "tremolo" 4 {aes,16 aes'} |
    \repeat "tremolo" 4 {aes,16 aes'} \repeat "tremolo" 4 {aes,16 aes'} |
    \repeat "tremolo" 4 {aes,16 aes'} \repeat "tremolo" 4 {aes,16 aes'} |
    \repeat "tremolo" 4 {aes,16 aes'} \repeat "tremolo" 4 {aes,16 aes'} |
    \repeat "tremolo" 4 {aes,16 aes'} \repeat "tremolo" 4 {aes,16 aes'} | % 2.2 - 28
    \repeat "tremolo" 4 {aes,16 aes'} \repeat "tremolo" 4 {aes,16 aes'} |
    \repeat "tremolo" 4 {aes,16 aes'} \repeat "tremolo" 4 {aes,16 aes'} |
    <g g,>4 r r2 |
    R1 |
    R1 |
    r2 r4 r8 aes16\( a | % 2.3 - 34
    bes4\) r r r8 bes16\( b |
    c4\) r r2\fermata |
    \bar "|."
    \key des \major
    \time 4/4
    \override Fingering #'avoid-slur = #'inside
    des8-5\( aes'-5 \revert Fingering #'avoid-slur \set fingeringOrientations = #'(up) <des-2 f-1> aes\) <des f>\( aes <des f> aes\) | % 2.4 - 37
    aes,\( aes' <c ges'> aes\) <c ges'>\( aes <c ges'> aes\) |
    des,8\( aes' <des f> aes\) <des f>\( aes <des f> aes\) |
    aes,\( aes' <c ees> aes\) <aes c ees> r r4\fermata | % 2.5 - 40
    des,8\( aes' <des f> aes\) <des f>\( aes <des f> aes\) |
    aes,\( aes' <c ges'> aes\) <c ges'>\( aes <c ges'> aes\) |
    aes,\( aes' <des f> aes\) <des f>\( aes des aes\) | % 2.6 - 43
    aes, aes' <c ges'> aes aes, aes' c aes |
    des,\( aes' des aes\) des\( aes <des f> aes\) |
    aes,\( aes' <c ges'> aes\) <c ges'>\( aes <c ges'> aes\) | % 3.1 - 46
    aes,\( aes' <des f> aes\) <des f>\( aes des aes\) |
    aes, aes' <c ges'> aes aes, aes' c aes |
    des,\( aes' des aes\) des\( aes f aes\) | % 3.2 - 49
    des,,\( des' <ges beses> des\) des,\( des' <ges beses> des\) |
    des,\( des' <f aes> des\) <f aes>\( des <f aes> des\) |
    <ges des ges,>\arpeggio des <ges bes!> des ges, des' <ges bes> des | % 3.3 - 52
    des\( aes' des aes\) des\( aes^\f <des f> aes\) |
    <aes aes,> <aes c> <c ees> <aes c> <a a,> <c ees> <ees ges> <c ees> |
    <bes bes,> <bes des> <des f> <bes des> <g g,> <bes des> <des fes> <bes des> | % 3.4 - 55
    <aes aes,>\( aes <des f> aes\) <aes aes,>\( aes <des f> aes\) |
    <aes aes,>\noBeam \clef treble <f' aes> <ges bes>-> <f aes> <f des aes> \clef bass r <aes, aes,> r \fermata |
    des,8\( aes' <des f> aes\) <des f>\( aes <des f> aes\) | % 3.5 - 58
    aes,\( aes' <c ges'> aes\) <c ges'>\( aes <c ges'> aes\) |
    des,8\( aes' <des f> aes\) <des f>\( aes <des f> aes\) |
    aes,\( aes' <c ees> aes\) <aes c ees> r r4\fermata | % 3.6 - 61
    des,8\( aes' <des f> aes\) <des f>\( aes <des f> aes\) |
    aes,\( aes' <c ges'> aes\) <c ges'>\( aes <c ges'> aes\) |
    aes,\( aes' <des f> aes\) <des f>\( aes des aes\) | % 4.1 - 64
    aes, aes' <c ges'> aes aes, aes' c aes |
    des,\( aes' des aes\) des\( aes <des f> aes\) |
    aes,\( aes' <c ges'> aes\) <c ges'>\( aes <c ges'> aes\) | % 4.2 - 67
    aes,\( aes' <des f> aes\) <des f>\( aes des aes\) |
    aes, aes' <c ges'> aes aes, aes' c aes |
    des,\( aes' des aes\) des\( aes f aes\) | % 4.3 - 70
    des,,\( des' <ges beses> des\) des,\( des' <ges beses> des\) |
    des,\( des' <f aes> des\) <f aes>\( des <f aes> des\) |
    <ges des ges,>\arpeggio des <ges bes!> des ges, des' <ges bes> des | % 4.4 - 70
    des\( aes' des aes\) des\( aes^\f <des f> aes\) |
    <aes aes,> <aes c> <c ees> <aes c> <a a,> <c ees> <ees ges> <c ees> |
    <bes bes,> <bes des> <des f> <bes des> <g g,> <bes des> <des fes> <bes des> | % 4.5 - 73
    <aes aes,>\( aes <des f> aes\) <aes aes,>\( aes <des f> aes\) |
    <aes aes,>\noBeam \clef treble <f' aes> <ges bes>-> <f aes> <f des aes> \clef bass r <aes, aes,> r \fermata |
    des,8\( aes' <des f> aes\) aes,\( aes' <c ges'> aes\) | % 4.6 - 76
    des,8\( aes' <des f> aes\) <aes c ees>4 r\fermata |
    \cadenzaOn
    s4 s4 s4. s4 s4
    \cadenzaOff
    R1 | % 5.1 - 78
    des,8\( aes' des aes\) des,\( aes' des aes\) |
    <aes des,>2 r2\fermata |
    \bar "|."
    \key bes \major
    \time 3/4
    \partial 4 r4 |
    R2. | % 5.2 - 82
    R2. |
    \set tupletSpannerDuration = #(ly:make-moment 1 4)
    \times 2/3 {f8-.[ g-. aes-.] bes-.[ g-. e-.] c-.[ c'-. c,-.]} |
    \times 2/3 {f8-.[ g-. aes-.] bes-.[ g-. e-.] c-.[ c'-. c,-.]} |
    \times 2/3 {f8-.[ g-. aes-.] bes-.[ g-. e-.] c-.[ c'-. c,-.]} | % 5.3 - 86
    \times 2/3 {f8-.[ g-. aes-.] f-.[ g-. aes-.]} <g d b g>8 r |
    \stemDown
    \times 2/3 {c,8-.[ d-. ees-.] f-.[ d-. b-.] g-.[ g'-. g,-.]} | % 5.4 - 88
    \times 2/3 {c8-.[ d-. ees-.] f-.[ d-. b-.] g-.[ g'-. g,-.]} |
    \times 2/3 {c8-.[ d-. ees-.] f-.[ d-. b-.] g-.[ g'-. g,-.]} |
    \times 2/3 {c8-.[ d-. ees-.] c-.[ d-. ees-.]} \stemNeutral <d a d,>8 r | % 5.5 - 91
    \times 2/3 {g8-.-4[ a-. bes-.] c-.[ a-. fis-.] d-.[ d'-. d,-.]} |
    \times 2/3 {g8-.[ a-. bes-.] c-.[ a-. fis-.] d-.[ d'-. d,-.]} |
    \times 2/3 {g8-.[ a-. bes-.] c-.[ a-. fis-.] d-.[ d'-. d,-.]} | % 5.6 - 94
    \times 2/3 {g8-.[ a-. bes] g-.[ a-. bes]} <a e cis a>8 r |
    <d, d,>8 r <d fis a d> r <d fis a d> r |
    <d d,> r <d g bes d> r <d g bes d> r | % 6.1 - 97
    <d d,>8 r <d fis a d> r <d fis a d> r |
    <d d,> r <d g bes d> r <d g bes d> r |
    \times 2/3 {<d d,>8\([ <cis cis,> <d d,>\)] <d d,>\([ <cis cis,> <d d,>\)] <d d,>\([ <cis cis,> <d d,>\)]} | % 6.2 - 100
    \times 2/3 {<d d,>8\([ <cis cis,> <d d,>\)] <d d,>\([ <cis cis,> <d d,>\)] <d d,>\([ <cis cis,> <d d,>\)]} |
    <c! c,!>2 r4\fermata |
    \bar "|."
    \time 4/4
    R1 |
    R1 |
    R1 | % 6.3 - 105
    s1 |
    R1^\markup{\musicglyph #"scripts.ufermata"} |
    bes8 <f' bes d> <f bes d> <f bes d> <f bes d> <f bes d> <f bes d> <f bes d> |
    bes, <f' bes d> <f bes> <f bes> <f bes d> <f bes d> <f bes d> <f bes d> | % 6.4 - 109
    <f f,>8 <f a ees'> <f a ees'> <f a ees'> <f a ees'> <f a ees'> <f a ees'> <f a ees'> |
    <f f,>8 <f a ees'> <f a ees'> <f a ees'> <f f,>8 <f a ees'> <f a ees'> <f a ees'> |
    bes, <f' bes d> <f bes d> <f bes d> <f bes d> <f bes d> <f bes d> <f bes d> | % 6.5 - 112
    bes, <f' bes d> <f bes d> <f bes d> <f bes d> <f bes d> <f bes d> <f bes d> |
    <a a,> <fis a c d> <fis a c d> <fis a c d> <a a,> <fis a c d> <fis a c d> <fis a c d>  |
    <g g,> <g bes d> <g bes d> <g bes d> <a a,> <cis a g e> <cis a g e> r | % 6.6 - 115
    d,8 <f a d> <f a d> <f a d> <f a d> <f a d> <f a d> <f a d> |
    d <fis c' d> <fis c' d> <fis c' d> d <fis c' d> <fis c' d> <fis c' d> |
    d <g bes d> <g bes d> <g bes d> d <g bes d> <g bes d> <g bes d> | % 7.1 - 118
    d <fis c' d> <fis c' d> <fis c' d> d <fis c' d> <fis c' d> <fis c' d> |
    <g bes d g>4\fermata r r2 |
    bes,8 <f' bes d> <f bes d> <f bes d> d <f bes d> <f bes d> <f bes d> | % 7.2 - 121
    ees8 <g c ees> <g c ees> <g c ees>_\markup{\italic "col canto."} c, <g' c ees> <g c ees> <g c ees> |
    <f f,> <f bes d> <f bes d> <f bes d> <f f,> <f a ees'> <f a ees'> <f a ees'> |
    bes, <f' bes d> <bes d> <f bes d> <ees ees,> <f c' ees> <a c ees> <f c' ees> | % 7.3 - 124
    <f f,> <f bes d> <bes d> <f bes d> <ees ees,> <f c' ees> <a c ees> <f c' ees> |
    <f f,> <f bes d> <bes d> <f bes d> ees <g bes ees> e <g bes c> |
    f <a c> fis <a d> g <bes d> a <c f!> | % 7.4 - 127
    <bes d f>-. <b b,>-. <c c,>-. <f, f,>-. <g g,>-. <d d,>-. <ees ees,>-. <e e,>-. |
    << {d'8[ cis] d cis d[ cis] d cis} \\ {<bes f>8 <bes f>4 <bes f> <bes f> <bes f>8} >> |
    <bes f>8 r r4 <f bes d>8 r <f a c> r\fermata | % 7.5 - 130
    <d bes>16 f <d bes> f <d bes> f <d bes> f <ees c> f <ees c> f <ees c> f <ees c> f |
    <d bes>16 f <d bes> f <d bes> f <d bes> f <ees c> f <ees c> f <ees c> f <ees c> f | % 8.1 - 132
    <bes d> f' <bes, d> f' <bes, d> f' <bes, d> f' <a, c d> fis' <a, c d> fis' <a, c d> fis' <a, c d> fis' |
    <bes, g> d <bes g> d <a f> d <a f> d <g, ees> d' <g, ees> d' <g, ees> c <g ees> c | % 8.2 -134
    \repeat "tremolo" 4 {<a fis d>16 d} \repeat "tremolo" 4 {<bes g d>16 d} |
    \repeat "tremolo" 4 {<a fis d>16 d} \repeat "tremolo" 4 {<bes g d>16 d} | % 8.3 - 136
    <d a fis d>4 <d bes g> <d a fis d> <d bes g> |
    <d a fis d> <d bes g> <d a fis d> <d bes g> | % 8.4 - 138
    <d a fis d> r8\fermata r r2 |
    d,8 <fis c' d> <fis c' d> <fis c' d> d <fis c' d> <fis c' d> <fis c' d> |
    d <g bes d> <g bes d> <g bes d> d <g bes d> <g bes d> <g bes d> | % 8.5 - 141
    d <fis c' d> <fis c' d> <fis c' d> d <fis c' d> <fis c' d> <fis c' d> |
    <g bes d g>4\fermata r r2 |
    bes,8 <d f bes> <d f bes> <d f bes> <d f bes> <d f bes> <d f bes> <d f bes>  | % 9.1 - 144
    ees8 <g c ees> <g c ees> <g c ees>_\markup{\italic "col canto."} c, <g' c ees> <g c ees> <g c ees> |
    <f f,> <f bes d> <f bes d> <f bes d> <f f,> <f a ees'> <f a ees'> <f a ees'> | % 9.2 - 146
    bes, <f' bes d> <bes d> <f bes d> <ees ees,> <f c' ees> <a c ees> <f c' ees> | 
    <f f,> <f bes d> <bes d> <f bes d> <ees ees,> <f c' ees> <a c ees> <f c' ees> |
    <f f,> <f bes d> <bes d> <f bes d> ees <g bes ees> e <g bes c> | % 9.3 - 149
    f <a c> fis <a d> g <bes d> a <c f!> | 
    <bes d f>-. <b b,>-. <c c,>-. <f, f,>-. <g g,>-. <d d,>-. <ees ees,>-. <e e,>-. | % 9.4 - 151
    << {d'8[ cis] d cis d[ cis] d cis} \\ {<bes f>8 <bes f>4 <bes f> <bes f> <bes f>8} >> |
    <bes f>8 r r4 <f bes d>8 r <f a c> r\fermata | % 9.5 - 153
    \repeat volta 2 {
      <bes d f>8 <bes d f> <bes d f> <bes d f> <aes d f> <aes d f> <aes d f> <aes d f> |
      <g ees'> <g ees'> <ges ees'> <ges ees'> <f aes d> <f aes d> <aes d, f> <aes d, f> | % 10.1 - 155
      \once\override DynamicLineSpanner #'padding = #3
      <g ees>^\ff <bes g ees> <bes g ees> <bes g ees> <aes ges ees aes,> <aes ges ees aes,> <aes ges ees aes,> <aes ges ees aes,> |
      <aes f des> <aes f des> <aes f des> <aes f des> <f a c f> <f a c f> <f a c f> <f a c f> | % 10.2 - 157
      <ges bes des> <ges bes des> <ges bes des> <ges bes des> <g bes c e> <g bes c e> <g bes c e> <g bes c e> |
      \repeat "tremolo" 4 {<f bes d>16 f'} \repeat "tremolo" 4 {<f, a c>16 f'} | % 10.3 - 159
    }
    <e des bes g>4 <g,, g,>8 <bes bes,> <des des,> <e e,> <g g,> <bes bes,> |
    <des des,>8 \clef treble <g bes des>16\pp e' <g, bes des> e' <g, bes des> e' \repeat "tremolo" 4 {<g, bes des> e'} |
    \repeat "tremolo" 4 {<g, bes des> e'} \repeat "tremolo" 4 {<g, bes des> e'} |
    \repeat "tremolo" 4 {<e, g bes> des'} \repeat "tremolo" 4 {<e, g bes> des'} | 
    \repeat "tremolo" 4 {<e, g bes> des'} \repeat "tremolo" 4 {<e, g bes> des'} | % 10.4 - 164
    <d! bes f>8 r r4 r2 |
    \clef bass
    <f,, c a f>8 <f c a f> <f c a f> <f c a f> <f c a f> <f c a f> <f c a f> <f c a f> |
    <bes, bes,> <bes' bes,> <a a,> <g g,> <f f,> <ees ees,> <d d,> <c c,> | % 10.5 - 167
    <bes bes,> <bes' bes,> <a a,> <g g,> <f f,> <ees ees,> <d d,> <c c,> |
    <bes bes,>4 r <bes bes'> r |
    <bes bes,> r <bes bes'> r |
    <bes bes,> r r r8. <bes bes,>16 |
    <bes bes,>2 r4 r8. <bes bes,>16 |
    <bes bes,>1\fermata | % fin
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
    first-page-number = 70
    print-first-page-number = ##t
    ragged-last-bottom = ##f
    %#(set-paper-size "a4")
}
