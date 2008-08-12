\version "2.10.33"
\header {
    title = \markup \center-align { \bigger "La Traviata" " "}
    subtitle = "Seguito del Finale II"
    subsubtitle = \markup {\italic "«Alfredo!... Voi!...»"}
    composer = "G. Verdi"
    arranger = "Transcripción de N. Toledo"
    piece = "Nº 13"

    %copyright = "Calcografía de la 'Nueva Biblioteca Musical Económica', 1857-1869"
    % Mutopia headers
    mutopiatitle = "La Traviata - N13 Seguito del Finale II"
    mutopiacomposer = "VerdiG"
    mutopiainstrument = "Piano"
    source = "Calcografía de la 'Nueva Biblioteca Musical Económica', 1857-1869"
    style = "Romantic"
    copyright = "Public Domain"
    maintainer = "Alberto Corella"
    maintainerEmail = "ppiano@telefonica.net"
 footer = "Mutopia-2008/08/12-1514"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}


upper = \relative c'' {
    \clef treble
    \key c \major
    \time 4/4
    \once\override TextScript #'padding = #4 \once\override DynamicLineSpanner #'padding = #1.5 \repeat "tremolo" 4 {g'16\f(^\markup{\line {\bold "Allegro. ("\note #"4" #1 \bold " = 138)"}} fis)} g-3 \override Fingering #'avoid-slur = #'inside fis-2\( g-1 a b c-1 d e |
    f!8\) r \set fingeringOrientations = #'(up) \acciaccatura {<cis,-2 e-4>8} <d-3 f-5>8 r g,4 r |
    <e' c g> \acciaccatura {<dis b>8} <c e> r g,4 r | % 1.1 - 3
    d'' \acciaccatura {<cis ais>8} <d b> r g,4 r8 e' |
    <c g e c>4 r8 \once\override DynamicLineSpanner #'padding = #1.5 c-2\pp b!-.-1[ g'-.] bes,-.-2 g'-. |
    \acciaccatura {bes,8} aes16 g aes bes aes8-. f'-. g,-.[ e'-.] f,-. d'-. |
    c4 r8 c-. b!-.[ g'-.] bes,-. g'-. | % 1.2 - 7
    \acciaccatura {bes,8} aes16 g aes bes aes8-. f'-. g,-.[ e'-.] f,-. d'-. |
    c4 r8 c-. b!-.[ g'-.] bes,-. g'-. |
    \acciaccatura {bes,8} aes16 g aes bes aes8-. f'-. g,-.[ e'-.] f,-. d'-. |
    c-.-2 e-. g,-.-1[ g'-.] c,-. e-. g,-.[ g'-.] | % 1.3 - 11
    c,-. e-. g,-.[ g'-.] c,-. e-. g,-.[ g'-.] |
    c,4.-2 c8 c4. c8 |
    c4 r8 \override Fingering #'avoid-slur = #'outside c16-1( d) e8-. e16-1( f) g8-. g16-1( a) |
    \once\override DynamicLineSpanner #'padding = #1.5
    bes-3\(\< a! bes a\) bes8 c,16( d) e8-. e16( f) g8-. g16( aes) | % 1.4 - 15
    \repeat "tremolo" 4 {bes16\!\ff bes,} \repeat "tremolo" 4 {bes'16 bes,} |
    bes'8-.-5 bes16-2( c) des8-. g,16( aes) bes8-. e,!16( f) g8-. bes,16( c) |
    des8-. g,16( aes) bes8-. e,!16( f) g8-. bes,16( c) des8-. g,16( aes) |
    bes4 r b r |
    c r r2\fermata | % 1.5 - 20
    \bar "||"
    \pageBreak
    \key aes \major
    \time 6/8
    \grace {s8} s2.^\markup{\line {\bold "Allegro agitato. ("\note #"4" #1 \bold " = 88)"}} |
    s2. |
    s2. |
    s2. | % 2.1 - 24
    s2. |
    s2. |
    s2. |
    s2. | % 2.2 - 28
    s2. |
    s2. |
    s2. |
    s2. | % 2.3 - 32
    s2. |
    s2. |
    s2. |
    s2. | % 2.4 - 36
    s4 r8 \acciaccatura {<c-1 e-3>8} <des-2 f-4>4 r8 |
    s2. |
    s2. |
    s2. | % 2.5 - 40
    s4 r8 \acciaccatura {<c e>8} <des f>4 r8 |
    s2. |
    s2. |
    <c bes e,>2. | % 2.6 - 44
    s2. |
    s2. |
    s2. |
    s2. | % 3.1 - 48
    s2. |
    s2. |
    s2. |
    << {\override Staff.NoteCollision #'merge-differently-dotted = ##t  c'4.-5 des-5} \\ {\stemUp \acciaccatura {aes,8} \stemDown c'8 c,^. c^. des' des,^. des^.} >> | % 3.2 - 52
    << {ees'4. e} \\ {ees8 ees,^. ees^. e' e,^. e^.} >> |
    << {f'4. g} \\ {f8 f,^. f^. g' g,^. g^.} >> |
    << {f'4. ees} \\ {f8 f,^. f^. ees' ees,^. ees^.} >> |
    << {ees'4. des} \\ {ees8 ees,^. ees^. des' des,^. des^.} >>  | % 3.3 - 56
    << {c'4. c8-5-._( bes-4-. aes-3-.)} \\ {c8 c,^. c^.^\pp r c-1 c-1} >> |
    << {c'4.-5^\markup{\italic "morendo"} c} \\ {c8 c,^. c^. c' c,^. c^.} >> |
    f4 r8 r4 r8 |
    \acciaccatura {<c' e>8} <des f>4 r8 \acciaccatura {<d f>8} <ees ges>4 r8 | % 3.4 - 60
    <f aes>16-. <ges bes>-. <f aes>-. <ges bes>-. <f aes>-. <ges bes>-. <f aes>4 r8 |
    \acciaccatura {<b, d>8} <c ees>4 r8 \acciaccatura {<c e>8} <des! f>4 r8 |
    <ees ges>16-. <f aes>-. <ees ges>-. <f aes>-. <ees ges>-. <f aes>-. <ees ges>4 r8 |
    \acciaccatura {<c e>8} <des f>4 r8 \acciaccatura {<d f>8} <ees ges>4 r8 | % 3.5 - 64
    <f aes>16-. <ges bes>-. <f aes>-. <ges bes>-. <f aes>-. <ges bes>-. <f aes>4 r8 |
    <c-1 ees-2>8-. <des-1 f-3>-. <ees ges> <f aes>4->( <ees ges>8) |
    <des f> <des f>16 <ees ges> <des f> <ees ges> <des f>4 r8 | % 3.6 - 67
    \acciaccatura {<c e>8} <des f>4 r8 \acciaccatura {<d f>8} <ees ges>4 r8 |
    <f aes>16-. <ges bes>-. <f aes>-. <ges bes>-. <f aes>-. <ges bes>-. <f aes>4 r8 |
    \acciaccatura {<b, d>8} <c ees>4 r8 \acciaccatura {<c e>8} <des! f>4 r8 |
    <ees ges>16-. <f aes>-. <ees ges>-. <f aes>-. <ees ges>-. <f aes>-. <ees ges>4 r8 |
    \acciaccatura {<c e>8} <des f>4 r8 \acciaccatura {<d f>8} <ees ges>4 r8 | % 4.1 - 72
    <f aes>16-. <ges bes>-. <f aes>-. <ges bes>-. <f aes>-. <ges bes>-. <f aes>4 r8 |
    <c ees>8-. <des f>-. <ees ges> <f aes>4->( <ees ges>8) |
    <des f> <des f>16 <ees ges> <des f> <ees ges> <des f>4 r8 |
    \acciaccatura {<f a>8} <ges bes>4 r8 \acciaccatura {<a c>8} <bes des>4 r8 | % 4.2 - 76
    <f aes>16-. <ges bes>-. <f aes>-. <ges bes>-. <f aes>-. <ges bes>-. <f aes>4 r8 |
    \acciaccatura {<d f>8 } <ees ges>4 r8 \acciaccatura {g8} <aes c,>4 r8 |
    <des, f>16-. <ees ges>-. <des f>-. <ees ges>-. <des f>-. <ees ges>-. <des f>4 r8 |
    \acciaccatura {<f a>8} <ges bes>4 r8 \acciaccatura {<a c>8} <bes des>4 r8 | % 4.3 - 80
    <f aes>16-. <ges bes>-. <f aes>-. <ges bes>-. <f aes>-. <ges bes>-. <f aes>4 r8 |
    \acciaccatura {<d f>8 } <ees ges>4 r8 \acciaccatura {g8} <aes c,>4 r8 |
    <des, f>16-. <ees ges>-. <des f>-. <ees ges>-. <des f>-. <ees ges>-. <des f>4 r8 |
    \acciaccatura {<c e>8} <des f>4 r8 \acciaccatura {<fis, a>8} <g bes>4 r8 | % 4.4 - 84
    <c ees>16-. <des f>-. <c ees>-. <des f>-. <c ees>-. <des f>-. <c ees>4 r8 |
    \acciaccatura {<a c>8} <bes des>4 r8 \acciaccatura {<dis, fis>8} <e g>4 r8 |
    <aes c>16-. <bes des>-. <aes c>-. <bes des>-. <aes c>-. <bes des>-. <aes c>4 r8 |
    \acciaccatura {<e-1 g-3>8} <f aes>4 r8 \acciaccatura {a8-3} <f-1 bes-4>4 r8 | % 4.5 - 88
    <e c'>16-. <f des'>-. <e c'>-. <f des'> <e c'>-. <f des'> <e c'>4 r8 |
    \acciaccatura {<e g>8 } <f aes>4 r8 \acciaccatura {a8} <f bes>4 r8 |
    <e c'>16-. <f des'>-. <e c'>-. <f des'> <e c'>-. <f des'> <e c'>4 r8 |
    \acciaccatura {<fis a>8} <g bes>4 r8 \acciaccatura {fis'8-4} <g-5 bes,-1>4 r8 | % 4.6 - 92
    <fis-4 a,-1>16-. <g bes,>-. <fis a,>-. <g bes,>-. <fis a,>-. <g bes,>-. <fis a,>4 r8 |
    \acciaccatura {<e, g>8 } <f aes>4 r8 \acciaccatura {e'8} <f aes,>4 r8 |
    <e g,>16-.\> <f aes,>-. <e g,>-. <f aes,>-. <e g,>-. <f aes,>-. <e g,>4\! r8 |
    \acciaccatura {<fis, a>8} <g bes>4 r8 \acciaccatura {fis'8} <g bes,>4 r8 | % 5.1 - 96
    <fis a,>16-. <g bes,>-. <fis a,>-. <g bes,>-. <fis a,>-. <g bes,>-. <fis a,>4 r8 |
    \acciaccatura {<e, g>8 } <f aes>4 r8 \acciaccatura {e'8} <f aes,>4 r8 |
    <e g,>16-. <f aes,>-. <e g,>-. <f aes,>-. <e g,>8-. <ees g,>16-. <f aes,>-. <ees g,>-. <f aes,>-. <ees g,>8-. |
    <d fis,>16-. <ees g,>-. <d fis,>-. <ees g,>-. <d fis,>8-. \once\override TextScript #'padding = #2 <des f,>16-._\markup{\italic "dim."} <ees g,>-. <des f,>-. <ees g,>-. <des f,>8-. | % 5.2 - 100
    <c e,>16-. <des f,>-. <c e,>-. <des f,>-. <c e,>8-. <bes g>16-. <c aes>-. <bes g>-. <c aes>-. <bes g>8-. |
    <aes f>16-. <bes g>-. <aes f>-. <bes g>-. <aes f>8-. <g e>16-. <aes f>-. <g e>-. <aes f>-. <g e>8-. |
    << {c4.-5 des} \\ {\stemUp \acciaccatura {f,8-2} \stemDown c'\< c, c des' des, des } >> |
    << {ees'4. e} \\ {ees8 ees, ees e' e, e} >> | % 5.3 - 104
    << {f'4. g} \\ {f8 f, f g' g, g\!} >> |
    << {f'4. ees} \\ {f8\> f, f ees' ees, ees} >> |
    << {ees'4. des} \\ {ees8 ees, ees des' des, des} >> |
    << {c'4. c8-.\( bes-. aes-.\)} \\ {c8 c, c r\!\pp c c} >> | % 5.4 - 108
    << {c'4. c} \\ {\once\override TextScript #'padding = #1.5 c8_\markup{\italic "morendo."} c, c c' c, c} >> |
    \acciaccatura {<g' bes>8} <f aes>4 r8 \acciaccatura {<aes c>8} <g bes>4 r8 |
    <aes c>16-. <bes des>-. <aes c>-. <bes des>-. <aes c>-. <bes des>-. <aes c>4 r8 |
    \acciaccatura {<f aes>8} <e g>4 r8 \acciaccatura {<g bes>8} <f aes>4 r8 | %  5.5 - 112
    <g bes>16-. <aes c>-. <g bes>-. <aes c>-. <g bes>-. <aes c>-. <g bes>4 r8 |
    \acciaccatura {<g bes>8} <f aes>4 r8 \acciaccatura {<aes c>8} <g bes>4 r8 |
    <aes c>16-. <bes des>-. <aes c>-. <bes des>-. <aes c>-. <bes des>-. <aes c>4 r8 | % 5.6 - 115
    <e g>8-. <f aes>-. <g bes>-. <aes c>4->(_\( <g bes>8)\) |
    <f aes>8-. <f aes>16_. <g bes>-. <f aes>-. <g bes>-. <f aes>4 r8 |
    \acciaccatura {<bes des>8} <aes c>4 r8 \acciaccatura {<c ees>8} <bes des>4 r8 |
    <c ees>16-. <des f>-. <c ees>-. <des f>-. <c ees>-. <des f>-. <c ees>4 r8 | % 6.1 - 119 
    \acciaccatura {<aes c>8} <g bes>4 r8 \acciaccatura {<bes des>8} <aes c>4 r8 |
    <bes des>16-. <c ees>-. <bes des>-. <c ees>-. <bes des>-. <c ees>-. <bes des>4 r8 |
    \acciaccatura {<bes des>8} <aes c>4 r8 \acciaccatura {<c ees>8} <bes des>4 r8 | % 6.2 - 122
    <c ees>16-. <des f>-. <c ees>-. <des f>-. <c ees>-. <des f>-. <c ees>4 r8 |
    <g bes>8-. <aes c>-. <bes des>-. <c ees>4->( <bes des>8) |
    <aes c>8-. <aes c>16-. <bes des>-. <aes c>-. <bes des>-. <aes c>4 r8 |
    \acciaccatura {<c e>8} <des f>4 r8 \acciaccatura {<fis, a>8} <g bes>4 r8 | % 6.3 - 126
    <c ees>16-. <des f>-. <c ees>-. <des f>-. <c ees>-. <des f>-. <c ees>4 r8 |
    \acciaccatura {<a c>8} <bes des>4 r8 \acciaccatura {<dis, fis>8} <e g>4 r8 |
    <aes c>16-. <bes des>-. <aes c>-. <bes des>-. <aes c>-. <bes des>-. <aes c>4 r8 | % 6.4 - 129
    \acciaccatura {<e g>8} <f aes>4 r8 \acciaccatura {a8} <f bes>4 r8 |
    <e c'>16-. <f des'>-. <e c'>-. <f des'>-. <e c'>-. <f des'>-. <e c'>4 r8 |
    \acciaccatura {<e g>8} <f aes>4 r8 \acciaccatura {a8} <f bes>4 r8 | % 6.5 - 132
    <e c'>16-. <f des'>-. <e c'>-. <f des'>-. <e c'>-. <f des'>-. <e c'>4 r8 |
    \acciaccatura {<fis a>8} <g bes>4 r8 \acciaccatura {fis'8} <g bes,>4 r8 |
    <fis a,>16-.\> <g bes,>-. <fis a,>-. <g bes,>-. <fis a,>-. <g bes,>-. <fis a,>4\! r8 | % 6.6 - 135
    \acciaccatura {<e, g>8}  <f aes>4 r8 \acciaccatura {e'8} <f aes,>4 r8 |
    <e g,>16-. <f aes,>-. <e g,>-. <f aes,>-. <e g,>8-. <ees g,>16-. <f aes,>-. <ees g,>-. <f aes,>-. <ees g,>8-. |
    <d fis,>16-. <ees! g,>-. <d fis,>-. <ees g,>-. <d fis,>8-. <des f,>16-. <ees g,>-. <des f,>-. <ees g,>-. <des f,>8-. | % 7.1 - 138
    \once\override DynamicLineSpanner #'padding = #1 <c e,>16-.\p <des f,>-. <c e,>-. <des f,>-. <c e,>8-. <g bes>16-. <aes c>-. <g bes>-. <aes c>-. <g bes>8-. |
    <f aes>16-. <g bes>-. <f aes>-. <g bes>-. <f aes>8-. <e g>16-. <f aes>-. <e g>-. <f aes>-. <e g>8-. |
    << {c'4.\( des} \\ {\stemUp \acciaccatura {f,8} \stemDown c'\< c, c des' des, des } >> | 
    << {ees'4. e} \\ {ees8 ees, ees e' e, e} >> | % 7.2 - 142
    << {f'4. g} \\ {f8 f, f\! g'\> g, g} >> |
    << {f'4. ees4 ees8} \\ {f8 f,^\markup{\italic "dim."} f ees' ees, <ees ees'>} >> |
    << {ees'4. des} \\ {ees8 ees, ees des' des, des\!} >> |
    << {c'4.\) c8-.\( bes-. aes-.\)} \\ {c8 c, c r\pp c c} >> |
    << {c'4. c} \\ {c8 c, c c' c, c} >> | % 7.3 - 147
    \acciaccatura {g'8} \once\override DynamicLineSpanner #'padding = #2.5 <f aes>4\ppp r8 \acciaccatura {<aes c>8} <g bes>4 r8 |
    <aes c>16-. <bes des>-. <aes c>-. <bes des>-. <aes c>-. <bes des>-. <aes c>4 r8 |
    \acciaccatura {<f aes>8} <e g>4 r8 \acciaccatura {<g bes>8} <f aes>4 r8 |
    <g bes>16-. <aes c>-. <g bes>-. <aes c>-. <g bes>-. <aes c>-. <g bes>4 r8 |
    \acciaccatura {<g bes>8} <f aes>4 r8 \acciaccatura {<aes c>8} <g bes>4 r8 | % 7.4 - 152
    <aes c>16-. <bes des>-. <aes c>-. <bes des>-. <aes c>-. <bes des>-. <aes c>4 r8 |
    <e g>8-. <f aes>-. <g bes>-. <aes c>4->( <g bes>8) |
    <f aes>8-. <f aes>16-. <g bes>-. <f aes>-. <g bes>-. <f aes>4 r8 |
    \acciaccatura {<a, c>8} <bes des>4 r8 \acciaccatura {<c e>8} <des f>4 r8 |
    <aes c>16-. <bes des>-. <aes c>-. <bes des>-. <aes c>-. <bes des>-. <aes c>4 r8 | % 7.5 - 157
    s2. |
    s2. |
    \acciaccatura {<a c>8} <bes des>4 r8 \acciaccatura {<c e>8} <des f>4 r8 |
    <aes c>16-. <bes des>-. <aes c>-. <bes des>-. <aes c>-. <bes des>-. <aes c>4 r8 | % 8.1 - 161
    s2. |
    s2. |
    \once\override DynamicLineSpanner #'padding = #2 <e' g>8\ppp <f aes> <g bes> <aes c>4->( <g bes>8) |
    <f aes>4 r8 r4 r8 | % 8.2 - 165
    s2.*5 | % 8.3 - 170
    s2.*3 |
    \bar "||"
    \key des \major
    \time 4/4
    f16^\markup{\line {\bold "Allegro agitato assai vivo. ("\note #"2" #1 \bold " = 92)"}}\pp\( ees des ees\) f\( ees des ees\) f\( ees des ees\) f\( ees des ees\) | % 8.4 - 174
    \noBreak
    f\( ees des ees\) f\( ees des ees\) f\( ees des c\) des\( ees f ges\) |
    \once\override TextScript #'padding = #2 aes\(-3_\markup{\italic "cres."} ges f ees\)-2 f\(-1 ges aes bes\) c\(-5 bes aes g\) aes\( bes c-1 des-3\) | % 8.5 - 176
    \once\override DynamicLineSpanner #'padding = #1.5 ees-4\(\< des c b ees des ees f-1\) ges-4\( f ees d-º ees-2 f-1 ges aes\) |
    bes-4\( aes ges f ges aes bes c\) des\( c bes a bes c des ees\)\! | % 8.6 - 178
    #(set-octavation 1)
    \once\override DynamicLineSpanner #'padding = #1.5 \repeat "tremolo" 4 {<fes des>16\ff g,16} \repeat "tremolo" 4 {<fes' des>16 g,} |
    \repeat "tremolo" 4 {<fes' des>16 g,} \repeat "tremolo" 4 {<fes' des>16 g,} |
    <des' fes>8\noBeam #(set-octavation 0) \once\override DynamicLineSpanner #'padding = #2.5 <des des,>8-.\pp <des des,>-. <des des,>-. <des des,>-. <des des,>-. <des des,>-. <des des,>-. | % 9.1 - 181
    <des des,>-. <des des,>-. <des des,>-. <des des,>-. <des des,>-. <des des,>-. <des des,>-. <des des,>-. |
    <des des,>-. <des des,>-. <des des,>-. <des des,>-. <des des,>-. <des des,>-. <des des,>-. <des des,>-. |
    <des des,>-. <des des,>-. <des des,>-. <des des,>-. <des des,>-. <des des,>-. <des des,>-. <des des,>-. | % 9.2 - 184
    <des des,>-. <des des,>-. <des des,>-. <des des,>-. <des des,>-. <des des,>-. <des des,>-. <des des,>-. |
    <des des,>-. <des des,>-. <des des,>-. <des des,>-. <des des,>-. <des des,>-. <des des,>-. <des des,>-. |
    aes,2 r | % 9.3 - 187
    r4 r8 aes^\markup{\italic "à piacere"} aes4. aes8 |
    aes4. aes8 aes4. aes8 |
    aes4. aes8 aes4. aes8 |
    \once\override DynamicLineSpanner #'padding = #1 \repeat "tremolo" 4 {<c ees aes>16\ff^\markup{\italic "a tempo."} aes16} \repeat "tremolo" 4 {<c ees aes>16 aes16} | % 9.4 - 191
    \repeat "tremolo" 4 {<c ees aes>16 aes16} \repeat "tremolo" 4 {<c ees aes>16 aes16} |
    \override Fingering #'avoid-slur = #'inside ees'16-2\( g bes aes-3 g f ees-3 des\) c\( ees g f ees des c-1 bes-3\) | % 9.5 - 193
    aes-2\( c-1 ees-3 des c bes-4 aes g\) aes\( bes ges aes f-1 ges ees f\) |
    des8-2 r r4 r2 | % 9.6 - 195
    r2 r4 f8. ges16 |
    \repeat "volta" 2 {
        g8 aes r4 r bes8.-2 c16 |
        c8 des r4 r ees8.-2 f16 |
        ges4. ges8 f4. f8 | % 10.1 - 199
    }
    \alternative {
        {f4 ees8 r r4 f,8. ges16 } 
        {f'8 ees r4 r ees8. ees16 } 
    }
    ees4. ees8 f4. ees8 |
    ees4 des8 des c4 r8 c | % 10.2 - 202
    c8 bes r bes bes4. c8 |
    bes4 aes r aes8. aes16 |
    bes4.( aes8) bes4.( aes8) |
    aes4 ees r ees'8. ees16 | % 10.3 - 206
    ees4. ees8 ees4. ees8 |
    ees aes, r4 r aes8.-2 aes16 |
    \repeat "volta" 2 {
        bes4.-3 c8 des4. ees8 |
        f4->-4 f-> f-> f-> |
        f4.( es8) des4.( ees8) | % 10.4 - 211
    }
    \alternative {
        {f2(des4) aes8. aes16}
        {f'4 des r des8.-4 des16}
    }
    ces4.-3 ces8 bes4. bes8-2 |
    bes-3 aes r4 fes'4.-4 fes8 | % 10.5 - 214
    ees4. ees8 des4. des8 |
    des4 ces r ces8. ces16 |
    ces4\( bes ces des\) |
    \override Fingering #'avoid-slur = #'outside
    fes-4\( ees des ces\) | % 10.6 - 219
    ces4.( bes8) des4.( ces8) |
    bes aes r4 r ees'8. ees16 |
    fes8 ees r4 r ees8. des16 |
    des8 ces r4 r ees8. ees16 | % 11.1 - 223
    fes8 ees r4 r8 ees ees ees |
    fes ees r4 r ees8.-2 fes16 |
    ges4-.\( ges-. ges-. ges-.\) |
    ges-3\( f fes ees\) | % 11.2 - 227
    ees\( des c des\) |
    fes\( ees des ces\) |
    \override Fingering #'avoid-slur = #'inside
    ces-1\( bes-4 aes ges\) |
    \override Fingering #'avoid-slur = #'outside
    aes ges8 r16 fes'-5 ees4.->( des8-3) | % 11.3 - 231
    des4-4 ces bes r8 aes |
    aes g r4 r8 g-3 fis g-1 |
    bes aes r4 r g8-1 aes |
    ces4 bes r a8-1 bes |
    des!4 ces r bes8 ces | % 11.4 - 236
    ees4 des r ces8-1 des |
    fes( ees) <aes aes,>2->\( ges!8 fes!\) |
    fes4.->( ees8) ees4.->( des8) |
    des!4.->( ces8) ces4.->( bes!8) |
    \bar "|."
    \key c \major
    a!8 gis r gis gis4 r | % 11.5 - 241
    a8 gis r4 r gis8. gis16 |
    b8 a r4 r a8.-1 a16 |
    b4. b8 b4. b8 |
    d c r4 r c8. c16 |
    \once\override TextScript #'padding = #2
    d4_\markup{\italic "cres."} r r2 | % 11.6 - 246
    e4 r r e8. e16 |
    << {a1->-5} \\ {<dis, c a>4\f \once\override TextScript #'padding = #1.5 b\rest\p b2\rest} >> |
    a4 r r r8 a |
    c4 r r2 |
    gis4-2(\< f8) <gis e'>16 e <gis e'>4 r8 <gis e'>16 e | % 12.1 - 251
    <gis e'>4 r8 <gis e'>16 e <gis e'>4 r8 <gis e'>16 e\! |
    \repeat "tremolo" 4 {<gis' e d>16\ff gis,16} \repeat "tremolo" 4 {<gis' e d>16 gis,16} |
    \repeat "tremolo" 4 {<d' b gis>16 e,16} \repeat "tremolo" 4 {<d' b gis>16 e,16} | 
    \repeat "tremolo" 4 {<d' b gis>16 e,16} \repeat "tremolo" 4 {<d' b gis>16 e,16} | % 12.2 - 255
    \repeat "tremolo" 4 {<d' b gis>16 e,16} \repeat "tremolo" 4 {<d' b gis>16 e,16} | 
    \repeat "tremolo" 4 {<d' b gis>16 e,16} \repeat "tremolo" 4 {<d' b gis>16 e,16} | 
    \repeat "tremolo" 4 {d'16-4\p b16-2} \repeat "tremolo" 4 {d16 b16} |
    \repeat "tremolo" 4 {d16 b16} \repeat "tremolo" 4 {d16 b16} |
    \repeat "tremolo" 4 {d16 b16} \repeat "tremolo" 4 {d16 b16} | % 12.3 - 260
    \repeat "tremolo" 4 {d16 b16} \repeat "tremolo" 4 {d16 b16} |
    \repeat "tremolo" 4 {d16 b16} \repeat "tremolo" 4 {d16 b16} |
    \repeat "tremolo" 4 {d16 b16} \repeat "tremolo" 4 {d16 b16} |
    \repeat "tremolo" 4 {d16 b16} \repeat "tremolo" 4 {d16 b16} |
    \repeat "tremolo" 4 {d16 b16} \repeat "tremolo" 4 {d16 b16} |
    \repeat "tremolo" 4 {d16 b16} \repeat "tremolo" 4 {d16 b16} | % 12.4 - 266
    \repeat "tremolo" 4 {d16 b16} \repeat "tremolo" 4 {d16 b16} |
    \repeat "tremolo" 4 {d16 b16} \repeat "tremolo" 4 {d16 b16} |
    \repeat "tremolo" 4 {d16 b16} \repeat "tremolo" 4 {d16 b16} |
    b2 r4 r8. <g b d g>16\ff |
    <g b d g>1\fermata |
    R1^\markup{ \musicglyph #"scripts.ufermata" } | % 12.5 - 272
    \bar "|."
    \break
    R1^\markup{\column {\line {\bold "               Allegro sostenuto. ("\note #"4" #1 \bold " = 92)"} " "}} |
    g4-1\( g8. g16 g4.. e'16-4\) |
    e4..->( g,16) g4 r |
    g4 g8. g16 g4.. e'16 | % 13.1 - 276
    f2->( g,4) r8 g |
    a g r4 d'8 c r4 |
    e4..( d16) d4 r |
    \override TextSpanner #'edge-text = #'("con 8ª " . "")
    \override TextSpanner #'dash-period = #1.0
    \override TextSpanner #'dash-fraction = #0.3
    \override TextSpanner #'padding = #2
    d4\startTextSpan e8. f16 a4..-> g16 | % 13.2 - 280
    c,4.\( e16 d c4\) r |
    d4_\markup{\italic "animato."} e8. f16 e4..-> d16 |
    d4.\( c16 b a4\) r |
    f'4\( g8. a16 g4.. f16\) | % 13.3 - 284
    f4.\( e16 d c4\)\stopTextSpan r |
    c4.-2\( b16 c\) d4.\( cis16 d\) |
    e2.\< g4\! |
    g8 f r cis-.-2 d-.-1 e-. f-. g-. | % 13.4 - 288
    aes2.\startTextSpan( des,4) |
    c4. b16 c des4 c |
    g4.\( a16 b\) c4 e\stopTextSpan |
    <g c e g>8\f <g c e g>16 <g c e g> <g c e g>8 <g c e g> <g c e g>\noBeam g-3 fis g |
    << {a2..-5 g8\fermata} \\ {<f d b>4 r r2_\fermata} >> | % 13.5 - 293
    \bar "|."
    \pageBreak
    \key ees \major
    \time 2/4
    \override TextSpanner #'edge-text = #'("con 8ª ad libitum " . "")
    \once\override TextScript #'padding = #-1
    c4->-1_\markup{\dynamic f "Velocissimo."}\startTextSpan d8-> ees-> |
    \noBreak
    c4-> d8-> ees-> |
    c4-> d8-> ees-> |
    f4-> d8-> b-> |
    aes!4->-2 g->-1 |
    c8-> c-> ees4-> |
    c ees8. ees16\stopTextSpan | % 14.1 - 300
    g'16\(-5 f ees d c b-3 a g\) |
    c,4\startTextSpan d8 ees |
    \noBreak
    c4 d8 ees |
    c4 d8 ees |
    f4 d8 b |
    aes!4 g |
    c ees8 ees |
    d4 g,8 g | % 14.2 - 308
    c4\stopTextSpan r |
    <ees c' ees>2-> |
    #(set-octavation 1)
    <ees bes' ees>-> |
    <bes' d! aes'>-> |
    <bes ees g>-> |
    <g b f'>-> |
    <g c ees>4-> <g d'>-> |
    <g c>-> <fis a d>-> |
    g-> #(set-octavation 0) r | % 14.3 - 317
    c,4-1 <c-1 d-2>8 <c ees-3> |
    <c f-4>4 <c g'-4>8 <c aes'> |
    bes4-2 <bes c>8 <bes d> |
    <bes ees>4 <bes f'>8 <bes g'> |
    aes4-1 <aes bes>8 <aes c> |
    <aes d>4 <aes ees'>8 <aes f'> |
    g4 <g a>8 <g b> |
    <g c>4 #(set-octavation 1) <c c'>4-> | % 14.4 - 325
    \repeat "volta" 2 {
        <d c' d>-> <ees c' ees>-> |
        <f c' f>-> <d c' d>-> |
        <ees c' ees>-> <f c' f>-> |
        <g c g'>-> <e c' e>-> |
        <f c' f>-> <g c g'>-> |
        <aes c aes'>-> <e c' e>-> |
        <f c' f>-> <fis c' fis>-> |
        <c' ees g>8 g <c ees g> g |
        <c ees g>8 g <c ees g> g | % 14.5 - 334
        <b d g> g <b d g> g |
        <b d g> g <b d g> g |
    }
    \alternative {
        {<c e>4-> <c c,>->}
        {<b d aes'>8\ff aes-1 <b d aes'> aes}
    }
    <b d aes'> aes <b d aes'> aes |
    <b d aes'> aes <b d aes'> aes |
    <b d aes'> aes <b d aes'> aes |
    <b d aes'> aes <b d aes'> aes |
    <aes b d aes'>4\arpeggio #(set-octavation 0) r\fermata | % fin
    \bar "|."
}
lower = \relative c {
    \clef bass
    \key c \major
    \time 4/4
    <d b g>8 <d b g> <d b g> <d b g> <d b g> <d b g> <d b g> <d b g> |
    <d b g> r <g d b g> r <g, g,>4 r |
    <g' c e> <g g,>8 r <g, g,>4 r | % 1.1 - 3
    r <g g'>8 r <g g,>4 r |
    <c c,> r <c e g>8 r <c e g> r |
    <c f aes>4 r <g b! f'>8 r <g b f'> r |
    <c e>4 r <c e g>8 r <c e g> r | % 1.2 - 7
    <c f aes>4 r <g b! f'>8 r <g b f'> r |
    <c e>4 r <c e g>8 r <c e g> r |
    <c f aes>4 r <g b! f'>8 r <g b f'> r |
    <c e> r <g b! d f> r <c e> r <g b d f> r | % 1.3 - 11
    <c e> r <g b! d f> r <c e> r <g b d f> r |
    <c e>4. <c c'>8 <c c'>4. <c c'>8 |
    \repeat "unfold" 8 {<c e g>8} |
    \repeat "unfold" 8 {<c e g>8} | % 1.4 - 15
    \repeat "unfold" 8 {<c e g bes>8} |
    <c e g bes> r r4 r2 |
    R1 |
    r2 b!4 r |
    c r r2\fermata | % 1.5 - 20
    \bar "||"
    \key aes \major
    \time 6/8
    << {\set fingeringOrientations = #'(up) \acciaccatura {<g'-2 bes-4>8} \stemUp \once\override TextScript #'extra-offset = #'(2 . 1) \once\override Fingering #'extra-offset = #'(0 . -3) <f-1 aes-3>4^\markup{\italic "extremamente " \dynamic pp} r8 \acciaccatura {<aes-2 c-4>8} <g-1 bes-3>4 r8} \\ {f,8-4 c'-1 c f, c' c} >> |
    << {<aes'-2 c-4>16-. <bes des>-. <aes c>-. <bes des>-. <aes c>-. <bes des>-. <aes c>4 r8} \\ {f,8 c' c f, c' c} >> |
    << {\acciaccatura {<f-2 aes-4>8} <e-1 g-3>4 r8 \acciaccatura {<g bes>8} <f aes>4 r8 } \\ {c,8-5 c'-1 c c, c' c} >> |
    << {<g'-1 bes-3>16-. <aes c>-. <g bes>-. <aes c>-. <g bes>-. <aes c>-. <g bes>4 r8} \\ {c,,8 c' c c, c' c} >> | % 2.1 - 24
    \break
    << {\acciaccatura {<g' bes>8} <f aes>4 r8 \acciaccatura {<aes c>8} <g bes>4 r8} \\ {f,8 c' c f, c' c} >> |
    << {<aes' c>16-. <bes des>-. <aes c>-. <bes des>-. <aes c>-. <bes des>-. <aes c>4 r8} \\ {f,8 c' c f, c' c} >> |
    << {<g'-2 e-1>8 \once\override Fingering #'extra-offset = #'( 0 . 2.5) <f-1 aes-3> <g bes> <aes c>4->( <g bes>8)} \\ {c,,8 c' c c, c' c} >> |
    << {<f aes>8 <f aes>16-. <g bes>-. <f aes>-. <g bes>-. <f aes>4 r8} \\ {f, c' c f, c' c} >> | % 2.2 - 28
    << {\acciaccatura {<g' bes>8} <f aes>4 r8 \acciaccatura {<aes c>8} <g bes>4 r8} \\ {f,8 c' c f, c' c} >> |
    << {<aes' c>16-. <bes des>-. <aes c>-. <bes des>-. <aes c>-. <bes des>-. <aes c>4 r8} \\ {f,8 c' c f, c' c} >> |
    << {\acciaccatura {<f aes>8} <e g>4 r8 \acciaccatura {<g bes>8} <f aes>4 r8 } \\ {c,8 c' c c, c' c} >> |
    << {<g' bes>16-. <aes c>-. <g bes>-. <aes c>-. <g bes>-. <aes c>-. <g bes>4 r8} \\ {c,,8 c' c c, c' c} >> | % 2.3 - 32
    << {\acciaccatura {<g' bes>8} <f aes>4 r8 \acciaccatura {<aes c>8} <g bes>4 r8} \\ {f,8 c' c f, c' c} >> |
    << {<aes' c>16-. <bes des>-. <aes c>-. <bes des>-. <aes c>-. <bes des>-. <aes c>4 r8} \\ {f,8 c' c f, c' c} >> |
    << {<g' e>8 <f aes> <g bes> <aes c>4->( <g bes>8)} \\ {c,,8 c' c c, c' c} >> |
    << {<f aes>8 <f aes>16-. <g bes>-. <f aes>-. <g bes>-. <f aes>4 r8} \\ {f, c' c f, c' c} >> | % 2.4 - 36
    << {\acciaccatura {<a'-1 c-3>8} <bes-2 des-4>4 s2} \\ {f,8 des' des f, des' des} >> |
    << {<aes' c>16-. <bes des>-. <aes c>-. <bes des>-. <aes c>-. <bes des>-. <aes c>4 r8} \\ {f,8 c' c f, c' c} >> |
    << {\acciaccatura {<fis-2 a-4>8} <g bes>4 r8 \acciaccatura {b8-4} <c-5 e,-1>4 r8} \\ {c,,8 c' c c, c' c} >> |
    <<{<f aes>8 <f aes>16-. <g bes>-. <f aes>-. <g bes>-. <f aes>4 r8} \\ {f,8 c' c f, c' c} >>  | %2.5 - 40
    << {\acciaccatura {<a' c>8} <bes des>4 s2} \\ {f,8 des' des f, des' des} >> |
    << {<aes' c>16-. <bes des>-. <aes c>-. <bes des>-. <aes c>-. <bes des>-. <aes c>4 r8} \\ {f,8 c' c f, c' c} >> |
    << {\acciaccatura {<e g>8} <f aes>4 r8 \acciaccatura {<fis a>8} <g bes>4 r8} \\ {des,8 des' des des, des' des} >> |
    << {c16 b c b c b c b c bes aes g} \\ {c,8 r r c r r} >> | % 2.6 - 44
    << {\acciaccatura {<g'' bes>8} <f aes>4 r8 \acciaccatura {<aes c>8} <g bes>4 r8} \\ {f,8 c' c f, c' c} >> |
    << {<aes' c>16-. <bes des>-. <aes c>-. <bes des>-. <aes c>-. <bes des>-. <aes c>4 r8} \\ {f,8 c' c f, c' c} >> |
    << {\acciaccatura {<f aes>8} <e g>4 r8 \acciaccatura {<g bes>8} <f aes>4 r8 } \\ {c,8 c' c c, c' c} >> |
    << {<g' bes>16-. <aes c>-. <g bes>-. <aes c>-. <g bes>-. <aes c>-. <g bes>4 r8} \\ {c,,8 c' c c, c' c} >> | % 3.1 - 48
    << {\acciaccatura {<g' bes>8} <f aes>4 r8 \acciaccatura {<aes c>8} <g bes>4 r8} \\ {f,8 c' c f, c' c} >> |
    << {<aes' c>16-. <bes des>-. <aes c>-. <bes des>-. <aes c>-. <bes des>-. <aes c>4 r8} \\ {f,8 c' c f, c' c} >> |
    << {<g' e>8 <f aes> <g bes> <aes c>4->( <g bes>8)} \\ {c,,8 c' c c, c' c} >> |
    \stemDown \once\override Fingering #'extra-offset = #'(0 . -4) f,8-5^\< \set fingeringOrientations = #'(left) <f'-2 aes-1> <f aes> f, <f' aes> <f aes> | % 3.2 - 52
    ees,8 <g' bes> <g bes> ees <g bes> <g bes> |
    des <g bes> <g bes> des <g bes> <g bes>\! |
    c,^\> <aes' c> <aes c> a, <ges' c> <ges c> |
    bes, <f' bes> <f bes> bes, <f' bes> <f bes> | % 3.3 - 56
    c <f aes> <f aes> c\! <f aes> <f aes> |
    c <e bes'> <e bes'> c <e bes'> <e bes'> |
    f <aes c> <aes c> f <aes c> <aes c> |
    des, aes' aes des, aes' aes | % 3.4 - 60
    des, aes' aes des, aes' aes |
    aes, aes' aes aes, aes' aes |
    aes, aes' aes aes, aes' aes |
    des, aes' aes des, aes' aes | % 3.5 - 64
    des, aes' aes des, aes' aes |
    aes, aes' aes aes, aes' aes |
    des, aes' aes des, aes' aes | % 3.6 - 67
    des, aes' aes des, aes' aes |
    des, aes' aes des, aes' aes |
    aes, aes' aes aes, aes' aes |
    aes, aes' aes aes, aes' aes |
    des, aes' aes des, aes' aes | % 4.1 - 72
    des, aes' aes des, aes' aes |
    aes, aes' aes aes, aes' aes |
    des, aes' aes des, aes' aes |
    des, des' des des, des' des | % 4.2 - 76
    << {des2.(} \\ {des,8 aes' aes des, aes' aes} >> |
    << {c2.)(} \\ {des,8 aes' aes des, aes' aes} >> |
    << {des4) r8 r4 r8} \\ {des,8 aes' aes des, aes' aes} >> |
    des, des' des des, des' des | % 4.3 - 80
    << {des2.(} \\ {des,8 aes' aes des, aes' aes} >> |
    << {c2.)(} \\ {des,8 aes' aes des, aes' aes} >> |
    << {des4) r8 r4 r8} \\ {des,8 aes' aes des, aes' aes} >> |
    bes,8 bes' bes ees, ees' ees | % 4.4 - 84
    aes,, aes' aes aes, aes' aes |
    bes, bes' bes c, c' c |
    f,, f' f f, f' f |
    des, des' des g, g' g | % 4.5 - 88
    c, g' g c, g' g |
    des, des' des g, g' g |
    c, g' g c, g' g |
    c,, c' c c, c' c | % 4.6 - 92
    << {\override Staff.NoteCollision #'merge-differently-dotted = ##t c,8 c' c c, c' c} \\ {c,4. c} >> |
    << {c8 c' c c, c' c} \\ {c,4. c} >> |
    << {c8 c' c c, c' c} \\ {c,4. c} >> |
    << {c8 c' c c, c' c} \\ {c,4. c} >> | % 5.1 - 96
    << {c8 c' c c, c' c} \\ {c,4. c} >> |
    << {c8 c' c c, c' c} \\ {c,4. c} >> |
    << {c8 c' c c, c' c} \\ {c,4. c} >> |
    << {c8 c' c c, c' c} \\ {c,4. c} >> | % 5.2 - 100
    << {c8 c' c c, c' c} \\ {c,4. c} >> |
    << {c8 c' c c, c' c} \\ {c,4. c} >> |
    f8 <f' aes> <f aes> f, <f' aes> <f aes> |
    ees, <g' bes> <g bes> ees <g bes> <g bes> | % 5.3 - 104
    des <g bes> <g bes> des <g bes> <g bes> |
    c, <aes' c> <aes c> a, <ges' c> <ges c> |
    bes, <f' bes> <f bes> bes, <f' bes> <f bes> |
    c <f aes> <f aes> c <f aes> <f aes> | % 5.4 - 108
    c <e bes'> <e bes'> c <e bes'> <e bes'> |
    \stemNeutral
    f,16-5( c'-1) c-.-4 c-.-3 c-.-2 c-.-1 f,-5( c') c-. c-. c-. c-. |
    f,( c') c-. c-. c-. c-. f,( c') c-. c-. c-. c-. | 
    c,(-5 c')-1 c-.-2 c-.-1 c-.-2 c-.-1 c,( c') c-. c-. c-. c-. |  % 5.5 - 112
    c,( c') c-. c-. c-. c-. c,( c') c-. c-. c-. c-. |
    f,( c') c-. c-. c-. c-. f,( c') c-. c-. c-. c-. | 
    f,( c') c-. c-. c-. c-. f,( c') c-. c-. c-. c-. |  % 5.6 - 115
    c,( c') c-. c-. c-. c-. c,( c') c-. c-. c-. c-. |
    f,( c') c-. c-. c-. c-. f,( c') c-. c-. c-. c-. |
    aes-5( ees'-1) ees-2-. ees-1-. ees-2-. ees-1-. aes,( ees') ees-. ees-. ees-. ees-. |
    aes,( ees') ees-. ees-. ees-. ees-. aes,( ees') ees-. ees-. ees-. ees-. | % 6.1 - 119
    ees,( ees') ees-. ees-. ees-. ees-. ees,( ees') ees-. ees-. ees-. ees-. |
    ees,( ees') ees-. ees-. ees-. ees-. ees,( ees') ees-. ees-. ees-. ees-. |
    aes,( ees') ees-. ees-. ees-. ees-. aes,( ees') ees-. ees-. ees-. ees-. | % 6.2 - 122
    aes,( ees') ees-. ees-. ees-. ees-. aes,( ees') ees-. ees-. ees-. ees-. |
    ees,( ees') ees-. ees-. ees-. ees-. ees,( ees') ees-. ees-. ees-. ees-. |
    aes,( ees') ees-. ees-. ees-. ees-. aes,( ees') ees-. ees-. ees-. ees-. |
    des,( des') f-. des-. f-. des-. ees,( ees') g-. ees-. g-. ees-. | % 6.3 - 126
    aes,(_5 ees'_2) aes-._1 ees-. aes-. ees-. aes,( ees') aes-. ees-. aes-. ees-. |
    bes,( bes') des-. bes-. des-. bes-. c,( c') e-. c-. e-. c-. |
    f,( c') f-. c-. f-. c-. f,( c') f-. c-. f-. c-. | % 6.4 - 129
    des,( des') f-. des-. f-. des-. g,( g') bes-. g-. bes-. g-. |
    c,( g') c-. g-. c-. g-. c,( g') c-. g-. c-. g-. |
    des-4( f) aes-. f-. aes-. f-. g,( g') bes-. g-. bes-. g-. | % 6.5 - 132
    c,( g') c-. g-. c-. g-. c,( g') c-. g-. c-. g-. |
    c,,-5( c'-1) b-.-2 c-. b-. c-. c,( c') b-. c-. b-. c-. |
    c,( c') b-. c-. b-. c-. c,( c') b-. c-. b-. c-. | % 6.6 - 135
    c,( c') b-. c-. b-. c-. c,( c') b-. c-. b-. c-. |
    c,( c') b-. c-. b-. c-. c,( c') b-. c-. b-. c-. |
    c,( c') b-. c-. b-. c-. c,( c') b-. c-. b-. c-. | % 7.1 - 138
    c,( c') b-. c-. b-. c-. c,( c') b-. c-. b-. c-. |
    c,( c') b-. c-. b-. c-. c,( c') b-. c-. b-. c-. |
    \stemDown
    f,8 <f' aes> <f aes> f, <f' aes> <f aes> |
    ees, <g' bes> <g bes> ees <g bes> <g bes> | % 7.2 - 142
    \stemNeutral
    des <g bes> <g bes> des <g bes> <g bes>|
    c, <aes' c> <aes c> a, <ges' c> <ges c> |
    bes, <f' bes> <f bes> bes, <f' bes> <f bes> |
    c <f aes> <f aes> c <f aes> <f aes> |
    c <e bes'> <e bes'> c <e bes'> <e bes'> | % 7.3 - 147
    f, c' c f, c' c |
    f, c' c f, c' c |
    c, c' c c, c' c |
    c, c' c c, c' c |
    f, c' c f, c' c | % 7.4 - 152
    f, c' c f, c' c |
    c, c' c c, c' c |
    f, c' c f, c' c |
    f, des' des f, des' des |
    f, c' c f, c' c | % 7.5 - 157
    << {\acciaccatura {<fis a>8} \stemUp <g bes>4 r8 \acciaccatura {b8} <c e,>4 r8 } \\ {f,, c' c f, c' c } >> |
    << {<f aes>16-. <g bes>-. <f aes>-. <g bes>-. <f aes>-. <g bes>-. <f aes>4 r8} \\ {f, c' c f, c' c } >> |
    f, des' des f, des' des |
    f, c' c f, c' c | % 8.1 - 161
    << {\acciaccatura {<fis a>8} \stemUp <g bes>4 r8 \acciaccatura {b8} <c e,>4 r8 } \\ {f,, c' c f, c' c } >> |
    << {<f aes>4 r8 r4 r8} \\ {f,8 c' c f, c' c} >> |
    c, c' c c, c' c |
    f, c' c f, c' c | % 8.2 - 165
    << {<e g>8 <f aes> <g bes> <aes c>4->( <g bes>8)} \\ {c,,8 c' c c, c' c} >> |
    << {<f aes>4 r8 <f aes>4 r8} \\ {f,4 r8 <des' des,>4 r8} >> |
    << {<f aes>4^\p r8 <f aes>4 r8} \\ {<c c,>4 r8 <aes aes,>4 r8} >> |
    << {<f' aes>4 r8 <f aes>4 r8} \\ {<f, f,>4 r8 <des' des,>4 r8} >> |
    << {<f aes>4 r8 <f aes>4 r8} \\ {<c c,>4 r8 <aes aes,>4 r8} >> | % 8.3 - 170
    << {<f' aes>4^\markup{\italic "morendo"} r8 r4 r8} \\ {<f, f,>4 r8 r4 r8} >> |
    << {<f' aes>4 \once\override DynamicLineSpanner #'padding = #1.5 r8^\ppp r4 r8} \\ {<f, f,>4 r8 r4 r8} >> |
    << {<f' aes>2.\fermata} \\ {<f, f,>2.\fermata} >> |
    \bar "||"
    \key des \major
    \time 4/4
    R1 | % 8.4 - 174
    R1 |
    R1 | % 8.5 - 176
    R1 |
    R1 | % 8.6 - 178
    <g' fes des bes>8 <g fes des bes> <g fes des bes> <g fes des bes> <g fes des bes> <g fes des bes> <g fes des bes> <g fes des bes> |
    <g fes des bes> <g fes des bes> <g fes des bes> <g fes des bes> <g fes des bes> <g fes des bes> <g fes des bes> <g fes des bes> |
    <g fes des bes>4 r r2 | % 9.1 - 181
    <g des' fes>4\p r <aes des fes> r |
    <beses des fes> r r2 |
    <g des' fes>4 r <aes des fes> r | % 9.2 - 184
    <beses des fes> r r2 |
    R1 |
    <aes des fes>1 ~ | % 9.3 - 187
    <aes des fes> |
    <aes b d f!> ~ |
    <aes b d f> |
    \repeat "tremolo" 4 <aes ees c aes>8 \repeat "tremolo" 4 <aes ees c aes>8  | % 9.4 - 191
    \repeat "tremolo" 4 <aes ees c aes>8 \repeat "tremolo" 4 <aes ees c aes>8  |
    <aes ees c aes>8 r r4 r2 | % 9.5 - 193
    R1 |
    << {des,8-3 s c-4 s des-3 s aes-5 s} \\ {\once\override TextScript #'extra-offset = #'(-2 . 1) des8_\markup{\dynamic p} \set fingeringOrientations = #'(up) <f-2 aes-1> c <f aes> des <f aes> aes, <f' aes>} >> | % 9.6 - 195
    << {des8 s c s des s aes s} \\ {des8 <f aes> c <f aes> des <f aes> aes, <f' aes>} >> |
    \repeat "volta" 2 {
        << {des8 s c s des s aes s} \\ {des8 <f aes> c <f aes> des <f aes> aes, <f' aes>} >> |
        << {des8 s c s des s aes s} \\ {des8 <f aes> c <f aes> des <f aes> aes, <f' aes>} >> |
        << {ees-3 s aes,-5 s des-4 s aes-5 s} \\ {ees'8 <ges aes> aes, <ges' aes> des <f aes> aes, <f' aes>} >> | % 10.1 - 199
    }
    \alternative {
        {<< {c8 s b s c s aes s} \\ {c8 <ees aes> b <ees aes> c <ees aes> aes, <ees' aes>} >> }
        {<< {c8 s b s c s bes s} \\ {c8 <ees aes> b <ees aes> c <ees aes> bes <c ees ges!>} >>}
    }
    << {a8 s c s a s f s} \\ {a8 <ees' f> c <ees f> a, <ees' f> f, <c' ees f>} >> |
    << {bes8 s des s aes! s c s} \\ {bes8 <f' bes> des <f bes> aes, <f' aes> c <f aes>} >> | % 10.2 - 202
    << {g,8-5 s bes-3 s c s c s} \\ {g8 f' bes, f' c <e bes' c> c <e bes' c>} >> |
    << {des8 s f s des s f s} \\ {des8 <aes' des> f <aes des> des, <aes' des> f <aes des>} >> |
    << {d,8 s f s d s f s} \\ {d8 <aes' ces> f <aes ces> d, <aes' ces> f <aes ces>} >> |
    << {ees8 s ees s des! s c s} \\ {ees8 <aes c!> ees <aes c> des, ees c <ees aes>} >> | % 10.3 - 206
    << {bes8 s aes s g s ees s} \\ {bes'8 <des ees ges> aes <des ees ges> g, <des' ees ges> ees, <des' ees ges>} >> |
    aes8 aes' <ees c> aes aes, aes' <ees c> aes |
    \repeat "volta" 2 {
        aes,8 aes'-1 <ges!-2 ees-3> aes aes, aes' <ges ees> aes |
        aes, aes' <f des> aes aes, aes' <f des> aes |
        aes, aes' <ges ees> aes aes, aes' <ges ees> aes | % 10.4 - 211
    }
    \alternative {
        {aes, aes' <f des> aes aes, aes' <f des> aes}
        {<< {des,8 s des s fes s fes s} \\ {des <aes' des> des, <aes' des> fes <aes des> fes <aes des>} >>}
    }
    << {ees8 s ees s des s des s} \\ {ees8 <aes ces> ees <aes ces> des, <ees g bes> des <ees g bes>} >> |
    << {ces8 s ces s des! s des s} \\ {ces8 <ees aes ces> ces <ees aes ces> des <fes g bes> des <fes g bes>} >> | % 10.5 - 214
    << {ces8 s ces s bes s bes s} \\ {ces8 <ees aes ces> ces <ees aes ces> bes <des ees g> bes <des ees g>} >> |
    << {aes8 s ces s aes s ces s} \\ {aes8 <ees' aes> ces <ees aes> aes, <ees' aes> ces <ees aes>} >> |
    << {fes s aes s fes s aes s} \\ {fes <bes des> aes <bes des> fes <bes des> aes <bes des>} >> |
    ees,8 ees' <ces aes> ees ees, ees' <ces aes> ees | % 10.6 - 219
    ees, ees' <des g,> ees ees, ees' <des g,> ees |
    << {aes,8 s a s bes s g s} \\ {aes8 <ces ees> a <ces ees> bes <des ees> g, <des' ees>} >> |
    << {aes8 s a s bes s g s} \\ {aes8 <ces ees> a <ces ees> bes <des ees> g, <des' ees>} >> |
    << {aes8 s a s bes s g s} \\ {aes8 <ces ees> a <ces ees> bes <des ees> g, <des' ees>} >> | % 11.1 - 223
    << {aes8 s a s bes s g s} \\ {aes8 <ces ees> a <ces ees> bes <des ees> g, <des' ees>} >> |
    << {aes8 s ces s aes s ces s} \\ {aes8 ees' ces ees aes, ees' ces ees} >> |
    ges,! ges'! <fes des bes> ges ges, ges' <fes des bes> ges |
    ges, ges' <ees ces> ges ges, ges' <ees ces> ges | % 11.2 - 227
    ges, ges' <fes des bes> ges ges, ges' <fes des bes> ges |
    ges, ges' <ees ces> ges ges, ges' <ees ces> ges |
    ges, fes' <des bes> fes ges, fes' <des bes> fes |
    ces, ces' <ges ees> ces bes, g' <ees des> g | % 11.3 - 231
    aes, aes' <ees ces> aes fes d' <bes aes> d |
    \repeat "tremolo" 4 {ees,16 <g bes ees>16} \repeat "tremolo" 4 {ees16 <g bes ees>16} |
    \repeat "tremolo" 4 {ees16 <aes ces ees>16} \repeat "tremolo" 4 {ees16 <aes ces ees>16} |
    \repeat "tremolo" 4 {ees16 <g bes ees>16} \repeat "tremolo" 4 {ees16 <g bes ees>16} |
    \repeat "tremolo" 4 {ees16 <aes ces ees>16} \repeat "tremolo" 4 {ees16 <aes ces ees>16} | % 11.4 - 236
    \repeat "tremolo" 4 {ees16 <bes' des>16} \repeat "tremolo" 4 {ees,16 <bes' des>16} |
    \repeat "tremolo" 4 {ees,16 <aes ces>16} \repeat "tremolo" 4 {ees16 <aes ces>16} |
    \repeat "tremolo" 4 {ees16 <g bes des>16} \repeat "tremolo" 4 {ees16 <g bes des>16} |
    \repeat "tremolo" 4 {ees16 <aes ces>16} \repeat "tremolo" 4 {ees16 <g bes des>16} |
    \bar "|."
    \key c \major
    \repeat "tremolo" 4 {e!16 <gis b!>16} \repeat "tremolo" 4 {e16 <gis b>16} | % 11.5 - 241
    \repeat "tremolo" 4 {e16 <gis b>16} \repeat "tremolo" 4 {e16 <gis b>16} |
    \repeat "tremolo" 4 {e16 <a c>16} \repeat "tremolo" 4 {e16 <a c>16} |
    \repeat "tremolo" 4 {e16 <gis b>16} \repeat "tremolo" 4 {e16 <gis b>16} |
    \repeat "tremolo" 4 {e16 <a c>16} \repeat "tremolo" 4 {e16 <a c>16} |
    \repeat "tremolo" 4 {e16 <gis b d>16} \repeat "tremolo" 4 {e16 <gis b d>16} | % 11.6 - 246
    \repeat "tremolo" 4 {e16 <a c e>16} \repeat "tremolo" 4 {e16 <a c e>16} |
    \repeat "tremolo" 4 {f!16 <a c dis>16} \repeat "tremolo" 4 {f16 <a c dis>16} |
    \repeat "tremolo" 4 {f!16 <a c dis>16} \repeat "tremolo" 4 {f16 <a c dis>16} |
    \repeat "tremolo" 4 {f16 <a c dis>16} \repeat "tremolo" 4 {f16 <a c dis>16} |
    <e gis b>8 r <fis fis,> r <gis! gis,> r <a a,> r | % 12.1 - 251
    <b b,> r <c c,> r <d d,> r <dis dis,> r |
    <e e,>4 r <d d,>4..-> <ais ais,>16 |
    <b b,>4..-> <fisis fisis,>16 <gis gis,>4..-> <dis dis,>16 |
    <e e,>4 r <d' d,>4..-> <ais ais,>16 | % 12.2 - 255
    <b b,>4..-> <fisis fisis,>16 <gis gis,>4..-> <dis dis,>16 |
    <e e,>2 r |
    <d' d,>2.. <f,! f,!>8 |
    <e e,>4 r r2 |
    <d' d,>2.. <f,! f,!>8 | % 12.3 - 260
    <e e,>4 r r2^\markup{\italic "dim."} |
    r2 r4 d'8-2\( e |
    f!1\) ~ |
    f!4. d8 b4. a8 |
    gis4 r <b b,> r8 <a a,> |
    <a a,>4 <gis gis,> r d'8\( e |
    f!1\) ~ |
    f4 d b4. a8 |
    gis4 r8 <b b,>\noBeam <a a,> <gis! gis,> r4 |
    <b b,>2 r4 r8. <g, g,>16 |
    <g g,>1\fermata |
    R1^\markup{ \musicglyph #"scripts.ufermata" } | % 12.5 - 272
    \bar "|."
    \once\override DynamicLineSpanner #'padding = #3
    c8^\p <g' c e>-. <g c e>-. <g c e>-. <g c e>-. <g c e>-. <g c e>-. <g c e>-. |
    <g c e>-. <g c e>-. <g c e>-. <g c e>-. <g c e>-. <g c e>-. <g c e>-. <g c e>-. |
    \once\override Staff.SustainPedal #'extra-offset = #'(-2.5 . 2)
    <cis, cis,>->\sustainDown <g' bes cis e>-. <g bes cis e>-. <g bes cis e>-. <g bes cis e>-. <g bes cis e>-. <g bes cis e>-. <g bes cis e>-. |
    <g bes cis e>-. <g bes cis e>-. <g bes cis e>-. <g bes cis e>-. <g bes cis e>-. <g bes cis e>-. <g bes cis e>-. \once\override Staff.SustainPedal #'extra-offset = #'(0 . -2) <g bes cis e>-.\sustainUp | % 13.1 - 276
    <d d,>\sustainDown <g b! d f> <g b d f> <g b d f> <g b d f> <g b d f> <g b d f> <g b d f>\sustainUp |
    <e e,> <e g c>16 <e g c> <e g c>8 <e g c> <e e,> <g bes c>16 <g bes c> <g bes c>8 <g bes c> |
    <f f,>8 <f a d>16 <f a d> <f a d>8 <f a d> <f a d> <f a d> <f a d> <f a d> |
    <f f,>8 <f a d>16 <f a d> <f a d>8 <f a d> <g g,> <g b d f>16 <g b d f> <g b d f>8 <g b d f> | % 13.2 - 280
    <c c,>8 <e c g>16 <e c g> <e c g>8 <e c g> <e c g> <e c g> <e c g> <e c g> |
    <f, f,>8 <f a d>16 <f a d> <f a d>8 <f a d> \stemDown <e e,> <e gis b>16 <e gis b> <e gis b>8 <e gis b> \stemNeutral |
    <a a,>8 <a c e>16 <a c e> <a c e>8 <a c e> <a a,> <a c e>16 <a c e> <a c e>8 <a c e> |
    <b b,>8 <g b d f>16 <g b d f> <g b d f>8 <g b d f> <g g,> <g b d f>16 <g b d f> <g b d f>8 <g b d f> | % 13.3 - 284
    <c c,>8 <e c g>16 <e c g> <e c g>8 <e c g> <c c,> <e c g>16 <e c g> <e c g>8 <e c g> |
    <a, a,>8 <a c>16 <a c> <a c>8 <a c> <a a,> <b d>16 <b d> <b d>8 <b d> |
    <a a,>8 <a cis e>16 <a cis e> <a cis e>8 <a cis e> <a a,> <a cis e g>16 <a cis e g> <a cis e g>8 <a cis e g>  |
    <d a f d>8 r r4 r2 | % 13.4 - 288
    <f, f,>8 <f aes des f>16 <f aes des f> <f aes des f>8 <f aes des f> <f aes des f> <f aes des f> <f aes des f> <f aes des f> |
    <fis fis,>8 <a! c ees>16 <a c ees> <a c ees>8 <a c ees> fis <a c ees>16 <a c ees>  <a c ees>8 <a c ees>  |
    <g g,>8 <g c e!>16 <g c e> <g c e>8 <g c e> <g g,> <g c e>16 <g c e> <g c e>8 <g c e> |
    <g e c g>8 <g e c g>16 <g e c g> <g e c g>8 <g e c g> <g e c g>  r r4 |
    <f d b g>4 r r2\fermata | % 13.5 - 293
    \bar "|."
    \key ees \major
    \time 2/4
    \override TextSpanner #'edge-text = #'("con 8ª ad libitum " . "")
    \override TextSpanner #'dash-period = #1.0
    \override TextSpanner #'dash-fraction = #0.3
    \override TextSpanner #'padding = #2
    c4->-4\startTextSpan d8-> ees-> |
    c4-> d8-> ees-> |
    c4-> d8-> ees-> |
    f4->-1 d8->-2 b->-3|
    aes!4->-4 g->-5 |
    c8-> c-> ees4-> |
    c ees8. ees16 | % 14.1 - 300
    g,4 g |
    c4 d8 ees |
    c4 d8 ees |
    c4 d8 ees |
    f4 d8 b |
    aes!4 g |
    c ees8 ees |
    d4 g,8 g | % 14.2 - 308
    c4\stopTextSpan r |
    <aes' aes,>2-> |
    <g g,>-> |
    <f f,>-> |
    <ees ees,>-> |
    <d d,>-> |
    <c c,>4-> <bes bes,>-> |
    <a a,>-> <d d,>-> |
    <g, g,>-> r | % 14.3 - 317
    c4-1\startTextSpan b8 bes |
    aes4 g8-1 g-4 |
    bes4 a8 aes |
    g4-1 f8 ees |
    aes4-2 g8 ges |
    f4 ees8 d |
    g4 fis8 f |
    ees4\stopTextSpan
    <e e'> | % 14.4 - 325
    \repeat "volta" 2 {
        <f f'>-> <g g'>-> |
        <aes aes'>-. <f f'>-> |
        <g g'>-> <aes aes'>-> |
        <bes bes'>-> <g g'>-> |
        <aes aes'>-> <bes bes'>-> |
        <c c'>-> <bes bes'>-> |
        <a a'>-> <aes aes'>-> |
        <g c ees g>2-> |
        <g c ees g>2-> |
        <g b d g>2-> |
        <g b d g>2-> |
    }
    \alternative {
        {<c c,>4-> <ees ees,>->}
        {<d b f>8 f <d b f> f}
    }
    <d b f> f <d b f> f |
    <d b f> f <d b f> f |
    <d b f> f <d b f> f |
    <d b f> f <d b f> f |
    <f, b d f>4\arpeggio r\fermata | % fin
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
    first-page-number = 91
    print-first-page-number = ##t
    ragged-last-bottom = ##f
    %#(set-paper-size "a4")
}
