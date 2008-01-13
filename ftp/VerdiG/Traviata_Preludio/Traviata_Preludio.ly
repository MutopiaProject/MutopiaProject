\version "2.10.25"
\header {
    title = "La Traviata"
    subtitle = "Preludio"
    composer = "G. Verdi"
    arranger = "Transcripción de N. Toledo"

    %copyright = "Calcografía de la 'Nueva Biblioteca Musical Económica', 1857-1869"
    % Mutopia headers
    mutopiatitle = "La Traviata - Preludio"
    mutopiacomposer = "VerdiG"
    mutopiainstrument = "Piano"
    source = "Calcografía de la 'Nueva Biblioteca Musical Económica', 1857-1869"
    style = "Romantic"
    copyright = "Public Domain"
    maintainer = "Alberto Corella"
    maintainerEmail = "ppiano@telefonica.net"
 footer = "Mutopia-2008/01/13-1213"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

upper = \relative c'' {
    \clef treble
    \key e \major
    \time 4/4
    
    << {\set fingeringOrientations = #'(left) <b'-5>2\(^\markup{\line {\bold "Adagio. ("\note #"4" #1 \bold " = 66)"}} \set fingeringOrientations = #'(down) \once\override Fingering #'extra-offset = #'(0 . 4.5) <ais-4>4 \once\override Fingering #'extra-offset = #'(0 . 5) <b-5>4} \\ {\set fingeringOrientations = #'(left) <fis-2>1} >> |
    << {\stemDown \set fingeringOrientations = #'(right) \override Fingering #'avoid-slur = #'inside  <ais-2 cis-4>2 <b d>} \\ {s1} >> |
    << {\stemDown <ais cis>2 \set fingeringOrientations = #'(left) <cis-3 e-5>4 \set fingeringOrientations = #'(right) <b-1 d-4>} \\ {s1} >> |
    << {\stemDown <ais-2 cis-3>2\) b,2\rest} \\ {s1} >> |
    << {\stemDown \set fingeringOrientations = #'(left) <c'-1 fis-4>2\( <b-1 eis-5>4 \set fingeringOrientations = #'(right) <ais-2 e'-5>} \\ {s1} >> | % 1.1
    << {<b-2 d>2 cis4-5 b} \\ {s2 eis,-1} >> |
    << {b'2 ais\)\(} \\ {e!1} >> |
    << {a!2. b4} \\ {dis,1} >> |
    << {a'2 g\)} \\ {e1} >> |
    << {g1-5 } \\ {\override Fingering #'avoid-slur = #'inside \set fingeringOrientations = #'(right)  <g,-1 b-2>2\(\< <a-1 c-2>4 <b-1 d-3>\)} >> |
    << {g'1-5} \\ {\set fingeringOrientations = #'(right) <d-2 f-4>2\!\> <c-1 e-3>\!} >> | % 1.2
    << {g'2-5 fis4-4 e-3} \\ {ais,1-1} >> |
    << {\override DynamicLineSpanner #'staff-padding = #2.5 e'4-3\(\< dis8\) r a'4-5\( gis8-5\) r} \\ {b,2 <b d>} >> |
    << {b'4-5\( a8-5\) r dis4\( cis8\) r\!} \\ {<b, dis>2 <e g>2} >> |
    << {b'8-5\( ais-3 a-1 fis-4\) dis-3\( cis-2 a-1 fis-4\)} \\ {<dis' fis>8 r r4 r2} >> | % 1.3
    \set fingeringOrientations = #'(down) <dis,-2>2 r |
    R1 |
    <e' e'>2\(_\markup{\italic "con espress."} <dis dis'>4\> <cis cis'>\) | % 1.4
    <b b'>4.\( <a a'>8 <fis fis'>4\)\! r |
    <e' e'>2\(\> <dis dis'>4 <cis cis'>\) | 
    <b b'>4.\( <a a'>8 <fis fis'>4\)\! r | % 1.5
    <gis' gis'>2\>\( <a a'>4. <gis gis'>8\) |
    <fis fis'>8.\( <e e'>16 <fis fis'>8. <e e'>16\) <dis dis'>8.\!\( <cis cis'>16 <dis dis'>8. <cis cis'>16\) |
    <cis cis'>4\( <b b'>8\) r \once\override DynamicLineSpanner #'staff-padding = #1.5 <gis' gis'>4.\>\( <fis fis'>8\!\) | % 2.1
    <eis eis'>2 ~ <eis eis'>8 ais,,-2->\([ b-3 ais->\)] |
    b2 ~ b8 ais->\( b ais->\) |
    b2 ~ b8 ais->\( b ais->\) |
    b8\(\< ais b ais-2 b-1 bis-2 cis-3 dis-4\)\! | % 2.2
    r8 r16 e'32-.-1 fis-.-2 \once\override DynamicLineSpanner #'staff-padding = #2.5 gis8-.-3\>[ r16 \set stemLeftBeamCount = #1 a32-.-1 ais-.-2] b8-.-3[ r16 \set stemLeftBeamCount = #1 cis32-.-2 dis-.-3] e8-.-4\![ r16 \once\override Staff.OttavaBracket #'padding = #2.5  #(set-octavation 1) \set stemLeftBeamCount = #1 fis32-.-2 gis-.-3] |
    a8-4[ r16 \set stemLeftBeamCount = #1 eis32-.-2 gis-.-4] fis8-.-3 e-.-1 dis16-.-3 e-.-4 cis-.-2 dis-.-5 b-.-1 cis-.-3 a-.-1 b-.-4 #(set-octavation 0) | % 2.3
    gis8-2[\> r16 \set stemLeftBeamCount = #1 e32-.fis-.] gis8-.[ r16 \set stemLeftBeamCount = #1 a32-. ais-.] b8-.[ r16 \set stemLeftBeamCount = #1 cis32-. dis-.] e8-.[ r16 #(set-octavation 1) \set stemLeftBeamCount = #1 fis32-. gis-.]\! |
    a8[ r16 \set stemLeftBeamCount = #1 eis32-. gis-.] fis8-. e-. dis16-. e-. cis-. dis-. b-. cis-. a-. b-. | % 2.4
    gis16-.-2 #(set-octavation 0) \override TextSpanner #'edge-text = #'("con 8va ad libitum" . "") \override TextSpanner #'padding = #2.5 \override TextSpanner #'dash-period = #1.0 e-.\startTextSpan e-. e-. fis-.-5 e-. dis-. cis-. bis-. bis-. bis-. bis-. bis-. bis-. bis-. bis-. |
    dis16-.-3 cis-.-2 dis-. cis-. dis-. cis-. dis-.-3 cis-.-1 fis-.\pp e-. fis-. e-. fis-. e-. fis-.-3 e-.-1 | % 2.5
    a16-4 gis fis e-1 dis-2 fis-4 e cis b-1 ais-2 b-4 ais b ais b a |
    gis16-2\stopTextSpan  <b' b,>-.[ <b b,>-. <b b,>-.] \grace dis8-3 cis16\trill\(_\markup{\finger "2 3"} b32\) r cis16\trill\( b32\) r r16 <b b,>-.[ <b b,>-. <b b,>-.] \grace dis8 cis16\trill\(-> b32\) r cis16\trill\(-> b32\) r | % 2.6
    gis16 <b b,>-.[ <b b,>-. <b b,>-.] \grace dis8 cis16\trill\(-> b32\) r cis16\trill\(-> b32\) r r16 <b b,>-.[ <b b,>-. <b b,>-.] \grace dis8 cis16\trill\(-> b32\) r cis16\trill\(-> b32\) r |
    gis,4-3\f\> fis8 e dis8.-3\!\p\( cis16\) dis8.\( cis16\) | % 3.1
    \override TextSpanner #'edge-text = #'("con 8va ad libitum" . "") \override TextSpanner #'padding = #2.5 \override TextSpanner #'dash-period = #1.0 e'16-.-1\startTextSpan gis-. b-. gis-. e-.-1 cis-.-4 b-. gis-. e-. gis-. cis-.-4 c-.-3 b-. cis-. a-.-1 b-.-4 |
    gis16\stopTextSpan <b' b,>-.[ <b b,>-. <b b,>-.] \grace dis8 cis16\trill\( b32\) r cis16\trill\( b32\) r r16 <b b,>-.[ <b b,>-. <b b,>-.] \grace dis8 cis16\trill\(-> b32\) r cis16\trill\(-> b32\) r | % 3.2
    gis16 <b b,>-.[ <b b,>-. <b b,>-.] \grace dis8 cis16\trill\(-> b32\) r cis16\trill\(-> b32\) r r16 <b b,>-.[ <b b,>-. <b b,>-.] \grace dis8 cis16\trill\(-> b32\) r cis16\trill\(-> b32\) r |
    gis,4-3\f\> fis8 e dis8.-3\!\p\( cis16\) dis8.\( cis16\) | % 3.3
    \override TextSpanner #'edge-text = #'("con 8va ad libitum" . "") \override TextSpanner #'padding = #2.5 \override TextSpanner #'dash-period = #1.0 e'16-.\startTextSpan gis-. b-. gis-. e-. cis-. b-. gis-. e-. gis-. cis-.-4 c-.-3 b-.-2 cis-.-3 a!-.-1 fis-.-3 |
    e16\stopTextSpan b'-3[ b b] r b[ r b] r b-5[ b b] << {cis, b'-5 dis, b'-5} \\ {cis,-1[ r dis-2] r} >> | % 3.4
    << {e16} \\ {e16} >> b'[ b b] r b[ r b] r b[ b b] << {cis, b' dis, b'} \\ {cis,[ r dis] r} >> | 
    e16 \override TextSpanner #'edge-text = #'("con 8va ad libitum" . "") \override TextSpanner #'padding = #2.5 \override TextSpanner #'dash-period = #1.0 b16-.[\startTextSpan e-.-2 gis-.-3] cis-.-5 b-.-4 gis-.-2 e-.-1 r b-. e-. gis-. cis-. b-. gis-. e-. | % 3.5
    e'16-5 dis-.-3 e-.-4 dis-. e-. dis-. e-. dis-. e-. dis-. e-. dis-. e-. dis-. e-. dis-.  |
    \override TextScript #'padding = #1.5 e-._\markup{\italic "dim."} dis-. e-. dis-. e-. dis-. e-. dis-._\markup{\italic "morendo."} e-. dis-. e-. dis-. e-. dis-. e-. dis-.  |
    e2\stopTextSpan r\fermata 
    \bar "|." % fin
}
     
lower = \relative c {
    \clef bass
    \key e \major
    \time 4/4

    \clef treble
    << {\stemDown \override DynamicLineSpanner #'staff-padding = #2.5 <b'' d>2^\ppp <cis e> 4 d} \\ {s2.\stemUp d4} >> |
    <fis fis,>1 ~ |
    <fis fis,>2. \stemDown <eis eis,>4-> \stemNeutral |
    <fis fis,>2 r2 |
    <dis!-4 a'-1>2\( \override Fingering #'avoid-slur = #'inside  <d gis-2>4 \set fingeringOrientations = #'(left) <cis-3 fis-1>\) | % 1.1
    << {<b-5 fis'-2>2 cis-1} \\ {s2 gis4-3 ~ g4} >> |
    <fis cis'-1>1 |
    \override DynamicLineSpanner #'staff-padding = #2.5 <a fis b,>1^\p |
    << {a2\( g\)} \\ {e1} >> |
    d2. g,4 |
    c1 | % 1.2
    << {e2 \set fingeringOrientations = #'(down) <fis-2>4 <g-1>} \\ {cis,!1-5} >> |
    << {\unset fingeringOrientations <fis-2 b,>2 eis-1} \\ {b1-5 ~ } >> |
    << {fis'2-2 ais-1} \\ {b,1 ~ } >> |
    << {b'8 b\rest b4\rest b2\rest} \\ {b,8 s8 s2.} >> | % 1.3
    \clef bass
    R1 |
    << {e,8-. s4 b8-. e-. s4 b8-.} \\ {e8-5 \set fingeringOrientations = #'(up) <gis-3 b-2 e-1>^. <gis b e>^. b,-5 e-5 <gis b e>^. <gis b e>^. b,} >> |
    << {e8-. s4 b8-. e-. s4 b8-.} \\ {e8 <gis b e>^. <gis b e>^. b, e <gis b e>^. <gis b e>^. b,} >> | % 1.4
    << {dis8-. s4 b8-. dis-. s4 b8-.} \\ {dis8-5 <a'-3 b-2 dis-1>^. <a b dis>^. b, dis <a' b dis>^. <a b dis>^. b,} >> |
    << {e8-. s4 b8-. e-. s4 b8-.} \\ {e8 <gis b e>^. <gis b e>^. b, e <gis b e>^. <gis b e>^. b,} >> |
    << {dis8-. s4 b8-. dis-. s4 b8-.} \\ {dis8 <a' b dis>^. <a b dis>^. b, dis <a' b dis>^. <a b dis>^. b,} >> | % 1.5
    \stemDown
    <e e,>8-. <gis b e>-. <gis b e>-. <gis gis,>-. <dis dis,>-. <gis bis fis'>-. <gis bis fis'>-. <gis gis,>-. |
    <cis, cis,>8-. <gis' cis e>-. <gis cis e>-. <e e,>-. <ais, ais,>-. <g' cis e>-. <g cis e>-. <ais ais,!>-. |
    <b b,>8-. <gis! b e>-. <gis b e>-. <b b,>-. <b, b,>-. <a' b dis>-. <a b dis>-. <b b,>-. | % 2.1
    \set fingeringOrientations = #'(up) 
    \repeat "tremolo" 8 {<b,-5 d-3>32 gis'32-1 ~} <gis d b>8 r r4 |
    \repeat "tremolo" 8 {<b, dis! fis>32 a'32 ~} <a fis dis b>8 r r4 |
    \repeat "tremolo" 8 {<b, d eis>32 gis'32 ~} <gis eis d b>8 r r4 |
    <a fis dis b>8 r r4 r2 | % 2.2
    << {e'2-1\( \override Fingering #'avoid-slur = #'inside dis4-1 cis-1} \\ {e,8-.-5 <gis b>-. <gis b>-. <gis b>-. e-. <gis b>-. <e-5 gis>-. <e gis>-. } >> |
    << {b'4-1 a8-1 fis4-2\) r} \\ {b,8-5 <dis-5 fis-2> <dis fis> <dis fis> b-5 <dis b'> <dis b'> <dis b'> } >> | % 2.3
    << {e'2\( dis4 cis} \\ {e,8-. <gis b>-. <gis b>-. <gis b>-. e-. <gis b>-. <e gis>-. <e gis>-. } >> |
    << {b'4. a8 fis4\) r} \\ {b,8 <dis fis> <dis fis> <dis fis> b <dis b'> <dis b'> <dis b'> } >> | % 2.4
    \set Staff.connectArpeggios = ##t << {gis'2-1\arpeggio a4.\arpeggio gis8} \\ {e,8-5\arpeggio <gis b e> <gis b e> <gis b e> dis\arpeggio <gis dis' fis> <gis dis' fis> <gis dis' fis>} >> |
    << {fis'8.-1\arpeggio e16-1 fis8. e16 dis8.-1\arpeggio cis16 dis8. cis16} \\ {cis,8\arpeggio <gis' cis> <gis cis> <gis cis> ais,\arpeggio <e' g> <e g> <e g>} >> | % 2.5
    << {cis'4-1\(\arpeggio b8\) r gis'4.-1\arpeggio\( fis8\)} \\ {b,,8-5\arpeggio <e gis> <e gis> <e gis> b-5\arpeggio <a' b dis> <a b dis> <a b dis>} >> |
    <e' b gis e>8 r r <e b gis>-. <dis b a fis>-. r r <a fis b,>-. | % 2.6
    <gis e>8-. r r <e' b gis>-. <dis b a fis>-. r r <a fis dis b>-.\arpeggio |
    r2 r4 <g e ais,> | % 3.1
    << {\set fingeringOrientations = #'(left) <b-1>8. <cis-2>16 <b-1>2\( <cis-2>8 <dis-1>\)} \\ {<gis,! e b>8 r <gis e> r b,-5 r <fis' a> r} >> |
    <e' b gis e>8-. r r <e b gis>-. <dis b a fis>-. r r <a fis b,>-. | % 3.2
    <gis e>8-. r r <e' b gis>-. <dis b a fis>-. r r <a fis dis b>-.\arpeggio |
    r2 r4 <g e ais,> | % 3.3
    << {b8. cis16 b2\( cis8 dis\)} \\ {<gis,! e b>8 r <gis e> r b, r <fis' a> r} >> |
    <b gis e>8 r <gis-4 b-2 e-1>16[ r <g b e>] r <fis-5 a-3 dis-1>8 r <a fis b,>16[ r <a fis b,>] r | % 3.4
    <gis e>8 r <gis b e>16[ r <g b e>] r <fis a dis>8 r <a fis b,>16[ r <a fis b,>] r |
    <gis e>8 r r4 <e gis b e>8-. r r4 | % 3.5
    <e gis b e>8 r <c' e, a,>\arpeggio r <b gis e> r <cis e, a,>\arpeggio r |
    <b gis e>8 r r4 <b gis e>8 r r4 |
    <b gis e>2 r\fermata
    \bar "|."   % fin
}
     
     
     \score {
       \new GrandStaff <<
         \new Staff = upper { \upper } 
         \new Staff \with {\consists "Span_arpeggio_engraver"} {
           \clef bass
           \lower
         }
       >>
       \layout {
         
       }
        \midi { }
     }

\paper {
    ragged-last-bottom = ##f
    %#(set-paper-size "a4")
}
