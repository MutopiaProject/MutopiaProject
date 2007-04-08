\version "2.10.0"

 timpani = {
 \set Staff.instrumentName = \markup { \column { "Timpani" "in A.E." } }
 \set Staff.midiInstrument = "timpani"
 \clef bass
 \key c \major
 \time 4/4
 a,4\f\staccato r4 r2 R1 e4\f\staccato r4 r2 R1 a,4\f\staccato r4 r2 R1 a,4\f\staccato r4 r2 R1 R1 R1 R1 R1 R1 R1
 a,4\ff r r2 a,4 r r2 e4 r r2 e4 r r2 a,4 r r2 a,4 r r2 R1 e4\p r r2 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 e4\ff r e r e r e r e r e r e r e r e r e r e r e r e r e r e_\markup { \italic "dimin." } r e r
 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 e8\ff r r4 r2 R1 e8\ff r r4 r2 R1 R1 R1 R1 R1 R1 R1

 \time 6/8
 \repeat volta 2 {
 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2.
 r4^\fermata r8 r4 r8 a,8.\ff a,16 a,8 a,8. a,16 a,8 a,8. a,16 a,8 a,8. a,16 a,8
 a,8. a,16 a,8 a,8. a,16 a,8 a,8. a,16 a,8 a,8. a,16 a,8 a,8. a,16 a,8 a,8. a,16 a,8 a,8. a,16 a,8 a,8. a,16 a,8
 a,8. a,16 a,8 e8. e16 e8 a,8. a,16 a,8 a,8. a,16 a,8
 a,4 r8 r4 r8 a,8. a,16 a,8 a,8. a,16 a,8 a,4 r8 r4 r8 a,8. a,16 a,8 a,4 r8
 r8 r8. a,16\p a,4_\markup { \italic "cresc." } r8 r8 r8. a,16 a,4 r8
 r8 r8. a,16 a,4 r8 r8 r8. a,16 a,4 r8 r8 r8. a,16 a,4 r16 a,16
 a,4 r16 a, a,4 r16 a, a,4 r16 a, a,4 r16 a, a,4 r16 a, a,4 r16 a, e4. \startTrillSpan ~ e4 e8 \stopTrillSpan
 a,4 r8 a,4 r8 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2.
 e4\f r8 e4 r8 e4 r8 e4 r8 e4 r8 r4 r8 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. e4\ff r8 r4 r8
 r4 r8 e8. e16 e8 a,4 r8 r4 r8 r4 r8 a,8. a,16 a,8 R2. R2. e4\ff r8 r4 r8 r4 r8 e8. e16 e8 a,4 r8 r4 r8 r4 r8 a,8. a,16 a,8
 R2. R2. e4\ff r8 e4 r8 R2. R2. R2. e4 r8 r4 r8 R2. e4 r8 r4 r8 e8\ff r e r r e r r e r r e r r e r r e r r e r r e R2. R2.
 }

 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2.
 e4\f r8 r4 r8 e4 r8 r4 r8 e4 r8 e4 r8 e4 r8 e4 r8 R2. R2. R2. R2. R2. R2.
 e4 r8 r4 r8 R2. e4 r8 r4 r8 e4 r8 r4 r8 e4 r8 e4 r8 e4 r8 e4 r8 e4 r8 r4 r8 R2. R2. R2. R2. R2. R2. R2. R2. R2.
 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2.
 a,8\ff[ r16 a, a,8] a,8[ r16 a, a,8] a,8[ r16 a, a,8] a,8[ r16 a, a,8]
 a,2. \startTrillSpan ~ a,2. a,8\stopTrillSpan[ r16 a, a,8] a,8[ r16 a, a,8] a,8[ r16 a, a,8] a,8[ r16 a, a,8]
 a,2. \startTrillSpan ~ a,2. e8\stopTrillSpan[ r16 e e8] e8[ r16 e e8] e8[ r16 e e8] e8[ r16 e e8] e4 r8 r4 r8
 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. a,8.\f a,16 a,8 a,8._\markup { \italic "piu f" } a,16 a,8
 a,4\ff r8 r4 r8 r4 r8 r8 r8. a,16 a,4 r8 r4 r8 r4 r8 r8 r8. a,16 a,4 r8 r4 r8 r4 r8 r8 r8. a,16
 a,4 r16 a, e4 r16 e a,4 r16 a, a,4 r16 a, a,4 r8 r4 r8 R2. r4 r8 r8 r8. a,16 a,4 r8 r4 r8
 R2. r4 r8 r8 r8. e16 e4 r8 r8 r8. e16 e4 r8 r8 r8. e16 e4 r8 r8 r8. e16 e4 r8 r8 r8. e16
 e4 r8 r8 r8. e16 e4 r16 e e4 r16 e e4 r16 e e4 r16 e e4.^\fermata r4 r8
 r4^\fermata r8 r4 r8 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2.
 a,8._\markup { \italic "pp sempre" } a,16 a,8 a,8. a,16 a,8 a,8. a,16 a,8 a,8. a,16 a,8
 a,8. a,16 a,8 a,8. a,16 a,8 a,8. a,16 a,8 a,8. a,16 a,8 a,4.:16_\markup { \italic "cresc." } a,4.:16
 a,4.:16 a,4.:16 a,4.:16 a,4.:16 a,4.:16 a,4.:16 a,2.:16\ff e4.^\trill ~ e8 e e a,8 r a, a, r a, e8\p r8 r8 r4 r8
 R2. R2. R2. R2. a,4\f r8 r4 r8 e4 e8 e4 e8 e4 r8 r4 r8 e4 e8 e4 e8
 a,4 a,8 a,4 a,8 e8 e r e e r e e r e e r e e r e e r e e r e e r R2. R2. R2. R2. R2. R2. a,4\ff r8 a,4 r8
 a,4 r8 a,4 e8 a,4 r8 r4 r8 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2.
 R2. a,4\ff r8 r4 r8 r4 r8 a,8. a,16 a,8 a,4 r8 r4 r8 r4 r8 a,8. a,16 a,8 R2. R2. a,4\ff r8 r4 r8
 r4 r8 a,8. a,16 a,8 a,4 r8 r4 r8 r4 r8 a,8. a,16 a,8 R2. R2. a,4\ff r8 a,4 r8 e4 r8 r4 r8 e4 r8 e4 r8 e4 r8 r4 r8
 a,4 r8 e4 r8 e4 r8 r4 r8 a,4 r8 e4 r8
 a,8\ff r a, r r a, r r a, r r a, r r a, r r a, r r a, r r a, R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2.
 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2.
 r4 r8 e4\p r8 R2. r4 r8 e4 r8 R2. r4_\markup { \italic "poco cresc." } r8 e4 r8 R2. r4 r8 e4 r8 R2. r4 r8 e4 r8
 R2. r4 r8 e4 r8 R2. r8_\markup { \italic "piu cresc." } e8[ e] e8[ e e] e[ e e] e[ e e]
 a,8.\ff a,16 a,8 a,8. a,16 a,8 a,8. a,16 a,8 a,8. a,16 a,8 a,8. a,16 a,8 a,8. a,16 a,8 a,8. a,16 a,8 a,8. a,16 a,8
 e4 r8 r4 r8 e4 r8 r4 r8 e4 r8 r4 r8 a,4 r8 a,4 r8 a,4 r8 a,4 r8 a,4 r8 r4 r8 a,4 r8 r4 r8
 e4 r8 r4 r8 e4 r8 r4 r8 a,4 r8 r4 r8 e4 r8 r4 r8 a,4 r8 a,4 r8 e4 r8 a,4 r8
 a,8[ r16 a, a,8] a,8[ r16 e e8] e8[ r16 e e8] e8[ r16 a, a,8]
 a,4\ff r8 r4 r8 e8[ r16 e e8] e8[ r16 e e8] a,4 r8 r4 r8 e8[ r16 e e8] e8[ r16 e e8]
 a,8[ r16 a, a,8] a,8[ r16 a, a,8] a,8[ r16 a, a,8] a,8[ r16 a, a,8] a,4 r8 r4 r8 e4 r8 r4 r8 a,4 r8 r4 r8 \bar "|."
}