\version "2.16.0"

\header {
    title = "String Quartet KV. 465 (nr. 19) ``Dissonances''"
    subtitle = "for 2 violins, viola and cello"
    composer = "W. A. Mozart (1756-1791)"
        
    mutopiatitle = "String Quartet KV. 465 (nr. 19) \"Dissonances\""
    mutopiacomposer = "MozartWA"
    mutopiaopus = "KV. 465"
    mutopiainstrument = "String Quartet"
    date = "14th January 1785 (Wien)"
    source = "Breitkopf und Härtel (1882)"
    style = "Classical"
    copyright = "Public Domain"
    maintainer = "Maurizio Tomasi"
    maintainerEmail = "zio_tom78@hotmail.com"

    tagline = ""
    footer = "Mutopia-2002/12/29-279"
}

% Some useful macros

cresc = \markup { \italic cresc.}
decresc = \markup { \italic decresc.}

tupletNum = \revert TupletNumber #'stencil

noTupletNum = \override TupletNumber #'stencil = ##f

noTupletBracket = \override TupletBracket
      #'bracket-visibility = ##f 

parentP = \markup {\center-align \concat { \bold { \italic ( }
                           \dynamic p \bold { \italic ) } } }

% General markings and annotations for each movement

markingsI =  {
    \tempo "Adagio."
    s2.*22
    \tempo "Allegro."
}


markingsII =  {
    \tempo "Andante cantabile."
}


markingsIII =  {
    \tempo "Minuetto."
    s4
    s2.*62

    s2
    \tempo "Trio."
}

markingsIIIbis =  {
    s4
    s2.*102
    s4
    s4_ \markup{"M.D.C."}
    \bar "|."
}


markingsIV =  {
    \tempo "Allegro."
}
