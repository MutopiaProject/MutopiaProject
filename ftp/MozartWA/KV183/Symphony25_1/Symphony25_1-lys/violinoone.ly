\version "2.10.3"

 violinoone = {
 \set Staff.instrumentName = "Violino I."
 \set Staff.midiInstrument = "violin"
 \clef treble
 \key g \minor
 \time 4/4
 \repeat volta 2 { g''8\f g''4 g'' g'' g''8 d''8 d''4 d'' d'' d''8 ees''8 ees''4 ees'' ees'' ees''8 fis'8 fis'4 fis' fis' fis'8
 g'8 bes' d'' g'' bes''16( a'' g'' fis'' g''4\staccato) g'8 bes' d'' g'' bes''16( a'' g'' fis'' g''4\staccato)
 a'8 c'' fis'' a'' c'''16( bes'' a'' g'' a''4\staccato) a'8 c'' fis'' a'' c'''16( bes'' a'' g'' a''4\staccato)
 bes'8 d'' g'' bes'' d'''16( c''' bes'' a'' bes''4\staccato) bes''16( a'' g'' fis'' g''4\staccato)
 g''16( f'' ees'' d'') ees''( d'' c'' bes') c''8. c''16 bes'8. bes'16 a'8. a'16 g'8. g'16 fis'4\staccato d''\staccato r2
 g''8 g''4 g'' g'' g''8 d''8 d''4 d'' d'' d''8 ees''8 ees''4 ees'' ees'' ees''8 fis'8 fis'4 fis' fis' fis'8
 g'4 d'4\p d' d' r d' d' d' r ees' ees' ees' r c' c' c' r bes bes bes r d' d' d' r g' g' g' r bes' bes' g'
 fis'4._\markup { \italic "dim." }( g'8 fis' g' fis' g') fis'4.( g'8 fis' g' fis' g') fis'4\pp r fis' r fis' r r2
 bes'1\f bes''1 a''32( g'' f''8.) f''8\staccato f''\staccato f''4\staccato r a''32( g'' f''8.) f''8\staccato f''\staccato f''4\staccato r
 bes'1 bes''1 a''32( g'' f''8.) f''8\staccato f''\staccato f''4\staccato r a''32( g'' f''8.) f''8\staccato f''\staccato f''4\staccato r
 bes'4:16 d''4:16 f''4:16 bes''4:16 d'''4:16 bes''4:16 f''4:16 d''4:16 g''8 g''4 g'' g'' g''8~ g''8 g''4 g'' g'' g''8
 a'4 c''4:16 ees''4:16 a''4:16 c'''4:16 a''4:16 ees''4:16 c''4:16 f''8 f''4 f'' f'' f''8~ f''8 f''4 f'' f'' f''8
 g'4:16 bes'4:16 d''4:16 g''4:16 bes''4:16 g''4:16 d''4:16 bes'4:16 ees''8 ees''4 ees'' ees'' ees''8~
 ees''8 ees''4 ees'' ees'' ees''8 ees'''4:16 c'''4:16 a''4:16 f''4:16 ees''4:16 c''4:16 a'4:16 f'4:16
 d'''4:16 bes''4:16 f''4:16 d''4:16 bes'4:16 f'4:16 d'4:16 bes4:16 des'''4:16 bes''4:16 f''4:16 des''4:16
 bes'4:16 f'4:16 des'4:16 bes4:16 des'''4:16 bes''4:16 g''4:16 e''4:16 des''4:16 bes'4:16 g'4:16 e'4:16
 f'4:16 ges'4:16 f'4:16 e'4:16 f'4 f'' f' r
 \appoggiatura c''16 bes'4\p( a'8\staccato) bes'\staccato \appoggiatura d''16 c''4( bes'8\staccato) c''\staccato
 \appoggiatura ees''16 d''4( c''8\staccato) d''\staccato \appoggiatura f''16 ees''4( d''8\staccato) c''\staccato
 \appoggiatura c''16 bes'4( a'8\staccato) bes'\staccato \appoggiatura d''16 c''4( bes'8\staccato) c''\staccato
 \appoggiatura ees''16 d''4( c''8\staccato) d''\staccato \appoggiatura f''16 ees''4( d''8\staccato) c''\staccato
 bes'8( bes'') bes''\staccato bes''\staccato bes''( a'') g''\staccato f''\staccato
 ees''( g'') g''\staccato g''\staccato g''( f'') ees''\staccato d''\staccato
 c''( ees'') ees''\staccato ees''\staccato ees''( d'') f''\staccato bes'\staccato
 d''8( c'') bes'\staccato a'\staccato \appoggiatura c''16 bes'4\f( a'8\staccato) bes'\staccato
 \appoggiatura d''16 c''4( bes'8\staccato) c''\staccato \appoggiatura ees''16 d''4( c''8\staccato) d''\staccato
 f''8( ees'') d''\staccato c''\staccato \appoggiatura c''16 bes'4( a'8\staccato) bes'\staccato
 \appoggiatura d''16 c''4( bes'8\staccato) c''\staccato \appoggiatura ees''16 d''4( c''8\staccato) d''\staccato
 f''8( ees'') d''\staccato c''\staccato bes'8( bes'') bes''\staccato bes''\staccato
 bes''( a'') g''\staccato f''\staccato ees''( g'') g''\staccato g''\staccato g''( f'') ees''\staccato d''\staccato
 c''8( ees'') ees''\staccato ees''\staccato ees''( d'') f''\staccato bes'\staccato d''( c'') bes'\staccato a'\staccato
 bes'8 c''16 d'' ees'' f'' g'' a'' bes''4 r g'8 a'16 bes' c'' d'' ees'' f'' g''4 r f''4 <d'' bes''> c'' <c'' a''>
 bes''4:16 f''4:16 d''4:16 bes'4:16 a'4:16 c''4:16 f''4:16 a''4:16 bes''4:16 f''4:16 d''4:16 bes'4:16
 a'4:16 c''4:16 f''4:16 a''4:16 bes''4:16 bes'4:16 c''4:16 d''4:16 ees''4:16 c''4:16 a'4:16 fis''4:16 }
 \repeat volta 2 {
 g''4:16 g'4:16 aes'4:16 bes'4:16 c''4:16 aes'4:16 f'!4:16 d''4:16 ees''4:16 ees'4:16 f'4:16 g'4:16
 aes'4:16 f'4:16 d'4:16 b'4:16 c''4 g' ees'' r8 g' c''4 g' ees'' r8 c'' d''4 a'! fis'' r8 a'
 d''4 a' fis'' r8 d'' g''4 d'' bes'' r8 d'' g''4 d'' bes'' r8 d'' cis''4 g' e'' r8 e'' g''4 a' e''' r8 g'' f''4 a' d''' r8 d''
 f''4 d' d''' r8 gis'' a''4 e'\p e' e' r4 g' g' g' r4 f' f' f' r4 f' f' f' e'4 a'4:16\f bes'4:16 gis'4:16 a'4:16 g'!4:16 f'4:16 e'4:16
 d'4\p a' a' a' r4 c'' c'' c'' r bes' bes' bes' r bes' bes' bes' a'4\f d'4:16 ees'!4:16 cis'4:16 d'4:16 c'!4:16 bes4:16 a4:16
 g8 d''\staccato d''( ees''!) ees''2 r8 cis''\staccato cis''( d'') d''2
 r8 b'8\staccato b'( c'') c''2 r8 b'\staccato b'( c'') c''2 r8 g''\staccato g''( fis'') fis''2 r8 g''\staccato g''( fis'') fis''2 R1 R1
 g''8\f g''4 g'' g'' g''8 d''8 d''4 d'' d'' d''8 ees''8 ees''4 ees'' ees'' ees''8 fis'8 fis'4 fis' fis' fis'8
 g'8 bes' d'' g'' bes''16( a'' g'' fis'' g''4\staccato) g'8 bes' d'' g'' bes''16( a'' g'' fis'' g''4\staccato)
 a'8 c'' fis'' a'' c'''16( bes'' a'' g'' a''4\staccato) a'8 c'' fis'' a'' c'''16( bes'' a'' g'' a''4\staccato)
 bes'8 d'' g'' bes'' d'''16( c''' bes'' a'' bes''4\staccato) bes''16( a'' g'' fis'' g''4\staccato)
 g''16( f'' ees'' d'') ees''( d'' c'' bes') c''8. c''16 bes'8. bes'16 a'8. a'16 g'8. g'16 fis'4\staccato d''\staccato r2
 g''8 g''4 g'' g'' g''8 d''8 d''4 d'' d'' d''8 ees''8 ees''4 ees'' ees'' ees''8 fis'8 fis'4 fis' fis' fis'8
 g'4 d'4\p d' d' r d' d' d' r ees' ees' ees' r c' c' c' r bes bes bes r d' d' d' r g' g' g' r bes' bes' g'
 fis'4._\markup { \italic "decresc." }( g'8 fis' g' fis' g') fis'4.( g'8 fis' g' fis' g') fis'4\pp r fis' r fis' r r2
 g'1\f g''1 fis''32( ees'' d''8.) d''8\staccato d''\staccato d''4\staccato r4
 fis''32( ees'' d''8.) d''8\staccato d''\staccato d''4\staccato r4
 g'1 g''1 fis''32( ees'' d''8.) d''8\staccato d''\staccato d''4\staccato r4
 fis''32( ees'' d''8.) d''8\staccato d''\staccato d''4\staccato r4 g'4:16 bes'4:16 d''4:16 g''4:16
 bes''4:16 g''4:16 d''4:16 bes'4:16 ees''8 ees''4 ees'' ees'' ees''8~ ees''8 ees''4 ees'' ees'' ees''8
 f'!4:16 a'4:16 c''4:16 f''!4:16 a''4:16 f''4:16 c''4:16 a'4:16 d''8 d''4 d'' d'' d''8~ d''8 d''4 d'' d'' d''8
 ees'4:16 g'4:16 bes'4:16 ees''4:16 g''4:16 ees''4:16 bes'4:16 g'4:16 c''8 c''4 c'' c'' c''8~ c''8 c''4 c'' c'' c''8
 c'''4:16 a''4:16 fis''4:16 d''4:16 c''4:16 a'4:16 fis'4:16 d'4:16 bes''4:16 g''4:16 d''4:16 bes'4:16
 g'4:16 d'4:16 bes4:16 g4:16 aes''4:16 f''!4:16 d''4:16 b'4:16 aes'4:16 f'!4:16 d'4:16 b4:16
 c'''4:16 g''4:16 ees''4:16 b'4:16 c''4:16 g'4:16 ees'4:16 c'4:16 bes''!4:16 g''4:16 e''4:16 cis''4:16
 bes'4:16 g'4:16 e'4:16 cis'4:16 d'4:16 ees'!4:16 d'4:16 cis'4:16 d'4 d'' d' r
 \appoggiatura a'16 g'4\p( fis'8\staccato) g'\staccato \appoggiatura bes'16 a'4( g'8\staccato) a'\staccato
 \appoggiatura c''16 bes'4( a'8\staccato) bes'\staccato \appoggiatura d''16 c''4( bes'8\staccato) a'\staccato
 \appoggiatura a'16 g'4( fis'8\staccato) g'\staccato \appoggiatura bes'16 a'4( g'8\staccato) a'\staccato
 \appoggiatura c''16 bes'4( a'8\staccato) bes'\staccato \appoggiatura d''16 c''4( bes'8\staccato) a'\staccato
 g'8( g'') g''\staccato g''\staccato g''( fis'') ees''\staccato d''\staccato c''( ees'') ees''\staccato ees''\staccato
 ees''( d'') c''\staccato bes'\staccato a'( c'') c''\staccato c''\staccato bes'( d'') g''\staccato bes''\staccato
 bes''( a'') g''\staccato fis''\staccato
 \appoggiatura a''16 g''4\f( fis''8\staccato) g''\staccato \appoggiatura bes''16 a''4( g''8\staccato) a''\staccato
 \appoggiatura c'''16 bes''4( a''8\staccato) bes''\staccato d'''8( c''') bes''\staccato a''\staccato
 \appoggiatura a''16 g''4( fis''8\staccato) g''\staccato \appoggiatura bes''16 a''4( g''8\staccato) a''\staccato
 \appoggiatura c'''16 bes''4( a''8\staccato) bes''\staccato d'''8( c''') bes''\staccato a''\staccato
 g''8\staccato g''\staccato g''\staccato g''\staccato g''( fis'') ees''\staccato d''\staccato
 c''( ees'') ees''\staccato ees''\staccato ees''( d'') c''\staccato bes'\staccato a'( c''') c'''\staccato c'''\staccato
 c'''( bes'') d'''\staccato g''\staccato bes''( a'') g''\staccato fis''\staccato
 g''16( a'' bes'' a'' g'' a'' bes'' a'' g''4) r4 c''16( d'' ees'' d'' c'' d'' ees'' d'' c''4) r4
 bes'4 <bes' g''> a' <d' a' fis''> g''4:16 d''4:16 bes'4:16 g'4:16 fis'4:16 a'4:16 d''4:16 fis''4:16
 g''4:16 d''4:16 bes'4:16 g'4:16 fis'4:16 a'4:16 d''4:16 fis''4:16 g''4:16 bes'4:16 c''4:16 d''4:16
 ees''4:16 c''4:16 a'4:16 fis''4:16 }
 g''8 g''4 g'' g'' g''8 d''8 d''4 d'' d'' d''8 ees''8 ees''4 ees'' ees'' ees''8 b'8 b'4 b' b' b'8 c''8 c''4 c'' c'' c''8
 f''!8 f''4 f'' f'' f''8 ees''8 ees''4 ees''8 c'''8 c'''4 c'''8 bes''8 bes''4 bes''8 g''8 g''4 g''8
 a'8 a'4 a'8 fis''8 fis''4 fis''8 g''4 g8. g16 g4 g g16( a bes a g a bes a g a bes a g a bes a)
 g16( a bes a g a bes a g a bes a g a bes a) g16( a bes a g a bes a g a bes a g a bes a) g4 r r2 \bar "|."
}