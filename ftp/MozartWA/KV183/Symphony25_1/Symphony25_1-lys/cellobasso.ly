\version "2.10.3"

 cellobasso = {
 \set Staff.instrumentName =  \markup { \column { "Violoncello" "e Basso." } }
 \set Staff.midiInstrument = "cello"
 \clef bass
 \key g \minor
 \time 4/4
 \repeat volta 2 { g'4\f g' g' g' d' d' d' d' ees' ees' ees' ees' fis fis fis fis
 g4 r bes16( a g fis g4\staccato) r2 bes16( a g fis g4\staccato) r2 c'16( bes a g a4\staccato)
 r2 c'16( bes a g a4\staccato) r2 d'16( c' bes a bes4\staccato) bes16( a g fis g4\staccato)
 g'16( f'! ees' d') ees'( d' c' bes) c'4\staccato bes\staccato a\staccato g\staccato fis\staccato d'\staccato r2
 r4 g,4\staccato bes,\staccato d\staccato r g\staccato bes\staccato g\staccato r c\staccato g\staccato c'\staccato
 r4 a4\staccato d'\staccato c'\staccato bes4 r r2 g4\p r r2 g,4 r r2 g,4 r r2 g,4 r r2 g,4 r r2 ees,4 r r2 ees4 r r2
 d4_\markup { \italic "dim." } r r2 d4 r r2 d4\pp r d r d r r2 bes,2\f r2 R1 f1 ees'1
 d'32( c' bes8.) bes8\staccato bes\staccato bes4\staccato r4
 d'32( c' bes8.) bes8\staccato bes\staccato bes4\staccato r4 f1 ees'1
 d'32( c' bes8.) bes8\staccato bes\staccato bes4\staccato r4 d'32( c' bes8.) bes8\staccato bes\staccato bes4\staccato r4
 g32( f ees8.) ees8\staccato ees\staccato ees4\staccato r4 g32( f ees8.) ees8\staccato ees\staccato ees4\staccato r4
 c'32( bes a8.) a8\staccato a\staccato a4\staccato r4 c'32( bes a8.) a8\staccato a\staccato a4\staccato r4
 f32( ees d8.) d8\staccato d\staccato d4\staccato r4 f32( ees d8.) d8\staccato d\staccato d4\staccato r4
 bes32( a g8.) g8\staccato g\staccato g4\staccato r4 bes32( a g8.) g8\staccato g\staccato g4\staccato r4
 ees32( d c8.) c8\staccato c\staccato c4\staccato r4 ees32( d c8.) c8\staccato c\staccato c4\staccato r4
 R1 ees'4 c' a f R1 bes4 f d bes, R1 bes4 f des bes, R1 des'4 bes g e f ges f e f4 f f, r4
 d4\p\staccato bes,\staccato ees\staccato bes,\staccato f\staccato bes,\staccato g\staccato ees\staccato
 d\staccato bes,\staccato ees\staccato bes,\staccato f\staccato bes,\staccato g\staccato ees\staccato
 d4 e f d c bes, a, bes, ees!4 a bes d ees f bes\f f a f bes f c' f d' f a4 f bes f c' f d' e' f' d' c' a bes bes, f fis
 g4 d ees f! bes,4 r r8 bes d' bes g4 r r8 ees g ees d4 g ees f bes,2 r4 bes,16( c d ees) f2 r4 f16( ees d c)
 bes,2 r4 bes,16( c d ees) f2 r4 f16( ees d c) bes,4 bes( c' d') ees'( c' a) fis' }
 \repeat volta 2 { g'4 g( aes bes) c'( aes f!) d'( ees') ees( f g) aes( f d) b( c') r4 c'4\staccato g\staccato
 c'4\staccato r8 g\staccato c'4\staccato ees'\staccato c4 r8 a! d'4 a
 fis'4 r8 a d'4 c' bes4 r8 d g4 d bes4 r8 d g4 d bes4 r8 bes g4 bes e4 r8 e' cis'4 a d'4 r8 a f4 d bes,4 r8 bes, bes4 bes,
 a,4 r4 r2 a,4\p r r2 a,4 r r2 a,4 r r2 a,4 a\f( bes gis) a\staccato g!( f e) d4 r r2 d4\p r r2 d4 r r2 d4 r r2
 d4 d'\f( ees'! cis') d'\staccato c'!( bes a) g2 r2 R1 R1 R1 R1 R1 R1 R1
 g'4\f g' g' g' d' d' d' d' ees' ees' ees' ees' fis fis fis fis
 g4 r bes16( a g fis g4\staccato) r2 bes16( a g fis g4\staccato) r2 c'16( bes a g a4\staccato)
 r2 c'16( bes a g a4\staccato) r2 d'16( c' bes a bes4\staccato) bes16( a g fis g4\staccato)
 g'16( f'! ees' d') ees'( d' c' bes) c'4\staccato bes\staccato a\staccato g\staccato fis\staccato d'\staccato r2
 r4 g,4\staccato bes,\staccato d\staccato r g\staccato bes\staccato g\staccato r c\staccato g\staccato c'\staccato
 r4 a4\staccato d'\staccato c'\staccato bes4 r r2 g4\p r r2 g,4 r r2 g,4 r r2 g,4 r r2
 g,4 r r2 ees,4 r r2 ees4 r r2 d4_\markup { \italic "decresc." } r r2 d4 r r2 d4\pp r d r d4 r r2
 g,2\f r2 R1 d1 c'1 bes32( a g8.) g8\staccato g\staccato g4\staccato r bes32( a g8.) g8\staccato g\staccato g4\staccato r
 d1 c'1 bes32( a g8.) g8\staccato g\staccato g4\staccato r bes32( a g8.) g8\staccato g\staccato g4\staccato r
 ees'32( d' c'8.) c'8\staccato c'\staccato c'4\staccato r ees'32( d' c'8.) c'8\staccato c'\staccato c'4\staccato r
 a32( g f8.) f8\staccato f\staccato f4\staccato r a32( g f8.) f8\staccato f\staccato f4\staccato r
 d'32( c' bes8.) bes8\staccato bes\staccato bes4\staccato r d'32( c' bes8.) bes8\staccato bes\staccato bes4\staccato r
 g32( f ees8.) ees8\staccato ees\staccato ees4\staccato r g32( f ees8.) ees8\staccato ees\staccato ees4\staccato r
 c'32( bes a8.) a8\staccato a\staccato a4\staccato r c'32( bes a8.) a8\staccato a\staccato a4\staccato r
 R1 c'4 a fis d R1 g4 d bes, g, R1 aes4 f! d b, R1 c'4 g ees c R1 bes!4 g e cis d4 ees! d cis d d' d r
 bes4\p\staccato g\staccato c'\staccato g\staccato d'\staccato g\staccato ees'\staccato c'\staccato
 bes\staccato g,\staccato c\staccato g,\staccato d\staccato g,\staccato ees\staccato c\staccato
 bes,4 cis d bes a g fis g c! fis, g, ees c d g\f\staccato d\staccato
 fis4\staccato d\staccato g\staccato d\staccato a d bes d fis d g d a d bes cis d bes, a, fis g g, d d ees bes, c! d
 g,4 r4 r8 g8\f bes g ees4 r r8 ees8 g ees d4 ees c d g2 r4 g16( a bes c') d'2 r4 d'16( c' bes a)
 g2 r4 g16( a bes c') d'2 r4 d'16( c' bes a) g4 bes( c' d') ees'( c' a fis') }
 g'4 r r2 R1 g'4 g' g' g' d' d' d' d' ees' ees' ees' ees' b8 b4 b b b8
 c'4 c' fis fis g g ees' ees' c' c' d' d' g4 r r2 g4 g8. g16 g4 g d'2 bes4 g d g bes, d g, r r2 \bar "|."
}