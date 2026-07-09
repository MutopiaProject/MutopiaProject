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
  \textEndMark \markup \italic { #(if (= player 1) #{ "fin" #} #{ "Fin" #} ) \hspace #5 }
  \bar ".."
  \uptoSegno
  \textEndMark \segnoMarkup
  \bar ".."
  \textMark \markup \large \italic Minear
  \key g \minor
  \uptoEnd
  \tweak self-alignment-X #LEFT
  #(if (= player 1) #{ \textEndMark  \markup { \fermata  \segno } #} #{ \textEndMark  \markup { \segno } #}  ) 
  \bar ".."
  \cadenzaOn s8 \cadenzaOff
}

