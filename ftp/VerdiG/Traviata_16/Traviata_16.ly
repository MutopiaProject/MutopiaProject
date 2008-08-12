\version "2.10.33"
\header {
    title = \markup \center-align { \bigger "La Traviata" " " }
    subtitle = "Coro baccanale"
    subsubtitle = \markup {\italic "«Largo al quadrupede»"}
    composer = "G. Verdi"
    arranger = "Transcripción de N. Toledo"
    piece = "Nº 16"

    %copyright = "Calcografía de la 'Nueva Biblioteca Musical Económica', 1857-1869"
    % Mutopia headers
    mutopiatitle = "La Traviata - N16 Coro baccanale"
    mutopiacomposer = "VerdiG"
    mutopiainstrument = "Piano"
    source = "Calcografía de la 'Nueva Biblioteca Musical Económica', 1857-1869"
    style = "Romantic"
    copyright = "Public Domain"
    maintainer = "Alberto Corella"
    maintainerEmail = "ppiano@telefonica.net"
 footer = "Mutopia-2008/08/12-1517"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

upper = \relative c'' {
    \clef treble
    \key d \major
    \time 2/4
    \set fingeringOrientations = #'(left)
    \once\override TextScript #'padding = #2
    #(set-octavation 1)
    <d'-2 fis-4>4\ff->^\markup{\line {\bold "Allegro vivacissimo. ("\note #"4" #1 \bold " = 120)"}} <d-2 a-1>8-. <d a>-. |
    <a-4 fis-2>4 <a fis>8-. <b g>-. |
    <g e>4 <g-4 e-2>8-. <a fis>-. |
    <fis-3 d-1>4 <a fis> |
    <d fis>4-> <d a>8-. <d a>-. |
    <a fis>4 <a fis>8-. <b g>-. | % 1.1 - 6
    <g e>4 <g e>8-. <a fis>-. |
    <fis d>4 <a fis> #(set-octavation 0) |
    <bes bes,>4-> <d d,>8-. <bes bes,>-. |
    <bes bes,>-. <a a,>-. <a a,>4 |
    <g g,>-> <a a,>8-. <g g,>-. |
    <f f,>-. <e e,>-. <d d,>4-. | % 1.2 - 12
    <bes' bes,>4-> <d d,>8-. <bes bes,>-. |
    <bes bes,>-. <a a,>-. <a a,>4 |
    <a a,>8-. <g g,>-. <f f,>-. <e e,>-. |
    \override TrillSpanner #'edge-text =  #(cons (markup #:line (#:halign -0.5 #:musicglyph "scripts.trill" #:teeny #:raise 0.65 #:natural)) "")
    \acciaccatura e8 e,2\startTrillSpan ~ |
    e2 |
    d4_1\stopTrillSpan r |
    r4 \times 2/3 {r8 a' cis} | % 1.3 - 19
    \bar "||"
    \time 6/8
    e4 cis8 e4 cis8 |
    e4 cis8 e4 cis8 |
    e4 cis8 e4 cis8 |
    e4.-1 \override TupletNumber #'transparent = ##t \override TupletBracket #'transparent = ##t \once\override Staff.OttavaBracket #'padding = #2.5 #(set-octavation 1) \times 6/7 {a'16\(-5 gis fis e d cis-3 b\)} |
    a4 a8 gis4 gis8 |
    a4 r8 \times 6/7 {a'16\( gis fis e d cis b\)} | % 1.4 - 25
    a4 a8 gis4 gis8 |
    a4 #(set-octavation 0) r8 r4\fermata r8 |
    \bar "||"
    \time 2/4
    #(set-octavation 1)
    <d fis>4-> <d a>8-. <d a>-. |
    <a fis>4 <a fis>8-. <b g>-. |
    <g e>4 <g e>8-. <a fis>-. |
    <fis d>4 <a fis> | % 1.5 - 31
    <d fis>4-> <d a>8-. <d a>-. |
    <a fis>4 <a fis>8-. <b g>-. |
    <g e>4 <g e>8-. <a fis>-. |
    <fis d>4 <a fis> #(set-octavation 0) |
    <bes bes,>4-> <d d,>8-. <bes bes,>-. |
    <bes bes,>-. <a a,>-. <a a,>4 |
    <g g,>-> <a a,>8-. <g g,>-. | % 2.1 - 38
    <f f,>-. <e e,>-. <d d,>4-. | 
    <bes' bes,>4-> <d d,>8-. <bes bes,>-. |
    <bes bes,>-. <a a,>-. <a a,>4 |
    <a a,>8-. <g g,>-. <f f,>-. <e e,>-. |
    \override TrillSpanner #'edge-text =  #(cons (markup #:line (#:halign -0.5 #:musicglyph "scripts.trill" #:teeny #:raise 0.65 #:natural)) "")
    \acciaccatura e8 e,2\startTrillSpan ~ |
    e2 |
    d4\stopTrillSpan r |
    r4 \times 2/3 {r8 a' cis} | % 2.2 - 46
    \bar "||"
    \time 6/8
    e4 cis8 e4 cis8 |
    e4 cis8 e4 cis8 |
    e4 cis8 e4 cis8 |
    e4. \override TupletNumber #'transparent = ##t \override TupletBracket #'transparent = ##t \once\override Staff.OttavaBracket #'padding = #2.5 #(set-octavation 1) \times 6/7 {a'16\( gis fis e d cis b\)} |
    a4 a8 gis4 gis8 |
    a4 r8 \times 6/7 {a'16\( gis fis e d cis b\)} | % 2.3 - 52
    a4 a8 gis4 gis8 |
    a4 r8 r4\fermata r8 |
    \bar "||"
    \time 2/4
    <d fis>4-> <d a>8-. <d a>-. |
    <a fis>4 <a fis>8-. <b g>-. |
    <g e>4 <g e>8-. <a fis>-. |
    <fis d>4 <a fis> |
    <d fis>4-> <d a>8-. <d a>-. | % 2.4 - 59
    <a fis>4 <a fis>8-. <b g>-. |
    <g e>4 <g e>8-. <a fis>-. |
    <fis d>4 <a fis> |
    <e' cis a> <g e a,>8 <g e a,> |
    <fis d a> <d d,> <d d,>4-> |
    <e cis a> <g e a,>8 <g e a,> |
    <fis d a>4 <d d,> |
    <e cis a> <g e a,> | % 2.5 - 67
    <fis d a>-> <d d,>-> |
    <e cis a>-> <a e cis a>-> |
    <d, d,>2 ~ |
    <d d,> ~ |
    <d d,> ~ |
    <d d,>4 \revert TupletNumber #'transparent \revert TupletBracket #'transparent \once\override TextScript #'padding = #2 \times 4/7 {d16_\markup{"Velocissimo"}\( e fis g a b cis\)} |
    d4 #(set-octavation 0) r\fermata | % fin
    \bar "|."
}
lower = \relative c {
    \clef bass
    \key d \major
    \time 2/4
    <d fis a>4-> <d fis a>8-. <d fis a>-. |
    <d fis a>4 <d d'>8-. <d d'>-. |
    <a a'>4 <a a'>8-. <a a'>-. |
    \set fingeringOrientations = #'(left)
    <d-4 fis-2>4 <d fis> |
    <d fis a>4-> <d fis a>8-. <d fis a>-. |
    <d fis a>4 <d d'>8-. <d d'>-. | % 1.1 - 6
    <a a'>4 <a a'>8-. <a a'>-. |
    <d fis>4 <d fis> |
    bes'->-2 d8-. bes-. |
    bes-. a-. a4 |
    g-> a8-.-1 g-. |
    f-. e-. d4-. | % 1.2 - 12
    bes'-> d8-. bes-. |
    bes-. a-. a4 |
    a8-.-1 g-. f-. e-. |
    \override TrillSpanner #'edge-text =  #(cons (markup #:line (#:halign -0.5 #:musicglyph "scripts.trill" #:teeny #:raise 0.65 #:natural)) "")
    e2\startTrillSpan ~ |
    e2 |
    d4\stopTrillSpan r |
    r \times 2/3 {r8 a' cis} | % 1.3 - 19
    \bar "||"
    \time 6/8
    e4 cis8 e4 cis8 |
    e4 cis8 e4 cis8 |
    e4 cis8 e4 cis8 |
    e4. e->-1 |
    <e cis e,>4 <cis a e>8 <d b e,>4 <b gis e>8 |
    <cis a>8 r4 e4.-> | % 1.4 - 25
    <e cis e,>4 <cis a e>8 <d b e,>4 <b gis e>8 |
    <cis a>4 r8 r4\fermata r8 |
    \bar "||"
    \time 2/4
    <d, fis a>4-> <d fis a>8-. <d fis a>-. |
    <d fis a>4 <d d'>8-. <d d'>-. |
    <a a'>4 <a a'>8-. <a a'>-. |
    <d fis>4 <d fis> | % 1.5 - 31
    <d fis a>4-> <d fis a>8-. <d fis a>-. |
    <d fis a>4 <d d'>8-. <d d'>-. | 
    <a a'>4 <a a'>8-. <a a'>-. |
    <d fis>4 <d fis> |
    bes'-> d8-. bes-. |
    bes-. a-. a4 |
    g-> a8-. g-. | % 2.1 - 38
    f-. e-. d4-. | 
    bes'-> d8-. bes-. |
    bes-. a-. a4 |
    a8-. g-. f-. e-. |
    \override TrillSpanner #'edge-text =  #(cons (markup #:line (#:halign -0.5 #:musicglyph "scripts.trill" #:teeny #:raise 0.65 #:natural)) "")
    e2\startTrillSpan ~ |
    e2 |
    d4\stopTrillSpan r |
    r \times 2/3 {r8 a' cis} | % 2.2 - 46
    \bar "||"
    \time 6/8
    e4 cis8 e4 cis8 |
    e4 cis8 e4 cis8 |
    e4 cis8 e4 cis8 |
    e4. e-> |
    <e cis e,>4 <cis a e>8 <d b e,>4 <b gis e>8 |
    <cis a>8 r4 e4.-> | % 2.3 - 52
    <e cis e,>4 <cis a e>8 <d b e,>4 <b gis e>8 |
    <cis a>4 r8 r4\fermata r8 |
    \bar "||"
    \time 2/4
    <d, fis a>4-> <d fis a>8-. <d fis a>-. |
    <d fis a>4 <d d'>8-. <d d'>-. |
    <a a'>4 <a a'>8-. <a a'>-. |
    <d fis>4 <d fis> |
    <d fis a>4-> <d fis a>8-. <d fis a>-. | % 2.4 - 59
    <d fis a>4 <d d'>8-. <d d'>-. | 
    <a a'>4 <a a'>8-. <a a'>-. |
    <d fis>4 <d fis> |
    <e a,>-> <e a,>-> |
    <fis d>-> <fis d>-> |
    <e a,>-> <e a,>-> |
    <fis d>-> <fis d>-> |
    <e a,>-> <e a,>-> | % 2.5 - 67
    <fis d>-> <fis d>-> |
    <e a,>-> <e a,>-> |
    d8 d' d, d' |
    d, d' d, d' |
    d, d' d, d' |
    d, d' \times 4/7 {d,16\( e fis g a b cis\)} |
    d4 r\fermata | % fin
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
    first-page-number = 120
    print-first-page-number = ##t
    ragged-last-bottom = ##f
    %#(set-paper-size "a4")
}
