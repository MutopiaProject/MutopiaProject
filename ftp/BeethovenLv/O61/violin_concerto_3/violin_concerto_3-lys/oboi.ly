\version "2.10.3"

 oboi = {
 \set Staff.instrumentName = "Oboi."
 \set Staff.midiInstrument = "oboe"
 \clef treble
 \key d \major
 \time 6/8
 \partial 8 r8 R2. R2. R2. R2. R2. R2. R2. R2. r4 r8 r4 << { a'8 } \\ { a'8\p } >>
 \once \override TextScript #'padding = #2.5
 \set doubleSlurs = ##t <cis'' e''>4\<^\markup { "TUTTI" }( <d'' fis''>8\!)
 <cis'' g''>4\>^\fermata r8\!^\markup { "SOLO" } R2. R2. R2. R2. R2. R2. R2. R2.
 r4 r8 r4 << { a'8 } \\ { a'8\p } >> <cis'' e''>4\<( <d'' fis''>8\!) <cis'' g''>4\>^\fermata d''8\!\ff
 \set doubleSlurs = ##f << { a'4^\markup { "ten." } d''8\staccato fis''8([ a'']) d''\staccato
 a'4^\markup { "ten." } d''8\staccato fis''8([ a'']) g'' e''4( fis''8) d''4( e''8)
 cis''8[ cis'' d''^\trill]( e''8) } \\ { a'4 d''8\staccato fis''8([ a'']) d''\staccato
 a'4 d''8\staccato fis''8([ a'']) g'' e''4( fis''8) d''4( e''8) cis''8[ cis'' d''_\trill]( e''8) } >> r8
 << { d''8\staccato a'4^\markup { "ten." } d''8\staccato fis''8([ a'']) d''\staccato
 a'4^\markup { "ten." } d''8\staccato fis''8([ a'']) g'' e''4( fis''8) d''4( e''8) b'8[( e'') cis''\staccato] d''[( g'') e''\staccato] } \\
 { d''8\staccato a'4 d''8\staccato fis''8([ a'']) d''\staccato a'4 d''8\staccato fis''8([ a'']) g'' e''4( fis''8) d''4( e''8)
 b'8[( e'') cis''\staccato] d''[( g'') e''\staccato] } >>
 <fis' fis''>8[( <b' b''>) <g' g''>\staccato] <a' a''>8[( <d'' d'''>) <b' b''>\staccato]
 <a' a''>8[( <d'' d'''>) <b' b''>\staccato] <a' a''>[( <d'' d'''>) <b' b''>\staccato] <a' a''>4.\sf r4 r8
 r4 r8 <a' e''>4 <a' e''>8 <a' a''>4. r4 r8 r4 r8 <a' e''>4 <a' e''>8
 <a' a''>4. << { g''8.^\prall[ fis''16\staccato e''8\staccato] d''8.^\prall[ cis''16\staccato b'8\staccato]
 a'8.^\prall[ g'16\staccato e'8\staccato] d'4 } \\ { g''8._\prall[ fis''16\staccato e''8\staccato]
 d''8._\prall[ cis''16\staccato b'8\staccato] a'8._\prall[ g'16\staccato e'8\staccato] d'4 } >> r8 r4 r8
 r4 r8 <e'' g''>8.[ <e'' g''>16 <e'' g''>8] <d'' fis''>4. r4 r8 r4 r8 <e'' g''>8.[ <e'' g''>16 <e'' g''>8]
 <d'' fis''>4 r8 <d'' fis''>4_\markup { \italic "dimin." } r8 <d'' fis''>4 r8 <d'' fis''>4 r8
 <d'' fis''>4\p r8 r4 r8 R2. R2. R2. R2. R2. R2.
 << { cis''8\p\staccato[ d''\staccato e''\staccato] d''\staccato[ cis''\staccato b'\staccato]
 a'8\staccato[ b'\staccato cis''\staccato] b'\staccato[ cis''\staccato d''\staccato]
 a'\staccato[ b'\staccato cis''\staccato] d''\staccato[ b'\staccato cis''\staccato] b'4 e''8\rest e''4\rest e'8
 a'8\staccato[ b'\staccato cis''\staccato] d''\staccato[ b'\staccato cis''\staccato] b'4 e''8\rest e''4\rest e'8
 a'8\staccato[ b'\staccato cis''\staccato] d''\staccato[ b'\staccato cis''\staccato] b'4 d''8\rest b'4 d''8\rest
 b'4 d''8\rest d''4\rest d''8\rest cis''4. } \\ { R2. R2. R2. R2. R2. R2. R2. R2. R2. cis''4.\f } >>
 <b' d''>4. <a' cis''>4.~ <a' cis''>8 r8 r R2. R2. << { a'4. } \\ { a'4.\f } >> <b' d''>4. <a' c''>4.~ <a' c''>8 r8 r
 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. r4 r8 <cis'' e''>4\p r8 <b' d''>4 r8 <b' d''>4 r8
 <a' cis''>4 r8 r4 r8 R2. r4 r8 <cis'' e''>4\p r8
 <b' d''>4 r8 <b' d''>4 r8 <a' cis''>2.~ <a' cis''>2. <b' d''>2.~ <b' d''>2. <a' cis''>4\f r8 r4
 << { a'8^\p bes'4 cis''8\staccato e''8([ g'']) d''8\rest d''4\rest d''8\rest d''4\rest a'8\p
 bes'4 cis''8\staccato e''8[( g'') g''\staccato] } \\ { c'8\rest R2. R2. c'4\rest d'8\rest d'4\rest cis''8\p } >>
 <cis'' g''>2._\markup { \italic "perdendosi" }~ <cis'' g''>4. <cis'' g''>8[ <cis'' g''> <cis'' g''>]

 <cis'' g''>2.\pp~ \cadenzaOn <cis'' g''>4.~ <cis'' g''>4^\fermata s4 s4 r8 \cadenzaOff \bar "|"
 R2. R2. R2. R2. R2. R2. R2.
 R2. r4 r8 r4 << { a'8 } \\ { a'8\p } >>
 \once \override TextScript #'padding = #2.5
 \set doubleSlurs = ##t <cis'' e''>4\<^\markup { "TUTTI" }( <d'' fis''>8\!)
 <cis'' g''>4\>^\fermata r8\!^\markup { "SOLO" } R2. R2. R2. R2. R2. R2.
 R2. R2. r4 r8 r4 << { a'8 } \\ { a'8\p } >> <cis'' e''>4\<( <d'' fis''>8\!) <cis'' g''>4\>^\fermata d''8\!\ff
 \set doubleSlurs = ##f << { a'4^\markup { "ten." } d''8\staccato fis''8([ a'']) d''\staccato
 a'4^\markup { "ten." } d''8\staccato fis''8([ a'']) g'' e''4( fis''8) d''4( e''8)
 cis''8[ cis'' d''^\trill]( e''4) d''8\staccato a'4^\markup { "ten." } d''8\staccato f''8([ a'']) } \\
 { a'4 d''8\staccato fis''8([ a'']) d''\staccato a'4 d''8\staccato fis''8([ a'']) g''
 e''4( fis''8) d''4( e''8) cis''8[ cis'' d'']( e''4) d''8\staccato a'4 d''8\staccato f''8([ a'']) } >> r8
 r8 <bes' f''> <bes' f''> <bes' f''>4 r8 r8 <bes' g''> <bes' g''> <bes' g''>4 r8
 r8 <c'' g''> <c'' g''> <c'' g''>4 r8 r8 <c'' a''> <c'' a''> <c'' a''>4
 << { a''8\staccato d''4^\markup { "ten." } fis''!8\staccato a''8([ d''']) } \\
 { a''8\staccato d''4 fis''8\staccato a''8([ d''']) } >> r8 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2.
 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2.
 R2. R2. R2. R2. R2. R2. R2. R2. r4 r8 <e'' g''>4.\p <d'' f''>4.( <f'' a''>8[ <e'' g''>) <d'' f''>\staccato]
 <cis'' e''>4.( <a' cis''>8 <b'! d''> <cis'' e''>) <d'' f''>8( <cis'' e''> <d'' f''> <f'' a''> <e'' g''> <d'' f''>)
 <cis'' e''>4.\p( <d'' f''>4. <cis'' e''>4. <d'' f''>4.)
 << { e''2. a''2.~ a''2. g''2.~ g''2.~ g''4 } \\
 { cis''2._\markup { \italic "cresc." }~ cis''2. d''2.~ d''2. e''2.~ e''4\f } >> r8 r4 r8 R2. R2. R2. R2. R2. R2. R2. R2. R2.
 r4 r8 r4 << { a'8 } \\ { a'8\p } >> \once \override TextScript #'padding = #2.5
 \set doubleSlurs = ##t <cis'' e''>4\<^\markup { "TUTTI" }( <d'' fis''>8\!)
 <cis'' g''>4\>^\fermata r8\!^\markup { "SOLO" } R2. R2. R2. R2. R2. R2. R2. R2.
 r4 r8 r4 << { a'8 } \\ { a'8\p } >> <cis'' e''>4\<( <d'' fis''>8\!) <cis'' g''>4\>^\fermata d''8\!\ff
 \set doubleSlurs = ##f << { a'4^\markup { "ten." } d''8\staccato fis''8([ a'']) d''\staccato
 a'4^\markup { "ten." } d''8\staccato fis''8([ a'']) g'' e''4( fis''8) d''4( e''8)
 cis''8[ cis'' d''^\trill]( e''8) } \\ { a'4 d''8\staccato fis''8([ a'']) d''\staccato
 a'4 d''8\staccato fis''8([ a'']) g'' e''4( fis''8) d''4( e''8) cis''8[ cis'' d''_\trill]( e''8) } >> r8
 << { d''8\staccato a'4^\markup { "ten." } d''8\staccato fis''8([ a'']) d''\staccato
 a'4^\markup { "ten." } d''8\staccato fis''8([ a'']) g'' e''4( fis''8) d''4( e''8) b'8[( e'') cis''\staccato] d''[( g'') e''\staccato] } \\
 { d''8\staccato a'4 d''8\staccato fis''8([ a'']) d''\staccato a'4 d''8\staccato fis''8([ a'']) g'' e''4( fis''8) d''4( e''8)
 b'8[( e'') cis''\staccato] d''[( g'') e''\staccato] } >>
 <fis' fis''>8[( <b' b''>) <g' g''>\staccato] <a' a''>8[( <d'' d'''>) <b' b''>\staccato]
 <a' a''>8[( <d'' d'''>) <b' b''>\staccato] <a' a''>[( <d'' d'''>) <b' b''>\staccato] <a' a''>4.\sf r4 r8
 r4 r8 <a' e''>4 <a' e''>8 <a' a''>4. r4 r8 r4 r8 <a' e''>4 <a' e''>8
 <a' a''>4. << { g''8.^\prall[ fis''16\staccato e''8\staccato] d''8.^\prall[ cis''16\staccato b'8\staccato]
 a'8.^\prall[ g'16\staccato e'8\staccato] d'4 } \\ { g''8._\prall[ fis''16\staccato e''8\staccato]
 d''8._\prall[ cis''16\staccato b'8\staccato] a'8._\prall[ g'16\staccato e'8\staccato] d'4 } >> r8 r4 r8
 r4 r8 <e'' g''>8.[ <e'' g''>16 <e'' g''>8] <d'' fis''>4. r4 r8 r4 r8 <e'' g''>8.[ <e'' g''>16 <e'' g''>8]
 <d'' fis''>4 r8 <d'' fis''>4_\markup { \italic "dimin." } r8 <d'' fis''>4 r8 <d'' fis''>4 r8
 <d'' fis''>4\p r8 r4 r8 R2. R2. R2. R2. R2. R2.
 << { b'8\p\staccato[ c''\staccato d''\staccato] c''\staccato[ b'\staccato a'\staccato]
 g'\staccato[ a'\staccato b'\staccato] a'\staccato[ b'\staccato c''\staccato] g'\staccato[ a'\staccato b'\staccato]
 c''\staccato[ a'\staccato b'\staccato] a'4 d''8\rest d''4\rest d''8\rest
 g'8\staccato[ a'\staccato b'\staccato] b'\staccato[ g''\staccato e''\staccato] cis''4 d''8\rest d''4\rest cis''8
 d''8\staccato[ e''\staccato fis''\staccato] g''\staccato[ e''\staccato fis''\staccato] e''4 d''8\rest d''4\rest cis''8
 d''8[ e'' fis''] g''[ e'' fis''] e''4 d''8\rest e''4 d''8\rest e''4 d''8\rest d''4\rest d''8\rest } \\
 { R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. } >> <fis' d''>4.\f <cis'' e''>4.
 << { fis''4.( d''8) } \\ { d''4.\sf~ d''8 } >> r8 r8 R2. R2. << { d''4. } \\ { d''4.\f } >> <cis'' e''>4.
 << { f''4.( d''8) } \\ { d''4.~ d''8 } >> r8 r8 R2. R2. R2. R2. R2. R2. R2. R2.
 R2. R2. r4 r8 <dis'' fis''!>4\p r8 <e'' g''>4 r8 <cis'' e''>4 r8 <d''! fis''>4 r8 r4 r8
 R2. << { d''4\rest d''8\rest dis''4\p d''8\rest e''4 d''8\rest cis''4 d''8\rest } \\ { R2. R2. } >> <d''! fis''>2.\p~ <d'' fis''>2.

 <e'' g''>2.~ <e'' g''>2. <d'' fis''>4\f r8 r4 r8 R2. R2.
 << { d''4\rest d''8\rest d''4\rest c''8\p c''4 e''8\staccato a''8([ c''']) d''8\rest } \\ { R2. R2. } >> R2.
 r4 r8 r << { d''8[ d''] d''2. e''!4. f''4. } \\ { c''8\p[ c''] c''4._\markup { \italic "dimin." } bes'4.~ bes'4. d''4. } >>
 <d'' fis''!>8\pp\staccato <e'' g''>\staccato <fis'' a''>\staccato <e'' g''>\staccato <d'' fis''>\staccato <a' e''>\staccato
 <fis' d''>\staccato <a' e''>\staccato <d'' fis''>\staccato <a' e''>\staccato <d'' fis''>\staccato <e'' g''>\staccato
 <d'' fis''>8\staccato_\markup { \italic "cresc." } <e'' g''>\staccato <fis'' a''>\staccato
 <e'' g''>\staccato <d'' fis''>\staccato <a' e''>\staccato
 <fis' d''>\staccato <a' e''>\staccato <d'' fis''>\staccato <a' e''>\staccato <d'' fis''>\staccato <e'' g''>\staccato
 << { fis''8^\markup { "TUTTI." } a'' a'' a'' a'' a'' a'' a'' a'' a'' a'' a''
 fis''\staccato g''\staccato a''\staccato g''\staccato fis''\staccato e''\staccato d'' e'' fis'' e'' fis'' g'' } \\
 { d''8 a'' a'' a'' a'' a'' a'' a'' a'' a'' a'' a'' fis''\staccato g''\staccato a''\staccato
 g''\staccato fis''\staccato e''\staccato d''\sf e'' fis'' e''\sf fis'' g'' } >>
 <d'' fis''>4.\sf <fis'' d'''>4.\sf <fis'' d'''>4.\sf <fis'' d'''>4.\sf <fis'' d'''>2.\sf^\fermata R2. R2. R2. R2.
 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2.
 << { ees''2.~ ees''2. } \\ { c''2._\markup { "sempre pp" } a'2. } >> <a' ees''>2. <a' e''!>2.
 <a' fis''!>2.~ <a' fis''>2. << { g''2.~ g''2. } \\ { g'2. e''2. } >> <d'' f''>2.~ <d'' f''>2. <d'' fis''!>2.~ <d'' fis''>2.\pp
 <cis'' g''>2.~ <cis'' g''>2. R2. R2. R2.
 << { d''4\rest d''8\rest d''4\rest d''8\pp\staccato a'4 d''8\staccato fis''8([ a'']) d''\staccato
 a'4 d''8\staccato fis''8([ a'']) d''8\rest } \\ { R2. R2. R2. } >> R2.
 << { d''4\rest d''8\rest d''4\rest d''8\p\staccato a'4 d''8\staccato fis''8([ a'']) d''\staccato
 a'4 d''8\staccato fis''8([ a'']) d''8 cis''2. g''2. } \\ { R2. R2. R2. cis''2.\p~ cis''2. } >>
 <c'' fis''>2._\markup { \italic "cresc." }~ <c'' fis''>2. <b' g''>2.~ <b' g''>2. <cis''! g''>2.~ <cis'' g''>2.
 <d'' fis''>4\ff <d'' fis''>8 <d'' fis''>4 <d'' fis''>8 <d'' fis''>4 r8 r4 r8
 <d'' fis''>4 <d'' fis''>8 <d'' fis''>4 <d'' fis''>8 <d'' fis''>4 r8 r4 r8 <d'' e''>4 r8 r4 r8
 <e'' cis'''>4 r8 r4 r8 <fis'' d'''>4 <fis'' d'''>8 <fis'' d'''>4 <fis'' d'''>8 <fis'' d'''>4 r8 r4 r8
 <fis'' d'''>4  <fis'' d'''>8 <fis'' d'''>4 <fis'' d'''>8 <fis'' d'''>4 r8 r4 r8 <e'' cis'''>4 r8 r4 r8
 <e'' cis'''>4 r8 r4 r8 << { d''8 } \\ { d''8\ff } >> <fis'' d'''>4 <g'' d'''> <gis'' d'''>8~ <gis'' d'''> <a'' d'''>4 <bes'' d'''>
 <bes'' d'''>8 << { s16\sf s16\> s4 s4.\! } \\ { <bes'' d'''>2. } >> R2.
 << { d''8 } \\ { d''8\ff } >> <fis'' d'''>4 <g'' d'''> <gis'' d'''>8~ <gis'' d'''> <a'' d'''>4 <bes'' d'''>
 <bes'' d'''>8 << { s16\sf s16\> s4 s4.\! } \\ { <bes'' d'''>2. } >> <d'' fis''>4\p r8 <e'' g''>8 r8
 << { a'8 d''4.~ d''4 d''8 fis''4.~ fis''4 fis''8 a''4.~ a''4 a''8 } \\ { a'8\ff d''4.~ d''4 d''8 fis''4.~ fis''4 fis''8 a''4.~ a''4 a''8 } >>
 <d'' fis''>4._\markup { \italic "dimin." } <d'' fis''>4. <d'' fis''>2.\p~ <d'' fis''>2._\markup { \italic "perdendosi" }
 <d'' fis''>2.~ <d'' fis''>2.~ <d'' fis''>4 r8 r4 r8 R2. r4 r8 r4 <e'' g''>8\ff <d'' fis''>4 r8 r4 \bar "|."
}