\version "2.10.3"

 oboi = {
 \set Staff.instrumentName = \markup { \center-align { "Oboi." } }
 \set Staff.midiInstrument = "oboe"
 \clef treble
 \key f \major
 \time 4/4
 R1 R1 R1 R1 R1 R1 R1 R1 \set doubleSlurs = ##t <f' a'>2( <d' d''>2)
 << { g'2( e') } \\ { g'2( c'') } >> <c' c''>2.( <g' g''>4) <a' f''>2( <g' e''>4) r8 <c' c''>8 \set doubleSlurs = ##f
 <bes' c''>2~ <bes' c''>8 <f' f''>8([ <e' e''> <f' f''>]) <bes' c''>2~ <bes' c''>8
 << { f''4 f''8 f''2( a'4 bes') } \\ { c''8([ b' c'']) d''4( g' f' e') } >> <f' a'>4 r r <d' d''>8.. <d' d''>32
 << { g'4 bes'8.. bes'32 } \\ { g'4 bes'8.. bes'32 } >> <g'' bes''>4 <f'' a''>
 <g' f''>4. <g' f''>8 \set doubleSlurs = ##t <a' f''>4( <g' bes'>) <f' a'>4 <a' c''>8.. <a' c''>32 <f' a'>4 r
 R1 R1 R1 r2 r8 \set doubleSlurs = ##f <g' g''>8([ <e' e''> <d' d''>] <cis' cis''>8) r8 r4 r2 R1 R1
 r8 << { f''8( a'' g'' f'' e'' d'' c'' b') } \\ { f'8( a' g' f' e'' d'' c'' b') } >> r8 r4 r2 R1
 R1 R1 R1 r4 r8 r16. <g' e''>32 <a' f''>8..[ <a' f''>32 <a' f''>8.. <a' f''>32] <g' e''>8 r r4
 << { c''2~ c''4 } \\ { e'2\rest d'4\rest } >> r8 r16. <g' e''>32 <aes' f''>8..[ <aes' f''>32 <aes' f''>8.. <aes' f''>32]
 <g' e''>8 r r4 << { c''2~ c''8 f''\rest f''\rest c''~ c''[ c''] f''\rest c''~ c''[ c''] f''4\rest f''2\rest } \\ { e'2\rest R1 R1 } >>
 R1 R1 R1 R1 R1 R1 R1 R1 R1 \set doubleSlurs = ##t <f' a'>2( <d' d''>2)
 << { g'2( e') } \\ { g'2( c'') } >> <c' c''>2.( <g' g''>4) <a' f''>2( <g' e''>4) r8 <c' c''>8 \set doubleSlurs = ##f
 <bes' c''>2~ <bes' c''>8 <f' f''>8([ <e' e''> <f' f''>]) <bes' c''>2~ <bes' c''>8
 << { f''4 f''8 f''2( a'4 bes') } \\ { c''8([ b' c'']) d''4( g' f' e') } >> <f' a'>4 r r <d' d''>8.. <d' d''>32
 g'4 <bes' bes''>8.. <bes' bes''>32 <g'' bes''>4 <f'' aes''> << { f''2.( bes'4) } \\ { g'2( aes'4 g') } >> <f' aes'>4 r r2
 R1 R1 R1 R1 R1 R1
 << { c''2\rest f''4\rest ees''4~ ees''4~ ees''16( d''! f'' d'') bes'4 f''4~ f''4~ f''16( e''! g'' e'') c''4 e''
 f''2~ f''16( f'' aes'' f'' ees'' des'' c'' b') c''16\staccato g'\staccato c''\staccato e''\staccato } \\
 { R1 a'!4( bes'8) e'8\rest e'2\rest b'4( c''8) e'8\rest e'4\rest c''4~ c''2 f'8..[ f'32 f'8.. f'32]
 e'16\staccato g'\staccato c''\staccato e'\staccato } >>
 <g' g''>16\staccato <e' e''>\staccato <g' g''>\staccato <e' e''>\staccato <c' c''>8\staccato r8 r4
 g'16\staccato c'\staccato e'\staccato g'\staccato c''\staccato g'\staccato c''\staccato g'\staccato e'8 r8 r4
 c''16 e' g' c'' e'' c'' e'' c'' e'' g' c'' e'' g'' e'' g'' e'' c''8 r r4 r2 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 << { c''2~ c''8 c''4 c''8 c''2~ c''8 c''8([ b' c'']) d''2( c''2)~ c''4 } \\
 { bes'2~ bes'8 f'8([ e' f']) bes'2~ bes'8 f'4 f'8 f'4( g' a' bes' a') } >> r4 r
 << { d''8.. d''32 g'4 bes'8.. bes'32 } \\ { d''8.. d''32 g'4 bes'8.. bes'32 } >> <g'' bes''>4 <f'' a''>
 <g' f''>4. <g' f''>8 \set doubleSlurs = ##t <a' f''>4( <g' bes'>) \set doubleSlurs = ##f
 <f' a'>4 << { a'8.. a'32 d'4 } \\ { a'8.. a'32 d'4 } >> r4 r4 << { bes'8.. bes'32 e'4 } \\ { bes'8.. bes'32 e'4 } >> r4
 R1 r4 <f' a'> r <f' c''> r <f' g'> r <f' g'> r <f' a'> r2
 R1 << { f''2 a''4.( bes''16 c''') bes''4 } \\ { a'2\f( ees'' d''4) } >> r4 r2
 << { f'4.\f f'8( a'[ c'' ees'' a']) bes'4 } \\ { f''4. f''8( ees''[ c'' a' ees'']) d''4 } >> r4 r2
 <a' c''>8\pp r r4 <a' c''>8 r r4 <a' c''>8 r r4 r2 c''4.( a'8 f'8) r8 r4 <f' a'>8 r <a' c''> r <f' a'> r r4^\fermata \bar "||"
}