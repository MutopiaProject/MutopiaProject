\version "2.6.0"

 cello = {
 \set Staff.instrument = "VIOLONCELLO"
 \set Staff.midiInstrument = "cello"
 \clef bass
 \key a \major
 \time 2/2
 \once \override TextScript #'padding = #2.5
 a,2\p^\markup { \bold "Allegro, ma non tanto." }( e_\markup { \italic "dolce" })
 \repeat volta 2 { fis2.( cis4 e4 d cis d8 b,)
 a,2( gis,4) e,4( a, fis, cis, dis,) e,1 ~ e,1 ~ e,1 ~ e,1 ~ e,2._\markup { \italic "cresc." } e,4
 e,4\staccato( e,\staccato e,\staccato e,\staccato) e,2\f^\fermata r2^\fermata
 \new Voice { \cadenzaOn s4 s1 s4 s8 s4 \cadenzaOff }
 R1 R1 R1 r2 r4 e\p( a fis cis dis) e2. gis4( a gis a cis') \clef tenor e'2.( d'8 b) a4( gis a cis')
 e'2._\markup { \italic "cresc." }( d'8. cis'16) b4^\trill( d'8. cis'16) b4^\trill( d'8. cis'16)
 \new Voice { b2\f^\fermata \override NoteHead #'font-size = #-2
 \cadenzaOn  \once \override TextScript #'padding = #2.5
 cis'16^\markup { \small \italic "ad libitum" }[ dis' e' fis' gis' a'] b'[ a' gis' a' fis' dis']
 \override NoteHead #'font-size = #0 fis'2 e'4^\fermata \cadenzaOff \bar "|" }
 \clef bass a,2.\f d,!4\sf a, d,\sf e, e,\sf a2\f( e'4) \grace { d'16[ e'] } f'4\sf
 e'4( \grace { b16[ c'] } d'4\sf c'4_\markup { \italic "dim." } b) b1\p ~ b1
 b4\f\staccato dis'( e') ais( b) dis( e) ais,( b,)
 \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { dis'8[ dis' dis'] } e'4 \times 2/3 { g8[ g g] } b4 \times 2/3 { dis8[ dis dis] } e4 \times 2/3 { e,8[ e, e,] } b,4 r r2
 \times 2/3 { b,8\p([ c b,] ais,[ b, ais,] b,[ c b,] ais,[ b, ais,]) } b,2.( a,8 fis,) e,8( fis, gis, a, b, cis dis e)
 \clef tenor fis8( gis a b cis' dis' e' fis') gis'( a' ais' b' ais' b' gis' e') \grace { dis'16([ e' fis'] } e'2 dis'4) r4
 \clef bass b,8( cis dis e fis gis a b) cis'( dis' e' fis' \clef treble gis' a' ais' b') bis'( cis'' bis' cis'' dis'' cis'' b' a')
 \grace { gis'16[ a' b'] } a'2( gis'8\staccato) b'8( e'' dis'') cis''2( b'8\staccato) b'8( e'' dis'')
 cis''2( b'8\staccato) b'8( e'' dis'') ~ dis''8 cis''4 b' a' gis'8 ~ gis'4 fis'2 fis'4 fis'4( e'8 dis') cis'( b) b\staccato b\staccato
 \clef bass b2( gis) e2. b,4 ~ b,4 b,( gis, e,8 gis,) b,2. r4 a'2( fis') dis'4( b a fis) dis4 b,2 b,4 b,2( e8)
 \clef tenor e'8([ fis' gis'] a' e' a' fisis') gis'8\staccato e'( fis' gis') a'( e' a' fisis') gis'\staccato e'( fis' gis')
 a'4 r r8 fis'8( a' gis' fis') r8 r4 r8 b8( dis' cis') b( gis b a gis e a fis)
 << { fis4( e2 gis8 fis)  } \\ { s4 s4 \stemUp \override NoteHead #'font-size = #-3 fis16[ e dis e] s4 } >>
 e4\f r  r \clef bass b,4^\markup { "pizz." } e4\sf r r b, e\sf r a,\sf r dis\sf r gis,\sf cis fis,\sf r gis,\sf cis a,\sf r b,\sf r
 e,4\f^\markup { "arco" } e,2( \afterGrace fis,4^\trill( { e,16[ fis,] } gis,4( e,2 \afterGrace fis,4^\trill) { e,16[ fis,] }
 gis,4( e,8. dis,16 cis,4 a,8. gis,16) fisis,4( dis8. cis16 bis,4 cis) b,!4( ais, cis8 b,) a,\staccato[ gis,\staccato] b,4( a, fis, e,)
 dis,1\ff ~ dis,4 dis,\staccato_\markup { \italic "dim." }( dis,\staccato dis,\staccato)
 dis,4\pp r r2 \clef tenor \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { b8[ cis' dis'] e'[ fis' gis'] \acciaccatura b'16 a'8[ gis' a'] cis''[ b' a'] } gis'4 r r2
 \times 2/3 { e8[ fis gis] a[ b cis'] d'[ e' fis'] gis'[ a' b'] } cis''1\f \clef bass ais,1
 <b, gis>1\ff ~ <b, gis>8 \clef tenor b8\staccato e'\staccato gis'\staccato b'\staccato gis' gis' gis' a'4 r r2 R1
 \clef bass dis2_\markup { \italic "p dolce" }( b) ais4( b cis' b) dis2( b) ais4( b cis' b) b( a! gis fis) }
 \alternative { { e4( d! cis b,) a,2( e) ) } { e4( d! cis d) } }
 cis1_\markup { \italic "cresc." } ~ cis2( gis) a( eis fis bis,) cis2.\f bis,4\sf( cis bis,\sf cis bis,\sf)
 cis4 r r e'!8._\markup { \italic "espressivo" }( d'16 cis'4^\trill \grace { bis16[ cis'] }
 e'8. d'16 cis'4^\trill \grace { bis16[ cis'] } e'8. d'16 cis'4) r r2
 r2 r4 g'!4_\markup { \musicglyph #"scripts.sforzato" }( ~ g'4 fis' e' d' cis' a gis cis') fis1 ~ fis1
 b2. d'4( cis' b a^\trill b8 gis b4 a2.) R1
 \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { fis8\<([ g fis] eis[ fis g] a[ b a] gis[ a b] c'[ b d'] c'[ b a\!] g\>[ b a] g[ a fis\!]) }
 e,16\ff[ b, g b,] g[ b, g b,] e,[ b, g b,] g[ b, g b,] e,[ b, g b,] g[ b, g b,] e,[ b, g b,] g[ b, g b,]
 e,[ b, a b,] dis,[ b, a b,] dis,[ b, a b,] dis,[ b, a b,] dis,[ b, a b,] dis,[ b, fis b,] dis,[ b, fis b,] dis,[ b, fis b,]
 e,[ b, g b,] g[ b, g b,] e,[ b, g b,] e,[ c g c] fis,[ c a c] fis,[ d a d] fis,[ d a d] fis,[ d a d]
 g,[ d b d] b[ d b d] g,[ e b e] g,[ e b e] ais,[ e cis' e] ais,[ e cis' e] ais,[ fis cis' fis] ais,[ fis cis' fis]
 b,[ fis d' fis] d'[ fis d' fis] cis[ eis gis eis] gis[ eis gis eis] cis[ fis a fis] a[ fis a fis] cis[ gis b gis] b[ gis b gis]
 <fis, cis a>4\p r4 \clef tenor gis'2 ~ gis'1 ~ gis'2. gis'4( fis' e' dis' e'8 cis') cis'4( bis2.) r2 r4 bis4
 \set tupletSpannerDuration = #(ly:make-moment 1 4) \times 2/3 { cis'8([ dis' cis'] bis[ cis' dis'] e'[ fis' e'] dis'[ e' fis']) }
 gis'4( a'8 gis' fis' e' dis' cis') a'2.( g'16 fis' e' d'!) cis'2 bis2 cis'1_\markup { \italic "cresc." }
 \clef bass e,1 fis,1\f \acciaccatura b16 a8\f\staccato[ gis\staccato] \acciaccatura b16 a8\staccato[ gis\staccato]
 \acciaccatura b16 a8\staccato_\markup { \italic "dim." }[ gis\staccato] \acciaccatura b16 a8\staccato[ gis\staccato]
 a4 r r2 fis,2\pp( cis d cis b, a, gis, fis,) d,2\pp( a, b, a, g, fis, e, d,) cis,1 d, e, e,^\markup { \italic "cresc." }
 a,2\fp^\markup { \italic "dolce" }( e) fis2.( cis4 e4 d cis d8 b,) a,2( gis,4) e,4( a, gis, cis, dis,)
 e,2. gis4( a gis a cis') e'2. \clef treble gis'4( a' gis' a' cis'')
 \setTextCresc e''2.\< d''8.( cis''16) b'4^\trill( d''8. cis''16) b'4^\trill( d''8. cis''16\!)
 \new Voice { b'2\f\>^\fermata \override NoteHead #'font-size = #-2
 \cadenzaOn cis''16^\markup { \italic \small "ad libitum" }[ dis'' e''\! dis'' cis'' b' a' gis' b' a' gis' a' fis' dis']
 \override NoteHead #'font-size = #0 fis'2 e'4^\fermata \cadenzaOff \bar "|" } R1
 \clef bass r4 f'4\sf( e') e\sf a2\f( e'4) \grace { d'16[ e'] } f'4\sf e'4( \grace { b16[ cis'] } d'4\sf c'_\markup { \italic "dim." } e')
 e'1\p ~ e'1 e'4\f \set tupletSpannerDuration = #(ly:make-moment 1 4) \times 2/3 { gis8[ gis gis] } a4 \times 2/3 { c8[ c c] }
 e4 \times 2/3 { gis,8[ gis, gis,] } a,4 \times 2/3 { c8[ b, a,] } e4 r r2
 \times 2/3 { e8\p([ fis! e] dis[ e dis] e[ fis e] dis[ e dis]) } e2.( d!8 b,)
 a,8( b, cis d e fis gis a) b( cis' d' e' \clef treble fis' gis' a' b') cis''( d'' dis'' e'' dis'' e'' cis'' a') \grace { gis'16[ a' b'] } a'2( gis'4) r
 \clef bass e,8( fis, gis, a, b, cis d e) \clef tenor fis( gis a b cis' d' dis' e') eis'( fis' eis' fis' gis' fis' e' d')
 \grace { cis'16[ d' e'] } d'2( cis'8\staccato) e' a' gis' fis'2( e'8) e'( a' gis') fis'2( e'8) e'( a' gis') ~ gis'8 fis'4 e'4 d'4 cis'8 ~ cis'4 b2 b4
 b4( a8 gis fis e) e'8\staccato e'\staccato e'2( cis') a2. \clef bass e4 ~ e e4( cis a,8 cis) e2. r4 d'2( b) gis4( e d b,) gis, e, e e
 e2( a,8) a([ b cis'] d' a d' bis) cis'\staccato a( b cis') d'( a d' bis) cis'\staccato a( b cis')
 d'4 r4 r8 b8( d' cis' b) r8 r4 r8 e'8( gis' fis') e'( cis' e' d' cis' a d' b)
 << { b4( a2 cis'8 b)  } \\ { s4 s4 \stemUp \override NoteHead #'font-size = #-3 b16[ a gis a] s4 } >>
 a4\f r4 r e,^\markup { "pizz." } a,4\sf r r e, a,\sf r d,\sf r gis,\sf r cis,\sf fis, b,\sf r cis,\sf fis, d,\sf r e,\sf r
 a,4\f^\markup { \small "arco" } a,2( \afterGrace b,4^\trill) {a,16[ b,] } cis4( a,2 \afterGrace b,4^\trill) {a,16[ b,] }
 cis4( a,8. gis,16 fis,4 d8. cis16) bis,4( gis8. fis16 eis4 fis) e!( dis fis8) e d\staccato cis\staccato e4( d b, a,)
 gis,1\ff ~ gis,4 gis,\staccato^\markup { \italic "dim." }( gis,\staccato gis,\staccato) gis,4\pp r4 r2
 \set tupletSpannerDuration = #(ly:make-moment 1 4) \times 2/3 { e8[ fis gis] a[ b cis'] \acciaccatura e'16 d'8[ cis' d'] fis'[ e' d'] }
 cis'4 r r2 \times 2/3 { a,8[ b, cis] d[ e fis] g[ a b] cis'[ d' e'] } fis'1\f dis1
 <e cis'>\ff ~ <e cis'>8 e8\staccato[ a\staccato cis'\staccato] e'\staccato cis' cis' cis' d'4 r r2 R1
 gis2_\markup { \small "p dolce" }( cis') dis'4( e' fis' e') gis2( cis') dis'4( e' fis' e') e'( d'! cis' b a_\markup { \small \italic "dim." } g fis e)
 d2\pp( a) b2.( fis4 a g fis g8 e) d2( cis4) r4 r2 r4 a4^\trill( c' b a b8 fis) a2( gis4 g bes a g a8 e) f1 e d c
 \setTextCresc f\< e d c b,2 a, gis, g, fis, f,
 \set tupletSpannerDuration = #(ly:make-moment 1 4) \times 2/3 { e,8\!\ff[ fis,! gis,!] a,[ b, cis] } d16[ e fis gis] a[ b cis' d'] e'4 r e, r
 a2_\markup { \italic "sempre ff" }( e') fis'2. cis'4( e' d' cis' d'8 b) a2( gis4) e4( a fis cis dis) e2. cis'4\p( d' b fis gis) a2. r4 R1
 r2 r4 cis4\p( d b, fis, gis,) a,2. cis4( d b, fis, gis,) a,2 gis, a, gis, a,4^\markup { \italic \small "dim." }( gis, a, gis,) a,( gis, a, gis,)
 a,2\pp( e fis cis d a,) e,1 \afterGrace a,1 \startTrillSpan { gis,16[ \stopTrillSpan a,] } e,1
 \afterGrace a,1 \startTrillSpan { gis,16[ \stopTrillSpan a,] } e1\f( a8) r8 d r e r e, r a,4 r e, r a,4 r r2 \bar "|."
}