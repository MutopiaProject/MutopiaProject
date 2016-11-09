\header {
    title = \markup {
        \fill-line {
            \column {
                \fontsize #3
                \override #'(font-name . "Linux Libertine O Bold")
                \line { \fromproperty #'header:mutopiatitle }
                \line { \fromproperty #'header:mutopiaopus }
                \line { \fontsize #-1 \medium \fromproperty #'header:scoretype }
            }
            \column {
                \line { " " }
                \vspace #0.3
                \epsfile #X #40 #"common/Bach_Seal.eps"
            }
            \null
        }
    }
    composer = \markup {
        \fontsize #2
        \override #'(font-name . "Linux Libertine O")
        "Johann Sebastian Bach"
    }
}

