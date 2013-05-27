\version "2.16.0"


\header {
    title = "String Quartet KV. 387 (nr. 14)"
    subtitle = "for 2 violins, viola and cello"
    composer = "W. A. Mozart (1756-1791)"
    opus = "KV. 387"
        
    mutopiatitle = "String Quartet KV. 387 (nr. 14)"
    mutopiacomposer = "MozartWA"
    mutopiaopus = "KV. 387"
    mutopiainstrument = "String Quartet"
    date = "December 1782"
    source = "Breitkopf und Härtel (1882)"
    style = "Classical"
    copyright = "Public Domain"
    maintainer = "Maurizio Tomasi"
    maintainerEmail = "zio_tom78@hotmail.com"

    tagline = ""
    footer = "Mutopia-2002/06/02-245"
}

% General markings and annotations for each movement

globalI = {
    \time 4/4
    \partial 8
}

KeyI =  \key g \major


globalII = {
    \time 3/4
}

KeyII =  \key g \major


globalIII = {
    \partial 4
    \time 3/4
}

KeyIII =  \key c \major


globalIV = {
    \time 4/4
}

KeyIV =  \key g \major



markingsI =  {
    \tempo "Allegro vivace assai."
}

markingsII =  {
    s4^ \markup{"MINUETTO. Allegro."} s2
    s2.*92
    \mark "TRIO." s2.
    s2.*51
    s4^ \markup{\center-column {{\italic "M.D.C."} {\italic "senza replica"}}}
}

markingsIII =  {
    \tempo "Andante cantabile."
    s4
    s2.*106
    \bar "|."
}

markingsIV =  {
    \tempo "Molto Allegro."
    s1*298
    \bar "|."
}
