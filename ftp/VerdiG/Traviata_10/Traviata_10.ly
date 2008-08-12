\version "2.10.33"
\header {
    title = \markup \center-align { \bigger "La Traviata" " "}
    subtitle = "Finale del Atto II"
    subsubtitle = \markup {\italic "«Avrem lieta di maschere»"}
    composer = "G. Verdi"
    arranger = "Transcripción de N. Toledo"
    piece = "Nº 10"

    %copyright = "Calcografía de la 'Nueva Biblioteca Musical Económica', 1857-1869"
    % Mutopia headers
    mutopiatitle = "La Traviata - N10 Finale del Atto II"
    mutopiacomposer = "VerdiG"
    mutopiainstrument = "Piano"
    source = "Calcografía de la 'Nueva Biblioteca Musical Económica', 1857-1869"
    style = "Romantic"
    copyright = "Public Domain"
    maintainer = "Alberto Corella"
    maintainerEmail = "ppiano@telefonica.net"
 footer = "Mutopia-2008/08/12-1511"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}


upper = \relative c'' {
    \clef treble
    \key c \major
    \time 4/4
    \set fingeringOrientations = #'(down)
    \once\override DynamicLineSpanner #'padding = #2.5
    <e g c e>8->\arpeggio\f^\markup{\bold "Allegro brillante"} <c'-3 e-5>16( \once\override DynamicLineSpanner #'padding = #2.5 <b d>)\p <a c>8-. <g-3 b-5>-. <f a>-. <e g>-. <dis fis>-. <f a>-. |
    \acciaccatura <f a>8 <e g>-. <dis fis>-. <e g>-. <f a>-. <e g>4-. r |
    \acciaccatura <e g>8 <d f>-. <cis e>-. <d f>-. <e g>-. <d f>4-. r | % 1.1 - 3
    \acciaccatura <d f>8 <c e>-. <b dis>-. <c e>-. <d f>-. <c e>4-. r |
    \once\override DynamicLineSpanner #'padding = #2.5
    <e g c e>8->\arpeggio\f <c' e>16( \once\override DynamicLineSpanner #'padding = #2.5 <b d>)\p <a c>8-. <g b>-. <f a>-. <e g>-. <dis fis>-. <f a>-. |
    \acciaccatura <f a>8 <e g>-. <dis fis>-. <e g>-. <f a>-. <e g>4-. r |
    \acciaccatura <e g>8 <d f>-. <cis e>-. <d f>-. <e g>-. <d f>4-. r | % 1.2 - 7
    \acciaccatura <d f>8 <c e>-. <b dis>-. <c e>-. <d f>-. <c e>4-. r |
    e16-5\( d c b\) a8-. c-. e16\( d c b\) a8-. c-. |
    e16\( d c b\) a8-.-1 c-.-3 e-.-1 a-. c-. a-. |
    b16-5\( a gis f!\) e8-. gis-. b16\( a gis f\) e8-. gis-. | % 1.3 - 11
    b16\( a gis f!\) e8-. gis-. b-. e-. e,-.-1 e-. |
    e16\( d c b\) a8-. c-. e16\( d c b\) a8-. c-. |
    e16\( d c b\) a8-. c-. e-. a-. c-. a-. |
    b16\( a gis f!\) e8-. gis-. b16\( a gis f\) e8-. e'-. | % 1.4 - 15
    \acciaccatura b8 a gis a b a4 r |
    \once\override DynamicLineSpanner #'padding = #2.5
    <e g c e>8->\arpeggio\f <c' e>16( \once\override DynamicLineSpanner #'padding = #2.5 <b d>)\p <a c>8-. <g b>-. <f a>-. <e g>-. <dis fis>-. <f a>-. |
    \acciaccatura <f a>8 <e g>-. <dis fis>-. <e g>-. <f a>-. <e g>4-. r |
    \acciaccatura <e g>8 <d f>-. <cis e>-. <d f>-. <e g>-. <d f>4-. r |% 1.5 - 19
    \acciaccatura <d f>8 <c e>-. <b dis>-. <c e>-. \acciaccatura <c e>8 <d f>-. <c e>4 r |
    \once\override DynamicLineSpanner #'padding = #2.5
    <e g c e>8->\arpeggio\f <c' e>16( \once\override DynamicLineSpanner #'padding = #2.5 <b d>)\p <a c>8-. <g b>-. <f a>-. <e g>-. <dis fis>-. <f a>-. |
    \acciaccatura <f a>8 <e g>-. <dis fis>-. <e g>-. <f a>-. <e g>4-. r |
    \acciaccatura <e g>8 <d f>-. <cis e>-. <d f>-. <e g>-. <d f>4-. r | % 2.1 - 23
    \acciaccatura <d f>8 <c e>-. <b dis>-. <c e>-. <d f>-. <c e>4-. r |
    e16-\( d c b\) a8-. c-. e16\( d c b\) a8-. c-. |
    e16\( d c b\) a8-. c-. e-. a-. c-. a-. |
    b16-\( a gis f!\) e8-. gis-. b16\( a gis f\) e8-. gis-. | % 2.2 - 27
    b16\( a gis f!\) e8-. gis-. b-. e-. e,-. e-. |
    e16\( d c b\) a8-. c-. e16\( d c b\) a8-. c-. |
    e16\( d c b\) a8-. c-. e-. a-. c-. a-. |
    b16\( a gis f!\) e8-. gis-. b16\( a gis f\) e8-. e'-. | % 2.3 - 31
    a,4 r #(set-octavation 1) e'16_5\( d c b a8\) r |
    d16\( c b a g8\) r e'16\( d c b a8\) r |
    d16\( c b a g8\) r e'16\( d c b a8\) r |
    d16\( c b a g8\) r e'16\( d c b a8\) r #(set-octavation 0) | % 2.4 - 35
    \once\override DynamicLineSpanner #'padding = #1.5
    g8-.-4\pp fis16( e) d8-. e16( fis) g8-. fis16( e) d8-. e16( fis) |
    g8-. fis16( e) d8-. e16( fis) g8-. fis16( e) d8-. e16( fis) |
    \once\override Staff.OttavaBracket #'padding = #1
    #(set-octavation 1)
    g'8-. fis16( e) d8-. e16( fis) g8-. fis16( e) d8-. e16( fis) |
    \once\override TextScript #'padding = #3
    g8-._\markup{\italic "cresc"} fis16( e) d8-. e16( fis) g8-. fis16( e) d8-. e16( fis) | % 2.5 - 39
    g4-> \appoggiatura {d32_2[ e fis]} <g g,>4-> \appoggiatura {d32[ e fis]} <g g,>4-> \appoggiatura {d32[ e fis]} <g g,>4-> |
    \appoggiatura {d32[ e fis]} <g g,>4-> \appoggiatura {d32[ e fis]} <g g,>4-> \appoggiatura {d32[ e fis]} <g g,>4-> \appoggiatura {d32[ e fis]} <g g,>4-> |
    \appoggiatura {d32[ e fis]} <g g,>4-> #(set-octavation 0) r r2 | % fin
    \bar "|."
}
lower = \relative c {
    \clef bass
    \key c \major
    \time 4/4
    \stemDown
    <c c,>8 <e g c> <e g c> <e g c> <e g c> <e g c> <e g c> <e g c> |
    c <e g c> <e g c> <e g c> c <e g c> <e g c> <e g c> |
    g, <f' g b> <f g b> <f g b> g, <f' g b> <f g b> <f g b> | % 1.1 - 3
    c <e g c> <e g c> <e g c> c <e g c> <e g c> <e g c> |
    <c c,>8 <e g c> <e g c> <e g c> <e g c> <e g c> <e g c> <e g c> |
    c <e g c> <e g c> <e g c> c <e g c> <e g c> <e g c> |
    g, <f' g b> <f g b> <f g b> g, <f' g b> <f g b> <f g b> | % 1.2 - 7
    c <e g c> <e g c> <e g c> c <e g c> <e g c> <e g c> |
    a <c e> <c e> <c e> a <c e> <c e> <c e> |
    a <c e> <c e> <c e> a <c e> <c e> <c e> |
    e, <gis b e> <gis b e> <gis b e> e <gis b e> <gis b e> <gis b e> | % 1.3 - 11
    e <gis b e> <gis b e> <gis b e> e <gis b e> <gis b e> <gis b e> |
    a <c e> <c e> <c e> a <c e> <c e> <c e> |
    a <c e> <c e> <c e> a <c e> <c e> <c e> |
    e, <gis b e> <gis b e> <gis b e> e <gis b e> <gis b e> <gis b e> | % 1.4 - 15
    a <c e> <c e> <c e> <a c>4 r |
    <c, c,>8 <e g c> <e g c> <e g c> <e g c> <e g c> <e g c> <e g c> |
    c <e g c> <e g c> <e g c> c <e g c> <e g c> <e g c> |
    g, <f' g b> <f g b> <f g b> g, <f' g b> <f g b> <f g b> | % 1.5 - 19
    c <e g c> <e g c> <e g c> c <e g c> <e g c> <e g c> |
    <c c,>8 <e g c> <e g c> <e g c> <e g c> <e g c> <e g c> <e g c> |
    c <e g c> <e g c> <e g c> c <e g c> <e g c> <e g c> |
    g, <f' g b> <f g b> <f g b> g, <f' g b> <f g b> <f g b> | % 2.1 - 23
    c <e g c> <e g c> <e g c> c <e g c> <e g c> <e g c> |
    a <c e> <c e> <c e> a <c e> <c e> <c e> |
    a <c e> <c e> <c e> a <c e> <c e> <c e> |
    e, <gis b e> <gis b e> <gis b e> e <gis b e> <gis b e> <gis b e> | % 2.2 - 27
    e <gis b e> <gis b e> <gis b e> e <gis b e> <gis b e> <gis b e> |
    a <c e> <c e> <c e> a <c e> <c e> <c e> |
    a <c e> <c e> <c e> a <c e> <c e> <c e> |
    e, <gis b e> <gis b e> <gis b e> e <gis b e> <gis b e> <gis b e> | % 2.3 - 31
    a <c e> <c e> <c e> fis, <a c e> <a c e> <a c e> |
    g <b d> <b d> <b d> fis <a c e> <a c e> <a c e> |
    g <b d> <b d> <b d> fis <a c e> <a c e> <a c e> |
    g <b d> <b d> <b d> fis <a c e> <a c e> <a c e> | % 2.4 - 35
    <g b d>4 <g a c d> <g b d> <g a c d> |
    <g b d> <g a c d> <g b d> <g a c d> |
    \stemNeutral
    <g d b g> <fis d c g> <g d b g> <fis d c g> |
    <g d b g> <fis d c g> <g d b g> <fis d c g> | % 2.5 - 39
    <g d b g> \appoggiatura {d,32_4[ e fis]} <g g,>4-> \appoggiatura {d32[ e fis]} <g g,>4-> \appoggiatura {d32[ e fis]} <g g,>4-> |
    \appoggiatura {d32[ e fis]} <g g,>4-> \appoggiatura {d32[ e fis]} <g g,>4-> \appoggiatura {d32[ e fis]} <g g,>4-> \appoggiatura {d32[ e fis]} <g g,>4-> |
    \appoggiatura {d32[ e fis]} <g g,>4->  r r2 | % fin
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
    first-page-number = 78
    print-first-page-number = ##t
    ragged-last-bottom = ##f
    %#(set-paper-size "a4")
}
