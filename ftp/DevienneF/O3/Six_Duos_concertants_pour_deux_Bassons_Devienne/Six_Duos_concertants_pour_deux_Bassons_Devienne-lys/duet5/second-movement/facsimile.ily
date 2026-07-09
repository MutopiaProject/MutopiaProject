\include "movement-definitions.ily"
segnoMarkup=\markup \segno
part = \relative c' {
  \keySig
  \secondMovementClef
  \secondMovementTimeSig
  \secondMovementTempo
  \secondMovementPartial
  \omit TupletNumber
  \mark \markup \segno
  \uptoFine
  \tweak direction #DOWN
  \tweak self-alignment-X #RIGHT
  \textEndMark \markup \italic { #(if (= player 1) #{ "fin" #} #{ "fin" #} ) \hspace #5 }
  \bar ".."
  \secondMovementPartial
  \uptoSegno
  \textEndMark \segnoMarkup
  \bar ".."
  \tweak direction #DOWN
  \textMark \markup \large \italic Minear
  \secondMovementPartial
  \uptoEnd
  \tweak self-alignment-X #LEFT
  \textEndMark  \markup { \segno }
  \bar ".."
  #( if (= player 1) #{
  \cadenzaOn
  \once \override Rest.stencil =
  #(lambda (grob)
     (grob-interpret-markup grob #{
       \markup  \filled-box #'(1 . 1.75) #'(-1.5 . 1.5) #0.4
                            #}))
  r16
  \once \override Rest.stencil =
  #(lambda (grob)
     (grob-interpret-markup grob #{
       \markup  \filled-box #'(1 . 1.75) #'(-1.25 . 1.25) #0.4
                            #}))
  r16
  \once \override Rest.stencil =
  #(lambda (grob)
     (grob-interpret-markup grob #{
       \markup  \filled-box #'(1 . 1.75) #'(-1 . 1) #0.4
                            #}))
  r16
  \once \override Rest.stencil =
  #(lambda (grob)
     (grob-interpret-markup grob #{
       \markup  \filled-box #'(1 . 1.75) #'(-0.5 . 0.5) #0.4
                            #}))
  r16
  \once \override Rest.stencil =
  #(lambda (grob)
     (grob-interpret-markup grob #{
       \markup  \filled-box #'(1 . 3) #'(-0.4 . 0.4) #0.4
                            #}))
  r16
  \cadenzaOff
        #} )
}

