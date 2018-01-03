\version "2.16.2"

 timpani = {
 \set Staff.instrumentName = "Timpani in C.G."
 \set Staff.midiInstrument = "timpani"
 \clef bass
 \key c \major
 \time 3/8
 \partial 8 r8 R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4.
 R4. R4. R4. R4. R4. R4. R4. c4.\ff^\trill g,8\staccato[ g,\staccato g,\staccato]
 c8 r r c8_\markup { \dynamic ff \italic "sempre" }[ c g,] c8 r c16. c32 c8[ c c] c4^\trill c16.\sf c32 c4^\trill c16.\sf c32
 c8 r8 r R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4.
 R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4.
 c4.\ff^\trill g,8\staccato[ g,\staccato g,\staccato] c8 r r c8[ c g,] c8 r c16. c32 c8[ c c]
 c4^\trill c16.\sf[ c32] c4^\trill c16.\sf[ c32] c8 r r R4. R4. R4. R4.
 R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. r16 c16\f c4:16
 c4.:16 R4. r8 r g,16 g, c4.:16 R4. r8 c4:16 g,8 r r R4. r4^\fermata r8 R4. R4. R4. R4. R4.
 R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. r8 r c16\ff c c8[ c g,] c4.^\trill
 c8 r c16. g,32 c8[ c c] c4.^\trill c8 r c16. c32 c8^\trill c8 c16.[ c32] c8^\trill c8 c16.[ c32]
  c4.\>~ \startTrillSpan c4. c8\!\p \stopTrillSpan r8 r R4. R4. R4. R4. R4. R4. R4. R4.
 R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4.
 c8\ff r8 r R4. g,8[ g, g,] c[ c c] R4. g,8[ c c] g,8 r r c8 r r R4. c8 r r R4. R4. R4.
 R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. c'8\f r8 r R4.
 c8 r r r8 r r R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4.
 R4. r8 r \override TupletNumber #'transparent = ##t \times 2/3 { c16\f[ c c] }
 c8[ c c] c8 r r R4. c8 r r R4. R4. c8 r \bar "|."
}
