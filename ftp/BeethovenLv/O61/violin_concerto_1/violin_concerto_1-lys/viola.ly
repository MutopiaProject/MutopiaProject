\version "2.10.3"

 viola = {
 \set Staff.instrumentName = "Viola."
 \set Staff.midiInstrument = "viola"
 \clef alto
 \key d \major
 \time 4/4
 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 e1\f dis'8\p r dis' r dis' r dis' r cis'1\f~ cis'2\p( d' a1) g1 g1
 fis16\p fis fis fis fis fis fis fis fis8 r8 r4
 R1 a16 a a a a a a a a8 r8 r4 R1 a16 a a a a a a a a8 r8 r4 R1 R1
 a'4_\markup { \italic "dimin." }( fis' d' b) a1\pp~ a2( g2)
 f16\ff <d bes> <d bes> <d bes> <d bes> <d bes> <d bes> <d bes> <d bes>8 r <d bes> r <d bes>8 r r4 r2
 <c' ees'>16 <c' ees'> <c' ees'> <c' ees'> <c' ees'> <c' ees'> <c' ees'> <c' ees'> <c' ees'>8 r <c' ees'> r
 << { d'4 } \\ { c'4 } >> r4 r2 << { bes16 bes bes bes bes bes bes bes bes8 } \\ { g16 g g g g g g g g8 } >> r8 r4
 << { e16 e e e e e e e e8 } \\ { cis!16 cis cis cis cis cis cis cis cis8 } >> r8 r4
 << { f16 d' d' d' d'8 } \\ { d16 d d d d8 } >> r8 bes16 bes bes bes bes8 r8
 a4 cis'!4\sf( d'8) r8 d'4\sf( a8) r8 e16\sf f g a f8 r8 d16\sf e f d a8 r8
 cis'!4\sf( d'8) r8 d'4\sf( a8) r8 e16\sf f g a f8 r8 d16\sf e f d a8 r8 r4 r2 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { a'8_\markup { \italic "sempre p" }[ bes' a'] g'[ a' g'] f'[ g' f'] e'[ f' e'] d'[ cis' d'] e'[ d' e'] f'[ g' f'] d'[ e' d']
 e'[ f' e'] d'[ e' d'] cis'[ b cis'] d'[ cis' d'] cis'[ d' cis'] a[ cis' e'] a'[ a' a'] a'[ a' a']
 a'[ bes' a'] g'[ a' g'] f'[ g' f'] e'[ f' e'] d'[ e' d'] e'[ f' e'] f'[ g' f'] d'[ e' f'] g'[ a' g'] f'[ g' f'] e'[ f' e'] c'[ d' e']
 f'[ c' a] f[ a c'] f'[ f' f'] f'[ f' f'] ees'[ f' ees'] d'[ ees' d'] cis'![ d' cis'] a[ b! cis'] d'[ f' a'] d''[ a' f'] d'[ e'! d'] c'[ d' c']
 \setTextCresc bes\<[ d' g'] bes'[ bes' bes'] c'[ e' g'] c''[ c'' c''] f'[ c' a] f[ a c'] f'[ f' f'] f'[ f' f']
 g[ bes e'] g'[ g' g'] a\!\f[ cis'! e'] a'\sf[ a' a'] } a4 r r2
 c'4\pp\staccato( c'\staccato c'\staccato c'\staccato) cis'!1 c'4\staccato( c'\staccato c'\staccato c'\staccato) cis'!1
 \setTextCresc c'16 <fis' a'>\< <fis' a'> <fis' a'> <fis' a'> <fis' a'> <fis' a'> <fis' a'>
 <fis' a'> <fis' a'> <fis' a'> <fis' a'> <fis' a'> <fis' a'> <fis' a'> <fis' a'>
 <fis' a'> <fis' a'> <fis' a'> <fis' a'> <fis' a'> <fis' a'> <fis' a'> <fis' a'>
 <fis' a'> <fis' a'> <fis' a'> <fis' a'> <fis' a'> <fis' a'> <fis' a'> <fis' a'>
 <g g'>\!\f <g g'> <g g'> <g g'> <g g'> <g g'> <g g'> <g g'> <g g'> <g g'> <g g'> <g g'> <g g'> <g g'> <g g'> <g g'>
 <g' a'>16\f <g' a'> <g' a'> <g' a'> <g' a'> <g' a'> <g' a'> <g' a'> <g' a'> <g' a'> <g' a'> <g' a'> <g' a'> <g' a'> <g' a'> <g' a'>
 <fis' a'>\ff <fis' a'> <fis' a'> <fis' a'> <fis' a'> <fis' a'> <fis' a'> <fis' a'> d' d' a a fis fis d d
 <g b>16 <g b> <g b> <g b> <g b> <g b> <g b> <g b> b b g' g' d' d' b b
 a'16\f a' fis' fis' d' d' a a fis'\f fis' d' d' a a fis fis g'\f g' e' e' cis' cis' g g e'\f e' cis' cis' g g e e
 << { <fis a>16 <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <fis a>
 <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <fis a>
 <g a> <g a> <g a> <g a> <g a> <g a> <g a> <g a> <g a> <g a> <g a> <g a> <g a> <g a> <g a> <g a>
 <g a> <g a> <g a> <g a> <g a> <g a> <g a> <g a> <g a> <g a> <g a> <g a> <g a> <g a> <g a> <g a>
 <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <fis a>
 <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <fis a>
 <g a> <g a> <g a> <g a> <g a> <g a> <g a> <g a> <g a> <g a> <g a> <g a> <g a> <g a> <g a> <g a>
 <g a> <g a> <g a> <g a> <g a> <g a> <g a> <g a> <g a> <g a> <g a> <g a> <g a> <g a> <g a> <g a>
 <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <g a> <g a> <g a> <g a> <g a> <g a> <g a> <g a>
 <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <g a> <g a> <g a> <g a> <g a> <g a> <g a> <g a> } \\
 { d16\ff d d d d d d d d d d d d d d d d d d d d d d d d d d d d d d d e e e e e e e e e e e e e e e e e e e e e e e e e e e e e e e e
 d16 d d d d d d d d d d d d d d d d d d d d d d d d d d d d d d d e e e e e e e e e e e e e e e e e e e e e e e e e e e e e e e e
 d d d d d d d d e e e e e e e e d d d d d d d d e e e e e e e e } >> R1 r4 e'4\p( cis' g)
 e1~ e1 e4\f r r2 e4\f r r2 e4\p r r2 R1 R1 R1 R1 R1 R1 a1\p a4 r4 r2 R1 R1 R1
 R1 R1 R1 R1 R1 R1 e1\sf dis'8\p r dis' r dis' r dis' r cis'1\sf~ cis'2\p( d' a2) a2 g1 g1
 fis16\p fis fis fis fis fis fis fis fis8 r8 r4 R1 a16 a a a a a a a a8 r8 r4 R1
 d16\f d d d d d d d d d e e fis fis g g a a b b cis' cis' d' d' e' e' fis' fis' d d d d
 e e e e e e e e e e fis fis g g a a b b cis' cis' d' d' e' e' fis' fis' g' g' e e e e f16\p f f f f f f f f8 r r4 R1
 g16 g g g g g g g g8 r8 r4 R1 a16 a a a a a a a a2~ a1~ a1( b2 c'2) e4 r r2 r4 r8 gis8 a4 r8 a8 gis4 r r2
 r4 r8 gis8 a[ a] r a gis4\f r8 a gis4 r8 a gis4 r r2 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 c'4\p( d' e' fis'8 gis') a'2( e') d'4( c' b c'8 a) b2( e) c'4( d' e' fis'8 gis') a'2( e') f'4( e' d' g'!) e'1
 d'4( c' b! e') c'4 r4 r2 R1 R1 r2 r4 e'4\sf~ e'1\> e'4\p\staccato( e'\staccato e'\staccato e'\staccato) e'1
 e'4\staccato( e'\staccato e'\staccato e'\staccato) e'1
 \set crescendoText = \markup { \italic "poco cresc." }
 \set crescendoSpanner = #'dashed-line e'4\< e' r e' r e' r e' d'8[ fis fis fis] fis4 r r8 e[ e e] e4 r
 cis'4\!\f r4 r2 d4\f r r2 cis'4\f r a r b r gis r e16\p e e e e e e e e e e e e e e e e e e e e e e e e e e e e e e e
 e16 e e e e e e e e e e e e e e e e e e e e e e e e e e e e e e e e1~ e1~ e1~ e1

 e4 r fis r fis r a r a r a r a r a r e r e r a4_\markup { \italic "poco cresc." } r e r a r fis r b r a r d'4 r a r
 d4\f r r2 R1 c'4\f r r2 R1 e4\p r r2 R1 r8 e'8[ e' e'] e'4 r r8 e'8[ e' e'] e'4 r R1 R1 R1 R1 R1 R1 R1
 g8\pp r g r g r g r g4 g r a r a r a a4 r r2 R1 R1 R1 R1 R1
 R1 R1 R1 e1_\markup { \italic "cresc." }~ e1 <f a>16\ff <f a> <f a> <f a> <f a> <f a> <f a> <f a> <f a>8 r <f a> r
 <f a>8 r r4 r2 <e g>16 <e g> <e g> <e g> <e g> <e g> <e g> <e g> <e g>8 r <e g> r <e g>8 r r4 r2
 << { f16 f f f f f f f f8 } \\ { d16 d d d d d d d d8 } >> r8 r4
 <e b!>16 <e b> <e b> <e b> <e b> <e b> <e b> <e b> <e b>8 r r4 a16 a a a a8 r f16 f' f' f' f'8 r
 e'8 r gis4\sf( a8) r a4\sf( e8) r b16\sf c' d' e' c'8 r a16\sf b c' a
 e8 r gis4\sf( a8) r a4\sf( e8) r b16\sf c' d' e' c'8 r a16\sf b c' a e8 r r4 r2 R1 R1 R1
 R1 R1 R1 R1 R1 R1 R1 r4 e8\ff r e r e r e'16 e' e' e' d' d' d' d' c' c' c' c' b b b b
 a16 a c' c' a a c' c' a a c' c' a a c' c' gis gis b b a a c' c' gis gis b b a a c' c'
 gis16 gis b b gis gis b b gis gis b b gis gis b b e' e' e' e' d' d' d' d' c' c' c' c' b b b b
 a16 a c' c' a a c' c' a a c' c' a a c' c' f f a a f f f f g! g b b g g b b g g c' c' g g c' c' g g c' c' g g c' c'
 f f bes bes f f bes bes e e gis gis e e gis gis a_\markup { \italic "sempre ff" } a c' c' a a c' c' a a c' c' a a c' c'
 f f a a f f f f g! g b! b g g b b g g c' c' g g c' c' g g c' c' g g c' c' d d b! b d d b b e e gis gis e e e e
 e16_\markup { \italic "sempre f" } e e e e e e e e e e e e e e e e e e e e e e e e e e e e e e e
 e e e e e e e e e e e e e e e e e e e e e e e e e e e e e e e e e g g g g g g g bes bes bes bes bes bes bes bes
 e'16 e' e' e' e' e' e' e' g' g' g' g' g' g' g' g' <c' f'>\sf <c' f'> <c' f'> <c' f'> <c' f'> <c' f'> <c' f'> <c' f'>
 <c' f'> <c' f'> <c' f'> <c' f'> <c' f'> <c' f'> <c' f'> <c' f'> <d' f'>\sf <d' f'> <d' f'> <d' f'> <d' f'> <d' f'> <d' f'> <d' f'>
 <d' f'> <d' f'> <d' f'> <d' f'> <d' f'> <d' f'> <d' f'> <d' f'>
 <c' e'>16 <c' e'> <c' e'> <c' e'> <c' e'> <c' e'> <c' e'> <c' e'> <c' e'>4 r4
 <f' a'>16 <f' a'> <f' a'> <f' a'> <f' a'> <f' a'> <f' a'> <f' a'> a' a' f' f' c' c' a a g' g' e' e' c' c' g g
 e'16 e' c' c' g g e e f' f' d' d' b b f f d' d' b b f f d d
 << { e16 e e e e e e e e e e e e e e e e e e e e e e e e e e e e e e e f f f f f f f f f f f f f f f f
 f f f f f f f f f f f f f f f f e e e e e e e e e e e e e e e e e e e e e e e e e e e e e e e e f f f f f f f f f f f f f f f f
 f f f f f f f f f f f f f f f f e e e e e e e e f f f f f f f f e e e e e e e e f f f f f f f f } \\
 { c16_\markup { \italic "sempre f" } c c c c c c c c c c c c c c c c c c c c c c c c c c c c c c c
 d d d d d d d d d d d d d d d d d d d d d d d d d d d d d d d d c16 c c c c c c c c c c c c c c c
 c c c c c c c c c c c c c c c c d d d d d d d d d d d d d d d d
 d d d d d d d d d d d d d d d d c c c c c c c c d d d d d d d d c c c c c c c c d d d d d d d d } >> R1
 r4 d'4\p( b f) d1~ d1 d4\f r r2 d4\f r r2 d4\p r r2 R1 R1 R1 R1 R1 R1 R1
 R1 R1 R1 R1 R1 R1 R1 R1 R1 b1\p~ b1~ b1 b8 r b r b r b r e4 r r2 e'8 r e' r e' r e' r a4 r r2 R1 R1
 R1 g4 r g8[ g g g] g4 r g8[ g g g] g4 r g8[ g g g] g4 r g8[ g g g] r4 g8 g r4 g8 g r4 fis8 fis r4 fis8 fis
 g4 r g8[ g g g] g4 r g8[ g g g] g4 r g8[ g g g] g4 r g8[ g g g] g4_\markup { \italic "cresc." } r4 r2
 bes4 r r2 d'4\f r r2 R1 R1

 R1 g1\pp bes1 a1 fis! g g f1_\markup { \italic "cresc." } f1\pp ees8([ g bes g] bes[ g bes g])
 r8 g([ bes g] bes[ g bes g]) r aes([ bes aes] bes[ aes bes aes]) r f([ bes f] bes[ f bes f]) g1 g1
 e!1_\markup { \italic "cresc." } cis!1\pp f1 a g e f2 r4 f f2 r4 f e2 r4 e e2 r4 e
 d4\staccato( d\staccato d\staccato d\staccato) d4 d d d a1\pp~ a~ a~ a~ a8 r8 r4 r2 R1
 r4 d8^\markup { "pizz." } r d r d r r2 r4 a8\f^\markup { "arco" } r8
 <d' d''>8\ff r <d' d''> r <d' d''> r <d' d''> r <d' d''>1\sf~ <d' d''>2. d'4_\markup { "sempre ff" }( g' fis' e' d')
 a8 r <a a'> r <a a'> r <a a'> r <a a'>1~ <a a'>2.
 << { a'4( g' fis' e') e' g'2( fis'4) } \\ { fis'4( e' d' cis') cis' e'2( d'4) } >> r4
 dis8\f r dis r dis r dis r cis1 dis8 r dis r dis r dis r cis'8 r a r a r a r a4_\markup { "sempre f" } a r b
 r4 cis' r d' g16 g g g g g g g g g g g g g g g g g g g g g g g g g g g g g g g
 <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <fis a>
 <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <fis a>
 a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a fis16\p fis fis fis fis fis fis fis fis8 r r4
 R1 a16 a a a a a a a a8 r r4 R1 d'16 d' d' d' d' d' d' d' d'8 r r4 R1 R1 r4 b4( g e) g1 fis1 d4 r r2 d'4\p( b g e) g1 fis1
 fis16 fis fis fis fis fis fis fis fis8 r r4 R1 g16 g g g g g g g g8 r r4 R1 cis'16 cis' cis' cis' cis' cis' cis' cis' cis'8 r r4
 r2 r4 e4 d1~ d1 e4 r r2 r4 r8 a8 a4 r8 a a4 r4 r2 r4 r8 a8 a a r a a4\f r8 a a4 r8 a a4 r r2 R1
 R1 R1 R1 R1 R1 << { g'4( fis' e' fis'8 d') e'2( a) } \\ { e'4\p( d' cis' d'8 b) cis'2( a) } >> d'4^\markup { "pizz." } r4 r2
 R1 g4 r a4 r d4 r r2 <a f'>4 r <a f'> r <a f'> r r2 <a e'>4 <a d'> cis' <a d'> cis'4 r r2
 <a f'>4 r <a f'> r <a f'> r r f d4 r e r f r r a
 bes4 r cis'! r d' d' r c' \setTextCresc bes4\< r c' r f r r f g r a\!\f r4 R1
 fis'4\p\staccato_\markup { "    arco" }( fis'\staccato fis'\staccato fis'\staccato) g'1
 fis'4\staccato( fis'\staccato fis'\staccato fis'\staccato) g'1
 \set crescendoText = \markup { \italic "poco cresc." }
 \set crescendoSpanner = #'dashed-line
 <fis' a'>4\< <fis' a'> r <fis' a'> r <fis' a'> r <fis' a'> g'8[ g' g' g'] g'4 r r8 a'8[ a' a'] a'4\! r4 fis'4\f r r2 g4 r r2
 d'4 r << { fis'4 } \\ { d'4 } >> r4 << { g'4 } \\ { e'4 } >> r4 << { e'4 } \\ { cis'4 } >> r4
 <fis a>16\p <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <fis a>
 <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <fis a> <fis a>
 <e g> <e g> <e g> <e g> <e g> <e g> <e g> <e g> <e g> <e g> <e g> <e g> <e g> <e g> <e g> <e g>
 <e g> <e g> <e g> <e g> <e g> <e g> <e g> <e g> <e g> <e g> <e g> <e g> <e g> <e g> <e g> <e g>
 <d fis>2 d'2~ d'1 e'1 cis'1 d'4 r b r b r d' r d' r d' r d' r g r a4 r a r
 a4 r << { g4 } \\ { e4 } >> r4 << { fis4 } \\ { d4 } >> r4 << { a4 } \\ { fis4 } >> r4
 << { g4 } \\ { e4 } >> r4 << { c'4 } \\ { a4 } >> r4 << { b4 } \\ { g4 } >> r4 d'4 r g4\f r r2 R1 gis4\f r r2
 R1 a4\p r r2 R1 r8 a8\p[ a a] a4 r r8 a[ a a] a4 r R1 R1 R1 R1 R1 R1 R1 c'8\pp r c' r c' r c' r c'4 c' r d' r d' r f'
 fis'!4 r4 r2 R1 R1 R1 R1 R1 R1 R1 a1_\markup { \italic "cresc." }( e'1)
 <bes d'>16\ff <bes d'> <bes d'> <bes d'> <bes d'> <bes d'> <bes d'> <bes d'> <bes d'>8 r <bes d'> r <bes d'>8 r r4 r2
 <c' ees'>16 <c' ees'> <c' ees'> <c' ees'> <c' ees'> <c' ees'> <c' ees'> <c' ees'> <c' ees'>8 r <c' ees'> r <c' d'>8 r r4 r2
 <g bes>16 <g bes> <g bes> <g bes> <g bes> <g bes> <g bes> <g bes> <g bes>8 r r4
 << { e16 e e e e e e e e8 } \\ { cis!16 cis cis cis cis cis cis cis cis8 } >> r8 r4
 << { f16 d' d' d' d'8 } \\ { d16 d d d d8 } >> r8 bes16 bes bes bes bes8 r
 a8_\markup { \italic "sempre f" } r8 cis'!4^\sf( d'8) r8 d'4\sf( a8) r8 e16\sf f g a f8 r d16\sf e f d a8 r8
 cis'!4\sf( d'8) r8 d'4\sf( a8) r8 e16\sf f g a f8 r d16\sf e f d a8 r8
 d16 e f d e8 r e16 f g e f8 r fis16\ff g a fis g8 r gis16 a b gis a2^\fermata r2^\fermata
 a4\p^\markup { "pizz." } r4 r2 a4 r r2 a4 a a a a4 r r2 a4 r r2 a4 r r2
 b4 r a r a4 r r2 b4 r a r a4 r r2 b4_\markup { \italic "dimin." } r r2 a4 r r2
 a1\pp^\markup { "arco" }~ a1 a1~ a1 a1~ a1 a1~ a1 \setTextCresc d4\<( fis a g8 e) d4( fis a g8 e) d4( fis a\!\f g8 e)
 d4\ff r <d d'> r d4 r r2 \bar "|."
}