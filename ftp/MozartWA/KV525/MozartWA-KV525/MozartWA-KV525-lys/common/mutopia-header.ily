%{
  ***********************************************************************
  *                                                                     *
  * Headers for Mutopia publishing                                      *
  *                                                                     *
  ***********************************************************************
%}

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
  
 footer = "Mutopia-2018/08/01"
 
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}
























