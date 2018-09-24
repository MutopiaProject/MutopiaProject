\version "2.18.2"
#(set-global-staff-size 17)
\header {
  title             = "Concerto à 8"
  subtitle          = "TWV 51:G8"
  composer          = "G. P. Telemann"
  mutopiaopus       = "TWV 51:G8"
  mutopiacomposer   = "TelemannGP"
  mutopiainstrument = "Violin, Viola, Cello, Oboe, Harpsichord"
  date              = "ca. 1730"
  source            = "Manuscript, scanned by the Library of the Technical University of Darmstadt"
  style             = "Baroque"
  license           = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer        = "Elias Hernandis"
  maintainerEmail   = "eliashernandis@gmail.com"
  maintainerWeb     = "https://hernandis.me"
  moreInfo          = "Manuscript downloaded from <a href='http://tudigit.ulb.tu-darmstadt.de/show/Mus-Ms-1033-92'>the Library of the Technical University of Darmstadt</a>"
  footer = "Mutopia-2018/09/24-2231"
  copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white "ǀ" \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {"ǀ" "ǀ"}}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " ©" 2018 ""by " \maintainer " — " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License" " — free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white "ǀ" }}}
  tagline = ##f
}

globalFirstMov = {
  \key g \major
  \tempo "Allegro"
  \compressFullBarRests
}

globalSecondMov = {
  \key g \major
  \tempo "Adagio"
  \compressFullBarRests
}

globalThirdMov = {
  \key g \major
  \time 3/4
  \tempo "Allegro"
  \compressFullBarRests
}
