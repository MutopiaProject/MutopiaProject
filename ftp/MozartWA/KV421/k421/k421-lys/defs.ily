\version "2.16.0"

\header {
    title = "String Quartet KV. 421 (nr. 15)"
    subtitle = "for 2 violins, viola and cello"
    composer = "W. A. Mozart (1756-1791)"
    opus = "KV.421"
        
    mutopiatitle = "String Quartet KV. 421 (nr. 15)"
    mutopiacomposer = "MozartWA"
    mutopiaopus = "KV 421"
    mutopiainstrument = "String Quartet: Two Violins, Viola, 'Cello"
    date = "June 1783"
    source = "Breitkopf und Härtel (1882)"
    style = "Classical"
    copyright = "Public Domain"
    maintainer = "Maurizio Tomasi"
    maintainerEmail = "zio_tom78@hotmail.com"
    
 footer = "Mutopia-2013/07/07-273"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \abs-fontsize #10 \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 MutopiaProject \abs-fontsize #8 .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \abs-fontsize #10 \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 LilyPond \abs-fontsize #8 .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \abs-fontsize #8 \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

% Some useful macros

cresc = \markup {\italic cresc.}
decresc = \markup {\italic decresc.}
staccato = \markup {\italic staccato.}
legato = \markup {\italic legato.}

roundF = \markup {\center-align \concat { \bold { \italic ( }
                           \dynamic f \bold { \italic ) } } }
roundMF = \markup {\center-align \concat { \bold { \italic ( }
                           \dynamic mf \bold { \italic ) } } }
roundP = \markup {\center-align \concat { \bold { \italic ( }
                           \dynamic p \bold { \italic ) } } }

tupletNum = \revert TupletNumber #'stencil

noTupletNum = \override TupletNumber
      #'stencil = ##f

tupletBracket = \override TupletBracket
      #'bracket-visibility = ##t

noTupletBracket = \override TupletBracket
      #'bracket-visibility = ##f 

% General markings and annotations for each movement

globalI = {
    \time 4/4
}


markingsI =  {
    \tempo "Allegro."
    s1*119
    \bar "|."
}


markingsII =  {
    \time 6/8
    \tempo "Andante."
    s2.*87
    \bar "|."
}


markingsIII =  {
    \time 3/4
    \partial 4

    \tempo "MENUETTO. (Allegretto.)"
    s2.*39

    \mark "Trio."
}


markingsIIIbis =  {
    \time 3/4
    \partial 4

    s4
    s2.*62
    \once \override TextScript   #'direction = #DOWN
    s2_ \markup{Menuetto D.C.}
}


markingsIV =  {
    \time 6/8
    \partial 8

    \tempo "Allegro ma non troppo."
    s2.*112

    \tempo "Più Allegro."

    s2.*30
    s8
    \bar "|."
}
