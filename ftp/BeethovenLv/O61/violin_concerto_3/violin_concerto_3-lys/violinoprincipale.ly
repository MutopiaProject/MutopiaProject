\version "2.10.3"

 violinoprincipale = {
 \set Staff.instrumentName = \markup { \center-align { "Violino" "principale." } }
 \set Staff.midiInstrument = "violin"
 \clef treble
 \key d \major
 \partial 8 d'8\p\staccato a4^\markup { "ten." }( d'8) fis'8([ a']) d'8\staccato a4( d'8) fis'8([ a']) g' e'4( fis'8) d'4( e'8)
 cis'8\staccato[ cis'\staccato d'^\trill]( e'8) r8 d'8\staccato
 a4^\markup { "ten." }( d'8) fis'8([ a']) d'8\staccato a4^\markup { "ten." }( d'8) fis'8([ a']) g'8 e'4( fis'8) d'4( e'8)
 b8[( e') cis'\staccato] d'8 r a e'4( fis'8^\trill g'8[ e']) r r4 r8 r4^\fermata
 d'''8\staccato_\markup { \italic "delicatamente" } a''4^\markup { "ten." } d'''8\staccato fis'''8([ a''']) d'''\staccato
 a''4^\markup { "ten." } d'''8\staccato fis'''8([ a''']) g''' e'''4( fis'''8) d'''4( e'''8)
 cis'''8\staccato[ cis'''\staccato d'''^\trill]( e''') r d'''8\staccato
 a''4^\markup { "ten." } d'''8\staccato fis'''8([ a''']) d'''\staccato a''4^\markup { "ten." } d'''8\staccato fis'''8([ a''']) g'''
 e'''4( fis'''8) d'''4( e'''8) b''8[( e''') cis'''\staccato] d'''4 r8
 R2. r4 r8 r4^\fermata r8 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2.
 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. r4 a''8\staccato d''4\staccato a''8\staccato
 \appoggiatura a''16 a'''2.\sf~ a'''4.\> g'''8\!([ fis''' e''']) d'''8([ e''' fis'''] g'''[ e''') fis'''\staccato]
 e'''16[ a' b' cis'' d'' e''] fis''[ gis'' a'' b'' cis''' d'''] e'''2.~ e'''4. d'''16([ e'' cis''' e'' b'' e''])
 a''16([ e'' b'' e'' cis''' e'']) d'''([ e'' b'' e'' cis''' e'']) b''4 r8 r4 gis''16[ e'']
 a''16[ e'' b'' e'' cis''' e''] d'''[ e'' b'' e'' cis''' e''] b''4 r8 r4 gis''16[ e'']
 a''16[ e'' b'' e'' cis''' e''] d'''[ e'' b'' e'' cis''' e''] b''([ e'' dis'' e'' gis'' b'']) e'''([ e'' dis'' e'' gis'' b''])
 e'''16[ b'' gis'' e'' b' gis'] e'16\f[ fis' e' d' cis' b] a4 r8 r4 r8 r4 r8 r8 <a' cis'''>8\staccato[ <fis'' a''>\staccato]
 <d'' fis''>4( <b' d''>8 <gis' b'>4 <a' cis''>8) \set doubleSlurs = ##t <gis' b'>4.( <e' e''>4) r8 R2.
 \set doubleSlurs = ##f r4 r8 r8 <a' c'''>8\staccato[ <fis'' a''>\staccato]
 << { fis''4.( gis''4.) a''4.~ a''8 } \\ { dis''4( b'8 d''4 e''8) c''4.( a'8) } >> <a' c'''>8\staccato[ <fis'' a''>\staccato]
 << { fis''4.( gis''4.) } \\ { dis''4( b'8 d''4 e''8) } >> <cis''! a''>16[ a' b' a' <cis'' a''> a']
 <d'' b''>[ a' <e'' cis'''> a' <fis'' d'''> a'] <g''! e'''>[ a' <fis'' d'''> a' <e'' cis'''> a']
 <d'' b''>[ a' <cis'' a''> a' <b' gis''> a'] <cis'' a''>[ a' b' a' <cis'' a''> a'] <d'' b''>[ a' <e'' cis'''> a' <fis'' d'''> a']
 <g''! e'''>16[ a' <fis'' d'''> a' <e'' cis'''> a'] <d'' b''>[ a' <cis'' a''> a' <b' gis''> a']
 <cis'' a''>[ a' b' a' <cis'' a''> a'] <d'' b''>[ a' <cis'' a''> a' <b' gis''> a']
 << { s8 a'16 s16 s8 } \\ { <cis'' a''>16_\markup { \italic "cresc." }[ a' s16 a' <cis'' a''> a'] } >>
 <d'' bes''>16[( bes') <d'' bes''>( bes') <d'' bes''>( bes')] <d'' bes''>[( bes') <d'' bes''>( bes') <d'' bes''>( bes')]
 <d'' bes''>16[( bes') <d'' bes''>( bes') <d'' bes''>( bes')] bes''\f[ ges'' ees'' ges'' bes'' ges'']
 ais''\p[ e'' cis''! e'' ais'' e''] b''![ d'' b'! d'' b'' d''] gis''[ d'' b' d'' gis'' d'']
 << { s8 a'16 s16 s8 } \\ { <cis'' a''>16_\markup { \italic "cresc." }[ a' s16 a' <cis'' a''> a'] } >>
 bes'16[ bes'' d'' bes'' bes' bes''] d''[ bes'' bes' bes'' d'' bes''] bes'[ bes'' d'' bes'' bes' bes'']
 bes''\f[ ges'' ees'' ges'' bes'' ges''] ais''\p[ fis''! cis''! fis'' ais'' fis'']
 b''!16[ b' d'' fis'' b'' a''] gis''[ b' d'' e'' gis'' e''] e'''[ cis''' a'' cis''' a'' e''] a''[ e'' cis'' e'' cis'' a']
 e''[ cis'' a' cis'' a' e'] a'[ e' cis' e' cis' a] d''[ b' gis' b' gis' e'] gis'[ e' d' e' d' b]
 d''[ b' gis' b' gis' e'] gis'[ e' d' e' d' b] e'''\f[ cis''' a'' cis''' a'' e''] a''[ e'' cis'' e'' cis'' a']
 g''!\p[ e'' cis'' e'' cis'' g'!] cis''[ g' e' g' e' cis'] e'\f[ cis' g g' e' cis'] e'[ cis' g g' e' cis']
 e'\p[ cis' g g' e' cis'] e'[ cis' g g' e' cis'] g8 bis16([ cis']) dis'([ e']) fis'([ g']) bis'([ cis'']) dis''([ e''])
 g''16[( e'') cis'''\staccato g''\staccato e'''\staccato cis'''\staccato] g'''8[ g''' g''']

 g'''2.\>( \cadenzaOn cis'''4.\!)~ \startTrillSpan cis'''4^\fermata \stopTrillSpan
 \override NoteHead #'font-size = #-2 e'''8\staccato([ d'''\staccato]) cis'''4\staccato^\fermata
 \override NoteHead #'font-size = #0 d'8\staccato \cadenzaOff \bar "|"
 a4\p^\markup { "ten." }( d'8) fis'8([ a']) d'8\staccato a4( d'8) fis'8([ a']) g' e'4( fis'8) d'4( e'8)
 cis'8\staccato[ cis'\staccato d'^\trill]( e'8) r8 d'8\staccato
 a4^\markup { "ten." }( d'8) fis'8([ a']) d'8\staccato a4^\markup { "ten." }( d'8) fis'8([ a']) g'8 e'4( fis'8) d'4( e'8)
 b8[( e') cis'\staccato] d'8 r a e'4( fis'8^\trill g'8[ e']) r r4 r8 r4^\fermata
 d'''8\staccato_\markup { \italic "delicatamente" } a''4^\markup { "ten." } d'''8\staccato fis'''8([ a''']) d'''\staccato
 a''4^\markup { "ten." } d'''8\staccato fis'''8([ a''']) g''' e'''4( fis'''8) d'''4( e'''8)
 cis'''8\staccato[ cis'''\staccato d'''^\trill]( e''') r d'''8\staccato
 a''4^\markup { "ten." } d'''8\staccato fis'''8([ a''']) d'''\staccato a''4^\markup { "ten." } d'''8\staccato fis'''8([ a''']) g'''
 e'''4( fis'''8) d'''4( e'''8) b''8[( e''') cis'''\staccato] d'''4 r8 R2. r4 r8 r4^\fermata r8 R2. R2. R2. R2. R2.
 R2. R2. R2. R2. r4 r8 r4 a''8\f d''4 fis''!8 a''8( d''') d''\staccato
 a''8_\markup { \italic "dimin." }( d''') d''\staccato a''8( d''') d''\staccato a''8\p( d''' d'') a''( d''' d'')
 a''8( d''' d'') d'''8 d''' d''' d'''8( bes'' g'' a'' fis'' d'') g''4.~ g''8( a'' bes'')
 c'''8_\markup { \italic "dolce" }( d''' ees''' f''' g''' ees''') d'''4.( bes''8) d''' d'''
 d'''8( bes'' g'' a'' fis'' d'') g''4.~ g''8( a'' bes'') a''( gis'' a'' e''! g''! f'')
 d''16( cis''! d'' e'' fis''! g'' a'' bes'' c''' a'' bes'' c''') d'''16( cis'''! d''' bes'' g'' bes'' a'' gis'' a'' fis''! d'' fis'')
 g''!16( d'' bes' g' d' bes) g4 r8 g''16( ees'' c'' g' ees' c') g4 r8
 g''16( d'' bes'\staccato g'\staccato d'\staccato bes\staccato d' g' bes'\staccato d''\staccato g''\staccato bes''\staccato)
 d'''16( cis'''! d''' bes'' g'' bes'' a'' gis'' a'' fis''! d'' fis'')
 g''16 d'' bes' g' d' bes g d' cis'! d' bes g a16([ a' d'' f'' gis'' a'']) gis''([ a'' gis'' a'' gis'' a'']) d''4 r8 r4 f''8(
 d'''4.^\markup { \translate #(cons 2 -1) { \musicglyph #"scripts.turn" } }) f'''8[( ees''') d'''\staccato] c'''4.\<(~ c'''4\!\> d'''8\!)
 ees'''4.^\markup { \translate #(cons 2 -1) { \musicglyph #"scripts.turn" } } g'''8[( f''') ees'''\staccato] d'''4.\<~ d'''4\!\> d''8\!
 d'''8([ bes'' g''] a''[ fis''! d'']) g''([ a'' bes''] c'''[ d''' ees''']) d'''([ cis'''! d'''] a''[ c''' bes'']) g''4 r8 r4 r8
 d''16( bes' f' bes' d'' bes' f'' d'' ees'' c'' d'' bes') c''\<( a' f' a' c'' a'\! f'\> aes' c'' aes' d'' b'!\!)
 ees''16( c'' g' c'' ees'' c'' g'' ees'' f'' d'' ees'' c'') d''16\< g' a' bes' c'' d''\! e''!\> fis''! g'' a'' bes'' c'''\!
 d'''16( cis'''! d''' bes'' g'' bes'' a'' gis'' a'' fis''! d'' fis'') g''8([ bes''16 a'' c''' bes''] d'''[ c''' ees''' d''' f''' ees'''])
 d'''16( d'' cis'''! d'' d''' d'' c''' d'' a'' d'' bes'' d'') g''4 g''8( fis''!16_\markup { \italic "dimin." }[ g'' fis'' g'' a'' g''])
 r4 g''8( fis''16[ g'' fis'' g'' a'' g'']) r4 g''8( fis''16[ g'' fis'' g'' a'' g'']) r4 g''8( fis''16[ g'' fis'' g'' a'' g''])
 f''16( e'' d'' cis''! d'' e'' f'' g'' bes'' a'' g'' f'') e''8[ a'16( gis' a' b'!] cis''[ a' d'' a' e'' a'])
 f''16( e'' d'' cis'' d'' e'' f'' g'' bes'' a'' g'' f'') e''\pp( a'' gis'' a'' g'' a'' f'' a'' d''' a'' f'' d'')
 e''( a'' gis'' a'' g'' a'' f'' a'' d''' a'' f'' d'') e''4 r8 r4 r8
 a16_\markup { \italic "cresc." } a' gis' a' cis' cis'' e'[ e'' a' a''] r8
 R2. b!16[ b'! ais' b' d' d''] g'[ g'' b'! b''!] r8 R2. a16\ff( a') gis' a' cis'!( cis'') e'( e'') g'( g'') a'( a'')
 cis''16( cis''') e''( e''') g''( g''') g''[( g''') g''( g''')]
 d'8\p\staccato a4^\markup { "ten." }( d'8) fis'8([ a']) d'8\staccato a4( d'8) fis'8([ a']) g' e'4( fis'8) d'4( e'8)
 cis'8\staccato[ cis'\staccato d'^\trill]( e'8) r8 d'8\staccato
 a4^\markup { "ten." }( d'8) fis'8([ a']) d'8\staccato a4^\markup { "ten." }( d'8) fis'8([ a']) g'8 e'4( fis'8) d'4( e'8)
 b8[( e') cis'\staccato] d'8 r a e'4( fis'8^\trill g'8[ e']) r r4 r8 r4^\fermata d'''8\staccato
 a''4^\markup { "ten." }_\markup { \italic "delicatamente" } d'''8\staccato fis'''8([ a''']) d'''\staccato
 a''4^\markup { "ten." } d'''8\staccato fis'''8([ a''']) g''' e'''4( fis'''8) d'''4( e'''8)
 cis'''8\staccato[ cis'''\staccato d'''^\trill]( e''') r d'''8\staccato
 a''4^\markup { "ten." } d'''8\staccato fis'''8([ a''']) d'''\staccato a''4^\markup { "ten." } d'''8\staccato fis'''8([ a''']) g'''
 e'''4( fis'''8) d'''4( e'''8) b''8[( e''') cis'''\staccato] d'''4 r8^\markup { "TUTTI." }
 R2. r4 r8 r4^\fermata r8 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2.
 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2.
 r4 a'8\p\staccato^\markup { "pizz." } d'4\staccato a'8\staccato^\markup { "arco" }
 \appoggiatura a'16 a''2.~ a''4.( g''8[ fis'' e'']) d''8([ e'' fis''] g''[ e'') fis''\staccato] e''4 r8 r4 d''8
 \appoggiatura d''16 d'''2.~ d'''4. c'''16( b'' d''' c''' b'' a'') g''( d'' a'' d'' b'' d'' c''' d'' a'' d'' b'' d'') a''4 r8 r4 fis''16( d'')
 g''16( d'' a'' d'' b'' d'' g'' a'' g'' fis'' e'' d'') cis''4 r8 r4 cis'''16( a'') d'''16( a'' e''' a'' fis''' a'' g''' a'' e''' a'' fis''' a'')
 e'''4 r8 r4 cis''16 a' d''16 a' e'' a' fis'' a' g'' a' e'' a' fis'' a' e''16 a'' gis'' a'' e'' cis'' a' e'' cis'' a' e' cis'
 a16 cis' e' a' cis'' e'' a''4 r8 R2.
 r4 r8 r <d' fis''>8\staccato[ <b' d''>\staccato] <g' b'>4( <e' g'>8 <cis' e'>4 <d' fis'>8)
 \set doubleSlurs = ##t <cis' e'>4.( <a a'>8) r8 r \set doubleSlurs = ##f R2.
 r4 r8 r <d' f''>8\staccato[ <b' d''>\staccato] << { b'4.( cis''4.) d''4.~ d''8 } \\ { gis'4( e'8 g'4 a'8) f'4.( d'8) } >>
 <d' f''>8\staccato[ <b' d''>\staccato] << { b'4.( cis''4.) } \\ { gis'4( e'8 g'4 a'8) } >>
 <fis'! d''>16 d' e' d' <fis' d''> d' <g' e''> d' <a' fis''> d' <b' g''> d'
 <c'' a''>16 d' <b' g''> d' <a' fis''> d' <g' e''> d' <fis' d''> d' <e' cis''> d'
 <fis' d''>16 d' e' d' <fis' d''> d' <g' e''> d' <a' fis''> d' <b' g''> d'
 <c'' a''>16 d' <b' g''> d' <a' fis''> d' <g' e''> d' <fis' d''> d' <e' cis''> d'
 <fis' d''>16 d' e' d' <fis' d''> d' <g' e''> d' <fis' d''> d' <e' cis''> d'
 << { <fis' d''>16[ d' s16 d' <fis' d''> d'] } \\ { s8 d'16 s16 s8 } >>
 <g' ees''>16( ees') <g' ees''>( ees') <g' ees''>( ees') <g' ees''>( ees') <g' ees''>( ees') <g' ees''>( ees')
 <g' ees''>16( ees') <g' ees''>( ees') <g' ees''>( ees') ees''16\f ces'' aes' ces'' ees'' ces'' dis''\p a' fis'! a' dis'' a'
 e''!16 b'! g' b' e'' b' cis'' g' e' g' cis'' g'
 << { <fis' d''>16[ d' s16 d' <fis' d''> d'] } \\ { s8 d'16 s16 s8 } >> ees'16 ees'' g' ees'' ees' ees''
 g'16 ees'' ees' ees'' g' ees'' ees' ees'' g' ees'' ees' ees'' ees''16\f ces'' aes' ces'' ees'' ces'' dis''\p a' fis'! a' dis'' a'
 e''!16 g' e' g' e'' g' cis'' g' e' g' cis'' g' a''16 fis'' d'' fis'' d'' a' d'' a' fis' a' fis' d'
 a''16 fis'' d'' fis'' d'' a' d'' a' fis' a' fis' d'

 g''16 e'' cis'' e'' cis'' g' cis'' g' e' g' e' cis' g''16 e'' cis'' e'' cis'' g' cis'' g' e' g' e' cis'
 a''16\f fis'' d'' fis'' d'' a' d'' a' fis' a' fis' d' a'16\p fis' c' a' fis' c' a' fis' c' a' fis' c'
 a''16\f fis'' c'' fis'' c'' a' c'' a' fis' a' fis' c' c''16\p a' fis' a' fis' c' c'' a' fis' a' fis' c'
 a16 c' e' a' gis' a' e' a' c'' e'' c'' a' ees'16 a' c'' ees'' c'' a' ees' a' c'' ees'' c'' a'
 d'16 a' c'' d'' c'' a' d' a' c'' d'' c'' a' d'16_\markup { \italic "dimin." } a' c'' d'' c'' a' d' g' bes' d'' bes' g'
 d'16( d'' d''' cis'''! d''' cis''') d'''( cis''' d''' cis''' d''' b''!) a''2.\pp~ \startTrillSpan a''2.
 a'''2. _\markup { \italic "cresc." }~ \stopTrillSpan \startTrillSpan \afterGrace a'''2. { gis'''16 }
 a'''4 \stopTrillSpan r8 r4 r8 R2. R2. R2. R2. R2. a'2.\sf^\fermata_\markup { "   cadenza." }
 e''2.~ \startTrillSpan e''2. e''2.\f~ e''2.~ e''2.~ e''2._\markup { \italic "dimin." }~ e''2.~ e''2.\p~ e''2.
 e''2._\markup { \italic "piu p" }^\markup { \musicglyph #"accidentals.0" }~ e''2. ees''2.\pp~ ees''2.
 ees''4 \stopTrillSpan aes''8\staccato c'''([ ees''']) aes''8 ees''4 aes''8\staccato c'''[( ees''') ees'''\staccato]
 des'''4( ees'''8) c'''4( des'''8) bes''8[ bes'' c'''^\trill] bes''4 ees''8
 d''!16_\markup { "sempre pp" }( ees'') f''( ees'') aes''( ees'') c'''( ees'') ees'''( ees'') ees'''( ees'')
 d''16 ees'' f'' ees'' a''! a'! c''' a' ees''' a' c''' a' d''16 ees'' f'' ees'' a'' a' c''' a' ees''' a' c''' a'
 dis'' e''! f'' e'' a'' a' c''' a' e'''! a' c''' a' a'16 c''' b'' c''' c'' c''' fis''! c''' a'' c''' a' c'''
 a'16 c''' b'' c''' c'' c''' fis'' c''' a'' c''' a' c''' g16 bes'' a'' bes'' g'' bes'' g'' bes'' a'' bes'' g'' bes''
 g''16 a'' cis'''! e''' cis''' a'' g'' a'' e'' a'' g'' a'' f'' a'' bes'' b'' c''' cis''' d''' a'' f'' d'' f'' a''
 d''' b''! f'' d'' f'' b'' d'''8([ e''' f''']) fis'''16 d'( e' fis' g' a' b' cis'' d'' e'' fis'' g'')
 a''16( b'' cis''' d''' \times 2/3 { e'''16[ fis''' g''']) } a'''8\staccato[ g'''\staccato fis'''\staccato]
 e'''2.~ \startTrillSpan \afterGrace e'''2. { dis'''16[ e'''] \stopTrillSpan } g'''2.\pp( e'''2.) b''2.( cis'''2.) d'''4 r8 r4 r8
 r4 r8 r4 d'''8\p g'''4 e'''8 cis'''[( a'') a''\staccato] g'''4 e'''8 cis'''[( a'') a''\staccato] d'''4 r8 r4 r8
 r4 r8 r4 d'''8 g'''4 e'''8 cis'''[( a'') a''\staccato] g'''4 e'''8 cis'''[( a'') a''\staccato]
 c'''16_\markup { \italic "cresc." }( d''' e''' d''' c''' b'' a'' b'' c''' b'' a'' g'') fis''( g'' a'' g'' fis'' e'' d'' e'' d'' c'' b' a')
 b'8 d'16( g' b' d'' g''8) g'16( b' d'' g'' b''8) b'16( d'' g'' b'' d'''8) d''16( g'' b'' d''')
 g'''16( fis''' e''' d''' cis'''! b'') a''( b'' cis''' d''' e''' fis''') g'''( fis''' e''' d''' cis''' d''' e''' fis''' g''' a''' b''' cis'''')
 d''''4\ff r8 r4 r8 d'16_\markup { \italic "sempre f" } fis' a' d'' fis'' a'' d''' cis''' d''' e''' fis''' fis''' fis'''4 r8 r4 r8
 d'16 fis' b' d'' fis'' b'' d''' cis''' d''' e''' fis''' fis''' e'''16 g''' e''' b'' g'' e'' b' g b e' g' b'
 g16 cis' e' g' cis'' e'' g'' cis''' e''' g''' e''' cis''' d'''4 r8 r4 r8 d'16 fis' a' d'' fis'' a'' d''' cis''' d''' e''' fis''' fis'''
 fis'''4 r8 r4 r8 d'16 fis' b' d'' fis'' b'' d''' cis''' d''' e''' fis''' fis''' e'''16 g''' e''' b'' g'' e'' b' g b e' g' b'
 g16 cis' e' g' cis'' e'' g'' cis''' e''' g''' e''' cis''' d'''4 r8 r4 r8 R2.
 bes16 d' f' bes' d'' f'' bes'' d''' f''' d''' f''' d''' a''\p( a''' g''' fis'''! e''' d''' cis'''! b''! a'' g'' fis'' e'') d''4 r8 r4 r8 R2.
 bes16 d' f' bes' d'' f'' bes'' d''' f''' d''' f''' d''' a''\p( a''' g''' fis'''! e''' d''' cis'''! b''! a'' g'' fis'' e'') d''4 r8 r4 r8
 R2. R2. R2. R2. R2. R2. r4 r8 r4 fis'8\pp d'4 fis'8\staccato a'([ d'']) fis'' d''4 fis''8\staccato a''([ d''']) d'''
 a''4 d'''8\staccato fis'''([ a''']) <a' e'' cis'''>8\ff <d' fis'' d'''>4 r8 r4 \bar "|."
}