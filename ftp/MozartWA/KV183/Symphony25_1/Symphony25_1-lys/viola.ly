\version "2.10.3"

 viola = {
 \set Staff.instrumentName = "Viola."
 \set Staff.midiInstrument = "viola"
 \clef alto
 \key g \minor
 \time 4/4
 \repeat volta 2 { g'8\f g'4 g' g' g'8 d'8 d'4 d' d' d'8 ees'8 ees'4 ees' ees' ees'8 fis8 fis4 fis fis fis8
 g4 r4 bes'16( a' g' fis' g'4\staccato) r2 bes'16( a' g' fis' g'4\staccato)
 r2 c''16( bes' a' g' a'4\staccato) r2 c''16( bes' a' g' a'4\staccato) r2 d''16( c'' bes' a' bes'4\staccato)
 bes'16( a' g' fis' g'4\staccato) g'16( f' ees' d') ees'( d' c' bes) c'4\staccato bes\staccato a\staccato g\staccato
 fis4\staccato d'\staccato r2 bes'8 bes'4 bes' bes' bes'8 bes8 bes4 bes bes bes8 g'8 g'4 g' g' g'8
 <a d'>8 <a d'>4 <a d'> <a d'> <a d'>8 <bes d'>4 r r2 g4\p r r2 g4 r r2 g4 r r2 g4 r r2 g4 r r2 ees4 r r2 ees'4 r r2
 d'4_\markup { \italic "dim." } r r2 d'4 r r2 d'4\pp r d' r d' r r2
 <bes d'>2:16\f <bes d'>2:16 <bes d'>2:16 <bes d'>2:16 <c' ees'>2:16 <c' ees'>2:16 <c' ees'>2:16 <c' ees'>2:16
 <bes d'>2:16 <bes d'>2:16 <bes d'>2:16 <bes d'>2:16 <c' ees'>2:16 <c' ees'>2:16 <c' ees'>2:16 <c' ees'>2:16
 f'32( ees' d'8.) d'8\staccato d'\staccato d'4\staccato r4 f'32( ees' d'8.) d'8\staccato d'\staccato d'4\staccato r4
 bes32( a g8.) g8\staccato g\staccato g4\staccato r4 bes32( a g8.) g8\staccato g\staccato g4\staccato r4
 ees'32( d' d'8.) c'8\staccato c'\staccato c'4\staccato r4 ees'32( d' d'8.) c'8\staccato c'\staccato c'4\staccato r4
 a32( g f8.) f8\staccato f\staccato f4\staccato r4 a32( g f8.) f8\staccato f\staccato f4\staccato r4
 d'32( c' bes8.) bes8\staccato bes\staccato bes4\staccato r4 d'32( c' bes8.) bes8\staccato bes\staccato bes4\staccato r4
 g'32( f' ees'8.) ees'8\staccato ees'\staccato ees'4\staccato r4 g'32( f' ees'8.) ees'8\staccato ees'\staccato ees'4\staccato r4
 R1 ees''4 c'' a' f' R1 bes'4 f' d' bes R1 bes'4 f' des' bes R1 des''4 bes' g' e' f' ges' f' e' f'4 f' f r
 R1 R1 R1 R1 d'4\p e' f' d' c' bes a bes ees'!4 a bes f g8( ees') d'\staccato c'\staccato f'8\f f'4 f'8~ f'8 f'4 f' f' f'8~
 f'8 f'4 f' f' f'8~ f'8 f'4 f' f' f'8~ f'8( c'') bes'\staccato a'\staccato bes'4 g' c'4 d' g'8( ees') ees'\staccato ees'\staccato
 ees'8( d') c'\staccato bes\staccato a( c') c'\staccato c'\staccato c'( bes) d'\staccato f'\staccato f'( ees') d'\staccato c'\staccato
 bes4 r r8 d' f' d' bes4 r r8 g'8 bes' g' f'4 g' g' f' bes2 r4 bes16( c' d' ees') f'2 r4 f'16( ees' d' c')
 bes2 r4 bes16( c' d' ees') f'2 r4 f'16( ees' d' c') bes4 bes4( c' d') ees'( c' a) fis' }
 \repeat volta 2 { g'4 g( aes bes) c'( aes f!) d'( ees') ees( f g) aes( f d) b( c'8) ees' ees' ees' ees' ees' ees' ees'
 ees'8 ees' ees' ees' ees' ees' ees' ees' fis' fis' fis' fis' fis' fis' fis' fis'
 fis'8 fis' fis' fis' fis' fis' fis' fis' g' g' g' g' bes' bes' bes' bes' g' g' g' g' g' g' g' g' e' e' e' e' e' e' e' e' e' e' e' e' e' e' e' e'
 d'8 f' f' f' f' f' f' f' f' f' f' f' f' f' d' d' <cis' e'>4 r4 r2 a4\p r4 r2 a4 r r2 a4 r r2 a4 a'\f( bes' gis') a'\staccato g'!( f' e')
 d'4 r r2 d'4\p r r2 d'4 r r2 d'4 r r2 d'4 d'\f( ees'! cis') d'4\staccato c'!( bes a)
 g2 r8 g'\staccato g'( fis') fis'2 r8 f'\staccato f'( e') e'2 r8 ees'\staccato ees'( d') d'2 r8 ees'\staccato ees'( d')
 d'2 r8 c''\staccato c''( bes') a'2 r8 c'\staccato c'( bes) a2 r2 R1
 g'8\f g'4 g' g' g'8 d'8 d'4 d' d' d'8 ees'8 ees'4 ees' ees' ees'8 fis8 fis4 fis fis fis8
 g4 r4 bes'16( a' g' fis' g'4\staccato) r2 bes'16( a' g' fis' g'4\staccato)
 r2 c''16( bes' a' g' a'4\staccato) r2 c''16( bes' a' g' a'4\staccato) r2 d''16( c'' bes' a' bes'4\staccato)
 bes'16( a' g' fis' g'4\staccato) g'16( f' ees' d') ees'( d' c' bes) c'4\staccato bes\staccato a\staccato g\staccato
 fis4\staccato d'\staccato r2 bes'8 bes'4 bes' bes' bes'8 bes8 bes4 bes bes bes8 g'8 g'4 g' g' g'8
 <a d'>8 <a d'>4 <a d'> <a d'> <a d'>8 <bes d'>4 r r2 g4\p r r2 g4 r r2 g4 r r2 g4 r r2 g4 r r2 ees4 r r2 ees'4 r r2
 d'4_\markup { \italic "decresc." } r4 r2 d'4 r r2 d'4\pp r d' r d'4 r r2
 <g bes>2:16\f <g bes>2:16 <g bes>2:16 <g bes>2:16 <a c'>2:16 <a c'>2:16 <a d'>2:16 <a d'>2:16
 <bes d'>2:16 <g d'>2:16 <g bes>2:16 <g bes>2:16 <a c'>2:16 <a c'>2:16 <a d'>2:16 <a d'>2:16
 d'32( c' bes8.) bes8\staccato bes\staccato bes4\staccato r d'32( c' bes8.) bes8\staccato bes\staccato bes4\staccato r
 g'32( f' ees'8.) ees'8\staccato ees'\staccato ees'4\staccato r g'32( f' ees'8.) ees'8\staccato ees'\staccato ees'4\staccato r
 c'32( bes a8.) a8\staccato a\staccato a4\staccato r c'32( bes a8.) a8\staccato a\staccato a4\staccato r
 f'32( ees' d'8.) d'8\staccato d'\staccato d'4\staccato r f'32( ees' d'8.) d'8\staccato d'\staccato d'4\staccato r
 bes32( a g8.) g8\staccato g\staccato g4\staccato r bes32( a g8.) g8\staccato g\staccato g4\staccato r
 ees'32( d' c'8.) c'8\staccato c'\staccato c'4\staccato r ees'32( d' c'8.) c'8\staccato c'\staccato c'4\staccato r
 R1 c''4 a' fis' d' R1 g'4 d' bes g R1 aes'4 f'! d' b R1 c''4 g' ees' c' R1 bes'!4 g' e' cis' d'4 ees'! d' cis' d' d'' d' r
 R1 R1 R1 R1 bes4\p cis' d' bes a g fis g c'! fis g8 bes4 g'8 ees'8( c') bes\staccato a\staccato g8\f d'4 d'8~
 d'8 d'4 d' d' d'8~ d'8 d'4 d' d' d'8~ d'8 d'4 d' d' d'8~ d'8( a') g'\staccato fis'\staccato g'4 e'
 a4 bes ees'!8( c') c'\staccato c'\staccato c'( bes) a\staccato g\staccato fis4 fis' g'4. d''8 d''( c'') bes'\staccato a'\staccato
 g'4 r4 r8 bes\f( d' bes) g4 r r8 g' ees' g' g4 ees' ees' d' g2 r4 g16( a bes c') d'2 r4 d'16( c' bes a)
 g2 r4 g16( a bes c') d'2 r4 d'16( c' bes a) g4 bes( c' d') ees'( c' a fis') }
 g'4 r r2 R1 g'8 g'4 g' g' g'8 d'8 d'4 d' d' d'8 ees'8 ees'4 ees' ees' ees'8 b8 b4 b b b8 c'8 c'4 c'8 fis8 fis4 fis8
 g8 g4 g8 ees'8 ees'4 ees'8 ees'8 ees'4 ees'8 d'8 d'4 d'8 d'4 r r2 g'4 g'8. g'16 g'4 g'
 d''2 bes'4 g' d' g' bes d' g r r2 \bar "|."
}