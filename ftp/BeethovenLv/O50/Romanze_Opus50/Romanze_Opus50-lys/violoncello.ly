\version "2.10.3"

 violoncello = {
 \set Staff.instrumentName = \markup { \center-align { "Violoncello e" "Basso." } }
 \set Staff.midiInstrument = "cello"
 \clef bass
 \key f \major
 \time 4/4
 f4 r bes, r c2. bes,4 a,4 e f bes, c c' c8 r r4 c2~ c8 r8 r4 c2~ c8 r8 r4 bes,4 bes c' c f f, f,8 r8 r4 f4 f bes, bes,
 c4 c c bes, a, e f bes, c c' c r r16 c e c e c e g bes8 r r4 r16 c e c e c e g bes8 r r4 bes4 b c' c
 f4 a8.. a32 d4 r r4 bes8.. bes32 cis4 d bes,4 bes c'! c f4 f,8.. f,32 f,4 r
 f4 r bes r a r e r f r bes, r c r c8 g( e c) cis4 r a, r d r g r a a a, a, d8 f( a g f e d c) b,2 g, c4 r e r
 f8 r f r f r f r g r r4 g8 r r4 g,8[ g g g] g,[ g, g, g,] c4. r16. c32 f8..[ f32 a8.. a32]
 c'8 r << { c'8\rest c'16.\rest c'32 f8..[ f32 a8.. a32] c'4 } \\ { g,4\rest g,2\rest g,4\rest } >> r8 r16.
 << { c32 f8..[ f32 aes8.. aes32] c'8 } \\ { c32 f8..[ f32 aes8.. aes32] c'8 } >> r8
 << { c'8\rest c'16.\rest c'32 f8..[ f32 aes8.. aes32] c'8 c'8\rest f } \\ { g,4\rest g,2\rest b,4\rest f8 } >>
 r8 c8 r f r c r c r c r c r c r c r r2
 f8 r f r bes, r bes, r c r c r c r bes, r a, r e r f r bes, r c r c r c r c r c2~ c8 r8 r4
 c2~ c8 r r4 bes8 r bes r c' r c r f8 r f, r f r r4 f4 f bes, bes, c c c bes, a, e f bes, c c' c r
 r16 c e c e c e g bes8 r r4 r16 c e c e c e g bes8 r r4
 bes4 b c' c f4 a8.. a32 d4 r r4 bes8.. bes32 c4 des bes,4 bes c' c f8 r f r f r f r
 f,8 r f r f r f r f, r f r f r f r ees r ees r aes, r aes, r des r des r f r f r
 ges8 r ges r aes r aes r des4 des ges, ges, aes, aes, aes, ces bes, bes, bes, des c c c
 c'4~ c'16 aes( c' aes g f aes f) des8..[ des32 des8.. des32]
 c16\staccato g,\staccato c\staccato e\staccato g\staccato e\staccato g\staccato e\staccato c8 r8 r4
 g16\staccato c\staccato e\staccato g\staccato c'\staccato g\staccato c'\staccato g\staccato e8 r8 r4
 c8 g,16 c e c e c e g, c e g e g e c8 r r4 r2 r2 g16 e g e g e g e c4 r c8 r c r c4 r c8 r c r
 c8 r c r c r c r c r c r c r c r c r c r c r r4
 f8 r f r bes, r bes, r c r c r c r bes, r a, r e r f r bes, r c r c' r c r c r c2~ c8 r r4 c2~ c8 r r4 bes4 b c' c
 f4 a8.. a32 d4 r r4 bes8.. bes32 cis4 d
 bes,4 bes c'! c f4 r r d'8.. d'32 g4 r r g8.. g32 c4 d e c f2 a, bes, b, c8 r r4 r2
 c8[ c' c' c'] c[ c c c] f,16\f f f f f, f f f f, f f f f, f f f f,\p f f f f f f f f f f f f f f f f,16\f f f f f, f f f f, f f f f, f f f
 f,16\p f f f f f f f f f f f f f f f f8\pp r r4 f8 r r4 f8 r r4 r2 r2 c'4.( a8 f) r8 f, r f, r r4^\fermata \bar "||"
}