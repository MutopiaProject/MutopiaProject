%{
  ***********************************************************************
  * Composer - Work in Tonality                                         *
  * typeset by                                                          *
  *                                                                     *
  * Headers for Mutopia publishing                                      *
  *                                                                     *
  * *******************************                                     *
  * *   Do not compile            *                                     *
  * *******************************                                     *
  *                                                                     *
  ***********************************************************************
%}

\header {
  date = "1738"
  style = "Baroque"
  source = "Bach-Gesellschaft Ausgabe; Breitkopf and Härtel, 1869"

  maintainer = "John Doe et al."
  maintainerEmail = "john (at) domain (dot) com"
  license = "Public Domain"

  mutopiatitle = "Keyboard Concerto Nº 4"
  mutopiaopus = "BWV 1055"
  mutopiacomposer = "BachJS"
  mutopiainstrument = "Orchestra: Violins, Viola,'Cello, Continuo, Harpsichord, Clavichord, Piano"
  
 footer = "Mutopia-2015/07/10-1"
 
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}
