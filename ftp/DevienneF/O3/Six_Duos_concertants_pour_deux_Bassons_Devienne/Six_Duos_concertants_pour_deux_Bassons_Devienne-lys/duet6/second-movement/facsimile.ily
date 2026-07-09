\include "movement-definitions.ily"
segnoMarkup=\markup \segno
part = \relative c' {
  #(if facsimile #{ \override Staff.KeySignature.sharp-positions = #'(5) #} )
  \keySig
  \secondMovementClef
  \secondMovementTimeSig
  \secondMovementTempo
  \secondMovementPartial
  \omit TupletNumber
  \mark \markup \segno
  \uptoFine
%%  \tweak direction #DOWN
%%  \tweak self-alignment-X #RIGHT
%%  \textEndMark \markup \italic { #(if (= player 1) #{ "fin" #} #{ "fin" #} ) \hspace #5 }
  \bar ".."
  \secondMovementPartial
  \uptoSegno
  \textEndMark \segnoMarkup
  \bar ".."
%%  \tweak direction #DOWN
  \textMark \markup \large \italic Minear
  \secondMovementPartial
  \uptoEnd
  \tweak self-alignment-X #LEFT
  \textEndMark  \markup { \segno }
  \bar ".." \grace s16
}

