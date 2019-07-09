\version "2.18.2"

\header {
  mutopiatitle = "Goldberg Variations for Guitar Ensemble"
  date = "1873"
  style = "Baroque"
  mutopiaopus = "BWV 988"
  mutopiacomposer = "BachJS"
  mutopiainstrument = "Guitar"
  source = "Bach-Gesellschaft, 1853; Bach's annotated 'Handexemplar' of 1st Ed. ca.1741; OpenGoldberg, 2012"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  moreInfo = "This a derivative work.  Refer to each section for the appropriate cc-by-sa attribution."
  %maintainer = "Steve Shorter et al."  %--- copyright attribution set separately at each section
  maintainerEmail = "steve@linuxsuite.org"

  footer = "Mutopia-2019/06/05-2203"
  copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white "ǀ" \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {"ǀ" "ǀ"}}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " ©" 2017 ""by " \maintainer " — " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License" " — free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white "ǀ" }}}
  tagline = ##f
}

%--------------- Initially adapted for Mutopia
%--------------- by Javier Ruiz-Alma 2016/10/31