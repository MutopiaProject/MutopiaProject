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
    lastupdated = "2001/Sep/13"

    footer = "Mutopia-2001/09/13-109"
    tagline = "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
}

papersize = "a4"

\include "paper26.ly"

stemDown = \property Voice.Stem \override #'direction = #-1
stemUp = \property Voice.Stem \override #'direction = #1

melody = \notes \relative a' \context Voice = melody {
    \stemUp
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

harmony = \notes \relative a \context Voice = harmony {
    \stemDown
    r4 |
    a2 b4 c2. | g2. b2. |
    a2. f'2. | e2. e,2. |
    a2 b4 c2. | g2. b2. |
    a2. e2. | a2. a2. |

    <c2. e2.> <c2. e2.> | g2. b2. |
    a2. f'2. | e2. e,2. |
    <c'2. e2.> <c2. e2.> | g2. b2. |
    a2. e2. | a2. a2. |
}

\score {
    \notes {
        \context Staff = staffa <
            \time 3/4
            \clef treble
            \key a \minor
            \partial 4

            \melody
            \harmony
        >
    }

    \paper {
        indent = 0.0
        interscoreline = 1.5 \cm
    }

\midi {
 \tempo 4 = 160
}
}
