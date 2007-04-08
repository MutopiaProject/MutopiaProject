\version "2.4.0"

 flautoone =  {
 \set Staff.instrument = "Flauto I"
 \set Staff.midiInstrument = "flute"
 \clef treble
 \key f \minor
 \time 3/2
 \override Staff.AccidentalPlacement   #'padding = #0.5
 << { f'''1.\fermata^\markup { \large \bold "Sostenuto ma non troppo" } } \\
 { s2\f s4 s4\> s4 s4\! } >> R1. R1. R1. R1. R1. R1. R1. f'''1.\ff
 aes''2\staccato aes''2\staccato r4 r8 aes''8 bes''2\staccato c'''2\staccato r2 R1.
 r4\p ees'''4\<( des'''! c'''\!\> des''' bes''\!) aes''2( ges''2. ees''4)
 des''4 r4 r2 r2 R1. r4 ees'''4\pp( f'''8 ees''' des''' c''') c'''4 r4
 r4 ees'''4( f'''8 ees''' des''' c''') c'''4 r4
 r4 des'''4( ees'''8 des''' c''' bes'') bes''4 r4 R1. R1. R1. R1. R1. \bar "||"

 \tempo 4 = 168
 \override Score.MetronomeMark   #'transparent = ##t
 \time 3/4 R2.^\markup { \large \bold "Allegro" }
 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2.
 r4 r4 f'''4\<( ees'''2\!\> des'''4\! c''') r4 r4 R2. c'''4\p r4 r4 R2. R2. R2. R2.
 R2. R2. R2. R2. r4 \cresc des''' r r des''' r r des''' r r des''' r
 r des''' r r des''' r r des''' r r4 c'''4
 f'''4\ff ~ f'''2. ~ f'''2. ~ f'''4 f''' f''' e''' r e'''4\ff ~ e'''2. ~ e'''2. ~ e'''4
 e''' e''' f''' r r f''' r r f''' r r g''' g''' g''' f''' r r f''' r r
 f''' r f''' aes''' aes''' aes'''
 g'''2.\sf aes'''2.\sf aes'''2.\sf g'''4 ees''' ees''' ees'''2.\sf ees'''2.\sf f'''2.\sf
 ees'''4 r r R2. R2. R2. ees'''4_\markup { \italic \large "p dolce" }( c''' aes''')
 R2. R2. R2. ees'''4_\markup { \italic \large "p dolce" }( c''' aes''') R2. R2.
 e'''2._\markup { \italic \large "p cresc." }( fis'''4 gis''' a''')
 e'''2.( fis'''4 gis''' a''') e'''2. f'''!2. ~ f'''2.\f ees'''!2.\ff
 ees'''4 c''' aes'''\sf ~ aes''' f''' f'''\sf ~ f''' des''' des'''\sf ~ des''' ees''' ees'''
 aes''4\f r r R2. c'''4 r r R2. ees'''4 r r r ees''' ees'''
 ees'''2.\sf ees'''2.\sf ees'''2.\sf ees'''2.\sf ees'''2.\sf ees'''2\sf g'''4\staccato
 aes'''4\staccato r r R2. R2. r4 r
 c'''4_\markup { \italic \large "dolce" }( ees''' des''' bes'' g'') r r R2.
 r4 r ees'''\f\staccato ees'''\staccato r r R2. R2.
 r4 r ees'''_\markup { \italic \large "dolce" }( f''' ees''' c''' a'') r r R2.
 r4 r f'''\f\staccato f'''\staccato r r R2. R2.
 r4 r des'''_\markup { \italic \large "dolce" }( f''' ees''' c''' a'') r r R2.
 r4 r f'''\f\staccato f'''\staccato r r R2. R2.
 r4 r f'''\p( g''' f''') r R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2.
 c'''2.\pp\staccato c'''2.\staccato \cresc c'''2. ~ c'''2. ~ c'''2. ~ c'''2 c'''4\sfp
 c'''4 c''' r r c''' r r c''' r r c''' r r c''' r r c''' r r c''' r r c''' r R2.
 r4 c'''\<( f''' ees'''2\!\> des'''4\! c''') r r R2. c'''4\p r r R2. R2. R2. R2.
 R2. R2. R2. R2. r4 \cresc des'''4 r r des''' r r des''' r r des''' r
 r des''' r r des''' r r des''' r r c''' f'''4\ff ~ f'''2. ~ f'''2. ~ f'''4 f''' f'''
 e'''4 r e'''\ff ~ e'''2. ~ e'''2. ~ e'''4 e'''\staccato e'''\staccato
 f'''4\staccato r r R2. r4 r f'''4\f( ees'''!2 des'''4) c'''4 r r R2.
 r4 r f'''4\ff des'''4 r r des''' r r des''' r r des''' ges''' ees'''
 f'''4 r r des''' r r des''' r r des''' ees''' ees''' ees'''2. ~ ees'''2.
 ees'''2.\sf f'''2.\sf ees'''2.\sf ees'''2.\sf ees'''2.\sf f'''2.\sf ees'''2.\sf ees'''4 r r
 R2. R2. R2. f'''4_\markup { \italic \large "p dolce" }( des''' aes''')
 R2. R2. R2. f'''4_\markup { \italic \large "p dolce" }( des''' aes''')
 R2. R2. d'''2._\markup { \italic \large "p cresc." } ~ d'''2. ~ d'''2. ~ d'''2. ~ d'''2. f'''2.
 ges'''2.\f ges'''2.\ff f'''4 des''' des'''\sf ~ des''' bes'' bes''\sf ~ bes'' ees'''
 ees'''4\sf ~ ees''' ees''' c''' des'''\f r r R2. f'''4 r r R2. aes'''4 r r r aes''' aes'''
 aes'''2\sf c'''4\staccato aes'''2\sf c'''4\staccato aes'''2\sf des'''4\staccato
 aes'''2\sf c'''4\staccato aes'''2\sf des'''4\staccato aes'''2\sf c'''4\staccato des'''4 r r
 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2.
 c'''4\ff c''' r8 c''' c'''4 c''' r8 c''' c'''4 c''' r r4 r r8 r^\fermata
 R2. R2. R2. R2. R2. R2. R2. R2.^\fermataMarkup \bar "||"

 \tempo 4 = 152
 \override Score.MetronomeMark   #'transparent = ##t
 \key f \major
 \time 4/4 R1^\markup { \large \bold "Allegro con brio" } R1 R1 R1 R1 R1 R1
 c'''2\p ~ c'''4.
 \set tupletSpannerDuration = #(ly:make-moment 1 4) \times 2/3 { c'''16[ d''' e'''] }
 f'''2\ff ~ f'''8( e''') c'''\staccato e'''\staccato
 f'''2\sf ~ f'''8( e''') c'''\staccato e'''\staccato
 f'''8\sf( e''') c'''\staccato e'''\staccato f'''8\sf( e''') c'''\staccato e'''\staccato
 f'''8\sf( e''') c'''\staccato e'''\staccato f'''8\sf( e''') c'''\staccato e'''\staccato
 f'''8 g'' f'' e'' f'' e'' d'' cis'' d'' c'''! bes'' a'' bes'' g'' c''' c'''
 f'''2\sf ~ f'''8( e''') c'''\staccato e'''\staccato
 f'''2\sf ~ f'''8( e''') c'''\staccato e'''\staccato
 f'''8\sf( e''') c'''\staccato e'''\staccato f'''8\sf( e''') c'''\staccato e'''\staccato
 f'''8\sf( e''') c'''\staccato e'''\staccato f'''8\sf( e''') c'''\staccato e'''\staccato
 f'''8 g'' f'' e'' f'' e'' d'' cis'' d'' c'''! bes'' a'' bes'' g'' c''' c'''
 f''4 r r2 R1 R1 R1 R1 R1
 r8 \cresc a''16( bes'') c'''8\staccato r r
 \set tupletSpannerDuration = #(ly:make-moment 1 4) \times 2/3 { a''16[ bes'' c'''] }
 d'''8\staccato r
 r8 g''16([ a'']) bes''8\staccato r r \times 2/3 { g''16[ a'' bes''] } c'''8[ c''']
 f'''4\sf( ees''' d''' fis''') g'''\sf( des''' c''' e'''!) f'''!2 c''' c''' c'''
 c'''4 c'''2. ~ c'''1 bes''4 g''' g''' g''' g''' g''' g''' g'''
 f'''4. c'''8 c'''4. c'''8 c'''4. c'''8 c'''4. c'''8 c'''4 c'''2. ~ c'''1 ~ c'''4
 g'''4 g''' g''' g''' g''' g''' g'''
 f'''2 f'''\sf ~ f'''1 ~ f'''2 a'''2\sf ~ a'''1 ~ a'''2 f'''
 e'''2.\sf e'''4 f'''2 f''' e'''2.\sf e'''4 f'''2 f'''
 e'''2.\sf e'''4 e'''2.\sf e'''4 e'''2.\sf e'''4
 f'''8\ff f'' g'' a'' bes'' a'' bes'' c''' d''' c''' d''' e''' f''' e''' f''' g'''
 a'''4 r r2 a'''4 r r2 a'''4 r r2 f'''4 r f''' r f''' r r2 \bar "|."
}