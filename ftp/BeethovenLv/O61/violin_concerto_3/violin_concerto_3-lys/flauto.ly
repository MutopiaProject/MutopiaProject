\version "2.10.3"

 flauto = {
 \set Staff.instrumentName = "Flauto."
 \set Staff.midiInstrument = "flute"
 \clef treble
 \key d \major
 \time 6/8
 \override Score.MetronomeMark #'transparent = ##t
 \tempo 4 = 128
 \partial 8 r8^\markup { \large "RONDO." } R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2.
 R2. R2. R2.^\markup { "TUTTI." } r4 r8 r4^\fermata r8 r4 r8 r4 d'''8\ff\staccato
 a''4^\markup { "ten." } d'''8\staccato fis'''([ a''']) r8 r4 r8 r8 d'''8( e''') cis'''8[ cis''' d'''^\trill]( e'''8) r8 r8
 r4 r8 r4 d'''8\staccato a''4^\markup { "ten." } d'''8\staccato fis'''([ a''']) r8 R2. r4 r8 r4 e''8
 fis''8[( b'') g''\staccato] a''8[( d''') d'''\staccato] d'''4\staccato d'''8\staccato d'''4\staccato d'''8\staccato
 d'''4.\sf r4 r8 R2. d'''4. r4 r8 R2.
 d'''4. g'''8.^\prall[ fis'''16\staccato e'''8\staccato] d'''8.^\prall[ cis'''16\staccato b''8\staccato]
 a''8.^\prall[ g''16\staccato e''8\staccato] d''4 r8 r4 r8 r4 r8 a''8.[ b''16\staccato cis'''8\staccato]
 d'''4. r4 r8 r4 r8 a''8.[ b''16\staccato cis'''8\staccato] d'''4 r8 d'''4_\markup { \italic "dimin." } r8 d'''4 r8 d'''4 r8
 d'''4\p r8 r4 r8 R2. R2.^\markup { "SOLO." } R2. R2. R2. R2. R2.
 R2. R2. R2. R2. R2. R2. R2. R2. a''4.\f^\markup { "TUTTI." } b''4. cis'''4.( a''8) r8^\markup { "SOLO." } r8
 R2. r4 r8 r8 e'''8\f\staccato^\markup { "TUTTI." } c'''8\staccato a''4. b''4.
 c'''4.( a''8) r8^\markup { "SOLO." } r8 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2.
 r4 r8 ais''4\p r8 b''4 r8 gis''4 r8 a''!4 r8 r4 r8 R2. r4 r8 ais''4\p r8
 b''4 r8 gis''4 r8 a''!2.~ a''2. gis''2.~ gis''2.( g''!4\f) r8 r4 r8 R2. R2. g''2.\p R2. R2.

 R2. \cadenzaOn s4 s8 s4 s4 s4 s8 \cadenzaOff \bar "|" R2. R2. R2. R2. R2. R2. R2.
 R2. R2. R2. R2. R2. R2. R2. R2. R2.
 R2. R2. R2.^\markup { "TUTTI." } r4 r8 r4^\fermata r8 r4 r8 r4 d'''8\ff\staccato
 a''4^\markup { "ten." } d'''8\staccato fis'''([ a''']) r8 r4 r8 r8 d'''8( e''') cis'''8[ cis''' d'''^\trill]( e'''4) d'''8\staccato
 a''4^\markup { "ten." } d'''8\staccato f'''([ a''']) r8
 r8 bes''8 bes'' bes''4 r8 bes''4 ees'''8 g'''4 r8 r8 c'''8 c''' c'''4 c'''8\staccato
 c'''4 f'''8 a'''8 r a''8\staccato d''4^\markup { "ten." } fis''!8 a''8([ d''']) r8^\markup { "SOLO." } R2. R2. R2. R2.
 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2.
 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2.
 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2.
 R2. R2. R2. R2. R2. R2. R2. R2. R2. r4 r8 r4^\fermata r8 r4 r8 r4 d'''8\ff\staccato
 a''4^\markup { "ten." } d'''8\staccato fis'''([ a''']) r8 r4 r8 r8 d'''8( e''') cis'''8[ cis''' d'''^\trill]( e'''8) r8 r8
 r4 r8 r4 d'''8\staccato a''4^\markup { "ten." } d'''8\staccato fis'''([ a''']) r8 R2. r4 r8 r4 e''8
 fis''8[( b'') g''\staccato] a''8[( d''') d'''\staccato] d'''4\staccato d'''8\staccato d'''4\staccato d'''8\staccato
 d'''4.\sf r4 r8 R2. d'''4. r4 r8 R2.
 d'''4. g'''8.^\prall[ fis'''16\staccato e'''8\staccato] d'''8.^\prall[ cis'''16\staccato b''8\staccato]
 a''8.^\prall[ g''16\staccato e''8\staccato] d''4 r8 r4 r8 r4 r8 a''8.[ b''16\staccato cis'''8\staccato]
 d'''4. r4 r8 r4 r8 a''8.[ b''16\staccato cis'''8\staccato] d'''4 r8 d'''4_\markup { \italic "dimin." } r8 d'''4 r8 d'''4 r8
 d'''4\p r8 r4 r8 R2. R2.^\markup { "SOLO." } R2. R2. R2. R2.
 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. d'''4.\f^\markup { "TUTTI." } cis'''4.
 d'''4.\sf~ d'''8 r8^\markup { "SOLO." } r8 R2. R2. d'''4.\f^\markup { "TUTTI." } cis'''4.
 d'''4.~ d'''8 r8^\markup { "SOLO." } r8 R2. R2. R2. R2. R2. R2. R2. R2.
 R2. R2. r4 r8 dis'''4\p r8 e'''4 r8 cis'''4 r8 d'''!4 r8 r4 r8 R2. r4 r8 dis'''4\p r8 e'''4 r8 cis'''4 r8 d'''!2.~ d'''2.

 cis'''2.~ cis'''2. d'''4\f r8 r4 d''8\p ees''4 fis''!8\staccato a''8([ c''']) r8 R2. R2. R2. R2. R2. R2.
 R2. R2. R2. R2. R2. R2. R2. fis'''8\staccato_\markup { \italic "cresc." } g'''\staccato a'''\staccato
 g'''8\staccato fis'''\staccato e'''\staccato d'''8\sf e''' fis''' e''' fis''' g''' fis'''4.\sf fis'''4.\sf fis'''4.\sf fis'''4.\sf
 fis'''2.\sf^\fermata R2.^\markup { "SOLO." } R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2.
 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2.
 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2.
 R2. R2. c'''2.\p_\markup { \italic "   cresc." } b''2.~ b''2. cis'''!2.~ cis'''2.
 d'''4\ff fis'''8 fis'''4 fis'''8 fis'''4 r8 r4 r8 fis'''4 fis'''8 fis'''4 fis'''8 fis'''4 r8 r4 r8 e'''4 r8 r4 r8
 e'''4 r8 r4 r8 fis'''4 fis'''8 fis'''4 fis'''8 fis'''4 r8 r4 r8 fis'''4 fis'''8 fis'''4 fis'''8 fis'''4 r8 r4 r8 e'''4 r8 r4 r8
 e'''4 r8 r4 r8 d'''8\ff d'''4 d''' d'''8~ d'''8 d'''4 d''' d'''8 << { s16\sf s16\> s4 s4.\! } \\ { d'''2. } >> R2.
 d'''8\ff d'''4 d''' d'''8~ d'''8 d'''4 d''' d'''8 << { s16\sf s16\> s4 s4.\! } \\ { d'''2. } >> d'''4\p r8 cis'''8 r a''\ff
 d'''4.~ d'''4 d'''8 fis''4.~ fis''4 fis''8 a''4.~ a''4 a''8 d'''4._\markup { \italic "dimin." } d'''4.
 d'''2.\p~ d'''2._\markup { \italic "perdendosi" } d'''2.\pp~ d'''2.~ d'''4 r8 r4 r8 R2. r4 r8 r4 cis'''8\ff d'''4 r8 r4 \bar "|."
}