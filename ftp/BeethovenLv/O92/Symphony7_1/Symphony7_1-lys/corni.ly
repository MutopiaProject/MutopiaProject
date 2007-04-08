\version "2.10.0"

 corni = {
 \set Staff.instrumentName = "Corni in A"
 \set Staff.midiInstrument = "english horn"
 \clef treble
 \key c \major
 \time 4/4
 <c' c''>4\f\staccato r4 r2 R1 <g g'>4\f\staccato r4 r2 R1
 << { c''2( g' c' c'') c''1 bes'2 bes' c''4 } \\ { c''2\fp( g' c' c'') c''1\fp bes'2 bes' c''4 } >>
 \clef bass <c, c>2 <c, c>4 \clef treble <g g'>4\pp r r2 R1 R1 R1
 r2 <g g'>16\p\staccato <g g'>\staccato_\markup { \italic "cresc." } <g g'>\staccato <g g'>\staccato
 <g g'>\staccato <g g'>\staccato <g g'>\staccato <g g'>\staccato
 <c' c''>1\ff ~ <c' c''>4 r r2 <g g'>1 ~ <g g'>4 r r2 <c' c''>1 ~ <c' c''>4 r r2
 << { bes'1 ~ bes'4 } \\ { bes'1 ~ bes'4\p } >> r4 r2 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 <g g'>2\ff <g g'>\sf <g g'>\sf <g g'>\sf <g g'>\sf <g g'>\sf
 <g g'>2\sf <g g'>\sf <g g'>\sf <g g'>\sf <g g'>\sf <g g'>\sf <g g'>\sf <g g'>\sf
 <g g'>2_\markup { \italic "dimin." } <g g'> <g g'>4\p r r2 R1 R1 R1 R1 R1 R1 R1 R1 R1
 r2 r4 << { c'4:16 } \\ { c'4:16_\markup { \italic "cresc." } } >>
 << { g'8 } \\ { g'8\ff } >> r8 r4 r2 R1 << { g'8 } \\ { g'8\ff } >> r8 r4 r2 R1 R1 R1 R1 R1 R1 R1

 \time 6/8
 \repeat volta 2 {
 R2. R2. R2. r4 \clef bass r8 <c, c>8._\markup { \italic "cresc." } <c, c>16 <c, c>8
 <c, c>2.\p ~ <c, c>2. ~ <c, c>2. ~ <c, c>2. ~ <c, c>2. ~ <c, c>2. ~
 <c, c>8 \clef treble <g c'>8[ <g e'>] <g g'> <g g'> <g g'>
 \clef bass <c, c>2. ~ <c, c>2. ~ <c, c>2. ~ <c, c>2. ~ <c, c>2. ~ <c, c>2. ~
 <c, c>4. ~ <c, c>8 \clef treble <g g'>8[ <g g'>] <g g'>2. <g g'>2.\f\> <g g'>2.\!\p
 <g g'>4.\f ~ <g g'>4 r8 <g g'>4.\sf ~ <g g'>4 r8 <g g'>4\sf r8 <g g'>4\sf r8 <g g'>4\sf r8
 <g g'>8[ r16 <g g'> <g g'>8] <g g'>4.^\fermata r4 r8
 <e'' g''>4.\ff ~ <e'' g''>8. <d'' f''>16 <c'' e''>8 <c'' f''>4. ~ <c'' f''>4 <g' d''>8
 <e' c''>4 <e' c''>8 <e' c''>8. <g' d''>16\staccato <c'' e''>8\staccato
 <c'' e''>8( <g' d''>4) ~ <g' d''>8. <c'' e''>16\staccato <d'' f''>8\staccato <e'' g''>4. ~ <e'' g''>8. <d'' f''>16 <c'' e''>8
 <c'' f''>4. ~ <c'' f''>4 <g' d''>8 <e' c''>4 <e' c''>8 <e' c''>8( <c'' e''>) <g' d''>\staccato <e' c''>4 r8 r4 <c' c''>8
 <c' c''>4 <c' c''>8 <c' c''>8. <c' c''>16 <c' c''>8 <c' c''>8( <g' g''>) <e' e''>\staccato <c' c''>4 <c' c''>8
 <c' c''>8. <c' c''>16 <c' c''>8 <c' c''>8. <c' c''>16 <c' c''>8
 <c' c''>8( <g' g''>) <e' e''>\staccato <c' c''>\staccato[ <g g'>\staccato] \clef bass <c, c>8\p
 <c, c>2._\markup { \italic "cresc." } ~ <c, c>2. ~
 <c, c>2. ~ <c, c>2. ~ <c, c>2. ~ <c, c>2. ~ <c, c>2. ~ <c, c>2. \clef treble <g g'>2.\ff
 << { d''4. ~ d''8 } \\ { d''4. ~ d''8 } >> r8 r R2. R2. R2. R2. R2. R2. R2. R2. R2.
 <c' c''>4\f <c' c''>8 <c' c''>4 <c' c''>8 <g g'>2. R2. <g g'>4 <g g'>8 <c' c''>4 <c' c''>8
 << { d''8[ d''] } \\ { d''8[ d''] } >> r8 << { d''8[ d''] } \\ { d''8[ d''] } >> r8
 << { d''8[ d''] } \\ { d''8[ d''] } >> r8 << { d''8[ d''] } \\ { d''8[ d''] } >> r8
 << { d''8[ d''] } \\ { d''8[ d''] } >> r8 << { d''8[ d''] } \\ { d''8[ d''] } >> r8
 << { d''8[ d''] } \\ { d''8[ d''] } >> r8 << { d''8[ d''] } \\ { d''8[ d''] } >> r8
 R2. R2. <g g'>2. ~ <g g'>2. ~ <g g'>8 << { d''8 d'' } \\ { d''8 d'' } >>
 << { d''8 d'' d'' d'' d'' d'' d'' d'' d'' } \\ { d''8 d'' d'' d'' d'' d'' d'' d'' d'' } >>
 <g g'>8\f <g g'> <g g'> <g g'> <g g'> <g g'> <g g'> <g g'> <g g'> << { d''8 d'' d'' } \\ { d''8 d'' d'' } >>
 <g g'>4 r8 r4 r8 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2.
 <g g'>2.\ff ~ <g g'>4. <g g'>8. <g g'>16 <g g'>8 <g g'>2. ~ <g g'>4. <g g'>8. <g g'>16 <g g'>8 R2. R2.
 <g g'>2.\ff ~ <g g'>4. <g g'>8. <g g'>16 <g g'>8 <g g'>2. ~ <g g'>4. <g g'>8. <g g'>16 <g g'>8
 R2. R2. <g g'>4\ff r8 <g g'>4 r8 << { d''4 } \\ { d''4 } >> r8 r4 r8 << { d''4 } \\ { d''4 } >> r8 r4 r8 << { d''4 } \\ { d''4 } >> r8 r4 r8
 <g g'>4 r8 << { d''4 } \\ { d''4 } >> r8  << { d''4 } \\ { d''4 } >> r8 r4 r8 <g g'>4 r8 << { d''4 } \\ { d''4 } >> r8
 <g g'>8\ff r8 <g g'> r r <g g'> r8 r <g g'> r r <g g'> r r <g g'> r r <g g'> r r <g g'> r r <g g'> R2. R2.
 }

 r8 r << { bes'8 } \\ { bes'8\ff } >> r8 r << { bes'8 } \\ { bes'8 } >> r8 r << { bes'8 } \\ { bes'8 } >> r8 r << { bes'8 } \\ { bes'8 } >>
 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2.
 << { bes'2. ~ bes'2. ~ bes'2. ~ bes'2. bes'8. bes'16 bes'8 bes'8. bes'16 bes'8 bes'8. bes'16 bes'8 bes'8. bes'16 bes'8
 bes'2. ~ bes'2. ~ bes'2. ~ bes'2. } \\
 { bes'2.\f ~ bes'2. ~ bes'2. ~ bes'2. bes'8.\ff bes'16 bes'8 bes'8. bes'16 bes'8 bes'8. bes'16 bes'8 bes'8. bes'16 bes'8
 bes'2. ~ bes'2. ~ bes'2. ~ bes'2. } >> <g g'>8. <g g'>16 <g g'>8 <g g'>8. <g g'>16 <g g'>8
 <g g'>8. <g g'>16 <g g'>8 <g g'>8. <g g'>16 <g g'>8 <g g'>2. ~ <g g'>2. ~ <g g'>2. ~ <g g'>2. ~ <g g'>4 r8 r4 r8
 R2. R2. R2. R2. R2. R2. R2. R2. R2.
 R2. R2. R2. R2. R2. R2. <c' c''>4\p r8 <c' c''>4 r8 R2. <c' c''>4 r8 <c' c''>4 r8
 <c' c''>8. <c' c''>16_\markup { \italic "cresc. poco a poco" } <c' c''>8 <c' c''>8. <c' c''>16 <c' c''>8
 <c' c''>8. <c' c''>16 <c' c''>8 <c' c''>8. <c' c''>16 <c' c''>8
 <c' c''>8. <c' c''>16 <c' c''>8 <c' c''>8. <c' c''>16 <c' c''>8
 <c' c''>8. <c' c''>16 <c' c''>8 <c' c''>8. <c' c''>16 <c' c''>8
 <c' c''>8. <c' c''>16 <c' c''>8 <c' c''>8. <c' c''>16 <c' c''>8
 <c' c''>8. <c' c''>16 <c' c''>8 <c' c''>8. <c' c''>16 <c' c''>8 << { bes'8 } \\ { bes'8 } >> r8 r8 r4 r8
 R2. R2. R2. R2. R2. R2. R2. r4 r8
 << { bes'8[ s16 bes'16 bes'8] bes'4 } \\ { bes'8\f[ b'16\rest bes'16 bes'8] bes'4 } >> r8
 << { bes'8[ s16 bes'16 bes'8] bes'4 } \\ { bes'8[ b'16\rest bes'16 bes'8] bes'4 } >> r8
 << { bes'8[ s16 bes'16 bes'8] bes'4 } \\ { bes'8[ b'16\rest bes'16 bes'8] bes'4 } >> r8
 <c' c''>8[ r16 <c' c''> <c' c''>8] <c' c''>8\ff[ r16 <c' c''> <c' c''>8] <c' c''>8[ r16 <c' c''> <c' c''>8]
 <c' c''>8[ r16 <c' c''> <c' c''>8] <c' c''>8[ r16 <c' c''> <c' c''>8] <c' c''>2. ~ <c' c''>2.
 <c' c''>8[ r16 <c' c''> <c' c''>8] <c' c''>8[ r16 <c' c''> <c' c''>8]
 <c' c''>8[ r16 <c' c''> <c' c''>8] <c' c''>8[ r16 <c' c''> <c' c''>8] <c' c''>2. ~ <c' c''>2.
 <g g'>8[ r16 <g g'> <g g'>8] <g g'>8[ r16 <g g'> <g g'>8] <g g'>8[ r16 <g g'> <g g'>8] <g g'>8[ r16 <g g'> <g g'>8]
 <g g'>4 r8 r4 r8 R2. R2. R2. R2. R2. R2. R2.
 r8. <g g'>16 <g g'>8 <g g'>8[ r16 <g g'> <g g'>8] <g g'>8[ r16 <g g'> <g g'>8] <g g'>8[ r16 <g g'> <g g'>8]
 <g g'>8._\markup { \italic "piu f" } <g g'>16 <g g'>8 <g g'>8. <g g'>16 <g g'>8
 <g g'>8. <g g'>16 <g g'>8 <g g'>8. <g g'>16 <g g'>8 <g g'>8. <g g'>16 <g g'>8 <g g'>8. <g g'>16 <g g'>8
 <g g'>8. <g g'>16 <g g'>8 <g g'>8. <g g'>16 <g g'>8
 <g g'>4\ff r8 r4 r8 r4 r8 r8 r8. <g g'>16 <g g'>4 r8 r4 r8 r4 r8 r8 r8. <g g'>16 <g g'>4 r8 r4 r8 r4 r8 r8 r8. <g g'>16
 <g g'>4 r16 <g g'> <g g'>4 r16 <g g'> <c' g'>4 r16 <c' c''> <c' c''>4 r16 <c' c''>
 <c' c''>4 r8 r4 r8 R2. r4 r8 r8 r8. <c' c''>16 <c' c''>4 r8 r4 r8
 R2. r4 r8 r8 r8. <g g'>16 <g g'>4 r8 r8 r8. <g g'>16 <g g'>4 r8 r8 r8. <g g'>16
 <g g'>4 r8 r8 r8. <g g'>16 <g g'>4 r8 r8 r8. <g g'>16
 <g g'>4 r8 r8 r8. <g g'>16 <g g'>4 r16 <g g'> <g g'>4 r16 <g g'> <g g'>4 r16 <g g'> <g g'>4 r16 <g g'>
 <g g'>4.^\fermata r8 r8. \clef bass <c, c>16\p <c, c>4.^\fermata r4 r8 \clef treble
 <c' c''>2.\p ~ <c' c''>2. ~ <c' c''>2. ~ <c' c''>2. ~ <c' c''>2. ~ <c' c''>2. ~ <c' c''>2. ~ <c' c''>4 r8 r4 r8 R2. R2. R2. R2.
 R2. R2. R2. R2. R2. R2. \clef bass <c, c>2._\markup { \italic "cresc." } ~ <c, c>2. ~ <c, c>2. ~ <c, c>2.
 \clef treble <c' c''>2.\ff <g' g''>4. ~ <g' g''>8 <g g'>8[ <g g'>] <c' c''>8 r <c' c''> <c' c''> r <c' c''>
 << { g'8 } \\ { g'8\p } >> r8 r8 r4 r8 R2. R2. R2.
 R2. <g g'>4\f <g g'>8 <g g'>4 <g g'>8 <g g'>2. <g g'>4 <g g'>8 <g g'>4 <g g'>8 <g g'>2.
 <c' c''>4 << { d''8 d''4 d''8 } \\ { d''8 d''4 d''8 } >>
 <g' d''>8 <g' d''> r <g' d''> <g' d''> r <c'' e''> <c'' e''> r <c'' e''> <c'' e''> r
 <g' d''>8 <g' d''> r <g' d''> <g' d''> r <c'' e''> <c'' e''> r <c'' e''> <c'' e''> r R2. R2.
 <c' c''>2._\markup { \italic "dolce" } ~ <c' c''>2. ~ <c' c''>8 <e' e''> <e' e''> <e' e''> <g' g''> <g' g''>
 <g' g''>8 <g g'> <g g'> <g g'> <g g'> <g g'> <c' c''>4\ff r8 <c' c''>4 r8
 <c' c''>4 r8 <c' c''>4 <g g'>8 <c' c''>4 r8 r4 r8 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2.
 R2. <c' c''>2.\ff ~ <c' c''>4. <c' c''>8. <c' c''>16 <c' c''>8 <c' c''>2. ~ <c' c''>4. <c' c''>8. <c' c''>16 <c' c''>8
 R2. <g g'>2._\markup { \italic "cresc." } <c' c''>2.\ff ~ <c' c''>4. <c' c''>8. <c' c''>16 <c' c''>8
 <c' c''>2. ~ <c' c''>4. <c' c''>8. <c' c''>16 <c' c''>8 R2. R2.
 <g g'>2.\ff <g g'>4. ~ <g g'>8. <g g'>16 <g g'>8 <g g'>4 r8 <g g'>4 r8 <g g'>4 r8 r8. <g g'>16 <g g'>8
 <g g'>4. ~ <g g'>8. <g g'>16 <g g'>8 <g g'>4. ~ <g g'>8. <g g'>16 <g g'>8 <g g'>4. ~ <g g'>8. <g g'>16 <g g'>8
 <c' c''>8\ff r <c' c''> r r <c' c''> r r <c' c''> r r <c' c''> r r <c' c''> r r <c' c''> r r <c' c''> r r <c' c''> R2. R2.
 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. <c'' e''>4.\pp ~ <c'' e''>8.( <g' d''>16 <e' c''>8) R2.
 \clef bass << { R2. R2. R2. R2. R2. R2. R2. R2. r4 r8 g'4^\p r8 R2. r4 r8 g'4 r8 R2.
 r4 r8 g'4 r8 R2. r4 r8 g'4 r8 R2. r4 r8 g'4 r8 R2. r4 r8 g'4 r8 R2. r8 g'8[ g'] g'[ g' g'] g' g' g' g' g' g' } \\
 { g,,2.\pp ~ g,,2. ~ g,,2. ~ g,,2. ~ g,,2. ~ g,,2. ~ g,,2. ~ g,,2. ~
 g,,2. ~ g,,2. ~ g,,2. ~ g,,2. ~ g,,2. ~ g,,2. ~ g,,2. ~ g,,2. ~ g,,2. ~ g,,2. ~ g,,2. ~ g,,2. ~ g,,2. ~ g,,2. } >>
 \clef treble <c' g'>8.\ff <c' g'>16 <c' g'>8 <c' g'>8. <c' g'>16 <c' g'>8
 <c' g'>8. <c' g'>16 <c' g'>8 <c' g'>8. <c' g'>16 <c' g'>8
 <c' c''>8. <c' c''>16 <c' c''>8 <c' c''>8. <c' c''>16 <c' c''>8 <c' c''>8. <c' c''>16 <c' c''>8 <c' c''>8. <c' c''>16 <c' c''>8
 <g g'>2. <g g'>2. <g g'>2. <g g'>4. <c' c''>4. <c' c''>4. <c' c''>4.
 <c' c''>8[ r16 <c'' d''> <c'' d''>8] <c'' d''>4 r8 r8. <c'' d''>16 <c'' d''>8 <c'' d''>4 r8
 r8. <g' d''>16 <g' d''>8 <g' d''>4 r8 r8. <g' d''>16 <g' d''>8 <g' d''>4 r8
 r8. << { c''16 c''8 c''4 } \\ { c''16 c''8 c''4 } >> r8 r8. << { g'16 g'8 d''4 } \\ { g'16 g'8 d''4 } >> r8
 << { c''8[ r16 c'' c''8] c''8[ r16 g' g'8] g'8[ r16 d'' d''8] d''8[ r16 c'' c''8] } \\
 { c''8[ s16 c'' c''8] c''8[ s16 g' g'8] g'8[ s16 d'' d''8] d''8[ s16 c'' c''8] } >>
 <c' c''>8[ r16 <c' c''> <c' c''>8] <c' c''>8[ r16 <c'' e''> <c'' e''>8] <c'' e''>8[ r16 <g' d''> <g' d''>8] <g' d''>8[ r16 <e'' g''> <e'' g''>8]
 <e'' g''>4.\ff ~ <e'' g''>8. <d'' f''>16\staccato <c'' e''>8\staccato <g' d''>8[ r16 <g' d''> <g' d''>8] <g' d''>8[ r16 <e'' g''> <e'' g''>8]
 <e'' g''>4.\ff ~ <e'' g''>8. <d'' f''>16\staccato <c'' e''>8\staccato <g' d''>8[ r16 <g' d''> <g' d''>8] <g' d''>8[ r16 <e'' g''> <e'' g''>8]
 <e'' g''>8[ r16 <c'' e''> <c'' e''>8] <c'' e''>8[ r16 <g' c''> <g' c''>8] <g' c''>8[ r16 <e' g'> <e' g'>8] <e' g'>8[ r16 <c' e'> <c' e'>8]
 <c' e'>4 r8 r4 r8 <g' g''>4 r8 r4 r8 <c'' e''>4 r8 r4 r8 \bar "|."
}