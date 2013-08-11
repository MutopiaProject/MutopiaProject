\version "2.16.0"

\header {
    title = "String Quartet KV. 465 (nr. 19) ``Dissonances''"
    subtitle = "for 2 violins, viola and cello"
    composer = "W. A. Mozart (1756-1791)"
        
    mutopiatitle = "String Quartet KV. 465 (nr. 19) \"Dissonances\""
    mutopiacomposer = "MozartWA"
    mutopiaopus = "KV 465"
    mutopiainstrument = "String Quartet: Two Violins, Viola, 'Cello"
    date = "14th January 1785 (Wien)"
    source = "Breitkopf und Härtel (1882)"
    style = "Classical"
    copyright = "Public Domain"
    maintainer = "Maurizio Tomasi"
    maintainerEmail = "zio_tom78@hotmail.com"

 footer = "Mutopia-2013/08/11-279"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \abs-fontsize #10 \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 MutopiaProject \abs-fontsize #8 .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \abs-fontsize #10 \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 LilyPond \abs-fontsize #8 .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \abs-fontsize #8 \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
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
