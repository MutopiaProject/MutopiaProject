\version "2.10.25"
\header {
    title = \markup \center-align { \bigger "La Traviata" "Atto Primo" " " }
    subtitle = "Introduzione"
    subsubtitle = \markup {\italic "«Dell invito trascorsa e gia l'ora»"}
    composer = "G. Verdi"
    arranger = "Transcripción de N. Toledo"
    piece = "Nº 1"

    %copyright = "Calcografía de la 'Nueva Biblioteca Musical Económica', 1857-1869"
    % Mutopia headers
    mutopiatitle = "La Traviata - N1 Introduzione"
    mutopiacomposer = "VerdiG"
    mutopiainstrument = "Piano"
    source = "Calcografía de la 'Nueva Biblioteca Musical Económica', 1857-1869"
    style = "Romantic"
    copyright = "Public Domain"
    maintainer = "Alberto Corella"
    maintainerEmail = "ppiano@telefonica.net"
 footer = "Mutopia-2008/01/13-1214"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

upper = \relative c'' {
    \clef treble
    \key a \major
    \time 4/4
    \once\override TextScript #'padding = #5.0
    r8^\markup{\bold "Allº. brillantissimo e molto vivace"} dis16-2\(\f e-3\) fis8-.-4 g-.-1 gis-.-3 a-.-1 ais-.-2 b-.-3 |
    cis4-4 r r2 |
    r8 fis,16-2\( gis-3\) a8-.-4 b-.-1 cis-.-2 d-.-1 e-.-2 eis-.-3 |
    fis4-4 r <gis d! b gis>\arpeggio r\fermata | % 1.1 - 4
    R1\p |
    e,2.\trill_\markup{\finger "23"} cis'8-5 b |
    a8-5 r #(set-octavation 1) cis-2 fis e r a4->-5 |
    gis8 e \acciaccatura {gis} fis4-> e8 cis \acciaccatura {e} d4 #(set-octavation 0) | % 1.2 - 8
    cis8-.-2 a-.-1 b-.-3 e,-.-1 a4-3 r |
    e2.\trill cis'8 b |
    a8 r #(set-octavation 1) cis fis e r a4-> |
    gis8 e \acciaccatura {gis} fis4-> e8 cis \acciaccatura {e} d4 #(set-octavation 0) | % 1.3 - 12
    cis8-.-3 e-.-5 b-.-2 e-.-5 a,4 r |
    cis2.\trill_\markup{\finger "23"} fis8-.-5 e-.-4 |
    d8-.-3 r cis-.-3 b-. a-. r gis-.-3 fis-. |
    \acciaccatura {a-4} gis8-.-3 fisis-.-2 gis-. fisis-. gis-.-3 a-. b-. cis-. | % 1.4 - 16
    cis16\( b a gis fis4\) r2 |
    cis'2.\trill fis8-. e-. |
    d8-. r cis-. b-. a-. r gis-. fis-. |
    \acciaccatura {a} gis8-. fisis-. gis-. fisis-. gis-. a-. b-. cis-. | % 1.5 - 20
    cis16-3\( b a gis-3\) fis2-2 f4-1-> |
    e2.\trill\f cis'8 b |
    a8 r #(set-octavation 1) cis fis e r a4-> |
    gis8 e \acciaccatura {gis} fis4-> e8 cis \acciaccatura {e} d4 | % 2.1 - 24
    cis8-.-2 cis16-2\( d-3\) dis8-.-4 e-.-1 eis-. fis-. g-.-1 gis-.-3 |
    a8-.-4 eis16-2\( gis-4\) fis8-.-3 cis16-2\( e\) d8-. ais16\( cis\) b8-. e-. |
    cis8-. cis16\( d\) dis8-. e-. eis-. fis-. g-. gis-. | % 2.2 - 27
    a8-.-4 eis16-2\( gis-4\) fis8-.-3 cis16-2\( e\) d8-. ais16\( cis\) b8-. e-. #(set-octavation 0) |
    a,4 <a e cis>-> r2\fermata |
    \break
    b,2.-3\trill gis'8-. fis-. |
    e8-. r gis-. cis-. b r e4 | % 2.3 - 31
    dis8-. b-. \acciaccatura {dis} cis4-> b8-. gis-. \acciaccatura {b} a4-> |
    gis8-. e-. fis-. b,-. e4 r |
    b2.\trill gis'8-. fis-. | % 2.4 - 34
    e8-. r gis-. cis-. b r e4 | 
    dis8-. b-. \acciaccatura {dis} cis4-> b8-. gis-. \acciaccatura {b} a4-> |
    gis8-. b-. fis-. b-. e,4 r | % 2.5 - 37
    gis2.\trill_\markup{\finger"2 3"} cis8-.-5 b-. |
    a8-. r gis-. fis-. e-. r dis-. cis-. |
    \acciaccatura {e} dis-. cisis-. dis cisis-. dis-.-3 e-.-1 fis-. gis-. |
    gis16-3\( fis e dis-3\) cis4-2 r2 | % 2.6 - 41
    gis'2.\trill cis8-. b-. |
    a8-. r gis-. fis-. e-. r dis-. cis-. |
    \acciaccatura {e} dis-. cisis-. dis cisis-. dis-. e-. fis-. gis-. |
    gis16\( fis e dis\) cis4 r4 cis8 cis | % 3.1 - 45
    << {fis4-5\( d!8-5 b gis4-2 gis8 gis\)} \\ {fis2 e-1} >> |
    << {e'4-5\( cis8-5 a fis4 gis8-3 a\)} \\ {e2-1 s2} >> |
    e4-1 cis'8.->-3 d16 b4 e |
    a,4 r r2 | % 3.2 - 49
    e2.\trill cis'8-. b-. |
    a8-. r cis-. fis-. e-. r a4-> |
    gis8-. e-. \acciaccatura {gis} fis4-. e8-.[ cis-.] \acciaccatura {e} d-. b-. | % 3.3 - 52
    cis8 #(set-octavation 1) cis'16\( d\) dis8-. e-. eis-. fis-. g-. gis-. |
    a8-. eis16\( gis\) fis8-. cis16\( e\) d8-. ais16\( cis\) b8-. e-. |
    cis8-. cis16\( d\) dis8-. e-. eis-. fis-. g-. gis-. |  % 3.4 - 55
    a8-. eis16\( gis\) fis8-. cis16\( e\) d8-. ais16\( cis\) b8-. e-. #(set-octavation 0) |
    a,8 r a-.-3\pp\( \once\override Fingering #'avoid-slur = #'inside gis-2 a-. gis-. a-. gis-.\) |
    a4-.\( gis-. a-. gis-.\) |
    a4.\( gis8\) a4.\( gis8\) | % 3.5 - 59
    a4.-1\( cis8 e4. d8\) |
    e,4.-1\( \override Fingering #'avoid-slur = #'inside dis8-2 e4.-3 dis8\) |
    e4.\( fis8 g4.-1 \revert Fingering #'avoid-slur gis8-3\) | % 3.6 - 62
    b4.-5( a8 d,4. dis8-3) |
    << {fis4.-5( \once\override Fingering #'avoid-slur = #'inside e8-4 fis4. e8)} \\ {gis,1-1} >> |
    << {fis'4.-5( e8 d cis b a)} \\ {g2-1 r} >> | % 4.1 - 65
    a'4.\( gis8\) a4.\( gis8\) | 
    a4.\( cis8 e4. d8\) |
    e,4.\( dis8 e4. dis8\) |
    e4.\( fis8 g4. gis8\) | % 4.2 - 69
    b4.( a8 d,4. dis8 |
    fis4. e8 b4. cis8 |
    b'4. a8 d,4. dis8) |
    fis4.( e8 b4. cis8) | % 4.3 - 73
    b'4.( a8 d,4. dis8) |
    fis4.( e8 b4. cis8) |
    b'8( a) e'( d) fis,( e) b'( a) |
    g( fis) e'( d) fis,( e) b'( a) | % 4.4 - 77
    d,4 r a4. a8 |
    a4 d, r r8. d'16-5 |
    d2 cis4. b8 |
    ais4\mf fis r2 | % 4.5 - 81
    fis'2-5 e4. d8 |
    cis2 fis,4-1 r8 fis |
    fis'2 e4. d8 |
    cis2 r4 <fis, fis'>8. <fis fis'>16 | % 4.6 - 85
    <fis' fis'>4 <d d'>8( <b b'>) <gis gis'>4 <gis gis'>8 <gis gis'> |
    <e' e'>4 <cis' cis'>8( <a a'>) <fis fis'>4-. <gis gis'>8( <a a'>) |
    <e e'>4 cis8.->-3 d16-> b4-> << {e8-5 e} \\ {<gis, e>4} >> |
    \acciaccatura {a8} e'2.\trill_\markup{\finger "2 3"} cis'8 b | % 5.1 - 89
    a8 r #(set-octavation 1) cis-. fis-. e r a4_> |
    gis8-. e-. \acciaccatura {gis} fis4_> e8-. cis-. \acciaccatura {e} d4_> |
    cis8-. a-. b-. e,-. a4 #(set-octavation 0) r |
    e2.\trill cis'8-. b-. | % 5.2 - 93
    a8 r #(set-octavation 1) cis-. fis-. e r a4_> |
    gis8-. e-. \acciaccatura {gis} fis4_> e8-. cis-. \acciaccatura {e} d4_> |
    cis8-. e-. b-. e-. a,4 r |
    cis2.\trill fis8-. e-. | % 5.3 - 97
    d8 r cis-. b-. a r gis-. fis-. |
    gis-. fisis-. gis-. fisis-. gis-. a-. b-. cis-. |
    cis16( b a gis) fis4 r2 | % 5.4 - 100
    cis'2.\trill fis8-. e-. |
    d8 r cis-. b-. a r gis-. fis-. |
    gis-. fisis-. gis-. fisis-. gis-. a-. b-. cis-. | % 5.5 - 103
    \slurUp
    cis16( b a gis fis2 f4_>) |
    \slurNeutral
    e2.\trill\f cis'8-. b-. |
    a-. r cis-. fis-. e r a4_> | % 5.6 - 106
    gis8-. e-. \acciaccatura {gis} fis4_> e8-. cis-. d-. b-. |
    a8 #(set-octavation 0) r a8-3( \override Fingering #'avoid-slur = #'inside gis-2 a gis a-1 \revert Fingering #'avoid-slur bes-2) |
    \bar "||"
    \key c \major
    c4.-3( b!8 c4. b8) | % 6.1 - 109
    c4.-1( e8 g4. f8) |
    g,4.( fis8 g4. fis8) |
    g4.( a8 bes4. b8) | % 6.2 - 112
    d4.( c8 \once\override Fingering #'avoid-slur = #'inside f,4.-1 fis8-3) |
    << {a4.-5( g8 a4-. g8)} \\ {b,!1-1} >> |
    << {a'4.-5( g8 f e d c)} \\ {bes2-1 r} >> | % 6.3 - 115
    c4.( b!8 c4. b8) |
    c4.( e8 g4. f8) |
    \slurUp g,4.( fis8 g4. fis8) | % 6.4 - 118
    g4.( a8 bes4. b8) |
    d4.( c8 f,4. fis8) |
    a4.( g8 a4. g8) |
    a4.( g8 f e d c) | % 6.5 - 122
    c'4.( b8 c4. b8) |
    c4.( e8 g4. f8) |
    \slurNeutral g,4.( fis8 g4. fis8) | % 7.1 - 125
    g4.( a8 bes4. b8) |
    d4.( c8 f,4. fis8) |
    a4.^( g8 d4. e8) |
    f8( e f e f e f fis) | % 7.2 - 129
    \set fingeringOrientations = #'(left) <g-1 g'-5>4.( \once\override Fingering #'avoid-slur = #'inside <fis fis'-4>8 <g g'>4. <fis fis'>8) |
    <g g'>4.( <b b'>8 <d d'>4. <c c'>8) |
    <d, d'>4.^( \set fingeringOrientations = #'(down up) \once\override Fingering #'avoid-slur = #'inside <cis-1 cis'-4>8 <d d'>4. <cis cis'>8) | % 7.3 - 132
    <d d'>4.( <e e'>8 <f f'>4. <fis fis'>8) |
    <a a'>4.( <g g'>8 <c, c'>4. <cis cis'>8) |
    <e e'>4.^( <d d'>8 <e e'>4. <d d'>8) | % 7.4 - 135
    <e e'>4.( <d d'>8 <c c'> <b b'> <a a'> <g g'>) |
    <g' g'>4.( <fis fis'>8 <g g'>4. <fis fis'>8) |
    <g g'>4.( <b b'>8 <d d'>4. <c c'>8) |
    <d, d'>4.^(<cis cis'>8 <d d'>4. <cis cis'>8) | % 7.5 - 139
    <d d'>4.( <e e'>8 <f f'>4. <fis fis'>8) |
    <a a'>4.( <g g'>8 <c, c'>4. <cis cis'>8) |
    <e e'>4. <d d'>8 <a a'>4. <b b'>8 | 
    <c c'>4 r r c'8. c16 | % 7.6 - 143
    c2.\trill_\markup{\finger "2 3"} a'8-. g-. |
    f8-. r a-. d-. c-. r a'4-> |
    e8-. c-. \acciaccatura {e} d4-> c8-. a-. \acciaccatura {c} bes4-> | % 8.1 - 146
    a8-. f-. g-. c,-. f4 c8. c16 |
    c2.\trill a'8-. g-. |
    f8-. r a-. d-. c-. r a'4-> | % 8.2 - 149
    e8-. c-. \acciaccatura {e} d4-> c8-. a-. \acciaccatura {c} bes4-> |
    a8-. f-. g-. c,-. f4 c8. c16 |
    c2.\trill a'8-. g-. | % 8.3 - 152
    f8-. r a-. d-. c-. r a'4-> |
    e8-. c-. \acciaccatura {e} d4-> c8-. a-. \acciaccatura {c} bes4-> |
    a8-. c-. g-. c-. f,4 r8. f16 |
    f2.\trill #(set-octavation 1) d'8-. c-. | % 8.4 - 156
    bes8-. r d-. g-. f-. r bes4-> |
    a8-. f-. \acciaccatura {a} g4-> f8-. d-. \acciaccatura {f} ees4-> |
    <d, d'>4->\ff a'8 fis <d d'>4-> a'8 fis #(set-octavation 0) | % 8.5 - 159
    d4(\p bes8 g) d'4( bes8 g) |
    #(set-octavation 1) <d' d'>4->\ff( a'8 fis) <d d'>4->( a'8 fis) #(set-octavation 0) |
    d4(\p bes8 g) d'4( bes8 g) |
    d'4 <d d'>-> d,->\fermata d'8.\fermata d16 | % 8.6 - 163
    d4 r8. <d d'>16 <d d'>4 r8. <d d'>16 |
    <d d'>4.. <d d,>16 d,2-5 |
    << {cis'4.-5 cis8 cis4. cis8} \\ {cis,1(} >> |
    << {d'4-5 a-5 s2} \\ {\set fingeringOrientations = #'(right) <fis-2 d-1>2 d} >> |
    << {cis'2 cis4. cis8} \\ {cis,1)} >> | % 9.1 - 168
    << {d'4 a d,2} \\ {<d fis>2( s2} >> |
    << {r2 cis'4. cis8} \\ {cis,1} >> |
    << {d'4 a d,2} \\ {<d fis>2 s2} >> |
    << {s4 r \stemDown cis'8 r\fermata cis8. cis16} \\ {<cis,-4 a-2>4) s2.} >> | % 9.2 - 172
    d'4 r r d8. d16 |
    d2( d,4) <d' d'>8. <d d'>16 |
    <d d'>2 <d d'>4. <d d'>8 | % 9.3 - 175
    \once\override Staff.OttavaBracket #'padding = #2.5 
    << {#(set-octavation 1) d'16-5 cis-4 b-3 a-2 d-5 cis b a d cis b a d cis b a} \\ {<a fis d>8\ff r fis4-1 fis fis} >> |
    << {d'16-5 cis b a d cis b a d cis b a d cis b a } \\ {fis4-1 fis fis fis} >> | % 9.4 - 177
    << {d'4} \\ {fis,4} >> r4 r r8. <d fis! a d>16 |
    <d fis a d>4 r r r8. <ees g c ees>16 |
    <ees g c ees>4 r r r8. <f! a c f!>16 |
    << {\stemDown <f a c f>4 #(set-octavation 0) } \\ {s4} >> r4\fermata r2 | % fin
    \bar "|."
}

lower = \relative c {
    \clef bass
    \key a \major
    \time 4/4
    r8 dis,16-4\( e-3\) fis8-.-2 g-.-1 gis-.-3 a-.-1 ais-.-4 b-.-3 |
    cis4-2 r r2 |
    r8 fis,16-4\( gis-3\) a8-.-2 b-.-1 cis-.-4 d-.-3 e-.-2 eis-.-1 |
    fis4-2 r <e! b e,!> r\fermata | % 1.1 - 4
    #(override-auto-beam-setting '(end * * * *) 2 8)
    #(override-auto-beam-setting '(end * * * *) 6 8)
    a8-5 <cis e> a <cis e> a <cis e> a <cis e> |
    a <cis e> a <cis e> a <cis e> a <cis e> |
    a <cis e> a <cis e> a <cis e> a <cis e> |
    e, <gis b e> e <gis b e> e <gis b e> e <gis b e> | % 1.2 - 8
    a <cis e> e, <gis b e> a <cis e> a <cis e> |
    a <cis e> a <cis e> a <cis e> a <cis e> |
    a <cis e> a <cis e> a <cis e> a <cis e> |
    e, <gis b e> e <gis b e> e <gis b e> e <gis b e> | % 1.3 - 12
    a <cis e> e, <gis b e> a <cis e> a <cis e> |
    fis, <a cis fis> fis <a cis fis> fis <a cis fis> fis <a cis fis> |
    b <d fis> b <d fis> bis-5 <dis-3 a'-1> bis <dis a'> | 
    cis-4 <eis gis> cis <eis gis> cis <eis gis> cis <eis gis> | % 1.4 - 16
    fis, <a cis fis> fis <a cis fis> fis <a cis fis> fis <a cis fis> |
    fis <a cis fis> fis <a cis fis> fis <a cis fis> fis <a cis fis> |
    b <d fis> b <d fis> bis <dis a'> bis <dis a'> | 
    cis <eis gis> cis <eis gis> cis <eis gis> cis <eis gis> | % 1.5 - 20
    fis, <a cis fis> fis <a cis fis> fis <a cis fis> <gis fis,>-> <b d> |
    a, <cis e a> a <cis e a> a <cis e a> a <cis e a> |
    a <cis e a> a <cis e a> a <cis e a> a <cis e a> |
    e <gis b> e <gis b> e <gis b> e <gis b>  | % 2.1 - 24
    \stemDown
    a, <cis e a> a <cis e a> gis <b cis eis> gis <b cis eis> |
    fis <a cis fis> d <fis b> b, <d fis b> e <gis b> |
    a, <cis e a> a <cis e a> gis <b cis eis> gis <b cis eis> | % 2.2 - 27
    fis <a cis fis> d <fis b> b, <d fis b> e <gis b> |
    \stemNeutral
    <a cis>4 <a, a,>-> r2\fermata |
    #(revert-auto-beam-setting '(end * * * *) 2 8)
    #(revert-auto-beam-setting '(end * * * *) 6 8)
    \once\override DynamicLineSpanner #'staff-padding = #3.0
    e'8^\pp <gis b> <gis b> <gis b> e \once\override TextScript #'padding = #3.0 <gis b>^\markup{"(Dell'invito trascorsa e gia l'ora...)"} <gis b> <gis b> |
    e <gis b> <gis b> <gis b> e <gis b> <gis b> <gis b> | % 2.3 - 31
    b, <dis-4 a'-2 b-1> <dis a' b> <dis a' b> b <dis a' b> <dis a' b> <dis a' b> |
    e[ <gis b>] b, <dis a' b> e <gis b> <gis b> <gis b> |
    e <gis b> <gis b> <gis b> e <gis b> <gis b> <gis b> | % 2.4 - 34
    e <gis b> <gis b> <gis b> e <gis b> <gis b> <gis b> | 
    b, <dis a' b> <dis a' b> <dis a' b> b <dis a' b> <dis a' b> <dis a' b> |
    e[ <gis b>] b, <dis a' b> e <gis b> <gis b> <gis b> | % 2.5 - 37
    cis,8 <e gis cis> <e gis cis> <e gis cis> cis <e gis cis> <e gis cis> <e gis cis>  |
    fis <a cis> <a cis> <a cis> fisis-5 <ais-3 e'-1> <ais e'> <ais e'> |
    gis <bis dis> <bis dis> <bis dis> gis <bis dis> <bis dis> <bis dis> |
    cis,8 <e gis cis> <e gis cis> <e gis cis> cis <e gis cis> <e gis cis> <e gis cis>  | % 2.6 - 41
    cis8 <e gis cis> <e gis cis> <e gis cis> cis <e gis cis> <e gis cis> <e gis cis>  |
    fis <a cis> <a cis> <a cis> fisis <ais e'> <ais e'> <ais e'> |
    gis <bis dis> <bis dis> <bis dis> <gis gis,> <bis dis> <bis dis> <bis dis> |
    cis,8 <e gis cis> <e gis cis> <e gis cis> cis4 r | % 3.1 - 45
    <b d! b'>2 <e gis b> |
    <cis a'>2 <dis a' c> |
    <e a cis!>4 <e a cis>-> <d fis a b> <e gis b>-> |
    #(override-auto-beam-setting '(end * * * *) 2 8)
    #(override-auto-beam-setting '(end * * * *) 6 8)
    \stemDown
    a,8 <cis e a> a <cis e a> a <cis e a> a <cis e a> | % 3.2 - 49 
    a <cis e a> a <cis e a> a <cis e a> a <cis e a> |
    a <cis e a> a <cis e a> a <cis e a> a <cis e a> |
    e <gis b> e <gis b> e <gis b> e <gis b> | % 3.3 - 52
    a, <cis e a> a <cis e a> gis <b cis eis> gis <b cis eis> |
    fis <a cis fis> d <fis b> b, <d fis b> e <gis b> |
    a, <cis e a> a <cis e a> gis <b cis eis> gis <b cis eis> | % 3.4 - 55
    fis <a cis fis> d <fis b> b, <d fis b> e <gis b> |
    <a e cis a>4 r r2 |
    R1 |
    #(revert-auto-beam-setting '(end * * * *) 2 8)
    #(revert-auto-beam-setting '(end * * * *) 6 8)
    \stemNeutral
    d,8 <fis a d> <fis a d> <fis a d> <fis a d> <fis a d> <fis a d> <fis a d> | % 3.5 - 59
    d <fis a d> <fis a d> <fis a d> <fis a d> <fis a d> <fis a d> <fis a d> |
    << {\override Staff.NoteCollision #'merge-differently-headed = ##t \override Fingering #'extra-offset = #'(0 . -2 ) b2-5 bes-5 \revert Fingering #'extra-offset } \\ {\slurUp b8( <d e gis> <d e gis> <d e gis> bes <d e gis> <d e gis> <d e gis>} >> |
    << {a2 g2} \\ {a8 <cis e g> <cis e g> <cis e g> g <a cis e> <a cis e> <a cis e>} >> | % 3.6 - 62
    << {fis2 b} \\ {fis8 <a d fis> <a d fis> <a d fis> b <d fis> <d fis> <d fis>)} >> |
    e,8 <b' d e> <b d e> <b d e> e, <b' d e> <b d e> <b d e> |
    a <cis e> <cis e> r r2 | % 4.1 - 65
    d,8 <fis a d> <fis a d> <fis a d> <fis a d> <fis a d> <fis a d> <fis a d> |
    d <fis a d> <fis a d> <fis a d> <fis a d> <fis a d> <fis a d> <fis a d> |
    << {\override Staff.NoteCollision #'merge-differently-headed = ##t b2 bes} \\ {b8 <d e gis> <d e gis> <d e gis> bes <d e gis> <d e gis> <d e gis>} >> |
    << {a2 g2} \\ {a8 <cis e g> <cis e g> <cis e g> g <a cis e> <a cis e> <a cis e>} >> | % 4.2 - 69
    << {fis2 b} \\ {fis8 <a d fis> <a d fis> <a d fis> b <d fis> <d fis> <d fis>} >> |
    e,8 <g b e> <g b e> <g b e> a <cis e g> <cis e g> <cis e g> |
    fis, <a d fis> <a d fis> <a d fis> b <d fis> <d fis> <d fis> |
    g, <b e g> <b e g> <b e g> a <cis e g> <cis e g> <cis e g> | % 4.3 - 73
    fis, <a d fis> <a d fis> <a d fis> b <d fis> <d fis> <d fis> |
    g, <b e g> <b e g> <b e g> a <e' g> <e g> <e g> |
    fis, <d' fis> b <d fis> g, <b e g> a <cis g'> |
    fis, <d' fis> b <d fis> g, <b e g> a <cis e g> | % 4.4 - 77
    <d fis>4 r r2 |
    R1 |
    R1 |
    <cis ais fis>1\( | % 4.5 - 81
    <d b fis>1 |
    <cis ais fis> |
    <d b fis> |
    <cis ais fis>2\) r | % 4.6 - 85
    <b fis d b>4-> r <b gis e>-> r |
    <cis a e cis>-> r <c a dis,>-> r |
    << {s4 cis8. d16 b4 <b d>} \\ {<cis! a e>4 <a fis> b e,8 e} >> |
    #(override-auto-beam-setting '(end * * * *) 2 8)
    #(override-auto-beam-setting '(end * * * *) 6 8)
    a <cis e> a <cis e> a <cis e> a <cis e> | % 5.1 - 89
    a <cis e> a <cis e> a <cis e> a <cis e> |
    e, <gis b e> e <gis b e> e <gis b e> e <gis b e>  |
    a <cis e> e, <gis b e> a <cis e> a <cis e> |
    a <cis e> a <cis e> a <cis e> a <cis e> | % 5.2 - 93
    a <cis e> a <cis e> a <cis e> a <cis e> |
    e, <gis b e> e <gis b e> e <gis b e> e <gis b e>  |
    a <cis e> e, <gis b e> a <cis e> a <cis e> |
    fis, <a cis fis> fis <a cis fis> fis <a cis fis> fis <a cis fis> | % 5.3 - 97
    b <d fis> b <d fis> bis <dis a'> bis <dis a'> |
    cis <eis gis> cis <eis gis> cis <eis gis> cis <eis gis> |
    fis, <a cis fis> fis <a cis fis> fis <a cis fis> fis <a cis fis> | % 5.4 - 100
    fis <a cis fis> fis <a cis fis> fis <a cis fis> fis <a cis fis> | 
    b <d fis> b <d fis> bis <dis a'> bis <dis a'> |
    cis <eis gis> cis <eis gis> cis <eis gis> cis <eis gis> | % 5.5 - 103
    fis, <a cis fis> fis <a cis fis> fis <a cis fis>  <gis gis,>-> <gis b d> |
    a, <cis e a> a <cis e a> a <cis e a> a <cis e a> |
    a <cis e a> a <cis e a> a <cis e a> a <cis e a> | % 5.6 - 106
    e <gis b> e <gis b> e <gis b> e <gis b> |
    <a e cis a>8 r r4 r2 |
    \bar "||"
    \key c \major
    #(revert-auto-beam-setting '(end * * * *) 2 8)
    #(revert-auto-beam-setting '(end * * * *) 6 8)
    << {f4 s2.} \\ {f8 <a c> <a c> <a c> <a c> <a c> <a c> <a c> } >> | % 6.1 - 109
    << {f4 s2.} \\ {f8 <a c> <a c> <a c> <a c> <a c> <a c> <a c> } >> |
    << {d,2( \once\override Fingering #'extra-offset = #'(0 . -2.5 ) des-5} \\ {d8 <f g b!> <f g b> <f g b> des <f g b> <f g b> <f g b>} >> |
    << {\once\override Fingering #'extra-offset = #'(0 . -3 ) c2-5 bes} \\ {c8 <e g bes> <e g bes> <e g bes> bes <c e g> <c e g> <c e g>} >> | % 6.2 - 112
    << {a2 d)} \\ {a8 <c f a> <c f a> <c f a> d <f a> <f a> <f a>} >> |
    g,8 <f' g b!> <f g b> <f g b> g, <f' g b> <f g b> <f g b> |
    c8 <e g bes> <e g bes> r r2 | % 6.3 - 115
    << {f4 s4} \\ {f8 <a c> <a c> <a c> <a c> <a c> <a c> <a c> } >> |
    << {f4 s4} \\ {f8 <a c> <a c> <a c> <a c> <a c> <a c> <a c> } >> |
    << {e2( ees} \\ {e8 <g bes> <g bes> <g bes> ees <g bes> <g bes> <g bes> } >> | % 6.4 - 118
    << {d2 c} \\ {d8 <g bes> <g bes> <g bes> c, <e g c> <e g c> <e g c>} >> |
    << {a,2 d)} \\ {a8 <c f a> <c f a> <c f a> d <f a> <f a> <f a>} >> |
    g,8 <f' g b> <f g b> <f g b> g, <f' g b> <f g b> <f g b> |
    c8 <e g bes> <e g bes> r r2 | % 6.5 - 122
    << {f4 s4} \\ {f8 <a c> <a c> <a c> <a c> <a c> <a c> <a c> } >> |
    << {f4 s4} \\ {f8 <a c> <a c> <a c> <a c> <a c> <a c> <a c> } >> |
    << {c,2( b!} \\ {c8 <e g> <e g> <e g> b <e g> <e g> <e g>} >> | % 7.1 - 125
    << {bes2 g} \\ {bes8 <e g> <e g> <e g> g, <e' g> <e g> <e g>} >> |
    << {a,2 d)} \\ {a8 <c f a> <c f a> <c f a> d <f a> <f a> <f a>} >> |
    << {bes,4 s c s} \\ {bes8 <d bes'> <d bes'> <d bes'>  c <g' bes> <g bes> <g bes>} >> |
    <f a>8 r r4 r2 | % 7.2 - 129
    << {c4 s2.} \\ {c8 <e g> <e g> <e g> <e g> <e g> <e g> <e g> } >> |
    << {c4 s2.} \\ {c8 <e g> <e g> <e g> <e g> <e g> <e g> <e g> } >> |
    << {a,8 <c d fis> <c d fis> <c d fis> aes <c d fis> <c d fis> <c d fis> } \\ {a2( aes} >> | % 7.3 - 132
    << {g8 <b d f!> <b d f> <b d f> f! <g b d> <g b d> <g b d>} \\ {g2 f} >> |
    << {e8 <g c e> <g c e> <g c e> a <c e> <c e> <c e>} \\ {e,2 a)} >> |
    << {d,8 <c' d fis> <c d fis> <c d fis> d, <c' d fis> <c d fis> <c d fis>} \\ {d,4 s d s} >> | % 7.4 - 135
    \stemDown g8 <b d f!> <b d f> r r2 \stemNeutral |
    << {c4 s2.} \\ {c8 <e g> <e g> <e g> <e g> <e g> <e g> <e g> } >> |
    << {c4 s2.} \\ {c8 <e g> <e g> <e g> <e g> <e g> <e g> <e g> } >> |
    << {a,8 <c d fis> <c d fis> <c d fis> aes <c d fis> <c d fis> <c d fis> } \\ {a2( aes} >> | % 7.5 - 139
    << {g8 <b d f!> <b d f> <b d f> f! <g b d> <g b d> <g b d>} \\ {g2 f} >> |
    << {e8 <g c e> <g c e> <g c e> a <c e> <c e> <c e>} \\ {e,2 a)} >> |
    << {d,8 <c' d fis> <c d fis> <c d fis> g <d' f> <d f> <d f>} \\ {d,4 s g s} >> |
    #(override-auto-beam-setting '(end * * * *) 2 8)
    #(override-auto-beam-setting '(end * * * *) 6 8)
    <c e>8 c' c, c' c, c' c, c' | % 7.6 - 143
    c,8-5 \set fingeringOrientations = #'(left up) <e-3 bes'-1> c <e bes'> c <e bes'> c <e bes'> |
    c <f a> c <f a> c <f a> c <f a> |
    c <e g> c <e g> c <e g> c <e g>  | % 8.1 - 146
    c <f a> c <e g> c <f a> c <f a> |
    c8 <e bes'> c <e bes'> c <e bes'> c <e bes'> |
    c <f a> c <f a> c <f a> c <f a> | % 8.2 - 149
    c <e g> c <e g> c <e g> c <e g>  |
    c <f a> c <e g> c <f a> c <f a> |
    c8 <e bes' c> c <e bes' c> c <e bes' c> c <e bes' c> | % 8.3 - 152
    c8 <f a c> c <f a c> c <f a c> c <f a c> |
    c <e g c> c <e g c> c <e g c> c <e g c> |
    f <a c> c, <e g c> f <a c> f <a c>|
    f, <a ees' f> f <a ees' f> f <a ees' f> f <a ees' f> | % 8.4 - 156
    f <bes d f> f <bes d f> f <bes d f> f <bes d f> |
    f <a c f> f <a c f> f <a c f> f <a c f> |
    <d d,>4-> a8 fis <d d'>4-> a'8 fis | % 8.5 - 159
    d''4( bes8 g) d'4( bes8 g) |
    <d d,>4->( a8 fis) <d d'>4->( a'8 fis) |
    d''4( bes8 g) d'4( bes8 g) |
    r4 <d d'>-> <d d,>->\fermata r\fermata | % 8.6 - 163
    r4 r8. d'16 d4 r8. d16 |
    d4.. d,16^\pp << {a'4-2 bes-3->} \\ {\override Fingering #'avoid-slur = #'inside \set fingeringOrientations = #'(right) <d,-1 fis,-4>4( g,4-3} >> |
    << {\once\override TextScript #'extra-offset = #'(0.5 . 0)<g'a>1^\markup{\finger "1   1"}} \\ {a,2-5\sustainDown a,} >> |
    << {s2 a''4 bes->} \\ {d,,2\sustainUp fis4 g} >> |
    << {<g'a>1 }\\ {\once\override Staff.SustainPedal #'extra-offset = #'(0 . 2) a,2-5\sustainDown \once\override Staff.SustainPedal #'extra-offset = #'(2.5 . 2) a,)\sustainUp} >> | % 9.1 - 168
    << {s2 a''4 bes->} \\ {d,,2( fis4 \once\override Script #'avoid-slur = #'inside g->} >> |
    << {<g' a>1} \\ {\once\override Staff.SustainPedal #'extra-offset = #'(0 . 4) a,2\sustainDown a,2} >> |
    << {s2 a''4 bes->} \\ {\once\override Staff.SustainPedal #'extra-offset = #'(-1.5 . 2) d,,2\sustainUp <fis fis'>4 \once\override Script #'avoid-slur = #'inside <g g'>->} >> |
    << {s1} \\ {<a e'>4) r r2} >> | % 9.2 - 172
    R1 |
    r2 r4 d'8. d16 |
    d2 d4. d8 | % 9.3 - 175
    << {d,16-1 cis-2 b-3 a-4 d cis b a d cis b a d cis b a} \\ {<a d,>8 r r4 r r} >> |
    d16-1 cis b a d cis b a d cis b a d cis b a |
    d4 r r r8. <d a d,>16 |
    <d a d,>4 r r r8. <c g c,>16 |
    <c g c,>4 r r r8. <f,! f,!>16 |
    <f f,>4 r\fermata r2 | % fin
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
    first-page-number = 4
    print-first-page-number = ##t
    ragged-last-bottom = ##f
    
}
