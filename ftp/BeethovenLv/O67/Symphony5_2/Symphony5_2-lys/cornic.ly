\version "2.16.2"

 cornic = {
 \set Staff.instrumentName = "Corni in C.     "
 \set Staff.midiInstrument = "english horn"
 \clef treble
 \key c \major
 \time 3/8
 \partial 8 r8 R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4.
 R4. R4. R4. R4. R4. R4. R4. <c' c''>4.\ff <c' c''>8\staccato[ <e' c''>\staccato <g' d''>\staccato]
 <e' c''>8 r8 << { e'16. g'32 } \\ { e'16. g'32 } >> <e' c''>8_\markup { \dynamic ff \italic "sempre" }[ <e' c''> <g' d''>]
 <c'' e''>4 <e' c''>16.[ <g' d''>32] <c'' e''>8[ <c'' e''> < d'' f''>] <e'' g''>4\sf <c'' e''>16.[ <d'' f''>32]
 <e'' g''>4\sf <c'' e''>16.[ <d'' f''>32] <e'' g''>4.\sf\>~ <e'' g''>4.~ <e'' g''>8\!\pp r8 r
 R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4.
 R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4.
 <c' c''>4.\ff <c' c''>8\staccato[ <e' c''>\staccato <g' d''>\staccato]
 <e' c''>8 r8 << { e'16.[ g'32] } \\ { e'16.[ g'32] } >> <e' c''>8[ <e' c''> <g' d''>]
 <c'' e''>4 <e' c''>16.[ <g' d''>32] <c'' e''>8[ <c'' e''> <d'' f''>]
 <e'' g''>4\sf <c'' e''>16.[ <d'' f''>32] <e'' g''>4\sf <c'' e''>16.[ <d'' f''>32]
 <e'' g''>4._\markup { \dynamic f \italic "dimin." }~ <e'' g''>4.~ <e'' g''>8\p r8 r R4. R4.
 R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4.
 R4. R4. R4. R4. r16 << { c''16 c''4:16 } \\ { c''16\f c''4:16 } >>
 << { c''4.:16 f''4.:16 f''4:16 } \\ { c''4.:16 f''4.:16 f''4:16 } >> <g' g''>16 <g' g''> <c'' g''>4.:16
 << { f''4.:16 g''16[ g'] } \\ { f''4.:16 g''16[ g'] } >> <c' c''>4:16 << { g'8 } \\ { g'8 } >> r8 r R4.
 r4^\fermata r8 R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4.
 R4. R4. R4. R4. R4. R4. R4. r8 r <g' g''>16\f <g' g''> <g' g''>4:16 <c' c''>16\ff <c' c''>
 <c' c''>8[ <e' c''> <g' d''>] <c'' e''>4.~ <c'' e''>4 <e' c''>16.[ <g' d''>32] <c'' e''>8[ <c'' e''> <d'' f''>]
 <e'' g''>4.~ <e'' g''>4 <c'' e''>16.[ <d'' f''>32] <e'' g''>4 <c'' e''>16.[ <d'' f''>32] <e'' g''>4
 <c'' e''>16.[ <d'' f''>32]  <e'' g''>4.\>~ <e'' g''>4.~ <e'' g''>8\!\p r8 r R4. R4.
 R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4.
 <c' c''>4.\ff << { f''4. } \\ { f''4. } >> <f'' g''>4. <c'' g''>4. << { f''4. g''8 c'''4 } \\ { f''4. g''8 c''4 } >>
 << { g''4. c'''4. g''4. c''4. } \\ { g''4. c''4. g''4. c''4. } >> R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4.
 R4. R4. R4. R4. R4. R4. r8 r << { g''8( c'') } \\ { g''8\f( c'') } >> r8 r R4.
 << { c''8 } \\ { c''8 } >> r8 r r8 r r R4. R4. R4. R4. R4. R4. R4. R4. R4.
 R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. r8 r
 << { \override TupletNumber #'transparent = ##t \override TupletBracket #'transparent = ##t
 \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { c''16[ c'' c''] c''[ c'' c''] c''[ c'' c''] c''[ c'' c''] } c''8 } \\
 { \override TupletNumber #'transparent = ##t \override TupletBracket #'transparent = ##t
 \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { c''16\f[ c'' c''] c''[ c'' c''] c''[ c'' c''] c''[ c'' c''] } c''8 } >> r8 r8 R4.
 << { c''8 } \\ { c''8 } >> r8 r R4. R4. << { c''8 } \\ { c''8 } >> r8 \bar "|."
}
