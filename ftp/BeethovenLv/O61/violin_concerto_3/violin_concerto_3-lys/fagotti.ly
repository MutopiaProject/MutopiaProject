\version "2.10.3"

 fagotti = {
 \set Staff.instrumentName = "Fagotti."
 \set Staff.midiInstrument = "bassoon"
 \clef bass
 \key d \major
 \time 6/8
 \partial 8 r8 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2.
 R2. r4 r8 r4^\fermata <fis a>8\ff <fis a>4 <fis a>8 <fis a>4 <fis a>8 <fis a>4 <fis a>8 <fis a>4 r8 R2.
 <e cis'>8[ <e cis'> <fis d'>] <cis' e'>4 <fis a>8 <fis a>4 <fis a>8 <fis a>4 <fis a>8 <fis a>4 <fis a>8 <fis a>4 r8
 R2. R2. << { d8[ d e] fis[ fis g] fis[ fis g] fis[ fis g] } \\ { d8[ d e] fis[ fis g] fis[ fis g] fis[ fis g] } >>
 <fis a>4.\sf r4 r8 R2. <fis a>4. r4 r8 R2. <fis a>4.
 \clef tenor << { g'8.^\prall[ fis'16\staccato e'8\staccato] d'8.^\prall[ cis'16\staccato b8\staccato]
 a8.^\prall[ g16\staccato e8\staccato] d4 } \\ { g'8._\prall[ fis'16\staccato e'8\staccato]
 d'8._\prall[ cis'16\staccato b8\staccato] a8._\prall[ g16\staccato e8\staccato] d4 } >> r8 r4 r8
 r4 r8 \clef bass <e g>8.[ <e g>16 <e g>8] <d fis>4. r4 r8 r4 r8 <e g>8.[ <e g>16 <e g>8]
 <d fis>4 r8 <d fis>4_\markup { \italic "dimin." } r8 <d fis>4 r8 <d fis>4 r8
 <d fis>4\p r8 r4 r8 R2. R2. R2. R2. R2. R2. R2. R2. r4 r8 r4 << { a8 } \\ { a8\p } >>
 <gis b>8\staccato[ <a cis'>\staccato <b d'>\staccato] <cis' e'>\staccato[ <a cis'>\staccato <b d'>\staccato]
 <a cis'>4 r8 r4 r8 <gis b>8\staccato[ <a cis'>\staccato <b d'>\staccato]
 <cis' e'>\staccato[ <a cis'>\staccato <b d'>\staccato] <a cis'>4 r8 r4 r8 R2. R2.
 << { a4. e4. a,4.~ a,8 } \\ { a4.\f e4. a,4.~ a,8 } >> r8 r R2. R2. << { a4. } \\ { a4.\f } >> <gis b>4. <a c'>4.~ <a c'>8 r8 r
 R2. R2. R2. R2. \clef tenor << { d'4\rest d'8\rest d'8\p([ e' f']) e'4 d'8\rest d'4\rest d'8\rest
 d'4\rest d'8\rest d'8\p( e' f']) e'4.( d'8[ e' f']) e'4.( f'4.~ f'2.) fis'!4\staccato } \\
 { R2. R2. R2. R2. R2. f,4\rest f,8\rest bes,4._\markup { \italic "cresc." }~ bes,4 } >> r8 \clef bass <fis! fis'!>4\p r8
 <b,! b!>4 r8 <e e'>4 r8 << { e'4. f'4.~ f'2. fis'!4\staccato } \\
 { a,4_\markup { \italic "cresc." } b,8\rest b,4\rest b,8\rest b,4\rest b,8\rest bes,4.~ bes,4\staccato } >> r8
 <fis! fis'!>4\p r8 <b,! b!>4 r8 <e e'>4 r8 <a e'>2.~ <a e'>2.~ <e e'>2.~ <e e'>2. <a e'>4\f r8 r4
 << { a8^\p bes4 cis'8\staccato e'8([ g']) a8\rest a4\rest a8\rest a4\rest a8^\p
 bes4 cis'8\staccato e'8([ g']) e'8 } \\ { a,8\rest R2. R2. a,4\rest a,8\rest a,4\rest bes8\p } >>
 <a e'>2._\markup { \italic "perdendosi" }~ <a e'>4. <a e'>8[ <a e'> <a e'>]

 <a e'>2.\pp~ \cadenzaOn <a e'>4.~ <a e'>4^\fermata s4 s4 r8 \cadenzaOff \bar "|"
 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2.
 r4 r8 r4^\fermata <fis a>8\ff <fis a>4 <fis a>8 <fis a>4 <fis a>8 <fis a>4 <fis a>8 <fis a>4 r8 R2.
 <e cis'>8[ <e cis'> <fis d'>] <cis' e'>4 <f a>8 <f a>4 <f a>8 <f a>4 r8
 r8 <d bes> <d bes> <d bes>4 r8 r8 <ees g> <ees g> <ees g>4 r8 r8 <e! g> <e g> <e g>4 r8
 r8 <f a> <f a> <f a>4 << { a8 } \\ { a8 } >> <fis! a>4 <fis a>8 <fis a>4 r8 R2. R2. R2. R2.
 R2. R2. R2. R2. R2. R2. R2. r4 r8 r4 \clef tenor d8_\markup { \italic "dolce" }
 << { d'8( bes g a fis! d) g4.~ g8( a bes c' d' ees' f' g' ees') d'4.( bes8) d' d' d'8( bes g a fis! d)
 g4.~ g8( a bes) a( gis a e! g f) e4 c'8\rest c'4\rest c'8\rest } \\ { R2. R2. R2. R2. R2. R2. R2. R2. } >> R2. R2. R2. R2.
 R2. R2. R2. << { c'4\rest c'8\rest c'4\rest c'8\p_\markup { \italic "    dolce" }
 d'4. f'8[( ees') d'\staccato] c'4.\<~ c'4\!\>( d'8\!) ees'4.( g'8[ f') ees'\staccato] d'4.\<~ d'4\!\> d8\!
 d'8([ bes g] a[ fis! d]) g([ a bes] c'[ d' ees']) d'([ cis'! d'] c'[ a bes]) g4 c'8\rest c'4\rest c'8\rest } \\
 { R2. R2. R2. R2. R2. R2. R2. R2. R2. } >> R2. R2. R2. R2. R2.
 \clef bass R2. R2. <a, a>2.\pp~ <a, a>2._\markup { \italic "cresc." }~ <a, a>2.
 <bes, bes>2. <b,! b!>2. <c c'>2. <cis! cis'!>4\f r8 r4 r8 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2.
 R2. R2. R2. R2. R2. R2. R2. R2.
 R2. r4 r8 r4^\fermata <fis a>8\ff <fis a>4 <fis a>8 <fis a>4 <fis a>8 <fis a>4 <fis a>8 <fis a>4 r8 R2.
 <e cis'>8[ <e cis'> <fis d'>] <cis' e'>4 <fis a>8 <fis a>4 <fis a>8 <fis a>4 <fis a>8 <fis a>4 <fis a>8 <fis a>4 r8
 R2. R2. << { d8[ d e] fis[ fis g] fis[ fis g] fis[ fis g] } \\ { d8[ d e] fis[ fis g] fis[ fis g] fis[ fis g] } >>
 <fis a>4.\sf r4 r8 R2. <fis a>4. r4 r8 R2. <fis a>4.
 \clef tenor << { g'8.^\prall[ fis'16\staccato e'8\staccato] d'8.^\prall[ cis'16\staccato b8\staccato]
 a8.^\prall[ g16\staccato e8\staccato] d4 } \\ { g'8._\prall[ fis'16\staccato e'8\staccato]
 d'8._\prall[ cis'16\staccato b8\staccato] a8._\prall[ g16\staccato e8\staccato] d4 } >> r8 r4 r8
 r4 r8 \clef bass <e g>8.[ <e g>16 <e g>8] <d fis>4. r4 r8 r4 r8 <e g>8.[ <e g>16 <e g>8]
 <d fis>4 r8 <d fis>4_\markup { \italic "dimin." } r8 <d fis>4 r8 <d fis>4 r8
 <d fis>4\p r8 r4 r8 R2. R2. R2. R2. R2. R2.
 R2. R2. r4 r8 r4 <g b>8\p\staccato <fis a>8\staccato[ <g b>\staccato <a c'>\staccato]
 <b d'>\staccato[ <g b>\staccato <a c'>\staccato] <g b>4 r8 r4 r8 R2. R2. R2. R2. R2. R2.
 << { d'4( a8) e'4( a8) } \\ { d4.\f a,4. } >>
 << { fis'4.( d'8) } \\ { d4.\sf~ d8 } >> r8 r8 R2. R2. << { d'4( a8) e'4( a8) f'4.( d'8) } \\ { d4. a,4. d4.~ d8 } >> r8 r
 R2. R2. R2. R2. << { f4\rest f8\rest g8\p([ a bes] a4) f8\rest f4\rest f8\rest
 f4\rest f8\rest g8([ a bes] a4) f8\rest g8([ a bes]) } \\ { R2. R2. R2. R2. } >>
 << { a4._\markup { \italic "cresc." } bes4.~ bes2.( b!4) b8\rest } \\ { R2. R2. g,4\rest g,8\rest } >> <b,! b>4 r8
 <e e'>4 r8 <a, a>4 r8 << { a4. bes4.~ bes2.( b!4\f) b8\rest } \\
 { d4_\markup { \italic "cresc." } a,8\rest a,4\rest a,8\rest R2. b,4\rest b,8\rest } >> <b,! b>4\p r8
 <e e'>4 r8 <a, a>4 r8 <d d'>4 r8 r4 r8 R2.

 R2. R2. R2. R2. << { f4\rest f8\rest f4\rest d8\p ees4 fis!8\staccato a8([ c']) r8
 f4\rest f8\rest f4\rest e!8 f4 a8\staccato c'8([ f']) f8\rest } \\ { R2. R2. R2. R2. } >> R2. R2.
 R2. R2. R2. R2. R2. fis8\staccato_\markup { \italic "cresc." } g\staccato a\staccato
 g8\staccato fis\staccato e\staccato d\staccato e\staccato fis\staccato e\staccato fis\staccato g\staccato
 fis8\staccato g\staccato a\staccato g\staccato fis\staccato e\staccato
 d8\sf e fis e\sf fis g fis\sf a fis d\sf fis d b,\sf d b, gis,\sf b, gis, a,2.\sf^\fermata R2. R2. R2. R2.
 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. <aes c'>2._\markup { "sempre pp" } <ges c'>2.
 <f c'>2. <e! c'>2. << { c'2.~ c'2. bes2. } \\ { ees2. d2.~ d2. } >>
 <cis! a>2. <d a>2. <gis, b!>2. <a, a>2.~ <a, a>2.\pp~ <a, a>2.~ <a, a>2. R2. R2. R2. R2.
 <d a>4\pp\staccato( <d a>8\staccato <d a>4\staccato <d a>8\staccato)
 <d a>4\staccato( <d a>8\staccato <d a>4\staccato <d a>8\staccato) <d a>4 <d a>8 <d a>4 <d a>8
 <d a>4 <d a>8 <d a>4 <d a>8 <d a>4 <d a>8 <d a>4 <d a>8
 <d a>4 <d a>8 <d a>4 <d a>8 <d a>4 <d a>8 <d a>4 <d a>8
 <d a>4 <d a>8 <d a>4 <d a>8 <a c'>2._\markup { \italic "cresc." }~ <a c'>2.
 <g b>2.~ <g b>2. <e g>2.~ <e g>2. d4\ff fis8\staccato a8[( d') d\staccato] R2. b,4 d8\staccato fis8[( b) b,] R2.
 << { g,4 } \\ { g,4 } >> r8 r4 r8 << { a,4 } \\ { a,4 } >> r8 r4 r8
 d4 fis8\staccato a[( d') d'\staccato] d'4 r8 r4 r8 b,4 d8\staccato fis[( b) b\staccato] b4 r8 r4 r8
 << { g,4 } \\ { g,4 } >> r8 r4 r8 << { a,4 } \\ { a,4 } >> r8 r4 r8 << { d8 } \\ { d8\ff } >>
 <fis, fis>4 <g, g> <gis, gis>8~ <gis, gis> <a, a>4 <bes, bes> <bes, bes>8
 << { s16\sf s16\> s4 s4.\! } \\ { <bes, bes>2. } >> R2.
 << { d8 } \\ { d8\ff } >> <fis, fis>4 <g, g> <gis, gis>8~ <gis, gis> <a, a>4 <bes, bes> <bes, bes>8
 << { s16\sf s16\> s4 s4.\! } \\ { <bes, bes>2. } >> <a, a>4\p r8 r4 r8
 d4\ff fis8\staccato a([ d']) d fis,4 a,8\staccato d([ fis]) fis, a,4 d8\staccato fis([ a]) a,
 <d fis>4._\markup { \italic "dimin." } <d fis>4. <d fis>2.\p~ <d fis>2._\markup { \italic "perdendosi" }
 <d fis>2.\pp~ <d fis>2.~ <d fis>4 r8 r4 r8 R2. r4 r8 r4 << { a,8 d4 } \\ { a,8\ff d4 } >> r8 r4 \bar "|."
}