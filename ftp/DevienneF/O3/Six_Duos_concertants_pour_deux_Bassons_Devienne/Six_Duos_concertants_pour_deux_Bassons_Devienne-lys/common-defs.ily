markedDoubleRepeat = {
  \tweak self-alignment-X #CENTER
  \textEndMark \markup { \huge \rotate #280 \musicglyph "clefs.percussion_change" }
  \tweak self-alignment-X #CENTER
  \tweak direction #DOWN \textEndMark \markup { \huge \rotate #280 \musicglyph "clefs.percussion_change" }
  \bar ":|.|:" \cadenzaOn s32 \cadenzaOff
}
parenthesizedDoubleBar = {
  \tweak self-alignment-X #CENTER
  \textEndMark \markup { \huge \rotate #270 "(" }
  \tweak self-alignment-X #CENTER
  \tweak direction #DOWN \textEndMark \markup {
    \huge \rotate #270 ")"
  }
}
parenthesizedDoubleBarFin = {
  \tweak self-alignment-X #CENTER
  \textEndMark \markup { \huge \rotate #270 "(" }
  \tweak self-alignment-X #CENTER
  \tweak direction #DOWN \textEndMark \markup { \huge \italic "fin" }
  \bar ".."
}

dcSegnoBar = {
  \tweak self-alignment-X #CENTER
  \textEndMark \markup \segno
  \tweak self-alignment-X #CENTER
  \tweak direction #DOWN \textEndMark \markup { \tiny "D.C." }
  \bar "||"
}
dcSegnoBarDCDot = {
  \tweak self-alignment-X #CENTER
  \textEndMark \markup \segno
  \tweak self-alignment-X #CENTER
  \tweak direction #DOWN \textEndMark \markup { \tiny "DC." }
  \bar "||"
}
dcSegnoBarDCNoDots = {
  \tweak self-alignment-X #CENTER
  \textEndMark \markup \segno
  \tweak self-alignment-X #CENTER
  \tweak direction #DOWN \textEndMark \markup { \tiny "DC" }
  \bar "||"
}
fl=\once \autoBeamOff

hideTuplets = { \omit TupletNumber \override TupletBracket.bracket-visibility = ##f }
showTuplets = { \undo \omit TupletNumber \override TupletBracket.bracket-visibility = ##t }
showUrtextTuplets = { #(if (not facsimile) #{\undo \omit TupletNumber \override TupletBracket.bracket-visibility = ##t #} )}