\version "2.10.25"
\header {
    title = \markup \center-align { \bigger "La Traviata" " " }
    subtitle = "Valzer e duetto"
    composer = "G. Verdi"
    arranger = "Transcripción de N. Toledo"
    piece = "Nº 3"

    %copyright = "Calcografía de la 'Nueva Biblioteca Musical Económica', 1857-1869"
    % Mutopia headers
    mutopiatitle = "La Traviata - N3 Valzer e duetto"
    mutopiacomposer = "VerdiG"
    mutopiainstrument = "Piano"
    source = "Calcografía de la 'Nueva Biblioteca Musical Económica', 1857-1869"
    style = "Romantic"
    copyright = "Public Domain"
    maintainer = "Alberto Corella"
    maintainerEmail = "ppiano@telefonica.net"
 footer = "Mutopia-2008/01/13-1216"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

ossia = \relative c''' {
        \override Staff.Clef #'break-visibility = #all-invisible
        \stopStaff
        s2.*21
        \startStaff
        \override Staff.Clef #'break-visibility = #begin-of-line-visible
        \clef treble
        \key ees \major
        \grace {s8}
        \times 2/3 {c16[ d c} bes8-.] bes-. r c4-. |
        \times 2/3 {c16[ d c} bes8-.] bes-. r c4-. |
        \times 4/5 {c16 d c d c} bes8-.[ aes-. g-. f-.] |
        \override Staff.Clef #'break-visibility = #all-invisible
        \override Staff.KeySignature #'break-visibility = #all-invisible
        \stopStaff
        s2.*5
        \startStaff
        \grace {s8}
        \times 2/3 {g'16[ a g} f8-.] f-. r g4-. |
        \times 2/3 {g16[ a g} f8-.] f-. r g4-. |
        \times 4/5 {g16-3 a-1 g-3 a-1 g-3} f8-.[-2 ees-.-3 d-.-2 c-.]-1 |
        \stopStaff
        }

upper = \relative c'' {
    \clef treble
    \key ees \major
    \time 3/4
    <g bes g'>4->^\markup{\column {\line {\bold "Allegro brillante. ("\note #"2" #1 \bold " = 80)"} " "}} r r |
    <f bes f'>-> r r |
    <aes ees' aes>-> r r |
    <g ees' g>-> r r |
    \set fingeringOrientations = #'(up)
    <ees'-2 f-3>_> <ees-2 g-4>_> <ees-2 aes-5>_> |
    <ees-2 g-4> r <d bes aes f> | % 1.1 - 6
    <f d bes aes>2. |
    <ees bes g>4 r r |
    <g, bes g'>4-> r r |
    <f bes f'>-> r r |
    <aes ees' aes>-> r r |
    <g ees' g>-> r r | % 1.2 - 12
    <f f'> <g ees' g> <aes ees' aes> |
    <g ees' g> r <f bes d> |
    <g bes ees> r r |
    R2. |
    \acciaccatura {fis'8-2} g4-.-3 r r | % 1.3 - 17
    \acciaccatura {g8-2} aes4-.-3 r r |
    \acciaccatura {a8-2} bes4-.-3 r r |
    \acciaccatura {d8-2} ees8-.-3 r \acciaccatura {cis8-2} d8-.-3 r \acciaccatura {b8-2} c8-.-3 r |
    \acciaccatura {a8} bes4-. r c-.-4 | % 1.4 - 21
    \noBreak
    \acciaccatura {d8} c8\trill[ bes] bes-. r c4-. |
    \acciaccatura {d8} c8\trill[ bes] bes-. r c4-. |
    \acciaccatura {d8} c4\trill bes8-.-2 aes-.-3 g-.-2 f-.-1 |
    g4-.-2 r r | % 1.5 - 25
    \acciaccatura {g8} aes4-. r r |
    \acciaccatura {a8} bes4-. r r |
    \acciaccatura {d8} ees8-. r \acciaccatura {cis} d-. r \acciaccatura {b} c-. r |
    \acciaccatura {a8} bes4 r g'-.-3 | % 2.1 - 29
    \acciaccatura {a8-4} g8\trill[ f]-2 f-. r g4-. |
    \acciaccatura {a8} g8\trill[ f] f-. r g4-. |
    \acciaccatura {a8} g4\trill f8-. ees-. d-. c-. |
    \override Fingering #'avoid-slur = #'inside
    \override DynamicLineSpanner #'staff-padding = #3 
    bes8-2\(\< a-1 bes-2 c-3 g'-5 f-4\! | % 2.2 - 33
    ees-3\> d-2 c-1 bes-4 a-3 aes-2\)\! |
    g4-1 r r |
    \acciaccatura {g8-2} aes4-.-3 r r |
    \acciaccatura {a8} bes4-. r r |
    \acciaccatura {d8} ees8-. r \acciaccatura {cis} d-. r \acciaccatura {b} c-. r | % 2.3 - 37
    \acciaccatura {a8} bes4-. r c-. |
    \acciaccatura {d8} c8\trill[ bes] bes-. r c4-. |
    \acciaccatura {d8} c8\trill[ bes] bes-. r c4-. |
    \acciaccatura {d8} c4\trill bes8-. aes-. g-. f-. | % 2.4 - 41
    g4 r r |
    \acciaccatura {g8} aes4-. r r |
    \acciaccatura {a8} bes4-. r r |
    \acciaccatura {d8} ees8-> r d-> r des-> r | % 2.5 - 45
    c4 aes'8-. g-. f-. ees-. |
    d-. c-. bes-. aes-. g-. f-. |
    ees4 ees8-. g-. bes-. ees-.  |
    ees,4 r r | % 2.6 - 49
    \override DynamicLineSpanner #'staff-padding = #1
    <g c ees g>\arpeggio->\f \override DynamicLineSpanner #'staff-padding = #1.5 f'8-.\p ees-. d-. c-. |
    b16( d8) r16 aes16( b8) r16 f4-. |
    \override DynamicLineSpanner #'staff-padding = #1
    <b, d f aes>\arpeggio\f \override DynamicLineSpanner #'staff-padding = #2 g'8-.\p f-. ees-. d-. |
    ees16( g8) r16 c,16( ees8) r16 g,4-> | % 3.1 - 53
    \override DynamicLineSpanner #'staff-padding = #1
    <g' c ees g>\arpeggio->\f \override DynamicLineSpanner #'staff-padding = #1.5 f'8-.\p ees-. d-. c-. |
    bes16( d8) r16 g,( bes8) r16 d,4-> |
    a'16( c8) r16 fis,( a8) r16 d,4-> |
    <g d bes> r r |
    <g c ees g>\arpeggio-> f'8-.\p ees-. d-. c-. | % 3.2 - 58
    b16( d8) r16 aes16( b8) r16 f4-. |
    <b, d f aes>\arpeggio g'8-. f-. ees-. d-. |
    ees16( g8) r16 c,16( ees8) r16 g,4-> | 
    <g' c ees g>\arpeggio-> \override DynamicLineSpanner #'staff-padding = #1.5 f'8-.\p ees-. d-. c-. | % 3.3 - 62
    bes16( d8) r16 g,( bes8) r16 d,4-> |
    a'16( c8) r16 fis,( a8) r16 d,4-> |
    <g d bes> r r |
    \acciaccatura {fis8} g4\pp r r | % 3.4 - 66
    \acciaccatura {g8} aes4-. r r |
    \acciaccatura {a8} bes4-. r r |
    \acciaccatura {d8} ees8-. r \acciaccatura {cis8} d8-. r \acciaccatura {b8} c8-. r |
    \acciaccatura {a8} bes4-. r c-. | 
    \acciaccatura {d8} c8\trill[ bes] bes-. r c4-. | % 3.5 % 71
    \acciaccatura {d8} c8\trill[ bes] bes-. r c4-. |
    \acciaccatura {d8} c4\trill bes8-. aes-. g-. f-. |
    g4-. r r |
    \acciaccatura {g8} aes4-. r r |
    \acciaccatura {a8} bes4-. r r | % 3.6 - 76
    \acciaccatura {d8} ees8-. r \acciaccatura {cis} d-. r \acciaccatura {b} c-. r |
    \acciaccatura {a8} bes4 r g'-. |
    \acciaccatura {a8} g8\trill[ f] f-. r g4-. |
    \acciaccatura {a8} g8\trill[ f] f-. r g4-. | % 4.1 - 80
    \acciaccatura {a8} g4\trill f8-. ees-. d-. c-. |
    \override DynamicLineSpanner #'staff-padding = #3 
    bes8\(\< a bes c g' f\! | 
    ees\> d c bes a aes\)\! |
    g4 r r | % 4.2 - 84
    \acciaccatura {g8} aes4-. r r |
    \acciaccatura {a8} bes4-. r r |
    \acciaccatura {d8} ees8-. r \acciaccatura {cis} d-. r \acciaccatura {b} c-. r |
    \acciaccatura {a8} bes4-. r c-. |
    \acciaccatura {d8} c8\trill[ bes] bes-. r c4-. | % 4.3 - 89
    \acciaccatura {d8} c8\trill[ bes] bes-. r c4-. |
    \acciaccatura {d8} c4\trill bes8-. aes-. g-. f-. |
    g4 r r |
    \acciaccatura {g8} aes4-. r r |
    \acciaccatura {a8} bes4-. r r | % 4.4 - 94
    \acciaccatura {d8} ees8-> r d-> r des-> r |
    c4 aes'8-. g-. f-. ees-. |
    d-. c-. bes-. aes-. g-. f-. |
    ees4 ees8-. g-. bes-. ees-.  |
    ees,4 r ees-> | % 4.5 - 99
    \bar "|:"
    \key aes \major
    ees8([ ees')] ees r ees,4-. |
    ees8([ d')] d r ees,4-. |
    ees8([ des'!)] des r ees,4-. |
    ees8([ c')] c r ees,4-. |
    ees8([ bes')] bes r ees,4-. | % 5.1 - 104
    ees8([ a)] a r ees4-. |
    ees8([ bes')] bes([ b)] b( c) |
    c([ des)] des([ d)] d( ees) |
    ees,([ ees')] ees r ees,4-. |
    ees8([ d')] d r ees,4-. | % 5.2 - 109
    ees8([ des'!)] des r ees,4-. |
    ees8([ c')] c r ees,4-. |
    bes'8[( g']) g([ f]) f( ees) |
    ees[( des]) des[( c]) c( bes) | % 5.3 - 113
    aes4 aes8-. c-. ees-. aes-. |
    aes,4 r r |
    \bar ":|"
    \key des \major
    \override DynamicLineSpanner #'staff-padding = #2
    <f aes des f>4\arpeggio\f <f, aes>8-.\p <f aes>-. <f aes>-. <f aes>-. |
    <f aes> r <ges bes> r <f aes> r | % 5.4 - 117
    <f' aes des f>4\arpeggio\f <f, aes>8-.\p <f aes>-. <f aes>-. <f aes>-. |
    <f aes> r <ges bes> r <f aes> r |
    <ges aes>4-> <ges ees'>-> <ges aes>-> |
    <ges ees'>-> <ges aes>-> <ges ees'>-> |
    <ges aes> ges'16\( f ees des\) c8 r | % 5.5 - 122
    r4 bes'16\( aes ges f\) ees8 r |
    <f aes des f>4\arpeggio\f <f, aes>8-.\p <f aes>-. <f aes>-. <f aes>-. |
    <f aes> r <ges bes> r <f aes> r |
    <f' aes des f>4\arpeggio\f <f, aes>8-.\p <f aes>-. <f aes>-. <f aes>-. |
    <f aes> r <ges bes> r <f aes> r | % 5.6 - 127
    <ges aes ees'>4 ges'16\( f ees des\) c8 r |
    ees8-.-2 f-.-1 ges-. aes-. bes-. c-.-1 |
    des4-3 r r |
    \bar "||"
    \key f \minor
    \revert Fingering #'avoid-slur
    c,8-1([ bes'-5)] bes r r4 |
    c,8-1([ aes'-4)] aes r r4 | % 6.1 - 132
    b,8-1([ g'-3)] g r r4 |
    e8-3([ g-5)] c,-1 r r4 |
    c8([ bes')] bes r r4 |
    c,8([ aes')] aes r r4 |
    b,8([ g')] g r r4 |
    c,8-1([ c'-5)] c r r4 | % 6.2 - 138
    c,8([ c')] c r r4 |
    c,8([ c')] c r r4 |
    c,8([ c')] c r r4 |
    c,8([ c')] c r r4 |
    c,8([ c')] c r r4 |
    c,8([ c')] c r r4 | % 6.3 - 144
    c,8([ c')] c r r4 |
    c,8-1([ c'-5)] c-5 r c,4-. |
    c8-1([ b'-5)] b r c,4-. |
    c8-1([ bes'!-4)] bes r c,4-. |
    c8-1([ a'-5)] a r c,4-. |
    c8-1([ g'-4)] g r c,4-. | % 6.4 - 150
    c8-1([ fis-3)] fis r c4-. |
    c8-5(\< g'-3) g-2([ aes!-3)] aes( a) |
    a( bes) bes([ b)] b-3( c-4)\! |
    c,8-1([ c'-5)] c-5 r c,4-. |
    c8([ b')] b r c,4-. | % 6.5 - 155
    c8([ bes')] bes r c,4-. |
    c8([ a')] a r c,4-. |
    g'8-1( e'-5) e-5([ d-4)] d-4( c-3) |
    c-3( bes-2) bes-3([ a-2)] a( g) |
    f4-1 f8-1-. a-. c-. f-. |
    f,2 f4-3 | % 6.6 - 161
    f2.-5( f,4) r\fermata r8. f16-1 |
    \bar "||"
    \key f \major
    \time 3/8
    f4^\markup{\column {\line {\bold "Andantino. ("\note #"8" #1 \bold " = 96)"} " "}}-1 r16 g-2 |
    bes8-4( a) r16 bes\( |
    d4-4 d8 |
    c4\) r8 | % 7.1 - 167
    <a c a'>8 <g bes g'> <f a f'> |
    << {c'4 bes8} \\ {<e e,>4.} >> |
    << {a,8 ~ a16\( gis-2 a-3 bes-4\)} \\ {f8 r r} \\ {\once \override NoteColumn #'force-hshift = #-1 f'8 s4} >> |
    a,4-3 r8 |
    f4 f16. g32 | % 7.2 - 172
    bes8( a) r16 bes |
    d4.( |
    c4) r8 |
    c4-3\( \stemDown b16. a32\) |
    \stemNeutral
    d4-3\( c16. b32\) | % 7.3 - 177
    << {\override DynamicLineSpanner #'staff-padding = #2 e4.-4(\<} \\ {s4.} >> |
    << {f4-5)\(\!\> e16. d32\)\! } \\ {a4.} >> |
    << {e'4-5\( d16.-4 c32-5\)} \\ {<bes g>4.} >> |
    a8-1 bes-3 g-1 |
    a8.-3 g16 f8 | % 7.4 - 182
    << {f'4\( e16. d32\)} \\ {a4.} >> |
    << {e'4\( d16. c32\)} \\ {<bes g>4.} >> |
    a8.-1[ bes16-3] \times 2/3 {bes16-3 a g} |
    a4-3( f8)-1 |
    << {des'8-4\( des des\)} \\ {f,4.-1} >> | % 7.5 - 187
    << {c'4-3( f,8)-1} \\ {f4-1 r8} >> |
    << {des'8-4 des16\( des des des\)} \\ {f,4.} >> |
    << {c'4-5( f8-5)} \\ {f,4.-1} >> |
    a'8(-5 g16-4) \once\override TextScript #'staff-padding = #2 r^\markup{\italic "con gracia."} \times 2/3 {f16-. e-. d-.} | % 7.6 - 191
    d8->-3( c16) r \times 2/3 {c16-.-2 f-.-3 a,-.} |
    d8->-4( c16) r \times 2/3 {a16-.-1 bes-.-3 g-.-2} |
    f4-1 r8 |
    \times 2/3 {<a-3 c-5>16-.[ <g bes>-. <f a>-.]} <a-3 c-5>16-. r <a c f a>-> r | % 8.1 - 195
    << {f'8.\([ c16-3] c16\) r} \\ {<a f>4\p ~ <a f>16 r} >> |
    \times 2/3 {<a c>16-.[ <g bes>-. <f a>-.]} <a c>16-. r <a c f a>-> r |
    << {f'4( c16)[ r32 c-2]} \\ {<a f>4\p ~ <a f>16 r} >> | % 8.2 - 198
    \override TextSpanner #'edge-text = #'("con 8va ad libitum" . "") \override TextSpanner #'padding = #2.5 \override TextSpanner #'dash-period = #1.0 
    c16-1[ r32 \startTextSpan \set stemLeftBeamCount = #2 bes'64-4( a-2)] g16-.-1[ r32 \set stemLeftBeamCount = #2 g64-4( f-3]) e16-.-2[ r32 \set stemLeftBeamCount = #2 e64-3( d-2)] |
    c16-1[ r32 \set stemLeftBeamCount = #2 bes'64-4( a-3)] g16-.-2[ r32 \set stemLeftBeamCount = #2 g64( f]) e16-.[ r32 \set stemLeftBeamCount = #2 e64( d)] |
    c16-.-1[ r32 \set stemLeftBeamCount = #2 e64-3( d)] c16-. bes-.-3 a-. g-. | % 8.3 - 201
    g32-.-5[ f-. e-. d-.] c8 \stopTextSpan r |
     \times 2/3 {<a' c>16-.[ <g bes>-. <f a>-.]} <a c>16-. r <a c f a>-> r |
    << {f'8.\([ c16] c16\) r} \\ {<a f>4\p ~ <a f>16 r} >> | % 8.4 - 204
    \times 2/3 {<a c>16-.[ <g bes>-. <f a>-.]} <a c>16-. r <a c f a>-> r |
    << {f'4( c16)[ r32 c-2]} \\ {<a f>4\p ~ <a f>16 r} >> |
    \override TextSpanner #'edge-text = #'("con 8va ad libitum" . "") \override TextSpanner #'padding = #2.5 \override TextSpanner #'dash-period = #1.0 
    c16-1[ r32 \startTextSpan \set stemLeftBeamCount = #2 bes'64-4( a-2)] g16-.-1[ r32 \set stemLeftBeamCount = #2 g64-4( f-3]) e16-.-2[ r32 \set stemLeftBeamCount = #2 e64-3( d-2)] | % 8.5 - 207
    c16-1[ r32 \set stemLeftBeamCount = #2 bes'64-4( a-3)] g16-.-2[ r32 \set stemLeftBeamCount = #2 g64( f]) e16-.[ r32 \set stemLeftBeamCount = #2 e64( d)] |
    c16-.-1[ r32 \set stemLeftBeamCount = #2 e64-3( d)] c16-. bes-.-3 a-. g-. \stopTextSpan |
    << {f'4-5( c8-3)} \\ {f,4-1 r8} >> | % 8.6 - 210
    des'8-.\(-4 des-. des-.\) |
    << {c4(-5 f,8)} \\ {r16. f32-2 \times 2/3 {f16[ e f]} \times 2/3 {f16 e f} } >> |
    << {des'8-4 des16\( des des des\)} \\ {f,8-1 f r} >> 
    << {c'4(-5 f8)-5} \\ {r16. f,32 \times 2/3 {f16[ e f]} \times 2/3 {f16 f a} } >> | % 9.1 - 214
    <c-1 a'-5>8( <bes-2 g'-5>16) r \times 2/3 {<d-2 f-4> <c e> <bes d>} |
    <bes d>8( <a c>16) r \times 2/3 {<a c>16 <c f> <a f>} |
    <bes-3 d-5>8( <bes-3 c-4>16) r \tupletDown \times 2/3 {<a-4 fis-2>16 \override Fingering #'padding = #1 <g-3 bes-5> <e-1 g-3> \revert Fingering #'padding } \tupletNeutral |
    << {f!4-2 s8} \\ {f8 ~ \times 2/3 {\phrasingSlurUp f16\( a^\markup{\finger 3} \set stemRightBeamCount = #1 c^\markup{\finger 1}} \times 2/3 {\set stemLeftBeamCount = #1 f16^\markup{\finger 3} a^\markup{\finger 5} g\)}} >> | % 9.2 - 218
    f8-3 ~ \times 2/3 {f16-5\(\override Fingering #'avoid-slur = #'inside a,-3 \set stemRightBeamCount = #1 c} \times 2/3 {\set stemLeftBeamCount = #1 ees a-3 \revert Fingering #'avoid-slur g\)} |
    f8 ~ \times 2/3 {f16-3 e ees} \times 2/3 {r16 d-3 des-2} |
    << {e!8-5( \once\override Fingering #'avoid-slur = #'inside e-5 e)} \\ {\once\override TextScript #'padding = #2 \times 2/3 {r16_\markup{\italic decresc.} c b} \times 2/3 {r16 bes a} \times 2/3 {r16 aes g}} >> | % 9.3 - 221
    << {f'8 s4} \\ {f,8 ~ \times 2/3 {\phrasingSlurUp f16\( a \set stemRightBeamCount = #1 c } \times 2/3 {\set stemLeftBeamCount = #1 f16 a g\)}} >> | 
    f8 ~ \times 2/3 {f16\(\override Fingering #'avoid-slur = #'inside a,-3 \set stemRightBeamCount = #1 c} \times 2/3 {\set stemLeftBeamCount = #1 ees-3 a \revert Fingering #'avoid-slur g\)} |
    f8-3 ~ \times 2/3 {f16-5 e ees} \times 2/3 {r16 d des} | % 9.4 - 224
    << {e!8-5( e e)} \\ { \times 2/3 {r16 c b} \times 2/3 {r16 bes a} \times 2/3 {r16 aes g}} >> |
    << {f'8 r s} \\ {f,8 r \times 2/3 {\set fingeringOrientations = #'(left) <bes-2 e-5>16-. <bes d>-. <bes e>-.}} >> |
    \set fingeringOrientations = #'(left) <a-1 f'-5>8( <a c>16) r \times 2/3 {<bes e>16-. <bes d>-. <bes e>-.}  |
    <a f'>8 r r | % 9.5 - 228
    \cadenzaOn
    \override TupletNumber #'transparent = ##t
    c4-1 ~ \times 4/3 {c32[ \set stemLeftBeamCount = #2 \set stemRightBeamCount = #2 r \set stemLeftBeamCount = #2 bes'64(-4 a-3)]} \times 4/3 {g32-2[\> \set stemLeftBeamCount = #2 \set stemRightBeamCount = #2 r \set stemLeftBeamCount = #2 g64-4( f-3)]} \times 4/3 {e32-2[ \set stemLeftBeamCount = #2 \set stemRightBeamCount = #2 r \set stemLeftBeamCount = #2 e64-4( d)]\!} \times 4/3 {cis32-2[ \set stemLeftBeamCount = #2 \set stemRightBeamCount = #2 r \set stemLeftBeamCount = #2 a'64-4( g-3)]} \times 4/3 {f32-2[\> \set stemLeftBeamCount = #2 \set stemRightBeamCount = #2 r \set stemLeftBeamCount = #2 f64( e)]} \times 4/3 {d32[ \set stemLeftBeamCount = #2 \set stemRightBeamCount = #2 r \set stemLeftBeamCount = #2 d64-3( c-2)]\!} \times 4/3 {b32[ \set stemLeftBeamCount = #2 \set stemRightBeamCount = #2 r \set stemLeftBeamCount = #2 g'64-4( f)]} \times 4/3 {e32-1[\> \set stemLeftBeamCount = #2 \set stemRightBeamCount = #2 r \set stemLeftBeamCount = #2 e64-3( d)]} \times 4/3 {c32[ \set stemLeftBeamCount = #2 \set stemRightBeamCount = #2 r \set stemLeftBeamCount = #2 c64-3( bes-2)]\!}  % 10.1 - 229
    a16-1 f'-5 d-3 r32 bes-2[ c-1 d e f-1 g a] bes16 << {bes,[ bes bes] bes8 c\fermata} \\ {d,16[ d d] d8 e\fermata} >>
    \cadenzaOff
    \bar "|"
    << {\set fingeringOrientations = #'(left) <a-3 f-1>4.} \\ {r8 \set fingeringOrientations = #'(left) <f-5 c-3 a-1>\pp <f c a>} >> | % 10.2 - 230
    << {<f a>4.} \\ {r8 <f c a> <f c a>} >> |
    << {R4.^\markup{\musicglyph #'"scripts.ufermata"}} \\ {<f c a>4  r8\fermata}>> |
    \bar ".|"
    \key ees \major
    \time 3/4
    \override DynamicLineSpanner #'staff-padding = #1
    <g' c ees g>4\arpeggio->\f^\markup{\bold "1º Tempo."} \override DynamicLineSpanner #'staff-padding = #1.5 f'8-.\p ees-. d-. c-. |
    b16(-3 d8) r16 aes16( b8) r16 f4-> | % 10.3 - 234
    <b, d f aes>\arpeggio g'8-. f-. ees-. d-. |
    ees16( g8) r16 c,16( ees8) r16 g,4-> | 
    <g' c ees g>\arpeggio-> \override DynamicLineSpanner #'staff-padding = #1.5 f'8-.\p ees-. d-. c-. |
    bes16( d8) r16 g,( bes8) r16 d,4-> | % 10.4 - 238
    a'16( c8) r16 fis,( a8) r16 d,4-> |
    <g d bes> r r |
    \acciaccatura {fis8} g4\pp r r |
    \acciaccatura {g8} aes4-. r r |
    \acciaccatura {a8} bes4-. r r | % 10.5 - 243
    \acciaccatura {d8} ees8-. r \acciaccatura {cis8} d8-. r \acciaccatura {b8} c8-. r |
    \acciaccatura {a8} bes4-. r c-. | 
    \acciaccatura {d8} c8\trill[ bes] bes-. r c4-. |
    \acciaccatura {d8} c8\trill[ bes] bes-. r c4-. |
    \acciaccatura {d8} c4\trill bes8-. aes-. g-. f-. |
    g4-. r r | % 11.1 - 249
    \acciaccatura {g8} aes4-. r r |
    \acciaccatura {a8} bes4-. r r |
    \acciaccatura {d8} ees8-. r \acciaccatura {cis} d-. r \acciaccatura {b} c-. r |
    \acciaccatura {a8} bes4 r g'-. |
    \acciaccatura {a8} g8\trill[ f] f-. r g4-. |
    \acciaccatura {a8} g8\trill[ f] f-. r g4-. | % 11.2 - 255
    \acciaccatura {a8} g4\trill f8-. ees-. d-. c-. |
    \override DynamicLineSpanner #'staff-padding = #3 
    bes8\(\< a bes c g' f\! | 
    ees\> d c bes a aes\)\! |
    g4 r r |
    \acciaccatura {g8} aes4-. r r |
    \acciaccatura {a8} bes4-. r r | % 11.3 - 261
    \acciaccatura {d8} ees8-. r \acciaccatura {cis} d-. r \acciaccatura {b} c-. r |
    \acciaccatura {a8} bes4-. r c-. |
    \acciaccatura {d8} c8\trill[ bes] bes-. r c4-. |
    \acciaccatura {d8} c8\trill[ bes] bes-. r c4-. |
    \acciaccatura {d8} c4\trill bes8-. aes-. g-. f-. |
    g4 r r | % 11.4 - 267
    \acciaccatura {g8} aes4-. r r |
    \acciaccatura {a8} bes4-. r r | 
    \acciaccatura {d8} ees8-> r d-> r des-> r |
    c4 \once\override Staff.OttavaBracket #'padding = #3 #(set-octavation 1) aes'8-.-3 g-. f-. ees-.-3 |
    d-. c-. bes-.-4 aes-. g-. f-. |
    ees4-2 r <ees'-2 g-4> | % 11.5 - 273
    <ees-2 g-4>8([ <d-1 f-3>)] <d f>-. r bes'4-5-> |
    <aes,-2 c-4>8([ <g bes>)] <g bes>-. r bes'4-5-> |
    <g,-2 bes-4>8([ <f aes>)] <f aes>-. r bes'4-5-> |
    <f,-2 aes-4>8([ <ees g>)] <ees g>-. r bes''4-5-> |
    <ees, g>8([ <d f>)] <d f>-. r bes'4-> |
    <aes, c>8([ <g bes>)] <g bes>-. r bes'4-> | % 11.6 - 279
    <g, bes>8([ <f aes>)] <f aes>-. r bes'4-> #(set-octavation 0) |
    <f, aes>8([ <ees g>)] <ees g>-. r ees4-1-. |
    \repeat volta 2 {
        \override Fingering #'avoid-slur = #'inside
        ees8-1([ ees')] ees r ees,4-. |
        ees8([ ees')] ees r ees,4-. |
        ees8([ ees')] ees r <ees ees,>4 | % 12.1 - 284
        <f-5 f,-1>4(-> <ees-4 ees,-1>8) r f,4-1-. |
        f8([ f')] f r f,4-. |
        f8([ f')] f r f,4-. |
        f8([ f')] f r <f f,>4 |
        <g g,>(-> <f f,>8) r g,4-. |
        #(set-octavation 1) g8[( g']) g r g,4-. | % 12.2 - 290
        g8[( g']) g r g,4-. |
        g8[( g']) g r <g g,>4 |
        <aes aes,>4-> <g g,>8 r <f f,>4 |
        ees8-3([ d)] f r ees r |
        bes8-2[( a-1)] c-4 r bes r #(set-octavation 0) |
        g8-2([ aes!)] c, r d r | % 12.3 - 296
    }
    \alternative {
        {ees4-3 r ees}
        {ees4 r bes}
    }
    bes8([ bes')] bes r bes,4-. |
    bes8([ bes')] bes r bes,4-. |
    \times 2/3 {c8-1[( ees-2 aes-4])} c8-5 r <d-5 f,-2 d-1>4 |
    <ees-5 g,-2 ees-1> r bes, | % 12.4 - 302
    bes8([ bes')] bes r bes,4-. |
    bes8([ bes')] bes r bes,4-. |
    \times 2/3 {c8[( ees aes])} c8 r <d f, d>4 |
    <ees g, ees> bes,-.\p bes'-. |
    r bes,-. bes'-. |
    r bes,-. << {bes'4} \\ {\set fingeringOrientations = #'(left) <bes-5 ees,-2>_(} >> |
    << {s2.} \\ {d,2.^>^\markup{\finger 1})^(}>> | % 12.5 - 309
    << {s4} \\ {ees4-3)} >> bes,-.-1 bes'-.-5\pp |
    r bes,-. bes'-. |
    r bes, << {bes'4} \\ {<bes ees,>_(} >> |
    << {s2.} \\ {\stemUp d,2.^>^\markup{\finger 13})^(}>> |
    << {s4} \\ {<ees g,>)\f} >> <ees' g ees'>8\ff <ees g ees'> <ees g ees'>4 |
    <ees g ees'> <ees g ees'> <ees g ees'> |
    <ees g ees'>  r r |
    <ees g ees'>  r r  % fin
    \bar "|."
}
lower = \relative c {
    \clef bass
    \key ees \major
    \time 3/4
    <ees ees'>4-> r r |
    <d d'>-> r r |
    <c c'>-> r r |
    <bes bes'>-> r r |
    <aes aes'>-> <bes bes'>-> <ces ces'>-> |
    <bes bes'> r <bes bes'> | % 1.1 - 6
    <bes bes'>2. |
    <ees ees,>4 r r |
    <ees ees'>-> r r |
    <d d'>-> r r |
    <c c'>-> r r |
    <bes bes'>-> r r | % 1.2 - 12
    <aes aes'> <bes bes'> <ces ces'> |
    <bes bes'> r <bes bes,> |
    <ees ees,>8 r <g bes ees> r <g bes ees> r |
    ees r <g bes ees> r <g bes ees> r |
    ees r <g bes ees> r <g bes ees> r | % 1.3 - 17
    ees r <aes c ees> r <aes c ees> r |
    ees r <g bes ees> r <g bes ees> r |
    ees r <g bes ees> r <g bes ees> r |
    bes, r <f' aes bes d> r <f aes bes d> r | % 1.4 - 21
    bes, r <f' aes bes d> r <f aes bes d> r |
    bes, r <f' aes bes d> r <f aes bes d> r |
    bes, r <f' aes bes d> r <f aes bes d> r |
    ees r <g bes ees> r <g bes ees> r | % 1.5 - 25
    ees r <aes c ees> r <aes c ees> r |
    ees r <g bes ees> r <g bes ees> r |
    ees r <g bes ees> r <g bes ees> r |
    f r <bes d> r <bes d> r | % 2.1 - 29
    ees, r <a c ees> r <a c ees> r |
    f r <bes d> r <bes d> r |
    f r <a c> r <a c> r |
    <bes f d bes>4 r r | % 2.2 - 33
    R2. |
    ees,8 r <g bes ees> r <g bes ees> r |
    ees r <aes c ees> r <aes c ees> r |
    ees r <g bes ees> r <g bes ees> r |
    ees r <g bes ees> r <g bes ees> r | % 2.3 - 37
    bes, r <f' aes bes d> r <f aes bes d> r |
    bes, r <f' aes bes d> r <f aes bes d> r |
    bes, r <f' aes bes d> r <f aes bes d> r |
    bes, r <f' aes bes d> r <f aes bes d> r | % 2.4 - 41
    ees r <g bes ees> r <g bes ees> r |
    ees r <aes c ees> r <aes c ees> r |
    ees r <g bes ees> r <g bes ees> r |
    ees r <g bes ees> r <g bes ees> r | % 2.5 - 45
    aes,8 r <f' aes c> r <f aes c> r |
    bes, r <f' aes bes d> r <f aes bes d> r |
    ees r <ees g bes ees> r <ees g bes ees> r |
    <ees g bes ees>4 r r | % 2.6 - 49
    <c ees g c>-> <g' c ees>8 r <g c ees> r |
    d r <f aes b> r <f aes b> r |
    <f d b g>4 <d f g b>8 r <d f g b> r |
    c r <ees g c> r <ees g c> r | % 3.1 - 53
    <c ees g c>4-> <g' c ees>8 r <g c ees> r |
    d r <g bes d> r <g bes d> r |
    d r <fis a c> r <fis a c> r |
    <g d bes g>4 r r |
    <c, ees g c>-> <g' c ees>8 r <g c ees> r | % 3.2 - 58
    d r <f aes b> r <f aes b> r |
    <f d b g>4-> <d f g b>8 r <d f g b> r |
    c r <ees g c> r <ees g c> r | 
    <c ees g c>4-> <g' c ees>8 r <g c ees> r | % 3.3 - 62
    d r <g bes d> r <g bes d> r |
    d r <fis a c> r <fis a c> r |
    <g d bes g>4 r r |
    ees8 r <g bes ees> r <g bes ees> r | % 3.4 - 66
    ees r <aes c ees> r <aes c ees> r |
    ees r <g bes ees> r <g bes ees> r |
    ees r <g bes ees> r <g bes ees> r |
    bes, r <f' aes bes d> r <f aes bes d> r |
    bes, r <f' aes bes d> r <f aes bes d> r | % 3.5 - 71
    bes, r <f' aes bes d> r <f aes bes d> r |
    bes, r <f' aes bes d> r <f aes bes d> r |
    ees r <g bes ees> r <g bes ees> r |
    ees r <aes c ees> r <aes c ees> r |
    ees r <g bes ees> r <g bes ees> r | % 3.6 - 76
    ees r <g bes ees> r <g bes ees> r |
    f r <bes d> r <bes d> r | 
    ees, r <a c ees> r <a c ees> r |
    f r <bes d> r <bes d> r | % 4.1 - 80
    f r <a c> r <a c> r |
    <bes f d bes>4 r r | 
    R2. |
    ees,8 r <g bes ees> r <g bes ees> r | % 4.2 - 84
    ees r <aes c ees> r <aes c ees> r |
    ees r <g bes ees> r <g bes ees> r |
    ees r <g bes ees> r <g bes ees> r | 
    bes, r <f' aes bes d> r <f aes bes d> r |
    bes, r <f' aes bes d> r <f aes bes d> r | % 4.3 - 89
    bes, r <f' aes bes d> r <f aes bes d> r |
    bes, r <f' aes bes d> r <f aes bes d> r | 
    ees r <g bes ees> r <g bes ees> r |
    ees r <aes c ees> r <aes c ees> r |
    ees r <g bes ees> r <g bes ees> r | % 4.4 - 94
    ees r <g bes ees> r <g bes ees> r | 
    aes,8 r <f' aes c> r <f aes c> r |
    bes, r <f' aes bes d> r <f aes bes d> r |
    ees r <ees g bes ees> r <ees g bes ees> r |
    <ees g bes ees>4 r r | % 4.5 - 99
    \key aes \major
    <aes aes,>8 r <aes ees'> r <aes ees'> r |
    <aes aes,> r <aes ees' f> r <aes ees' f> r |
    <aes aes,> r <aes ees' g> r <aes ees' g> r |
    <aes aes,> r <aes ees' aes> r <aes ees' aes> r |
    ees r <g bes ees> r <g bes ees> r | % 5.1 - 104
    ees r <fis a ees'> r <fis a ees'> r |
    ees r <g bes des> r <g bes des> r |
    ees r <g bes des> r <g bes des> r |
    <aes aes,> r <aes ees'> r <aes ees'> r |
    <aes aes,> r <aes ees' f> r <aes ees' f> r | % 5.2 - 109
    <aes aes,> r <aes ees' g> r <aes ees' g> r |
    <aes aes,> r <aes ees' aes> r <aes ees' aes> r |
    des, r <f bes des> r <f bes des> r |
    ees r <g bes des> r <g bes des> r | % 5.3 - 113
    <aes c> r <aes ees c aes>4 <aes ees c aes> |
    <aes ees c aes> r r |
    \key des \major
    <des, aes des,>4 <f aes des>8 r <f aes des> r |
    des r <f aes des> r <f aes des> r | % 5.4 - 117
    <des aes des,>4 <f aes des>8 r <f aes des> r |
    des r <f aes des> r <f aes des> r |
    aes, r <ges' aes c> r <ges aes c> r |
    aes, r <ges' aes c> r <ges aes c> r |
    aes, r <ges' aes c> r <ges aes c> r | % 5.5 - 122
    aes, r <ges' aes c> r <ges aes c> r |
    <des aes des,>4 <f aes des>8 r <f aes des> r |
    des r <f aes des> r <f aes des> r |
    <des aes des,>4 <f aes des>8 r <f aes des> r |
    des r <f aes des> r <f aes des> r | % 5.6 - 127
    aes, r <ges' aes c> r <ges aes c> r |
    aes, r <ges' aes c> r <ges aes c> r |
    <des f aes des>4 r r |
    \key f \minor
    e8 r <g bes c> r <g bes c> r |
    f r <aes c> r <aes c> r | % 6.1 - 132
    g,8 r <f'g b> r <f g b> r |
    c r <e g c> r <e g c> r |
    e8 r <g bes c> r <g bes c> r |
    f r <aes c> r <aes c> r |
    g,8 r <f'g b> r <f g b> r |
    c r <g' c e> r <g c e> r | % 6.2 - 138
    c, r <aes' c f> r <aes c f> r |
    c, r <g' c e> r <g c e> r |
    c, r <aes' c f> r <aes c f> r |
    <c, e g e'>4\arpeggio r r |
    R2. |
    R2. | % 6.3 - 144
    R2. |
    <f f,>8^\markup{\italic{un poco marcato.}} r \set fingeringOrientations = #'(left) <f-5 c'-2> r <f c'> r |
    <f f,> r \set fingeringOrientations = #'(up right right) <f-5 c'-2 d-1> r <f c' d> r |
    <f f,> r <f c' e> r <f c' e> r |
    <f f,> r <f c' f> r <f c' f> r |
    c r <g' c e> r <g c e> r | % 6.4 - 150
    c, r <fis a c dis> r <fis a c dis> r |
    c r <g' c e> r <g c e> r |
    c, r <g' c e> r <g c e> r |
    <f f,> r <f c'> r <f c'> r |
    <f f,> r <f c' d> r <f c'd> r | % 6.5 - 155
    <f f,> r <f c' e> r <f c' e> r |
    <f f,> r <f c' f> r <f c' f> r |
    bes, r <g' bes d> r <g bes d> r |
    c, r <g' bes c e> r <g bes c e> r |
    <f a c f> r <f c a f>4 <f c a f> |
    <f c a f> r r | % 6.6 - 161
    R2. |
    R2.^\markup{\musicglyph #"scripts.ufermata"}
    \bar "||"
    \key f \major
    \time 3/8
    <f f,>8 <f a c>-. <f a c>-. |
    <f f,>8 <f a c>-. <f a c>-. |
    <f f,> <f bes d> -.<f bes d>-. |
    <f f,>8 <f a c>-. <f a c>-. | % 7.1 - 167
    c8 <f a c>-. <f a c>-. |
    c <g' bes c>-. <g bes c>-. |
    <f f,> <f a c>-. <f a c>-. |
    <f f,> <f a c>-. <f a c>-. |
    <f f,> <f a c>-. <f a c>-. | % 7.2 - 172
    <f f,> <f a c>-. <f a c>-. |
    <f f,> <f bes d>-. <f bes d>-. |
    <f f,> <f a c>-. <f a c>-. |
    <e e,> <e a c>-. <e a c>-. |
    <e e,> <e gis b d>-. <e gis b d>-. | % 7.3 - 177
    <a e c a>8 r r |
    \set fingeringOrientations = #'(left)
    <f f,> <a-3 c-2 f-1> <a c f> |
    <c, c,> <bes'-3 c-2 e-1> <bes c e> |
    <c, c,> <bes' c e> <bes c e> |
    <f f,> <a c f> <a c f> | % 7.4 - 182
    <f f,> <a c f> <a c f> |
    <c, c,> <bes' c e> <bes c e> |
    <c, c,> <bes' c e> <bes c e> |
    <f f,> <a c f> <a c f> |
    <f f,> <bes-3 des-2> <bes des> | % 7.5 - 187
    <f f,> <a-3 c-1> <a c> |
    <f f,> <bes des> <bes des> |
    <f f,> <a c> <a c> |
    <bes bes,> <bes-3 d-1> <bes d> | % 7.6 - 191
    <c c,> <a c f> <a c f> |
    <c c,> <g bes c e> <g bes c e> |
    <f f,> <f a c> <f a c> |
    <f f,> <f a c> <f a c> | % 8.1 - 195
    <f f,> <f a c> <f a c> |
    <f f,> <f a c> <f a c> |
    <f f,> <f a c> <f a c> | % 8.2 - 198
    c <e bes' c> <e bes' c> |
    c <e bes' c> <e bes' c> |
    c <e bes' c> <e bes' c> | % 8.3 - 201
    <f f,> <f-5 a-3> <f a c> |
    <f f,> <f a c> <f a c> |
    <f f,> <f a c> <f a c> | % 8.4 - 204
    <f f,> <f a c> <f a c> |
    <f f,> <f a c> <f a c> |
    c <e bes' c> <e bes' c> | % 8.5 - 207
    c <e bes' c> <e bes' c> |
    c <e bes' c> <e bes' c> |
    <f f,> <f a c> <f a c> | % 8.6 - 210
    <f f,> <f bes des> <f bes des> |
    <f f,> <f a c> <f a c> |
    <f f,> <f bes des> <f bes des> |
    <f f,> <f a c> <f a c> | % 9.1 - 214
    \stemDown
    <bes, bes,> <g'-4 bes-2 d-1> <g bes d> |
    <c, c,> <f-4 a-2 c-1> <f a c> |
    \stemNeutral
    <c c,> <g' bes c e> <g bes c e> |
    \stemDown
    \times 2/3 {f,16-. a-. c-.} f8-.[ <a-3 c-2 f-1>-.] | % 9.2 - 218
    \times 2/3 {f,16-. a-. c-.} f8-.[ <a c f>-.] |
    \times 2/3 {f,16-. bes-. d-.} f8-.[ <bes d f>-.] |
    \stemNeutral
    <c, c,>8 <g' bes c e> <g bes c e> | % 9.3 - 221
    \stemDown
    \times 2/3 {f,16-. a-. c-.} f8-.[ <a c f>-.] |
    \times 2/3 {f,16-. a-. c-.} f8-.[ <a c f>-.] |
    \times 2/3 {f,16-. bes-. d-.} f8-.[ <bes d f>-.] | % 9.4 - 224
    \stemNeutral
    <c, c,>8 <g' bes c e> <g bes c e> |
    <f a c>8 r \times 2/3 {<bes g c,>16-. <bes g c,>-. <bes g c,>-.} |
    <f-3 a-1>8 r \times 2/3 {<bes g c,>16-. <bes g c,>-. <bes g c,>-.} |
    <f a>8 r r | % 9.5 - 228
    \cadenzaOn
    << {c'4-1 ~ \stemDown c8-5[ \clef treble e-3 g-2] a8-1->[ d,-4 f-2] g8-1->[ c,-4 e-2]} \\ {<g, e c>4} >>
    f'16-1 a,-4 bes-3 r32 g[ a bes c d e-3 f] g16 s8. s4 
    \cadenzaOff
    \clef bass
    \bar "|"
    <f, f,>8\sustainDown r r | % 10.2 - 230
    <f f,>8 r r |
    <f f,>4\sustainUp r8\fermata |
    \bar ".|"
    \key ees \major
    \time 3/4
    <c' g ees c>4-> <g c ees>8 r <g c ees> r |
    d r <f aes b> r <f aes b> r | % 10.3 - 234
    <f d b g>4-> <d f g b>8 r <d f g b> r |
    c r <ees g c> r <ees g c> r | 
    <c ees g c>4-> <g' c ees>8 r <g c ees> r |
    d r <g bes d> r <g bes d> r | % 10.4 - 238
    d r <fis a c> r <fis a c> r |
    <g d bes g>4 r r |
    ees8 r <g bes ees> r <g bes ees> r |
    ees r <aes c ees> r <aes c ees> r |
    ees r <g bes ees> r <g bes ees> r | % 10.5 - 243
    ees r <g bes ees> r <g bes ees> r |
    bes, r <f' aes bes d> r <f aes bes d> r |
    bes, r <f' aes bes d> r <f aes bes d> r |
    bes, r <f' aes bes d> r <f aes bes d> r |
    bes, r <f' aes bes d> r <f aes bes d> r |
    ees r <g bes ees> r <g bes ees> r | % 11.1 - 249
    ees r <aes c ees> r <aes c ees> r |
    ees r <g bes ees> r <g bes ees> r | 
    ees r <g bes ees> r <g bes ees> r |
    f r <bes d> r <bes d> r | 
    ees, r <a c ees> r <a c ees> r |
    f r <bes d> r <bes d> r | % 11.2 - 255
    f r <a c> r <a c> r |
    <bes f d bes>4 r r | 
    R2. |
    ees,8 r <g bes ees> r <g bes ees> r |
    ees r <aes c ees> r <aes c ees> r |
    ees r <g bes ees> r <g bes ees> r | % 11.3 - 261
    ees r <g bes ees> r <g bes ees> r | 
    bes, r <f' aes bes d> r <f aes bes d> r |
    bes, r <f' aes bes d> r <f aes bes d> r |
    bes, r <f' aes bes d> r <f aes bes d> r |
    bes, r <f' aes bes d> r <f aes bes d> r | 
    ees r <g bes ees> r <g bes ees> r | % 11.4 - 267
    ees r <aes c ees> r <aes c ees> r |
    ees r <g bes ees> r <g bes ees> r | 
    ees r <g bes ees> r <g bes ees> r | 
    aes,8 r <f' aes c> r <f aes c> r |
    bes, r <f' aes bes d> r <f aes bes d> r |
    ees r <g bes ees> r <g bes ees> r | % 11.5 - 273
    bes, r <f' aes bes d> r <f aes bes d> r |
    bes, r <g' bes ees> r <g bes ees> r |
    bes, r <f' aes bes d> r <f aes bes d> r |
    ees r <g bes ees> r <g bes ees> r |
    bes, r <f' aes bes d> r <f aes bes d> r |
    bes, r <g' bes ees> r <g bes ees> r | % 11.6 - 279
    bes, r <f' aes bes d> r <f aes bes d> r |
    ees r <g bes ees> r <g bes ees> r |
    \repeat volta 2 {
        ees8 r <g bes des> r <g bes des> r |
        ees r <aes c> r <aes c> r |
        << {\set fingeringOrientations = #'(left) <g-3 bes-2>4( <aes-3 c-1> <bes-4 des-2>)} \\ {\set fingeringOrientations = #'(left) <ees,-5>8 r r4 r} >> | % 12.1 - 284
        << {<des'-2 f-1>4( <c-3 ees-1>8) s4.} \\ {<aes-5>4 ~ <aes-5>8 d,\rest d4\rest} >> |
        f8 r <a c ees> r <a c ees> r |
        f r <bes d> r <bes d> r |
        << {\set fingeringOrientations = #'(left) <a-3 c-1>4( <bes d> <c ees>)} \\ {f,8 r r4 r4} >> |
        << {<ees'-3 g-1>4( <d-3 f-1>8) s4.} \\ {\set fingeringOrientations = #'(left) <bes-5>4 ~ <bes-5>8 d,\rest d4\rest} >> |
        g8 r <b d f> r <b d f> r | % 12.2 - 290
        g r <c-3 ees-2> r <c ees> r |
        << {\set fingeringOrientations = #'(left) <b-3 d-1>4 <c-3 ees-2> <d-2 f-1>} \\ {\set fingeringOrientations = #'(left) <g,-5>8 r r4 r} >> |
        << {<f' aes>4( <ees g>8) s4.} \\ {c4 ~ c8 d,\rest d4\rest} >> |
        <aes' aes,>8 r <aes c f> r <aes c f> r |
        <bes bes,> r <g bes ees> r <g bes ees> r |
        <bes bes,> r <f aes bes d> r <f aes bes d> r | % 12.3 - 296
    }
    \alternative {
        {ees8 r <g bes ees> r <g bes ees> r}
        {<ees g bes ees>4 r r}
    }
    \clef treble
    <bes' d f aes>2.(^\( |
    <ees-3 g-1>4)\) r r |
    \clef bass
    <aes, ees c aes> r <bes f d bes>\arpeggio |
    <bes g ees> r r | % 12.4 - 302
    \clef treble
    <bes d f aes>2.(^\( |
    <ees g>4)\) r r |
    \clef bass
    <aes, ees c aes> r <bes f d bes>\arpeggio |
    <bes g ees> r r |
    \clef treble
    <bes d f aes>4 r r |
    <ees g> r g_(-3 |
    aes2.-2->)( | % 12.5 - 309
    g4-3) r r |
    \clef bass
    <aes, f d bes>4 r r |
    <g ees> r g( |
    aes2.)-> |
    <ees bes ees,>4 <ees g bes>8 <ees g bes> <ees g bes>4 |
    <ees g bes> <ees g bes> <ees g bes>  |
    <ees g bes> r r |
    <ees g bes> r r  % fin
    \bar "|."
}

\score {
    <<
    \new Staff \with {
        \remove "Time_signature_engraver"
        fontSize = #-2
        \override StaffSymbol #'staff-space = #(magstep -2)  
        firstClef = ##f
        }
        {\ossia}
    \new PianoStaff <<
        \new Staff = upper { \upper } 
        \new Staff = lower { \lower }
       >>
    
    >>
       \layout {
         
         
       }
        \midi { }
     }

\paper {
    first-page-number = 15
    print-first-page-number = ##t
    ragged-last-bottom = ##f
    %#(set-paper-size "a4")
}
