\version "2.16.2"

 timpani = {
 \set Staff.instrumentName = "Timpani in C.G."
 \set Staff.midiInstrument = "timpani"
 \clef bass
 \key c \major
 \time 2/4
 \repeat volta 2 {
 R2 r2^\fermata R2 R2 r2^\fermata R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2
 r8 g,8_\markup { \dynamic p \italic "cresc." }[ g, g,] c4\f r c r g, r4^\fermata R2 R2 r2^\fermata
 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2
 R2 R2 R2 R2 c4\f r c\f r R2 R2 r4 c8 c g,4 r R2 R2 r4 c8 c c2:8\ff c2:8 c2:8 c2:8 c4 r R2 R2
 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2
 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 g,4\f r c4 r R2 R2 R2 R2 r4 g,4
 R2 r4 g, r c R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 }

 R2 R2 R2 r2^\fermata R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2
 R2 R2 R2 R2 R2 g,4\pp r4 R2 c4 r R2 c4 r R2 g,4 r R2 g,4 r R2 c2:8\f c2:8 c4 r r8 g,[ g, g,] g,2:8 g,2:8 g,4 r
 \set crescendoText = \markup { \italic "piu f" } %\set crescendoSpanner = #'dashed-line
 r8 g,8\cresc[ g, g,] g,4 r r4 g,8 g, g,4\! r4 R2 R2 R2 R2 R2 R2 R2 R2 g,4 r R2 R2
 R2 R2 R2 R2 r4 g,8 g, c4 r4 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2
 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2
 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2
 r8 g,8\ff[ g, g,] g,2^\trill_\markup { \italic "ten." }
 r8 g,8[ g, g,] g,2~ \startTrillSpan g,2^\fermata_\markup { \italic "ten." } \stopTrillSpan R2 R2 R2 R2
 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 c4\p r4

 \cadenzaOn
 g,4\f %s4 s2 s2
 r4^\fermata %s2 s4 \cadenzaOff \bar "|"
s2*4    \cadenzaOff
s2

 R2 R2 R2 R2 R2 R2 R2 R2 R2 c4\f r R2 c4 r R2 R2 R2 R2 R2 R2 c4\f r c4\f r R2 R2 r4 c8[ c] g,4 r
 R2 R2 r4 c8[ c] c2:8\f c2:8 c2:8 c2:8 c4 r R2 g,4 r R2 R2 R2
 R2 R2 R2 R2 R2 R2 R2 r8 g,8\p[ g, g,] c4 r4 R2 R2 R2 R2 R2 R2 r8 g,8[ g, g,] c4 r4
 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2
 R2 R2 R2 R2 R2 R2 R2 R2 g,2\ff~ \startTrillSpan g,4 g,4 \stopTrillSpan c4 r g, r c r
 c4 r g, r g, r g,2~ \startTrillSpan g,2 c4 \stopTrillSpan c4 r4 g, r c r c r g, r g,
 c4 r4 R2 R2 r8 g,8[ g, g,] c4 r4 R2 R2 r8 g,8[ g, g,] c4 r4 r8 g,[ g, g,] c4 r r8 g,[ g, g,]
 c2:8 c4 r r8 c[ c c] c4 r r8 c[ c c] c4 r r8 c[ c c] c4 r R2 R2 R2 R2 R2 R2
 R2 R2 r8 c8\ff[ c c] c2:8 c2:8 c2:8 c2:8 c4 r4 r8 c8[ c c] c4 r4 R2 g,4 r4 R2 R2
 R2 g,4 r4 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 r4 g,4 g, g, g, g, g, c c c c g, g, g, g, g,
 c2:8 c4 r c2:8 c4 r c2:8 c4 r c2:8 c4 r g,2:8 g,4 r c4\staccato r c\staccato r c\staccato r c\staccato r
 g,4\staccato r g,\staccato r c\staccato r c c c r c c c r c c c r
 g,4 g, g, r R2 R2 g,4 g, g, r R2 R2 R2 R2 c4 c R2 c4 c r4 g, r g, R2 R2
 c4 c c c c c c c r4 g, r g, c4 r R2 R2 R2 R2 r8 g,[ g, g,] c4 r4
 R2 R2 r8 g,8[ g, g,] g,2\ff^\trill^\fermata r8 g,[ g, g,] \startTrillSpan g,2~ g,2^\fermata \stopTrillSpan
 R2 R2 R2 R2 R2 R2 R2 R2 r8 g,8\ff[ g, g,] c4 r r8 g,[ g, g,] c4 r r8 g,[ g, g,]
 c4 g, c g, c g, c g, c r g, r c r \bar "|."
}
