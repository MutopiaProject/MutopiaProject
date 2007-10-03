\version "2.10.3"

 violinotwo = {
 \set Staff.instrumentName ="Violino II.  "
 \set Staff.midiInstrument = "violin"
 \clef treble
 \key a \minor
 \time 6/8
 \repeat volta 2 { R2. R2. r8 r8 a8\p( b c' d') c'( b a gis a b) }
 \alternative { { c'4 r8 r4 r8 R2. } { c'4 r8 r4 r8 R2. } } \bar "||"
 \repeat volta 2 { r8 r << { c'8( e'[ f' g']) g'8( f') f' } \\ { c'8~ c'4.~ c'4. } >> cis'8( d' e') e'8([ d']) a'8~ a'4.\fp~
 a'4. cis'8( d' e') a4. d'8( e' f' e' d' c') fis'4.\sfp( gis'4.) d'!8( e' f'! e' d' c') fis'4.\sfp( gis'4.) fis'4.( gis'4.)
 gis'4 _\markup { \italic "cresc." } gis'8 a'4\p( a'8 a'4 gis'8) gis'4_\markup { \italic "cresc." }( a'8 b'[ c'' d''])
 c''8\f[( e') d'\staccato] a'4\>( gis'8\!) }
 \alternative { { a'4\p r8 r4 r8 } { <c' a'>4\p( e'8 d'[ e') c'\staccato] } }
 c'4( e'8) d'16[( e') f'( e') d'( c')] c'4( e'8) d'16[( e') d'( e') c'8]
 c'4( e'8) d'16[( e') f'( e') d'( c')] c'4( d'16 c') c'4( d'16 c') c'4 r8 r4 r8 R2.
 r4 r8 r4 des'8\sfp~ des'4( c'8) r8 r8 des'8\sfp~ des'4( c'8) r8 r des'8\sf~ des'8( c' bes')~ bes'( g' c'')
 aes'8_\markup { \italic "cresc." } aes'( f') des'( f' c'\sfp b! d'! f') des'( f' c'\sfp b! d'! f') r8 r aes'8~
 aes'8_\markup { \italic "cresc." }( g' f''~ f'' d'' g'' f'' ees'' d'' c'' ees'' c'') b'8\p g'4\sf~ g'8([ fis' a']) g'4 b'8\sf( c''4.)
 b'8 g'4\sf~ g'8([ fis' a']) g'4 b'8\sf( c''4.) b'8 b_\markup { \italic "dimin." } r8 r b r r8 b r r r4 R2.
 d'8( e' f' e'4) r8 R2. d'8( e' f' e'4) r8 r4 r8 r a'16\staccato[ b'\staccato c''\staccato d''\staccato]
 b'4.( c''4) r8 r4 r8 r a'16\staccato[ b'\staccato c''\staccato d''\staccato]
 e''8_\markup { \italic "cresc." }[ e''16\staccato f''\staccato d''\staccato e''\staccato] f''8 r <g f'>8
 <g e'>8\p([ g' c'']) f'( d' b') g'( e' c'') f'( d' b') <e' c''>4 r8 r4 r8 r4 r8 r4 g'8\p~ g'8 r8 r r4 g'8~ g'8 r r r4
 g'8~ g'8^\markup { \italic "dim." } g( aes g) r aes( g) r aes( g) r aes( g4\pp) r8 g4 r8 g4 r8 r4 r8
 r4 r8 r r des'8\sfp~ des'4( c'8) r8 r des'8\sfp~ des'4( c'8) r8 r des'8~ des'8( c' bes')~ bes'( g' c'') aes'8 r r r4 r8
 r4 r8 r r aes'8\sfp~ aes'4~ aes'8 r8 r aes'8\sfp~ aes'4. r8 r aes'8\sfp~ aes'4 aes'8~ aes'( f' bes') ges'8 r r r4 r8
 R2. r8 r8 bes8(~ bes8 ees' ges' aes' f') bes(~ bes d' f' ges' ees')
 bes8_\markup { \italic "cresc." }~ bes( ees' ges') a!( c' f')~ <a f'>4. <bes f'>4\p r8 r4 r8
 R2. r8 r f'8~ f'8( bes' des'' ees'' c'') f'(~ f' a' c'' des'' bes') f'_\markup { \italic "cresc." }~ f'( bes' des'')
 e'!8( g' c'') c'( g' bes') aes'4\f f'8\sf~ f'4.\>~ f'4.~ f'4\! f'8 ees'4\f g'8\sf(~ g'4 aes'8 fis'4. a'!4.) g'4\p r8 r4 r8
 R2. r8 r d'8~ d'8( g' bes' c'' a') d'(~ d' fis' a') bes'4\f r8 r r bes'8\sf~ bes'4.\p~ bes'8( a') a'
 a'8\f r d''8\sf~ d''( bes' a') gis'4\p( b'!8) b'4( d''8) c''8( a' b' c'' a' f') e'( gis' b') e'( b' d''\sf)
 c''8\p( a' b' c'' a' f') e'( gis' b') e'( b' d''\sf) c''8\p( a' b' c'' a' f') e'( gis' b') c''\sf( a' f') e'( gis' b') c''\sf( a' f')
 e'8_\markup { "dim." }( gis' b') e'( gis' b') e'( gis' b') e'8 r r R2. b8( cis' d' cis'4) r8
 e'4.( eis'8 fis') fis'\staccato b8( cis' d' cis'4) r8 r4 r8 r fis'16\staccato[ gis'\staccato a'\staccato b'\staccato]
 gis'4.( a'8) r8 r r4 r8 r fis'16\staccato[ gis'\staccato a'\staccato b'\staccato]
 cis''8[~ cis''16_\markup { \italic "cresc." } d''\staccato b'\staccato cis''\staccato] d''8 r <e' d''>
 <e' cis''>8\p a'( cis'' b' gis' d'') a'( e' cis'' gis' d' b') e'_\markup { \italic "cresc." }( cis' a') r gis gis
 r8 a8_\markup { \italic "dim." }( gis) r a( gis) r a( gis) r a( gis) a4\pp r8 r d'8 d'
 d'4 r8 r d'8_\markup { \italic "cresc." } d'8 <bes d'>4\f r8 r4 r8 R2. bes4.\p( b8[ c') c'\staccato]
 d'8( ees' f' ees'4) r8 bes4.( b8[ c') c'\staccato] d'8_\markup { \italic "cresc." }( ees' f' g'4 f'8)
 ees'8\p( g' ees' f' d' aes') g'( ees' bes') f'( d' aes') g'\sfp( ees' bes)~ bes( d' f')~ f'( ees' g')~ g'( f' aes')
 g'2.\fp~ g'4._\markup { \italic "dim." } bes'4.~ bes'4.( ees''4.)
 e''!2.~ e''4._\markup { \italic "sempre dim." }( d''4.)~ d''4. d''4.( b'!4.) b'4.\pp( c''4. a'4.)
 b'4 r8 r4 r8 R2. r8 r e'8\p( a' b' c'') b'8( a' gis' f' e' d' c' b a) e'4.~ e'4.~ e'8( fis' gis') a'4 r8 r4 r8 R2.
 e'2.\fp~ e'4. f'8( e' d' c' b a) b( c' d' c' b a gis a b a4) r8 r4 r8 R2.
 r8 r c'8\p( g' a' bes') bes'( a') a' e'( f' g') g'([ f']) a'8 d''8\fp( e'' f'' e'' d'' cis'' bes' a' g' f' e' d')
 gis'4.( a'4) a'8 a'8\sfp( b'! c'' b' gis' e') gis'4.( a'4) a'8 a'8\sfp( b' c'' b' gis' e') a'8\sfp( b' c'' b' gis' e')
 d''8_\markup { \italic "cresc." }( e'' f'') e''4\p( a'8 c''4 b'8) b'4_\markup { \italic "cresc." }( c''8 d'' e'' f'')
 e''8\f( c''\> a') c''4 b'8\! a'4\p r8 r4 b8( c'2.)~ c'4 f'8 e'8([ f' g']) g'8( f') f' d''8\fp( e'' f'') e''8( d'' cis'' bes' a' g')
 f'8( e' d') d'( e' f' e' d' c') fis'4.\fp( gis'4.) d''8( e'' f'' e'' d'' c'') fis'4.\fp( gis'4.) fis'4.\fp( gis'4.)
 gis'4._\markup { \italic "cresc." } a'4\p a'8( c''4 b'8) b'4_\markup { \italic "cresc." }( c''8 d''[ e'' f''])
 e''8\f\>( c'') a'\staccato a'4( gis'8\! a'4\p) e'8( d' e') c'\staccato c'4( e'8) d'16[( e') f'( e') d'( c')]
 c'4( e'8) d'16[( e') d'( e') c'8] c'4( e'8) d'16[( e') f'( e') d'( c')] c'4( d'16 c') c'4( d'16 c') c'8 r8 r r4 des'8\sf~
 des'4( c'8) r8 r des'8\f~ des'4( c'8) r8 r cis'8~ cis'4\f( d'!8 e'8\> f') d'\!\staccato
 e'8\p( dis' e') e'4. r8 r bes'8_\markup { \italic "cresc." }( g'[ bes' f'\sf] e' g' bes') ges'( bes' f'\sf e' g'! bes')
 g'8( bes' f'\f e' bes' a' gis'\> a' e'\! g'!\p)( f') d'\staccato c'8( e' d') c'4( e'8 d' e') c'\staccato
 c'4( e'8) d'16[( e') f'( e') d'( c')] c'4( e'8) d'16[( e') d'( e') c'8] c'4( e'8) d'16[( e') f'( e') d'( c')]
 c'4_\markup { \italic "dim." }( d'16 c') c'4( d'16 c') c'4( d'16 c') c'4( d'16 c')
 c'2.\pp~ c'2.~ c'2._\markup { \italic "cresc." }~ c'4. c'4.~ c'4. c'4._\markup { \italic "dim." }~ c'4.
 c'4.\pp~ c'4 r8 a4^\markup { "pizz." } r8 a4 r8 r4 r8 \bar "|."
 }