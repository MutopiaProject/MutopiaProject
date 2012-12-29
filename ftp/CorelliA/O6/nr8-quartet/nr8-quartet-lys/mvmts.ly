\version "2.16.0"

mI =  {
    \context Voice = "mh" {
        \time 3/4
        \key g \minor
        \tempo "Vivace"
        s2.*8 |
        \bar "||"
        \time 4/4
        \tempo "Grave"
        s1*13 |
        \bar "|."
    }
}

mII =  {
    \context Voice = "mh" {
        \time 4/4
        \key g \minor
        \repeat volta 2 {
            \tempo "Allegro"
            s1*21 |
        }
        \break
        \repeat volta 2 {
            s1*21 |
        }
    }
}

mIII =  {
    \context Voice = "mh" {
        \time 4/4
        \key ef \major
        \tempo "Adagio"
        s1*8 |
        \bar "||"
        \tempo "Allegro"
        s1*13 |
        \bar "||"
        \tempo "Adagio"
        s1*12 |
        \bar "|."
    }
}

mIV =  {
    \context Voice = "mh" {
        \time 3/4
        \key g \minor
        \tempo "Vivace"
        \repeat volta 2 {
            s2.*8 |
        }
        \repeat volta 2 {
            s2.*20 |
        }
    }
}

mV =  {
    \context Voice = "mh" {
        \key g \minor
        \time 2/2 \tempo "Allegro" \partial 2
        \repeat volta 2 {
            s2 | s1*23 | s2
        }
        \repeat volta 2 {
            s2 | s1*43 |
        } \alternative {
            { s2 }
            { s2 | \bar "||" \time 12/8 \key g \major}
        }
    }
}

mVI =  {
    \context Voice = "mh" {
        \time 12/8
        \key g \major
        \tempo "Largo"
        s1.*57 |
        \bar "|."
    }
}
