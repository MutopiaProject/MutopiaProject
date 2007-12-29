\version "2.10.3"

 clarinetto = {
 \set Staff.instrumentName =  "Clarinetto"
 \set Staff.midiInstrument = "clarinet"
 \clef treble
 \key c \major
 \time 4/4
 \once \override Score.MetronomeMark #'transparent = ##t
 \tempo 4 = 146
 \partial 8*3 r8^\markup { "Allegretto." }^\markup { \large "TEMA: Pria ch'io l'impegno." } r4
 R1 R1 R1 r2 r8 c''8\staccato[ e''\staccato f''\staccato] g''4\staccato c'''4.\sf d'''16( c''')
 b''8\staccato[ a''\staccato] g''4\staccato e''4.\sf g''8\staccato[ f''\staccato e''\staccato]
 d''8.( e''16) d''4\staccato r8 f''8\staccato[ e''\staccato d''\staccato]
 c''8.( d''16) c''4\staccato r2 R1 r2 r8 c''8\staccato b'\staccato c''\staccato d''\staccato[ g'\staccato]
 g''4.\sf f''8\staccato[ d''\staccato b'\staccato] c''8( e'') g'4\staccato r2 r4 g''4\p\staccato r a''\staccato
 r8 g''8( c''' g'' e''4) r4 r4 f''4\staccato r b''\staccato c'''4\staccato r4 r8 \bar "|."
 \break

 r8^\markup { \large "VAR. I." } r4 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 r2 r8 \bar "|."
 \break

 s8^\markup { \large "VAR. II." } s4 \bar "" R1 R1 R1 R1
 c''4\pp( g'' a'' f'') g''( e'') f''8( e'' d'' e'') f''4( d'' b' g') c''4 r4 r2 \bar "||"
 \repeat volta 2 { R1 r2 r4 e''4( d'' g' d'' f'') e''8( f''_\markup { \italic "cresc." } e'' d'' c'' b' c'' d'')
 e''4( g'' a'' f'') g''\p( e'') f''8( e'' d'' e'') f''4\pp( d'' b' g') }
 \alternative { { c''4 r4 r2 } { c''4 r4 r8 } } \bar "|."
 \break

 c'''8\f\staccato_\markup { \italic "   con fuoco" }^\markup { \large "VAR. III." } c'''\staccato c'''\staccato
 c'''8\staccato g''\staccato c'''4.\sf a''8\staccato c'''4\sf~ c'''8 g''8\staccato c'''4\sf(~
 \times 2/3 { c'''8[ b'') a''\staccato] } \times 2/3 { g''8\staccato[ f''\staccato e''\staccato] }
 d''16( f'' a'' g'' f'' e'' d'' c'') b'( c'' d'' c'' b' a' g' f')
 e'16( g' f' e' f' g' a' b') c''( d'' e'' f'' g'' a'' bes'' b'') c'''4 r4 r2 R1
 R1 r2 r8 a''16\p( g'' f'' e'' d'' c'') b'8\staccato r8 r4 r8 c''16( b' c'' d'' e'' f'') g''8\staccato r8 r4 r2
 r8 a''16( g'' f'' e'' d'' c'') b'8\staccato r8 r4 r8 c''16( b' c'' d'' e'' f'')
 g''\staccato c''_\markup { \italic "cresc." }( d'' e'' f'' g'' a'' b'')
 c'''8\f\staccato g''\staccato c'''4.\sf a''8\staccato c'''4\sf~ c'''8 g''8\staccato c'''4\sf(~
 \times 2/3 { c'''8[ b'') a''\staccato] } \times 2/3 { g''8\staccato[ f''\staccato e''\staccato] }
 \times 2/3 { d''8[( e'') f''\staccato] } \times 2/3 { e''\staccato[ d''\staccato c''\staccato] }
 \times 2/3 { b'\staccato[ a'\staccato g'\staccato] } \times 2/3 { f'\staccato[ e'\staccato d'\staccato] }
 \times 2/3 { c'[ e' g'] } \times 2/3 { c''[ e'' g''] } c'''4 \bar "|."
 \break

 \key c \minor
 r4^\markup { "Minore." }^\markup { \large "VAR. IV." } R1 r4 g''4\p( f'' ees'' d'') r4 r2
 r4 f''4( ees'' d'' ees'') r4 r2 r4 g''4( f'' ees'') d''2\<( ees''4 g''\!~ g''2\> c''4\staccato) r4\!
 R1 r4 ees''4\<( d''\!\> ees''\!) R1 r4 fis''4\<( g''\!\> b' c''\!) r4 r2 r4 g''4( f''! ees'')
 d''2\<( ees''4 g''4\!~ g''2\>~ c''4\staccato\!) \bar "|."
 \break

 \key c \major
 r4^\markup { "Maggiore." }^\markup { \large "VAR. V." } c'''2\ff a''2 g''2( e''4\staccato) r4 R1
 R1 c'''2\ff a'' g''2( e''4\staccato) r4 R1
 R1 r4 g''2\sf g''4~ g''4 g''2\sf fis''16( g'' a'' g'') g''4 g''2\sf g''4~
 g''4 g''4.\sf c''8\staccato[ e''\staccato g''\staccato] c'''2\ff a''2 g''2( e''4\staccato) r4 R1 r2 r8 \bar "|."
 \break

 r8^\markup { "VAR. VI." } r4 r4 g''8\p( e'') r4 a''8( f'') r4 g''8( e'') r2 r4 e''8( f'') r4 cis''8( d'') r4 dis''8( e'') r2
 g''8( c''') r4 a''8( c''') r4 g''8( c''') r4 r2 r4 b'4\<( d'' f''\!) f''2\>( e''4) fis''8\!\p( g'') g''8( b') r4 r2
 r2 r4 a''8( g'') g''8( b') r4 r2 R1 r4 fis''8\p( g'') r4 gis''8( a'') r4 fis''8( g''!) r4 dis''8( e'')
 r4 b'4\<( d''! f''!\!) f''2\>( e''4\!) \bar "|."
 \break

 \key c \minor
 r4^\markup { "Minore." }^\markup { \large "VAR. VII." } r2 r4 c''8.\staccato c''16\staccato c'''1\fp
 r2 r4 g''8.\staccato g''16\staccato c''1\fp r2 r4 c''8.\staccato c''16\staccato
 c'''1\fp( g''4) r r g''8.\ff\staccato g''16\staccato c''4 r4 r2 r2 r4 b''8.\staccato b''16\staccato
 c'''2\sf( c''4) r4 r2 r4 b''8.\staccato b''16\staccato c'''2\sf( c''4) r4 r2 r4 c''8.\p c''16
 c'''1_\markup { \italic "cresc." } g''1\ff c''4 r4 r4 \bar "|."
 \break

 \key c \major
 r4^\markup { "Maggiore." }^\markup { \large "VAR. VIII." } R1 R1 R1 r2 r4 c''4\p
 c'''2._\markup { \italic "dolce" }( b''8 a'') g''2.( f''8 e'') d''2( g'') e''2( c''4) r4
 \repeat volta 2 { R1 r2 r4 a''8( g'') g''2.\<( b''4) c'''2(~ c'''8[ b'' c''' b''\!]) c'''2.\sf( b''8 a'')
 g''2.( f''8 e'') d''2\<( g''2\!\>) }
 \alternative { { c''4\! r4 r2 } { c''4 r4 r8 } } \bar "|."
 \break

 r8^\markup { \large "VAR. IX." } r4 R1 R1 R1 r2 r8 c''8\staccato[ e''\staccato f''\staccato]
 g''4\staccato c'''4.\sf c'''8\staccato[ b''\staccato a''\staccato]
 g''4\staccato e''4.\sf g''8\staccato[ f''\staccato e''\staccato] d''8.( e''16) d''4\staccato r8
 f''8\staccato[ e''\staccato d''\staccato] c''8.( d''16) c''4\staccato r8 c''8\staccato[ b'\staccato c''\staccato]
 d''4\staccato g''4.\sf f''8\staccato[ d''\staccato b'\staccato] c''8( e'') g'4\staccato
 r8 c''8\staccato[ b'\staccato c''\staccato] d''4\staccato g''4.\sf f''8\staccato[ d''\staccato b'\staccato]
 c''8( e'') g'4\staccato r8 c''8\staccato[ e''\staccato f''\staccato]
 g''4\staccato c'''4.\sf c'''8\staccato[ b''\staccato a''\staccato] g''4\staccato e''4.\sf
 g''8\staccato[ f''\staccato e''\staccato] d''8.( e''16) d''4\staccato r8 f''8\staccato[ e''\staccato d''\staccato]
 c''8.( d''16) c''4\staccato r2 R1 R1 R1 R1 R1 R1 R1^\fermata \bar "||"

 \time 6/8
 R2.^\markup { \large "Allegro" } R2. R2. R2. R2. R2. R2. R2. R2.
 r4 r8 e''8\pp\staccato[ f''\staccato g''\staccato] a''4\staccato r8 d''8\staccato[ e''\staccato f''\staccato]
 g''4\staccato r8 c''8\staccato e''\staccato f''\staccato] \bar "||"

 \key c \major
 g''4\f\staccato c'''8~ c'''4 a''8~ a''4 g''8~ g''4 e''8~ e''4 f''8~ f''4 d''8~ d''4 e''8\staccato
 c''8\staccato[ e''\staccato f''\staccato] g''4\staccato c'''8~ c'''4 a''8~ a''4 g''8~ g''4 e''8~ e''4 f''8~ f''4 d''8
 c''4 r8 r4 r8 R2. R2. R2. r4 r8 g''8\sf\staccato[ g''\staccato g''\staccato]
 g''8( e'' c'') g''\staccato g''\staccato g''\staccato g''( e'' c'') a''4\p( f''8) e''4( g''8) d''4( f''8)
 e''4\staccato g''8\sf(~ g'' f'') e''\staccato d''4\staccato r8 r4 r8
 r4 g''8\sf(~ g'' f'') e''\staccato d''4\staccato r8 r4 r8 r4 f''8\ff(~ f'' e'') d''\staccato
 c''4\staccato r8 f''4\p\staccato r8 e''4\staccato r8 d''4\staccato r8 c''4\staccato r8 r4 r8 R2. R2. R2. R2. R2.
 \bar "||" \time 4/4
 R1 r4 g''4.\sf g''8\staccato[ f''\staccato e''\staccato]
 d''4\staccato f''4.\sf f''8\staccato[ e''\staccato d''\staccato]
 c''8\ff\staccato[ e''\staccato c''\staccato e''\staccato] c''8\staccato \bar "|."
}