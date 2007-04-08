\version "2.10.3"

 flauto = {
 \set Staff.instrumentName = \markup { \center-align { "Flauto." } }
 \set Staff.midiInstrument = "flute"
 \clef treble
 \key f \major
 \time 4/4
 \once \override Score.MetronomeMark #'transparent = ##t
 \tempo 4 = 48
 R1^\markup { \bold "Adagio cantabile." } R1 R1 R1 R1 R1 R1 R1 f''2 a''8.([ g''16 bes''8. g''16])
 f''4~ f''16( e'' g'' e'') c''4 r8 c''8 f''4 \appoggiatura a''16 g''16( fis'' g'' gis'') a''4 \appoggiatura c'''16 bes''16( a'' bes'' d''')
 a''4~ a''16( bes'' b'' c''') g''!4 r8 c''8 bes''!4.( g''16^\trill fis''32 g'' e''8\staccato) r8 r4
 bes''4.( g''16^\trill fis''32 g'' e''8\staccato) c'''8([ b'' c''']) d'''4~ d'''16 d'''\staccato e'''\staccato f'''\staccato
 f''4( a''8. g''16) f''4 r r d'''8.. d'''32 g''4 bes''8.. bes''32 e'''4 f'''
 g''4~ g''16( a'' bes'' d''') d'''( c''' bes'' a'') a''( g'' bes'' e'') f''4 f''8.. f''32 f''4 r
 R1 R1 R1 r2 r8 g''8([ e'' d''] cis''8) r8 r4 r2 R1 R1 r8 f''8( a'' g'' f'' e'' d'' c'' b') r8 r4 r2 R1
 R1 R1 R1 r4 r8 r16. g''32 a''8..[ f''32 c'''8.. a''32] g''8 r r4 r2 r4 r8 r16. g''32 aes''8..[ f''32 c'''8.. aes''32] g''8 r r4 r2
 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 f''2 a''8.([ g''16 bes''8. g''16])
 f''4~ f''16( e'' g'' e'') c''4 r8 c''8 f''4 \appoggiatura a''16 g''16( fis'' g'' gis'') a''4 \appoggiatura c'''16 bes''16( a'' bes'' d''')
 a''4~ a''16( bes'' b'' c''') g''!4 r8 c''8 bes''!4.( g''16^\trill fis''32 g'' e''8\staccato) r8 r4
 bes''4.( g''16^\trill fis''32 g'' e''8\staccato) c'''8([ b'' c'''])
 d'''4~ d'''16 d'''\staccato e'''\staccato f'''\staccato f''4( a''8. g''16) f''4 r r d'''8.. d'''32 g''4 bes''8.. bes''32 e'''4 f'''
 g''4~ g''16( aes'' bes'' des''') des'''( c''' bes'' aes'') aes''( g'' bes'' e'') f''4 r r2 R1 R1 R1 R1
 R1 R1 R1 a''4( bes''8) r8 r2 b''4( c'''8) r r4 e'''4 f'''2.~ f'''8.( b''16)
 c'''16\staccato g'\staccato c''\staccato e''\staccato g''\staccato e''\staccato g''\staccato e''\staccato c''8 r r4
 g''16\staccato c''\staccato e''\staccato g''\staccato c'''\staccato g''\staccato c'''\staccato g''\staccato e''8 r r4
 c'''16 e'' g'' c''' e''' c''' e''' c''' e''' g'' c''' e''' g''' e''' g''' e''' c'''8 r r4 r2 R1 R1 R1 R1 R1 R1
 R1 R1 R1 R1 R1 R1 R1 r2 r4 d'''8.. d'''32 g''4 bes''8.. bes''32 e'''4 f'''
 g''4~ g''16( a'' bes'' d''') d'''( c''' bes'' a'') a''( g'' bes'' e'') f''4 r r2 R1 R1 r4 f'' r f'' r f'' r f'' r f'' r2
 R1 f''2\f a''4.( bes''16 c''') bes''4 r r2 f''4.\f f''8( a''[ c''' ees''' a'']) bes''4 r r2
 f''8\pp r r4 f''8 r r4 a''8 r r4 r2 c'''4.( a''8 f'') r8 r4 f''8 r f'' r f'' r r4^\fermata \bar "||"
}