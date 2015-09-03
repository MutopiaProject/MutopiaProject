\version "2.18.2"

\include "defs.ily"

 flautoone =  {
 \set Staff.instrumentName = "Flauto I"
 \set Staff.midiInstrument = "flute"
 \clef treble
 \key f \minor
 \time 3/2
 \moreAccidentalPadding
 f'''1.-\hideF_\forteSforzato^\upFermata^\sostNonTropo
 R1. R1. R1. 
 R1. R1. R1. R1. f'''1.\ff
 \softPageBreak
 aes''2\staccato aes''2\staccato r4 r8 aes''8 bes''2\staccato c'''2\staccato r2 R1.
 \preventBreak
 r4\p ees'''4\<( des'''! c'''\!\> des''' bes''\!) aes''2( ges''2. ees''4)
 des''4 r4 r2 r2 R1. r4 ees'''4\pp( f'''8 ees''' des''' c''') c'''4 r4
 \softPageBreak
 r4 ees'''4( f'''8 ees''' des''' c''') c'''4 r4
 r4 des'''4( ees'''8 des''' c''' bes'') bes''4 r4 R1. R1. R1. R1. R1.
  \bar "||"
  \hardPageBreak

 \tempo 4 = 168
 \hideMetronomeMark
 \time 3/4 R2.^\allegro
 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2.
 \softPageBreak
 r4 r4 \hairpinPastBarline f'''4\<( ees'''2\!\> des'''4\! c''') r4 r4 R2. c'''4\p r4 r4 R2. R2. R2. R2.
 R2. R2. R2. R2.
 \softPageBreak
 r4 des'''\cresc r r des''' r r des''' r r des''' r
 r des''' r r des''' r r des''' r r4 c'''4
 f'''4\ff ~ f'''2. ~ f'''2. ~ f'''4 f''' f'''
 \softPageBreak
 e''' r e'''4\ff ~ e'''2. ~ e'''2. ~ e'''4
 e''' e''' f''' r r f''' r r f''' r r g''' g''' g''' f''' r r f''' r r
 f''' r f''' aes''' aes''' aes'''
 \softPageBreak
 g'''2.\sf aes'''2.\sf aes'''2.\sf g'''4 ees''' ees''' ees'''2.\sf ees'''2.\sf f'''2.\sf
 ees'''4 r r R2. R2. R2. ees'''4_\pDolce-\hideP( c''' aes''')
 R2. R2. R2. 
 \softPageBreak ees'''4_\pDolce( c''' aes''')
 R2. R2.
 e'''2._\pCresc( fis'''4 gis''' a''')
 e'''2.( fis'''4 gis''' a''') e'''2. f'''!2. ~ f'''2.\f ees'''!2.\ff
 ees'''4 c''' aes'''\sf ~ aes''' f''' f'''\sf ~
 \softPageBreak
 f''' des''' des'''\sf ~ des''' ees''' ees'''
 aes''4\f r r R2. c'''4 r r R2. ees'''4 r r r ees''' ees'''
 ees'''2.\sf ees'''2.\sf ees'''2.\sf ees'''2.\sf
 \softPageBreak
 ees'''2.\sf ees'''2\sf g'''4\staccato
 aes'''4\staccato r r R2. R2. r4 r
 c'''4_\dolce( ees''' des''' bes'' g'') r r R2.
 r4 r ees'''\f\staccato ees'''\staccato r r R2. R2.
 r4 r ees'''_\dolce( f''' ees''' c''' 
 \softPageBreak
 a'') r r R2.
 r4 r f'''\f\staccato f'''\staccato r r R2. R2.
 r4 r des'''!_\dolce( f''' ees''' c''' a'') r r R2.
 r4 r f'''\f\staccato f'''\staccato r r R2. R2.
 r4 r f'''\p( 
 \softPageBreak
 g''' f''') r R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2.
 \softPageBreak
 R2.
 c'''2.\pp\staccato c'''2.\staccato c'''2.\cresc ~ c'''2. ~ c'''2. ~ c'''2 c'''4\sfp
 c'''4 c''' r r c''' r r c''' r r c''' r r c''' r
 \softPageBreak
 r c''' r \softPageBreak r c''' r r c''' r R2.
 r4 \hairpinPastBarline c'''\<( f''' ees'''2\!\> des'''4\! c''') r r R2. c'''4\p r r R2. R2. R2. R2. \softPageBreak
 R2. R2. R2. R2. r4 des'''4\cresc r r des''' r r des''' r r des''' r
 r des''' r r des''' r r des''' r r c''' f'''4\ff ~ \softPageBreak f'''2. ~ f'''2. ~ f'''4 f''' f'''
 e'''4 r e'''\ff ~ e'''2. ~ e'''2. ~ e'''4 e'''\staccato e'''\staccato
 f'''4\staccato r r R2. r4 r f'''4\f( ees'''!2 des'''4) c'''4 r r \softPageBreak R2.
 r4 r f'''4\ff des'''4 r r des''' r r des''' r r des''' ges''' ees'''
 f'''4 r r des''' r r des''' r r des''' ees''' ees''' ees'''2. ~ ees'''2.
 ees'''2.\sf \softPageBreak f'''2.\sf ees'''2.\sf ees'''2.\sf ees'''2.\sf f'''2.\sf ees'''2.\sf ees'''4 r r
 R2. R2. R2. f'''4_\pDolce-\hideP( des''' aes''')
 R2. R2. R2. f'''4_\pDolce( des''' aes''')
 R2. \softPageBreak R2. d'''2._\pCresc ~ d'''2. ~ d'''2. ~ d'''2. ~ d'''2. f'''2.
 ges'''2.\f ges'''2.\ff f'''4 des''' des'''\sf ~ des''' bes'' bes''\sf ~ \softPageBreak bes'' ees'''
 ees'''4\sf ~ ees''' ees''' c''' des'''\f r r R2. f'''4 r r R2. aes'''4 r r r aes''' aes'''
 aes'''2\sf c'''4\staccato aes'''2\sf c'''4\staccato aes'''2\sf des'''4\staccato \softPageBreak
 aes'''2\sf c'''4\staccato aes'''2\sf des'''4\staccato aes'''2\sf c'''4\staccato des'''4 r r
 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. \softPageBreak R2. R2. R2. R2.
 c'''4\ff c''' r8 c''' c'''4 c''' r8 c''' c'''4 c''' r r4 r r8 r^\fermata
 R2. R2. R2. R2. R2. R2. R2. R2.^\fermataMarkup \bar "||"
 \hardPageBreak

 \tempo 4 = 152
 \hideMetronomeMark
 \key f \major
 \time 4/4 R1^\markup { \large \bold "Allegro con brio" } R1 R1 R1 R1 R1 \softPageBreak R1
 c'''2_\txtCresc ~ c'''4.
 \tupletSpan 4 \tuplet 3/2 { c'''16[ d''' e'''] }
 f'''2\ff ~ f'''8( e''') c'''\staccato e'''\staccato
 f'''2\sf ~ f'''8( e''') c'''\staccato e'''\staccato
 f'''8\sf( e''') c'''\staccato e'''\staccato f'''8\sf( e''') c'''\staccato e'''\staccato \softPageBreak
 f'''8\sf( e''') c'''\staccato e'''\staccato f'''8\sf( e''') c'''\staccato e'''\staccato
 f'''8 g'' f'' e'' f'' e'' d'' cis'' d'' c'''! bes'' a'' bes'' g'' c''' c'''
 f'''2\sf ~ f'''8( e''') c'''\staccato e'''\staccato
 f'''2\sf ~ f'''8( e''') c'''\staccato e'''\staccato
 \softPageBreak
 f'''8\sf( e''') c'''\staccato e'''\staccato f'''8\sf( e''') c'''\staccato e'''\staccato
 f'''8\sf( e''') c'''\staccato e'''\staccato f'''8\sf( e''') c'''\staccato e'''\staccato
 f'''8 g'' f'' e'' f'' e'' d'' cis'' d'' c'''! bes'' a'' bes'' g'' c''' c'''
 f''4 r r2 R1
 \softPageBreak
 R1 R1 R1 R1
 r8 a''16-\hideP(\cresc bes'') c'''8\staccato r r
 \tupletSpan 4 \tuplet 3/2 { a''16[ bes'' c'''] }
 d'''8\staccato r
 r8 g''16([ a'']) bes''8\staccato r r \tuplet 3/2 { g''16[ a'' bes''] } c'''8[ c'''] \softPageBreak
 f'''4\sf( ees''' d''' fis''') g'''\sf( des''' c''' e'''!) f'''!2 c''' c''' c'''
 c'''4 c'''2. ~ c'''1 bes''4 g''' g''' g''' 
 \softPageBreak
 g''' g''' g''' g'''
 f'''4. c'''8 c'''4. c'''8 c'''4. c'''8 c'''4. c'''8 c'''4 c'''2. ~ c'''1 ~ c'''4
 g'''4 g''' g''' g''' g''' g''' g'''
 \softPageBreak
 f'''2 f'''\sf ~ f'''1 ~ f'''2 a'''2\sf ~ a'''1 ~ a'''2 f'''
 e'''2.\sf e'''4 f'''2 f''' e'''2.\sf e'''4 f'''2 f'''
 e'''2.\sf e'''4 e'''2.\sf e'''4
 \softPageBreak
 e'''2.\sf e'''4
 f'''8\ff f'' g'' a'' bes'' a'' bes'' c''' d''' c''' d''' e''' f''' e''' f''' g'''
 a'''4 r r2 a'''4 r r2 a'''4 r r2 f'''4 r f''' r f''' r r2 \bar "|."
}