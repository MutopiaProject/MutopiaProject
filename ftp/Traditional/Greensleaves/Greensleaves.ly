\version "2.16.1"

\header {
    title = "Greensleaves"
    composer = "Traditional"
    mutopiatitle = "Greensleaves"
    mutopiacomposer = "Traditional"
    mutopiainstrument = "Lute, Guitar, Vihuela"
    mutopiasource = "Unknown"
    style = "Renaissance"
    copyright = "Public Domain"
    maintainer = "Aaron Fontaine"
    maintainerEmail = "afontain@d.umn.edu"

 footer = "Mutopia-2013/03/23-109"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \abs-fontsize #10 \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 MutopiaProject \abs-fontsize #8 .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \abs-fontsize #10 \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 LilyPond \abs-fontsize #8 .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \abs-fontsize #8 \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
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
