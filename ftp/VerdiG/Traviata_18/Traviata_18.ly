\version "2.10.33"
\header {
    title = \markup \center-align { \bigger "La Traviata" " " }
    subtitle = "Scena finale"
    subsubtitle = \markup {\italic "«Prendi... quest'e l'imagine»"}
    composer = "G. Verdi"
    arranger = "Transcripción de N. Toledo"
    piece = "Nº 18"

    %copyright = "Calcografía de la 'Nueva Biblioteca Musical Económica', 1857-1869"
    % Mutopia headers
    mutopiatitle = "La Traviata - N18 Scena finale"
    mutopiacomposer = "VerdiG"
    mutopiainstrument = "Piano"
    source = "Calcografía de la 'Nueva Biblioteca Musical Económica', 1857-1869"
    style = "Romantic"
    copyright = "Public Domain"
    maintainer = "Alberto Corella"
    maintainerEmail = "ppiano@telefonica.net"
 footer = "Mutopia-2008/08/12-1519"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
stemExtend = \once \override Stem #'length = #20
noFlag = \once \override Stem #'flag-style = #'no-flag

upper = \relative c'' {
    \clef treble
    \key a \major
    \time 4/4
    \once\override DynamicLineSpanner #'padding = #2
    cis'8-.-3\p^\markup{\line {\bold "Allegro assai vivo. ("\note #"2" #1 \bold " = 92)"}} c-. b-. bes-.-3 a-.-1 gis-.-3 g-.-1 fis-.-3 |
    f-.-2 e-.-1 dis-.-2 e-.-1 fis-. gis-. a-. b-. |
    cis-.-3 c-. b-. bes-. a-. gis-. g-. fis-. |
    f-. e-. dis-. e-. fis-. gis-. a-. b-. | % 1.1 - 4
    \once\override TextScript #'padding = #2 cis-._\markup{\italic "cresc."} c-. b-. bes-. a-. gis-. g-. fis-. |
    f-. e-. dis-. e-. fis-. gis-. a-. b-. |
    cis-. c-. b-. bes-. a-. gis-. g-. fis-. |
    f-. e-. dis-. e-. fis-. gis-. a-. b-. |
    \once\override DynamicLineSpanner #'padding = #2 e,4.-2\(\p e8-1 d4 cis\) | % 1.2 - 9
    cis4.( b8) cis4.( b8) |
    cis4.( b8) cis4.( b8) |
    a2( gis4) r8 b |
    << {b2 r} \\ {dis,8 <fis a> dis <fis a> dis <fis a> dis <fis a> } >> |
    << {b2 b4. a8} \\ {dis,8 <fis a> dis <fis a> dis <fis a> dis <fis a> } >> | % 1.3 - 14
    << {a4 gis! r2} \\ {d!8-3 e d e d e d e} >> |
    << {r4 b'8 b b4 b8 c} \\ {d,8-3 \set fingeringOrientations = #'(down) <e-2 gis!-1> d <e gis> d <e gis> d <e gis> } >> |
    << {b'4 a r2} \\ {c,8-4 e c e c e c e} >> |
    << {r4 r8 a a4.( e'8)} \\ {c,8 e c e c e c e} >> |
    << {e'2( dis4) r} \\ {\change Staff = lower b,8 \change Staff = upper <e fis!> \change Staff = lower b8 \change Staff = upper <e fis> \change Staff = lower b8 \change Staff = upper <dis fis> \change Staff = lower b8 \change Staff = upper <dis fis> } >> | % 1.4 - 19
    d'!4. d8 d4. d8 |
    d2( c4.) c8 |
    b4. b8 cis4. b8 |
    \bar "|."
    \key c \major
    \repeat "tremolo" 4 <a f c>8 \repeat "tremolo" 4 <a f c>8 |
    <f a c f>8\noBeam a16-2\p\( c-4 a c a c \repeat "tremolo" 4 {a16 c\)} | % 1.5 - 24
    \repeat "tremolo" 4 {a16\( c} \repeat "tremolo" 4 {a16 c\)} |
    \repeat "tremolo" 4 {a16\( c} \repeat "tremolo" 4 {a16 c\)} |
    \repeat "tremolo" 4 {a16\( c} \repeat "tremolo" 4 {a16 c\)} |
    \repeat "tremolo" 4 {a16\( c} \repeat "tremolo" 4 {a16 c\)} |
    \repeat "tremolo" 4 {a16\( c} \repeat "tremolo" 4 {a16 c\)} |
    \repeat "tremolo" 4 {a16\( c} \repeat "tremolo" 4 {a16 c\)} | % 2.1 - 30
    e,8-1\(\< e16-3 dis e dis e dis\) e-1\( fis gis a-4 \stemUp b-1 cis dis e\)\! \stemNeutral |
    <f b, gis>2->\(\> ~ f8\! \once\override Fingering #'avoid-slur = #'inside d-3 b gis-2\) |
    e'4->-5 ~ e16 d\( c b a8-1 gis-2 a-1 b\) | % 2.2 - 33
    c4-3 c32\( b a8.\) c32\( b a8.\) c32\( b a8.\) |
    gis8-3\(\< e16-1 dis-2 e-1 dis e dis\) e\( fis gis a b cis dis e\)\! |
    <f b, gis>2->\(\> ~ f8\! d b gis\) | % 2.3 - 36
    e'4-> ~ e16 d c b a4 r |
    c4 c32\( b a8.\) c32\( b a8.\) c32\( b a8.\) |
    <b gis b,>4 <b e, b>2.-> |
    <b dis, b>4 <b dis, b>2.-> | % 2.4 - 40
    <b e, b>4 <b e, b>2.-> |
    <b dis, b>4 <b dis, b>2.-> |
    <b e, b>4 <b e, b>2.-> |
    <b dis, b>4 <b dis, b>2.-> |
    << {b2 b4 r} \\ {<e, b>4 r r2} >> | % 2.5 - 45
    r4 r8. e'16-5 e4.. e16 |
    e2( e,4) r8 \once\override DynamicLineSpanner #'padding = #2 e'\p |
    e2 cis |
    r4 r8. cis16 cis4.. cis16 |
    cis1 |
    gis2 r |
    <bis fis dis>2\ppp r\fermata | % 2.6 - 52
    \bar "|."
    \key des \major
    \time 3/4
    \once\override MultiMeasureRestText #'padding = #2.5
    R2.^\markup{\line {\bold "Andante sostenuto. ("\note #"4" #1 \bold " = 60)"}} |
    \noBreak
    aes8-2 aes r8. aes16 aes8. aes16 |
    aes8. aes16 aes8 r r8. aes16 |
    aes4 r8. aes16 aes8. aes16 | % 3.1 - 56
    aes8. des16 aes4 r8. aes16 |
    aes4 r8. aes16-2 aes8. aes16 |
    ces4 ces r8. ces16-2\( |
    c!4.. c16-2 fes8. ees16 | % 3.2 - 60
    des4\) r16 des16-2\( ees fes\) << {ges!8.->-5( fes16-5)} \\ {r16 ges,!-1\( aes-1 bes-2\)} >> |
    << {fes'8.-4( ees16-3) ees-2\( ees-. fes-. ges-.\) aes8.->( ges16-4)} \\ {ces,4 ces-1 r16 aes-1\( bes-1 c-1\)} >> | % 3.3 - 62
    << {ges'4( fes16) fes ges aes beses8. beses16} \\ {des,4 des8. des16 des-.\( des-. des-. des-.\)} >> |
    << {beses'4( aes16 aes-. aes-. aes-. aes8.( ges!16)} \\ {ces,4 ces8. ces16 beses-.\( beses-. beses-. beses-.\)} >> | % 3.4 - 64
    << {ges'!4->( fes16) fes fes fes ees8.-5 des16-5} \\ {aes4 aes8. aes16 g-2 ees-1 ees ees} >> |
    << {c'8-4[ r16 \set stemLeftBeamCount = #1 aes,32-3 aes-2]} \\ {ees'8 r} >> aes,8-1[\pp r16 \set stemLeftBeamCount = #1 aes32 aes] aes8[ r16 \set stemLeftBeamCount = #1 aes32 aes] |
    aes8[ r16 \set stemLeftBeamCount = #1 aes32 aes] aes8[_\markup{\italic "dim"} r16 \set stemLeftBeamCount = #1 aes32 aes] aes8[ r16 \set stemLeftBeamCount = #1 aes32 aes] | % 3.5 - 67
    \bar "|."
    \key e \major
    gis'4-2\(\pp^\markup{\line {"Poco piu animato ("\note #"4" #1 \bold " = 76)"}} a-1 ais |
    \noBreak
    b2 e4\) |
    e2( dis4) |
    << {a2^\markup{\finger "15"} r4} \\ {r8 \phrasingSlurUp b,-1\( <dis fis> b <dis fis> b\)} >> | % 4.1 - 71
    gis'4\( a ais |
    b2 e4\) |
    e2( dis4) |
    << {a2 r4} \\ {r8 \phrasingSlurUp b,\( <dis fis> b <dis fis> b\)} >> | % 4.2 - 75
    << {a'4-5-.^\pp a-. a-.} \\ {fis8-3 cis-1 fis cis fis cis} >> |
    << {gis'2-4 a4-5 } \\ {eis8 cis eis cis eis cis } >> |
    << {gis'4-5 fis-4 r} \\ {cis8 a cis a cis a} >> |
    cis'4-2\< dis e |
    e\!( b8) r r16 b-3\( ais b\) | % 4.3 - 80
    c4-4( dis,8-1) r r8. b'16-5 |
    << {e,4-2 s2} \\ {e8 b-1 gis'-3 e-1 b'-3 gis-2} >> |
    \bar "|."
    \key des \major
    << {fes'4-5 fes8-.\( fes-. fes-. fes-.\)} \\ {g,8 s s2} >> |
    << {ees'4-5( aes,-5) r} \\ {aes8-2\( ges!-1 ees-2 \once\override TextScript #'extra-offset = #'(0 . -4.5) c^\markup{\finger "1"} \once\override TextScript #'extra-offset = #'( 0 . -3.5) ees^\markup{\finger "2"}  \once\override TextScript #'extra-offset = #'(0 . -2.5) ges^\markup{\finger "3"} \)} >> | % 4.4 - 84
    << {fes'4 fes8-.\( fes-. fes-. fes-.\)} \\ {g,8 s s2} >> |
    << {ees'2^\markup{\italic "cres"} ~ ees8. aes,16} \\ {aes8\( ges! ees c ees ges\)} >> |
    aes4.\(\< c8-1 des ees\)\! |
    e-.-1 f-. aes2( |
    beses,8-1)( aes-2) r8.aes16-2 f'8.-5( ees16) | % 4.5 - 89
    << {des4 r r} \\ {r8 f,-1-.\( ges-. aes-. bes-. \set fingeringOrientations = #'(up) <aes-2 c-4>-.\)} >> |
    << {f'4-5-.\( f-. f-.\)} \\ {des8-.-3\( c-2-. des-. c-. des-. ees-.\)} >> |
    << {ges2-5( aes4)} \\ {des,4( c8-2)-.\( c-. c-. bes-.-2\)} >> |
    << {ges'4-5 ~ ges8 ges-.\( f-. ees-.\)} \\ {bes4-2( aes8-1)\( bes aes ges\) } >> |
    << {des'4 r r} \\ {f,8 f-.\( ges-. aes-. bes-. c-.\)} >> | % 4.6 - 94
    << {f2-4\( ges8 g\)} \\ {des8-.-2\( c-. des-. f-. ees-. des-.\)} >> |
    << {aes'2\( ges!4} \\ {c,8-.\( bes-. c-. des-. bes!-. c-.\)} >> |
    << {f4\) ~ f8 ges ees f} \\ {aes,8\( g aes bes ges aes\)} >> |
    << {des4} \\ {f,4} >> r4 r |
    << {fes'4 fes8-.\( fes-. fes-. fes-.\)} \\ {g,8 s s2} >> | % 5.1 - 99
    << {ees'4( aes,) r} \\ {aes8\( ges ees c ees ges\)} >> |
    << {fes'4 fes8-.\( fes-. fes-. fes-.\)} \\ {g,8 s s2} >> |
    << {ees'2 ~ ees8 ees} \\ {aes,8\( ges! ees c ees ges\)} >> |
    << {ees'4 ~ ees8 f ges g} \\ {r4 r <ees c>}>> | % 5.2 - 103
    << {bes'4-5 ~ bes8\( aes-4 ges-5 f\)} \\ {<des f>2\f ges,8-1 aes} >> |
    <aes f' aes>8.( <ges ees' ges>16) <aes f' aes>8.( <ges ees' ges>16) <aes f' aes>8.(\fermata <ges ees' ges>16) |
    \bar "|."
    \time 3/8
    <f des' f>16\(^\markup{"Andantino"} des''64 des, des' des, des' des, \repeat "tremolo" 7 {des'64 des,\)} | % 5.3 - 106
    \bar "||"
    \key a \major
    \once\override Staff.OttavaBracket #'padding = #1.5
    #(set-octavation 1) << {a''4\( \once\override Fingering #'extra-offset = #'(0 . -7.5) gis16.-4 \once\override Fingering #'extra-offset = #'(0 . -7.5) fis32-3\)} \\ {\once\override DynamicLineSpanner #'padding = #1 a,4.\ppp} >> |
    << {gis'4\( fis16. e32\)} \\ {gis,4.} >> |
    << {cis8\( d gis,\)} \\ {gis4 s8} >> |
    << {cis4( a8)} \\ {a4 r8 } >> |
    << {a'4\( gis16. fis32\)} \\ {a,4.} >> |
    << {gis'4\( fis16. e32\)} \\ {gis,4.} >> | % 5.4 - 112
    << {cis8\( d gis,\)} \\ {gis4 s8} >> |
    << {cis4( a8)} \\ {a4 r8 } >> |
    << {cis4\( bis16. b32\)} \\ {eis,4.} >> |
    << {a8. b16 a8} \\ {fis4.} >> |
    << {e'4\( dis16. d32} \\ {gis,4.} >> |
    << {cis8. d16 cis8\)} \\ {a4.} >> |
    \bar "||"
    \key des \major
    << {aes'!4\( g16. ges32\)} \\ {c,4.}>> | % 5.5 - 119
    \break
    \repeat "tremolo" 4 {f64\p des} \repeat "tremolo" 4 {e64 c} \repeat "tremolo" 4 {f64 des} |
    \repeat "tremolo" 4 {ges64 ees} \repeat "tremolo" 4 {d64 b} \repeat "tremolo" 4 {ees64 c} |
    \repeat "tremolo" 4 {f64 des} \repeat "tremolo" 4 {e64\< c} \repeat "tremolo" 4 {f64 des} |
    \repeat "tremolo" 4 {ges64 ees} \repeat "tremolo" 4 {d64 b} \repeat "tremolo" 4 {ees64 c} |
    \break
    \repeat "tremolo" 4 {f64 des} \repeat "tremolo" 4 {e64 c} \repeat "tremolo" 4 {f64 des} | % 5.6 - 124
    \repeat "tremolo" 4 {ges64 ees} \repeat "tremolo" 4 {d64\! b} \repeat "tremolo" 4 {ees64_\markup{\italic "rinf"} c} |
    \repeat "tremolo" 4 {<f des>64 f,} \repeat "tremolo" 4 {<e' c>64 e,} \repeat "tremolo" 4 {<f' des>64 f,} |
    \break
    \repeat "tremolo" 4 {<f' des>64 f,} \repeat "tremolo" 4 {<e' c>64 e,} \repeat "tremolo" 4 {<f' des>64 f,} |
    \bar "|."
    \time 4/4
    \once\override DynamicLineSpanner #'padding = #3 \repeat "tremolo" 4 {bes'16\ff^\markup{"Allegro"} bes,} \repeat "tremolo" 4 {bes' bes,} | % 6.1 - 128
    \repeat "tremolo" 4 {bes'16 bes,} \repeat "tremolo" 4 {bes' bes,} |
    aes'16 aes, aes' aes, ges' ges, ges' ges, ees' ees, ees' ees, #(set-octavation 0) c' c, c' c, |
    aes' aes, aes' aes, ges' ges, ges' ges, ees' ees, ees' ees, c' c, c' c, | % 6.2 - 131
    \repeat "tremolo" 4 {<ees' ges beses>16 des} \repeat "tremolo" 4 {<ees ges aes>16 c} |
    \repeat "tremolo" 4 {<ees ges beses>16 des} \repeat "tremolo" 4 {<ees ges aes>16 c} |
    <ees ges beses>16 des <ees ges beses> des <ees ges aes> c <ees ges aes> c <ees ges beses> des <ees ges beses> des <ees ges aes> c <ees ges aes> c |
    <ees ges beses> des <ees ges beses> des <ees ges aes> c <ees ges aes> c <ees ges beses> des <ees ges beses> des <ees ges aes> c <ees ges aes> c | % 6.3 - 135
    \once\override DynamicLineSpanner #'padding = #2 <fes! des'-5>8\ff des'16 c b bes-3 a-1 aes-3 g-1 ges-3 f-2 e-1 ees d des c |
    des8 des16 c b bes a aes g ges f e ees d des c | % 6.4 - 137
    des4-> <beses beses'>-> <aes aes'>-> <fes' fes'>-> |
    <des des'>-> <beses beses'>-> <aes aes'>-> <fes' fes'>-> |
    <des des'>-> <aes aes'>-> \acciaccatura c'8 <des des,>4-> <aes aes,>-> |
    \acciaccatura c8 <des des,>4-> <aes aes,>-> \acciaccatura c8 <des des,>4-> <aes aes,>-> | % 6.5 - 141 
    \acciaccatura c8 <des des,>4-> r r2 |
    r2 r4 r8. <des fes aes des>16 |
    <des fes aes des>2 r |
    r r4 r8. des,16 |
    \set PianoStaff.connectArpeggios = ##t des1\arpeggio\fermata | % fin
    \bar "|."
}
lower = \relative c {
    \clef bass
    \key a \major
    \time 4/4
    a8 <cis e> <cis e> <cis e> a <cis e> <cis e> <cis e> |
    b <d e> <d e> <d e> b <d e> <d e> <d e> |
    a <cis e> <cis e> <cis e> a <cis e> <cis e> <cis e> |
    b <d e> <d e> <d e> b <d e> <d e> <d e> | % 1.1 - 4
    a8 <cis e> <cis e> <cis e> a <cis e> <cis e> <cis e> |
    b <d e> <d e> <d e> b <d e> <d e> <d e> |
    a <cis e> <cis e> <cis e> a <cis e> <cis e> <cis e> |
    b <d e> <d e> <d e> b <d e> <d e> <d e> |
    \set doubleSlurs = ##t
    <cis! e a>1( | % 1.2 - 9
    <fis! a b dis>) ~ |
    <fis! a b dis!> |
    <e gis! b e>8 e' e e e e e e |
    s1 |
    s1 | % 1.3 - 14
    s1*5 | % 1.4 - 19
    \repeat "tremolo" 4 {gis,!16 <b d fis> } \repeat "tremolo" 4 {gis16 <b d fis>} |
    \repeat "tremolo" 4 {a16 <d e>} \repeat "tremolo" 4 {a16 <c e>} |
    \repeat "tremolo" 4 {d,16 <f a b>} \repeat "tremolo" 4 {e16 <gis! b d>} |
    \bar "|."
    \key c \major
    \repeat "tremolo" 4 {f,16-3 e-4} f16 g a bes-3 c d e-2 f-1 |
    f,4-3 r r2 | % 1.5 - 24
    dis''2.\( e4 |
    f2\) r |
    dis2.\( e4 |
    f2\) r |
    dis2.\( e4 |
    f2\) r | % 2.1 - 30
    \stemDown <e, e,>8 <e gis b> <e gis b> <e gis b>  \stemNeutral <e gis b> <e gis b> <e gis b> <e gis b> |
    e-> <b' d e> <b d e> <b d e> <b d e> <b d e> <b d e> <b d e> |
    e,-> <a c e> <a c e> <a c e> <a c e> <a c e> <a c e> <a c e> | % 2.2 - 33
    e <a c dis> <a c dis> <a c dis> <a c dis> <a c dis> <a c dis> <a c dis> |
    \stemDown <e e,>8 <e gis b> <e gis b> <e gis b>  \stemNeutral <e gis b> <e gis b> <e gis b> <e gis b> |
    e-> <b' d e> <b d e> <b d e> <b d e> <b d e> <b d e> <b d e> | % 2.3 - 36
    e,-> <a c e> <a c e> <a c e> <a c e> <a c e> <a c e> <a c e> |
    e <a c dis> <a c dis> <a c dis> <a c dis> <a c dis> <a c dis> <a c dis> |
    << {<e b>4 s4} \\ {e,2} >> f!8\pp-4 fis-3 g!-1 gis-2 |
    a2-1\( gis8-2 g-1 fis-2 f-3\) | % 2.4 - 40
    e2-4\( f!8^\markup{\italic "dim"} fis g gis\) |
    a2\( gis8 g fis f\) |
    e2\( f!8 fis g gis\) |
    a2\( gis8 g fis f\) |
    e2 r | % 2.5 - 45
    R1 |
    R1 |
    <gis' cis e>1 ~ |
    <gis cis e>4 r r2 |
    R1 |
    R1 |
    gis,2 r\fermata | % 2.6 - 52
    \bar "|."
    \key des \major
    \time 3/4
    <des' fes aes des>8\ppp[ r16 \set stemLeftBeamCount = #1 <des fes aes des>32-. <des fes aes des>32-.] <des fes aes des>8-. r r4 |
    <des fes aes des>8[-. r16 \set stemLeftBeamCount = #1 <des fes aes des>32-. <des fes aes des>32-.] <des fes aes des>8-. r r4 |
    <c ees ges aes c>8-.[ r16 \set stemLeftBeamCount = #1 <c ees ges aes c>32-. <c ees ges aes c>-.] <c ees ges aes c>8-. r r4 |
    <c ees ges aes c>8-.[ r16 \set stemLeftBeamCount = #1 <c ees ges aes c>32-. <c ees ges aes c>-.] <c ees ges aes c>8-. r r4 | % 3.1 - 56
    <des fes aes des>8[-. r16 \set stemLeftBeamCount = #1 <des fes aes des>32-. <des fes aes des>32-.] <des fes aes des>8-. r r4 |
    <des fes aes des>8[-. r16 \set stemLeftBeamCount = #1 <des fes aes des>32-. <des fes aes des>32-.] <des fes aes des>8-. r r4 |
    <ces fes aes ces>8[-. r16 \set stemLeftBeamCount = #1 <ces fes aes ces>32-. <ces fes aes ces>-.] <ces fes aes ces>8-. r r4 |
    <aes ees' ges aes>8[-. r16 \set stemLeftBeamCount = #1 <aes ees' ges aes>32-. <aes ees' ges aes>-.] <aes ees' ges aes>8-. r r4 | % 3.2 - 60
    <des fes aes>8[-. r16 \set stemLeftBeamCount = #1 <des fes aes>32-. <des fes aes>-.] <des fes aes>8-.[ r16 \set stemLeftBeamCount = #1 <des fes aes>32-. <des fes aes>-.] <bes des ges>8-.[ r16 \set stemLeftBeamCount = #1 <bes des ges>32-. <bes des ges>-.] |
    <ces ees ges>8[-. r16 \set stemLeftBeamCount = #1 <ces ees ges>32-. <ces ees ges>-.] <ces ees ges>8-.[ r16 \set stemLeftBeamCount = #1 <ces ees ges>32-. <ces ees ges>-.] <c ees aes>8-.[ r16 \set stemLeftBeamCount = #1 <c ees aes>32-. <c ees aes>-.] | % 3.3 - 62
    <des fes aes>8[-. r16 \set stemLeftBeamCount = #1 <des fes aes>32-. <des fes aes>-.] <des fes aes>8-.[ r16 \set stemLeftBeamCount = #1 <des fes aes>32-. <des fes aes>-.] <des fes beses>8-.[ r16 \set stemLeftBeamCount = #1 <des fes beses>32-. <des fes beses>-.] |
    <ces ees beses'>8[-. r16 \set stemLeftBeamCount = #1 <ces ees beses'>32 <ces ees beses'>-.] <ces ees aes>8-.[ r16 \set stemLeftBeamCount = #1 <ces ees aes>32-. <ces ees aes>-.] <beses des aes'>8-.[ r16 \set stemLeftBeamCount = #1 <beses des ges>32-. <beses des ges>-.] | % 3.4 - 64
    <aes ces aes'>8[ r16 \set stemLeftBeamCount = #1  <aes ces aes'>32 <aes ces aes'>] <aes ces f>8[ r16 \set stemLeftBeamCount = #1 <aes ces f>32 <aes ces f>] <ees bes' des ees>8[ r16 \set stemLeftBeamCount = #1 <ees bes' des ees>32 <ees bes' des ees>] |
    <aes c! ees>8[ r16 \set stemLeftBeamCount = #1 aes32-3 aes-2] aes8[-1 r16 \set stemLeftBeamCount = #1 aes32 aes] aes8[ r16 \set stemLeftBeamCount = #1 aes32 aes] |
    aes8[ r16 \set stemLeftBeamCount = #1 aes32 aes] aes8[ r16 \set stemLeftBeamCount = #1 aes32 aes] aes8[ r16 \set stemLeftBeamCount = #1 aes32 aes] | % 3.5 - 67
    \bar "|."
    \key e \major
    <e' e,>8\( b'-5 e-2 b <e gis> b\) |
    e,\( b' <e gis> b <e gis> b\) |
    fis b <e a> b <dis a'> b |
    b,8 r r8.\pp <b fis' a>32 <b fis' a> <b fis' a>8[ r16 \set stemLeftBeamCount = #1 <b fis' a>32 <b fis' a>] | % 4.1 - 71
    \set fingeringOrientations = #'(down) <e-5 gis-3>8\( b'-2 e-1 b-5 <e gis> b\) |
    e,\( b' <e gis> b <e gis> b\) |
    fis b <e a> b <dis a'> b |
    b,8 r r8.\pp <b fis' a>32 <b fis' a> <b fis' a>8[ r16 \set stemLeftBeamCount = #1 <b fis' a>32 <b fis' a>] | % 4.2 - 75
    <fis fis'>8 r r4 r |
    cis'8 r r4 r |
    fis8 r r8. \stemDown <fis cis a fis>32 <fis cis a fis> <fis cis a fis>8[ r16 \set stemLeftBeamCount = #1 <fis cis a fis>32 <fis cis a fis>] \stemNeutral |
    <cis a>8\( cis' <a fis'> cis <a fis'> cis\) |
    b,8\( b' <gis e'> b <gis e'> b\) | % 4.3 - 80
    b,8-5\( b'-2 a-3 b-2 <a-3 dis-1> a-2\) |
    e8 r r8. \stemDown <e b gis e>32 <e b gis e> <e b gis e>8[ r16 \set stemLeftBeamCount = #1 <e b gis e>32 <e b gis e>] \stemNeutral |
    \bar "|."
    \key des \major
    <des g bes>8\( \override Fingering #'avoid-slur = #'inside fes'-1 des-2 bes-3 des fes\) |
    \set fingeringOrientations = #'(left) <ees,-3 c>8 r r8. <c ees aes c>32 <c ees aes c> <c ees aes c>8[ r16 \set stemLeftBeamCount = #1 <c ees aes c>32 <c ees aes c>] | % 4.4 - 84
    <des g bes>8 fes'\( des bes des fes\) |
    <ees, c>8 r r8. <c ees aes c>32 <c ees aes c> <c ees aes c>8[ r16 \set stemLeftBeamCount = #1 <c ees aes c>32 <c ees aes c>] |
    <c c,>8 aes' <c ges'> aes <c ges'> aes |
    des,\( aes' <des f> aes <des f> aes\) |
    <aes aes,>\( aes <c ges'> aes <c ges'>\) r | % 4.5 - 89
    \phrasingSlurDown <des, des,>-.\( <aes' des f>-. <des f>-. <aes des f>-. <des f>-. <aes des f>-.\) |
    <des, des,>-.\( <aes' des f>-. <des f>-. <aes des f>-. <des f>-. <aes des f>-.\) |
    aes,-.\( <aes' ees' ges>-. <c ees ges>-. <aes ees' ges>-. <c ees ges>-. <aes ees' ges>-.\) |
    aes,-.\( <aes' ees' ges>-. <c ees ges>-. <aes ees' ges>-. <c ees ges>-. <aes ees' ges>-.\) |
    <des, des,>-.\( <aes' des f>-. <des f>-. <aes des f>-. <des f>-. <aes des f>-.\) | % 4.6 - 94
    <des, des,>-.\( <aes' des f>-. <des f>-. <aes des f>-. <des f>-. <aes des f>-.\) |
    aes,-.\( <aes' ees' ges>-. <c ees ges>-. <aes ees' ges>-. <c ees ges>-. <aes ees' ges>-.\) |
    aes,-.\( <aes' ees' ges>-. <c ees ges>-. <aes ees' ges>-. <c ees ges>-. <aes ees' ges>-.\) |
    \phrasingSlurNeutral <des, des,>-.\( <aes' des f>-. <des f>-. <aes des f>-. <des f>-. <aes des f>-.\) |
    <bes g des> fes'\( des bes des fes\) | % 5.1 - 99
    <c, ees aes>8 <c ees aes> <c ees aes> r16 <c ees aes c>32 <c ees aes c>32 <c ees aes c>8[ r16 \set stemLeftBeamCount = #1 <c ees aes c>32 <c ees aes c>] |
    <des g bes>8 fes'\( des bes des fes\) |
    <c, ees aes>8 <c ees aes> <c ees aes> r16 <c ees aes c>32 <c ees aes c>32 <c ees aes c>8[ r16 \set stemLeftBeamCount = #1 <c ees aes c>32 <c ees aes c>] |
    <aes' aes,>8 <aes c ees> <aes c ees> r16 <aes ges ees aes,>32 <aes ges ees aes,> <aes ges ees aes,>8[ r16 \set stemLeftBeamCount = #1 <aes ges ees aes,>32 <aes ges ees aes,>] | % 5.2 - 103
    <des, f aes>8[ r16 \set stemLeftBeamCount = #1 <des f aes>32 <des f aes>] <des f aes>8[ r16 \set stemLeftBeamCount = #1 <des f aes>32 <des f aes>]  <bes d f bes>8[ r16 \set stemLeftBeamCount = #1 <bes d f bes>32 <bes d f bes>] |
    <bes' ges ees>8[ r16 \set stemLeftBeamCount = #1 <bes ges ees>32 <bes ges ees>] <bes ges ees>8[ r16 \set stemLeftBeamCount = #1 <bes ges ees>32 <bes ges ees>] <aes ges ees aes,>8 r\fermata |
    \bar "|."
    \time 3/8
    R4. | % 5.3 - 106
    \bar "||"
    \key a \major
    \clef treble
    \repeat "tremolo" 12 {<a' cis>64 e' } |
    \repeat "tremolo" 12 {<b d>64 e } |
    \repeat "tremolo" 12 {<b d>64 e } |
    \repeat "tremolo" 12 {<a, cis>64 e' } |
    \repeat "tremolo" 12 {<a, cis>64 e' } |
    \repeat "tremolo" 12 {<b d>64 e } | % 5.4 - 112
    \repeat "tremolo" 12 {<b d>64 e } |
    \repeat "tremolo" 12 {<a, cis>64 e' } |
    \repeat "tremolo" 12 {<gis, b>64 cis } |
    \repeat "tremolo" 12 {<fis, a>64 cis' } |
    \repeat "tremolo" 12 {<b d>64 e } |
    \repeat "tremolo" 12 {<a, cis>64 e' } |
    \bar "||"
    \key des \major
    \repeat "tremolo" 12 {<ees! ges!>64 aes} | % 5.5 - 119
    des,64 aes' aes, aes' aes, aes' aes, aes' \repeat "tremolo" 8 {aes,64 aes'} |
    \repeat "tremolo" 12 {aes,64 aes'} |
    \repeat "tremolo" 12 {aes,64 aes'} |
    \repeat "tremolo" 12 {aes,64 aes'} |
    \repeat "tremolo" 4 {<des, aes>64 f} \repeat "tremolo" 4 {<c aes>64 e} \repeat "tremolo" 4 {<des aes>64 f} | % 5.6 - 124
    \repeat "tremolo" 4 {<ees aes,>64 ges} \repeat "tremolo" 4 {<b, aes>64 d} \repeat "tremolo" 4 {<c aes>64 ees} |
    \repeat "tremolo" 12 {aes,,64 aes'} |
    \repeat "tremolo" 12 {aes,64 aes'} |
    \bar "|."
    \clef bass
    \time 4/4
    \repeat "tremolo" 4 {<ees, c aes>16 ges} \repeat "tremolo" 4 {<ees c aes>16 ges} | % 6.1 - 128
    \repeat "tremolo" 4 {<ees c aes>16 ges} \repeat "tremolo" 4 {<ees c aes>16 ges} |
    \repeat "tremolo" 4 {<ees c aes>16 ges} \repeat "tremolo" 4 {<ees c aes>16 ges} |
    \repeat "tremolo" 4 {<ees c aes>16 ges} \repeat "tremolo" 4 {<ees c aes>16 ges} | % 6.2 - 131
    \repeat "tremolo" 4 <aes, aes,>8 \repeat "tremolo" 4 <aes aes,>8 |
    \repeat "tremolo" 4 <aes aes,>8 \repeat "tremolo" 4 <aes aes,>8 |
    <aes aes,>4 <aes aes,> <aes aes,> <aes aes,> |
    <aes aes,> <aes aes,> <aes aes,> <aes aes,> | % 6.3 - 135
    \repeat "tremolo" 4 {<aes fes des>16 des} \repeat "tremolo" 4 {<aes fes des>16 des} |
    \repeat "tremolo" 4 {<aes fes des>16 des} \repeat "tremolo" 4 {<aes fes des>16 des} | % 6.4 - 137
    <aes fes des>4-> <beses beses,>-> <aes aes,>-> <fes' fes,>-> |
    <des des,>-> <beses beses,>-> <aes aes,>-> <fes' fes,>-> |
    \set doubleSlurs = ##f
    <des des,>-> <aes aes,>-> \acciaccatura c8 <des des,>4-> <aes aes,>-> |
    \acciaccatura c8 <des des,>4-> <aes aes,>-> \acciaccatura c8 <des des,>4-> <aes aes,>-> | % 6.5 - 141
    \repeat "tremolo" 4 {des,16 des'} \repeat "tremolo" 4 {des,16 des'} |
    \repeat "tremolo" 4 {des,16 des'} \repeat "tremolo" 4 {des,16 des'} |
    \repeat "tremolo" 4 {des,16 des'} \repeat "tremolo" 4 {des,16 des'} |
    << {s2 s4 s8. \stemExtend \noFlag <fes aes>16} \\ {\repeat "tremolo" 4 {des,16 des'} \repeat "tremolo" 4 {des,16 des'} |} >>
    \once\override TextScript #'padding = #3 <des, des' fes aes>1\arpeggio_\markup{\right-align "Fine dell'Opera"} | % fin
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
    first-page-number = 133
    print-first-page-number = ##t
    ragged-last-bottom = ##f
    %#(set-paper-size "a4")
}
