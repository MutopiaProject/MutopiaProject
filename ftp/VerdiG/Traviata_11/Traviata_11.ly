\version "2.10.33"
\header {
    title = \markup \center-align { \bigger "La Traviata" " "}
    subtitle = "Coro di zingari"
    subsubtitle = \markup {\italic "«Noi siamo zingarelle»"}
    composer = "G. Verdi"
    arranger = "Transcripción de N. Toledo"
    piece = "Nº 11"

    %copyright = "Calcografía de la 'Nueva Biblioteca Musical Económica', 1857-1869"
    % Mutopia headers
    mutopiatitle = "La Traviata - N11 Coro di zingari"
    mutopiacomposer = "VerdiG"
    mutopiainstrument = "Piano"
    source = "Calcografía de la 'Nueva Biblioteca Musical Económica', 1857-1869"
    style = "Romantic"
    copyright = "Public Domain"
    maintainer = "Alberto Corella"
    maintainerEmail = "ppiano@telefonica.net"
 footer = "Mutopia-2008/08/12-1512"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}


upper = \relative c'' {
    \clef treble
    \key g \major
    \time 4/4
    \once\override TextScript #'padding = #2.5
    r2^\markup{\bold "Allegro moderato"} r4 r8. <b' b,>16 |
    << {\slurDown \acciaccatura ais8 \once\override Stem #'transparent = ##t b } \\ {\once\override TextScript #'padding = #1.5 <b b,>8_\markup{\italic "legg"} }>> r <g g,> r << {\slurDown \acciaccatura ais8 \once\override Stem #'transparent = ##t b } \\ {<b b,>} >> r <g g,> r|
    <e e,>2. \times 2/3 {<e e,>8-. <fis fis,>-. <g g,>-.} | % 1.1 - 3
    \times 2/3 {<fis fis,>8-. <g g,>-. <a a,>-.} \times 2/3 {<g g,>8-. <a a,>-. <b b,>-.} <a a,>8 r <fis fis,> r |
    <e e,> r <e b g e>-.-> r <e b g e>-.-> r r8. <b' b,>16 |
     << {\slurDown \acciaccatura ais8 \once\override Stem #'transparent = ##t b } \\ {<b b,>8 }>> r <g g,> r << {\slurDown \acciaccatura ais8 \once\override Stem #'transparent = ##t b } \\ {<b b,>} >> r <g g,> r|
    <e e,>2. \times 2/3 {<e e,>8-. <fis fis,>-. <g g,>-.} | % 1.2 - 7
    \times 2/3 {<fis fis,>8-. <g g,>-. <a a,>-.} \times 2/3 {<g g,>8-. <a a,>-. <b b,>-.} <a a,>8 r <fis fis,> r |
    <e e,> r <e b g e>-.-> r <e b g e>-.-> r \set fingeringOrientations = #'(down) \times 2/3 {<g-1 e'-5>8-. <a-1 fis'-4>-. <g e'>-.} |
    <fis-2 d'-5>8[ r16 <fis d'>] <e c'>8[ r16 <e c'>] <d b'>8[ r16 <d b'>] <c a'>8[ r16 <c a'>] | % 1.3 - 10
    <b g'>8[ r16 d] <b g'>8[ r16 d] <b g'>8 r \times 2/3 {<g' e'>8-. <a fis'>-. <g e'>-.} |
    <fis d'>8[ r16 <fis d'>] <e c'>8[ r16 <e c'>] <d b'>8[ r16 <d b'>] <c a'>8[ r16 <c a'>] |
    <b g'>8[ r16 d] <b g'>8[ r16 d] <b' b,>4-> ~ <b b,>8. <b b,>16 | % 1.4 - 13
    << {\slurDown \acciaccatura ais8 \once\override Stem #'transparent = ##t b } \\ {<b b,>8 }>> r <g g,> r << {\slurDown \acciaccatura ais8 \once\override Stem #'transparent = ##t b } \\ {<b b,>} >> r <g g,> r|
    <e e,>2. \times 2/3 {<e e,>8-. <fis fis,>-. <g g,>-.} |
    \times 2/3 {<fis fis,>8-. <g g,>-. <a a,>-.} \times 2/3 {<g g,>8-. <a a,>-. <b b,>-.} <a a,>8 r <fis fis,> r | % 1.5 - 16
    \pageBreak
    \bar "||"
    \key e \major
    <e e,>8 r #(set-octavation 1) \times 2/3 {<gis e'>8 <a fis'> <gis e'>} <b dis>8[ r16 <b dis>] <a fis'>8[-> r16 <a fis'>] |
    <gis b>8 r \set fingeringOrientations = #'(left) <gis-2 e'-5>8[ r16 <gis e'>] #(set-octavation 0) \set fingeringOrientations = #'(down) \times 2/3 {<fis-2 a-4>8-. <eis gis>-. <fis a>-.} <gis b>8[ r16 <fis a>] | % 2.1 - 18
    <e gis>8 r #(set-octavation 1) \times 2/3 {<gis e'>8 <a fis'> <gis e'>} <b dis>8[ r16 <b dis>] <a fis'>8[-> r16 <a fis'>] |
    <gis b>8 r <gis e'>8[ r16 <gis e'>] #(set-octavation 0) \times 2/3 {<fis a>8-. <eis gis>-. <fis a>-.} <gis b>8[ r16 <fis a>] |
    <e gis>8 r \override TupletNumber #'transparent = ##t \times 2/3 {fis,-2\ppp\( gis a\)} \times 2/3 {b\( gis e\)} \times 2/3 {fis-2\( gis a\)} | % 2.2 - 21
    \times 2/3 {b8\( gis e\)} \times 2/3 {ais8\( b cis\)} \times 2/3 {dis8\( b gis\)} \times 2/3 {ais8\( b cis\)} |
    \times 2/3 {dis8\( b gis\)} \once\override DynamicLineSpanner #'padding = #1.5  \times 2/3 {b'8-3\(\< cis b\)} \times 2/3 {b8\( cis b\)} \times 2/3 {b8\( cis b\)\!} |
    b4 \once\override Staff.OttavaBracket #'padding = #1 #(set-octavation 1) \set fingeringOrientations = #'(left) \times 2/3 {<e-3 gis-5>8-. <dis fis>-. <cis e>-.} \set fingeringOrientations = #'(down) <b-2 dis-4>8\noBeam r <a cis> r | % 2.3 - 24
    <gis b> r \set fingeringOrientations = #'(left) \times 2/3 {<cis-3 e-5>8-. <b dis>-. <a cis>-.} \set fingeringOrientations = #'(down) <gis-3 b-5>8 r <fis a> r |
    <e gis>8-. #(set-octavation 0) r \once\override DynamicLineSpanner #'padding = #1.5 \times 2/3 {fis,\pp\( gis a\)} \times 2/3 {b\( gis e\)} \times 2/3 {fis\( gis a\)} |
    \times 2/3 {b8\( gis e\)} \times 2/3 {ais8\( b cis\)} \times 2/3 {dis8\( b gis\)} \times 2/3 {ais8\( b cis\)} | % 2.4 - 27
    \times 2/3 {dis8\( b gis\)} \once\override DynamicLineSpanner #'padding = #1.5  \times 2/3 {b'8\(\< cis b\)} \times 2/3 {b8\( cis b\)} \times 2/3 {b8\( cis b\)\!} |
    b4 \once\override Staff.OttavaBracket #'padding = #1 #(set-octavation 1) \times 2/3 {<e gis>8-. <dis fis>-. <cis e>-.} <b dis>8\noBeam r <a cis> r |
    <gis b> r \times 2/3 {<cis e>8-. <b dis>-. <a cis>-.} <gis b>8 r <fis a> r #(set-octavation 0)| % 2.5 - 30
    <e gis> r <e gis b e>->\f r e,4-> r |
    \once\override DynamicLineSpanner #'padding = #2
    fis'4->-3\p( e8-2) r fis4->( e8) r |
    fis8 r e r <a a,>4-> r |
    d,4->( cis8) r d4->( cis8) r | % 2.6 - 34
    e8 r d r <fis fis,>4-> r |
    a4->(\< gis8) r cis4->( b8) r |
    d4->(\!\> cis8) r b r a r\! | % 3.1 - 37
    gis16-3\( a gis fisis\) gis8-. b-. fis16-2\( gis fis eis\) fis8-. b-.-5 |
    << {e,1^\markup{\finger "1 5"}(} \\ {r2 <d b gis>2} >> |
    << {fis4->-5)( e8)} \\ {<cis a>4 s8} >> r8 fis4( e8) r | % 3.2 - 40
    fis8 r e r <a a,>4-> r |
    d,4->( cis8) r d4->( cis8) r |
    e r d r <fis fis,>4-> r | % 3.3 - 43
    \set doubleSlurs = ##t
    <a a,>4->-5( <gis gis,>8-4) r <d' d,> r <cis cis,> r |
    <b b,>4->( <a a,>8) r <gis gis,> r <fis fis,> r |
    e16\( fis e dis!\) e8-. gis-. dis16\( e dis cisis\) dis8-. gis-. | % 3.4 - 46
    \once\override TextScript #'padding = #1
    cis,8-._\markup{\italic "legg"} \set doubleSlurs = ##f a'16-4( gis) fisis\( gis a gis\) dis8-.-1 a'16-4( gis) fisis\( gis a gis\) |
    e8-.-1 a16-4( gis) fisis\( gis a gis\) dis8-.-2 e-.-1 fis-. gis-. | % 3.5 - 48
    cis,8-. a'16-4( gis) fisis\( gis a gis\) dis8-.-1 a'16-4( gis) fisis\( gis a gis\) |
    e8-.-1 a16-4( gis) fisis\( gis a gis\) dis8-.-2 e-.-1 fis-. gis-. |
    b,4 r8 b'-4-. c-.-5 a-. fis-. dis-. | % 3.6 - 51
    b'16-5\( a g fis\) e8 b' c-. a-. fis-. dis!-. |
    b'16\( a g fis\) e8 b' c-. a-. fis-. dis!-. |
    b'16\( a g fis\) e8 b' c-. a-. fis-. dis!-. | % 4.1 - 54
    e8\noBeam e-4-.\( dis!-. e-.\) d4\( c |
    b8\)\noBeam c-.\( b-. c-.\) g4\( a |
    b8\noBeam e-.\( dis!-. e-.\) d4\( c |
    b8\)\noBeam c-.\( b-. c-.\) g4\( a | % 4.2 - 58
    b2\) ~ b4 ~ b8. b'16 |
    << {\slurDown \acciaccatura ais8 \once\override Stem #'transparent = ##t b } \\ {\once\override TextScript #'padding = #1.5 <b b,>8_\markup{\italic "leggeris."} }>> r <g g,> r << {\slurDown \acciaccatura ais8 \once\override Stem #'transparent = ##t b } \\ {<b b,>} >> r <g g,> r|
    <e e,>2. \times 2/3 {<e e,>8-. <fis fis,>-. <g g,>-.} | 
    \times 2/3 {<fis fis,>8-. <g g,>-. <a a,>-.} \times 2/3 {<g g,>8-. <a a,>-. <b b,>-.} <a a,>8 r <fis fis,> r | % 4.3 - 62
    <e e,> r <e b g e>-.-> r <e b g e>-.-> r r8. <b' b,>16 |
    << {\slurDown \acciaccatura ais8 \once\override Stem #'transparent = ##t b } \\ {<b b,>8 }>> r <g g,> r << {\slurDown \acciaccatura ais8 \once\override Stem #'transparent = ##t b } \\ {<b b,>} >> r <g g,> r|
    <e e,>2. \times 2/3 {<e e,>8-. <fis fis,>-. <g g,>-.} | % 4.4 - 65
    \times 2/3 {<fis fis,>8-. <g g,>-. <a a,>-.} \times 2/3 {<g g,>8-. <a a,>-. <b b,>-.} <a a,>8 r <fis fis,> r |
    <e e,>8 r #(set-octavation 1) \times 2/3 {<gis e'>8 <a fis'> <gis e'>} <b dis>8[ r16 <b dis>] <a fis'>8[-> r16 <a fis'>] |
    <gis b>8 r <gis e'>8[ r16 <gis e'>] #(set-octavation 0) \times 2/3 {<fis a>8-. <eis gis>-. <fis a>-.} <gis b>8[ r16 <fis a>] | % 4.5 - 68
    <e gis>8 r #(set-octavation 1) \times 2/3 {<gis e'>8 <a fis'> <gis e'>} <b dis>8[ r16 <b dis>] <a fis'>8[-> r16 <a fis'>] |
    <gis b>8 r <gis e'>8[ r16 <gis e'>] #(set-octavation 0) \times 2/3 {<fis a>8-. <eis gis>-. <fis a>-.} <gis b>8[ r16 <fis a>] |
    <e gis>8 r \times 2/3 {fis,\( gis a\)} \times 2/3 {b\( gis e\)} \times 2/3 {fis\( gis a\)} | % 4.6 - 71
    \times 2/3 {b8\( gis e\)} \times 2/3 {ais8\( b cis\)} \times 2/3 {dis8\( b gis\)} \times 2/3 {ais8\( b cis\)} |
    \times 2/3 {dis8\( b gis\)} \once\override DynamicLineSpanner #'padding = #1.5  \times 2/3 {b8\(\< cis b\)} \times 2/3 {b8\( cis b\)} \times 2/3 {b8\( cis b\)\!} | % 5.1 - 73
    b4 \once\override Staff.OttavaBracket #'padding = #1 #(set-octavation 1) \times 2/3 {<e' gis>8-. <dis fis>-. <cis e>-.} <b dis>8\noBeam r <a cis> r | 
    <gis b> r \times 2/3 {<cis e>8-. <b dis>-. <a cis>-.} <gis b>8 r <fis a> r | % 5.2 - 75
    <e gis>8-. #(set-octavation 0) r \times 2/3 {fis,\( gis a\)} \times 2/3 {b\( gis e\)} \times 2/3 {fis\( gis a\)} |
    \times 2/3 {b8\( gis e\)} \times 2/3 {ais8\( b cis\)} \times 2/3 {dis8\( b gis\)} \times 2/3 {ais8\( b cis\)} | % 5.3 - 77
    \times 2/3 {dis8\( b gis\)} \once\override DynamicLineSpanner #'padding = #1.5  \times 2/3 {b8\(\< cis b\)} \times 2/3 {b8\( cis b\)} \times 2/3 {b8\( cis b\)\!} |
    b4 \once\override Staff.OttavaBracket #'padding = #1 #(set-octavation 1) \times 2/3 {<e' gis>8-. <dis fis>-. <cis e>-.} <b dis>8\noBeam r <a cis> r | % 5.4 - 79
    <gis b> r \times 2/3 {<cis e>8-. <b dis>-. <a cis>-.} <gis b>8 r <fis a> r #(set-octavation 0)|
    \override TupletNumber #'transparent = ##f 
    \tupletUp
    \times 2/3 {<e gis>8\noBeam <cis cis'>\f <b b'>} \times 2/3 {r8 <cis cis'> <b b'>} \times 2/3 {r8 <cis cis'> <b b'>} \times 2/3 {r8 <cis cis'> <b b'>} | % 5.5 - 81
    \times 2/3 {r8 <cis cis'> <b b'>} \times 2/3 {r8 <cis cis'> <b b'>} \times 2/3 {r8 <cis cis'> <b b'>} \times 2/3 {r8 <cis cis'> <b b'>} |
    \override TupletNumber #'transparent = ##t 
    \once\override DynamicLineSpanner #'padding = #2 \times 2/3 {<e gis b e>8-.\ff <e gis b e>-. <e gis b e>-.} \times 2/3 {<e gis b e>8-. <e gis b e>-. <e gis b e>-.} \times 2/3 {<e gis b e>8-. <e gis b e>-. <e gis b e>-.} \times 2/3 {<e gis b e>8-. <e gis b e>-. <e gis b e>-.} |
    <e gis b e>8-> r <e gis b e>8-> r e,4-> r | % fin
    \bar "|."
}
lower = \relative c {
    \clef bass
    \key g \major
    \time 4/4
    e8 r <g b e> r e r <g b e> r |
    e r <g b e> r e r <g b e> r |
    e r <g b> r e r <g b> r | % 1.1 - 3
    b, r <fis' b dis> r b, r <fis' b dis> r |
    e r <e b e,>-.-> r <e b e,>-.-> r <g b e> r |
    e r <g b e> r e r <g b e> r |
    e r <g b> r e r <g b> r | % 1.2 - 7
    b, r <fis' b dis> r b, r <fis' b dis> r |
    e r <e b e,>-.-> r <e b e,>-.-> r <g b e> r |
    d r <a' c d fis> r d, r <a' c d fis> r | % 1.3 - 10
    g r <g d g,>-.-> r <g d g,>-.-> r r4 |
    d8 r <a' c d fis> r d, r <a' c d fis> r |
    g r \stemDown <g d g,> \stemNeutral r <b fis dis b> r <fis b dis> r | % 1.4 - 13
    e r <g b e> r e r <g b e> r |
    e r <g b> r e r <g b> r |
    b, r <fis' b dis> r b, r <fis' b dis> r | % 1.5 - 16
    \bar "||"
    \key e \major
    e r <gis b e>-> r <b b,> r <fis a b dis>-> r |
    <b b,> r <gis b e>-> r <b b,> r <a b dis>-> r | % 2.1 - 18
    e r <gis b e>-> r <b b,> r <fis a b dis>-> r |
    <b b,> r <gis b e>-> r <b b,> r <a b dis>-> r |
    <e gis b e>8-> r \override TupletNumber #'transparent = ##t \times 2/3 {fis8-4\( gis a\)} \times 2/3 {b8\( gis e\)} \times 2/3 {fis-4\( gis a\)} | % 2.2 - 21
    \times 2/3 {b8\( gis e\)} \times 2/3 {ais8\( b cis\)} \times 2/3 {dis8\( b gis\)} \times 2/3 {ais8\( b cis\)} |
    \times 2/3 {dis8\( b gis\)} <a b dis fis>8 r <gis b e> r <fis a b dis> r |
    <e gis b e> r <b' e gis> r <a a,> r <a cis fis> r | % 2.3 - 24
    <b b,> r <gis b e> r <b b,> r <fis a b dis> r |
    <e gis b e>8-> r \times 2/3 {fis8\( gis a\)} \times 2/3 {b8\( gis e\)} \times 2/3 {fis\( gis a\)} |
    \times 2/3 {b8\( gis e\)} \times 2/3 {ais8\( b cis\)} \times 2/3 {dis8\( b gis\)} \times 2/3 {ais8\( b cis\)} | % 2.4 - 27
    \times 2/3 {dis8\( b gis\)} <a b dis fis>8 r <gis b e> r <fis a b dis> r |
    <e gis b e> r <b' e gis> r <a a,> r <a cis fis> r |
    <b b,> r <gis b e> r <b b,> r <fis a b dis> r | % 2.5 - 30
    <e gis b e>8 r <e gis b e> r <e e,>4-> r |
    <a a,>8 r <a cis e> r <a a,>8 r <a cis e> r |
    <a a,>8 r <a cis e> r <a a,>8 r <a cis e> r |
    fis r <a cis fis> r fis r <a cis fis> r | % 2.6 - 34
    <b b,> r <b d fis> r <b b,> r <b d fis> r |
    e, r <b' dis gis> r eis, r <b' d gis> r |
    fis r <a cis fis> r <a a,> r <a cis fis> r | % 3.1 - 37
    b, r <gis' b e> r b, r <a' b dis> r |
    e r <gis b e> r e r <b' d e> r |
    <a a,> r <a cis e> r <a a,>8 r <a cis e> r | % 3.2 - 40
    <a a,> r <a cis e> r <a a,>8 r <a cis e> r |
    fis r <a cis fis> r fis r <a cis fis> r |
    <b b,> r <b d fis> r <b b,> r <b d fis> r | % 3.3 - 43
    e, r <b' d e> r eis, r <gis b eis> r |
    fis r <a cis fis> r fis r <a cis> r |
    gis r <cis e> r <gis gis,> r <gis bis fis'> r | % 3.4 - 46
    cis, <gis' cis e> <gis cis e> <gis cis e>  <gis gis,> <gis bis fis'> <gis bis fis'> <gis bis fis'> |
    <gis gis,> <gis cis e> <gis cis e> <gis cis e>  <gis gis,> <gis bis dis> <gis gis,> <gis bis dis> | % 3.5 - 48
    cis, <gis' cis e> <gis cis e> <gis cis e> <gis gis,> <gis bis fis'> <gis bis fis'> <gis bis fis'> |
    cis, <gis' cis e> <gis cis e> <gis cis e>  fis <ais cis e> <fis fis,> <fis ais cis> |
    b, <dis fis b> b[ <dis fis b>] b <fis' a b> b,[ <fis' a b>] | % 3.6 - 51
    b, <e g b> b[ <e g b>] b <fis' a b> b,[ <fis' a b>] |
    b, <e g b> b[ <e g b>] b <fis' a b> b,[ <fis' a b>] |
    b, <e g b> b[ <e g b>] b <fis' a b> b,[ <fis' a b>] | % 4.1 - 54
    <e g b>\noBeam <e e'>-.\( <dis! dis'!>-. <e e'>-.\) <d d'>4\( <c c'> |
    <b b'>8\)\noBeam <c c'>-.\( <b b'>-. <c c'>-.\) <g g'>4\( <a a'> |
    <b b'>8\noBeam\) <e e'>-.\( <dis! dis'!>-. <e e'>-.\) <d d'>4\( <c c'> |
    <b b'>8\)\noBeam <c c'>-.\( <b b'>-. <c c'>-.\) <g g'>4\( <a a'> | % 4.2 - 58
    <b b'>1\) |
    e8 r <g b e> r e r <g b e> r |
    e r <g b> r e r <g b> r |
    b, r <fis' a b dis!> r b, r <fis' a b dis> r | % 4.3 - 62
    e r <e b e,>-.-> r <e b e,>-.-> r <g b e> r |
    e r <g b e> r e r <g b e> r |
    e r <g b> r e r <g b> r | % 4.4 - 65
    <b b,> r <fis a b dis!> r <b b,> r <fis a b dis> r |
    e r <gis b e>-> r <b b,> r <fis a b dis>-> r |
    <b b,> r <gis b e>-> r <b b,> r <a b dis>-> r | % 4.5 - 68
    e r <gis b e>-> r <b b,> r <fis a b dis>-> r |
    <b b,> r <gis b e>-> r <b b,> r <a b dis>-> r |
    <e gis b e>8-> r \times 2/3 {fis8\( gis a\)} \times 2/3 {b8\( gis e\)} \times 2/3 {fis\( gis a\)} | % 4.6 - 71
    \times 2/3 {b8\( gis e\)} \times 2/3 {ais8\( b cis\)} \times 2/3 {dis8\( b gis\)} \times 2/3 {ais8\( b cis\)} |
    \times 2/3 {dis8\( b gis\)} <a b dis fis>8 r <gis b e> r <fis a b dis> r | % 5.1 - 73
    <e gis b e> r <b' e gis> r <a a,> r <a cis fis> r | 
    <b b,> r <gis b e> r <b b,> r <fis a b dis> r | % 5.2 - 75
    <e gis b e>8-> r \times 2/3 {fis8\( gis a\)} \times 2/3 {b8\( gis e\)} \times 2/3 {fis\( gis a\)} |
    \times 2/3 {b8\( gis e\)} \times 2/3 {ais8\( b cis\)} \times 2/3 {dis8\( b gis\)} \times 2/3 {ais8\( b cis\)} | % 5.3 - 77
    \times 2/3 {dis8\( b gis\)} <a b dis fis>8 r <gis b e> r <fis a b dis> r |
    <e gis b e> r <b' e gis> r <a a,> r <a cis fis> r |% 5.4 - 79
    <b b,> r <gis b e> r <b b,> r <fis a b dis> r |
    <e gis b e> r <b dis fis b> r <e gis b e> r <b dis fis b> r | % 5.5 -81
    <e gis b e> r <b dis fis b> r <e gis b e> r <b dis fis b> r |
    \times 2/3 {e,8-. gis-. b-.} \times 2/3 {e8-. b-. gis-.} \times 2/3 {e8-. gis-. b-.} \times 2/3 {e8-. b-. gis-.} |
    e8-> r <e' gis b e>-> r <e e,>4-> r | % fin
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
    first-page-number = 81
    print-first-page-number = ##t
    ragged-last-bottom = ##f
    %#(set-paper-size "a4")
}
