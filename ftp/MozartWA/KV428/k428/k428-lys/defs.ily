\version "2.16.0"

\header {
    title = "String Quartet KV. 428 (nr. 16)"
    subtitle = "for 2 violins, viola and cello"
    composer = "W. A. Mozart (1756-1791)"
    opus = "KV. 428"
        
    mutopiatitle = "String Quartet KV. 428 (nr. 16)"
    mutopiacomposer = "MozartWA"
    mutopiaopus = "KV. 428"
    mutopiainstrument = "String Quartet"
    date = "1783"
    source = "Breitkopf und Härtel (1882)"
    style = "Classical"
    copyright = "Public Domain"
    maintainer = "Maurizio Tomasi"
    maintainerEmail = "zio_tom78@hotmail.com"

    tagline = ""
    footer = "Mutopia-2002/12/14-274"
}

% Some useful macros

cresc = \markup { \italic cresc.}
decresc = \markup { \italic decresc.}

tupletNum = \revert TupletNumber #'stencil

noTupletNum = \override TupletNumber #'stencil = ##f

tupletBracket = \override TupletBracket
      #'bracket-visibility = ##t

noTupletBracket = \override TupletBracket
      #'bracket-visibility = ##f 

parentF = \markup {\center-align \concat { \bold { \italic ( }
                           \dynamic f \bold { \italic ) } } }
parentFP = \markup {\center-align \concat { \bold { \italic ( }
                           \dynamic fp \bold { \italic ) } } }
parentP = \markup {\center-align \concat { \bold { \italic ( }
                           \dynamic p \bold { \italic ) } } }

% General markings and annotations for each movement

markingsI =  {
    \tempo "Allegro non troppo."
    s1*164
    \bar "|."
}


markingsII =  {
    \tempo "Andante con moto."
    s2.*96
    \bar "|."
}


markingsIII =  {
    \tempo "MENUETTO. Allegro." s4
    s16
    s2.*69

    s2
    \tempo "Trio."
}

markingsIIIbis =  {
    s16
    s4
    s2.*102
    s4
    s4_ \markup{Minuetto D.C.}
}


markingsIV =  {
    \tempo "Allegro vivace."
    s2*296

    \tempo "a tempo"
    s2*46
    \bar "|."
}

% Only used in the fourth movement

rallentando = {
    \crescTextCresc \once\set crescendoText = \markup { ral } s4\< s4
    \once\set crescendoText = \markup { len } s4\< s4
    s2
    \once\set crescendoText = \markup { tan } s4\< s4
    \once\set crescendoText = \markup { do } s4\< s4\!
}
