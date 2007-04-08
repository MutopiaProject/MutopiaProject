\version "2.10.3"

 violinoprincipale = {
 \set Staff.instrumentName = \markup { \center-align { "Violino" "principale." } }
 \set Staff.midiInstrument = "violin"
 \clef treble
 \key f \major
 \time 4/4
 f''2^\markup { \translate #(cons 6 1) { \musicglyph #"scripts.turn" } } a''8.([ g''16 bes''8. g''16])
 f''4~ f''16( e'' g'' e'') c''4 r8 c''8 f''4 \appoggiatura a''16 g''16( fis'' g'' gis'') a''4 \appoggiatura c'''16 bes''16( a'' bes'' d''')
 a''4~ a''16( bes'' b'' c''') g''!4 r8 c''8
 bes''!4.( g''16.^\trill fis''64 g'' e''8\staccato) f''8( e'' f'') bes''4.( g''16.^\trill fis''64 g'' e''8\staccato) c'''8( b'' c''')
 d'''4~ d'''16
 \once \override TextScript #'script-priority = #-100
 d'''16^\turn^\markup { \sharp } e'''\staccato f'''\staccato
 f''4.( a''16 g'') g''4.( c'''16 e'' f''8) r8 r4 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 a''2^\markup { \translate #(cons 9 1) { \musicglyph #"scripts.turn" } } c'''4.( e''8) f''4.( a''16 g'') g''4.( bes''16 a'')
 a''4.( bes''16 c''' d''' e''' f''' e''' f''' d''' c''' bes'') a''4~ a''16( c''' b'' c''') g''4 r a'2 g'''2~
 g'''16( f''' e''' d''' cis''' d''' f''' d''') c'''( bes'' d''' bes'' a'' g'' f'' e'')
 a''8..( bes''32) d''2^\markup { \translate #(cons 8 -1) { \musicglyph #"scripts.turn" } }( f''8 e'') d''4 r r2
 g2 f'''4~ f'''32[ d'''( b'' g'' f'' d'' b' f')] e'32[ fis' g' fis'] g'[ b' c'' b'] c''[ dis'' e'' dis''] e''[ fis'' g'' fis'']
 g''32[ b'' c''' b''] c'''[ dis''' e''' dis'''] e'''[ d''' c''' b''] a''[ g'' f'' e'']
 d''32\staccato[ a'\staccato b'\staccato cis''\staccato] d''\staccato[ e''\staccato f''\staccato e''\staccato]
 d''\staccato[ a'\staccato b'\staccato cis''\staccato] d''\staccato[ e''\staccato f''\staccato e''\staccato]
 d''\staccato[ a'\staccato b'\staccato cis''\staccato] d''\staccato[ e''\staccato f''\staccato g''\staccato]
 a''[( g'') f'' e''] d''[ c'' b' a'] g'16[ a'32 b'] c''[ d'' e'' f''] g''16[ a''32 b''] c'''[ d''' e''' f'''] g'''8[ a''' b''' c'''']
 \afterGrace d''2^\trill { cis''16[ d''] } \afterGrace g''2^\trill { fis''16[ g''] } c''!4 r r2
 r8 c''16\staccato([ d''\staccato] e''\staccato[ f''\staccato g''\staccato gis''\staccato]) a''([ gis'' a'' f'']) c'''([ b'' c''' a''])
 g''!4 r r2 r8 c''16[ d''] e''[ f'' fis'' g''] aes''16.([ f''32 c'''16. aes''32]) f'''8..( aes''32)
 \override TupletBracket #'transparent = ##t
 \override TupletNumber #'transparent = ##t
 \set tupletSpannerDuration = #(ly:make-moment 1 8)
 \times 2/3 { g''16[ c''' b''] c'''[ b'' c'''] aes''[ c''' b''] c'''[ b'' c'''] g''[ c''' b''] c'''[ b'' c'''] aes''[ c''' b''] c'''[ b'' c''']
 b''[ c''' b''] c'''[ b'' c'''] b''[ c''' b''] c'''[ b'' c'''] b''[ c''' d'''] c'''[ bes'' a''!] g''[ a'' bes''] a''[ g'' f'']
 e''[ f'' g''] f''[ e'' d''] c''[ cis'' d''] ees''[ e'' f''] fis''[ g'' gis''] a''[ bes'' b''] c'''![ b'' d'''] c'''[ bes'' g''] }
 f''!2^\markup { \translate #(cons 9 1) { \musicglyph #"scripts.turn" } } a''8.([ g''16 bes''8. g''16])
 f''4~ f''16( e'' g'' e'') c''4 r8 c''8 f''4 \appoggiatura a''16 g''16( fis'' g'' gis'') a''4 \appoggiatura c'''16 bes''16( a'' bes'' d''')
 a''4~ a''16( bes'' b'' c''') g''!4 r8 c''8 bes''!4.( g''16.^\trill fis''64 g'' e''8\staccato) f''8( e'' f'')
 bes''4.( g''16.^\trill fis''64 g'' e''8\staccato) c'''8( b'' c''')
 d'''4~ d'''16
 \once \override TextScript #'script-priority = #-100
 d'''16^\turn^\markup { \sharp } e'''\staccato f'''\staccato
 f''4.( a''16 g'') g''4.( c'''16 e'' f''8) r8 r4 R1 R1 R1 R1 R1 R1
 R1 R1 R1 R1 f'''2 c'''4.( aes''16 f'') e''8.( f''16) g''8.( aes''16) bes''8.( c'''16) des'''8.( e''16)
 f''4 f' aes''4~ aes''16[( g''32 aes'') bes''16\staccato aes''\staccato]
 \set tupletSpannerDuration = #(ly:make-moment 1 8)
 \times 2/3 { ges''16\staccato[ f''\staccato ges''\staccato] bes''\staccato[ aes''\staccato ges''\staccato]
 f''\staccato[ ees''\staccato des''\staccato] c''\staccato[ bes'\staccato aes'\staccato]
 g'!\staccato[ aes'\staccato bes'\staccato] c''\staccato[ des''\staccato ees''\staccato]
 f''\staccato[ ges''\staccato ees''\staccato] c''\staccato[ aes'\staccato ges'\staccato]
 f'[ des' ees'] f'[ ges' aes'] bes'[ c'' des''] ees''[ f'' ges''] aes''[ bes'' c'''] des'''[ ees''' e'''] } f'''8\staccato[ a!\staccato]
 bes8 \set tupletSpannerDuration = #(ly:make-moment 1 8)
 \times 2/3 { bes''16[ a''! bes''] ees''[ d''! ees''] ges''[ f'' ges''] c''[ b' c''] ees''[ d'' ees''] ges'[ bes' aes'] ges'[ f' ees'] }
 des'2 f'8..([ ees'32 ges'8.. ees'32]) des'4~ des'16 c'( ees' c') aes8 r8 r4 R1 R1 R1
 r2 c''16\staccato g'\staccato c''\staccato e''\staccato g''\staccato e''\staccato g''\staccato e''\staccato
 c''8 r8 r4 g''16\staccato c''\staccato e''\staccato g''\staccato c'''\staccato g''\staccato c'''\staccato g''\staccato
 e''8 r r4 r2 c'''16 e'' g'' c''' e''' c''' e''' c''' e''' g'' c''' e''' g''' e''' g''' e''' c'''8 r r4 r2
 g''16\staccato e''\staccato g''\staccato e''\staccato g''\staccato e''\staccato g''\staccato e''\staccato
 aes''\staccato f''\staccato aes''\staccato f''\staccato a''\staccato fis''\staccato a''\staccato fis''\staccato
 bes''\staccato g''\staccato bes''\staccato g''\staccato bes''\staccato g''\staccato bes''\staccato g''\staccato
 c'''\staccato a''\staccato c'''\staccato a''\staccato cis'''\staccato a''\staccato cis'''\staccato a''\staccato
 d'''16( cis''' d''' bes'') c'''( b'' c''' a'') bes''( a'' bes'' g'') a''( gis'' a'' fis'')
 g''!32([ a'' bes'' a''] c'''[ bes'' d''' c'''] bes''[ c''' a'' bes''] g''[ a'' fis'' a''])
 g''([ a'' bes'' a''] c'''[ bes'' d''' c'''] bes''[ c''' a'' bes''] g''[ a'' fis'' a''])
 g''([ a'' bes'' a''] c'''[ bes'' a'' bes''] g''[ a'' fis'' g''] e''[ fis'' d'' e'']
 c''[ e'' d'' fis''] e''[ g'' fis'' a''] g''[ bes'' a'' c'''] bes''[ a'' bes'' g''])
 f''2^\markup { \translate #(cons 9 1) { \musicglyph #"scripts.turn" } } a''8.([ g''16 bes''8. g''16])
 f''4~ f''16( e'' g'' e'') c''4 r8 c''8 \appoggiatura g''16 f''16 e'' f'' fis'' \appoggiatura a''16 g''16 fis'' g'' gis''
 \appoggiatura bes''16 a''16 gis'' a'' c''' bes''16 c''' d''' bes''
 a''4~ a''32[ c''' f''' e''' d''' c''' bes'' a''] g''!4 r8 c''8
 bes''4.( g''16^\trill fis''32 g'' e''8\staccato) f''8([ e'' f'']) bes''4.( g''16^\trill fis''32 g'' e''8\staccato) c'''8([ b'' c'''])
 d'''4~ d'''16
 \once \override TextScript #'script-priority = #-100
 d'''16\staccato^\turn^\markup { \sharp } e'''\staccato f'''\staccato f''4.( a''16 g'') f''4 r r2 R1
 R1 r16 a'\staccato gis'\staccato a'\staccato bes'\staccato b'\staccato c''\staccato cis''\staccato
 d''\staccato ees''\staccato e''\staccato f''\staccato fis''\staccato g''\staccato gis''\staccato a''\staccato
 bes''!\staccato c'''!\staccato cis'''\staccato d'''\staccato d''\staccato e''\staccato f''!\staccato fis''\staccato
 g''!\staccato a''\staccato bes''\staccato a''\staccato bes''\staccato a''\staccato bes''\staccato a''\staccato
 bes''32([ a'' d''' c'''!]) bes''([ a'' d''' c''']) bes''([ a'' d''' c''']) bes''([ a'' d''' c'''])
 bes''32([ a'' d''' c''']) bes''([ a'' d''' c''']) bes''([ a'' g'' f''!] e''[ d'' c'' bes'])
 a'16\staccato bes'\staccato c''\staccato d''\staccato e''\staccato f''\staccato g''\staccato a''\staccato
 bes''\staccato b''\staccato c'''\staccato cis'''\staccato d'''\staccato e'''\staccato f'''\staccato a''\staccato
 r16 fis''( a'' g'') r a''( c'''! bes''!) r cis'''( e''' d''') r e'''( f'''! d''')
 \set tupletSpannerDuration = #(ly:make-moment 1 8)
 \times 2/3 { c'''!16\staccato[ f'''\staccato e'''\staccato] d'''\staccato[ c'''\staccato b''\staccato]
 c'''\staccato[ f'''\staccato e'''\staccato] d'''\staccato[ c'''\staccato b''\staccato]
 c'''[ f''' e'''] d'''[ c''' b''] d'''([ c''' b''] } d'''32[ c''' bes'' a''])
 \afterGrace g''2^\trill { fis''16[ g''] } \afterGrace c'''2^\trill { b''16[ c'''] } f''!4 r r2
 d'''4. \appoggiatura d'''16 c'''16[ bes''] \appoggiatura c'''16 bes''16[ a'']
 \appoggiatura bes''16 a''16[ g''] \appoggiatura a''16 g''16[ f''] \appoggiatura g''16 f''16[ e''] f''4 r r2
 d'''4~ d'''16[ cis'''32( d'''] e'''32[ d''' c''' bes''] c'''[ bes'' a'' g''] a''[ g'' f'' e''] f''[ e'' d'' c''] b'[ c'' d'' e''])
 f''8 g''16 a'' bes''! c''' d''' e''' f''' a'' bes'' c''' d'''_\markup { \italic "calando" } e''' f''' g'''
 a'''16 c''' d''' e''' f''' g''' a''' bes''' c''''4.( a'''8) f'''4 r r2 R1 \bar "||"
}