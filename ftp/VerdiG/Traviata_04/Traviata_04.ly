\version "2.10.25"
\header {
    title = \markup \center-align { \bigger "La Traviata" " " }
    subtitle = "Streta dell'introduzione"
    composer = "G. Verdi"
    arranger = "Transcripción de N. Toledo"
    piece = "Nº 4"

    %copyright = "Calcografía de la 'Nueva Biblioteca Musical Económica', 1857-1869"
    % Mutopia headers
    mutopiatitle = "La Traviata - N4 Streta dell'introduzione"
    mutopiacomposer = "VerdiG"
    mutopiainstrument = "Piano"
    source = "Calcografía de la 'Nueva Biblioteca Musical Económica', 1857-1869"
    style = "Romantic"
    copyright = "Public Domain"
    maintainer = "Alberto Corella"
    maintainerEmail = "ppiano@telefonica.net"
 footer = "Mutopia-2008/01/13-1217"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
upper = \relative c'' {
    \clef treble
    \key aes \major
    \time 4/4
    <ees g bes ees>4\ff^\markup{\column {\line {\bold "Allº vivo. ("\note #"2" #1 \bold " = 92)"} " "}} r r2 |
    R1 |
    ees2.^\markup{\finger 23}\trill c'8-5 bes |
    aes8 r #(set-octavation 1) c-1[ f] ees r aes4-5 | % 1.1 - 4
    g8-.-4 ees-. \appoggiatura g8 f4-> ees8-2-.\< c-. \appoggiatura ees8-4 des4-> |
    c8_1 aes-2 bes-3 ees,-1 aes4\! #(set-octavation 0) r |
    ees2.\trill\ff c'8 bes |
    aes8 r #(set-octavation 1) c[-. f]-. ees r aes4-> | % 1.2 - 8
    g8-. ees-. \appoggiatura g8 f4-> ees8-.\< c-. \appoggiatura ees8 des4-> |
    c8-. ees-. bes-. ees-. aes, #(set-octavation 0) r aes,-.-3 g-. |
    \set fingeringOrientations = #'(up)
    <aes-3 c-5>\ppp \once\override TextScript #'extra-offset = #'(1.0 . -1.5) f-1_\markup{\italic "legg. e stacc."} <aes c> f <aes c> f <aes c> f |
    <aes-2 des-5> f-1 <aes des> f <b-3 d-5> f-1 <b d> f | % 1.3 - 12
    <bes e> g <bes e> g <bes e> g <bes e> g |
    <aes f'> f <aes c> f <aes c> f <aes c> f |
    <aes c> f <aes c> f <aes c> f <aes c> f |
    <aes des> f <aes des> f <b d> f <b d> f | % 1.4 - 16
    <bes e> g <bes e> g <bes e> g <bes e> g |
    <f aes f'>4^\markup{\dynamic pp \italic "e staccato"}_\markup{\italic saltellanti} \stemDown <f aes c>8-. <f aes c>-. <f aes c>-. <f aes c>-. <f aes c>-. <f aes c>-. |
    <f aes des!>-. <f aes des>-. <f aes des>-. <f aes des>-. <f aes des>-. <f aes des>-. <f aes des>-. <f aes des>-.  |
    <ges beses des>-. <ges beses des>-. <ges beses des>-. <ges beses des>-. <ges beses des>-. <ges beses des>-. <ges beses des>-. <ges beses des>-.  | % 1.5 - 20
    \setTextCresc <fis a d>-.\< r <fis a d>-. <fis a d>-. <fis a d>-. <fis a d>-. <fis a d>-. <fis a d>-.  |
    <g bes d>-. r <g bes d>-. <g bes d>-. <g bes d>-. <g bes d>-. <g bes d>-. <g bes d>-.  |
    <g bes ees>-. <g bes ees>-. <g bes ees>-. <g bes ees>-. <g bes ees>-. <g bes ees>-. <g bes ees>-. <g bes ees>-. |
    <aes ces ees>-. <aes ces ees>-. <aes ces ees>-. <aes ces ees>-. <aes ces ees>-. <aes ces ees>-. <aes ces ees>-. <aes ces ees>-. | % 2.1 - 24
    <gis b e>-. r <gis b e>-. <gis b e>-. <gis b e>-. <gis b e>-. <gis b e>-. <gis b e>-. |
    <a c e>4-. <a c e>8-. <a c e>-. <a c e>-. <a c e>-. <a c e>-. <a c e>-. |
    <a c f>-. <a c f>-. <a c f>-. <a c f>-. <a c f>-. <a c f>-. <a c f>-. <a c f>-. |
    <bes des! f>-. <bes des f>-. <bes des f>-. <bes des f>-. <bes des f>-. <bes des f>-. <bes des f>-. <bes des f>-. | % 2.2 - 28
    <ais cis fis>4 <ais cis fis>8-. <ais cis fis>-. <ais cis fis>-. <ais cis fis>-. <ais cis fis>-. <ais cis fis>-. |
    <b d fis>4 <b d fis>8-. <b d fis>-. <b d fis>-. <b d fis>-. <b d fis>-. <b d fis>-. |
    <b d g>-. <b d g>-. <b d g>-. <b d g>-. <b d g>-. <b d g>-. <b d g>-. <b d g>-. |
    <c ees! g>-. <c ees g>-. <c ees g>-. <c ees g>-. <c ees g>-. <c ees g>-. <c ees g>-. <c ees g>-. | % 2.3 - 32
    <bes ees g>-. <bes ees g>-. <bes ees g>-. <bes ees g>-. <bes ees g>-. <bes ees g>-. <bes ees g>-. <bes ees g>-. |
    <aes' aes'>4.\!\ff <g g'>8 <aes aes'>4. <g g'>8 |
    <aes aes'>4. <g g'>8 <aes aes'>4. <f f'>8 |
    <ees c' ees>4. <c aes' c>8 <ees c' ees>4. <c aes' c>8 | % 2.4 - 36
    <des bes' des>4. <bes g' bes>8 <des bes' des>4. <bes g' bes>8 |
    <aes aes'>4 <aes aes'>8 <aes' aes'>4-> <g g'>-> <f f'>8-> ~ |
    <f f'> <e e'>4-> <f f'>-> <ees ees'>-> <des des'>8-> ~ |
    <des des'> <c c'>4-> <a a'>-> <bes bes'>-> <b b'>8-> ~ | % 2.5 - 40
    <b b'> <c c'>4-> <ees ees'>-> <des des'>-> <f f'>8 |
    << {f4.-5( ees8-4) f4.( ees8)} \\ {<c aes>2 <c aes>} >> |
    << {f4.-5( ees8-4) f4.( ees8)} \\ {<des bes g>2 <des bes g>} >> |
    aes4 <aes aes'>8 <aes' aes'>4-> <g g'>-> <f f'>8-> ~ | % 2.6 - 44
    <f f'> <e e'>4-> <f f'>-> <ees ees'>-> <des des'>8-> ~ 
    <des des'> <c c'>4-> <aes aes'>-> <bes bes'>-> <b b'>8-> ~ |
    <b b'> <c c'>4-> <ees ees'>-> <des des'>-> <f f'>8-> |
    << {f4.( ees8) f4.( ees8)} \\ {<c aes>2 <c aes>} >> | % 3.1 - 48
    << {f4.( ees8) f4.( ees8)} \\ {<des bes g>2 <des bes g>} >> |
    aes4-2 <fes' fes'>-> <ces ces'>-> <des des'>-> |
    <ees ees'>-> <fes fes'>-> <ces ces'>-> <des des'>-> |
    <ees ees'>-> <fes fes'>-> <ces ces'>-> <aes aes'>-> |
    <fes fes'>4.. fes16-4 ces4-1-> des-2-> | % 3.2 - 53
    ees8-3 f16-1 g aes bes c-1 des ees f-1 g aes bes c-1 des ees |
    f4 #(set-octavation 1) \set fingeringOrientations = #'(left) <bes,-1 ees-3 g-5> <bes ees g> <bes ees g> |
    <c-1 ees-2 aes-5> <bes ees g> <c ees aes> <bes ees g> |
    <c ees aes> <bes ees g> <c ees aes> <bes ees g> | % 3.3 - 57
    <c ees aes> <bes ees g> <c ees aes> <bes ees g> |
    <c ees aes> <bes ees g> <c ees aes> <bes ees g> |
    <c ees aes>1 #(set-octavation 0) |
    ees,2.\trill^\markup{\finger 23} c'8-.-5 bes-. |
    aes-. r #(set-octavation 1) c-.[ f-.] ees r aes4-> | % 3.4 - 62
    g8-4 ees \appoggiatura g8 f4-> ees8 c \appoggiatura ees8 des4-> |
    c8 aes bes ees, aes4 #(set-octavation 0) r |
    ees2.\trill c'8-. bes-. |
    aes-. r #(set-octavation 1) c-.[ f-.] ees r aes4-> |
    g8 ees \appoggiatura g8 f4-> ees8 c des bes #(set-octavation 0) | % 3.5 - 67
    aes4 <aes ees c> <aes ees c> <aes ees c> |
    <aes ees c> r <ees aes c> r |
    <aes ees c> r r r8. <aes, ees c>16 |
    <aes ees c>4 r r r8. <aes ees c>16 |
    <aes ees c>1\fermata |
    \bar "|."
}
lower = \relative c {
    \clef bass
    \key aes \major
    \time 4/4
    ees8 ees' ees, ees' ees, ees' ees, ees' |
    ees, ees' ees, ees' ees, ees' ees, ees' |
    << {ees4-1 d-1 des-1 des} \\ {\override TextScript #'Y-offset = #1.5 ees8 ees,^\markup{\finger 5} d' ees,^\markup{\finger 5} des' ees,^\markup{\finger 5} des' ees,} >> |
    << {c'4-1 c ces ces} \\ {c8 ees,^\markup{\finger 5} c' ees, ces' ees, ces' ees,} >> | % 1.1 - 4
    << {bes'4-2 des des-3 bes} \\ {\override TextScript #'Y-offset = #1.5 bes8 ees,^\markup{\finger 5} g ees g ees^\markup{\finger 5} g ees} >> |
    << {c'4 des c c} \\ {aes8 ees g ees aes ees aes ees} >> |
    << {ees'4 d des des} \\ {ees8 ees, d' ees, des' ees, des' ees, } >> |
    << {c'4 c ces ces} \\ {c8 ees, c' ees, ces' ees, ces' ees,} >> | % 1.2 - 8
    << {bes'4 des des bes} \\ {bes8 ees, g ees g ees g ees} >> |
    <aes c> r <ees g des'> r <aes c> r aes-3-. g-.-4 |
    f-5 r aes-3 r c-2 r f-.-1 ees-.-2 |
    des-3 r c-.-1[ bes-.] aes r g-. f-. | % 1.3 - 12
    c-5 r e r g r c r |
    c-.-1 bes-. aes-. g-. f r aes-.-3 g-. |
    f r aes r c r f-. ees-. |
    des-. r c-.[ bes-.] aes r g-. f-. | % 1.4 - 16
    c8 r e r g r c r |
    <f, f,>4\p_( aes,8-3 bes) c4_( aes8-3 g) |
    f4_( aes8-3 c) des!4_( aes8-3 f) |
    ges4_( beses8-3 ces) des!4_( beses8 aes) | % 1.5 - 20
    fis4_( a8-3 cis-2) d4-1_( a8 fis) |
    g4_( bes!8 c) d4_( bes8 aes) |
    g4_( bes8 d) ees4_( bes8 g) |
    aes4_( ces8 des!) ees4_( ces8 bes) | % 2.1 - 24
    gis4_( b8 dis) e4_( b8 gis) |
    a4_( c8 d) e4_( c8 bes) |
    a4_( \stemUp c8 e) \stemNeutral f4_( c8 a) |
    bes!4( des!8 ees!) f4( \stemDown des8 c) \stemNeutral | % 2.2 - 28
    bes4_( cis8 e) fis4_( cis8 ais) |
    b4( d8 e) fis4( d8 cis) |
    b4( d8 fis) g!4( d8 b) |
    c4( ees!8 f) g4( ees8 c) | % 2.3 - 32
    des8-.-4 ees-3 des-. ees-. des-. ees-. des-. ees-. |
    << {\override Staff.NoteCollision #'merge-differently-headed = ##t c2-5 c} \\ {c8 ees-4 aes-2 c-1 c, ees aes c} >> |
    << {des,2-5 des} \\ {des8 f-3 aes-2 des-1 des, f aes des} >> |
    << {ees,2 ees} \\ {ees8 aes c ees ees, aes c ees} >> | % 2.4 - 36
    << {ees,2 ees} \\ {ees8 g bes ees ees, g bes ees} >> |
    \set fingeringOrientations = #'(down) <c-1 aes-3>4-> <c-4 ees-2>-> <bes-5 des-3>-> <aes-3 c-1>-> |
    <g-4 bes-2>-> <aes-3 c-1>-> <g-4 bes-2>-> <f-5 aes-3>-> |
    <e-3 g-1>-> <ees-4 ges-2>-> <d-3 f-1>-> <des-4 f-1>-> | % 2.5 - 40
    <c e>-> <a c ees ges>-> <bes des f>-> <d f aes b>-> |
    << {ees2 ees} \\ {ees8 aes c ees ees, aes c ees} >> |
    << {ees,2 ees} \\ {ees8 g des' ees ees, g des' ees} >> |
    <aes, c>4 <c ees>-> <bes des>-> <aes c>-> | % 2.6 - 44
    <g bes>-> <aes c>-> <g bes>-> <f aes>-> |
    <e g>-> <ees ges>-> <d f>-> <des f>-> |
    <c e>-> <a c ees ges>-> <bes des f>-> <d f aes b>-> |
    << {ees2 ees} \\ {ees8 aes c ees ees, aes c ees} >> | % 3.1 - 48
    << {ees,2 ees} \\ {ees8 g des' ees ees, g des' ees} >> |
    \set fingeringOrientations = #'(left) 
    <c-1 aes-3>4 <fes fes,>-> <ces ces,>-> <des des,>-> |
    <ees ees,>-> <fes fes,>-> <ces ces,>-> <des des,>-> |
    <ees ees,>-> <fes fes,>-> <ces ces,>-> <aes aes,>-> |
    <fes fes,>2 <ces ces,>4-> <des des,>-> | % 3.2 - 53
    <ees ees,> r r2 |
    r4 <ees-1 bes-2 ees,-5> <ees bes ees,> <ees bes ees,> |
    <ees-1 c-2 aes-3> <ees bes ees,> <ees c aes> <ees bes ees,> |
    <ees c aes> <ees bes ees,> <ees c aes> <ees bes ees,> | % 3.3 - 57
    <ees c aes> <ees bes ees,> <ees c aes> <ees bes ees,> |
    <ees c aes> <ees bes ees,> <ees c aes> <ees bes ees,> |
    << {aes,2 aes} \\ {aes8 c ees aes aes, c ees aes} >> |
    aes,8-5 r <aes'-4 c-2 ees-1> r <aes c ees> r <aes c ees> r |
    <aes c ees> r <aes c ees> r <aes c ees> r <aes c ees> r | % 3.4 - 62
    \set fingeringOrientations = #'(up left left left) 
    <ees-5 g-4 des'-2 ees-1>8 r <ees g des' ees> r <ees g des' ees> r <ees g des' ees> r |
    \set fingeringOrientations = #'(left) 
    <aes-4 c-2 ees-1> r <ees g des' ees> r <aes c ees> r <aes c ees> r |
    aes,8 r <aes' c ees> r <aes c ees> r <aes c ees> r |
    <aes c ees> r <aes c ees> r <aes c ees> r <aes c ees> r |
    <ees g des' ees>8 r <ees g des' ees> r <ees g des' ees> r <ees g des' ees> r | % 3.5 - 67
    <aes c ees>4 <aes ees c aes> <aes ees c aes> <aes ees c aes> |
    <aes ees c aes> r <aes c ees> r |
    <aes ees c aes> r r r8. <aes ees c aes>16 |
    <aes ees c aes>4 r r r8. <aes ees c aes>16 |
    <aes ees c aes>1\fermata |
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
    first-page-number = 26
    print-first-page-number = ##t
    ragged-last-bottom = ##f
    %#(set-paper-size "a4")
}
