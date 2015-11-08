\version "2.18.2"

\include "defs.ily"

 oboi =  {
 \set Staff.instrumentName = "Oboi"
 \set Staff.midiInstrument = "oboe"
 \clef treble
 \key f \minor
 \time 3/2
 \moreAccidentalPadding
 <f' f''>1.\fermata_\forteSforzato-\hideF
 R1. R1. R1.
 r2 r4^\p \stemUp \slurUp c''4( b' aes'' g'') f''2 ~ f''2 f''4
 f''2( ees''4) r4 r2 R1. <f' f''>1.\ff
 \stemDown <f'' aes''>2\staccato <f'' aes''>2\staccato r4 r8 <f'' aes''>8\staccato
 <g'' bes''>2\staccato <aes'' c'''>2\staccato r2
 << { r2 r2 r4 \stemUp des''!^\p ~ des'' r4 r4
 ges''( f'' bes') r4
 f''4( ees''2. c''4)
 des''4 r4 r2 r2 } \\ { R1. R1. R1. R1. } >>
 R1. R1. R1. R1.
 << { g''4\rest bes''4\pp( c'''8 bes'' aes'' g'') g''4 g''4\rest
 g''4\rest g''4( aes''8 g'' f'' e''8) e''4 f''4\rest
 f''4\rest e''4_\markup { \italic "espressivo" }( f''8 e'' des'' c'') c''4 d''4\rest }
 \\ { R1. R1. R1. } >>
 R1. R1. \bar "||"

 \time 3/4 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2.
 r4 r4 \hairpinPastBarline f''4\<( ees''2\!\> des''4\! c'') r4 r4 R2. c''4\p r4 r4
 r4 <g' e''> r4 r4 <aes' f''> r4 r4 <e'' g''> r4 r4 <f'' aes''> r4
 r4 <g'' bes''>\cresc r r <g'' bes''> r r <g'' bes''> r r <g'' bes''> r
 r4 <g'' bes''> r r <g'' bes''> r r <g'' bes''> r r <g'' bes''> r
 r4 <g'' bes''> r r <g'' bes''> r r <g'' bes''> r r <g'' bes''>
 \doubleSlursOn <c'' c'''>\ff( <f'' aes''>2.) ~ \doubleSlursOff <f'' aes''>2. ~
 <f'' aes''>4 <f'' aes''> <f'' aes''> <e'' g''> r
 <g'' bes''>4\ff ~ <g'' bes''>2. ~ <g'' bes''>2. ~ <g'' bes''>4 <g'' bes''> <g'' bes''>
 <f'' aes''>4 r r <g'' bes''> r r <aes'' c'''> r r <bes'' des'''> <bes'' des'''> <bes'' c'''>
 <aes'' c'''>4 r r <g'' bes''> r r <aes'' c'''> r <c'' aes''>
 <des'' bes''> <des'' bes''> <d'' bes''>
 <ees'' g''>2.\sf <ees'' aes''>2.\sf <f'' aes''>2.\sf <ees'' g''>4 <ees'' g''>4 <ees'' g''>4
 <ees'' g''>2.\sf <ees'' aes''>2.\sf <f'' aes''>2.\sf <ees'' g''>4 r r R2. R2. R2.
 <aes'' c'''>4_\pDolce-\hideP( <ees'' aes''>4 <c'' ees''>4) R2. R2. R2.
 <aes'' c'''>4_\pDolce( <ees'' aes''>4 <c'' ees''>4) R2. R2.
 <cis'' e''>2._\pCresc( <d'' fis''>4 <e'' gis''> <fis'' a''>)
 <cis'' e''>2.( <d'' fis''>4 <e'' gis''> <fis'' a''>) <cis'' e''>2.
 <d'' f''!>2. ~ <d'' f''>2.\f <ees''! bes''!>2.\ff <ees'' aes''!>4 r r r r <aes' aes''>\sf
 <bes' bes''>4 <bes' bes''> <bes' bes''>\sf ~ <bes' bes''> <des'' bes''> <des'' bes''>
 <c'' aes''>4\f r r R2. <c'' ees''>4 r r R2. <ees'' aes''>4 r r r <aes'' c'''> <aes'' c'''>
 <bes'' des'''>2.\sf <bes'' des'''>2.\sf <aes'' c'''>2.\sf
 <bes'' des'''>2.\sf <aes'' c'''>2.\sf <bes'' des'''>2.\sf
 <aes'' c'''>4\staccato r r R2. R2. R2. R2.
 << { f''4\rest f''\rest g''_\dolce( bes'' g'') f''4\rest }
 \\ { R2. R2. } >> r4 r <ees'' g''>\f\staccato <ees'' aes''>\staccato r r R2. R2. R2. R2.
 << { f''4\rest f''\rest a''_\markup { \italic \large "dolce" }( c''' a'') f''4\rest }
 \\ { R2. R2. } >> r4 r <f'' a''>4\f\staccato <f'' bes''>\staccato r r R2. R2. R2. R2.
 << { f''4\rest f''\rest a''_\dolce( c''' a'') f''4\rest }
 \\ { R2. R2. } >> r4 r <f'' a''>4\f\staccato <f'' bes''>\staccato r r R2. R2.
 << { f''4\rest f''\rest f''_\dolce( g'' f'') f''4\rest }
 \\ { R2. R2. } >>
 r4 r << { \tieNeutral \stemDown \once \hide DynamicText <ees'' g''>4\p ~ <ees'' g''>2. ~ <ees'' g''>2. ~ <ees'' g''>2
 <ees'' c'''>4( <d'' b''>) } \\ { s8..\p s32\< s2. s2 s4\! s4\> s2 s16 s8.\! } >> r4
 <b' g''>4\< ~ <b' g''>2. ~ <b' g''>2. ~ <b' g''>2 <f'' d'''>4\!
 << { g''2.\staccato\pp g''2.\staccato g''2. ~ g''2. e''2.\pp\staccato e''2.\staccato
 e''2. ~ e''2. ~ e''2. ~ e''2 f''4 }
 \\ { R2. R2. R2. R2. R2. R2. R2.-\hidePPP\cresc
      R2. R2. f'4\rest f'\rest f''\sfp } >>
 <f'' aes''>4 <f'' aes''>4 r r <f'' aes''>4 r r <f'' aes''>4 r r <g'' bes''>4 r
 r4 <e'' g''>4 r r <e'' g''>4 r r <e'' g''>4 r r <f'' aes''>4 r R2.
 r4 r \hairpinPastBarline f''4\<( ees''2\!\> des''4\! c'') r r R2. c''4\p r r
 r4 <g' e''>4\p r r <aes' f''>4 r r <e'' g''>4 r r <f'' aes''> r
 r4 <g'' bes''>\cresc r r <g'' bes''> r r <g'' bes''> r r <g'' bes''> r
 r4 <g'' bes''> r r <g'' bes''> r r <g'' bes''> r r <g'' bes''> r
 r4 <g'' bes''> r r <g'' bes''> r r <g'' bes''> r r <g'' bes''>
 \doubleSlursOn <c'' c'''>\ff( <f'' aes''>2.) ~ \doubleSlursOff <f'' aes''>2. ~ <f'' aes''>4 <f'' aes''> <f'' aes''>
 <e'' g''>4 r <g'' bes''>4\ff ~ <g'' bes''>2. ~ <g'' bes''>2. ~ <g'' bes''>4
 <g'' bes''>4\staccato <g'' bes''>4\staccato <f'' aes''>4 r r R2.
 r4 r \doubleSlursOn <f'' aes''>4\f( <f'' bes''>2.) \doubleSlursOff <f'' aes''>4 r r R2. r4 r <f'' aes''>4\ff
 <des'' f''>4 r r <ees'' ges''> r r <f'' aes''> r r <ges'' bes''> <ges'' bes''> <ges'' c'''>
 <f'' aes''>4 r r <ees'' ges''> r r <f'' aes''> r r <g''! bes''> <g'' bes''> <aes'' c'''>
 <des'' bes''>2. ~ <des'' bes''>2. << { aes''2. } \\ { c''2\sf ees''4 } >>
 <f'' aes''>2.\sf <g'' bes''>2.\sf <ees'' aes''>2.\sf <ges'' aes''>2.\sf
 <f'' aes''>2.\sf <g''! bes''>2.\sf <ees'' aes''>4 r r
 R2. R2. R2. << { 
 aes''4_\pDolce-\hideP( f'' des'') } \\ { R2. } >>
 R2. R2. R2. << { 
 aes''4_\pDolce( f'' des'') } \\ { R2. } >>
 R2. R2. <fis'' a''>2._\pCresc( <g'' b''>4 <a'' cis'''> <b'' d'''>)
 <fis'' a''>2.( <g'' b''>4 <a'' cis'''> <b'' d'''>) <fis'' a''>2. <f''! aes''!>2.
 <ees''! ges''>2.\f <ees'' ges''>2.\ff <des''! f''>4 <des'' f''>4 \doubleSlursOn <des'' f''>4\sf( <des'' bes''>4) \doubleSlursOff
 <des'' ges''>4 <des'' ges''>4\sf( <ees'' ges''>4) <ees'' ges''>4 <ees'' ges''>\sf ~ <ees'' ges''>
 <ees'' ges''>4 <ees'' ges''> <des'' f''>\f r r R2. <des'' f''>4 r r R2.
 <f'' aes''>4 r r r <f'' aes''> <f'' aes''>
 <ees'' ges''>2.\sf <ees'' ges''>2.\sf <des'' f''>2.\sf
 <ees'' ges''>2.\sf <des'' f''>2.\sf <ees'' ges''>2.\sf <des'' f''>4 r r
 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2.
 <c'' aes''>4\ff <c'' aes''> r8 <c'' aes''> <c'' aes''>4 <c'' aes''> r8 <c'' aes''>
 <c'' g''>4 <c'' g''> r r4 r r8 r^\fermata
 R2. R2. R2. R2. << { des''2.^\ppp ~ des''2. c''2. ~ c''2.^\fermata } \\
 { R2. R2. R2. R2._\downFermata }>> \bar "||"

 \key f \major \time 4/4
 << { c''1\pp c'' } \\ { R1 R1 } >> <b' d''>1\pp <b' d''>1
 <c'' e''>2_\txtCresc <c'' e''>2 <c'' f''> <c'' f''> <e'' g''> <f'' a''>
 <g'' bes''>8( <fis'' a''>) <g'' bes''>\staccato <a'' c'''>\staccato
 <bes'' d'''>\staccato <c'' e''>\staccato <d'' f''!>\staccato <e'' g''>\staccato
 <f'' a''>2\ff ~ <f'' a''>8( <e'' g''>) <c'' f''>\staccato <e'' g''>\staccato
 <f'' a''>2\sf ~ <f'' a''>8( <e'' g''>) <c'' f''>\staccato <e'' g''>\staccato
 <f'' a''>8\sf( <e'' g''>) <c'' f''>\staccato <e'' g''>\staccato
 <f'' a''>8\sf( <e'' g''>) <c'' f''>\staccato <e'' g''>\staccato
 <f'' a''>8\sf( <e'' g''>) <c'' f''>\staccato <e'' g''>\staccato
 <f'' a''>8\sf( <e'' g''>) <c'' f''>\staccato <e'' g''>\staccato
 << { a''8 g'' f'' e'' f'' e'' d'' cis'' d'' c'''! bes'' a'' bes'' g'' c''' c''' } \\
 { f''8 g'' f'' e'' f'' e'' d'' cis'' d'' c''! bes' a' bes' g' c'' c'' } >>
 <f'' a''>2\sf ~ <f'' a''>8( <e'' g''>) <c'' f''>\staccato <e'' g''>\staccato
 <f'' a''>2\sf ~ <f'' a''>8( <e'' g''>) <c'' f''>\staccato <e'' g''>\staccato
 <f'' a''>8\sf( <e'' g''>) <c'' f''>\staccato <e'' g''>\staccato
 <f'' a''>8\sf( <e'' g''>) <c'' f''>\staccato <e'' g''>\staccato
 <f'' a''>8\sf( <e'' g''>) <c'' f''>\staccato <e'' g''>\staccato
 <f'' a''>8\sf( <e'' g''>) <c'' f''>\staccato <e'' g''>\staccato
 << { a''8 g'' f'' e'' f'' e'' d'' cis'' d'' c'''! bes'' a'' bes'' g'' c''' c''' f''4 } \\
 { f''8 g'' f'' e'' f'' e'' d'' cis'' d'' c''! bes' a' bes' g' c'' c'' f'4 } >> r4 r2 R1 R1 R1 R1 R1
 r8 a''16(-\hideMF\cresc^\aDue bes'') c'''8\staccato r r
 \tupletSpan 4 \tuplet 3/2 { a''16[ bes'' c'''] }
 d'''8\staccato r
 r8 g''16([ a'']) bes''8\staccato r r \tuplet 3/2 { g''16[ a'' bes''] } c'''8[ c''']
 f''4\ff( ees'' d'' fis'') g''\sf( des'' c'' e''!) f''!2 g'' a'' bes''
 <b' b''>4 <c'' c'''>2. ~ <c'' c'''>1 <g'' bes''!>4 <g'' bes''> <g'' bes''> <g'' bes''>
 <g'' bes''>4 <g'' bes''> <g'' bes''> <g'' bes''>
 << { f''4. f''8 g''4. g''8 a''4. a''8 bes''4. bes''8 } \\
 { f''4. f''8 g''4. g''8 a''4. a''8 bes''4. bes''8 } >>
 <b' b''>4 <c'' c'''>2. ~ <c'' c'''>1 <g'' bes''!>4 <g'' bes''> <g'' bes''> <g'' bes''>
 <g'' bes''>4 <g'' bes''> <g'' bes''> <g'' bes''>
 <a' f''>2 <a' f''>\sf ~ <a' f''>1 ~ <a' f''>2 <f'' a''>2\sf ~ <f'' a''>1 ~ <f'' a''>2 <f'' a''>
 <e'' g''>2.\sf <e'' g''>4 <f'' a''>2 <f'' a''> <e'' g''>2.\sf <e'' g''>4 <f'' a''>2 <f'' a''>
 <e'' g''>2.\sf <e'' g''>4 <e'' g''>2.\sf <e'' g''>4 <e'' g''>2.\sf <e'' g''>4
 <c'' c'''>1\ff ~ <c'' c'''>1 <f'' a''>4 r r2 <f'' a''>4 r r2 <f'' a''>4 r r2
 <a' f''>4 r <a' f''> r <a' f''> r r2 \bar "|."
}