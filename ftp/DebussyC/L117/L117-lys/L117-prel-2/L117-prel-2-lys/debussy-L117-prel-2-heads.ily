\version "2.18.2"

\paper {
    top-margin = 8\mm                              %-minimum top-margin: 8mm
    top-markup-spacing.basic-distance = #5         %-dist. from bottom of top margin to the first markup/title
    markup-system-spacing.basic-distance = #6      %-dist. from header/title to first system
    top-system-spacing.basic-distance = #12        %-dist. from top margin to system in pages with no titles
    last-bottom-spacing.basic-distance = #11       %-pads music from copyright block

    %% --- Set these to false after all editing is finished
    ragged-bottom = ##f
    ragged-last-bottom = ##f
    
    %% --- Control system/score spacing
    system-system-spacing = 
      #'((basic-distance . 18)
         (minimum-distance . 18)
         (padding . 1)
         (stretchability . 12))
    score-system-spacing =
      #'((basic-distance . 12)
         (minimum-distance . 6)
         (padding . 1)
         (stretchability . 12))
}

\header {
    title = "Prélude II."
    composer = "Claude Debussy (1862-1918)"
    opus = "CD 125; L.117"
    piece = \markup \italic \huge "Voiles"
    date = "1910"
    style = "Romantic"
    source = "Durand, 1910"

    maintainer = "Knute Snortum"
    maintainerEmail = "knute (at) snortum (dot) net"
    license = "Creative Commons Attribution-ShareAlike 4.0"

    mutopiatitle = "Prélude 2: Voiles"
    mutopiaopus = "CD 125; L.117"
    mutopiacomposer = "DebussyC"
    mutopiainstrument = "Piano"

 footer = "Mutopia-2015/01/16-1997"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2015 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " " \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}