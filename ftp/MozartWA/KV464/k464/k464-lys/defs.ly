\version "2.16.0"

\header {
    title = "String Quartet KV. 464 (nr. 18)"
    subtitle = "for 2 violins, viola and cello"
    composer = "W. A. Mozart (1756-1791)"
        
    mutopiatitle = "String Quartet KV. 464 (nr. 18)"
    mutopiacomposer = "MozartWA"
    mutopiaopus = "KV. 464"
    mutopiainstrument = "String Quartet"
    date = "10th January 1785 (Wien)"
    source = "Breitkopf und Härtel (1882)"
    style = "Classical"
    copyright = "Public Domain"
    maintainer = "Maurizio Tomasi"
    maintainerEmail = "zio_tom78@hotmail.com"
    maintainerWeb = "http://www.geocities.com/zio_tom78/"

    tagline = ""
    footer = "Mutopia-2002/12/29-278"
}

% Some useful macros

cresc = \markup { \italic cresc.}
decresc = \markup { \italic decresc.}

tupletNum = \revert TupletNumber #'stencil

noTupletNum = \override TupletNumber #'stencil = ##f

noTupletBracket = \override TupletBracket
      #'bracket-visibility = ##f 

parentF = \markup {\center-align \concat { \bold { \italic ( }
                           \dynamic f \bold { \italic ) } } }
parentDecresc = \markup {\center-align \concat { \bold { \italic ( }
                           \italic decresc \bold { \italic ) } } }

% General markings and annotations for each movement


markingsI =  {
    \tempo "Allegro."
    s2.*270
    \bar "|."
}


markingsII =  {
    \tempo "Minuetto."
    s2.*72

    \tempo "Trio."
}

markingsIIbis =  {
    s2.*103
    s2
    s4_ \markup{"M.D.C."}
    \bar "|."
}

markingsIII =  {
    \tempo "Andante."
}


markingsIV =  {
    \tempo "Allegro."
}
