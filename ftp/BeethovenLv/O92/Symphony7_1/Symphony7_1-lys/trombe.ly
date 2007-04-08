\version "2.10.0"

 trombe = {
 \set Staff.instrumentName = "Trombe in D"
 \set Staff.midiInstrument = "english horn"
 \clef treble
 \key c \major
 \time 4/4
 <g' g''>4\f\staccato r4 r2 R1 << { d''4\staccato } \\ { d''4\f } >> r4 r2 R1
 <g' g''>4\f\staccato r4 r2 R1 <g' g''>4\f\staccato r4 r2 R1 R1 R1 R1 R1 R1 R1
 <g' g''>1\ff ~ <g' g''>4 r r2 << { d''1 ~ d''4 } \\ { d''1 ~ d''4 } >> r4 r2 <c' c''>1 <g g'>4 r r2
 << { f''1 ~ f''4 } \\ { f''1 ~ f''4\p } >> r4 r2 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 << { d''2 d'' d'' d'' d'' } \\ { d''2\ff d''\sf d''\sf d''\sf d''\sf } >> <e' e''>2\sf <e' e''>2\sf <e' e''>2\sf
 << { d''2 } \\ { d''2\sf } >> <d'' f''>2\sf <d'' f''>\sf <d'' f''>\sf << { d''2 } \\ { d''2\sf } >> <d'' f''>2\sf
 << { d''2 d'' } \\ { d''2_\markup { \italic "dimin." } d'' } >> R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 << { d''8 } \\ { d''8\ff } >> r8 r4 r2 R1 << { d''8 } \\ { d''8\ff } >> r8 r4 r2 R1 R1 R1 R1 R1 R1 R1

 \time 6/8
 \repeat volta 2 {
 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2.
 r4^\fermata r8 r4 r8 <g g'>8.\ff <g g'>16 <g g'>8 <g g'>8. <g g'>16 <g g'>8
 <g g'>8. <g g'>16 <g g'>8 <g g'>8. <g g'>16 <g g'>8
 <g g'>8. <g g'>16 <g g'>8 <g g'>8. <g g'>16 <g g'>8 <g g'>8. <g g'>16 <g g'>8 <g g'>8. <g g'>16 <g g'>8
 <g g'>8. <g g'>16 <g g'>8 <g g'>8. <g g'>16 <g g'>8 <g g'>8. <g g'>16 <g g'>8 <g g'>8. <g g'>16 <g g'>8
 <g g'>8. <g g'>16 <g g'>8  << { d''8. d''16 d''8 } \\ { d''8. d''16 d''8 } >>
 <g g'>8. <g g'>16 <g g'>8 <g g'>8. <g g'>16 <g g'>8
 <g g'>4 r8 r4 r8 <g g'>8. <g g'>16 <g g'>8 <g g'>8. <g g'>16 <g g'>8
 <g g'>4 r8 r4 r8 <g g'>8. <g g'>16 <g g'>8 <g g'>4 r8
 r8 r8. <g g'>16\p <g g'>4_\markup { \italic "cresc." } r8 r8 r8. <g g'>16 <g g'>4 r8
 r8 r8. <g g'>16 <g g'>4 r8 r8 r8. <g g'>16 <g g'>4 r8 r8 r8. <g g'>16 <g g'>4 r16 <g g'>16
 <g g'>4 r16 <g g'> <g g'>4 r16 <g g'> <g g'>4 r16 <g g'> <g g'>4 r16 <g g'> <g g'>4 r16 <g g'> <g g'>4 r16 <g g'>
 << { d''2. } \\ {  d''2.\ff } >> <g g'>4 r8 <g g'>4 r8 R2. R2. R2. R2. R2. R2. R2. R2.
 R2. R2. R2. <e' e''>4\f <e' e''>8 <e' e''>4 <e' e''>8 << { d''4. ~ d''4 g'8 } \\ { d''4. ~ d''4 g'8 } >>
 <e' g'>8 <e' g'> r <e' g'> <e' g'> r R2. <e' g'>8 <e' g'> r <e' g'> <e' g'> r R2. R2. R2. R2. R2. R2. R2.
 << { d''4 } \\ { d''4\f } >> r8 << { d''4 } \\ { d''4 } >> r8 << { d''4 } \\ { d''4 } >> r8 << { d''4 } \\ { d''4 } >> r8
 << { d''4 } \\ { d''4 } >> r8 r4 r8 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2.
 << { d''4 } \\ { d''4\ff } >> r8 r4 r8 r4 r8 << { d''8. d''16 d''8 } \\ { d''8. d''16 d''8 } >> <g g'>4 r8 r4 r8
 r4 r8 << { d''8. d''16 d''8 } \\ { d''8. d''16 d''8 } >> R2. R2. << { d''4 } \\ { d''4\ff } >> r8 r4 r8
 r4 r8 << { d''8. d''16 d''8 } \\ { d''8. d''16 d''8 } >> <g g'>4 r8 r4 r8 r4 r8 <g g'>8. <g g'>16 <g g'>8
 R2. R2. << { d''4 } \\ { d''4\ff } >> r8 r4 r8 R2. R2. R2. << { d''4 } \\ { d''4 } >> r8 r4 r8 R2.
 << { d''4 } \\ { d''4 } >> r8 r4 r8 << { d''8 } \\ { d''8\ff } >> r8 << { d''8 } \\ { d''8 } >> r r << { d''8 } \\ { d''8 } >>
 r8 r << { d''8 } \\ { d''8 } >> r8 r << { d''8 } \\ { d''8 } >> r8 r << { d''8 } \\ { d''8 } >> r8 r << { d''8 } \\ { d''8 } >>
 r8 r << { d''8 } \\ { d''8 } >> r8 r << { d''8 } \\ { d''8 } >> R2. R2.
 }

 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2.
 << { d''4 } \\ { d''4\f } >> r8 r4 r8 << { d''4 } \\ { d''4 } >> r8 r4 r8
 << { d''4 } \\ { d''4 } >> r8 << { d''4 } \\ { d''4 } >> r8 << { d''4 } \\ { d''4 } >> r8 << { d''4 } \\ { d''4 } >> r8
 R2. R2. <c' c''>2.\ff ~ <c' c''>2. ~ <c' c''>2. ~ <c' c''>2. << { d''4 } \\ { d''4 } >> r8 r4 r8 R2.
 << { d''2. ~ d''2. ~ d''2. ~ d''2. ~ d''4 } \\ { d''2. ~ d''2. ~ d''2. ~ d''2. ~ d''4 } >> r8 r4 r8
 R2. R2. R2. R2. R2. R2. R2. R2. R2.
 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2.
 <g' g''>8\ff[ r16 <g' g''> <g' g''>8] <g' g''>8[ r16 <g' g''> <g' g''>8]
 <g' g''>8[ r16 <g' g''> <g' g''>8] <g' g''>8[ r16 <g' g''> <g' g''>8] <g' g''>2. ~ <g' g''>2.
 <g' g''>8[ r16 <g' g''> <g' g''>8] <g' g''>8[ r16 <g' g''> <g' g''>8]
 <g' g''>8[ r16 <g' g''> <g' g''>8] <g' g''>8[ r16 <g' g''> <g' g''>8] <g' g''>2. ~ <g' g''>2.
 << { d''8[ s16 d'' d''8] d''8[ s16 d'' d''8] d''8[ s16 d'' d''8] d''8[ s16 d'' d''8] } \\
 { d''8[ d''16\rest d''16 d''8] d''8[ d''16\rest d''16 d''8] d''8[ d''16\rest d''16 d''8] d''8[ d''16\rest d''16 d''8] } >>
 << { d''4 } \\ { d''4 } >> r8 r4 r8 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2.
 <g g'>8.\f <g g'>16 <g g'>8 <g g'>8._\markup { \italic "piu f" } <g g'>16 <g g'>8
 <g g'>4\ff r8 r4 r8 r4 r8 r8 r8. <g g'>16 <g g'>4 r8 r4 r8 r4 r8 r8 r8. <g g'>16 <g g'>4 r8 r4 r8 r4 r8 r8 r8. <g g'>16 
 <g g'>4 r16 <g g'> << { d''4 } \\ { d''4 } >> r16 << { d''16 g'4 } \\ { d''16 g'4 } >> r16 <e' c''> <e' c''>4 r16 <e' c''>
 <e' c''>4 r8 r4 r8 R2. r4 r8 r8 r8. << { g'16 } \\ { g'16 } >> <e' c''>4 r8 r4 r8
 R2. r4 r8 r8 r8. d''16 d''4 r8 r8 r8. d''16 d''4 r8 r8 r8. d''16 d''4 r8 r8 r8. d''16 d''4 r8 r8 r8. d''16
 d''4 r8 r8 r8. d''16 d''4 r16 d'' d''4 r16 d'' d''4 r16 d'' d''4 r16 d'' d''4.^\fermata r4 r8
 r4^\fermata r8 r4 r8 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2.
 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. <e' e''>2.\ff <d'' f''>4. ~ <d'' f''>8 d''8 d''
 <g' g''>8 r <g' g''> <g' g''> r <g' g''> << { d''8 } \\ { d''8\p } >> r8 r8 r4 r8 R2. R2. R2.
 R2. <g g'>4\f r8 r4 r8 << { d''4 d''8 d''4 d''8 d''2. d''4 d''8 d''4 d''8 } \\ { d''4 d''8 d''4 d''8 d''2. d''4 d''8 d''4 d''8 } >>
 <e' e''>4 <e' e''>8 <e' e''>4 <e' e''>8 << { d''8[ d''] } \\ { d''8[ d''] } >> r8 << { d''8[ d''] } \\ { d''8[ d''] } >> r8
 << { d''8[ d''] } \\ { d''8[ d''] } >> r8 << { d''8[ d''] } \\ { d''8[ d''] } >> r8 << { d''8[ d''] } \\ { d''8[ d''] } >> r8
 << { d''8[ d''] } \\ { d''8[ d''] } >> r8 << { d''8[ d''] } \\ { d''8[ d''] } >> r8 << { d''8[ d''] } \\ { d''8[ d''] } >> r8
 R2. R2. R2. R2. R2. R2. << { g'4. } \\ { g'4.\ff } >> <g' g''>4 r8
 <g' g''>4 r8 <g' g''>4 << { d''8 } \\ { d''8 } >> <g' g''>4 r8 r4 r8 R2. R2. R2. R2. R2. R2. R2.
 R2. R2. R2. R2. R2. R2. R2. R2. << { g'4 } \\ { g'4\ff } >> r8 r4 r8
 r4 r8 << { g'8. g'16 g'8 } \\ { g'8. g'16 g'8 } >> <e' e''>2. ~ <e' e''>4. <e' e''>8. <e' e''>16 <e' e''>8 R2. R2.
 << { g'4 } \\ { g'4\ff } >> r8 r4 r8
 r4 r8 << { g'8. g'16 g'8 } \\ { g'8. g'16 g'8 } >> <e' e''>2. ~ <e' e''>4. <e' e''>8. <e' e''>16 <e' e''>8 R2. R2.
 <g g'>4\ff r8 <g g'>4 r8 << { d''4 } \\ { d''4 } >> r8 r4 r8
 << { d''4 } \\ { d''4 } >> r8 << { d''4 } \\ { d''4 } >> r8 << { d''4 } \\ { d''4 } >> r8 r4 r8
 <g g'>4 r8 << { d''4 } \\ { d''4 } >> r8 << { d''4 } \\ { d''4 } >> r8 r4 r8 <g g'>4 r8 << { d''4 } \\ { d''4 } >> r8
 <g g'>8\ff r8 <g' g''> r r <g' g''> r r <g' g''> r r <g' g''> r r <g' g''> r r <g' g''> r r <g' g''> r r <g' g''> R2. R2.
 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2.
 << { d''4\rest d''8\rest d''4\p d''8\rest } \\ { R2. } >> R2. << { d''4\rest d''8\rest d''4 d''8\rest } \\ { R2. } >> R2.
 << { d''4\rest_\markup { \italic "poco cresc." } d''8\rest d''4 d''8\rest } \\ { R2. } >> R2.
 << { d''4\rest d''8\rest d''4 d''8\rest } \\ { R2. } >> R2. << { d''4\rest d''8\rest d''4 d''8\rest } \\ { R2. } >>
 R2. << { d''4\rest d''8\rest d''4 d''8\rest } \\ { R2. } >>
 R2. << { d''8\rest_\markup { \italic "piu cresc." } d''8[ d''] d''[ d'' d''] d''[ d'' d''] d''[ d'' d''] } \\ { R2. R2. } >>
 << { g'8. g'16 g'8 g'8. g'16 g'8 g'8. g'16 g'8 g'8. g'16 g'8 } \\
 { g'8.\ff g'16 g'8 g'8. g'16 g'8 g'8. g'16 g'8 g'8. g'16 g'8 } >>
 <c' c''>8. <c' c''>16 <c' c''>8 <c' c''>8. <c' c''>16 <c' c''>8 <c' c''>8. <c' c''>16 <c' c''>8 <c' c''>8. <c' c''>16 <c' c''>8
 << { d''4 } \\ { d''4 } >> r8 r4 r8 << { d''4 } \\ { d''4 } >> r8 r4 r8 << { d''4 } \\ { d''4 } >> r8 r4 r8
 <g' g''>4 r8 <g' g''>4 r8 <g' g''>4 r8 <g' g''>4 r8 <g' g''>4 r8 r4 r8 <g' g''>4 r8 r4 r8
 << { d''4 } \\ { d''4 } >> r8 r4 r8 << { d''4 } \\ { d''4 } >> r8 r4 r8 <g' g''>4 r8 r4 r8 << { d''4 } \\ { d''4 } >> r8 r4 r8
 <g' g''>4 r8 <c' c''>4 r8 << { d''4 } \\ { d''4 } >> r8 <g' g''>4 r8 <g' g''>8[ r16 <g' g''> <g' g''>8]
 << { g''8[ r16 d'' d''8] d''8[ r16 d'' d''8] } \\ { g'8[ s16 d'' d''8] d''8[ s16 d'' d''8] } >> d''8[ r16 <g g'> <g g'>8]
 <g g'>4\ff r8 r4 r8 << { d''8[ r16 d'' d''8] d''8[ r16 d'' d''8] } \\ { d''8[ s16 d'' d''8] d''8[ s16 d'' d''8] } >>
 <g g'>4 r8 r4 r8 << { d''8[ r16 d'' d''8] d''8[ r16 d'' d''8] } \\ { d''8[ s16 d'' d''8] d''8[ s16 d'' d''8] } >>
 <g' d''>8[ r16 <g' g''> <g' g''>8] <g' g''>8[ r16 <g' g''> <g' g''>8]
 <g' g''>8[ r16 <g' g''> <g' g''>8] <g' g''>8[ r16 <g' g''> <g' g''>8] <g' g''>4 r8 r4 r8
 << { d''4 } \\ { d''4 } >> r8 r4 r8 << { g'4 } \\ { g'4 } >> r8 r4 r8 \bar "|."
}