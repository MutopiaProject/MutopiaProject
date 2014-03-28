\version "2.16.0"

\header {
  title = "Trio in E-flat Major"
  subtitle = "(Kegelstatt Trio)"
  subsubtitle = "for Clarinet, Viola and Piano"
  composer = "W.A. Mozart (1756-1791)"
  opus = "KV.498"

  mutopiatitle = "Trio in E-flat Major KV. 498"
  mutopiacomposer = "MozartWA"
  mutopiaopus = "KV 498"
  mutopiainstrument = "Clarinet (or Violin), Viola and Piano (also Piano solo)"
  date = "1786"
  source = "Breitkopf und Haertel (1879)"
  style = "Classical"
  license = "Public Domain"
  maintainer = "Maurizio Tomasi"
  maintainerEmail = "zio_tom78@hotmail.com"
  moreInfo = "<p>A violin transposition of the clarinet part is included.</p>"

 footer = "Mutopia-2014/03/28-250"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
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
