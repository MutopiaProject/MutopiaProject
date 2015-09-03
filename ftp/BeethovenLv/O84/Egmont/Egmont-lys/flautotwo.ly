\version "2.18.2"

\include "defs.ily"

 flautotwo =  {
 \set Staff.instrumentName = "Flauto II"
 \set Staff.midiInstrument = "flute"
 \clef treble
 \key f \minor
 \time 3/2
 \moreAccidentalPadding
 f''1.-\hideF_\forteSforzato\fermata
 R1. R1. R1. R1. R1. R1. R1. f''1.\ff
 f''2\staccato  f''2\staccato r4 r8 f''8 g''2\staccato aes''2\staccato r2
 R1. R1. R1. R1. R1. R1. R1. R1. R1. R1. R1. R1. R1. \bar "||"

 \time 3/4 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2.
 R2. R2. R2. R2. R2. R2. aes''4\p r4 r4 R2. R2. R2. R2. R2. R2. R2. R2.
 r4 e''\cresc r r e'' r r e'' r r e'' r r e'' r r e'' r r e'' r r e''
 c'''4\ff ~ c'''2. ~ c'''2. ~ c'''4 c''' c''' c''' r c'''4\ff ~ c'''2. ~ c'''2. ~ c'''4
 c'''4 c''' c''' r r f'' r r f'' r r f''' f''' e''' f''' r r f'' r r f'' r c'''
 des'''4 des''' d'''
 ees'''2.\sf ees'''2.\sf f'''2.\sf ees'''4 bes'' bes'' bes''2.\sf c'''2.\sf d'''2.\sf
 ees'''4 r4 r R2. R2. R2. R2. R2. R2. R2. R2. R2. R2.
 cis'''2._\pCresc( d'''4 e''' fis''')
 cis'''2.( d'''4 e''' fis''') cis'''2. d'''2. ~ d'''2.\f des'''!2.\ff
 c'''!4 aes'' c'''\sf( f''') des''' des'''\sf ~ des'''
 bes''4 bes''\sf ~ bes'' bes'' bes''
 aes''4\f r r R2. aes''4\f r r R2. c'''4 r r r c''' c'''
 ees'''2\sf g''4\staccato ees'''2\sf g''4\staccato ees'''2\sf aes''4\staccato
 ees'''2\sf g''4\staccato ees'''2\sf aes''4\staccato ees'''2\sf bes''4\staccato
 c'''4\staccato r r R2. R2. R2. R2. R2. R2. r4 r bes''\f\staccato c'''\staccato r r
 R2. R2. R2. R2. R2. R2. r4 r c'''4\f\staccato des'''\staccato r r
 R2. R2. R2. R2. R2. R2. r4 r c'''4\f\staccato des'''\staccato r r R2. R2. R2.
 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2.
 R2. R2. R2. R2. R2. R2. R2. R2. R2. r4 r \hairpinPastBarline f''\< ~ f''2.\!\> ~ f''4\! r4 r R2. aes''4\p r r
 R2. R2. R2. R2. R2. R2. R2. R2.
 r4 e''\cresc r r e'' r r e'' r r e'' r r e'' r r e'' r r e'' r r e'' c'''\ff ~
 c'''2. ~ c'''2. ~ c'''4 c''' c''' c''' r c'''4\ff ~ c'''2. ~ c'''2. ~
 c'''4 c'''\staccato c'''\staccato c'''4 r r R2. R2. R2. R2. R2. r4 r des'''4\ff
 des'' r r des'' r r des'' r r bes'' des''' c''' des''' r r
 des''4 r r des'' r r g''! bes'' c''' des'''2. ~ des'''2.
 c'''2.\sf des'''2.\sf des'''2.\sf c'''2.\sf c'''2.\sf des'''2.\sf des'''2.\sf c'''4 r r
 R2. R2. R2. des'''4_\pDolce-\hideP( aes'' f'')
 R2. R2. R2. des'''4_\pDolce( aes'' f'')
 R2. R2. d''2._\pCresc ~ d''2. ~ d''2. ~ d''2. ~ d''2. bes''!2.
 bes''2.\f ees'''2.\ff des'''4 r r R2. r4 bes''4 bes''4\sf( c''') c''' ees''
 f''\f r r R2. des'''4 r r R2. f'''4 r r r f''' f'''
 c'''2.\sf c'''2.\sf des'''2.\sf c'''2.\sf des'''2.\sf c'''2.\sf des'''4 r r
 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2.
 c'''4\ff c''' r8 c''' c'''4 c''' r8 c''' c'''4 c''' r r4 r r8 r^\fermata
 R2. R2.^\flautoPiccolo
 R2. R2. R2. R2. R2. R2.^\fermataMarkup \bar "||"

 \key f \major \time 4/4 R1 R1 R1 R1 R1 R1
 c''\p^\markup { "Flauto piccolo." }\startTrillSpan ~ c''2.(\stopTrillSpan d''16 e'' f'' g'')
 a''2\ff ~ a''8( g'') f''\staccato g''\staccato a''2\sf ~ a''8( g'') f''\staccato g''\staccato
 a''8\sf( g'') f''\staccato g''\staccato a''8\sf( g'') f''\staccato g''\staccato
 a''8\sf( g'') f''\staccato g''\staccato a''8\sf( g'') f''\staccato g''\staccato
 a''8 g'' f'' e'' f'' e'' d'' cis'' d'' c'''! bes'' a'' bes'' g'' c''' c'''
 a''2\sf ~ a''8( g'') f''\staccato g''\staccato a''2\sf ~ a''8( g'') f''\staccato g''\staccato
 a''8\sf( g'') f''\staccato g''\staccato a''8\sf( g'') f''\staccato g''\staccato
 a''8\sf( g'') f''\staccato g''\staccato a''8\sf( g'') f''\staccato g''\staccato
 a''8 g'' f'' e'' f'' e'' d'' cis'' d'' c'''! bes'' a'' bes'' g'' c''' c'''
 f''4 r r2 R1 R1 R1
 r8 a''16( bes'' c'''4) r8
 \tupletSpan 4 \tuplet 3/2 { a''16[ bes'' c'''] } d'''4
 r8 g''16( a'' bes''4) r8 \tuplet 3/2 { g''16[ a'' bes''] } c'''4
 a''8-\hideMF\cresc bes'' c''' cis''' d''' c''' bes'' a'' bes'' a'' g'' a'' bes'' c''' d''' e'''
 f'''4\sf( ees''' d''' fis''') g'''\sf( des''' c''' e'''!) f''!2 g'' a'' bes'' b''4 c'''2. ~ c'''1
 bes''!8 g''16( a'') bes''4 r8 g''16( a'') bes''4
 r8 g''16( a'') bes''4 r8 g''16( a'') bes''8\staccato e''\staccato
 f''4. f''8 g''4. g''8 a''4. a''8 bes''4. bes''8 b''4 c'''2. ~ c'''1
 bes''!8 g''16( a'') bes''4 r8 g''16( a'') bes''4
 r8 g''16( a'') bes''4 r8 g''16( a'') bes''8\staccato e''\staccato
 f''2.\sf c''8 c'' f''4\staccato c''\staccato a'\staccato c''\staccato
 f''2.\sf c''8 c'' f''4\staccato c''\staccato a'\staccato c''\staccato
 f''2 a''4 a''8 a'' c'''2.\sf c''4 f''2 a''4 a''8 a'' c'''2.\sf c''4
 f''2 a''4 a''8 a'' c'''2.\sf c''4 c'''2.\sf c''4 c'''2.\sf c''4 c'''1\ff ~ c'''1
 f'''4 r8 \tuplet 3/2 { c'''16([ d''' e'''] } f'''4) r4
 r4 r8 \tuplet 3/2 { c'''16([ d''' e'''] } f'''4) r4
 r4 r8 \tuplet 3/2 { c'''16([ d''' e'''] } f'''4) r4
 r4 r8 \tuplet 3/2 { c'''16([ d''' e'''] } f'''4) r8 \tuplet 3/2 { c'''16([ d''' e'''] } f'''4) r4 r2
 \bar "|."
}