\time 3/4
\tag #'horn-A {
    \key c \major
    \set Staff . instrumentTransposition = #(ly:make-pitch -1 5 0)
    \clef treble
}
\tag #'horn-D {
    \key c \major
    \set Staff . instrumentTransposition = #(ly:make-pitch -1 1 0)
    \clef treble
}
\tag #'other \key a \major
\scoreTempo \markup "Non troppo allegro."
s2.*64
\bar "|."
