\version "2.16.0"


\header {
    title = "String Quartet KV. 458 (nr. 17) ``Hunt''"
    subtitle = "for 2 violins, viola and cello"
    composer = "W. A. Mozart (1756-1791)"
        
    mutopiatitle = "String Quartet KV. 458 (nr. 17) \"Hunt\""
    mutopiacomposer = "MozartWA"
    mutopiaopus = "KV. 458"
    mutopiainstrument = "String Quartet"
    date = "19th November 1784 (Wien)"
    source = "Breitkopf und Härtel (1882)"
    style = "Classical"
    copyright = "Public Domain"
    maintainer = "Maurizio Tomasi"
    maintainerEmail = "zio_tom78@hotmail.com"

    tagline = ""
    footer = "Mutopia-2002/12/22-277"
}

% Some useful macros

cresc = \markup { \italic cresc.}

noTupletBracket = \override TupletBracket
      #'bracket-visibility = ##f 

parentF = \markup {\center-align \concat { \bold { \italic ( }
                           \dynamic f \bold { \italic ) } } }
parentP = \markup {\center-align \concat { \bold { \italic ( }
                           \dynamic p \bold { \italic ) } } }
parentCresc = \markup {\center-align \concat { \bold { \italic ( }
                           \italic cresc \bold { \italic ) } } }

% General markings and annotations for each movement


markingsI =  {
    \tempo "Allegro vivace assai."
    s2.*281
    \bar "|."
}


markingsII =  {
    \tempo "MENUETTO. Allegro."
    s2.*28

    \tempo "Trio."
}

markingsIIbis =  {
    s2.*62
    s2
    s4_ \markup{"M.D.C."}
    \bar "|."
}

markingsIIbisSolo =  {
    s2.*60
    s2
    s4_ \markup{"M.D.C."}
    \bar "|."
}

markingsIII =  {
    \tempo "Adagio."
    s1*53
    \bar "|."
}


markingsIV =  {
    \tempo "Allegro assai."
    s2*335
    \bar "|."
}
