\version "2.16.2"

 flauti = {
 \set Staff.instrumentName = "Flauti.        "
 \set Staff.midiInstrument = "flute"
 \clef treble
 \key aes \major
 \time 3/8
 \override Score.MetronomeMark #'transparent = ##t
 \tempo 8 = 62
 \once \override TextScript #'padding = #2.5
 \partial 8 r8
 R4. R4. R4. R4. R4. R4. R4. R4. R4.
 << { f''8\rest f''8\rest aes''16.\p( c'''32) ees'''4.\f\> des'''8\!\p( c'''4) bes''8( aes''4)
 g''4 \times 2/3 { g''16([ aes'' bes'']) } aes''8 f''8\rest f''8\rest } \\ { R4. R4. R4. R4. R4. R4. } >> R4. R4. R4.
 << { f''8\rest f''\rest \times 2/3 { g''16([ aes'' bes'']) } aes''8 f''8\rest bes''( aes''16) } \\
 { R4. g'8\rest g'8\rest g''8\f( aes''16) } >> r16 << { aes''16\p } \\ { aes'16 } >> r16 << { aes''16 } \\ { aes'16 } >> r16
 << { aes''8 } \\ { aes'8 } >> r8 r R4. R4. R4. R4. R4. << { f''8\rest f''8\rest ees'''16.\pp( f'''32) } \\ { R4. } >>
 <ees''' fis'''>4.\ff <e''' g'''>16. <c''' e'''>32 <g'' c'''>8\staccato[ <b'' d'''>\staccato] <e'' c'''>8 r8 r8
 R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4.
 R4. R4. R4. R4. R4. R4. R4. << { g''16\rest g''_\markup { \italic "cresc." }
 \acciaccatura bes''32 aes''16 g''16 aes'' c''' d'''16\f( ees''' f''' ees''' d''' ees''')
 des'''!8\p( c'''4) bes''8( aes''4) g''4 \times 2/3 { g''16([ aes'' bes'']) } aes''8 f''8\rest f''8\rest } \\
 { R4. R4. R4. R4. R4. R4. } >> R4. R4. R4.
 << { f''8\rest f''8\rest \times 2/3 { g''16([ aes'' bes'']) } aes''8 g''8\rest bes''8( aes''16) } \\
 { R4. g'8\rest g'8\rest g''8\f( aes''16) } >> r16 << { aes''16 } \\ { aes''16\p } >> r16
 << { aes''16 } \\ { aes''16 } >> r16 << { aes''8 } \\ { aes''8 } >> r8 r8
 R4. R4. R4. R4. R4. << { f''8\rest f''8\rest ees'''16.\pp( f'''32) } \\ { R4. } >>
 <ees''' fis'''>4.\ff <e''' g'''>16.[ <c''' e'''>32] <g'' c'''>8\staccato <b'' d'''>\staccato
 <e'' c'''>8 r8 r R4. R4. R4. R4. R4. R4. R4. R4. R4. R4.
 R4. R4. R4. R4. R4. R4. << { f''8\rest f''\rest f''16\rest ees''\ff\staccato ees'''4.\f\>~ ees'''4.\!\p~
 ees'''4.~ ees'''4.( e'''4.) f'''4.~ f'''8 ees'''!4~ ees'''4.\pp c'''8 g''8\rest g''8\rest } \\
 { R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. } >> R4. R4. R4. R4. R4. R4. R4. r16 <aes'' c'''>16\f <aes'' c'''>4:16
 <aes'' c'''>4.:16 <a'' c'''>16 <a'' c'''> <bes'' des'''>4:16 <bes'' des'''>4:16 <b'' d'''>16 <b'' d'''>
 <c''' e'''>4.:16 << { f'''4.:16 } \\ { c'''16 ees'''! des'''4:16 } >> <des''' f'''>16 <des''' ees'''!> <c''' ees'''>4:16
 <bes'' ees'''>4. <ees' ees''>8~ <ees' ees''>16( <f' f''>32 <g' g''> <aes' aes''>[ <bes' bes''> <c'' c'''> <d'' d'''>])
 <ees'' ees'''>4^\fermata r8 R4. R4. R4. R4. R4.
 R4. R4. << { f''8\rest f''8\rest aes'16_\markup { \italic "dolce" }( d'' f''8\staccato)[ f''16( ees'' d'' f'']
 aes''8)[ aes''16( g'' f'' aes''] c'''8)[ c'''16( bes'' aes'' g''] f''8)[ f''16( g'' aes'' bes''])
 c'''16([ bes'' aes'' g'' f'' g''] aes''[ bes'' c''') c'''( bes'' aes''] g''4.)~ g''16([ aes'' bes'' c''' des''' ees''']
 f'''8)[ f'''16( ees''' des''' c'''] bes''[ c''' des''' ees''' f''' ees'''] des'''[ c''' bes'')
 f'''\staccato ees'''\staccato des'''\staccato] c'''16\staccato[ ees'''\staccato des'''\staccato c'''\staccato
 bes''\staccato] f''16\rest f''8\rest f''16\rest c'''16\staccato[ bes''\staccato aes''\staccato]
 g''4.:16_\markup { \italic "cresc." } g''4:16 f''8\rest } \\
 { R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. } >>
 r8 r << { e''16. g''32 } \\ { e''16.\ff g''32 } >> <e'' c'''>8[ <e'' c'''> <b'' d'''>] <c''' e'''>4.~
 <c''' e'''>4 <e'' c'''>16.[ <b'' d'''>32] <c''' e'''>8[ <c''' e'''> <d''' f'''>]
 <e''' g'''>4.~ <e''' g'''>4 <c''' e'''>16.[ <d''' f'''>32] <e''' g'''>4 <c''' e'''>16.[ <d''' f'''>32] <e''' g'''>4
 <c''' e'''>16.[ <d''' f'''>32]  <e''' g'''>4.\>~ <e''' g'''>4.~ <e''' g'''>8\!\p r8 r R4. R4.
 R4. R4. R4. R4. R4.
 << { f''8\rest f''8\rest ees''16\p\staccato[ e''32\rest aes''\staccato]
 ces'''8 ces'''16\staccato[ b''32\rest bes''\staccato aes''16\staccato a''32\rest ces'''\staccato]
 g''4 aes''16\staccato[ a''32\rest bes''\staccato]
 ces'''8 ces'''16\staccato[ b''32\rest bes''\staccato aes''16\staccato a''32\rest ces'''\staccato]
 des'''!4 ces'''16\staccato[ b''32\rest des'''32\staccato]
 ees'''8[ ees'''16\staccato d'''32\rest des'''!\staccato ces'''16\staccato c'''32\rest ees'''\staccato]
 des'''!4 ees'''16\staccato[ d'''32\rest des'''\staccato]
 ces'''8[ ces'''16\staccato b''32\rest bes''\staccato aes''16\staccato b''32\rest ces'''\staccato]
 bes''8._\markup { \italic "cresc." }([ ces'''16 aes'' ces''']) bes''8.([ ces'''16 aes'' ces'''])
 bes''16 ees''8[ d''!16_\markup {\dynamic p \italic "dolce" }( ees'' e''] f''16[ fis'' g'' aes'' a'' bes'']
 c'''16[ des''' ees''' f''') a''( bes''] c'''[ des''']) f''8\rest f''8\rest } \\
 { R4. R4. R4. R4. R4. R4. R4. R4. r8 r8 r16 aes''16 g''8.([ aes''16 ees'' aes''])
 g''16\f g'16\rest f'8\rest f'8\rest R4. R4. R4. } >> R4. R4. R4. R4.
 << { f''8\rest bes'32_\markup { \italic "cresc." }([ c'' des'' ees''] f''[ g'' aes'' bes'']) } \\ { R4. } >>
 c'''4.\ff~ c'''16.([ bes''32 aes''16. c'''32]) f''8~ f''8 des'''16.([ c'''32 bes''16. des'''32])
 g''16.([ bes''32 e''16. g''32]) c'''8~ c'''8 des'''16.([ bes''32]) f'''8 bes''8 c'''16.([ aes''32]) ees'''8
 << { ees'''8 } \\ { bes''8 } >> r8 r << { c'''8 } \\ { aes''8 } >> r8 r
 << { bes''16 a''16\rest a''16\rest bes'32[ c''] des''[ ees'' f'' g''] aes''8 g''8\rest aes''16.( c'''32) ees'''4.
 des'''8_\markup { \dynamic f \italic dolce }( c'''4) bes''8( aes''4) } \\
 { g''8 e'8\rest e'8\rest g'8\rest g'8\rest aes'16.( c''32) ees''8\sf g'8\rest g'8\rest R4. R4. } >>
 << { g''4 \times 2/3 { g''16([ aes'' bes'']) } aes''8 f''8\rest f''8\rest } \\ { R4. R4. } >> R4. R4. R4.
 << { f''8\rest f''8\rest \times 2/3 { g''16\p([ aes'' bes'']) } aes''8 f''8\rest f''8\rest } \\ { R4. R4. } >>
 R4. %^\markup { \large "piu moto." }
 R4. R4.
 R4. R4. R4. R4. R4. R4. r8 r << { ees''8( c'') } \\ { bes'8\f( c'') } >> r8 r r8 r
 << { bes''8( c'''8) f''8\rest \override TupletBracket #'transparent = ##t
 \times 2/3 { f''16\rest f''16\rest c''16 } \times 2/3 { ees''16\ff([ aes'' c''']) }
 ees'''4\f ~ 
ees'''4. des'''8_\markup { \dynamic p \italic dolce }( c'''4)
 bes''8( aes''4) g''4 \times 2/3 { g''16([ aes'' bes'']) } aes''8 f''8\rest f''8\rest } \\
 { g''8\f( aes''8) e'8\rest e'8\rest R4. R4. R4. R4. R4. R4. } >> R4.
 << { f''8\rest f''8\rest f''16\rest ees'''16\f ees'''16([ des'''] c'''8.\sf) f''16\rest } \\ { R4. R4. } >> R4.
 R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. R4. r8 r
 << { \override TupletNumber #'transparent = ##t \override TupletBracket #'transparent = ##t
 \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { aes''16[ aes'' aes''] aes''[ aes'' aes''] aes''[ aes'' aes''] aes''[ c''' ees'''] } aes'''8 } \\
 { \override TupletNumber #'transparent = ##t \override TupletBracket #'transparent = ##t
 \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { aes''16\f[ aes'' aes''] aes''[ aes'' aes''] aes''[ aes'' aes''] aes''[ c'' ees''] } aes''8\ff } >> r8
 << { aes''16. c'''32 ees'''4. c'''8 } \\ { g'8\rest ees''4.\sf c''8 } >> r8
 << { ees'''8\staccato c'''\staccato } \\ { g''8\p aes'' } >> r8
 << { aes''16. c'''32 ees'''4. aes''8 } \\ { aes''16.\f c'''32 ees''4.\ff aes'8 } >> r8 \bar "|."

}
