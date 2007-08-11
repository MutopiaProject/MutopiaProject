\version "2.10.3"

 violinoprincipale = {
 \set Staff.instrumentName = \markup { \center-align { "Violino" "principale." } }
 \set Staff.midiInstrument = "violin"
 \clef treble
 \key g \major
 \time 4/4
 \partial 4 r4 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 r16 d''16_\markup { "dolce" }( fis'' a'') b''16\staccato( d''\staccato g''\staccato b''\staccato)
 d'''4^\markup { "ten." } r4 r16 d''16( fis'' a'') b''16\staccato( d''\staccato g''\staccato b''\staccato)
 d'''4^\markup { "ten." } r4 r8 g'''4 fis'''16( e''') e'''16( d''' cis''' b'') ais''( fis''') fis'''\staccato fis'''\staccato
 \cadenzaOn
 \acciaccatura gis'''16 fis'''2^\trill
 \override NoteHead #'font-size = #-2 eis'''8_\markup { \small "ad libitum" }[ gis''' fis''' eis''' fis''']
 \override NoteHead #'font-size = #0 fis''4^\fermata r4 \cadenzaOff  \bar "|"
 r16 dis'''16( fis''' e'''!) e'''\staccato( e'''\staccato gis'''\staccato b'''\staccato) e''''4^\markup { "ten." } r4
 r16 cis'''16( e''' d'''!) d'''\staccato( d'''\staccato fis'''\staccato a'''\staccato) d''''4^\markup { "ten." } r4
 r16 cis'''( e''' d''') r b''( d''' c''') r gis''( b'' a'') r a''( c''' b'') r4 g''!4~ g''16( a'' b'' c''' cis''' d''' e''' d''')
 r8 cis'''32( d''' e''' d''') r8 b''32( c''' d''' c''') r8 gis''32( a'' b'' a'') r8 a''32( b'' c''' b'')
 g''!16\staccato d''\staccato b'\staccato d''\staccato g'\staccato d'\staccato b\staccato d'\staccato g4 r4
 \override TupletBracket #'transparent = ##t
 \override TupletNumber #'transparent = ##t
 \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 4/6 { r16 d''16([ cis'' d'' fis'' a'']) b''\staccato([ d''\staccato cis''\staccato d''\staccato g''\staccato b''\staccato]) } d'''4 r
 \times 4/6 { r16 d''16([ cis'' d'' fis'' a'']) b''\staccato([ d''\staccato cis''\staccato d''\staccato g''\staccato b''\staccato]) } d'''4 r
 r4 g'''4~ \times 4/6 { g'''16([ fis''' e''' d''' cis''' b'']) } ais''32([ b'' bis'' cis''' d''' dis''' e''' eis'''])
 \cadenzaOn fis'''2^\trill^\fermata \override NoteHead #'font-size = #-2 ais'''4^\trill( cis''''8[ eis'''] gis'''4
 \override NoteHead #'font-size = #0 fis'''4^\fermata) r4 \cadenzaOff \bar "|"
 \times 4/6 { r16 \acciaccatura e'''!32 dis'''16([ cis''' dis''' e''' fis'''])
 e'''16\staccato([ e'''\staccato dis'''\staccato e'''\staccato gis'''\staccato b'''\staccato]) } e''''4 r4
 \times 4/6 { r16 \acciaccatura d'''!32 cis'''16([ b'' cis''' d''' e'''])
 d'''16\staccato([ d'''\staccato cis'''\staccato d'''\staccato fis'''\staccato a'''\staccato]) } d''''4 r4
 r8 \times 2/3 { cis'''16[ e''' d'''] } r8 \times 2/3 { b''16[ d''' c'''] } r8 \times 2/3 { gis''16[ b'' a''] } r8 \times 2/3 { a''16[ c''' b''] }
 r4 g''4~ g''32([ a'' g'' fis'' g'' a'' b'' c'''] cis'''[ d''' cis''' d''' cis''' d''' e''' d'''])
 r32 d'''32([ cis''' d''' cis''' d''' e''' d''']) r c'''([ b'' c''' b'' c''' d''' c''']) r a''([ gis'' a'' gis'' a'' b'' a'']) r b''([ a'' b'' a'' b'' c''' b''])
 g''!32\ff^\markup { "arco" }([ g a b c' d' e' fis'] g'64[ a' b' c'' d'' e'' fis'' g''] \times 4/6 { a''32[ b'' c''' d''' e''' fis'''] } g'''8) r8 r4
 R1 R1 R1 R1 R1 R1 R1 R1 R1
 \cadenzaOn r2 g'4_\markup { \italic "dolce" }~ \override NoteHead #'font-size = #-2 g'8([ a' g' fis' g' d' e' fis' g' a' b' c''])
 \override NoteHead #'font-size = #0 \cadenzaOff \bar "|"
 \cadenzaOn d''4 r b'4~ \override NoteHead #'font-size = #-2 b'8([ c'' b' a' b' g' a' b' c'' d'' e'' fis''])
 \override NoteHead #'font-size = #0 \cadenzaOff \bar "|"
 \cadenzaOn g''4 \override NoteHead #'font-size = #-2 d''8([ e'' d'' c'' d'' b' c'' d'' e'' fis'' g'' a'']) \override NoteHead #'font-size = #0
 b''4 \override NoteHead #'font-size = #-2 g''8([ a'' g'' fis'' g'' d'' e'' fis'' g'' a'' b'' c''']) \override NoteHead #'font-size = #0
 \cadenzaOff \bar "|"
 d'''16( cis''' e''' d''' c''' b'' d'''_\accent b'' a'' g'' b''_\accent g'' e'' d'' g''_\accent d'')
 d''16\( c'' e''_\accent c'' b' a' c''_\accent a' gis'\staccato_\markup { "dimin." }( a'\staccato) c''\staccato( a'\staccato)
 gis'\staccato( a'\staccato c''\staccato fis'\staccato)\)
 g'!2^\markup { "sul G e D." }_\markup { \italic "cantabile" } b'2 a'4.( b'8 c''8[ b' a' g'])
 g'8([ fis' e' d']) d'8 d''4( c''8) ais'4( b'2 c''4) d''2 g'4~ g'16[( b'') a''\staccato g''\staccato] fis''4( e'')~ e''16 fis''( g'' dis'' e'' b' c'' a')
 g'4~ g'8 a'16( b') c''16\staccato( d''!\staccato) e''\staccato( fis''\staccato) g''\staccato a''\staccato b''\staccato g'(
 \afterGrace a'1^\trill) { gis'16[ a'] } \afterGrace a''1^\trill { gis''16[ a''] }
 a''8\staccato([ gis''\staccato a''\staccato b''\staccato]) c'''\staccato([ cis'''\staccato d'''\staccato dis'''\staccato]
 e'''4~ e'''16( d'''! c'''! b'') d'''( c''') b''\staccato( a''\staccato)
 a''( g''! fis'' g'') a''4( b''8\staccato)( d'''\staccato) g'''8. g''16( a'' g'' fis'' g'') b''16( a'' g'' a'') b''8\staccato( d'''\staccato)
 g'''2_\markup { \italic "sempre perdendosi" }~ g'''8 g'''4 e'''4 b''4 cis'''8 cis'''2.( fis'''8.) cis'''16 dis'''4( e'''2) e'''8. b''16
 cis'''4 d'''!4~ d'''8 d'''4 d'''8~ d'''8 d'''4 c'''!4 a''4 b''8~ b''8\pp g''4 d''8~ d''8([ g'' b'' d'''])~ d'''8 d'''4 c''' a'' b''8
 g''2 g'4~ g'16( b' d'' g'') \grace { fis''32[ g'' a''] } g''4( fis''4)~ fis''8 c'''16( a'' fis'' a'' c'' d'')
 c''4 b'2 g'32([ a' b' c'' d'' e'' fis'' g'']) \grace { fis''32[ g'' a''] } g''8. fis''16 c'''4~ c'''16 a''( fis'' g'' a'' fis'' c'' d'')
 e''16( c'' a' b' c'' a' fis' g') a'( fis') d'\staccato( e'\staccato fis'\staccato g'\staccato a'\staccato b'\staccato)
 c''16\staccato( cis''\staccato d''\staccato dis''\staccato) e''4~ e''16( d''! c''! b') d''( c'') a'\staccato( b'\staccato)
 g'2_\markup { \italic "cantabile" }( b'2) a'4~ a'8._\turn b'16
 \times 2/3 { d''8[( c'') b'\staccato] b'[( a') g'!\staccato] }
 \cadenzaOn \times 2/3 { g'8[( fis') e'\staccato] }
 d'4~ \override NoteHead #'font-size = #-2 d'8([ e' d' cis' d' e' fis' g' a' b' c''! cis''])
 \override NoteHead #'font-size = #0 d''16([ dis'' e'' a']) \cadenzaOff \bar "|"
 c''!4( b')~ b'8 b'16( c'') c''8.^\trill( b'32 c'') d''2 g4~ g32[ d'''( c''' b'' a'' g'' fis'' g'')]
 fis''4( e'')~ e''32([ fis'' g'' fis'' g'' fis'' g'' dis''] e''[ dis'' e'' b' c'' b' c'' a'])
 \cadenzaOn g'4~ \override NoteHead #'font-size = #-2 g'8[ a' g' fis' g' d' e' fis' g' a' b' c'' d'' e'' fis'' g'' a'' b'' c''' d''' b'' c''' a'']
 \override NoteHead #'font-size = #0 \cadenzaOff \bar "|"
 a''4^\trill d'''4^\trill d'4.^\trill( e'16 fis') g'2. g'16( b' d'' g'') g''4( fis'')~ fis''8 c'''16( a'' fis''16 a'' c'' d'')
 c''4 b'2 \times 8/12 { g'32([ a' g' fis' g' a' b' c'' d'' e'' fis'' g'']) }
 \grace { fis''64[ g'' a''] } g''8. fis''16 c'''4~ c'''16 a''( fis'' g'' a'' fis'' c'' d'')
 b'4~ b'16 d''( cis'') d''( cis'') d''( e'') d''( cis'') d''( e'') d''( g''4)~ g''16 g''( fis'') g''( fis'') g''( a'') g''( fis'') g''( a'') g''(
 ais'') b''( c''') b''( ais'') b''( c''') b''( cis''') d'''( e''') d'''( cis''') d'''( e''') d'''(
 cis'''_\markup { \italic "dimin." }) d'''\staccato e'''\staccato d'''\staccato cis'''\staccato d'''\staccato e'''\staccato d'''\staccato
 cis'''\staccato d'''\staccato e'''\staccato d'''\staccato cis'''\staccato d'''\staccato e'''\staccato d'''\staccato
 cis'''\staccato( d'''\staccato e'''\staccato d'''\staccato) cis'''\staccato( d'''\staccato g'''\staccato b'''\staccato) d''''4 r4
 r16 d'''16\pp\staccato( fis'''\staccato a'''\staccato) b'''\staccato( d'''\staccato g'''\staccato b'''\staccato) d''''4 r4 R1 R1
 a''2\ff^\trill^\fermata
 \cadenzaOn \override NoteHead #'font-size = #-2
 a4^\markup { "Cadenza ad lib." } d' b gis b^\fermata a^\fermata \cadenzaOff \bar "||"
 }