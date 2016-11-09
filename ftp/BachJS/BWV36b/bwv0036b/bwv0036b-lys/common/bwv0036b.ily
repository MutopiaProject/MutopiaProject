\include "version.ily"
\include "definitions.ily"
\pointAndClickOff

\header {
  date = "1735"
  lastupdated = "2016-11-03"
  style = "Baroque"
  source = "Breitkopf & Härtel, Leipzig, 1887; Tanubach"

  maintainer = "Tim Schellenberg"
  maintainerEmail = "trschell (at) gmail (dot) com"
  license = "Creative Commons Attribution-ShareAlike 4.0"

  mutopiatitle = "Die Freude Reget Sich"
  mutopiaopus = "BWV 36b"
  mutopiacomposer = "BachJS"
  mutopiainstrument = "Orchestra: Flute, Oboe, Violins, Viola, Choir (SATB), Soprano, Alto, Tenor, Continuo"


 footer = "Mutopia-2016/11/09-2145"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " 2016 " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License "\char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}

\include "cantataStyle.ily"
\include "cantataInstrumentNames.ily"
