%{
  ***********************************************************************
  *                                                                     *
  * Headers for Mutopia publishing                                      *
  *                                                                     *
  ***********************************************************************
%}
\version "2.18.2"
\header {
  date = "1787"
  style = "Classical"
  source = "Breitkopf & Härtel, 1883"

  maintainer = "Mike Blackstock"
  maintainerEmail = "mike (at) omet (dot) ca"
  license = "Public Domain"

  mutopiatitle = "Eine Kleine Nachtmusik"
  mutopiaopus = "KV525"
  mutopiacomposer = "MozartWA"
  mutopiainstrument = "Orchestra: Violins, Viola, Cello"


  footer = "Mutopia-2018/08/04-2230"
  copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white "ǀ" \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {"ǀ" "ǀ"}}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " "by " \maintainer " — " \footer}\concat {\concat {\abs-fontsize #8 { "Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "Public Domain" " by the typesetter " " — free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white "ǀ" }}}
  tagline = ##f
}
