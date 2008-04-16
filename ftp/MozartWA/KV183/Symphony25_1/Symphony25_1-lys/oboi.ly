\version "2.10.3"

 oboi = {
 \set Staff.instrumentName = "Oboi."
 \set Staff.midiInstrument = "oboe"
 \clef treble
 \key g \minor
 \time 4/4
 \override Score.MetronomeMark #'transparent = ##t
 \tempo 4 = 152
 \repeat volta 2 {
 g''1\f^\markup { \bold "Allegro con brio" } d''1 ees''1 fis'1 g'4 r bes''16( a'' g'' fis'' g''4\staccato)
 r2 bes''16( a'' g'' fis'' g''4\staccato) r2 c'''16( bes'' a'' g'' a''4\staccato)
 r2 c'''16( bes'' a'' g'' a''4\staccato) r2 d'''16( c''' bes'' a'' bes''4\staccato) bes''16( a'' g'' fis'' g''4\staccato)
 g''16( f'' ees'' d'') ees''( d'' c'' bes') c''8. c''16 bes'8. bes'16 a'8. a'16 g'8. g'16 fis'4\staccato d''\staccato r2
 g''1 d'' ees'' fis' << { g''1^\fp d'' ees'' fis' g' g'' bes'' cis''
 d''4._\markup { \italic "dim." }( cis''8 d'' cis'' d'' cis'') d''4.( cis''8 d'' cis'' d'' cis'')
 d''4\pp d''4\rest d'' d''\rest d''4 d''\rest g''2\rest } \\ { g'4 g'4\rest r2 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 } >>
 bes'1\f bes''1 a''4 r r2 R1 bes'1 bes''1 a''4 r r2 R1 r2 <d'' bes''>2 r <d'' bes''> r <bes' g''> r <bes' g''>
 r2 <ees'' c'''> r <ees'' c'''> r <a' ees''> r <a' ees''> r <d'' bes''> r <d'' bes''> r <g' ees''> r <g' ees''> R1
 ees''4 c'' a' f' R1 bes''4 f'' d'' bes' R1 bes''4 f'' des'' bes' R1 des''4 bes' g' e' f' ges' f' e' f'4 f'' f' r4
 R1 R1 R1 R1 R1 R1 R1 r2 \appoggiatura c''16 bes'4\f( a'8\staccato) bes'\staccato
 \appoggiatura d''16 c''4( bes'8\staccato) c''\staccato \appoggiatura ees''16 d''4( c''8\staccato) d''\staccato
 f''8( ees'') d''\staccato c''\staccato bes'4 f'' << { f''1~ f''2 } \\ { f'1~ f'2 } >>
 bes'8( bes'') bes''\staccato bes''\staccato bes''( a'') g''\staccato f''\staccato
 ees''!( g'') g''\staccato g''\staccato g''( f'') ees''\staccato d''\staccato c''( ees'') ees''\staccato ees''\staccato
 ees''8( d'') f''\staccato bes'\staccato d''( c'') bes'\staccato a'\staccato bes'4 r4 <d'' bes''>2
 <bes' g''>4 r4 <bes' g''>2 <bes' f''>4 <d'' bes''> << { c''4 } \\ { c''4 } >> <ees'' a''>4
 << { bes''2 f'' } \\ { d''1 } >> <c'' ees''>2( <a' c''>) <bes' d''>( <d'' f''>) <c'' ees''>( <a' c''>)
 bes'4 bes'( c'' d'') ees''( c'' a' fis'') }
 \repeat volta 2 {
 g''4 g'( aes' bes') c'' aes'( f'! d'') ees'' ees'( f' g') aes'( f' d' b') c''1 <g' ees''>1 <fis' d''>1 <a' fis''>1
 << { g''1~ g''1 e''1 g''1 f''1 gis''1 a''1^\fp cis''1 d''1 gis'1 a'4 } \\
 { d''1 bes'1 cis''1~ cis''2 e''4 cis'' d''1~ d''1 cis''4 r r2 R1 R1 R1 c'4\rest } >>
 << { s4 s2 s1 d'''1^\fp fis''1 g''1 cis''1 d''4 s4 s2 s1 s1 } \\
 { a''4\f( bes'' gis'') a''4( g''! f'' e'') d''4 b'4\rest r2 R1 R1 R1 e'4\rest d''4\f( ees''! cis'')
 d''\staccato c''!( bes' a') g'4 g'4\rest r2 } >> R1 R1 R1 R1 R1 fis'1\p\< fis''1\!
 g''1\f d''1 ees''1 fis'1 g'4 r bes''16( a'' g'' fis'' g''4\staccato) r2 bes''16( a'' g'' fis'' g''4\staccato)
 r2 c'''16( bes'' a'' g'' a''4\staccato) r2 c'''16( bes'' a'' g'' a''4\staccato)
 r2 d'''16( c''' bes'' a'' bes''4\staccato) bes''16( a'' g'' fis'' g''4\staccato) g''16( f'' ees'' d'') ees''( d'' c'' bes')
 c''8. c''16 bes'8. bes'16 a'8. a'16 g'8. g'16 fis'4\staccato d''\staccato r2 g''1 d'' ees'' fis'
 << { g''1^\fp d''1 ees''1 fis'1 g'1 g''1 bes''1 cis''1
 d''4._\markup { \italic "decresc." }( cis''8 d'' cis'' d'' cis'') d''4.( cis''8 d'' cis'' d'' cis'')
 d''4^\pp d''4\rest d'' d''4\rest d'' d''4\rest d''2\rest } \\ { g'4 r r2 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 } >>
 g'1\f g''1 fis''4 r r2 R1 g'1 g''1 fis''4 r r2 R1 r2 <d'' bes''>2 r <d'' bes''> r <g' ees''> r <g' ees''>
 r2 <c'' a''> r <c'' a''> r <f'! d''> r <f' d''> r <bes' g''> r <bes' g''> r <ees' c''> r <ees' c''>
 R1 c'''4 a'' fis'' d'' R1 g''4 d'' bes' g' R1 aes''4 f''! d'' b' R1 c'''4 g'' ees'' c'' R1 bes''!4 g'' e'' cis''
 d''4 ees''! d'' cis'' d''4 d''' d'' r R1 R1 R1 R1 R1 R1 R1 r2 \appoggiatura a''16 g''4\f( fis''8\staccato) g''\staccato
 \appoggiatura bes''16 a''4( g''8\staccato) a''\staccato \appoggiatura c'''16 bes''4( a''8\staccato) bes''\staccato
 d'''8( c''') bes''\staccato a''\staccato \appoggiatura a''16 g''4( fis''8\staccato) g''\staccato
 \appoggiatura bes''16 a''4( g''8\staccato) a''\staccato \appoggiatura c'''16 bes''4( a''8\staccato) bes''\staccato
 d'''8( c''') bes''\staccato a''\staccato g''\staccato g''\staccato g''\staccato g''\staccato
 g''8( fis'') ees''\staccato d''\staccato c''( ees'') ees''\staccato ees''\staccato
 ees''( d'') c''\staccato bes'\staccato a'( c''') c'''\staccato c'''\staccato c'''( bes'') d'''\staccato g''\staccato
 bes''( a'') g''\staccato fis''\staccato g''4 r <bes' d''>2 << { c''4 } \\ { c''4 } >> r4
 << { g''2~ g''4 bes'' a''2 g''2 } \\ { c''2 bes'4 g''2 fis''4 g''2 } >> <bes' d''>2( <a' c''> <fis' a'>)
 <g' bes'>2( <bes' d''> <a' c''> <fis' a'>) g'4 bes'( c'' d'') ees''( c'' a' fis'') }
 g''4^\markup { \bold "Coda." } r4 r2 R1 R1 R1 g''1 d''1 ees''2 c''' bes'' g'' a' fis'' g''4 r r2
 g''1~ g''1~ g''1~ g''4 r r2 \bar "|."
}