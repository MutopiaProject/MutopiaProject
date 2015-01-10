\version "2.19.15"
introGlobal =  {
    \time 2/4
    \repeat unfold 4 {\barRest}
%    \bar "||" % no-instead use \bar".|:-||" at start of next block
    \myBreak
}

introRHnotes =  \relative c'' {
    \clef treble
    \slurUp
    \once \override TextScript.extra-offset = #'(-3 . 1)
    c8.\mf^\markup{\larger \bold{"Very slow march time"}}( d16) e( ds) e8 |
    \stemUp
    g8.( a16) g8 a16( b) |
    c8.( ds,16) e( gs, a8) |
    \stemNeutral
    \slurNeutral
    a8( g4) c8 |
}

introLHnotes =  \relative c' {
    \clef bass
    \stemDown
    c8.( d16) e( ds) e8 |
    \slurDown
    \csrh g8.( a16) g8 a16( b) |
    c8.( ds,16) { \override Beam.damping = #100000 % horizontal beam for this bit
                  e( \cslh gs, a8)
                  \revert Beam.damping } |
    \stemNeutral
    \slurNeutral
    f8( e4) e16( ef) |
}

introRH =  {
    <<
        \introGlobal
        \introRHnotes
    >>
}

introLH =  {
    <<
        \introGlobal
        \introLHnotes
    >>
}
