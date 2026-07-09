parenthesizedDoubleRepeat = {
\tweak self-alignment-X #CENTER
  \textEndMark \markup { \huge \rotate #270 "(" }
  \tweak self-alignment-X #CENTER
  \tweak direction #DOWN \textEndMark \markup { \huge \rotate #270 ")" }
  \bar ":|.|:" s32
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

