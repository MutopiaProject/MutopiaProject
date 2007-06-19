\version "2.10.3"

 violinoprincipale = {
 \set Staff.instrumentName = \markup { \center-align { "Violino" "principale." } }
 \set Staff.midiInstrument = "violin"
 \clef treble
 \key d \major
 \time 4/4
 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 r4 \appoggiatura a16 a'4 \appoggiatura cis'16 cis''4 \appoggiatura e'16 e''4
 \appoggiatura g'16 g''4 \appoggiatura a'16 a''4 \appoggiatura cis''16 cis'''4 \appoggiatura e''16 e'''4
 \override TupletNumber #'transparent = ##t
 \override TupletBracket #'transparent = ##t
 \appoggiatura g''16 g'''2\sf~ \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { g'''8([ fis''' e'''] d'''[ e''' cis''']) }
 \appoggiatura g''16 g'''2\sf~ \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { g'''8([ fis''' e'''] d'''[ e''' cis''']) g'''\p([ fis''' e'''] d'''[ e''' cis'''] d'''[ b'' cis'''] a''[ b'' g'']
 a''[ fis'' g''] e''[ fis'' d''] e''[ cis'' d''] b'[ cis'' a'] b'[ g' a'] fis'[ g' e'] fis'[ d' e'] cis'[ d' b]
 cis'[ a b] gis[ b a] gis[ b a] gis[ b a]) }
 a16\<( cis') b( d') cis'( e') d'( fis') e'( g') cis'( e') d'( fis') e'( g'\!)
 fis'( a') g'( b') a'( cis'') b'( d'') cis''( e'') a'( cis'') b'( d'') cis''( e'')
 d''( fis'') e''( g'') fis''( a'') g''( b'') a''( cis''') b''( d''') cis'''( e''') d'''( fis''')
 e'''16 g''' e''' d''' cis''' b'' a'' b'' cis''' d''' e''' fis''' g''' a''' b''' cis''''
 d''''4 r4 r4 \times 2/3 { a''8[ d''' fis'''] }
 a'''2_\markup { \italic "dolce" }( b'''2) a'''4( g'''2 fis'''8 g'''16 fis''')
 e'''8( fis'''16 e''' d'''8 e'''16 d''' cis'''8 b''16 cis''' d'''8 cis'''16 d''') e'''4 r4 r2
 g'''2_\markup { \italic "cresc." }( fis'''4 g'''8 a''') ais'''4( b'''2\sf\>) a'''8( b'''16 a'''\!)
 g'''8( a'''16 g''' fis'''8 g'''16 fis''' e'''8 fis'''16 g''' gis'''8 a'''16 e''') g'''!2( fis'''4) r4 R1
 \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { g8\f([ cis' e'] g'[ cis'' e''] g''[ cis''' e''']) g'''[ g''' g'''] } g'''4 r4 r2
 \times 2/3 { g8([ cis' e'] g'[ cis'' e''] g''[ cis''' e''']) g'''[ b''' b'''] }
 b'''8 b''4 b''8 a'''8_\markup { \italic "dimin." } a''4 a''8 g'''8 g''4 g''8 fis'''8 fis''4 fis''8
 e''16( fis'' e'' dis'' e'' fis'' g'' fis'' e'' fis'' e'' d'' cis'' d'' cis'' b') a'( b' cis'' d'' e'' d'' cis'' b' a' b' a' g' fis' g' fis' e')
 d'4 r4 r2 R1 R1 R1
 R1 R1 R1 R1 \appoggiatura d'16 d''2_\markup { \italic "dolce" }~ d''8 e'16([ e'']) f'( f'') g'( g'')
 a'( a'') b'( b'') cis''( cis''') d''( d''') e''( e''') f''( f''') d'( d'') d'( d'')
 e''2~ e''8 g''16( f'') a''( g'') bes''( a'') c'''( bes'') d'''( c''') e'''( d''') f'''( e''') g'''( f''') a'''( g''') e'( e'') e'( e'')
 \appoggiatura f'16 f''2~ f''16 c'' d'' e'' f'' g'' a'' bes'' c''' a'' bes'' c'''
 d'''8.^\markup { \translate #(cons 2 -1) { \musicglyph #"scripts.turn" } } e'''16 f'''16 c''' d''' e'''
 f'''8.^\markup { \translate #(cons 2 -1) { \musicglyph #"scripts.turn" } } g'''16 a'''2~
 \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { a'''8[ a'''( dis'''] c'''[ dis''' c'''] b''![ dis''' b''] c'''[ dis''' c'''] b''[ dis''' b''] a''[ dis''' a'']) }
 e'''16 e'' gis'' b'' e''' d'''! c''' b'' d''' c''' b'' c''' d''' c''' b'' a'' gis'' b'' e'' f'' e'' d''! c'' b'
 d'' c'' b' c'' a' b' c'' a' gis' e' gis' b' e'' d'' c'' b' d'' c'' b' c'' a' b' c'' a'
 gis'16 b' e' f' e' d'! c' b d' c' b c' a b c' a gis\f b e' dis' e' b c' a gis b e' dis' e' b c' a
 gis b e' dis' e' b gis' fis' e' gis' b' a' gis' b' e'' dis'' e'' b' gis'' fis'' e'' gis'' b'' a'' gis'' a'' fis'' gis''
 e'' fis'' dis'' fis'' e'' fis'' dis'' fis'' e'' fis'' dis'' fis'' e'' fis'' dis'' fis'' e'' fis'' dis'' fis''
 \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { e''8_\markup { \italic "dimin." }[( fis'') dis''\staccato] e''([ gis'' dis''] e''[ fis'' dis''])
 e''[( e''') e''\staccato] } e''1~ \startTrillSpan e''1_\markup { \italic "dolce" }~ e''1~ e''1~ e''2.
 fis''16( \stopTrillSpan gis'' a'' b'') cis'''4( d''' e''' fis'''8 gis''') a'''2( e''') fis'''4( d''' b'' e''')
 \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { a''8[ e'\staccato f'\staccato] fis'\staccato[ g'\staccato gis'\staccato]
 a'[\staccato bes'\staccato b'\staccato] c''\staccato[ d''\staccato dis''\staccato]
 e''[ e' e''] d''![ d'! d''] c''[ c' c''] b'[ b b'] a[ a' e'] c''[ a' e''] c''[ a'' e''] c'''[ a'' e''] }
 b16[ e' d'' e'] a[ e' c'' e'] gis[ e' b' e'] a[ e' c'' e']
 \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { gis8[ b' gis'] e''[ b' gis''] e''[ b'' gis''] e'''[ e''' e'''] e'''[ e'' e'''] d'''[ d'' d'''] c'''[ c'' c'''] b''[ b' b'']
 a'\staccato[ gis''( a')] e'\staccato[ dis''( e'')] c'\staccato[ b'( c'')] a\staccato[ gis'( a')]
 d'[ f'' a'] f''[ a' f''] b[ d''! g'!] d''[ g' d''] c'[ g' e'] c''[ g' e''] c''[ g'' e''] c'''[ g'' e''']
 bes[ d'' bes'] f'[ d' f'] gis'[ b'! gis'] e'[ d' b] a[ a' gis'] a'[ e' c''] a'[ c'' e''] a''[ c''' e''']
 \setTextCresc f'''\<[ f'' f'''] e'''[ e'' e'''] d'''[ d'' d'''] g'''[ g'' g'''] e'''[ g''' e'''] c'''[ e''' c'''] g'' e'' b'] c''[ g' e']
 d'[ f'' d'''] c'''[ a' c'''] b''\!\f[ gis'' e''] b'[ gis' e'] b[ e' gis'] b'[ e'' gis'']
 b''_\markup { \italic "dolce" }[ e'''( dis'''] e'''[ d''' b'']) } ais''4\staccato( ais''\staccato ais''\staccato ais''\staccato)
 \set tupletSpannerDuration = #(ly:make-moment 1 4) \times 2/3 { b''8[ cis''' b''] ais''[ b'' c'''] cis'''[ d''' dis'''] e'''[ d''' b''] }
 ais''4\staccato( ais''\staccato ais''\staccato ais''\staccato)
 \set tupletSpannerDuration = #(ly:make-moment 1 4) \times 2/3 { b''8[ cis''' b''] ais''[ b'' c'''] cis'''[ d''' dis'''] e'''[ d''' b''] }
 \set crescendoText = \markup { \italic "poco cresc." }
 \set crescendoSpanner = #'dashed-line
 ais''16\<( b'' cis''' b'' ais'' b'' ais'' b'' cis''' d''' e''' d''' cis''' d''' cis''' d''' e''' fis''' g'''! fis''' e''' fis''' e''' fis''')
 g'''8[ g''' g''' g'''] fis'''8 d'4 d'8 d'16( fis' b' d'' fis'' b'' d''' fis''') gis'''8 e'^\turn gis' b'^\turn e'' gis''^\turn b'' gis''^\turn
 a''16\!\f a'[ cis'' a'] e'' cis'' a'' e'' cis''' a'' e''' cis''' a'''8 a''' fis'''16\f d' a' fis' d'' a' fis'' d'' a'' fis'' d''' a'' fis'''8 fis'''
 e''16\f e''' cis''' a'' e'' cis'' a' e' r cis''' a'' e'' cis'' a' e' cis' r d''' b'' gis'' d'' b' gis' d' r b'' gis'' d'' b' gis' d' b
 a4 r r2 R1 R1 r2 r8 gis'16_\markup { \italic "dolce" }( a' b' cis'' d'' gis')
 a'8 b'16 cis'' d'' e'' fis'' gis'' a''8 b''16 cis''' d''' e''' fis''' gis''' a''' gis''' a''' gis''' a''' gis''' a''' gis'''
 a'''16( gis''' fis''' e''' d''' cis''' b'' a'') gis'' b'' d''' b'' gis'' b'' gis'' e'' d'' e'' d'' b' gis' b' gis' e'
 d'16 e' d' b gis e' b e' gis e' b e' gis' e' b e'

 a16 e' cis' e' a' e' cis' e' ais fis' cis' fis' ais' fis' cis' fis' b fis' d' fis' b' fis' d' fis' cis' a'! e' a' cis'' a' e' a'
 d' a' fis' a' d'' a' fis' a' cis' a' e' a' cis'' a' e' a' d'' d' e' fis' g' a' b' cis'' d'' e'' fis'' gis'' b'' a'' gis'' fis''
 e'' a'' e'' cis'' e'' a'' e'' cis'' d'' e'' d'' b' d'' e'' d'' b'
 a'_\markup { \italic "poco cresc." } gis'' a'' gis'' a'' cis''' b'' a'' gis'' a'' b'' a'' gis'' e'' fis'' gis''
 a'' b'' a'' gis'' a'' b'' cis''' b'' ais'' b'' cis''' b'' ais'' fis'' gis'' ais'' b'' cis''' b'' ais'' b'' cis''' d''' b''
 cis''' d''' e''' d''' cis''' a'' b'' cis''' d''' e''' d''' cis''' d''' fis''' e''' d''' cis''' d''' e''' d''' cis''' a'' b'' cis'''
 \override TupletNumber #'transparent = ##t
 \override TupletBracket #'transparent = ##t
 \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { d'''8\f([ d' cis'] d'[ fis' eis'] fis'[ a' gis'] a'[ d'' cis'']) d''([ fis'' eis''] fis'')[ a''\staccato b''\staccato]
 cis'''\staccato[ d'''\staccato e'''!\staccato] } fis'''8\staccato r8
 \times 2/3 { dis'8\f[ a'( gis')] a'\staccato[ c''( b')] cis''[ fis'' eis''] fis''[ a'' gis'']
 a''[ c''' b''] c'''[ a'' fis'''] fis'''[ c''' a'''] } a'''8 r8
 \times 2/3 { e'8\p([ f' fis'] g'![ gis' a'] ais'[ b' bis'] cis''![ d'' dis'']) e''([ f'' fis''] g''![ gis'' a''] bes''[ b'' c'''] cis'''[ d''' dis''']) }
 e'''2~ e'''8([ cis''' d'''! dis''']) e'''2~ e'''8([ cis''' d'''! dis''']) e'''8([ cis''' d'''! e'''])
 \appoggiatura gis'''16 fis'''8([ e''' fis''' gis''']) a'''([ gis''' a''' b''']) cis''''8\staccato[ a'''\staccato e''''\staccato] a''8
 b''1\p~ \startTrillSpan b''1~ b''1~  b''1~  b''1~  b''1 c'''2 cis'''2 d'''2 dis'''2 e'''1~ e'''1~ e'''1~ e'''1
 e'''8 \stopTrillSpan d'''16( cis''' b'' a'' gis'' fis'') e''8( d''16 cis'' b' a' gis' fis')
 \set tupletSpannerDuration = #(ly:make-moment 1 4) \times 2/3 { e'8[ d' cis'] b[ a gis] a[ b cis'] }
 \set tupletSpannerDuration = #(ly:make-moment 1 4) \times 4/5 { d'16([ e' fis' gis' a']) }
 b'16 a' gis' fis' e' d' cis' b cis' d' e' fis' gis' a' b' cis''
 d''16_\markup { \italic "cresc." } cis'' b' a' gis' fis' e' d' e' fis' gis' a'
 \set tupletSpannerDuration = #(ly:make-moment 1 4) \times 4/5 { b'16([ cis'' d'' e'' fis'']) }
 gis''16 fis'' e'' d'' cis'' b' a' gis' a' b' cis'' d'' e'' fis'' gis'' a'' b'' a'' gis'' fis'' e'' d'' cis'' b' cis'' b'( cis'' d'' e'') d''( e'' fis''
 gis''\ff) fis''( gis'' a'' b'') a''( b'' cis''' d''') cis'''( d''' e''' fis''') e'''( fis''' gis''' a'''4) r4 r2 R1 R1 R1 R1
 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 r4 \appoggiatura g16 g'4 \appoggiatura b16 b'4 \appoggiatura d'16 d''4
 \appoggiatura f'16 f''4 \appoggiatura g'16 g''4 \appoggiatura b'16 b''4 \appoggiatura d''16 d'''4
 \override TupletNumber #'transparent = ##t
 \override TupletBracket #'transparent = ##t
 \appoggiatura f''16 f'''2\sf~ \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { f'''8([ e''' d'''] c'''[ d''' b'']) }
 \appoggiatura f''16 f'''2\sf~ \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { f'''8([ e''' d'''] c'''[ d''' b'']) f'''\p([ e''' d'''] c'''[ d''' b''] c'''[ a'' b''] g''[ a'' f'']
 g''[ e'' f''] d''[ e'' c''] d''[ b' c''] a'[ b' g']) a'([ f' g'] e'[ f' d'] e'[ c' d'] b[ c' a] b[ g a] g[ b a] g[ b a] g[ b a]) }
 g16( b) a( c') b( d') g( b) a( c') b( d') c'( e') d'( f') e'( g') f'( a') g'( b') b( d') c'( e') d'( f') e'( g') f'( a')
 g'( b'( a'( c'') b'( d'') g'( b') a'( c'') b'( d'') c''( e'') d''( f'') e''( g'') f''( a'') g''( b'') b'( d'') c''( e'') d''( f'') e''( g'') f''( a'')
 g''( b'') a''( c''') b''( d''') d''( fis''!) g''( fis'') g''( a'') b''( c''') d'''( e''') f''' cis'''! d''' e''' f''' cis''' d''' e''' f''' cis''' d''' e'''
 f''' cis''' d''' e''' f'''1_\markup { \italic "cresc." }~ f'''1 fis'''!2~ fis'''8([ eis''' fis''' eis'''])
 fis'''2_\markup { \italic "espressivo" }( g'''2) fis'''4( e'''2 d'''4) cis'''4( b'' ais'' b'') cis'''2~
 \times 2/3 { cis'''8([ fis''' eis'''] fis'''[ e''' cis''']) dis'''([ fis''' dis'''] b''[ dis''' b'']) a''([ c''' a''] fis''[ a'' fis''])
 dis''([ fis'' dis''] c''[ dis'' c'']) a'([ c'' a'] g'[ b' g']) fis'([ a' b'] e'[ g' b'] dis'[ fis' b'] e'[ g' b'])
 fis'([ a' b'] a'[ b' dis''] b'[ dis'' fis''] dis''[ fis'' a'']) g'([ b' g'] fis'[ a' fis'] e'[ g' e'] fis'[ a' fis'])
 g'([ b' e''] b'[ e'' g''] e''[ g'' b''] g''[ b'' e''']) c''([ e'' c''] b'[ d'' b'] a'[ c'' a'] b'[ d'' b'])
 c''([ e'' a''] e''[ a'' c'''] a''[ c''' e'''] c'''[ e''' a''']) fis''([ a'' fis''] e''[ g'' e''] d''[ fis'' d''] e''[ g'' e''])
 fis''([ a'' fis''] d''[ a' fis'] d'[ fis' a'] d''[ fis'' a''])
 bes''\staccato[ g''\staccato d''\staccato] g''\staccato[ d''\staccato bes'\staccato]
 d''\staccato[ bes'\staccato g'\staccato] bes'\staccato[ g'\staccato d'\staccato]
 bes[ d' fis'!] g'[ bes' d''] g''[ bes'' d'''] g'''[ g''' g'''] g'''[ ees''' c'''] ees'''[ c''' g''] ees''[ g'' ees''] c''[ g' ees']
 c'[ ees' d'] c'[ ees' g'] c''[ ees'' g''] c'''[ d''' ees'''] d'''[ bes'' g''] d''[ bes' g'] d'''[ bes'' g''] d''[ bes' g']
 d'''[ a'' fis''] d''[ a' fis'] d'[ fis' a'] d''[ fis'' a''] g''([ fis'' g'']) d''([ cis''! d''])
 bes'\staccato[ d''\staccato bes'\staccato] g'\staccato[ d'\staccato bes\staccato] }
 g8\staccato fis'16( g') bes8\staccato a'16( bes') d'8\staccato cis''!16( d'') g'8\staccato fis''16( g'')
 \times 2/3 { g''8([ b''! c'''] g''[ fis'' g'']) ees''([ d'' ees'']) c''[ g' ees'] }
 c'8\staccato b'16( c'') ees'8\staccato d''16( ees'') g'8\staccato fis''16( g'') c''8\staccato fis''16( g'')
 \times 2/3 { g'8([ d'_\markup { \italic "cresc." } ees'] e'[ f' fis'] g'[ a' bes'] b'[ c'' cis''])
 d''([ g' a'] bes'[ b' c''] cis''[ d'' ees''] e''[ f'' fis'']) g''\f([ d'' e''] fis''![ g'' a''] bes''[ fis''! g''] a''[ bes'' c''']) }
 d'''8\staccato[ g''\staccato bes''\staccato d'''\staccato] g'''\staccato[ d'''\staccato bes'''\staccato g'\staccato]
 a'1^\trill

 \afterGrace a''1\p^\trill { g''16[ bes'' a''] } g''2~ g''8[ fis''!( g'' fis''] g''[ a'' bes'' a''] bes''[ d''') g'''\staccato g'''\staccato]
 g'''4( fis'''!) r8 cis''8([ d'' cis''] d''[ eis'' fis''! eis''] fis''[ a'') c'''\staccato c'''\staccato]
 c'''4( bes'') r8 cis''8([ d'' cis''] d''[ fis''! g'' fis''] g''[ a'') bes''\staccato bes''\staccato]
 bes''4( aes''4)~ aes''8[ aes'''( f''' d''')] bes''8([ aes'' f'' d''] bes'[ aes' f' d'16 aes])
 g4 r4 r bes'16( d'' ees'' d'') ees''( fis''! g'' fis'') g''( a''! bes'' a'') bes''( d''' ees''' d''') ees'''8 ees''' ees'''4( d''') r
 \override TupletNumber #'transparent = ##t
 \override TupletBracket #'transparent = ##t
 \set tupletSpannerDuration = #(ly:make-moment 1 4) \times 2/3 { f''8([ bes'' a'']) }
 bes''8.^\markup { \translate #(cons 2 -1) { \musicglyph #"scripts.turn" } } c'''16
 d'''8.^\markup { \translate #(cons 2 -1) { \musicglyph #"scripts.turn" } } ees'''16
 f'''8.^\markup { \translate #(cons 2 -1) { \musicglyph #"scripts.turn" } } g'''16 aes'''8 aes'''8 aes'''4( g''') r4
 \times 2/3 { g'8([ bes' a'!]) bes'([ ees'' d'']) ees''([ g'' fis''!]) g''([ bes'' a'']) } bes''8 bes''
 bes''4( a'')~ a''8( cis'''!16 b'' a''16 e'''! cis''' a'') g''16( a'' g'' e'' cis''! e'' cis'' a' g' a' g' e' cis'! e' a' g')
 f'4 r r2 d'16( e' f' e' f' gis' a' gis' a' cis''! d'' cis'' d'' e'' f'' d'') cis''4 r r2
 cis''16( dis'' e'' dis'' e'' fis''! g'' fis'' g'' a'' bes'' a'' bes'' a'' bes'' g'') f''4 r a'16( e'' f'' e'' f'' gis'' a'' gis'')
 a''4 r a'16( e'' f'' e'' f'' gis'' a'' gis'') a''4 r a'16( dis'' e'' dis'' e'' gis'' a'' gis'') a''4 r a'16( dis'' e'' dis'' e'' gis'' a'' gis'')
 a''16( a' d''! cis''!) d''8\staccato a''16( gis'' a'' a' d'' cis'') d''8\staccato a''16( gis'' a'' a' d'' cis'')
 d''8\staccato a''16( gis'' a'' a' d'' cis'') d''8\staccato a''16( gis'' a''4)
 \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { a8\staccato[ cis'( a')] bes\staccato[ d'( bes')] b\staccato[ d'( b')]
 c'8\staccato[ ees'( c'')] cis'\staccato[ e'( cis'')] d'\staccato[ f'( d'')] dis'\staccato[ fis'( dis'')]
 e'\staccato[ g'( e'')] f'\staccato[ aes'( f'')] fis'[ a' fis''] g'[ bes' g'']
 gis'[ b'! gis''] a'[ c'' a''] bes'[ d'' bes''] b'[ d'' b''] c''[ ees'' c'''] cis''[ e'' cis'''] cis''[ e'' cis'''] cis''[ e'' cis''']
 cis''[ cis''' e''] cis''[ cis''' e''] cis''[ cis''' e''] cis''[ cis''' e''] e''[ g'' e'''] e''[ g'' e'''] e''[ g'' e'''] e''[ g'' e''']
 a'_\markup { \italic "cresc." }[ e'' g'''] a'[ e'' g'''] a'[ e'' g'''] a'[ e'' g'''] } fis'''4 r r2 R1 R1 R1 R1 R1 R1 R1 R1
 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 <d' d''>2_\markup { \italic "dolce" }~ <d' d''>8[ e'16( e'')] fis'( fis'') g'( g'')
 a'16( a'') b'( b'') cis''( cis''') d''( d''') e''( e''') fis''( fis''') d'( d'') d'( d'') \appoggiatura e'16 e''2~ e''8 g''16( fis'') a''( g'') b''( a'')
 cis'''( b'') d'''( cis''') e'''( d''') fis'''( e''') g'''( fis''') a'''( g''') e'( e'') e'( e'') fis''2~ fis''16( d'') cis''!( e'') d''( fis'') e''( g'')
 fis''16( a'') g''( b'') a''( c''') b''( d''') c'''( e''') d'''( fis''') e'''( g''') fis'''( a''') \appoggiatura g'''16 b'''1~ b'''4 b''( g'' e'')
 d''16_\markup { \italic "dolce" }( e'' d'' cis''! \times 2/3 { d''8[ e'' fis''] } g''16 a'' b'' a'' g'' fis'' e'' d'')
 c''16( d'' c'' b' c'' d'' e'' fis'' g'' a'' b'' c'''
 \set tupletSpannerDuration = #(ly:make-moment 1 8) \times 8/7 { b''32[ a'' g'' fis'' e'' d'' c'']) }
 b'4 ais''16( b'' c''' b'' fis'' g'' a'' g'' dis'' e'' fis'' e'') cis''!( d''! e'' d'' ais' b' c'' b' fis' g' a' g' dis' e' fis' e')
 d'!16( e' d' cis'! \times 2/3 { d'8[ e' fis'] } g'16 a' b' a' g' fis' e' d')
 c'16( d' c' b \times 2/3 { c'8[ fis' a'] c''[ fis'' a''] } c'''16 a'' fis'' c'')
 b'2( fis'''2)~ fis'''2. a'4 g'2( b'')~ b''2. d'4 cis'2( e'''2)~ e'''2. g''4
 \times 2/3 { f''8([ bes'' f''] d''[ f'' d''] bes'[ d'' bes'] f'[ bes' f']) d'[ f' d']( bes[ d' bes] a[ d' a] gis[ d' gis]) }
 a16 a cis' e' a' g' f' e' f' g' f' e' d' e' f' d' cis' e' a' cis'' e'' cis'' a' g' f' a' d'' f'' a'' f'' e'' d''
 cis''16 a' cis'' e'' a'' g'' f'' e'' f'' g'' a'' f'' d'' e'' f'' d'' cis'' e'' a'' cis''' e''' cis''' a'' g'' f'' a'' d''' f''' a''' f''' e''' d'''
 a'''16\f a'' cis''' e''' a''' e''' f''' d''' a''' a'' cis''' e''' a''' e''' f''' d'''
 a'''8 cis'16[ b] a cis' e' d' cis' e' a' gis' a' e' cis'' b' a' cis'' e'' d'' cis'' e'' a'' gis'' a'' e'' cis''' b'' a'' e'' cis''' b''
 \times 2/3 { a''8_\markup { \italic "dimin." }([ gis'' b''] a''[ gis'' b''] a''[ gis'' b''] a''[ gis'' b'']) }
 a''2^\trill a'2~ \startTrillSpan~ a'1~ a'1_\markup { \italic "dolce" }~ a'1~ a'1~ a'4 \stopTrillSpan b'16( cis'' d'' e'' fis'' g'' a'' b'')
 \times 2/3 { cis'''8([ d''' e''']) } fis'''4( g''' a''' b'''8 cis'''') d''''2( a''2) b''4( g'' e'' a'')
 \times 2/3 { d''8\staccato[ a'\staccato bes'\staccato] b'\staccato[ c''\staccato cis''\staccato]
 d''\staccato[ ees''\staccato e''\staccato] f''\staccato[ g''\staccato gis''\staccato] a''[ a' a''] g''![ g' g''] f''[ f' f''] e''[ e' e'']
 d'8[ a' f'] d''[ a' f''] d''[ a'' f''] d'''[ a'' f''] } e'16 a' g'' a' d' a' f'' a' cis' a' e'' a' d' a' f'' a'
 \times 2/3 { a8[ e' cis'] a'[ e' cis''] a'[ e'' cis''] a''[ a'' a''] a''\staccato[ a'( a'')] g''\staccato[ g'( g'')]
 f''\staccato f'( f'')] e''\staccato[ e'( e'')] d'\staccato[ a'\staccato f'\staccato] d''\staccato[ a'\staccato f''\staccato]
 d''\staccato[ a''\staccato f''\staccato] d'''\staccato[ d''\staccato a''\staccato] g'[ bes'' d''] bes''[ d'' bes''] e'[ g'' c''] g''[ c'' g'']
 a''8[ c''' a''] f''[ a'' f''] c''[ b'! c''] c''[ a' f'] ees'[ g'' bes'] g''[ bes' g''] cis'![ e''! a'] e''[ a' e'']
 d'[ f'' d''] a''[ f'' d'''] a''[ f''' d'''] a'''[ a'' a'''] \setTextCresc bes'''\<[ bes'' bes'''] a'''[ a'' a'''] g'''[ g'' g'''] c''''[ c''' c'''']
 a'''[ c'''' a'''] f'''[ a''' f'''] c'''[ f''' c'''] a''[ c''' a''] g''\staccato[ fis''!( g'')] f'\staccato[ e''( f'')] a\!\f[ cis'! b!] a[ cis' e']
 a'[ cis'' b'] a'[ cis'' e''] a''_\markup { \italic "dimin." }([ gis'' b''] a''[ g'' e'']) }
 dis''4\staccato_\markup { \italic "dolce" }( dis''\staccato dis''\staccato dis''\staccato)
 \times 2/3 { e''8([ fis'' e''] dis''[ e'' f''] fis''[ g'' gis''] a''[ g'' e'']) } dis''4 dis''8( dis''') dis''([ dis''']) dis''([ dis'''])
 \times 2/3 { e'''8([ fis''' e'''] dis'''[ e''' f'''] fis'''[ g''' gis'''] a'''[ g''' e''']) }
 \set crescendoText = \markup { \italic "poco cresc." }
 \set crescendoSpanner = #'dashed-line
 dis'''4.\<^\markup { \translate #(cons 4 -1) { \musicglyph #"scripts.turn" } }( e'''8)
 fis'''4.^\markup { \translate #(cons 4 -1) { \musicglyph #"scripts.turn" } }( g'''8)
 a'''4.^\markup { \translate #(cons 4 -1) { \musicglyph #"scripts.turn" } }( b'''8) c''''4 c'''4
 \times 2/3 { b''8[ e'( g'] b'[ e'' g''] b''[ a'' g''] fis''[ g'' e'']) }
 cis'''!8\staccato a'16( gis' a' b' cis'' d'' e'' fis'' g''! a'' bes'' b'' c''' cis''')
 d'''8\!\f d'16 fis' a' d'' fis'' a'' cis'''16( d''') d''\staccato d'''\staccato cis'''16( d''') d''\staccato d'''\staccato
 \times 2/3 { b''8\f[ d' g'] b'[ d'' g''] } ais''16( b'') b'\staccato b''\staccato ais''16( b'') b'\staccato b''\staccato
 a'!8 a''16( gis'' b'' a'' fis'' d'' a' fis' d' fis' a' d'' fis'' a'') g''!( fis'' g'' e'' cis'' b' cis'' a' g' fis' g' e' cis' a b cis') d'4 r4 r2
 R1 R1 R1 d'16_\markup { \italic "dolce" }( fis' a' g' fis' a' d'' cis'' d'' a' fis'' e'' d'' fis'' a'' g'')
 fis''16( a'' d''' cis''' d''' cis''' d''' cis''' d''' e''' d''' cis''' d''' e''' fis''' d''')
 cis'''( e''' g''' e''') cis'''( e''' cis''' a'') g''( a'' g'' e'') cis''( e'' cis'' a') g' a' g' e' cis' e' a' e' a e' a' e' cis' e' a' cis'
 d' fis' a' fis' d'' fis' a' fis' dis' fis' b' fis' dis'' fis' b' fis' e' g' b' g' e'' g' b' g' fis' a' d''! a' fis'' a' d'' a'
 g' b' d'' b' g'' b' d'' b' fis' a' d'' a' fis'' a' d'' a' b'8 a'16 b' c'' d'' e'' fis'' g'' a'' b'' cis'''! e''' d''' cis''' b''
 a''16 d''' a'' fis'' a'' d''' a'' fis'' g'' a'' g'' e'' g'' a'' g'' e''
 \setTextCresc d''16\< e'' d'' cis'' d'' fis'' e'' d'' cis'' d'' cis'' b' cis'' a' b' cis''
 d'' e'' d'' cis'' d'' e'' fis'' e'' dis'' e'' fis'' e'' dis'' b' cis'' dis'' e'' dis'' e'' fis'' g'' fis'' g'' e'' fis'' g'' a'' g'' fis'' d'' e'' fis''
 g'' a'' g'' fis'' g'' b'' a'' g'' fis'' g'' a'' g'' fis'' d'' e'' fis''\!
 \times 2/3 { g''8\f[ d' g'] b'[ d'' g''] \acciaccatura c'''16 b''8([ a'' b'']) \acciaccatura e'''16 d'''8([ cis''' d''']) }
 g'''8\staccato[ d'''\staccato e'''\staccato fis'''\staccato] g'''\staccato[ a'''\staccato b'''\staccato] g8
 gis16\f d' b d' f' f' d' f' b' b' f' b' d'' d'' b' d'' f'' f'' d'' f'' b'' b'' f'' b'' d''' d''' b'' d''' f'''8 gis
 \times 2/3 { a8\p([ bes b] c'[ cis' d'] ees'[ e' f'] fis'[ g' gis']) a'([ bes' b'] c''[ cis'' d''] ees''[ e'' f''] fis''[ g'' gis'']) }
 a''2~ a''8([ fis'' g''! gis'']) a''2~ a''8([ fis'' g''! gis'']) a''8([ fis'' g''! fis'']) g''([ a'' b'' cis'''])
 \acciaccatura e'''16 d'''8([ cis''' d''' e''']) fis'''8\staccato[ g'''\staccato a'''\staccato d''\staccato]
 e''1\p~ \startTrillSpan e''1~ e''1~ e''1
 e''1^\markup { }^\markup { }^\markup { }^\markup { \musicglyph #"accidentals.0" }~ \stopTrillSpan \startTrillSpan
 e''1 f''2 fis''2 g''2 gis''2 a''1~ \stopTrillSpan \startTrillSpan a''1~ a''1~ a''1~
 a''8( \stopTrillSpan g''16 fis'' e'' d'' cis'' b') a'8( g'16 fis' e' d' cis' b) a16 b cis' d' e' fis' g' a' b' cis'' b' a' g' fis' e' d'
 cis'16 d' e' fis' \setTextCresc \times 4/5 { g'16\<([ a' b' cis'' d'']) } \times 2/3 { e''8[ d'' cis''] } b'16 a' g' fis'
 e'16 fis' g' a' \times 4/5 { b'16([ cis'' d'' e'' fis'']) } \times 2/3 { g''8[ fis'' e''] } d''16 cis'' b' a'
 g'16 a' b' cis'' \times 4/5 { d''16([ e'' fis'' g'' a'']) } b''16 a'' g'' fis'' e'' d'' cis'' b'\!
 cis''16\f e'' d'' fis'' e'' g'' fis'' a'' g'' b'' a'' cis''' b'' d''' cis''' e''' d'''4 r4 r2 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 r2^\fermata e'2^\trill^\fermata fis'4_\markup { \italic "dolce" }^\markup { "sul D e G" }( g' a' b'8 cis'') d''2( a')
 g'4( fis' e' fis'8 d') e'2( a) fis'4( g' a' b'8 cis'') d''2( a') b'4( g' e' a')
 fis'16( g' fis' e' \times 2/3 { fis'8[ g' a'] b'[ cis'' d''] } e''16 fis'' g'' a'') b''4( g'' e'' a'')
 fis''16( g'' fis'' e'' \times 2/3 { fis''8[ g'' a''] b''[ cis''' d'''] } e'''16 fis''' g''' a''')
 b'''2_\markup { \italic "dimin." }( g''' e''' a''') d'''4\pp r4 r2 R1
 cis'''16( b'' a'' b'' cis''' d''' e''' fis''') \times 2/3 { g'''8[ a' g'''] e'''[ a' e'''] cis'''[ a' cis'''] a''[ a' a''] g''[ a' g''] e''[ a' e''] }
 d''4 r r2 R1 cis''16( d'' cis'' b' cis'' d'' e'' fis'' g'' a'' g'' fis'' e'' fis'' e'' d'') cis''( d'' cis'' b' a' b' a' g' fis' g' fis' e' d' cis' b cis')
 \setTextCresc d'16\<( e' d' cis' d' e' fis' g' a' b' a' gis' a' b' cis'' a') d''( e'' d'' cis'' d'' e'' fis'' g''! a'' b'' a'' gis'' a'' b'' cis''' a'')
 d''' e''' d''' cis''' d''' e''' fis''' g'''!\! a'''\f b''' a''' gis''' a''' b''' cis'''' a''' d''''4\ff r4 <d' d'' d'''>4 r d'4 r r2 \bar "|."
}