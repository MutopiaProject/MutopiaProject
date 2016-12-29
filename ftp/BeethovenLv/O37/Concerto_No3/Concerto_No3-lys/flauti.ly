\version "2.19.46"

 flauti = {
 \set Staff.instrumentName = "Flauti"
 \set Staff.midiInstrument = "flute"
 \clef treble
 \key c \minor
 \time 4/4
 R1^\markup { \bold "Allegro con brio" } R1 R1 R1 R1 R1 R1 R1 R1
 r4 <ees'' c'''>2\sf <ees'' c'''>4 <aes'' c'''>2 r2 r4 <aes'' f'''>2\sf <aes'' f'''>4
 << { f'''2.( ees'''8 d''') c'''8([ b'']) } \\ { g''2 r2 r4 } >> <b'' d'''>2\sf <b'' d'''>4
 <c''' ees'''>4\staccato <d''' f'''>\ff\staccato <c''' ees'''>\staccato <b'' d'''>\staccato
 << { c'''4 } \\ { c'''4 } >> r4 r2
 R1 R1 << { g''4\p g''4\rest g''4 g''4\rest g''4 g''4\rest g''2\rest } \\ { R1 R1 } >>
 R1 R1 << { bes''4\p g''4\rest bes''4 g''4\rest bes''4\f g''4\rest g''2\rest } \\ { R1 R1 } >> R1
 <ees'' ees'''>2\sf( ~ <ees'' ees'''>8 <d'' d'''>) <d'' d'''>( <c'' c'''>)
 <c'' c'''>8( <bes' bes''>) <bes' bes''>( <aes' aes''>) <aes' aes''>( <g' g''>) <g' g''>( <f' f''>)
 <f' f''>4 r r2 R1 <f'' f'''>2\sf( ~ <f'' f'''>8 <ees'' ees'''>) <ees'' ees'''>( <d'' d'''>)
 <d'' d'''>8( <c'' c'''>) <c'' c'''>( <bes' bes''>) <bes' bes''>( <b' b''>) <c'' c'''>( <aes' aes''>)
 <g' g''>2\ff <bes'! bes''!>2 <des'' des'''>2. <g' g''>4\staccato
 <aes' aes''>2 <c'' c'''> <ees'' ees'''>2. <a' a''>4\staccato
 <bes' bes''>4 r r2 R1 R1 R1 R1 R1 R1 R1 R1
 r4 <f'' d'''>\f\staccato <a'' ees'''>\staccato <a'' ees'''>\staccato
 <bes'' d'''>4\staccato r r <a'' ees'''>\staccato <bes'' d'''>4\staccato r r <a'' ees'''>\staccato
 <bes'' d'''>4\staccato r r2 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 << { g'''2.\p\<( f'''4\!) e'''2\p d'''8( e''' f''' d''') c'''2 g''4. c'''8
 d'''4\staccato( d'''\staccato d'''\staccato dis'''\staccato) dis'''2( e'''4) d'''8\rest c'''8
 f'''2( e'''4) f'''4\rest r2 r4 g'''8\rest f'''8 } \\
 { R1 R1 R1 R1 r2 r4 g''8\rest c'''8 c'''2\sf ~ c'''4 g''8\rest c'''8
 c'''2\sf ~ c'''4 g''8\rest d'''8 } >>
 <c''' e'''>4\staccato <c''' e'''>\staccato <c''' e'''>8( <b'' d'''> <a'' c'''> <b'' d'''>)
 << { d'''4.( dis'''8 e'''4) } \\ { b''2( c'''4) } >> r4
 <c'' c'''>1\p ~ <c'' c'''>1_\markup { \italic "cresc." } ~ <c'' c'''>2(
 <f'' b''>2) <ees'' c'''>4\f\staccato <f'' c'''>\staccato <ees'' c'''>\staccato <d'' b''>\staccato
 <c'' c'''>4 r r2 R1 R1 R1 R1 R1
 <d'' b''>2\f <b'' d'''> <d''' f'''>4.\sf <c''' ees'''>8\staccato
 <b'' d'''>4\staccato <aes'' c'''>\staccato
 <g'' b''>4\staccato <f'' b''>\staccato <ees'' b''>\staccato <d'' b''>\staccato
 <c'' c'''>4\ff <ees'' c'''> r <aes'' f'''> r <g'' ees'''> r <f'' b''> <ees'' c'''> r r2
 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 << { b''1\sf( c'''4) ees'''\pp b''4\rest c''' b''4\rest d''' b''4\rest g'' } \\ { R1 R1 R1 } >>
 r4 <c''' ees'''>4_\markup { \italic "cresc." } <c''' ees'''>4 <c''' ees'''>
 <ees''' g'''>2\f <f'' b''>
 <ees'' c'''>2\ff ees''' g'''4.\sf f'''8\staccato ees'''4\staccato d'''\staccato
 c'''4 r8 g'' c'''4 r8 g'' c'''4 r8 d'''8\staccato ees'''4\staccato r8 b''\staccato
 c'''4\staccato r8 d'''8\staccato ees'''4\staccato r8 <d'' b''>\staccato <ees'' c'''>4\staccato r r2
 << { c''4\ff } \\ { c''4 } >> r4 << { c''4 } \\ { c''4 } >> r4
 << { c''2^\fermata } \\ { c''2 } >> r2^\markup { "SOLO." }
 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 <g'' ees'''>1\ff ~  <g'' ees'''>4 <g'' ees'''> <g'' ees'''> <g'' ees'''> <g'' ees'''> r r2 R1
 <aes' aes''>2\ff\staccato <c'' c'''>\staccato
 <ees'' ees'''>4.\sf <des'' des'''>8\staccato <c'' c'''>4\staccato <bes' bes''>\staccato
 <a' a''>4 r r2 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 r2 r4 r8 <ees'' ees'''>8\p <aes'' ees'''>2\sf( <g'' ees'''>4) r8 <ees'' ees'''>8 <c''' ees'''>2\sf( <bes'' ees'''>4) r
 R1 R1^\markup { "SOLO." } R1 R1
 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 R1 r2 << { r2 ees'''1 ~ ees'''4 c'''4\rest r2 ees'''1 ~ ees'''4 c'''4\rest r2 ees'''1 ~ ees'''4 } \\
 { bes''2_\pp ~ bes''1( c'''4) b'4\rest c'''2 ~ c'''1 ~ c'''4 b'4\rest c'''2 ~ c'''1( bes''4) } >> r4 r2 R1
 R1 R1 R1 R1 \pageBreak R1 R1 R1 R1
 << { ees''4^\markup { \bold "TUTTI" } } \\ { ees''4\f } >> r4 r
 << { c'''4 ~ c'''4. bes''8 aes''\staccato[ g''\staccato f''\staccato bes''\staccato] g''4 } \\
 { c'''4\sf ~ c'''4. bes''8 aes''[ g'' f'' bes''] g''4 } >> <g'' g'''>4 r <ees'' ees'''> r <f'' f'''> r <bes' bes''>
 r4 <ees''' g'''> r <ees''' g'''> r <ees''' f'''> r <d''' f'''> r <d''' ees'''> r <c''' ees'''>
 r4 <c''' d'''> r <bes'' d'''> r <a'' c'''> r <g'' bes''> r <fis'' a''> r <g'' cis'''>
 <fis'' d'''>4\staccato <d'' d'''>2\sf( <c''! c'''!>4) <c'' c'''>\staccato <bes' bes''>2\sf( <a' a''>8 <g' g''>)
 <g' g''>4\staccato <fis' fis''>2\sf( <g' g''>8 <a' a''>) <a' a''>4\staccato <g' g''>2\sf( <a' a''>8 <bes' bes''>)
 <a' a''>4\staccato <d'' d'''>2.\sf ~ <d'' d'''>4 <d'' d'''>2.\sf ~ <d'' d'''>4 <d'' d'''>2.\sf ~
 <d'' d'''>4 <d'' d'''>\sf <d'' d'''> <d'' d'''> <d'' d'''> r r2
 r4 <fis'' a''>\staccato <g'' cis'''>\staccato <g'' cis'''>\staccato <fis'' d'''>\staccato r r <g'' cis'''>\staccato
 <fis'' d'''>4\staccato <g'' bes''>( <fis'' a''>) <g'' cis'''>\staccato
 <fis'' d'''>4 r r2^\markup { "SOLO" } <d'' d'''>4 r r2 <d'' d'''>4 r r2 R1
 << { d'''4\p\staccato r8 a''\staccato d'''4\staccato r8 a''\staccato c'''4\staccato a''4\rest a''2\rest } \\ { R1 R1 } >>
 R1 << { fis'''1 g'''4 r4^\markup { "SOLO." } r2 } \\ { s4\< s8 s8\! s4\> s8 s8\! s1 } >> R1 R1
 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 << { aes''2\p( ees''' ges'''4) g''4\rest f''2\rest aes''2( des''' f'''4) g''4\rest f''2\rest
 aes''2( ees''' ges'''4) g''4\rest f''2\rest } \\ { R1 R1 R1 R1 R1 R1 } >> R1 R1 R1 R1 R1
 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 <c'' c'''>2\ff <ees'' ees'''> <g'' g'''>4.\sf <f'' f'''>8\staccato <ees'' ees'''>4\staccato <d'' d'''>\staccato
 <c'' c'''>4\staccato r8 <g' g''>\staccato <c'' c'''>4\staccato r8 <g' g''>\staccato
 <c'' c'''>4\staccato r4 r2 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 R1 R1 R1 R1 << { a''8\rest g'''8\staccato\p g'''\staccato g'''\staccato g''' g''' g''' f'''
 f'''8( ees''') ees'''\staccato ees'''\staccato ees'''\staccato ees'''\staccato d'''\staccato c'''\staccato
 c'''8( b'') b''\staccato b''\staccato b''\staccato b''\staccato c'''\staccato d'''\staccato
 d'''( c''') c'''\staccato c'''\staccato c'''\staccato c'''\staccato d'''\staccato ees'''\staccato
 d'''4 c'''8\rest d'''8\pp ees'''4 c'''8\rest ees''' d'''4 c'''8\rest d'''8 ees'''4 c'''8\rest ees''' d'''4 c'''4\rest a''2\rest }
 \\ { R1 R1 R1 R1 R1 R1 R1 } >> R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 << { f''2\rest b''4\rest^\markup { "TUTTI." } g''4\p e'''2( d'''8 e''' f''' d''') c'''2 g''4. c'''8
 d'''4\staccato( d'''\staccato d'''\staccato dis'''\staccato) dis'''2( e'''4) c'''8\rest c'''8 } \\
 { R1 R1 R1 R1 a'2\rest a'4\rest r8 c'''8\p } >> <c''' f'''>2\sf( <c''' e'''>4) r8 c'''8
 << { f'''2\rest f'''4\rest f'''8\rest f'''8 } \\ { c'''2\sf ~ c'''4 r8 d'''8 } >>
 <c''' e'''>4\staccato\f <c''' e'''>\staccato <c''' e'''>8( <b'' d'''> <a'' c'''> <b'' d'''>)
 << { d'''4.( dis'''8 e'''4) } \\ { b''2( c'''4) } >> r4 R1^\markup { "SOLO." } R1 R1 R1 R1 R1 R1 R1
 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 r2 r4 r8 <b'' d'''>8\staccato\p <c''' e'''>4\staccato r4 r r8 <b'' d'''>8\staccato
 <c''' e'''>4\staccato r8 <b'' d'''>\staccato <a'' c'''>4\staccato r8 <g'' bes''>8\staccato
 <f'' a''>4\staccato r8 <e'' g''>\staccato <d'' f''>4\staccato r8 <e'' g''>\staccato <d'' f''>4\staccato r r2 R1 R1
 << { c'''1\pp ~ c'''4 a''4\rest g''2\rest } \\ { R1 R1 } >> c'''1( <a'' ees'''!>1\pp) ~ <a'' ees'''>4
 <a'' ees'''!>4\staccato( <a'' ees'''>\staccato <a'' ees'''>\staccato) <g'' e'''>4 r4 r2 R1 R1 R1 R1 R1 R1 R1 R1 R1
 <e'' c'''>4\f^\markup { \bold "TUTTI." } r4 r2 R1 R1 R1 R1 R1
 <d'' b''>2\f <b'' d'''> <d''' f'''>4.\sf <c''' ees'''>8\staccato <b'' d'''>4\staccato <aes''! c'''>\staccato
 <g'' b''>4\staccato <f'' b''>\staccato <ees'' b''>\staccato <d'' b''>\staccato <c'' c'''>4
 << { c'''2 c'''4 ~ c''' c'''2 c'''4 ~ c''' } \\ { c'''2\ff c'''4 ~ c''' c'''2 c'''4 ~ c''' } >>
 <c''' ees'''>2 <c''' ees'''>4 ~ <c''' ees'''> <c''' ees'''>2 <c''' ees'''>4 ~ <c''' ees'''>2\sf^\fermata r2^\fermata
 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 <c''' ees'''>1\ff^\markup { "TUTTI." }( <d''' f'''>2) <b'' d'''>
 << { c'''4 } \\ { c'''4 } >> r4 << { c'''4^\staccato } \\ { c'''4 } >> r4 r2 <c''' ees'''>4\staccato r r2 <c'' c'''>4 r
 <g'' g'''>4 r <ees'' ees'''> r <c'' c'''> r r r8 r16 << { c''16 c''4 } \\ { c''16\ff c''4 } >> r4 r r8 r16
 << { c''16 c''1^\fermata } \\ { c''16 c''1 } >> \bar "|."
}