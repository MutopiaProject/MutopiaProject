\version "2.10.3"

 pianoone = {
 \set Staff.instrumentName = \markup { \column { " " " " " " " " " " "Pianoforte" } }
 \set Staff.midiInstrument = "acoustic grand"
 \clef treble
 \key f \major
 \time 2/4
 \partial 8 c''8\staccato <f' f''>\staccato <f' f''>\staccato <g' g''>\staccato <g' g''>\staccato
 <a' a''>8.( <g' g''>16) <f' f''>8 c''( bes''8\staccato) bes''\staccato \acciaccatura bes''16 a''16.([ g''32 a''16. bes''32])
 g''4 r8 c''8 bes''8 bes'' g'' g'' c'''8. c'''16 d'''16( c''' bes'' a'') g''8 <d'' g''> \acciaccatura a''16
 <bes' e'' g''>16( f'' <bes' e'' g''> a'') <a' f''>4 r8 r16 a''16 g''8( e''16) a''\staccato g''8( e''16) a''\staccato
 g''16 <c'' c'''> <c'' c'''> <c'' c'''> <c'' c'''>8[ r16 a''] a''16( g'') e''\staccato c''\staccato g''( f'') d''\staccato b'\staccato
 \set doubleSlurs = ##t <f' d''>4( <e' c''>8) r16 c''16 \set doubleSlurs = ##f
 c''8^\trill[ \grace { b'16[ c''] } d''16_\markup { \italic "cresc." } e''] f''8^\trill[ \grace { e''16[ f''] } g''16 a'']
 <bes'! e'' g'' bes''!>4.\sf^\fermata bes''8\p bes''16( a'' g'' f'') <c'' g''>8^\trill[ \grace { e''16[ f''] } <bes'! g''>16 <g' e''>]
 <a' f''>4 r8 \bar "|."
 \break

 \afterGrace c''8^\trill( { b'32[ c''] } f''16\staccato) f'([ c'']) <f'' a''>([ <e'' g''>\staccato]) e'([ c'']) <g'' bes''>([ <f'' a''>\staccato])
 f'([ a']) a''([ c''']) a'([ a'']) f'\staccato bes''16 g'([ bes']) bes''([ a'']) f'([ c''])
 <f'' a''>([ <e'' g''>]) dis''([ e'']) b'([ c'']) fis'([ g']) c'\staccato
 bes''16\staccato g'([ c'']) bes''([ g'']) e'([ c'']) g''([ c''']) b'([ c'']) e''([ f'']) gis''( a'']) b''([ c''']) e'''([ f''']) d'''([ c'''])
 a''([ bes''!]) g''([ f'']) c''([ a']) f'\staccato r8 r16 a''16( g'') b'([ c'']) fis''([ g'']) b'([ c'']) a''([ g'']) b'([ c'']) dis''([ e''])
 fis''([ g'']) b''([ c''']) dis'''([ e''']) c'''([ g'']) e''([ f''!]) d''!([ c'']) b'([ c'']) b'([ c'']) c'([ g']) c''( e'') g'([ c''])
 e''_\markup { \italic "cresc." }([ g'']) c''([ e'']) g''( bes''8\fp^\fermata)
 \override NoteHead #'font-size = #-2
 \cadenzaOn a''32([ bes'' c''' bes'' a'' bes'' d''' c''' bes'' a'' c''' bes'' a'' bes''])
 \override NoteHead #'font-size = #0
 g''8^\fermata r16 g''16^\trill([ \grace { f''16[ g''] } a''16]) bes''16([ \cadenzaOff
 c''']) f'([ a'']) g'([ bes'']) e'([ g'']) f''([ c'']) a'([ f']) r16 r8 \bar "|."
 \break

 r8 r8 \clef bass <f f'>8\f([ <e e'> <d d'>]) <cis cis'>4( <d d'> <ees ees'>4.\sf <d d'>16 <c! c'!>)
 <bes, bes>8([ <a, a> <g, g> <f,! f!>]) <e, e>8_\markup { \italic "cresc." }([ <g, g> <c c'> <e e'>]) <f f'>4\f <fis fis'>4
 <g g'>8\p([ <f! f'!> <e e'> <bes,! bes!>])~ <bes, bes>16[( <a, a>) <c c'>\staccato <e e'>\staccato] <f f'>8\staccato r8
 e'16\p[( c') c'\staccato c'\staccato] f'[( c') c'\staccato c'\staccato]
 e'( c') g\staccato c'\staccato e\staccato g\staccato c\staccato e\staccato g,16 c16([ e g]) r16 d([ f b])
 r16 f([ g b]) <e g c'>8 r8 r16 <g bes! e'>_\markup { \italic "cresc." }[ <g bes e'> <g bes e'>] r <g bes g'> r <g bes f'>
 <g bes e'>4.\sf^\fermata r16 <g bes e'>16\p r16 <g bes f'> r <a c' f'> r <g d' f'> r <g bes e'> r16 <a f'> r c'16 f8 \bar "|."
 \break

 \clef treble r8 r16 f''\p r <c'' f''>_\markup { \italic "cresc." } r <c'' g''> r <c'' g''>
 r <f'' a''> r <f'' a''> r <f'' a''> r <f'' a''> r <f'' a''>\f r <f'' a''> r <g'' bes''> r <bes'' d'''> <e'' g''>8 r8 r8 c''16\p c''
 r16 <c'' e'' bes''> r <bes' c'' g''> r <g' c'' e''> r <e' g' c''> r <f'' a'' c'''> r <c'' f'' a''> r <a' c'' f''> r f''
 r16 <f'' g''>\f r <f'' g''> r <f'' a''> r <g' bes'! e''> <a' f''>8 r r <f'' a''>16\p\staccato <f'' a''>(
 <e'' g''>8\staccato) r16 <e'' g''>16([ <e'' c'''>8\staccato]) r16 <e'' c'''>16( <g'' e'''>32\staccato)
 c''32([ d'' e'' f''_\markup { \italic "cresc." } g'' a'' b'']) c'''32([ b'' c''' b'' c''' b'' c''' b''])
 <e'' c'''>16\f\staccato <e'' c'''>\staccato <e'' g''>\staccato <e'' g''>\staccato
 <d'' f''!>\staccato <d'' f''>\staccato <f' d''>\staccato <f' d''>\staccato <e' c''>8 r8 r8 c''16\p c''
 r16 <c'' bes''> r <c'' e'' bes''>_\markup { \italic "cresc." } r <bes' c'' g''> r <bes' c'' g''>
 \acciaccatura f''16 <c'' e''>4.\sf^\fermata r16 f''16 r16 <f'' g''> r <f'' g''> r <f'' a''> r <g' bes'! e''> <a' f''>8 r r \bar "|."
 \break

 r8 R2 r4 r8 <gis'' c'''>16\p_\markup { \italic "    dolce" }([ a''])
 <a'' c'''>([ gis'']) <gis'' c'''>([ a'']) <a'' c'''>([ g'']) <g'' c'''>([ <b'' f'''>]) <b'' f'''>([ <c''' e'''>]) <c''' e'''>([ <f'' d'''>])
 <e'' c'''>8 r8 \clef bass <e g c'>4\< <e g c'> <f a c'>4.\!\> \clef treble <f'' c'''>16\!\p([ d'''])
 <f'' d'''>([ c''']) <f'' c'''>([ <e'' bes''>]) <e'' bes''>([ <f'' a''>]) <f'' a''>([ <d'' g''>]) <d'' g''>([ <a' f''>]) <a' f''>([ <g' e''>])
 <a' f''>8 r8 \clef bass << { c'4 c'4 } \\ { e8.\<( dis16\!) e16\>( dis e f\!) } >> <e c'>4. \clef treble <f'' a''>16\p([ <e'' g''>])
 <e'' g''>16([ <d'' f''>]) <d'' f''>16([ <c'' e''>]) <c'' e''>16([ <a' d''>]) <a' d''>16([ <g' c''>])
 <g' c''>16([ <f' b'>]) <f' b'>16([ <e' c''>]) <e' c''>8 r16 \clef bass f16 << { c'4 c'4 } \\ { e8.\<( dis16) e16( dis e fis\!) } >>
 <e g c'>4.\sf^\fermata \clef treble <bes'' d'''>16([ <a'' c'''>])
 <a'' c'''>16([ <bes'' e'''>]) <bes'' e'''>16([ <a'' f'''>]) <a'' f'''>16([ <bes'' d'''>]) <bes'' d'''>16([ <a'' c'''>])
 <a'' c'''>16([ <f'' a''>]) <g'' bes''>\staccato[ <e'' g''>\staccato] f''8\staccato \bar "|."
 \break

 c''16.( a'32) f'16.([ a'64 c'']) f''4\sf( e''8) f''8 a''\sf c'''8 f'''8\sf~
 f'''16.\f[ <f'' g''>32\staccato <f'' g''>16.\staccato <f'' g''>32\staccato]
 <f'' g''>16.\staccato[ <f'' g''>32\staccato <f'' g''>16.\staccato <f'' g''>32\staccato]
 <e'' g''>16.\staccato <c'' e'' g''>32\staccato <c'' f'' a''>16.\staccato <c'' f'' a''>32\staccato]
 <c'' e'' g''>8\staccato[ g''16.( e''32)] c''16.([ e''64 g'' bes''8\sf]~ bes''8[ g''\sf]) f''8( e''8~ e''8)[ c'''32( bes'' a'' g'')]
 f''16.\staccato[ f''32\staccato <f'' g''>16.\staccato <f'' g''>32\staccato]
 <f'' a''>16.\staccato[ <f'' a''>32\staccato <e'' bes''!>16.\staccato <e'' g''>32\staccato]
 <a' f''>16.\staccato[ <bes' g''>32\staccato <a' f''>16.\staccato <bes' g''>32\staccato]
 <a' f''>8[ c''32( b' c'' b')] c''16.([ e''64 g'' c'''8\sf]~ c'''8[ <f'' a''>]) <e'' g''>8( <a' f''>\sf <g' e''> <f' d''>\sf)
 <e' c''>16.\staccato[ <c'' g''>32\staccato <c'' a''>16.\staccato <c'' a''>32\staccato]
 <c'' g''>16.\staccato[ <c'' g''>32\staccato <d'' b''>16.\staccato <d'' b''>32\staccato]
 <c'' c'''>16.\staccato[ <f'' d'''>32\staccato <e'' c'''>16.\staccato <f'' d'''>32\staccato] <e'' c'''>8
 c'16.([ e'64 g']) bes'16.([ e''64 g'' bes''8\sf]~ bes''8 g''8) f''8( e''4\sf^\fermata)
 <bes' e''>16.\staccato <bes' e''>32\staccato
 <a' f''>16.\staccato[ <a' f''>32\staccato <f'' g''>16.\staccato <f'' g''>32\staccato]
 <f'' a''>16.\staccato[ <f'' a''>32\staccato <g'' e'''>16.\staccato <g'' e'''>32\staccato]
 <f'' f'''>16.\staccato[ <bes'' e'''>32\staccato <a'' f'''>16.\staccato <bes'' e'''>32\staccato] <a'' f'''>8 \bar "|."
 \break

 a'32\p[ c'' f' c''] f'[ a' c' a'] a'[ c'' f' c''] g'[ bes' e' bes'] bes'[ e'' g' e''] a'[ c'' f' c''] c''[ f'' a' f''] f''[ a'' c'' a''] a''[ c''' f'' c''']
 bes''[ c''' g'' c'''] bes''[ c''' g'' c'''] a''[ c''' f'' c'''] a''[ c''' f'' c'''] g''[ c''' e'' c'''] e''[ g'' c'' g''] c''[ e'' g' e''] g'[ c'' e' c'']
 e'[ g' c' g'] g'[ c'' e' c''] c''[ e'' g' e''] e''[ g'' c'' g''] f''[ a'' c'' a''] a''[ c''' f'' c'''] a''[ f''' f'' f'''] a''[ f''' f'' f''']
 g''\<[ f''' f'' f'''] g''[ f''' f'' f'''\!] a''\>[ f''' f'' f'''] bes''[ e''' g'' e'''\!]
 a''32[ f''' a'' f''] c''[ f'' c'' a'] f'8[ f''32 a'' c'' a''] e''[ g'' c'' g''] dis''[ fis'' c'' fis''] e''[ g'' c'' g''] dis''[ fis'' c'' fis'']
 e''32[ g'' c'' g''] g''[ c''' e'' c'''] c'''[ e''' g'' e'''] g''[ c''' e'' c'''] e''[ g'' c'' g''] c''[ e'' g' e''] d''[ f'' b' f''] b'[ d'' f' d'']
 c''32[ e'' g' e''] g'[ c'' e' c''] e'[ g' c' g'] c'[ e' g e'] bes[ e' g e'] e'[ g' bes g'] g'[ bes' e' bes']
 bes'[ e'' g' e''] bes''4.\f^\fermata a''32\p[ e'''\< g'' e'''] a''[ f''' f'' f'''] g''[ f''' f'' f'''\!]
 a''\>[ f''' f'' f'''] bes''[ e''' g'' e'''\!] a''[ f''' a'' f''] c''[ f'' c'' a'] f'8 \bar "|."
 \break

 c''8_\markup { \italic "sempre pianissimo" }( f''16 c''' b'' bes'' a'' g'' f'' e'' g'' f'' a'' g'' f'' e'' d'' c''
 b'16 c'' d'' c'' bes' a' g' f' fis' g' a' g' f' e' d' c') r16 e'16( f' g' gis' a' bes' b'
 c'' cis'' d'' dis'' e'' f'' fis'' g''! gis'' a'' bes'' b'' c'''! cis''' d'''! e''' f''' c'''! a'' c''' f''8\staccato) r8
 r16 b''( d''' c''') r b''( d''' c''') r c'''( e''' d''' c''' b'' c''' a'' g''\< fis'' a'' g''\! f''\> e'' f'' d''\!
 c''\< b' d'' c'' e'' d'' f'' e''\! g''\> fis'' a'' g'' bes''! a'' c''' bes''\!)
 \cadenzaOn d'''4.^\fermata
 \override NoteHead #'font-size = #-2 cis'''4 c''' b'' bes''4^\fermata
 \override NoteHead #'font-size = #0 gis''32([ a'' gis'' a'']) \cadenzaOff \bar "|"
 a''16\<( g''! bes'' g'' c''' bes'' g'' e''\!) g''4\>( f''8\!) \bar "|."
 \break

 c''16\p\staccato c''\staccato f''16\staccato[ <a'' c'''>32( <g'' bes''>) <f'' a''>16\staccato]
 r16 r16 <g'' bes''>8[ <bes' g''>16\staccato] <a' f''>16\staccato[ <c'' a''>32( <bes' g''>)]
 <a' f''>16\staccato[ <a' f''>\staccato] <a' f''>8\staccato[ r16 <f'' a''>16\staccato]
 <g'' bes''>16\staccato[ <bes'' d'''>32( <a'' c'''>)] <g'' bes''>16\staccato r r <a'' c'''>32[( <g'' bes''>) <f'' a''>16\staccato] r16
 r16 <e'' g''>32([ <d'' f''>]) <c'' e''>16\staccato[ <f' d''>\staccato] <e' c''>8\staccato[ r16 c'16\staccato]
 <c' e'>16\staccato_\markup { \italic "cresc." } <d' f'>\staccato <e' g'>\staccato <f' a'>\staccato
 <g' bes'>\staccato <a' c''>\staccato <bes' d''>\staccato <g' e''>\staccato
 <a' f''>\staccato <e'' g''>\staccato <f'' a''>\staccato <g'' bes''>\staccato
 <a'' c'''>\staccato <bes'' d'''>\staccato <g'' e'''>\staccato <a'' f'''>\staccato
 <a'' f'''>\sf( <c''' e'''>) <bes'' d'''>\staccato <a'' c'''>\staccato <a'' c'''>\sf( <g'' bes''>) <f'' a''>\staccato <bes' g''>\staccato
 <a' f''>16\staccato <bes' g''>\staccato <a' f''>\staccato <bes' g''>\staccato <a' f''>8\staccato[ r16 <a'' c'''>32( <f'' a''>)]
 <e'' g''>16\staccato[ <e'' g''>8\sf( <f'' a''>16)] <e'' g''>16\staccato[ <e'' g''>8\sf( <f'' a''>16)]
 <e'' g''>16\staccato <g'' c'''>\staccato <c''' e'''>\staccato <b'' d'''>\staccato
 <a'' c'''>\sf( <gis'' b''>) <a'' c'''>\staccato <f'' a''>\staccato
 <e'' g''!>\sf( <dis'' fis''>) <e'' g''>\staccato <c'' e''>\staccato <d'' f''>\sf( <cis'' e''>) <d'' f''>\staccato <f' d''>\staccato
 <e' c''!>16\staccato <f' d''>\staccato <e' c''>\staccato <f' d''>\staccato <e' c''>\staccato g'\staccato c''\staccato d''\staccato
 <c'' e''>\sf( <g' c''>) <c'' e''>\staccato <d'' f''>\staccato <e'' g''>\sf( <c'' e''>) <e'' g''>\staccato <f'' a''>\staccato
 <g'' bes''>4.\sf^\fermata <e'' g''>16\p\staccato <g'' e'''>\staccato
 <f'' a''>16\staccato_\markup { \italic "cresc." } <a'' f'''>\staccato <f'' a''>\staccato <a'' f'''>\staccato
 <e'' g''>\staccato <g'' e'''>\staccato <e'' g''>\staccato <g'' e'''>\staccato
 <f'' a''>16\f\staccato <a'' f'''>\staccato <a'' f'''>\staccato <a'' f'''>\staccato <a'' f'''>8\staccato \bar "|."
 \break

 c''8\p([ f'']) c''([ f'']) c''([ a'']) c''([ bes'']) e''([ c'''\staccato]) bes''16\<([ a'']) a''[( g'') g''( f''\!)]
 f''16\>[( e'' g'' e'') c''8\!\staccato] a''8_\markup { \italic "cresc." }([ bes'']) fis''([ g'']) <c'' dis''>([ <c'' e''>])
 <d''! d'''>8\sf([ <c'' c'''>]) <bes' bes''>\sf([ <a' a''>]) <g' g''>\sf([ <f' f''>]) <g' g''>\sf\staccato
 c''8\staccato[ <e' e''>\staccato <f' f''>\staccato] a''8\p( g''8[ fis''( g'')] f''8_\markup { \italic "cresc." }([ e''])
 dis''([ e'']) <d''! d'''>\sf([ <e'' e'''>)] <dis'' dis'''>\sf([ <e'' e'''>)] <f'' f'''>\sf([ <e'' e'''>])
 d'''!8^\trill[ \grace { c'''16[ d'''] } c'''8\staccato] r8 r4 r8 c''\sf([ e''\staccato]) g''\ff\staccato[ bes''\staccato^\fermata] r8
 r8 <d'' d'''>8\p([ <c'' c'''>]) r r8 <e'' e'''>\pp([ <f'' f'''>]\staccato]) \bar "|."
 \break

 \key f \minor
 r16. c'32\p f'8.. c'32 g'8.. c'32 aes'4~ aes'16[ g'32( aes'] bes'32[ aes' g' f'])
 des''4^\markup { \translate #(cons 6 1) { \musicglyph #"scripts.turn" } }( ees''16 des'' c'' bes')
 aes'8^\markup { \translate #(cons 4 1) { \musicglyph #"scripts.turn" } }([ aes'32 bes' b' c'']) g'8[ r16. g'32]
 e''4 e''8.. e''32
 f''16.^\markup { \translate #(cons 3 1) { \musicglyph #"scripts.turn" } }[ g''32 \acciaccatura f''16 aes''8]~
 aes''16_\markup { \italic "cresc." }[ aes''\staccato( aes''\staccato aes''\staccato)]
 aes''16\sf\>([ g''32 f''] e''32[ g'' f'' des''] c''[ ees'' des'' bes'\!] a'32[ c'' bes' e']) g'4\pp( f'8) r8
 r16. <e' g' c''>32\pp[ <e' g' c''>8] r16. <f' aes' c''>32[ <f' aes' c''>8]
 r16. <c' e' g' c''>32[ <c' e' g' c''>16. <c' e' g' c''>32] <c' ees' aes' c''>8 r8
 r16. <ees'! g' c''>32[ <ees' g' c''>8] r16. <des' g' b'>32[ <des' g' b'>8]
 r16. <c' c''>32[ <c' c''>16. <c' c''>32] <c' c''>8 r8
 r16. <des'! des''!>32[ <des' des''>8_\markup { \italic "cresc." }] r16. <des'' des'''>32[ <des'' des'''>8]
 r16. <e'' e'''>32\f[ <e'' e'''>16. <e'' e'''>32] <e'' e'''>8^\fermata <f'' f'''>8\sfp~
 <f'' f'''>32\<[ b''( c''' g''] aes''[ e'' f'' c''] des''\>[ a' bes'! fis'] g'[ bes' des'' e'\!)]
 <bes des' g'>4( <aes! c' f'!>8) \bar "|."
 \break

 r8 \override TupletBracket #'transparent = ##t
 \override TupletNumber #'transparent = ##t
 \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { r8 <aes' c'' f''>8\p\staccato([ <aes' c'' f''>\staccato])
 <aes' c'' f''>\staccato([ <aes' c'' f''>\staccato <aes' c'' f''>\staccato])
 <aes' c'' f''>[ <c'' f'' aes''> <c'' f'' aes''>] <c'' f'' aes''>[ <c'' f'' aes''> <c'' f'' aes''>]
 <des'' f'' g''>\<[ <des'' f'' g''> <des'' f'' g''>] <b' f'' g''>[ <b' f'' g''> <b' f'' g''>\!]
 <c'' e'' g''>\>[ <c'' e'' g''> <c'' e'' g''>] <c'' e'' g''>[ <c'' e'' g''> <c'' e'' g''>\!]
 <bes' des'' e'' g''>[ <bes' des'' e'' g''> <bes' des'' e'' g''>]
 <bes' des'' e'' g''>\<[ <bes' des'' e'' g''> <bes' des'' e'' g''>]
 <b' d'' f'' aes''>\!\>[ <b' d'' f'' aes''> <b' d'' f'' aes''>] <f'' aes'' b''>[ <f'' aes'' b''> <f'' aes'' b''>\!]
 <f'' aes'' c'''>[ <f'' aes'' c'''> <f'' aes'' c'''>] <g'' bes''! c''' e'''>[ <g'' bes'' c''' e'''> <g'' bes'' c''' e'''>]
 <f'' aes'' c''' f'''>([ c''' b''] bes''[ a'' aes'']) g'' <e'' g''>[ <e'' g''>] r8 <f'' aes''>\<[ <f'' aes''>\!]
 r8 <e'' g''>\>\staccato[ <e'' g''>\!\staccato] <c'' ees''! fis'' a'' c'''>\<[ <c'' ees'' fis'' a'' c'''> <c'' ees'' fis'' a'' c'''>]
 <c'' ees'' g'' c'''>[ <c'' ees'' g'' c'''> <c'' ees'' g'' c'''>\!] <d'' f''! g'' b''>\>[ <d'' f'' g'' b''> <d'' f'' g'' b''>\!]
 <c'' ees'' g'' c'''>[ c'' c''] c'' <c'' e''>\sf([ f''] g''\staccato)[ <c'' e'' g''>\sf( <f'' aes''>]
 <g'' bes''>)[ <g'' bes''> <aes'' c'''>] }
 \cadenzaOn <bes'' des'''>8\fp^\fermata \override NoteHead #'font-size = #-2
 c'''32([ des''' ees'''! des''' c''' bes'' a'' c''' bes'' des''' c''' bes'' aes'' g'' bes'' aes'' g''])
 \override NoteHead #'font-size = #0 f''8^\fermata e''8^\fermata r32 aes''32\pp([ g'' f'']) \cadenzaOff \bar "|"
 \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { r8 <f'' b''>\<[ <f'' b''>] r <e'' c'''>\!\>[ <e'' c'''>]
 <f'' aes''>[ <f'' aes'' f'''>\staccato\!( <f'' aes'' ees'''!>\staccato)]
 <f'' aes'' d'''>[ <f'' aes'' des'''>\staccato( <f'' aes'' c'''>\staccato)]
 r8 <f'' b''>\pp\<[ <f'' b''>] r <e'' c'''>\!\>[ <e'' c'''>] r <f'' aes''>\staccato\!([ <ees''! f'' aes''>\staccato)]
 <d'' f'' aes''>\staccato([ <des'' f'' aes''>\staccato <c'' f'' aes''>\staccato)]
 \once \override DynamicLineSpanner #'padding = #2.0
 <b' f'' aes''>\<[ <b' f'' g''> <b' f'' g''>] r <f'' g''>[ <f'' g''>\!\>]
 r <f'' g''>\staccato_\markup { "ca -- -- lan --  -- do" }([ <e'' g''>\staccato])
 <dis'' g''>\staccato([ <d'' e'' g''>\staccato <cis'' e'' g''>\!\staccato]) }
 <c''! e'' g''>8\staccato[( <b' e'' g''>\pp\staccato) <bes' e'' g''>\staccato^\fermata] s8 \bar "|."
 \break

 \clef treble
 \key f \major
 \time 3/4
 \partial 4 r4 \clef bass r8 a8\p([ f c bes, e]) a,([ c f a c' f']) g'([ f' e' g' c' f']) e'([ c' g e c]) r8 r8 e8([ g c' e' c'])
 \clef treble f'8([ c' <f' a'> c' <f' a'> c']) f'([ d' bes d' bes e']) <a f'>8[ a'16 f'] bes'16[ g' c'' a'] d''[ bes' e'' g']
 f''8\f\staccato f''4\sf fis''16( g'' a''[ g'' fis'' g''] a''8\staccato) a''4\sf gis''16( a'' bes'' a'' g'' f''! bes''8\staccato)
 bes''4\sf c'''16( bes'' gis'' a'' gis'' a'') fis''8( g''!) r4 r8 c''8( bes''8\staccato) bes''4\sf
 a''16( bes'' c''' bes'' a'' g'' c'''8\staccato) f'''4\sf e'''16( f''' e''' f''' e''' f''' g''8\staccato) g''8\staccato
 r16 d'''16( c''' bes'' a'' g'' f'' e'') f''4 r4 f'8.\p( e'16) e'8\staccato e'4\sf c'8\staccato[ f'\staccato d'\staccato]
 e'8\staccato c''4\sf c''8\staccato[ f''\staccato dis''\staccato] e''8 <g' e''> r <e' c''> r <d'! f' b'>
 r8 <f' b'>( <e' c''>) r8 r4 \clef bass c'8_\markup { \italic "cresc." }[( b) <bes c'> <a c'> <g c'> <f c'>]
 <e c'>2\sf^\fermata r8 <f f'>8\p r8 <d d'> r <a c'> r <bes! c'> r8 <bes e'>( <a f'>) r16 \clef treble f'16
 a'16[ c'' f'' a''] g''16 c'' b' c'' b' c'' g'' c'' a'' c'' fis'' c''
 g''16 c'' b' c'' b' c'' e'' c'' f''! c'' dis'' c'' e'' c'' c''' c'' e'' c'' c''' c'' f'' d''! b'' d''
 r16 c''' b'' c''' d''' c''' b'' c''' b'' c''' e'' c''' c'' c''' d'' c''' e''_\markup { \italic "cresc." } c''' f'' c''' g'' c''' a'' c'''
 bes''!2\sf^\fermata r16 gis''\p( bes'' a'') r fis''( a'' g''!) r f''( a'' g'') r e''( g'' e'')
 f''16 f'([ a' c''] f'' a'' c''' bes'' a'' g'' f'' e'') d''16_\markup { \italic "cresc." }( f'' a'' g'' f'' e'' d'' c'' bes' d'' f'' e''
 d'' c'' bes' a' g' bes' d'' c'' bes' a' g' f') e'( g' bes' a' bes' a' g' f' e' d' c' bes)
 r16 a\p( c' f') r bes( d' g') r g( bes e') r f'( a' c'' f'' a'' c''' bes'' a'' g'' f'' e'')
 d''( f'' a'' g'' f''_\markup { \italic "cresc." } e'' d'' c'' bes' d'' f'' e'' d'' c'' bes' a' g' bes' d'' c'' bes' a' g' f')
 e'16( g' bes' a' g' f' e' d') r cis'\f( e' g') r d'\f( f' bes') r dis'\p fis' b' r e' g' c''!
 r16 f'! a' d''! r \setTextDecresc fis'\> a' dis'' r g' b' e'' r gis' b' eis'' r a' c'' fis'' r ais' cis'' fis''
 r16 b' d'' g''! r a' e''! g''\! r a' d'' fis'' r16 g'16\pp b' e'' r fis' a' d'' r e' g' cis''
 \clef bass r8 a8\p([ <fis d'> a <g cis'> a]) r a([ <fis d'> a <fis d'> a])
 r8 a8([ cis' a d' a]) cis'([ a e cis a,]) r r8 a([ <e cis'> a <e cis'> a]) r8 a([ <fis d'> a <fis d'> b]) r b([ <e d'> b <e cis'> g])
 fis8 \clef treble <fis'' a''>8\pp\staccato[ <fis'' a''>\staccato <fis'' a''>\staccato] r8 <f'' a''>\staccato
 r8 <f'' aes''> r <f'' g''> r <e'' g''> \setTextCresc <e' e''>8\<[( <f' f''>) <e' e''>( <f' f''>) <fis' fis''>( <g' g''>)]
 <gis' gis''>8[( <a' a''>) <bes' bes''>( <a' a''>) <g' g''>( <f'! f''!>)]
 <a' a''>8[( <bes' bes''>) <c'' c'''>( <bes' bes''>) <gis' gis''>( <a' a''>)]
 <fis' fis''>8[( <g'! g''!>) <a' a''>( <g' g''>) <e' e''>( <c' c''>)]
 <a' a''>8\!\f[( <bes' bes''>) <a' a''>( <bes' bes''>) <fis' fis''>( <g' g''>)]
 <b' b''>8[( <c'' c'''>) <e'' e'''>( <f''! f'''!>) <e'' e'''>( <f'' f'''>)]
 <fis' fis''>8[( <g' g''>) <c'' c'''>( <bes'! bes''!>) <a' a''>( <g' g''>)]
 <gis' gis''>8[( <a' a''>) <e' e''>( <f'! f''!>)] r8 <f' f''> <a' a''>8[( <bes' bes''>) <a' a''>( <bes' bes''>) <fis' fis''>( <g'! g''!>)]
 <b' b''>8[( <c'' c'''>) <f''! f'''!>( <e'' e'''>) <d'' d'''>( <c'' c'''>)] <c'' c'''>8[( <bes'! bes''!>) <bes' bes''>( <a' a''>) <a' a''>( <g' g''>)]
 c''16\p( f'' bes'' a'') c''( f'' bes'' a'') ees''( a'' d''' c''') d''16 f'' c''' bes'' d'' f'' c''' bes'' bes' e''! a'' g''
 a'16( c'' g'' f'') a'( c'' f'' ees'') ees'( a' d'' c'') d'( f' c'' bes') d'( f' c'' bes') bes( e'! a' g')
 <a f'>8 c'''16\f( bes'') a''\staccato g''\staccato f''\staccato e''\staccato d''\staccato c''\staccato bes'\staccato a'\staccato
 g'16\staccato f'\staccato e'\staccato d'\staccato c'8\staccato r8 <g'' bes'' c''' e'''>4\f\staccato <a'' c''' f'''>4\staccato r4 r4
 r4 r4 <e'' bes''>4\f\staccato <f'' a''>8\staccato c'''16\pp( bes'' a'' g'' f'' e'' d'' c'' bes' a' g' f' e' d') c'8 r8 <e' bes'>4\pp\staccato
 \set doubleSlurs = ##t <e' bes'>2( <f' a'>8) r8 <bes e'>2( <a f'>8) r8 \set doubleSlurs = ##f
 <a f'>4\pp <a f'> <a f'> <a f'> r4^\fermata \bar "|."
}
