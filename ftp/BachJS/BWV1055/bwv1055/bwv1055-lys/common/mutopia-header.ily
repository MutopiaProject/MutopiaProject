%{
  ***********************************************************************
  * Bach - Keyboard Concerto No.4 in A major                            *
  *                                                                     *
  * typeset by Javier Ruiz-Alma                                         *
  *                                                                     *
  *                                                                     *
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

  maintainer = "Javier Ruiz-Alma"
  maintainerEmail = "javier (at) ruiz-alma (dot) com"
  license = "Creative Commons Attribution-ShareAlike 4.0"

  mutopiatitle = "Keyboard Concerto Nº 4"
  mutopiaopus = "BWV 1055"
  mutopiacomposer = "BachJS"
  mutopiainstrument = "Orchestra: Violins, Viola,'Cello, Continuo, Harpsichord, Clavichord, Piano"
  
 
 footer = "Mutopia-2015/11/04-2050"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2015 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " " \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}
