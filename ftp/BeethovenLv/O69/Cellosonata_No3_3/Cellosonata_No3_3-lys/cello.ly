\version "2.6.0"

 cello = {
 \set Staff.instrument = "VIOLONCELLO"
 \set Staff.midiInstrument = "cello"
 \clef bass
 \key e \major
 \time 2/4
 R2^\markup { \bold "Adagio cantabile." } \clef tenor fis'4.\p e'8 ~ e'8[ e'( a' gis'16 e')] fis'4 fis'8 r
 fis'8. fis'16 fis'16( e') dis'\staccato e'\staccato e'4._\markup { \italic "cresc." }( gis'16. e'32) dis'8\p( fis'4) fis'8
 fis'4 ~ fis'16[ b b b] b4( e'16 dis' e' gis) b4 a8( gis16^\trill a32 b) cis'8( b dis'8[ e'32 dis' e' gis])
 b8.( ais16 a8) r8 a8._\markup { \italic "cresc." } a16 a( gis) fis( e) cis'4\p( d'8) r16. b32 cis'8.( e'32 d') d'8 r16. b32
 cis'4\<( d'8\!\> cis'\!) d'4. \grace { e'32[ cis'] } d'16. e'32
 \new Voice { \cadenzaOn fis'4^\fermata_\markup { \italic "ad libitum" } ~ fis'8 e' d' cis' b4 bis4^\fermata \cadenzaOff }

 \bar "||" \break
 \key a \major
 \time 2/2
 \tempo 4 = 164
 \override Score.MetronomeMark #'transparent = ##t
 \once \override TextScript #'padding = #2.0
 \repeat volta 2 {
 cis'4\pp^\markup { \bold "Allegro vivace." }( a gis b) a2. b8\staccato cis'\staccato
 e'8( d') cis'\staccato d'\staccato cis'( b) ais\staccato b\staccato
 a!8( gis) fis\staccato gis\staccato e4 fis16( gis a b) cis'4_\markup { \italic "cresc." }( a gis b) a2. b8\staccato cis'\staccato
 e'8( d') cis'\staccato d'\staccato cis'( b) ais\staccato b\staccato a!4 r r2
 \clef bass a,1\p ~ a,1 ~ a,1 ~ a,1 ~ a,1 ~ a,4_\markup { \italic "cresc." }( gis, a, g,) fis, d, e, e a,4 r
 \clef tenor cis'2 d'1 cis'1 d'1 cis'8_\markup { \italic "cresc." }[ cis' cis'] r r dis'[ dis' dis']
 r8 e'[ e' e'] fis'[ fis' fis' fis'] e'16([ fis' gis' fis'] e'[ fis' gis' fis'] e'[ fis' gis' fis'] e'[ fis' gis' fis'])
 e'16([ fis' gis' fis'] e'[ fis' gis' fis'] e'[ fis' gis' fis'] e'[ gis' fis' e']) dis'\f[ b cis' dis'] e'[ fis' gis' ais']
 b'2 ~ b'8[ b'\staccato fis'\staccato dis'\staccato] b\staccato r r4 R1 R1
 \clef treble \acciaccatura e'8 e''2_\markup{ \italic "dolce" }( dis''4. e''8) fis'2. r4
 R1 R1 \acciaccatura e'8 e''2( dis''4. e''8) fis'2. r4 R1 R1
 r2 e''2_\markup { \italic "cresc." }( ~ e''2. fis''8 e'') dis''4.\p( e''8 fis'' dis'') b'\staccato( a'\staccato) a'4( gis') r2
 g'2_\markup { \italic "cresc." }( fis'4. g'8) gis'!1\f ~ gis'4 a' b' b'
 e'16\p([ fis' gis' a'] b'[ cis'' dis'' e''] dis''[ e'' dis'' cis''] b'[ a' gis' fis']) e'2( b)
 e'16([ fis' gis' a'] b'[ cis'' dis'' e''] dis''[ e'' dis'' cis''] b'[ a' gis' fis']) e'2( b)
 \setTextCresc e'8\<[ gis'] r8 gis' a'[ a'] r a' gis'[ gis'] r gis' fis'[ fis' fis' fis']
 gis'8[ gis'] r8 gis' a'[ a'] r a' gis'[ gis'] r gis' fis'[ fis' fis' fis'] gis'\!\ff[ gis'] r fis' r gis' r fis' r gis' r fis' r gis' r fis' gis'4 r r2
 R1 R1 }
 \alternative {
 { r2 \clef tenor b8\p( cis' d' gis a b e fis gis a b cis' d' dis' e' eis' fis' b e' d') }
 { r2 \clef tenor b8_\markup { \italic "dolce" }( cis' d' gis }
 }
 a b e fis gis a b c' cis'! d' dis' e' f' b e' d') c'4( a gis b) a2.\<( b16\!\> cis'! d' e'\!) f'4( d' cis'! e') d'2\< ~ d'8 d\!\>( e16[ fis! g a\!])
 b4( g fis! a bes g gis b c' a gis! b c' a ais cis'!)
 \setTextCresc d'4\<( b c' ees' e'! c' cis' e') f'( d' g' e' a' f' b' g' c''\!\f) r r2
 #(set-octavation 1)  \set Staff.ottavation = "8" \clef bass << { <e c'>4. } \\ { <c, g,>4.\ff } >>
 #(set-octavation 0) \clef tenor c''8 b'\staccato[ a'\staccato g'\staccato f'\staccato] e'4 r r2
 #(set-octavation 1)  \set Staff.ottavation = "8" \clef bass << { <e c'>4. } \\ { <c, g,>4.\ff } >>
 #(set-octavation 0) \clef tenor bes'8 g'\staccato[ e'\staccato c'\staccato g'\staccato]
 a'8 \clef bass <c a>8[ <c a> <c a>] <c bes>[ <c bes> <c bes> <c bes>]
 <c a>8[ <c a> <c a> <c a>] <c bes>[ <c bes> <c bes> <c bes>] <c a>[ <c a> <c a> <c a>] <c bes>[ <c bes> <c bes> <c bes>]
 c'4. c'8 b[ a g f] e4. e'8 d'[ c' b a] g4. g'8 f'[ f' e' d'] \afterGrace c'1 \startTrillSpan { b16[ \stopTrillSpan c'] }
 d'8\staccato] c'\staccato b\staccato a\staccato] g\staccato[ f\staccato e\staccato d\staccato]
 \setTextDim c8\staccato\>[ b,\staccato a,\staccato g,\staccato] f,\staccato[ e,\staccato d,\staccato c,\staccato] f,4\!\p r r2
 g,4\pp r r2 R1 \clef tenor g8\pp[ g g g] g[ g g g] g4 r r2 g8[ g g g] g[ aes aes aes] a4 r r2 a8[ a a a] a[ a a a]
 a4^\markup { \italic "ritard" } r r2 a8[ a a a] a[ a a a]
 cis'!4\p( a gis! b) a2. b8\staccato cis'\staccato e'8[( d') cis'\staccato d'\staccato] cis'[( b) ais\staccato b\staccato]
 a!8[( gis) fis\staccato gis\staccato] e4 fis16([ gis a b] cis'4_\markup { \italic "cresc." } a gis b) a2. b8\staccato cis'\staccato
 e'8[( d') cis'\staccato d'\staccato] cis'[( b) ais\staccato b\staccato] a!4\f r r2
 \clef bass a,1\p ~ a,1 d,1 e,1 a,8[ a, a, a,] a,[ a, a, a,] a,_\markup { \italic "cresc." }[ a, gis, gis,] a,[ a, g, g,]
 fis,8[ fis, d, d,] e,[ e, e e] a,4 r \clef tenor cis'2\p d'1 cis'16([ e' d' cis'] d'[ e' fis' gis'] a'[ gis' fis' e'] d'[ cis' b a])
 gis16([ a b cis'] d'[ cis' b a] gis[ a b a] gis[ e fis gis])
 a16_\markup { \italic "cresc." }[ b cis' b] a[ b cis' b] a[ b cis' b] a[ b cis' b] a[ b cis' b] a[ b cis' b] a[ b cis' b] a[ cis' b a]
 gis8[ gis' gis'] r \clef treble r8 a'[ a'] r r8 b'[ b' b'] gis'[ gis' gis' gis'] a'16[ b' cis'' b'] a'[ b' cis'' b'] a'[ b' cis'' b'] a'[ cis'' b' a']
 gis'8[ gis' a' a'] b'[ b' gis' gis'] cis''\f[ cis'' b' b'] a'[ a' a' a']
 gis'16\f[ e' fis' gis'] a'[ b' cis'' dis''] e''2 ~ e''2 ~ e''8[ e''\staccato b'\staccato gis'\staccato] e'4 \clef bass e,4 r2 R1
 \clef tenor a'2_\markup { \italic "dolce" }( gis'4. a'8) b2. r4 R1 R1 a'2( gis'4. a'8) b2. r4 R1 R1
 r2 a'2_\markup { \italic "cresc." }( ~ a'2. b'8 a') gis'4^\trill( b'8[ gis'] d''[ b' gis' e'] d'4( cis') r2
 c'2( b4._\markup { \italic "cresc." } c'8) cis'!1\f ~ cis'4 d' e' e'
 a16\p([ b cis' d'] e'[ fis' gis' a'] gis'[ a' gis' fis'] e'[ d' cis' b]) a2( e)
 a16([ b cis' d'] e'[ fis' gis' a'] gis'[ a' gis' fis'] e'[ d' cis' b]) a2( e)
 \setTextCresc a8\<[ a] r a d'[ d'] r d' cis'[ cis'] r cis' b[ b b b] cis'[ cis'] r cis' d'[ d'] r d'
 cis'8\!\ff r r4 r16 cis'[ d' e'] fis'[ e' fis' gis'] a'[ e' fis' gis'] a'[ gis' a' b'] cis''8 r r4
 \clef bass r16 e[ fis gis] a[ gis a b] cis'[ gis a b] cis'[ b cis' d'] e'4 r r2 R1 R1
 r2 cis'8_\markup { \italic "dolce" }( e fis gis a cis d e fis e d cis b, cis d dis e b, e d) cis4( a, gis, b,)
 \override Voice.DynamicLineSpanner #'padding = #1.5
 a,2. g,4( fis,2\< f, e,\!\> a,4 g,\!) fis,2\<( f, e,\!\> a,4 g,\!) fis,2( f,) e,2 e4\f\staccato e\staccato
 e'2\fp( ~ e'8 cis' d' e' a b cis' e gis a cis d e a, b, cis e, fis, gis, a, b,8) r8 r4 r2 R1
 r2 r8 e,8\p( fis, gis,) a,8( b, cis d e dis e d cis b, a, gis, a,\staccato) a,( b, cis)
 e8\<( d) cis\staccato d\staccato cis( b,) ais,\staccato b,\staccato\! a,!\>( gis,) fis,\staccato gis,\staccato a,\staccato a,( b, cis\!)
 e8\<( d) cis\staccato d\staccato cis( b,) ais,\staccato b,\staccato\! a,!\>( gis,) fis,\staccato gis,\staccato a,\staccato a,( b, cis\!)
 e8_\markup { \italic "cresc." }( d) cis\staccato d\staccato e( dis) cisis\staccato dis\staccato
 fis8( e) dis\staccato e\staccato fis( eis) eis\staccato eis\staccato fis1\p
 \setTextCresc gis1\< a2 d! e e, fis,1 gis, a,2( d,) e, e, a, d, e, e, a,8\!\ff a8[ a a] a[ a fis dis] e[ e cis a,] e[ e e e]
 cis'4\ff( a gis b) e2.( fis16 gis a b) cis'4( a gis b) e2.( fis16 gis a b)
 \setTextDim cis'4\>( a gis b a e dis fis e cis b, d! cis a, gis, b, a,\!\pp fis, e, gis, a, fis, e, gis,
 \setTextCresc a,4\< fis, e, gis, a, fis, e, gis, a,\!\f) r <a, e a> r a, r r2 \bar "|."
}