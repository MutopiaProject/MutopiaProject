\version "2.6.0"

 violinotwo = {
 \set Staff.instrument = "Violino II"
 \set Staff.midiInstrument = "violin"
 \clef treble
 \key a \minor
 \time 2/4
 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2
 e'4\p^\markup { \large \italic "ten." } e'8\staccato e'\staccato e'4\staccato( e'\staccato)
 e'4 e'8\staccato e'\staccato e'4\staccato( e'\staccato)
 e'4 e'8\staccato fis'\staccato g'4\staccato( g'\staccato) g'4 g'8\staccato g'\staccato g'4 r
 g'4 g'8\staccato a'\staccato b'4\staccato( b'\staccato)
 fis'4 fis'8\staccato gis'\staccato a'4\staccato( a'\staccato)
 e'4 e'8\staccato e'\staccato e'4\staccato( e'\staccato) e'4 fis'8\staccato gis'\staccato a'4 r
 g'!4\pp g'8\staccato a'\staccato b'4\staccato( b'\staccato)
 fis'4 fis'8\staccato gis'\staccato a'4\staccato( a'\staccato)
 e'4 e'8\staccato e'\staccato e'4\staccato( e'\staccato)
 e'4 fis'8\staccato( gis'\staccato) a'4 r
 c''2_\markup { \large \italic "cresc. poco a poco" }( b')
 \grace { b'16[ c''] } d''4.( c''16 b') b'8( c'') c''4
 c''4. c''16( d'') dis''8[( e'') e''\staccato e''\staccato]
 \grace { d''!16[ e''] } f''4.( e''16 d'') d''8( e'') e''4
 e''2( dis''2) d''!8( b'16 cis'' d''8 e''16 d'') d''8( cis'') c''4
 c''2( b'4 c'') \grace { b'16[ c''] } d''4.( c''16 b') a'8\staccato a'16( b' c''8\staccato) c''16( d''
 e''2\f)( dis''2) d''!8_\markup { \large \italic "piu f." }( b'16 cis'' d''8 e''16 d'')
 d''8( cis'') c''4 c''2( b'4 c'') \grace { b'16[ c''] } d''4.( c''16 b') a'4 r
 r8\ff a'([ c'' e']) r b'([ d'' e']) r8 b'([ d'' gis']) r c''([ e'' a'])
 r8 a'([ c'' c']) r c''([ e'' e']) r b'([ d'' g']) r c''([ e'' g'])
 r8 c''([ e'' e']) r dis''([ b'' b']) r8 b'([ d''! d']) r cis''([ a'' a'])
 r8 c''!([ e'' e']) r b'([ e'' e']) r b'([ e'' e']) r c''([ e'' e'])
 r8_\markup { \large \italic "dimin." } c''([ e'' e']) r dis''([ b'' b'])
 r8 b'([ d''! d']) r cis''([ a'' a'])
 r8_\markup { \large \italic "sempre dimin." } c''!([ e'' e']) r b'([ e'' e'])
 r b'([ e'' <e' d''>]) <e' c''>4\p r4 R2 R2
 \grace { b16\p[ cis'] } d'4.( cis'16 b)
 \bar "||"

 \key a \major
 a2 ~ a2 b2 ~
 b4\<( a gis a) a( g a\! b\>) b4 a8 <g g'>\!
 <g g'>4 <g g'>\< ~ <g g'>2 ~ <g g'>8 <a g'> <a fis'>4 ~ <a fis'> a\!
 a8\>([ b cis') cis']( gis[ b b a\!]) gis4( <b gis'>)( <b a'>2)
 <b gis'>2 ~ <b gis'> <b gis'> ~ <b gis'> <b gis'>4( gis)
 g2_\markup { \large \italic "cresc." }( gis!2) g2( gis!2)
 g4_\markup { \large \italic "dimin." }( g' fis'8)[ fis'( d' fis']) cis'\p([ e') e'( d']
 cis'_\markup { \large \italic "cresc." }) cis'( \times 2/3 { d'8[ dis' e']) }
 g2( gis!2) g2( gis!2)
 g4_\markup { \large \italic "dimin." }( g' a'8)[ a( f' a']) e'\p([ g') g'( b)] c'4( <g e'>) ~

 \key a \minor
 <g f'>2 ~ <g e'> <g f'>2 ~ <g e'> ~ <g f'>_\markup { \large \italic "cresc." } r4
 \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { r8 r a'8\f\staccato g'\staccato[ f'\staccato e'\sf\staccato]
 d'\staccato[ c'\staccato b\staccato] a\staccato[ g'\staccato f'\staccato]
 e'\staccato[ d'\staccato c'\staccato] b r r } r4 r4 b8\ff\staccato b\staccato R2

 a4\p a8 a gis4 gis <b gis'>4 <b gis'>8 <b gis'> <c' a'>4 <c' a'>
 g!4 g8 <a a'> <c' e'>4 <c' e'> <b d'> <b d'>8 <b d'> <c' e'>4 r
 <c' e'>4 <c' e'>8 <c' fis'> <b fis'>4 <b fis' b'> <a d'> <a d'>8 <b e'>
 <a e'>4 <a e' a'> <c' a'> <c' a'>8 a gis r <c' a'> a <b gis'>4 a'8 b' <c' e'>8 r r4
 <c' e'>4 <c' e'>8 <c' fis'> <b fis'>4 <b fis' b'> <a d'> <a d'>8 <b e'>
 <a e'>4 <a e' a'> <c' a'> <c' a'>8 a gis r <c' a'> a <b gis'>4 a'8 b' <cis' e'>8 r r4
 <cis' e'>4 <cis' e'>8 <cis' e'> <d' f'>4 r <d' f'>  <d' f'>8 <d' f'> <cis' e'>4 r
 <cis' e'>8_\markup { \large \italic "cresc." }[ <cis' e'> <cis' e'>] r
 <d' f'>8[ <d' f'> <d' f'>] r <d' f'>[ <d' f'> <d' f'>] r
 r4 <cis' e'>8_\markup { \large \italic "dimin." } <cis' e'> r4 <d' f'>8 d''
 c''!16\pp d'' e'' d'' c'' d'' c'' b' a' b' c'' d'' e'' fis'' gis'' a''
 gis''16 e'' fis'' gis'' a'' b'' a'' g'' fis'' fis'' g'' a'' b'' b' cis'' dis''
 e''4_\markup { \large \italic "sempre pp" } e''8\staccato fis''\staccato g''4\staccato( g''\staccato)
 fis''4 fis''8\staccato gis''\staccato a''8\staccato[ f''!\staccato e''\staccato d''8] ~ d''8 c''4
 e''8 ~ e''8 a'4 e''8 ~ e''8 d''4 e''8
 fis''\staccato e''\staccato dis''16\staccato dis''\staccato e''\staccato fis''\staccato
 g''4 r R2 R2 R2 r4 r16 cis''16\staccato d''\staccato e''\staccato d''4 r
 r4 r16 b' c''! d'' e'' f'' g'' f'' e'' f'' e'' d'' c'' d'' e'' f'' g'' a'' b'' c'''
 fis''4 fis''8\staccato gis''\staccato a''4 a''4 ~ a''8 g''!4 g''8 ~ g''8 f''!4 f''8
 g''16 g' e' d' cis' e' a' g'
 f'16 g' a' b' cis'' d'' e'' f'' f'' <gis f'>_\markup { \large \italic "cresc." }
 <gis f'>16 <gis f'> <gis f'> <gis f'> <gis f'> <gis f'>
 <gis f'>16 <gis f'> <gis f'> <gis f'> <gis f'> <gis f'> <gis f'> <gis f'>
 <gis f'>16 <gis f'> <gis f'> <gis f'> <gis f'> <gis f'> <gis f'> <gis f'>
 <gis f'>16 b' b' b' b' b' e'' d''
 <e' c''!>4\ff^\markup { \large \italic "ten." } <e' c''>8\staccato <e' c''>\staccato
 <e' b'>4\staccato( <e' b'>\staccato)
 <b' gis''>4 <b' gis''>8\staccato <b' gis''>\staccato <c'' a''>4\staccato( <c'' a''>\staccato)
 <c'' a''>4 <c'' a''>8\staccato <c'' a''>\staccato <d'' b''>4\staccato( <c'' a''>\staccato)
 <b' gis''>4^\markup { \large \italic "ten." } <a' fis''>8\staccato <b' gis''>\staccato
 <c'' a''>4 r4 R2 R2 d'16\p b cis' d' e' d' cis' b
 \bar "||"

 \key a \major
 a2 ~ a2
 b2\< ~ b4( a gis a) a\!\>( g a b) b4\! a8 <g g'>
 <g g'>4 <g g'>\< ~ <g g'>2 ~ <g g'>8 <a g'> <a fis'>4 ~ <a fis'> a\!
 a4\>( g a b) a4.( g8\! a4^\markup { \large \italic "dimin." } b)
 a4.( g8 a4 b) cis'2\pp( d' cis' d') d'8\ff r <d' b' g''> r
 \bar "||"

 \key a \minor
 <e' c'' e''>4 r4 d'4\p^\markup { \large \italic "ten." } d'8\staccato d'\staccato c'8 r r4
 <d' b'>8\ff r <d' b' g''> r
 <e' c'' e''>4 r4 d'4\p^\markup { \large \italic "ten." } d'8\staccato d'\staccato
 R2 r4 a4\p^\markup { \large \italic "pizz." } r e' r e' r a r c' r c' b a8 b c'4 r r c'
 r4 b r e' r a r a b a b b8 b a4 r R2 R2 b4 b8 b a4 r
 e'4^\markup { \large \italic "arco" } fis'8\staccato gis'\staccato <a a'>4\f r R2 R2
 \bar "|."

}