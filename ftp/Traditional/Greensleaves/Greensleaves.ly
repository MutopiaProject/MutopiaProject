\version "2.16.0"

\header {
    title = "Greensleaves"
    composer = "Traditional"
    mutopiatitle = "Greensleaves"
    mutopiacomposer = "Traditional"
    mutopiainstrument = "Guitar / Lute / Vihuela"
    style = "Renaissance"
    copyright = "Public Domain"
    maintainer = "Aaron Fontaine"
    maintainerEmail = "afontain@d.umn.edu"

    footer = "Mutopia-2001/09/13-109"
    tagline = ""
}

#(set-global-staff-size 26)

melody = \new Voice \relative a' {
    \voiceOne
    a4 |
    c2 d4 e4. f8 e4 | d2 b4 g4. a8 b4 |
    c2 a4 a4. gis8 a4 | b2 gis4 e2 a4 |
    c2 d4 e4. f8 e4 | d2 b4 g4. a8 b4 |
    c4. b8 a4 gis4. fis8 gis4 | a2. a2.
    \bar "||"
    g'2. g4. f8 e4 | d2 b4 g4. a8 b4 |
    c2 a4 a4. gis8 a4 | b2 gis4 e2. |
    g'2. g4. f8 e4 | d2 b4 g4. a8 b4 |
    c4. b8 a4 gis4. fis8 gis4 | a2. a2. \bar "|."
}

harmony = \new Voice \relative a {
    \voiceTwo
    r4 |
    a2 b4 c2. | g2. b2. |
    a2. f'2. | e2. e,2. |
    a2 b4 c2. | g2. b2. |
    a2. e2. | a2. a2. |

    <c e>2. <c e>2. | g2. b2. |
    a2. f'2. | e2. e,2. |
    <c' e>2. <c e>2. | g2. b2. |
    a2. e2. | a2. a2. |
}

\score {
     {
        \new Staff <<
            \time 3/4
            \clef treble
            \key a \minor
            \partial 4

            \melody
            \harmony
        >>
    }

    \layout {
        indent = 0.0
        interscoreline = 1.5 \cm
    }


  \midi {
    \tempo 4 = 160
    }


}
