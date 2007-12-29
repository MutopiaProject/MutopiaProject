\version "2.10.3"

 clarinetto = {
 \set Staff.instrumentName =  \markup { \center-align { "Clarinetto" "in B." } }
 \set Staff.midiInstrument = "clarinet"
 \clef treble
 \key a \minor
 \time 4/4
 \once \override Score.MetronomeMark #'transparent = ##t
 \tempo 4 = 146
 \repeat volta 2 {
 g''2\f^\markup { "Allegro con brio" }( gis''2 a''2.\sf) f''4\staccato d''4\staccato b'\staccato g'\staccato f'\staccato
 e'4\staccato c''\staccato r2 R1 a''2.\p\<( f''4\!\> d''4\staccato) r4\! r2 c'''2.\<( e''4\!\> d''4\staccato) r4\! r2 R1 R1
 r8 g'8\p\staccato[ a'\staccato b'\staccato] c''\staccato d''\staccato e''\staccato f''\staccato
 g''2_\markup { \italic "cresc." }( gis''2 a''1~ a''4) a''4^\trill( \grace { gis''16[ a''] } d'''4 c''')
 c'''4( b''2) b''4 d'''4\f( c'''2 b''8 a'') a''4\p( g''2 b'4 c''4\staccato) r4 r2
 R1 r2 r4 g''4( fis''2\< g''4.\!\> b'8 c''4\!\staccato) r4 r4 g''4_\markup { \italic "cresc." }( fis''2 g''4. cis''8)
 d''2 \acciaccatura e''16 d''8( cis'' d'' e'') f''!4( b') b'\staccato b'\staccato c''!4 r4 r2 R1
 r8 g'8\p\staccato[ b'\staccato d''\staccato] g''4\staccato r4 R1
 r8 g'8\staccato_\markup { \italic "cresc." }[ c''\staccato e''\staccato] g''4\staccato cis''4( d''1)~ d''4 r r2
 r4 g''4\sfp~ g''8[ c'''( g'' e''] d''4\staccato) r4 r2 r4 g''4\sfp~ g''8[ c'''( g'' e''] d''4\staccato) r4
 b''4\ff\staccato r g''4\staccato r4 r2 R1 R1 R1 R1 R1 R1 R1 d''2\p_\markup { "   dolce" }(~ d''8[ cis'' d'' cis''])
 d''2( fis'') g''2(~ g''8[ fis'' e'' d'']) d''8[( c'') c''( b')] b'[( a') a'( g')] fis'4( a') r2
 e''2_\markup { \italic "cresc." }( gis''2 a''4) \grace { b''16([ a'' gis''] } a''8 b'') c'''2~ c'''4 fis''(
 a''8[ g''! e'' c''] b'4\p\staccato) d''2( fis'4) g'4 r4 r2 R1 d''1\p~
 d''4 r4 r2 R1 R1 R1 R1 d''4\staccato g''2\sf fis''4\staccato e''4\staccato a''2\sf g''4\staccato
 fis''4\staccato b''2\sf_\markup { \italic "    decresc." }( ais''4 b''4 a''!\p g'' fis'' g''\staccato)
 r4 a'4\f\staccato d''4\sf~ d''4 c''\staccato b'\staccato e''4\sf~ e''4 d''\staccato cis''\staccato fis''4\sf(~
 fis''4\p e'' d'' cis'') R1 fis''8\pp\staccato[ fis''( e'') e'']( d'')[ d''( cis'') cis''\staccato] R1
 fis''8\staccato_\markup { \italic "cresc." }[ fis''( e'') e'']( d'')[ d''( cis'') cis''](
 d''8\f)[ d''( c''!) c'']( b')[ b'( a') a']( g'4) r4 r2 R1 d''4\staccato g''2\sfp g''16( fis'' e'' d'')
 c''16( d'' fis'' a'' c''' a'' fis'' d'' c'' a' fis' d' c' d' a d')
 b4\staccato r4 r2 d''2._\markup { \italic "cresc." }( e''8 fis'')
 g''8\f\staccato[ d'''\staccato c'''\staccato b''\staccato] a''\staccato[ g''\staccato fis''\staccato e''\staccato]
 d''4\staccato c''\staccato b'\staccato a'\staccato R1 R1 e''2\ff( c''4\staccato) r4
 d''4\p\staccato b'\staccato c''\staccato a'\staccato e''2_\markup { \italic "cresc." }( d''2) c''2( b') a'4 r r2
 r2 g''4.\sf( cis''8) d''4\p r4 r2 r2 g''4.\sf( d''8)
 c''!4\staccato_\markup { \italic "cresc." } fis''8.( a''16) c'''4\staccato c'''\staccato
 \afterGrace a''1\f \startTrillSpan { g''16[ \stopTrillSpan a''] } g''4 r4 r2 R1 R1 R1
 r2 r8 d''8\p\staccato[ g''\staccato b''\staccato] d'''4\staccato c'''2\sf_\markup { \italic "    cresc." }( a''8 fis'')
 a''4\staccato g''2\sf( d''8 b') d''4\staccato c''2\sf( a'8 fis') g'4 r b''\ff r g''4 r r2 }

 R1 R1 R1 R1 R1 R1 R1 f''!1\p(~ f''2\< g''\! aes''\> f''\! ees''4) r4 r2 f''2( aes'') d''( f'')
 ees''8([ d'' f'' ees''] g''[ f'' aes'' g'']) bes''2_\markup { \italic "cresc." }( b'') c'''2.\sfp aes''4\staccato
 f''4\staccato d''\staccato bes'\staccato aes'\staccato g'4\staccato r r2 R1
 r2 r4 bes''4\f\staccato g''\staccato e''! c''\staccato bes'\staccato aes'\staccato r4 r2 R1
 r2 r4 c'''4\f\staccato a''!\staccato fis''\staccato d''\staccato c''\staccato bes'\staccato r r2 R1
 r2 r4 d'''4\f\staccato b''!\staccato gis''\staccato e''\staccato d''\staccato c''2\ff( a''~ a'' dis'') e''1\fp( f''2 fis'')
 g''!1\fp~ g''1~ g''2\<( b''\! c'''\> ees'' d''4\!) r4 r2 R1 r2 r4 g''4\staccato
 g''2.\sf\<( f''8 ees'' d''4\!\staccato) r4 r2 R1 r2 r4 g''4\staccato
 g''2.\sf\<( f''8 ees'' d''4\!\staccato) r ees''2\p( d''4\staccato) r4 ees''2\pp( d''4\staccato) r4 r2
 R1 R1 R1 g''2\ff( gis''\sf a''2.\sf) f''4\staccato
 d''4\staccato b'\staccato g'\staccato f'\staccato e'4\staccato c''\staccato r2 R1
 a''2.\p\<( f''4\!\> d''4\staccato) r4\! r2 R1 R1 f''4\p( fis'') g''2\sf(~ g''8[ f''!\f e'' d''] c''[ bes' a' g']) f'4 r r2
 R1 r2 r4 c''4\p( b'!2 c''4. e'8 f'4\staccato) r4 r f''4( e''2_\markup { \italic "cresc." } f''4. a'8)
 g'2 \acciaccatura a''16 g''8( fis'' g'' a'') bes''4( e'') e''\staccato e''\staccato f''!4 r4 r2 R1
 r8 a'8\staccato[ cis''\staccato e''\staccato] a''4\staccato r4 R1
 r8 a'8\staccato_\markup { \italic "cresc." }[ d''\staccato f''\staccato] a''4\staccato r4
 r2 r4 f''4\f f''2(~ f''8[ e'' f'' e'']) f''4\staccato r4 r2 g''2\p( b''2) c'''2(~ c'''8[ b'' a'' g''])
 g''8[( f'') f''( e'')] e''[( d'') d''( c'')] b'4( d'') r2 a''2_\markup { \italic "cresc." }( cis'''2)
 d'''2(~ d'''8[ c'''! b'' a'']) g''4^\trill( \grace { fis''16[ g''] } a''8 b'') d'''8[( c''') a''\staccato f''\staccato]
 e''4\p\staccato g''2( b'4 c''4) r4 r2 R1 g''1\p~ g''4 r4 r2 R1 R1 R1 g'1
 g'4\staccato c''2\sf b'4\staccato a'\staccato d''2\sf c''4\staccato
 b'4\staccato e''2\sf dis''4_\markup { \italic "decresc." }( e''4 d''!\p c'' b')
 r2 d''4\f\staccato g''4\sf~ g''4 f''\staccato e''\staccato a''\sf~ a'' g''\staccato fis''\staccato
 b''\sf(~ b''4\p a'' g'' fis'') R1 b''8\pp\staccato[ b''( a'') a'']( g'')[ g''( fis'') fis''\staccato] R1
 b''8\staccato[ b''_\markup { \italic "cresc." }( a'') a'']( g'')[ g''( fis'') fis''](
 g''\f)[ g''( f''!) f'']( e'')[ e''( d'') d'']( c''4\staccato) r4 r2 R1
 g''4\staccato c'''2\sfp c'''16( b'' a'' g'') f''16 g'' b'' c''' d''' b'' g'' f'' d'' b' g' f' d' b g f e4\staccato r4 r2
 g'2._\markup { \italic "cresc." }( a'8 b') c''8\f\staccato[ g''\staccato f''\staccato e''\staccato]
 d''8\staccato[ c''\staccato b'\staccato a'\staccato] g'4\staccato f'\staccato e'\staccato d'\staccato R1 R1
 a''2\ff( f''4\staccato) r4 g''4\p\staccato e''\staccato f''\staccato d''\staccato
 a''2_\markup { \italic "cresc." }( g''2) f''2( e'') d''4 r4 r2 r2 c''4.\sf( fis'8) g'4\p r4 r2
 r2 g''4.\sf( e''8) d''4 r4 r2 \afterGrace b''1 \startTrillSpan { a''16[ \stopTrillSpan b''] } c'''4 r4 r2
 R1 R1 R1 r2 r8 g'8\p\staccato[ c''\staccato e''\staccato]
 g''4\staccato f''2\sf_\markup { \italic "    cresc." }( d''8 b') d''4\staccato c''2\sf( g'8 e')
 f'4\staccato f''2\sf( d''8 b') c''4\f\staccato r e''4\staccato r c''4\staccato r4 r2
 c''4\ff\staccato r a''4\staccato r c''\staccato r r2
 b'4\ff\staccato r \times 2/3 { b8([ d' f'] } \times 2/3 { g'8[ b' d'']) } f''4\staccato r4 r2
 R1 R1 R1 r8 e'8\p\staccato[ f'\staccato g'\staccato] a'\staccato[ b'\staccato c''\staccato d''\staccato]
 e''4\staccato_\markup { \italic "cresc." } e''2 e''4~ e''4 e''4^\trill( \grace { d''16[ e''] } g''4 f''4)
 e''2\ff( f''4. d''8) c''4 r4 r2^\fermata \bar "|."
}