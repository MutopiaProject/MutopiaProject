\version "2.10.33"
\header {
    title = \markup \center-align { \bigger "La Traviata" " "}
    subtitle = "Coro di mattadori spagnuoli"
    subsubtitle = \markup {\italic "«Di Madride noi siam mattadori»"}
    composer = "G. Verdi"
    arranger = "Transcripción de N. Toledo"
    piece = "Nº 12"

    %copyright = "Calcografía de la 'Nueva Biblioteca Musical Económica', 1857-1869"
    % Mutopia headers
    mutopiatitle = "La Traviata - N12 Coro di mattadori spagnuoli"
    mutopiacomposer = "VerdiG"
    mutopiainstrument = "Piano"
    source = "Calcografía de la 'Nueva Biblioteca Musical Económica', 1857-1869"
    style = "Romantic"
    copyright = "Public Domain"
    maintainer = "Alberto Corella"
    maintainerEmail = "ppiano@telefonica.net"
 footer = "Mutopia-2008/08/12-1513"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}


upper = \relative c'' {
    \clef treble
    \key c \major
    \time 4/4
    \once\override TextScript #'padding = #4.5
    r2^\markup{\line {\bold "Allegro assai mosso. ("\note #"4" #1 \bold " = 108)"}} \once\override DynamicLineSpanner #'padding = #1.5 <c c'>4->\ff <c c'>-> |
    <c c'>-> <c c'>-> <c c'>-> <c c'>-> |
    \times 2/3 {<c c'>8-. b'-. a-.} \override TupletNumber #'transparent = ##t \times 2/3 {g8-. a-. b-.} \times 2/3 {c8-. b-. a-.} \times 2/3 {g8-. a-. b-.} |
    \times 2/3 {c8-. b-. a-.} \times 2/3 {g8-. a-. b-.} \times 2/3 {c8-. b-. a-.} \times 2/3 {g8-. a-. b-.} | % 1.1 - 4
    c4 r <c c,>-> <c c,>-> |
    \override TupletNumber #'transparent = ##f 
    \times 2/3 {<c c,>8-. b-. a-.} g8[ r16 gis] \times 2/3 {a8-. g-. f-.} e8[ r16 f] |
    g4( e8) r <c' c,>4-> <c c,>-> |
    \override TupletNumber #'transparent = ##t 
    \times 2/3 {<c c,>8-.-5 b-. a-.} g8[ r16 gis-3] \times 2/3 {a8-.-4 g-. f-.} e8[ r16 f] | % 1.2 - 8
    g4( e8) r <c' c,>4-> <ees ees,>-> |
    \times 2/3 {<d d,>8-. c-. bes-.} a8[ r16 c] \times 2/3 {bes8-. a-. g-.} fis8[ r16 g] |
    a4( d,8) r <c' c,>4-> <ees ees,>-> |
    \times 2/3 {<d d,>8-. c-. bes-.} a8[ r16 c] \times 2/3 {bes8-. a-. g-.} fis8[ r16 g] | % 1.3 - 12
    a4( d,8) r d4-> d-> |
    \once\override DynamicLineSpanner #'padding = #1.5
    d,\p d8. d16 d'4-> d8. d16 |
    d,4 d d'-> d-> |
    d, d8. d16 <d' d,>4 <d d,>8. <d d,>16 | % 1.4 - 16
    d,4 \once\override Staff.OttavaBracket #'padding = #2.5 #(set-octavation 1) \times 2/3 {d''8-.-3 ees-. d-.} \times 2/3 {c8-.-2 d-.-4 c-.} \times 2/3 {bes8-. c-.-4 bes-.-3} |
    #(set-octavation 0) \times 2/3 {a8-. bes-. a-.} \times 2/3 {g8-. a-. g-.} \times 2/3 {fis8-.-2 g-. a-.} \times 2/3 {bes8-. a-. g-.} |
    d4 \once\override Staff.OttavaBracket #'padding = #2.5 #(set-octavation 1) \times 2/3 {d'8-.-3 ees-. d-.} \times 2/3 {c8-.-2 d-.-4 c-.} \times 2/3 {bes8-. c-.-4 bes-.-3} | % 1.5 - 19
    #(set-octavation 0)
    \times 2/3 {a8-. bes-. a-.} \times 2/3 {g8-. a-. g-.} \times 2/3 {fis8-. g-. a-.} \times 2/3 {bes8-. a-. g-.} |
    d4\ff \times 2/3 {<d d'>8 <d d'> <d d'>} <d d'>4 <d d'> |
    <d d'>4 \times 2/3 {<d d'>8 <d d'> <d d'>} <d d'>4 <d d'> |
    <d d'>1
    <d d,>2 r | % 2.1 - 24
    \bar "||"
    \key bes \major
    \time 3/8
    R4.^\markup{\column{ \line {\bold "Allegro assai vivo. ("\note #"4" #1 \bold " = 120)"} " "}} | \noBreak
    R4. | \noBreak
    R4. | \noBreak
    \once\override Staff.OttavaBracket #'padding = #2
    #(set-octavation 1) \once\override DynamicLineSpanner #'padding = #1.5 g16-1\p( a) bes8-. c-.-1 |
    d4 ees8-> | % 2.2 - 29
    \acciaccatura f8 ees16\trill( d) d8-. g-. |
    d4( g,8) |
    a16-2( d-5) d8-. a-. |
    bes4( g8) |
    \stemDown
    a16( d) d8-. fis,-.-2 | % 2.3 - 34
    \stemNeutral
    g4 r8 |
    g16( a) bes8-. c-. |
    d4 ees8-> |
    \acciaccatura f8 ees16\trill( d) d8-. g-. |
    d4( g,8) | % 2.4 - 39
    a16( d) d8-. a-. |
    bes4( g8) |
    \stemDown
    a16( d) d8-. fis,-. |
    \stemNeutral
    g4 r8 |
    \set fingeringOrientations = #'(down)
    <d'-2 f-4>16->( <ees g>) <d f>8-. <bes d>-. |
    <d f>16->( <ees g>) <d f>8-. <bes-1 d-2>-. | % 2.5 - 45
    <c ees>16->( <d f>) <c ees>8-. <c ees>-. |
    #(set-octavation 0)
    <f, a>-. <f f,>4 |
    \once\override Staff.OttavaBracket #'padding = #2
    #(set-octavation 1)
    <d' f>16->( <ees g>) <d f>8-. <bes d>-. |
    <d f>16->( <ees g>) <d f>8-. <bes d>-. |
    <c ees>16->( <d f>) <c ees>8-. <a c>-. |
    <f a>4 r8 | % 2.6 - 51
    g16( a) bes8-. c-. |
    d4 ees8-> |
    \acciaccatura f8 ees16\trill( d) d8-. g-. |
    d4( g,8) |
    a16( d) d8-. a-. | % 3.1 - 56
    bes4( g8) |
    \stemDown
    a16( d) d8-. fis,-. |
    \stemNeutral
    g4 r8 |
    #(set-octavation 0)
    R4. |
    <d b>8-. r r | % 3.2 - 61
    <d b>-. r r |
    \set fingeringOrientations = #'(up)
    <g-5 e-3>-. <fis d>-. <e c>-. |
    <d-5 b-3>-. <c a>-. <b g>-. |
    <c a>-.[ r <c a>-.] |
    <c a>-.[ r <c a>-.] | % 3.3 - 66
    <fis-5 d-3>-. <e c>-. <d b>-. |
    <c a>-. <b g>-. <a fis>-. |
    <d b>-. r r |
    <d b>-.[ r <d b>-.] |
    <g e>-. <fis d>-. <e c>-. | % 3.4 - 71
    <d b>-. <c a>-. <b g>-. |
    <c a>-.[ r <c a>-.] |
    <c a>-.[ r <c a>-.] |
    <fis d>-. <e c>-. <d b>-. |
    <c a>-. <b g>-. <a fis>-. |
    g4 r8 | % 3.5 - 77
    #(set-octavation 1)
    g'16( a) bes!8-. c-. |
    d4 ees8-> |
    \acciaccatura f8 ees16\trill( d) d8-. g-. |
    d4( g,8) |
    a16( d) d8-. a-. | % 4.1 - 82
    bes4( g8) |
    \stemDown
    a16( d) d8-. fis,-. |
    \stemNeutral
    g4 \afterGrace r8 {d'16[( e fis]} | \noBreak
    \once\override DynamicLineSpanner #'padding = #1
    g16-.->-3\f) f!-. ees!-. d-. c-. bes!-.-2 | % 4.2 - 86
    ees8->-5 d16-. c-. bes-. a-. |
    ees'8-> d16-. c-. bes-. a-. |
    d-.-> c-. bes-. a-. g8 |
    g'16-.-> f-. ees-. d-. c-. bes-. | % 4.3 - 90
    ees8-> d16-. c-. bes-. a-. |
    ees'8-> d16-. c-. bes-. a-. |
    g4 \afterGrace r8 {d'16[( e fis]} | \noBreak
    g16-.->) f!-. ees!-. d-. c-. bes!-.-2 | % 4.4 - 94
    ees8->-5 d16-. c-. bes-. a-. |
    ees'8-> d16-. c-. bes-. a-. |
    d-.-> c-. bes-. a-. g8 |
    g'16-.-> f-. ees-. d-. c-. bes-. | % 4,5 - 98
    ees8-> d16-. c-. bes-. a-. |
    ees'8-> d16-. c-. bes-. a-. |
    g4 #(set-octavation 0) r8 |
    R4. | % 4.6 - 102
    <d b>8-. r r |
    <d b>-. r r |
    <g e>-. <fis d>-. <e c>-. |
    <d b>-. <c a>-. <b g>-. |
    <c a>-.[ r <c a>-.] | % 5.1 - 107
    <c a>-.[ r <c a>-.] |
    <fis d>-. <e c>-. <d b>-. |
    <c a>-. <g b>-. <a fis>-. |
    <d b>-. r r |
    <d b>-.[ r <d b>-.] | % 5.2 - 112
    <g e>-. <fis d>-. <e c>-. |
    <d b>-. <c a>-. <b g>-. |
    <c a>-.[ r <c a>-.] |
    <c a>-.[ r <c a>-.] |
    <fis d>-. <e c>-. <d b>-. | % 5.3 - 117
    <c a>-. <b g>-. <a fis>-. |
    g4 r8 |
    \once\override Staff.OttavaBracket #'padding = #1
    #(set-octavation 1)
    g'16( a) bes!8-. c-. |
    d4 ees8-> |
    \acciaccatura f8 ees16\trill( d) d8-. g-. | % 5.4 - 122
    d4( g,8) |
    a16( d) d8-. a-. |
    bes4( g8) |
    \stemDown
    a16( d) d8-. fis,-. |
    \stemNeutral
    g4 r8 | % 5.5 - 127
    g16( a) bes8-. c-. |
    d4 ees8-> |
    \acciaccatura f8 ees16\trill( d) d8-. g-. | 
    d4( g,8) |
    a16( d) d8-. a-. | % 6.1 - 132
    bes4( g8) |
    \stemDown
    a16( d) d8-. fis,-. |
    \stemNeutral
    g4 r8 |
    <d' f>16->( <ees g>) <d f>8-. <bes d>-. |
    <d f>16->( <ees g>) <d f>8-. <bes d>-. |
    <c ees>16->( <d f>) <c ees>8-. <a c>-. | % 6.2 - 137
    #(set-octavation 0)
    <f a>8 <f f,>4-> |
    \once\override Staff.OttavaBracket #'padding = #1.5
    #(set-octavation 1)
    <d' f>16->( <ees g>) <d f>8-. <bes d>-. |
    <d f>16->( <ees g>) <d f>8-. <bes d>-. |
    <c ees>16->( <d f>) <c ees>8-. <a c>-. | % 6.3 - 142
    <f a>4 r8 |
    g16( a) bes8-. c-. |
    d4 ees8-> |
    \acciaccatura f8 ees16\trill( d) d8-. g-. | 
    d4( g,8) | % 6.4 - 147
    a16( d) d8-. a-. |
    bes4( g8) |
    \stemDown
    a16( d) d8-. fis,-. |
    \stemNeutral
    \bar "||"
    \key g \major
    g4 #(set-octavation 0) r8 |
    R4. | % 6.5 - 152
    <d b>8-.\ppp r r |
    <d b>-. r r |
    <g e>-. <fis d>-. <e c>-. |
    <d b>-. <c a>-. <b g>-. |
    <c a>-.[ r <c a>-.] |
    <c a>-.[ r <c a>-.] |
    <fis d>-. <e c>-. <d b>-. | % 7.1 - 159
    <c a>-. <b g>-. <a fis>-. |
    <d b>-. r r |
    \once\override TextScript #'padding = #1.5
    <d b>-._\markup{\italic "cresc."}[ r <d b>-.] |
    <g e>-. <fis d>-. <e c>-. |
    <d b>-. <c a>-. <b g>-. |
    <c a>-.[ r <c a>-.] |
    <c a>-.[ r <c a>-.] | % 7.2 - 166
    <fis d>-. <e c>-. <d b>-. |
    <c a>-. <b g>-. <a fis>-. |
    \once\override TextScript #'padding = #1.5
    <d' b d,>-._\markup{\italic "cres. ancora"} r r |
    <d b d,>-.[ r <d b d,>-.] |
    <g e g,>-. <fis d fis,>-. <e c e,>-. |
    <d b d,>-. <c a c,>-. <b g b,>-. |
    <c a c,>-.[ r <c a c,>-.] | % 7.3 - 173
    <c a c,>-.[ r <c a c,>-.] |
    <fis d fis,>-. <e c e,>-. <d b d,>-. |
    <c a c,>-. <b g b,>-. <a fis a,>-. |
    \repeat volta 2 {
      <g g,>4 \once\override Staff.OttavaBracket #'padding = #2 #(set-octavation 1) \afterGrace r8 { g16-1[_\( a b c-1 d e fis]} |
      \once\override DynamicLineSpanner #'padding = #1.5
      g16-.->-5\ff\) fis-. e-. d-. c-. b-.-2 |
      e8-.-> d16-. c-. b-. a-. | % 7.4 - 179
      e'8-.-> d16-. c-. b-. a-. |
      d-.-> c-. b-. a-. g8 |
      g'16-.-> fis-. e-. d-. c-. b-. |
      e8-.-> d16-. c-. b-. a-. |
      e'8-.-> d16-. c-. b-. a-. | % 7.5 - 184
    }
    g8 <d fis a d>4-> |
    <g b>8 <d fis a d>4-> |
    <g b>8 <d fis a d>4-> |
    <g b>8 <d fis a d>4-> |
    #(set-octavation 0)
    \repeat volta 2 {
      <g d b>16 g, <g' d b> g, <g' d b> g, |
      <g' d b> g, <g' d b> g, <g' d b> g, |
    }
    <g b d g>4\arpeggio r8\fermata | % fin
    \bar "|."
}
lower = \relative c {
    \clef bass
    \key c \major
    \time 4/4
    r2 <c, c'>4-> <c c'>-> |
    <c c'>-> <c c'>-> <c c'>-> <c c'>-> |
    \times 2/3 {<c c'>8-. b'-. a-.} \override TupletNumber #'transparent = ##t \times 2/3 {g8-. a-. b-.} \times 2/3 {c8-. b-. a-.} \times 2/3 {g8-. a-. b-.} |
    \times 2/3 {c8-. b-. a-.} \times 2/3 {g8-. a-. b-.} \times 2/3 {c8-. b-. a-.} \times 2/3 {g8-. a-. b-.} | % 1.1 - 4
    c4 r <c c,>-> <c c,>-> |
    \override TupletNumber #'transparent = ##f 
    \times 2/3 {<c c,>8-. b-. a-.} g8[ r16 gis] \times 2/3 {a8-. g-. f-.} e8[ r16 f] |
    g4( e8) r <c' c,>4-> <c c,>-> |
    \override TupletNumber #'transparent = ##t 
    \times 2/3 {<c c,>8-.-5 b-. a-.} g8[ r16 gis-3] \times 2/3 {a8-.-4 g-. f-.} e8[ r16 f] | % 1.2 - 8
    g4( e8) r <c' c,>4-> <ees ees,>-> |
    \times 2/3 {<d d,>8-. c-. bes-.} a8[ r16 c] \times 2/3 {bes8-. a-. g-.} fis8[ r16 g] |
    a4( d,8) r <c' c,>4-> <ees ees,>-> |
    \times 2/3 {<d d,>8-. c-. bes-.} a8[ r16 c] \times 2/3 {bes8-. a-. g-.} fis8[ r16 g] | % 1.3 - 12
    a4( d,8) r d''4-> d-> |
    \override TupletNumber #'transparent = ##f 
    \times 2/3 {<c a d,>8 <c a d,> <c a d,>} <c a d,>8 r d4-> d8. d16 |
    \times 2/3 {<bes g d>8 <bes g d> <bes g d>} <bes g d>8 r d4-> d-> |
    \times 2/3 {<a fis d>8 <a fis d> <a fis d>} <a fis d>8 r <bes g d> r <c a d,> r | % 1.4 - 16
    <a fis d>4\sustainDown <a fis d> <a fis d> <bes g d> |
    <c a d,>\sustainUp\sustainDown <d bes d,> \acciaccatura d,8 <c' ees>4 \acciaccatura d,8 <cis' e>4 |
    \acciaccatura d,8 <d' fis>4\sustainUp\sustainDown <a fis d> <a fis d> <bes g d> | % 1.5 - 19
    <c a d,>\sustainUp\sustainDown <d bes d,> \acciaccatura d,8 <c' ees>4 \acciaccatura d,8 <cis' e>4 |
    \override TupletNumber #'transparent = ##t 
    \acciaccatura d,8 <d' fis>4\sustainUp\sustainDown \times 2/3 {<d, d,>8 <d d,> <d d,>} <d d,>4 <d d,> |
    <d d,>4\sustainUp\sustainDown \times 2/3 {<d d,>8 <d d,> <d d,>} <d d,>4 <d d,> |
    <d d,>4\sustainUp r r2 |
    R1 | % 2.1 - 24
    \bar "||"
    \key bes \major
    \time 3/8
    \once\override DynamicLineSpanner #'padding = #2
    g8-.^\p <bes d g>-. <bes d g>-. |
    g <bes d g> <bes d g> |
    g <bes d g> <bes d g> |
    g <bes d g> <bes d g> |
    g <bes d g> <bes d g> | % 2. 2- 29
    g <bes d g> <bes d g> |
    g <bes d g> <bes d g> |
    d, <a' d fis> <a d fis> |
    g <bes d g> <bes d g> |
    d, <a' d fis> <a d fis> | % 2.3 - 34
    g <bes d g> <bes d g> |
    g <bes d g> <bes d g> |
    g <bes d g> <bes d g> |
    g <bes d g> <bes d g> |
    g <bes d g> <bes d g> | % 2.4 - 39
    d, <a' d fis> <a d fis> |
    g <bes d g> <bes d g> |
    d, <a' d fis> <a d fis> |
    g <bes d g> <bes d g> |
    <bes bes,> <bes d f> <bes d f> |
    <bes bes,> <bes d f> <bes d f> | % 2.5 - 45
    f <a c f> <a c f> |
    f <a c f> <a c f> |
    <bes bes,> <bes d f> <bes d f> |
    <bes bes,> <bes d f> <bes d f> |
    f <a c f> <a c f> |
    f <a c f> <a c f> | % 2.6 - 51
    g <bes d g> <bes d g> |
    g <bes d g> <bes d g> |
    g <bes d g> <bes d g> |
    g <bes d g> <bes d g> |
    d, <a' d fis> <a d fis> | % 3.1 - 56
    g <bes d g> <bes d g> |
    d, <a' d fis> <a d fis> |
    g <bes d g> <bes d g> |
    g <bes d g> <bes d g> |
    g, <d' g b> <d g b> | % 3.2 - 61
    g, <d' g b> <d g b> |
    g, <d' g b> <d g b> |
    g, <d' g b> <d g b> |
    \stemDown
    <d d,> <d fis a> <d fis a> |
    <d d,> <d fis a> <d fis a> | % 3.3 - 66
    <d d,> <d fis a> <d fis a> |
    <d d,> <d fis a> <d fis a> |
    g, <d' g b> <d g b> |
    g, <d' g b> <d g b> |
    g, <d' g b> <d g b> | % 3.4 - 71
    g, <d' g b> <d g b> |
    <d d,> <d fis a> <d fis a> |
    <d d,> <d fis a> <d fis a> |
    <d d,> <d fis a> <d fis a> |
    <d d,> <d fis a> <d fis a> |
    g, <bes'! d> <bes d> | % 3.5 - 77
    g <bes! d g> <bes d g> |
    g <bes d g> <bes d g> |
    g <bes d g> <bes d g> |
    g <bes d g> <bes d g> |
    d, <a' d fis> <a d fis> | % 4.1 - 82
    g <bes d g> <bes d g> |
    d, <a' d fis> <a d fis> |
    <g bes d g>4 r8 |
    <g d g,>8-> <bes d> <g bes> | % 4.2 - 86 
    <d a d,>-> <a' c> <fis a> |
    <d a d,>-> <a' c> <fis a> |
    <g d g,>8-> <bes d> <g bes> |
    <g d g,>8-> <bes d> <g bes> | % 4.3 - 90
    <d a d,>-> <a' c> <fis a> |
    <d a d,>-> <a' c> <fis a> |
    <g d bes g>4 r8 |
    <g d g,>8-> <bes d> <g bes> | % 4.4 - 94
    <d a d,>-> <a' c> <fis a> |
    <d a d,>-> <a' c> <fis a> |
    <g d g,>8-> <bes d> <g bes> |
    <g d g,>8-> <bes d> <g bes> |  % 4.5 - 98
    <d a d,>-> <a' c> <fis a> |
    <d a d,>-> <a' c> <fis a> |
    <g d bes g> <g bes d> <g bes d> |
    \once\override DynamicLineSpanner #'padding = #3.5
    <g g,>^\pp <g bes d> <g bes d> | % 4.6 - 102
    g, <d' g b> <d g b> |
    g, <d' g b> <d g b> |
    g, <d' g b> <d g b> |
    g, <d' g b> <d g b> |
    <d d,> <d fis a> <d fis a> | % 5.1 - 107
    <d d,> <d fis a> <d fis a> |
    <d d,> <d fis a> <d fis a> |
    <d d,> <d fis a> <d fis a> |
    g, <d' g b> <d g b> |
    g, <d' g b> <d g b> | % 5.2 - 112
    g, <d' g b> <d g b> |
    g, <d' g b> <d g b> |
    <d d,> <d fis a> <d fis a> |
    <d d,> <d fis a> <d fis a> |
    <d d,> <d fis a> <d fis a> | % 5.3 - 117
    <d d,> <d fis a> <d fis a> |
    g, <bes'! d> <bes d> |
    g <bes! d g> <bes d g> |
    g <bes d g> <bes d g> |
    g <bes d g> <bes d g> | % 5.4 - 122
    g <bes d g> <bes d g> |
    d, <a' d fis> <a d fis> |
    g <bes d g> <bes d g> |
    d, <a' d fis> <a d fis> |
    g <bes d g> <bes d g> | % 5.5 - 127
    g <bes d g> <bes d g> |
    g <bes d g> <bes d g> |
    g <bes d g> <bes d g> |
    g <bes d g> <bes d g> |
    d, <a' d fis> <a d fis> | % 6.1 - 132
    g <bes d g> <bes d g> |
    d, <a' d fis> <a d fis> |
    g <bes d g> <bes d g> |
    <bes bes,> <bes d f> <bes d f> |
    <bes bes,> <bes d f> <bes d f> | % 6.2 - 137
    f <a c f> <a c f> |
    f <a c> <a c> |
    <bes bes,> <bes d f> <bes d f> |
    <bes bes,> <bes d f> <bes d f> |
    f <a c f> <a c f> | % 6.3 - 142
    f <a c f> <a c f> |
    g <bes d g> <bes d g> |
    g <bes d g> <bes d g> |
    g <bes d g> <bes d g> |
    g <bes d g> <bes d g> | % 6.4 - 147
    d, <a' d fis> <a d fis> |
    g <bes d g> <bes d g> |
    d, <a' d fis> <a d fis> |
    \bar "||"
    \key g \major
    g <b d g> <b d g> |
    g <b d g> <b d g> | % 6.5 - 152
    g,-. <d' g b>-. <d g b>-. |
    g,-. <d' g b>-. <d g b>-. |
    g,-. <d' g b>-. <d g b>-. |
    g,-. <d' g b>-. <d g b>-. |
    <d d,>-. <d fis a>-. <d fis a>-. |
    <d d,>-. <d fis a>-. <d fis a>-. |
    <d d,>-. <d fis a>-. <d fis a>-. | % 7.1 - 159
    <d d,>-. <d fis a>-. <d fis a>-. |
    g,-. <d' g b>-. <d g b>-. |
    g,-. <d' g b>-. <d g b>-. |
    g,-. <d' g b>-. <d g b>-. |
    g,-. <d' g b>-. <d g b>-. |
    <d d,>-. <d fis a>-. <d fis a>-. |
    <d d,>-. <d fis a>-. <d fis a>-. | % 7.2 - 166
    <d d,>-. <d fis a>-. <d fis a>-. |
    <d d,>-. <d fis a>-. <d fis a>-. |
    <g g,>-. <d g b>-. <d g b>-. |
    <g g,>-. <d g b>-. <d g b>-. |
    <g g,>-. <d g b>-. <d g b>-. |
    <g g,>-. <d g b>-. <d g b>-. |
    <d d,>-. <d fis a>-. <d fis a>-. | % 7.3 - 173
    <d d,>-. <d fis a>-. <d fis a>-. |
    <d d,>-. <d fis a>-. <d fis a>-. |
    <d d,>-. <d fis a>-. <d fis a>-. |
    \repeat volta 2 {
      <g d b g>4 r8 |
      <g d g,>-> <b d> <g b> |
      <d a d,>-> <fis a c> <d fis a> | % 7.4 - 179
      <d a d,>-> <fis a c> <d fis a> |
      <g d b g>-> <g d b g> r |
      <g d g,>-> <b d> <g b> |
      <d a d,>-> <fis a c> <d fis a> |
      <d a d,>-> <fis a c> <d fis a> | % 7.5 - 184
    }
    <g d b g>8 <d a d,>4-> |
    <d b g>8 <d a d,>4-> |
    <d b g>8 <d a d,>4-> |
    <d b g>8 <d a d,>4-> |
    \repeat volta 2 {
      <g d b g>8 <g d b g> <g d b g> |
      <g d b g> <g d b g> <g d b g> |
    }
    <g d b g>4\arpeggio r8\fermata | % fin
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
    first-page-number = 86
    print-first-page-number = ##t
    ragged-last-bottom = ##f
    %#(set-paper-size "a4")
}
