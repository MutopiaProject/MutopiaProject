\version "2.7.40"

 violinoone = {
 \set Staff.instrument = "Violino I"
 \set Staff.midiInstrument = "violin"
 \clef treble
 \key c \major
 \time 3/8
 \repeat volta 2 {
 R4. R4.^\markup { "SCHERZO. Andante scherzoso quasi Allegretto." } R4. R4. R4. R4. R4. R4. R4.
 g''8\p\staccato g''\staccato g''\staccato c'''\staccato c'''\staccato c'''16\staccato[ b''\staccato]
 a''16\staccato g''\staccato f''\staccato e''\staccato d''\staccato c''\staccato
 a'8_\markup { \italic "cresc." } d''\staccato g''\staccato e''\staccato c''\staccato r
 cis''\staccato e''\staccato a''\staccato f''\staccato d''\staccato r
 e''\staccato g''\staccato c'''\staccato c'''4\sf b''16( a'') a''( g'') g''( f'') f''( e'') d''8\p\staccato g''8.\sf( f''16)
 e''8\staccato g''8.\sf( c''16)
 << { s4 \override NoteHead #'font-size = #-2 a'16( b') s4 b'16( c'') } \\ { b'8 b' b'^\trill c'' c'' c''^\trill } >>
 d''8\staccato g''8.\sf( f''16) e''8\staccato g''8.\sf( c''16)
 << { s4 \override NoteHead #'font-size = #-2 a'16( b') s4 b'16( c'') } \\ { b'8 b' b'^\trill c'' c'' c''^\trill } >>
 d''8 r16 g'\staccato c''\staccato e''\staccato
 d''8 r16 g'\staccato c''\staccato e''\staccato
 d''16\staccato g'_\markup { \italic "cresc." }\staccato c''\staccato e''\staccato d''\staccato g'\staccato
 c''\staccato e''\staccato d''\staccato g'\staccato c''\staccato e''\staccato d''8\staccato\f <d' b' g''>\staccato r
 R4. R4. R4. c''8\f\staccato c''\staccato c''\staccato
 a''4\sf fis''16^\trill( e''32 fis'') g''8( c'' b') a''4\sf fis''16^\trill( e''32 fis'') g''8( c'' b')
 a''4 fis''16^\trill( e''32 fis'') c'''8 r d'
 b'16\pp\staccato ais'\staccato b'\staccato c''\staccato b'\staccato a'\staccato
 gis'8\staccato gis'\staccato gis'\staccato
 a'16\staccato gis'\staccato a'\staccato b'\staccato a'\staccato g'\staccato fis'8\staccato fis'\staccato fis'\staccato
 g'8 g''8.( fis''16) fis''8( e''8.) d''16 d''16( cis'') cis''( c'') c''( b') d''16.( b'32) a'8\staccato r8
 R4. e''16\pp\staccato dis''\staccato e''\staccato f''\staccato e''\staccato d''\staccato c''8 r r
 d''16\staccato cis''\staccato d''\staccato e''\staccato d''\staccato c''\staccato b'8 r r
 g''16\staccato fis''\staccato g''\staccato a''\staccato g''\staccato f''\staccato
 e''16\staccato d''\staccato c''\staccato b'\staccato a'\staccato g'\staccato
 fis'8\staccato g'4\sf a'8\staccato b'4\sf d''16.([ c''32]) b'8\staccato([ a'\staccato])
 d'''16\staccato_\markup { \italic "cresc." } cis'''\staccato d'''\staccato e'''\staccato d'''\staccato c'''\staccato
 b''16\staccato ais''\staccato b''\staccato c'''\staccato b''\staccato a''\staccato
 g''\staccato fis''\staccato e''\staccato d''\staccato c''\staccato b'\staccato
 a'8\staccato b'4\sf c''8\staccato dis''4\sf e''16.([ c''32])
 << { s8 \override NoteHead #'font-size = #-2 g'16 a' } \\ { b'\staccato([ a'\staccato^\trill]) } >> g'8 r r
 d''8\p d'' d'' d''4. d''8 d'' d''
 d''16\staccato d'''\staccato c'''\staccato b''\staccato a''\staccato g''\staccato
 fis''\staccato e''\staccato d''\staccato c''\staccato b'\staccato a'\staccato
 g'16\staccato a'\staccato b'\staccato c''\staccato d''\staccato e''\staccato
 fis''\staccato g''\staccato a''\staccato b''\staccato c'''\staccato a''\staccato b''4 r8 d'''8 d''' d'''
 d'''8.[ d'''16\staccato fis'''\staccato d'''\staccato] g'''8 r16 d'''16\staccato[ fis'''\staccato d'''\staccato]
 g'''16\staccato_\markup { \italic "cresc." } d'''\staccato fis'''\staccato d'''\staccato g'''\staccato d'''\staccato
 fis'''\staccato d'''\staccato g'''\staccato d'''\staccato fis'''\staccato d'''\staccato g'''8 r g''\pp g''8 r r }
 R4. R4. ees''8\p ees'' ees'' aes''8[ aes''] aes''16\sf([ g'']) f''8[ f''] f''16\sf([ g'']) f''8[ f''] f''16\sf([ g'']) f''8 r r
 r8 r f'16\pp( ges') f'8[ f'] f'16([ ges']) f'8[ f'] f'16([ ges']) f'8 r r R4.
 R4. bes'8\f bes' bes' ees''16\staccato bes''\staccato aes''\staccato g''\staccato f''\staccato ees''\staccato
 d''\staccato c''\staccato b'!\staccato aes'\staccato g'\staccato f'\staccato ees'8\staccato c'\staccato r
 R4. R4. ees''8\p ees'' ees''
 ees''16\staccato ees'''\staccato des'''\sf\staccato c'''\staccato bes''\staccato aes''\staccato
 g''\staccato f''\staccato ees''\sf\staccato des''\staccato c''\staccato bes'\staccato
 aes' bes' c''\sf des'' ees'' f'' g'' aes'' bes''\sf c''' des''' bes''
 g''16_\markup { \italic "decresc." } a''! bes'' c''' des''' bes'' f'' a'' bes'' c''' des''' bes''
 e''! a'' bes'' c''' des''' bes'' des''' bes'' des''' bes'' des''' bes''
 des'''8\staccato bes''\staccato g''\staccato e''\staccato cis''\staccato bes'\staccato
 g'\staccato e'\staccato cis'\staccato
 g'\pp\staccato( g'\staccato g'\staccato) g'\staccato( g'\staccato g'\staccato)
 f'8 f' f' f' f' f' e' e' e' e' e' e' a' a' a' gis' r r r dis'' dis'' e'' r r r f'' f'' e'' r r r dis''\sf dis'' e'' r r r f''\sf f'' e''8 f''4\sf
 e''8 f''4\sf e''8 r r R4. R4. r8 e'8\pp\staccato( e'\staccato) e'4. ~ e'4. ~ e'4. ~ e'8 f'\staccato( f'\staccato)
 f'4. ~ f'4. ~ f'4. ~ f'8 f'\pp\staccato( f'\staccato) f'\staccato( f'\staccato f'\staccato) f'\staccato( f'\staccato f'\staccato)
 f'8\staccato( f'\staccato f'\staccato) f'\staccato( f'\staccato f'\staccato) e'4 r8 R4. R4. R4.
 r8 r fis''16\p\staccato fis''\staccato g''16\staccato d''\staccato b'\staccato g'\staccato a'\staccato b'\staccato
 c''\staccato b'\staccato c''\staccato d''\staccato e''8\sf ~
 e''16 a'\staccato d''\staccato c''\staccato b'\staccato a'\staccato
 g'16\staccato d''\staccato g''\staccato f''!\staccato e''\staccato d''\staccato
 e''8\staccato[ g''16.\staccato g''32\staccato g''16.\staccato g''32\staccato] c''8\staccato
 << { f''4\sf ~ f''8[ b8 b^\trill] } \\ { s4 s8 s8 s16 \stemUp \override NoteHead #'font-size = #-2 a32([ b]) } >>
 \new Voice { \stemUp c'8 \stemDown d''\staccato d''\staccato } g''8\staccato[ g''\staccato] g''16\staccato f''\staccato
 e''16\staccato d''\staccato c''\staccato b'\staccato a'\staccato g'\staccato
 fis'8\staccato a'\staccato d'' ~ d''16 c''\staccato b'\staccato a'\staccato g'\staccato f'!\staccato
 e'8\staccato g'\staccato c''\sf ~ c''16 b'\staccato a'\staccato g'\staccato f'\staccato e'\staccato
 \new Voice { \stemUp d'16_\markup { \italic "cresc." } \stemDown g''16 f'' e'' d'' cis'' }
 a''16 g'' f'' e'' d'' c''! b'8\p\staccato g''8.\sf( f''16) e''8\staccato g''8.\sf( c''16)
 << { s4 \override NoteHead #'font-size = #-2 a'16( b') s4 b'16( c'') } \\ { b'8 b' b'^\trill c'' c'' c''^\trill } >>
 d''8\staccato g''8.\sf( f''16) e''8\staccato g''8.\sf( c''16)
 << { s4 \override NoteHead #'font-size = #-2 a'16( b') s4 b'16( c'') } \\ { b'8 b' b'^\trill c'' c'' c''^\trill } >>
 d''8 r16 g''\staccato[ g''\staccato c'''\staccato] b''8 r16 g''[ g'' c''']
 b''16_\markup { \italic "cresc." } g'' g'' c''' b'' g'' g'' c''' b'' g'' g'' c'''
 b''8\f\staccato <g g'>\staccato r8 R4. R4. R4.
 f''8\sf f'' f'' d'''4\sf b''16^\trill([ a''32 b'']) c'''8( f'' e'') d'''4\sf b''16^\trill([ a''32 b'']) c'''8( f'' e'')
 d'''4 b''16^\trill([ a''32 b'']) f'''8\staccato r g'\pp
 e''16\staccato dis''\staccato e''\staccato f''\staccato e''\staccato d''\staccato
 cis''8\staccato cis''\staccato cis''\staccato
 d''16\staccato cis''\staccato d''\staccato e''\staccato d''\staccato c''\staccato
 b'8\staccato b'\staccato b'\staccato c''8\staccato c'''8.( b''16) b''8( a''8. g''16) g''16( fis'') fis''( f'') f''( e'')
 g''16.( e''32) d''8\staccato r R4.
 a''16\pp\staccato gis''\staccato a''\staccato bes''\staccato a''\staccato g''\staccato f''8\staccato r r
 g''16\staccato fis''\staccato g''\staccato a''\staccato g''\staccato f''\staccato e''8\staccato r r
 c'''16\staccato b''\staccato c'''\staccato d'''\staccato c'''\staccato bes''\staccato
 a''\staccato g''\staccato f''\staccato e''\staccato d''\staccato c''\staccato
 b'8\staccato c''4\sf d''8\staccato e''4\sf g''16.([ f''32]) e''8\staccato( d''\staccato) R4.
 e'''16_\markup { \italic "cresc." }\staccato dis'''\staccato e'''\staccato f'''\staccato e'''\staccato d'''\staccato
 c'''\staccato b''\staccato a''\staccato g''\staccato f''\staccato e''\staccato
 d''8\staccato e''4\sf f''8\staccato gis''4\sf a''16.( f''32)
 << { s8 \override NoteHead #'font-size = #-2 c''16( d'') } \\ { e''8\staccato d''^\trill } >> c''8\p r r
 g''!8 g'' g'' g''4. g''8 g'' g'' g''16\staccato g'''\staccato f'''\staccato e'''\staccato d'''\staccato c'''\staccato
 b''\staccato a''\staccato g''\staccato f''\staccato e''\staccato d''\staccato
 c''16 d'' e'' f'' g'' a'' b'' c''' d''' e''' f''' d''' e'''4 r8 g''8 g'' g'' c'''8 r r e''8 e'' e''
 c'''16_\markup { \italic "cresc." } c''' bes'' a'' g'' f'' e'' d'' c'' bes' a' g'
 f'8\ff f' f' fis' fis' fis' g'4 r8 r8 a''16\sf( fis'') a''( fis'') g''4 r8 r8 a''16\sf( fis'') a''( fis'') g''8 r r
 R4. g''8\pp\staccato( g''\staccato g''\staccato) bes''\staccato( bes''\staccato bes''\staccato)
 bes''_\markup { \italic "cresc." } bes'' bes'' a'' a'' a'' b''! b'' b'' c''' c''' c'''
 a''_\markup { \italic "decresc." } a'' a'' g'' g'' g''
 c''8\p r r g''8\pp\staccato g''\staccato g''\staccato c'''\staccato[ c'''\staccato] c'''16\staccato b''\staccato
 a''16\staccato g''\staccato f''\staccato e''\staccato d''\staccato c''\staccato
 b'8\staccato d''\staccato g''\staccato e''\staccato c''\staccato r8
 b'16 b' d'' d'' g'' g'' e''8\staccato c''\staccato r b'16 b' d'' d'' g'' g''
 c''8 r16 g''\staccato d''\staccato g''\staccato e''8 r16 g''\staccato d''\staccato g''\staccato
 e''8 r16 g''\staccato b''\staccato g''\staccato c'''8 r16 g''\staccato b''\staccato g''\staccato
 c'''16\staccato_\markup { \italic "cresc." } g''\staccato b''\staccato g''\staccato c'''\staccato g''\staccato
 b''\staccato g''\staccato c'''\staccato g''\staccato b''\staccato b''\staccato c'''8 r c''\p c''8 r r
 \bar "|."
}