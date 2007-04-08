\version "2.6.0"

 cello = {
 \set Staff.instrument = "VIOLONCELLO"
 \set Staff.midiInstrument = "cello"
 \clef bass
 \key a \minor
 \time 3/4
 r4^\markup { \bold "Allegro molto." } R2. R2. R2. R2. R2. R2. R2. r4 r e4\p ~ e r a ~ a r b ~
 b \acciaccatura c'8 b8 a b4 c'4 r d' ~ d' r e' ~ e' r d'\staccato
 \acciaccatura d'8 c'4\staccato b\staccato a\staccato \acciaccatura c'8 b4\staccato a\staccato r R2.
 r4 r e'\p ~ e' d'\staccato c'\staccato \acciaccatura e'8 d'4\staccato c'\staccato r R2.
 r4 r c'\p ~ c' b\staccato a\staccato \acciaccatura c'8 b4\staccato a\staccato r
 \clef tenor f'4\f r r f' r r e' r r g' r r g' r r b' r b'\p b'2.( dis'2.) e'4 r r R2. b'2.( dis'2. e'2. d'!2.) c'4 r r R2.
 e'2.( gis2. \setTextCresc a2.\<) e'2. ~ e'2. a2. ~ a2. d'2. ~ d'2. g'2. ~ g'4\!\f g'4\staccato e'\staccato
 a'4( f') d'\staccato g'4( e') c'\staccato R2. g'4( d') b\staccato R2. R2. R2. R2.
 r4 r d'4\p d' \acciaccatura e'8 d'8 c' d'4 e'4 r r R2. r4 r b b \acciaccatura c'8 b8 a b4 c' r e'4 ~ e' r e' ~ e' r
 a' ~ a' r a'( gis') r e' ~ e' r e' ~ e' r e'( a') r a'( gis') r e'( a) r a( \clef bass e) r e( a,) r a,( e,) r
 \clef treble \setTextCresc e'4\< ~ e' r e' ~ e' r e' ~ e' r e'\!\f ~ e' r a' ~ a' r b' ~ b' \acciaccatura c''8 b'8 a' b'4
 c''4 r d'' ~ d'' r e'' ~ e'' r d'' ~ d'' \acciaccatura e''8 d''8 c'' d''4 e'' r b' ~ b' r c'' ~ c'' r b' ~ b' \acciaccatura c''8 b'8 a' b'4
 a'4 r a' ~ a' r gis'( a') r a' ~ a' r gis'( a') r gis'( a') r gis'( a') r gis'( a') r gis'( \setTextDim a'2.\>) ~
 a'2. ~ a'2. ~ a'2. ~ a'4\!\p r r R2. R2. R2. R2. \bar "||"

 \clef tenor \key a \major <e cis'>2.^\markup { \italic "dolce" }( <d b>2. <fis d'>2 <e cis'>4) <e cis'>2.
 e'2.( d'2. <d' fis'>2 <cis' e'>4 <a cis'>) r r R2. R2. R2. r4 e4_\markup { \italic "sempre p" }( b) cis'4\staccato cis'( b)
 b4\staccato b( cis') d'\staccato d'( cis') a r r
 <e cis'>2.^\markup { \italic "dolce" }( <d b>2. <fis d'>2 <e cis'>4) <e cis'>2. e'2.( d'2. <d' fis'>2 <cis' e'>4 <a cis'>) r r
 R2. R2. R2. \clef bass r4 e4_\markup { \italic "sempre p" }( b) cis'\staccato cis'( b) b\staccato b( cis')
 d'4\staccato d'( cis') a r cis'( b) r cis'( b) r cis'( b) r cis'( b) r cis'( b_\markup { \italic "cresc." }) r cis'( b) r cis'( b) r
 cis'4( b8 cis' b cis' b cis') b\f( cis' b cis' b cis') b( cis' b cis' b cis') b( cis' b cis' b cis') b\fp( cis' b cis' b cis')
 d'( cis' d' cis' d' cis') b( a b a b a) gis( fis gis fis gis fis) e( fis e fis e fis) d( e d e d e) cis( d cis d cis d) b,( cis b, cis b, cis)
 a,8( b, a, b, a, b, \setTextCresc a,\< b, a, b, a, b,) a,[ b, a, b, a, b,] a,[ b, a, b, a, b,] a,[ b, a, b, a, b,] a,[ b, a, b, a, b,]
 a,8[ b, a, b, a, b,] a,[ b, a, b, a, b,] a,[ b, a, b, a, b,] a,[ b, a, b, a, b,] a,[ b, a, b, a, b,] a,[ b, a, b, a, b,]
 a,\!\f[ b, a, b, a, b,] a,[ b, a, b, a, b,] a,[ b, a, b, a, b,] a,[ b, a, b, a, b,] a,[ b, a, b, a, b,]
a,\sf[ b, a, b, a, b,] a,\sf[ b, a, b, a, b,] a,\sf[ b, a, b, a, b,] a,4 r \setTextDim b,\>( a,) r b,( a,) r b,( a,) r b,( a,2.\!\p) ~
 a,2._\markup { \italic "piu p" } ~ a,2. ~ a,2. ~ a,4\pp r r r4 r b,( a,) r r r4 r b,( a,) r r R2. R2. R2. \bar "||"

 \key a \minor
 R2. R2. R2. R2. R2. R2. R2. r4 r e4\p ~ e r a ~ a r b ~
 b \acciaccatura c'8 b8 a b4 c'4 r d' ~ d' r e' ~ e' r d'\staccato
 \acciaccatura d'8 c'4\staccato b\staccato a\staccato \acciaccatura c'8 b4\staccato a\staccato r R2.
 r4 r e'\p ~ e' d'\staccato c'\staccato \acciaccatura e'8 d'4\staccato c'\staccato r R2.
 r4 r c'\p ~ c' b\staccato a\staccato \acciaccatura c'8 b4\staccato a\staccato r
 \clef tenor f'4\f r r f' r r e' r r g' r r g' r r b' r b'\p b'2.( dis'2.) e'4 r r R2. b'2.( dis'2. e'2. d'!2.) c'4 r r R2.
 e'2.( gis2. \setTextCresc a2.\<) e'2. ~ e'2. a2. ~ a2. d'2. ~ d'2. g'2. ~ g'4\!\f g'4\staccato e'\staccato
 a'4( f') d'\staccato g'4( e') c'\staccato R2. g'4( d') b\staccato R2. R2. R2. R2.
 r4 r d'4\p d' \acciaccatura e'8 d'8 c' d'4 e'4 r r R2. r4 r b b \acciaccatura c'8 b8 a b4 c' r e'4 ~ e' r e' ~ e' r
 a' ~ a' r a'( gis') r e' ~ e' r e' ~ e' r e'( a') r a'( gis') r e'( a) r a( \clef bass e) r e( a,) r a,( e,) r
 \clef treble \setTextCresc e'4\< ~ e' r e' ~ e' r e' ~ e' r e'\!\f ~ e' r a' ~ a' r b' ~ b' \acciaccatura c''8 b'8 a' b'4
 c''4 r d'' ~ d'' r e'' ~ e'' r d'' ~ d'' \acciaccatura e''8 d''8 c'' d''4 e'' r b' ~ b' r c'' ~ c'' r b' ~ b' \acciaccatura c''8 b'8 a' b'4
 a'4 r a' ~ a' r gis'( a') r a' ~ a' r gis'( a') r gis'( a') r gis'( a') r gis'( a') r gis'( \setTextDim a'2.\>) ~
 a'2. ~ a'2. ~ a'2. ~ a'4\!\p r r R2. R2. R2. R2. \bar "||"

 \clef tenor \key a \major <e cis'>2.^\markup { \italic "dolce" }( <d b>2. <fis d'>2 <e cis'>4) <e cis'>2.
 e'2.( d'2. <d' fis'>2 <cis' e'>4 <a cis'>) r r R2. R2. R2. r4 e4_\markup { \italic "sempre p" }( b) cis'4\staccato cis'( b)
 b4\staccato b( cis') d'\staccato d'( cis') a r r
 <e cis'>2.^\markup { \italic "dolce" }( <d b>2. <fis d'>2 <e cis'>4) <e cis'>2. e'2.( d'2. <d' fis'>2 <cis' e'>4 <a cis'>) r r
 R2. R2. R2. \clef bass r4 e4_\markup { \italic "sempre p" }( b) cis'\staccato cis'( b) b\staccato b( cis')
 d'4\staccato d'( cis') a r cis'( b) r cis'( b) r cis'( b) r cis'( b) r cis'( b_\markup { \italic "cresc." }) r cis'( b) r cis'( b) r
 cis'4( b8 cis' b cis' b cis') b\f( cis' b cis' b cis') b( cis' b cis' b cis') b( cis' b cis' b cis') b\fp( cis' b cis' b cis')
 d'( cis' d' cis' d' cis') b( a b a b a) gis( fis gis fis gis fis) e( fis e fis e fis) d( e d e d e) cis( d cis d cis d) b,( cis b, cis b, cis)
 a,8( b, a, b, a, b, \setTextCresc a,\< b, a, b, a, b,) a,[ b, a, b, a, b,] a,[ b, a, b, a, b,] a,[ b, a, b, a, b,] a,[ b, a, b, a, b,]
 a,8[ b, a, b, a, b,] a,[ b, a, b, a, b,] a,[ b, a, b, a, b,] a,[ b, a, b, a, b,] a,[ b, a, b, a, b,] a,[ b, a, b, a, b,]
 a,\!\f[ b, a, b, a, b,] a,[ b, a, b, a, b,] a,[ b, a, b, a, b,] a,[ b, a, b, a, b,] a,[ b, a, b, a, b,]
a,\sf[ b, a, b, a, b,] a,\sf[ b, a, b, a, b,] a,\sf[ b, a, b, a, b,] a,4 r \setTextDim b,\>( a,) r b,( a,) r b,( a,) r b,( a,2.\!\p) ~
 a,2._\markup { \italic "piu p" } ~ a,2. ~ a,2. ~ a,4\pp r r r4 r b,( a,) r r r4 r b,( a,) r r R2. R2. R2. \bar "||"

 \key a \minor
 R2. R2. R2. R2. R2. R2. R2. r4 r e4\p ~ e r a ~ a r b ~
 b \acciaccatura c'8 b8 a b4 c'4 r d' ~ d' r e' ~ e' r d'\staccato
 \acciaccatura d'8 c'4\staccato b\staccato a\staccato \acciaccatura c'8 b4\staccato a\staccato r R2.
 r4 r e'\p ~ e' d'\staccato c'\staccato \acciaccatura e'8 d'4\staccato c'\staccato r R2.
 r4 r c'\p ~ c' b\staccato a\staccato \acciaccatura c'8 b4\staccato a\staccato r
 \clef tenor f'4\f r r f' r r e' r r g' r r g' r r b' r b'\p b'2.( dis'2.) e'4 r r R2. b'2.( dis'2. e'2. d'!2.) c'4 r r R2.
 e'2.( gis2. \setTextCresc a2.\<) e'2. ~ e'2. a2. ~ a2. d'2. ~ d'2. g'2. ~ g'4\!\f g'4\staccato e'\staccato
 a'4( f') d'\staccato g'4( e') c'\staccato R2. g'4( d') b\staccato R2. R2. R2. R2.
 r4 r d'4\p d' \acciaccatura e'8 d'8 c' d'4 e'4 r r R2. r4 r b b \acciaccatura c'8 b8 a b4 c' r e'4 ~ e' r e' ~ e' r
 a' ~ a' r a'( gis') r e' ~ e' r e' ~ e' r e'( a') r a'( gis') r e'( a) r a( \clef bass e) r e( a,) r a,( e,) r
 \clef treble \setTextCresc e'4\< ~ e' r e' ~ e' r e' ~ e' r e'\!\f ~ e' r a' ~ a' r b' ~ b' \acciaccatura c''8 b'8 a' b'4
 c''4 r d'' ~ d'' r e'' ~ e'' r d'' ~ d'' \acciaccatura e''8 d''8 c'' d''4 e'' r b' ~ b' r c'' ~ c'' r b' ~ b' \acciaccatura c''8 b'8 a' b'4
 a'4 r a' ~ a' r gis'( a') r a' ~ a' r gis'( a') r gis'( a') r gis'( a') r gis'( a') r gis'( \setTextDim a'2.\>) ~
 a'2. ~ a'2. ~ a'2. ~ a'4\!\p r r \clef bass r4 r b,\pp( a,) r r r r b,( a,) r r R2. R2. R2. e4^\markup { "pizz." } r r
 a4 r r b r r c' r r b r r a r r g r r f r r e r e^\markup { "arco" } ~ e r r r r e ~ e r e ~ e r e ~ e r e( a,) r \bar "|."
}