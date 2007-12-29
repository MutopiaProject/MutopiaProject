\version "2.10.3"

 violinoprincipale = {
 \set Staff.instrumentName = \markup { \center-align { "Violino" "principale." } }
 \set Staff.midiInstrument = "violin"
 \clef treble
 \key g \major
 \time 4/4
 \partial 2 <b g'>4^\markup { "SOLO." }( <c' fis'>) << { <b g'>4.( <d' a'>8 <g' b'>4 d''8. c''16) b'4( a'8) } \\
 { s2 s4 e'4 d'4. } >> r8 <dis' b'>4\staccato( <a' b'>4\staccato)
 \set doubleSlurs = ##t <g' b'>4.( <e' e''>8) \set doubleSlurs = ##f <a' d''>4\staccato( <a' cis''>4\staccato)
 << { d''4(~ d''16[ cis'' c'' a']) } \\ { d'4. c'8\rest } >> g'4 r4 R1 R1 R1
 r8 d'8^\markup { "SOLO." }([ fis' a']) <d' d''>4( <e' cis''> <fis' c''!> <g' b'>) <c' a'>4.( <cis' g'>8)
 << { g'4( fis') } \\ { d'4.( c'!8) } >> <b g'>4( <b gis'>4) << { a'4( e''8) } \\ { c'4. } >> r8
 << { g'!4( b'8. a'16) } \\ { d'4 d'4 } >> <g g'>8 <g' b'>([ <fis' a'> <e' cis''>]) <d' d''>4 r4 R1
 R1 R1 R1 R1 R1 R1 r2 e''16^\markup { "SOLO." }( d'' c'' b' d'' c'' b' a')
 g'4.( gis'8 a'8 b' c'' fis') a'4( g'!8) r8 d''16( cis'' d'' cis'' e''32[ d'' c'' b' d'' c'' b' a'])
 g'4(~ g'16 fis') g'\staccato( gis'\staccato) a'\staccato( b'\staccato c''\staccato cis''\staccato)
 d''16\staccato( dis''\staccato e''\staccato fis'\staccato) g'!4 r8 g'8 g''8..[ fis''32] e''8..[ d''!32]
 d''4( cis''8) cis''( a''8..)[ g''32] fis''8..[ e''32] e''4( d''8) d''( d'''4. cis'''16 b'')
 b''4( a''4_\markup { \italic "cresc." }~ a''16[ ais'' b'' ais''] cis'''[ b'' a'' g''])
 g''8\p( fis'')~ fis''16( a'' g'' e'') e''8( d'')~ d''16( fis'' e'' cis'') d''8 r8 r4 r2
 a''4~ a''16( b'' cis''' d''') d'''( cis''') b''\staccato a''\staccato a''( g'') fis''\staccato e''\staccato d''8 r8 r4 r2
 a''16( gis'' a'' gis'') a''( fis''' e''' d''') d'''( cis''') b''\staccato a''\staccato a''( g'') fis''\staccato e''\staccato
 d''4 r16 d''16\staccato[ cis''\staccato d''\staccato] e''\staccato fis''\staccato g''\staccato a''\staccato
 b''16\staccato g''\staccato e''\staccato cis''\staccato e''8( d'') r16 d''16( cis'') d''( e'') fis''( g'') a''( b'') g''( e'') cis''(
 e'') d''( cis'') d''( e'') fis''( g'') a''( bes'') b''( d''') c'''!( b'') a''( g'') fis''( e'') d''( cis'') c''( b') d''( c'') a'
 << { g'4( fis') g'4.( a'8 b'4 d''8. c''16) b'4( a' b' b') b'4.( e''8 d''4 cis'') d''4(~ d''16 cis'' c'' a') } \\
 { b8[ d' c' d'] b[ d' b d'] g'[ f'] e'[ a'] g'[ d' fis'! d'] dis'[ fis' a' fis'] g'[ fis' g' e'] a'[ gis' a' a'] d'4. c'8\rest } >> g'!4 r4
 R1 R1 R1 r2 << { d''4^\markup { "SOLO." } cis''4 c''!4 b' a'4. g'8 g'4 fis' g' gis' a'4( e''8) d''8\rest
 g'!4( b'8. a'16) } \\ { d'8([ d' e' d'] fis'[ d' g' b]) c'([ b c' cis']) d'([ cis' d' c']) b([ d' f' b]) c'4. cis'8 d'4 d' } >>
 <g g'>8 r8 r4 r2 R1 R1 R1 R1 R1 R1 R1 r2 r4 r8 b'8^\markup { "SOLO." }
 e''8.[ fis''16\staccato g''8\staccato e''8\staccato] \acciaccatura b'16 b''4.\sf a''8
 a''16( g'') fis''\staccato e''\staccato dis''16([ e'']) e''16.^\trill([ dis''64 e'']) fis''4 r8 b'8
 e''8.[ fis''16\staccato g''8\staccato e''\staccato] \acciaccatura b'16 b''2\sf~ b''16([ fis'' d''! b'])
 \acciaccatura d''32 cis''16.([ b'32 cis''16. d''32]) b'4 r8 b'8
 \acciaccatura fis''32 e''16\staccato dis''\staccato e''\staccato fis''\staccato
 g''16\staccato fis''\staccato g''\staccato e''\staccato
 b''_\markup { \italic "sempre staccato" } ais'' b'' c''' b'' a'' g'' fis''
 g''16 fis'' e'' dis'' e'' fis'' g'' ais'' b'' b' ais' b' c'' cis'' d'' dis''
 e''16 dis'' e'' fis'' g'' gis'' a'' ais'' b'' ais'' b'' cis''' d'''! dis''' e''' eis'''
 fis'''16 eis''' fis''' eis''' fis''' e''' d'''! cis''' b''4 r8 b''8
 gis''8.[ e''16\staccato fis''8\staccato gis''\staccato] b''8( a'') r16 e''16([ c'''! b''])
 b''16[( a'') a''( g''!)] g''[( fis'') fis''( e'')] dis''8( fis'') r8 b'
 e''8.[ fis''16\staccato g''8\staccato e''\staccato] \acciaccatura a'32 c'''4.\sf b''32([ a'' g'' fis''])
 e''4 \acciaccatura g''32 fis''16.[ e''32 fis''16. g''32] e''4 r16 b'16\staccato[ b''\staccato a''\staccato]
 gis''16\staccato fis''\staccato e''\staccato dis''\staccato e''\staccato fis''\staccato g''\staccato gis''\staccato
 a''16_\markup { \italic "sempre staccato" } a' c'' e'' a'' e'' c''' b''
 a''16 b'' g''! a'' fis'' g'' e'' fis'' dis'' b' ais' b' c'' cis'' d'' dis''
 e'' dis'' e'' fis'' g'' fis'' g'' e'' c''' b'' c'''\sf b'' c''' b'' c''' b''
 c'''16 b'' c'''\sf b'' c''' b'' c''' b'' c''' b'' a'' g'' fis'' g'' a'' b'' c''' b'' a'' g'' fis'' g'' a'' b''
 c''' b'' a'' g'' fis'' e'' d'' c'' b' a' g' fis' e' d' cis' d' ees' e' f' fis' g' gis' a' ais'
 b'16 c'' cis'' d'' ees'' e'' f'' fis''
 g''4( fis'' g''4. a''8 b''4^\markup { \translate #(cons 6 1) { \musicglyph #"scripts.turn" } } d'''8.[ c'''16])
 b''4( a''8) r8 \override TupletBracket #'transparent = ##t
 \set tupletSpannerDuration = #(ly:make-moment 1 8) \times 2/3 { b16[ dis' fis'] b'[ dis'' fis''] }
 \override TupletNumber #'transparent = ##t \times 2/3 { b''16[ b'' b'' b'' b'' b''] }
 b''8^\markup { \translate #(cons 3 1) { \musicglyph #"scripts.turn" } }( cis'''16 dis''' e''' fis''' g''' e''')
 d'''4^\markup { \translate #(cons 6 1) { \musicglyph #"scripts.turn" } }( fis'''8. e'''16)
 d'''8 r8 r4 d'''4( cis''' c'''! b'') b''16([ a'' gis'' a''] gis''[ a'' b'' g''])
 g''4( fis'') g''16( fis'' g'' fis'' g'' fis'' g'' gis'')
 a''8.^\markup { \translate #(cons 4 1) { \musicglyph #"scripts.turn" } }( b''16 c''' d''' dis''' e''')
 g''!4^\markup { \translate #(cons 6 1) { \musicglyph #"scripts.turn" } }( b''8. a''16) g''8 r8 r4 r2 R1
 r8 d'''8^\markup { "SOLO" }[ d''' d'''] \startTrillSpan d'''2 d'''1 d'''2~ d'''4. dis'''8 \stopTrillSpan
 e'''4~ e'''32([ dis''' fis''' e''' d''' c''' b'' a'']) a''8( g''4 a''16.[ fis''32])
 g''8 r8 r4 \acciaccatura d''16 d'''4(~ d'''16[ cis''' c''' a''])
 g''8 r8 r4 \acciaccatura d''16 d'''4(~ d'''32[ cis''' e''' d''' c''' b'' c''' a''])
 g''8 r r4 <d' b' g''>8\ff r <d' b' b''> r g2^\fermata \bar "|."
}
