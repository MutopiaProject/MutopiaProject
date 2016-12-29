\version "2.19.46"

 oboi = {
 \set Staff.instrumentName = "Oboi"
 \set Staff.midiInstrument = "oboe"
 \clef treble
 \key c \minor
 \time 4/4
 R1 R1 R1 R1 << { d''2^\p f'' } \\ { r2 b'\p } >>
 <b' aes''>4.\sf <c'' g''>8\staccato <b' f''>4\staccato <c'' ees''>\staccato
 <b' d''>4\staccato r8 <c'' ees''>8\staccato <b' d''>4\staccato r8 <c'' ees''>8\staccato
 <b' d''>4\staccato r4 r2 R1 r4 <c'' ees''>2\sf <c'' ees''>4 <c'' aes''>2 r2
 r4 <f'' aes''>2\sf <f'' aes''>4 <f'' g''>2 r2 r4 <d'' b''>2\sf <d'' b''>4
 <ees'' c'''>4\staccato <d'' f''>\ff\staccato <c'' ees''>\staccato <b' d''>\staccato
 << { c''4 } \\ { c''4 } >> r r2
 R1 R1 <b' d''>4\p r <b' d''> r <c'' ees''> r r2 R1 R1 <d'' f''>4\p r <d'' f''> r <ees'' g''>\f r r2
 R1 R1 R1 << { f''2\staccato aes''\staccato c'''4. bes''8\staccato aes''4\staccato g''\staccato } \\
 { aes'2 r2 R1 } >> <bes' f''>1\sf ~ <bes' f''>4 <bes' f''> <bes' f''> <bes' f''>
 <bes' g''>1\ff ~ <bes' g''>4 <bes' g''> <bes' g''> <bes' g''>
 << { aes''1( a''2.) a''4 bes''4 } \\ { ees''1 ~
 ees''4( ges'' f'' ees'' d'') } >> r4 r2 R1 R1 R1 R1 R1 R1 R1 R1
 r4 <d'' f''>\f\staccato <ees'' a''>\staccato <ees'' a''>\staccato
 <d'' bes''>4\staccato r r <ees'' a''>\staccato <d'' bes''>4\staccato r r <ees'' a''>\staccato
 <d'' bes''>4\staccato r r2 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 << { e''2 d''8( e'' f'' d'') c''2 g'4. c''8 } \\ { c''2\p b' g' g'4. g'8 } >>
 <b' d''>4\staccato( <b' d''>4\staccato <b' d''>4\staccato <b' dis''>4\staccato)
 <b' dis''>2\staccato( <c'' e''>4)
 << { r8 c''8 f''2( e''4) r8 c'' a''2( g''4) r8 f'' } \\ { r4 c''2\sf ~ c''4 r4 a'2\sf( g'4) r8 d''8 } >>
 <c'' e''>4\staccato <c'' e''>4\staccato <c'' e''>8( <b' d''> <a' c''> <b' d''>)
 << { d''4.( dis''8 e''4) } \\ { b'2( c''4) } >> r4
 << { f''2( ees''! aes''! g'') fis''( f'') } \\ { c''1\p ~ c''1_\markup { \italic "cresc." } ~ c''2 b' } >>
 <c'' ees''>4\f\staccato <d'' f''>\staccato <c'' ees''>\staccato <b' d''>\staccato
 << { c''4 } \\ { c''4 } >> r4 r2 R1 R1 R1 R1 R1 R1 R1
 r4 <f'' aes''>\f\staccato <ees'' g''>\staccato <d'' f''>\staccato
 <c'' ees''>4\ff <c'' c'''> r <c'' aes''> r <c'' g''> r <b' g''>
 <c'' g''>4 << { \slurDown g''4\staccato^\p( g''\staccato^\markup { \italic "con espress." }
 g''\staccato) g''2 \slurUp f''4.( ees''8) d''4 d''4\rest d''2\rest } \\
 { f'4\rest f'2\rest R1 R1 } >> R1
 << { g''4\rest\p g''4\staccato( g''\staccato g''\staccato) g''2 f''4.( ees''8)
 c'''2_\markup { \italic "cresc." } bes''4.( aes''8) aes''1\p ~ aes''1 ~
 aes''1_\markup { \italic "cresc." } g''1 fis''2( f'')
 e''4( ees'' d'' g'') c'' d''4\rest d''2\rest
 aes''4. g''8\staccato f''\staccato ees''\staccato d''\staccato g''\staccato
 ees''4 ees''^\pp f''4\rest c'' f''4\rest d'' f''4\rest g' } \\
 { R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 b'1\sf c''4 f'4\rest f'2\rest R1 } >>
 r4 <ees'' c'''>4_\markup { \italic "cresc." } <ees'' c'''> <ees'' c'''> <ees'' c'''>2\f <d'' b''>
 << { c''2 ees'' g''4. f''8\staccato ees''4\staccato d''\staccato c''4 } \\
 { c''2\ff ees'' g''4.\sf f''8 ees''4 d'' c''4 } >> r8 << { g'8 c''4 } \\ { g'8 c''4 } >> r8
 << { g'8 c''4 } \\ { g'8 c''4 } >> r8 <d'' b''>8\staccato <ees'' c'''>4\staccato r8 <b' g''>8\staccato
 <c'' g''>4\staccato r8 <d'' b''>8\staccato <ees'' c'''>4\staccato r8 <b' g''>8\staccato
 <c'' g''>4\staccato r4 r2 << { c''4 } \\ { c''4\ff } >> r4 << { c''4 } \\ { c''4 } >> r4
 << { c''2^\fermata } \\ { c''2 } >> r2
 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1R1 R1 R1 R1 R1 R1 R1
 <g' ees''>1\ff ~  <g' ees''>4 <g' ees''> <g' ees''> <g' ees''> <g' ees''> r r2 R1
 <ees'' aes''>1\ff ~ <ees'' aes''>4 <ees'' aes''> <ees'' aes''> << { ees''4 } \\ { ees''4 } >>
 <ees'' ges''>4 r r2 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 R1 R1 R1 R1 << { a''4\rest_\p bes''\staccato( bes''\staccato bes''\staccato)
 bes''2\< aes''4.\!\>( g''8\!) f''4 a''4\rest r2 } \\ { R1 R1 R1 } >> R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 R1 R1 R1 R1 R1 R1 R1 R1 R1
 r4 <bes' f''>4\staccato\pp( <bes' f''>\staccato <bes' f''>\staccato) <bes' ees''>1 ~ <bes' ees''>
 <c'' ees''>1 ~ <c'' ees''>1 <c'' ges''>1 ~ <c'' ges''>1 <bes' g''!>4 r r2 R1
 R1 R1 R1 R1 R1 R1 R1 R1
 << { ees''4 f''\rest f''\rest c'''4\sf ~ c'''4. bes''8\staccato
 aes''\staccato g''\staccato f''\staccato bes''\staccato g''4 } \\ { g'4\f g'\rest g'2\rest bes'1 ees''4 } >> r4 r2 R1
 r4 <ees'' g''> r <ees'' g''> r <ees'' f''> r <d'' f''> r <d'' ees''> r <c'' ees''>
 r4 <c'' a''> r <bes' g''> r <c'' a''> r <bes' g''> r <a' fis''> r <cis'' g''> <d'' fis''>\staccato r r2 R1 R1 R1
 r4 <d' d''>2.\sf ~ <d' d''>4 <d' d''>2.\sf ~ <d' d''>4 <d' d''>2.\sf ~ <d' d''>4 <d' d''>\sf <d' d''> <d' d''>
 <d' d''>4 <fis'' a''>( <g'' bes''>2\sf) <fis'' a''>4 r r2 r4 <g'' bes''>\sf( <fis'' a''>) <cis'' g''>\staccato
 <d'' fis''>4\staccato <g'' bes''>\sf( <fis'' a''>) <cis'' g''>\staccato
 <d'' fis''>4 r r2 << { d''4 } \\ { d''4 } >> r r2 << { d''4 } \\ { d''4 } >> r4 r2 R1
 << { d''4\p\staccato d'8\rest a'\staccato d''4\staccato d''8\rest a'\staccato c''4\staccato c''4\rest c''2\rest } \\
 { R1 R1 } >> << { fis''1 ~ fis''1 } \\ { s4\< s4 s4 s8 s8\! s8\> s8 s4 s4 s4\! } >> g''4 r r2 R1 R1
 R1 R1 R1 R1 R1 R1 R1 R1 << { e''2\p( g'') bes''4. aes''8\staccato g''4\staccato f''\staccato
 e''4\staccato( e''\staccato e''\staccato e''\staccato) f''4 r4 r2 } \\ { R1 R1 R1 R1 } >> R1 R1 R1 R1 R1 R1 R1
 R1 R1 R1 R1 R1 R1 R1 R1 << { aes''1\p g''1 ~ g''1 f''2( ees'') d''4 g''( fis'' f'') } \\
 { R1 R1 R1 R1 f'4\rest b'( c'' d'') } >> <c'' e''>2_\markup { \italic "cresc." }( <c'' ees''>)
 <b' d''>4 <b' g''>\p( <c'' fis''> <d'' f''>) <c'' e''>2_\markup { \italic "cresc." }( <c'' ees''>) <b' d''>4 r r2
 r2 << { g''2 ~ g''2( f''4) } \\ { b'2( c''2.) } >> r4 R1 R1
 << { f''2\rest f''2\<( ges''2\!\> f''4\!) f''4\rest d''2\rest f''2\<( aes''\!\> g''\!) ~ g''1 ~ g''1 f''1 ees''1 d''1 } \\
 { R1 R1 R1 R1 R1 R1_\markup { \italic "decresc." } R1 R1 R1 } >>
 << { c''2 ees'' g''4. f''8\staccato ees''4\staccato d''\staccato c''\staccato } \\ { c''2\ff ees'' g''4.\sf f''8 ees''4 d'' c'' } >> r8
 << { g'8\staccato c''4\staccato } \\ { g'8 c''4 } >> r8 << { g'8\staccato c''4\staccato } \\ { g'8 c''4 } >> r4 r2
 <b' d''>2\ff <d'' f''> <f'' aes''>4.\sf <ees'' g''>8\staccato <d'' f''>4\staccato <c'' ees''>\staccato
 <b' d''>4\staccato r8 <c'' ees''>\p\staccato <b' d''>4\staccato r8 <c'' ees''>\staccato <b' d''>4\staccato r r2
 R1 R1^\markup { "SOLO" }
 << { a''4\staccato a''8\rest bes''\staccato a''4\staccato a''8\rest bes''\staccato a''4\staccato a''4\rest a''2\rest }  \\ { R1 R1 } >>
 R1 R1 R1 R1 R1
 R1 R1 R1 R1 << { g''8\rest g''8\staccato\p g''\staccato g''\staccato g'' g'' g'' f''
 f''8( ees'') ees''\staccato ees''\staccato ees''\staccato ees''\staccato d''\staccato c''\staccato
 c''8( b') b'\staccato b'\staccato b'\staccato b'\staccato c''\staccato d''\staccato
 d''( c'') c''\staccato c''\staccato c''\staccato c''\staccato d''\staccato ees''\staccato } \\ { R1 R1 R1 R1 } >>
 <b' d''>4 r8 <b' d''>\pp <c'' ees''>4 r8 <c'' ees''> <b' d''>4 r8 <b' d''> <c'' ees''>4 r8 <c'' ees''> <b' d''>4 r r2
 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 << { e''2( d''8 e'' f'' d'') c''2 g'4. c''8 } \\ { c''2\p b' g' g'4. g'8 } >>
 <b' d''>4\staccato( <b' d''>\staccato <b' d''>\staccato <b' dis''>\staccato) <b' dis''>2( <c'' e''>4) r8 c''8
 <c'' f''>2\sf( <c'' e''>4) r8 c''8 <a' a''>2\sf( <g' g''>4) r8 <d'' f''>8
 <c'' e''>4\f\staccato <c'' e''>\staccato <c'' e''>8( <b' d''> <a' c''> <b' d''>) << { d''4.( dis''8 e''4) } \\ { b'2( c''4) } >> r4
 R1 R1 R1 R1 R1 R1 r4 <c'' g''>\staccato\p( <c'' g''>\staccato <c'' g''>\staccato)
 <c'' g''>2\< <b' f''>4.\!\>( <c'' e''>8\!) <a' d''>4\p r r2 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 r2 r4 r8 <b' d''>8\staccato\p <c'' e''>4\staccato r4 r r8 <b' d''>\staccato <c'' e''>4\staccato r r2 R1 R1
 r4 <b' g''>\pp\staccato( <b' g''>\staccato <b' g''>\staccato)
 <c'' g''>1 ~ <c'' g''>4 <c'' g''>4\staccato( <c'' g''>\staccato <c'' g''>\staccato)
 <c'' a''>1 ~ <c'' a''>4 <c'' a''>4\staccato( <c'' a''>\staccato <c'' a''>\staccato)
 <c'' ees''!>1 ~ <c'' ees''>4 <c'' ees''!>4\staccato( <c'' ees''>\staccato <c'' ees''>\staccato) <c'' e''>4 r r2 R1
 R1 R1 R1 R1 R1 R1 <b' f''>1\p\< ~ <b' f''>1\!\> <c'' e''>4\f r r2 R1 R1 R1 R1 R1 R1 R1
 r4 <f'' aes''>4\staccato <ees'' g''>4\staccato <d'' f''>4\staccato
 <c'' ees''>2\ff <fis' fis''> <g' g''> <a' a''> <g' g''> <fis' fis''> <g' g''> <a' a''> <g' g''>2\sf^\fermata r2^\fermata
 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 <ees'' c'''>1\ff( <f'' d'''>2) <d'' b''> <ees'' c'''>4 r <c'' ees''>\staccato r
 r2 <ees'' c'''>4\staccato r r2 << { c''4 } \\ { c''4 } >> r4 << { g''4 } \\ { g''4 } >> r4 << { ees''4 } \\ { ees''4 } >> r4
 << { c''4 } \\ { c''4 } >> r4 r r8 r16 << { c''16 c''4 } \\ { c''16\ff c''4 } >> r4 r r8 r16
 << { c''16 c''1^\fermata } \\ { c''16 c''1 } >> \bar "|."
}