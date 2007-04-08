
mvmttext = {
    \property Voice.TextScript \override #'padding = #'4.0
    \property Voice.TextScript \override #'font-relative-size = #2
    \property Voice.TextScript \override #'font-series = #'bold
}

mI = \notes {
    \context Voice = mh {
        \mvmttext
        \time 3/4
        s4^"Vivace" s4 s4 | s2.*7 |
        \bar "||"
        \time 4/4
        s4^"Grave" s4 s2 | s1*12 |
        \bar "|."
    }
}

mII = \notes {
    \context Voice = mh {
        \mvmttext
        \time 4/4
        \repeat volta 2 {
            s4^"Allegro" s4 s2 | s1*20 |
        }
        \break
        \repeat volta 2 {
            s1*21 |
        }
    }
}

mIII = \notes {
    \context Voice = mh {
        \mvmttext
        \time 4/4
        s4^"Adagio" s4 s2 | s1*7 |
        \bar "||"
        s4^"Allegro" s4 s2 | s1*12 |
        \bar "||"
        s4^"Adagio" s4 s2 | s1*11 |
        \bar "|."
    }
}

mIV = \notes {
    \context Voice = mh {
        \mvmttext
        \time 3/4
        \repeat volta 2 {
            s4^"Vivace" s4 s4 | s2.*7 |
        }
        \repeat volta 2 {
            s2.*20 |
        }
    }
}

mV = \notes {
    \context Voice = mh {
        \mvmttext
        \time 2/2 \partial 2
        \repeat volta 2 {
            s2^"Allegro" | s1*23 | s2
        }
        \repeat volta 2 {
            s2 | s1*43 |
        } \alternative {
            { s2 }
            { \partial 1 s1 | \bar "||" \time 12/8 }
        }
    }
}

mVI = \notes {
    \context Voice = mh {
        \mvmttext
        \time 12/8
        \partial 4 s4 \bar ""
        s4.^"Largo" s4. s2. | s1.*56 |
        \bar "|."
    }
}

