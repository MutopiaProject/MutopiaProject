\version "2.16.0"

\header {
  title = "Trio in E-flat Major"
  subtitle = "(Kegelstatt Trio)"
  subsubtitle = "for Clarinet, Viola and Piano"
  composer = "W.A. Mozart (1756-1791)"
  opus = "KV.498"

  mutopiatitle = "Trio in E-flat Major KV. 498"
  mutopiacomposer = "MozartWA"
  mutopiaopus = "KV. 498"
  mutopiainstrument = "Clarinet, Viola and Piano"
  date = "1786"
  source = "Breitkopf und Haertel (1879)"
  style = "Classical"
  copyright = "Public Domain"
  maintainer = "Maurizio Tomasi"
  maintainerEmail = "zio_tom78@hotmail.com"

  tagline = ""
  footer = "Mutopia-2004/04/30-250"
}

% Some useful macros

tupletNum = \revert TupletNumber #'stencil

noTupletNum = \override TupletNumber
      #'stencil = ##f

tupletBracket = \override TupletBracket
      #'bracket-visibility = ##t

noTupletBracket = \override TupletBracket
      #'bracket-visibility = ##f 

smallNatural=\markup {\tiny \natural}

markingsI =  {
    \tempo "Andante."
}

markingsII =  {
    \tempo "Menuetto."
    | s2.*41
    \tempo "Trio."
}

markingsIII =  {
    \tempo "Rondo. Allegretto."
}
