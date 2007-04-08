\version "2.6.0"

 violinoone = {
 \set Staff.instrument = "Violino I"
 \set Staff.midiInstrument = "violin"
 \clef treble
 \key a \minor
 \time 2/4
 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2
 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2
 e''4\p^\markup { \large \italic "ten." }
 e''8\staccato_\markup { \large \italic "cresc. poco a poco" }
 e''\staccato e''4\staccato( e''\staccato)
 e''4 e''8\staccato e''\staccato e''4\staccato( e''\staccato)
 e''4 e''8\staccato fis''\staccato g''4\staccato( g''\staccato)
 g''4 g''8\staccato( g''\staccato) g''4 r
 g''4 g''8\staccato a''\staccato b''4\staccato( b''\staccato)
 fis''4 fis''8\staccato gis''\staccato a''4\staccato( a''\staccato)
 e''4 e''8\staccato e''\staccato e''4\staccato( e''\staccato)
 e''4 fis''8\staccato( gis''\staccato) a''4 r
 g''!4\f g''8\staccato a''\staccato b''4\staccato( b''\staccato)
 fis''4_\markup { \large \italic "piu f." } fis''8\staccato gis''\staccato a''4\staccato( a''\staccato)
 e''4 e''8\staccato e''\staccato e''4\staccato( e''\staccato)
 e''4 fis''8\staccato( gis''\staccato) a''4 r
 c'''2\ff( b'') \grace { b''16[ c'''] } d'''4.( c'''16 b'') b''8( c''') c'''4
 c'''4. c''16( d'') dis''8[( e'') e''\staccato e''\staccato]
 \grace { d''!16[ e''] } f''4.( e''16 d'') d''8( e'') e''4
 e''4( e'''4 dis'''2) d'''!8( b''16 cis''' d'''8 e'''16 d''') d'''8( cis''') c'''4
 c'''2( b''4 c''') \grace { b''16[ c'''] } d'''4.( c'''16 b'')
 a''8\staccato a'16( b' c''8\staccato) c''16( d''
 e''4_\markup { \large \italic "dimin." })( e'''4 dis'''2)
 d'''!8( b''16 cis''' d'''8 e'''16 d''') d'''8( cis''') c'''4
 c'''2_\markup { \large \italic "sempre dimin." }( b''4 c''')
 \grace { b''16[ c'''] } d'''4.( c'''16 b'') a''4\p r4
 \grace { b'16[ c''] } d''4.( c''16 b') a'4\p r4 r4
 \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \override TupletBracket #'transparent = ##t
 \times 2/3 { e''8\p[ d'' b'] }
 \bar "||"

 \key a \major
 \times 2/3 { e''([ cis'' a'] cis''[ a' e']) a'([ e' cis'] cis''[ a' e']) cis''([ fis' d'] b'[ fis' d'])
 b'\<([ fis' d'] a'[ cis' a']) b([ d' gis'] a'[ cis' a'] d'[ fis' b'] cis''[ e' cis'']
 fis'[ a' d''\!] e''\>[ gis' e'']) d''([ gis' b'] a'[ cis'' a''\!])
 a''([ cis'' a'] e''\<[ cis'' g'] cis''[ g' e'] e''[ cis'' g'])
 e''([ cis'' g'] fis'[ d'' e''] fis''[ d'' fis'] e'[ cis'' e'']\!
 d''\>[ b' e']) e'([ a' cis'']) b'([ gis' e'] fis'[ a' dis''\!])
 e''([ b' gis'] e''[ b' gis'] fis''[ b' a'] fis''[ b' a'])
 e''([ b' gis'] e''[ b' gis'] dis''[ a' fis'] b'[ a' fis'])
 e'([ gis' b'] gis'[ b' e'']) fis''([ b' a'] fis''[ b' a']) e''([ b' gis'] e''[ b' gis'])
 e''_\markup { \large \italic "cresc." }([ bes' g'] e'[ g' bes'] e'[ gis'! b'!] e''[ b' gis'])
 e''([ bes' g'] e'[ g' bes'] e'[ gis'! b'!] e''[ b' gis'])
 e''_\markup { \large \italic "dimin." }([ bes' g'] e'[ g' bes'])
 fis'([ b'! fis']) fis'([ b' d''] cis''\p[ a' e'] d'[ gis' b'])
 e'_\markup { \large \italic "cresc." }([ a' cis''] d''[ dis'' e''])
 e''([ bes' g'] e'[ g' bes'] e'[ gis'! b'!] e''[ b' gis'])
 e''([ bes' g'] e'[ g' bes'] e'[ gis'! b'!] e''[ b' gis'])
 e''_\markup { \large \italic "dimin." }([ bes' g'] e'[ g' bes'] a'[ f'' a'])
 a'([ d'' f''] e''\p[ c'' g'] f'[ b' d'']) e'([ c'' e''] c''[ e'' g'']) }
 \bar "||"

 \key a \minor
 \times 2/3 { b'8([ d'' g''] b'[ d'' g'']) c''([ e'' g''] c''[ e'' g''])
  b'([ d'' g''] b'[ d'' g'']) c''([ e'' g''] c''[ e'' g''])
 b'_\markup { \large \italic "cresc." }([ d'' g''] b'[ d'' g'']) }
 r4 \times 2/3 { r8 r a''8\f\staccato g''\staccato[ f''\staccato e''\sf\staccato]
 d''\staccato[ c''\staccato b'\staccato] a'\staccato[ g'\staccato f'\staccato]
 e'\staccato[ d'\staccato c'\staccato] b r r } r4 r4 e'8\ff\staccato e'\staccato R2
 r16\p c''\staccato^\markup { \large \italic "pizz." }
 a'\staccato c''\staccato e''\staccato c''\staccato a'\staccato c''\staccato e'8 r r4
 r16_\markup { \large \italic "sempre stacc." } b' gis' b' e'' b' gis' b' e'8 r r4
 r16 c'' g' c'' e'' c'' a' c'' g8 r r4 r16 d'' b' d'' g'' d'' b' d'' g'8 r r4
 r16 g' e' g' c'' e' c' fis' fis'8_\markup { \large \italic "sempre p" } r r4
 r16 a' fis' a' d'' a' e' b' e'8 r r4 r16 c'' a' c'' e'' c'' a' c'' e'8 r r4
 r16 b' e' b' e'' b' e' d'' <e' c''>8 r r4 r16 e' b e' b' e' c' fis' fis'8 r r4
 r16 fis' d' fis' a' d' b e' e'8 r r4 r16 c'' a' c'' e'' c'' a' c'' e'8 r r4
 r16 b' e' b' e'' b' e' d'' <e' cis''>8 r r4
 r16 cis'' g'! cis'' e'' cis'' g' e'' f''8 r r4 r16 f' d' f' b' f' d' d'' <e' cis''>8 r r4
 r16 cis''_\markup { \large \italic "cresc." } g' cis'' e'' cis'' g' e'' f''8 r r4
 r16 f' d' f' b' f' d' d'' cis''8_\markup { \large \italic "dimin." } r r4 r16 f' d' f' b' f' d' gis'
 a'4\pp a'8\staccato b'\staccato c''4\staccato( c''4\staccato)
 b'4 b'8\staccato cis''\staccato d''\staccato[ c''!\staccato b'\staccato a'\staccato]
 g'!16_\markup { \large \italic "sempre pp" } a' b' a' g' a' g' fis' e' fis' g' a' b' cis'' dis'' e''
 e''16 a' b' cis'' d''! b' e'' d'' c''! b' c'' d'' e'' e' fis' gis' a'4 r R2
 R2 r4 r8 fis''8 ~ fis''8_\markup { \large \italic "sempre pp" } e''4 b''8 ~ b''8 e''4 b''8 ~ b''8
 a''4 b''8 c'''8\staccato a''\staccato gis''16\staccato gis''\staccato a''\staccato b''\staccato
 a''4 r r r16 fis''16\staccato g''!\staccato a''\staccato
 g''8 g' c''4 ~ c''4 c''8\staccato d''\staccato e''4\staccato( e''4\staccato)
 b'16 c'' d'' c'' b' d'' c'' b' a' b' c'' d'' e'' fis'' gis'' a''
 g'!16 a' bes' a' g' bes' a' g' f'! g' a' bes' c''8 a''8 ~ a''8 g''4 g''8 ~ g''8 f''!4 f''8
 f''16 d'' e'' f'' d'' b' c'' d'' b' gis' a' b' gis' a' b' c''
 d''16 e'' f'' gis'' a'' b'' c''' cis''' d''' e''' e''' e''' e''' e''' e''' e'''
 <e'' e'''>4\ff^\markup { \large \italic "ten." } <e'' e'''>8\staccato <e'' e'''>\staccato
 <e'' e'''>4\staccato( <e'' e'''>\staccato)
 <e'' e'''>4 <e'' e'''>8\staccato <e'' e'''>\staccato <e'' e'''>4\staccato( <e'' e'''>\staccato)
 <e'' e'''>4 <e'' e'''>8\staccato <e'' e'''>\staccato <e'' e'''>4\staccato( <e'' e'''>\staccato)
 <e'' e'''>4^\markup { \large \italic "ten." } fis''8\staccato gis''\staccato a''4 r4
 d''16\p b' c'' d'' e'' d'' c'' b' a'4 r4
 r4 \times 2/3 { e''8\p[ d'' b'] }
 \bar "||"

 \key a \major
 \times 2/3 { e''([ cis'' a'] cis''[ a' e']) a'([ e' cis'] cis''[ a' e']) cis''([ fis' d'] b'[ fis' d'])
 b'\<([ fis' d'] a'[ cis' a']) b([ d' gis'] a'[ cis' a'])
 d'([ fis' b'\!] cis''\>[ e' cis''] fis'[ a' d''] e''[ gis' e'']) d''([ gis' b'] a'[ cis'' a''\!])
 a''([ cis'' a'] e''[ cis'' g'] cis''[ g' e'] e''\<[ cis'' g'])
 e''([ cis'' g'] fis'[ d'' e''] fis''[ d'' fis'] e'[ cis'' e''\!])
 d''\>([ a' fis'] e'[ g' cis''] d''[ a' fis'] e'[ b' e''] cis''[ a' e'] cis''[ a' e'\!]
 d''_\markup { \large \italic "dimin." }[ a' fis'] e''[ b' e'] cis''[ a' e'] cis''[ a' e'])
 d''([ a' fis'] e''[ b' e'']) } a'2\pp ~ a'2 ~ a' ~ a' <d' b'>8\ff r <d'' b''> r
 \bar "||"

 \key a \minor
 <e'' c'''>4 r4 gis'4\p^\markup { \large \italic "ten." } fis'8\staccato gis'\staccato a'8 r r4
 <d' b'>8\ff r <d'' b''> r
 <e'' c'''>4 r4 gis'4\p^\markup { \large \italic "ten." } fis'8\staccato gis'\staccato
 R2 r4 a'4\p^\markup { \large \italic "pizz." } r4 e' r e' r a' r e' r e' d' c'8 d' e'4 r r c'
 r4 b' r e' r a' r c' d' c' d' d'8 d' c'4 r R2 R2 d'4 d'8 d' c'4 r
 c'4 e''4^\markup { \large \italic "arco" } fis''8\staccato\f\> gis''\staccato a''4\! R2 R2
 \bar "|."
}