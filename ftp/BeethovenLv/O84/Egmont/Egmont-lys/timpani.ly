\version "2.18.2"

\include "defs.ily"

 timpani =  {
 \set Staff.instrumentName = "Timpani F.C."
 \set Staff.midiInstrument = "timpani"
 \clef bass
 \key c \major
 \time 3/2
 \moreAccidentalPadding
 r1\fermata s2 R1. R1. R1. R1. R1. R1. R1. R1.
 R1. R1. R1. R1. R1. R1. R1. r2 c\pp c r2 c c R1. R1. R1. R1. R1. R1. \bar "||"

 \time 3/4 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2.
 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2.
 r4 r4 f,4\ff
 \tupletSpan 4
 \tuplet 3/2 { f,8 f, f, \hideTupletNumber f, f, f, f, f, f, } f,4 r4 r4 r4 f,4 f, c r c\ff
 \tuplet 3/2 { c8[ c c] c[ c c] c[ c c] } c4 r r r c c f,4 r r f, r r f, r r f, f, f,
 f,4 r r f, r r f, r f, f, f, r
 R2. c4 r r R2. R2. R2. c4 r r R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2.
 R2. R2. R2. R2. R2. R2. R2. R2. c4\ff r r f,4 r r f,4 r r R2.
 c4\f r r R2. c4 r r R2. c4 r r r c c R2. R2. c4 r r R2. c4 r r R2. c4 r r
 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2.
 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2.
 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2.
 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2.
 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. r4 r f,\ff
 \tupletSpan 4
 \tuplet 3/2 { f,8[ f, f,] f,[ f, f,] f,[ f, f,] } f,4 r r r f, f,
 c4 r c\ff \tuplet 3/2 { c8[ c c] c[ c c] c[ c c] } c4 r r r c c f, r r
 R2. R2. R2. R2. R2. r4 r f,4\ff f, r r R2. f,4 r r R2. f,4 r r R2. f,4 r r r r c R2. R2.
 c4 r r f, r r R2. c4 r r c r r f, r r R2. c4 r r
 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2.
 R2. c2.\ff\trill f,4 r r R2. R2. c4 r r f,4\f r r R2. f,4 r r R2. f,4 r r r f, f,
 c4 r r c4 r r f,4 r r c4 r r f,4 r r c4 r r R2. R2. R2. R2. R2. R2. R2. R2.
 R2. R2. R2. R2. R2. R2. R2. R2. c4\ff c r8 c c4 c r8 c c4 c r r4 r r8 r^\fermata
 R2. R2. R2. R2. R2. R2. R2. R2.^\fermataMarkup \bar "||"

 \time 4/4 c1\pp \startTrillSpan ~ c1 ~ c1 ~ c1 ~
 c1_\txtCresc ~ c1 ~ c1 ~ c1*15/16 s1*1/16\stopTrillSpan
 f,4\ff r r2 f,4\sf r r2 f,4\sf r f,\sf r f,\sf r f,\sf r
 f,4 r f, f, f, r c r
 f,2\sf\trill f,8 r r4 f,2\sf\trill f,8 r r4
 f,16\sf f, f, f, r4 f,16\sf f, f, f, r4 f,16\sf f, f, f, r4 f,16\sf f, f, f, r4
 f,4 r f, r f, r c r f, r r2 R1 R1 R1 R1 R1 R1 R1
 f,4\ff f, f,8 r r4 r2 c4 c f, r c r c r c r c1 \startTrillSpan ~ c1*15/16 s1*1/16\stopTrillSpan
 c4 r c r c r c r f,4 r8 c c4 r8 c c4 r8 c c4 r8 c
 c4 c2.\startTrillSpan ~ c1*15/16 s1*1/16\stopTrillSpan c4 c c c c c c c
 f,2^\trill f,4 r R1 f,2^\trill f,4 r R1
 f,4 r f, r c\sf r r c f, r f, r c\sf r r c f,4 r f, r c\sf r r c c\sf r r c c\sf r r c
 f,1\ff ~ \startTrillSpan f,1*15/16 s1*1/16 \stopTrillSpan
 f,4 r r2 f,4 r r2 f,4 r r2 f,4 r f, r f, r r2 \bar "|."
}