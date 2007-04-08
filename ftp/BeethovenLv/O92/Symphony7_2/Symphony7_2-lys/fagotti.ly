\version "2.6.0"

 fagotti = {
 \set Staff.instrument = "Faggotti"
 \set Staff.midiInstrument = "bassoon"
 \clef bass
 \key a \minor
 \time 2/4
 <a c'>2\f\> ~ <a c'>2\! ~ <a c'>4\pp r R2 R2 R2 R2 R2 R2 R2
 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2
 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2
 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2
 r4 <c' e'>4_\markup { \large \italic "cresc." } r4 <b fis'>
 r4 <b d'> r <a e'> r <a e'> r <a e'> r <b d'> r <a c'>
 <e e'>4\ff^\markup { \large \italic "ten." } <e e'>8\staccato <e e'>\staccato
 <e e'>4\staccato( <e e'>4\staccato)
 <e e'>4 <e e'>8\staccato <e e'>\staccato <e e'>4\staccato( <e e'>4\staccato)
 <e e'>4 <e e'>8\staccato <fis fis'>\staccato <g g'>4\staccato( <g g'>4\staccato)
 <g g'>4 <g g'>8\staccato <g g'>\staccato <g g'>4 r

 << { g4^\markup { \large \italic "ten." } g8\staccato a\staccato b4\staccato( b\staccato)
 fis4 fis8\staccato gis\staccato a4\staccato( a\staccato) } \\ { g4 g8 a b4 b fis4 fis8 gis a4 a } >>
 <e e'>4 <e e'>8\staccato <e e'>\staccato <e e'>4\staccato( <e e'>4\staccato)
 <e e'>4 << { fis8\staccato gis\staccato a4 } \\ { fis8 gis a4 } >> r4
 << { g!4_\markup { \large \italic "dimin." } g8\staccato a\staccato b4\staccato( b\staccato)
 fis4 fis8\staccato gis\staccato a4\staccato( a\staccato) } \\ { g4 g8 a b4 b fis4 fis8 gis a4 a } >>
 <e e'>4_\markup { \large \italic "sempre dimin." } <e e'>8\staccato <e e'>\staccato
 <e e'>4\staccato( <e e'>4\staccato)
 << { e4 fis8\staccato gis\staccato a4\p a4\rest } \\ { R2 R2 } >>
 <b d'>4^\markup { \large \italic "ten." } <b d'>8\staccato <b d'>\staccato <a c'>4 r4
 << { e'4\rest e'4 ~ \key a \major e'4( cis' a cis') } \\
 { R2_\markup { \large \italic "dolce" } R2 R2 } >>

 cis'4( <d b> ~ <d b>\< <cis a> <b, gis> <cis a> <b d> <e cis'> <fis d'>\!
 <gis e'>\> <b d'> <a cis'>8 <cis' e'>\!)
 <cis' e'>2( <a cis'>4\< <cis' e'>) <a cis'>( <b d'> ~ <b d'> <a cis'>\!)
 <b d'>4\>( <a cis'> <gis b> <fis dis'> <gis e'>\! <e gis>)
 <fis a>2( <e gis> <fis a> <e gis> <fis a>) << { gis4( b) } \\ { e4( b) } >>

 << { bes2( b!) bes2( b!) bes4 e'4 ~
 \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { e'8([ d' cis'] e'[ d' fis]) } } \\
 { bes2_\markup { \large \italic "cresc." }( b!) bes2( b!)
 bes4_\markup { \large \italic "dimin." } cis d2 } >>
 <cis a>4\p( <e b> <a cis'>_\markup { \large \italic "cresc." }
 \times 2/3 { <b d'>8[ <bis dis'> <c' e'>]) }
 << { bes2( b!) bes2( b!) bes4 } \\ { bes2( b!) bes2( b!) bes4_\markup { \large \italic "dimin." } } >>
 <bes e'>4( <a f'> <f a> <e g>\p <f b> <e c'>) r4
 \bar "||"

 \key a \minor
  R2 R2 << { f'4. f'8
 \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { f'8([ e') d'\staccato] c'\staccato[ b\staccato a\staccato] }
 g4_\markup { \large \italic "cresc." }( b8 d') 
 \times 2/3 { f'8\f\staccato[ e'\staccato d'\staccato]
 c'\sf\staccato[ b\staccato a\staccato] } g8 r8 r4 } \\ { R2 R2 R2 R2 R2 } >>
 R2 R2 R2 r4 << { e'8\staccato e'\staccato } \\ { e'8\ff e' } >>

 << { c'2\p( b) \grace { b16[ c'] } d'4 ~ \times 2/3 { d'8([ c' b]) }
 b8( c') c'4 c'4.( d'8) dis'( e') e'\staccato e'\staccato
 \grace { d'16[ e'] } f'4 ~ \times 2/3 { f'8([ e' d']) } d'8( e') e'4
 e'4.( fis'8 e'4 dis'8) a8\rest d'!4.( e'8 d'8[ cis' c']) a8\rest
 c'2( b4 c') \grace { b16[ c'] } d'4 ~
 \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { d'8([ c' b]) a\staccato[
 a( b] c'\staccato)[ c'( d'] } e'4.)( fis'8 e'4 dis'8) a8\rest
 \times 2/3 { d'!8([ b cis'] d'[ e' d'] } d'8[ cis' c']) a8\rest
 c'2( b4 c') \grace { b16[ c'] } d'4 ~ \times 2/3 { d'8([ c' b]) } a4 a4\rest
 a4 ~ \times 2/3 { a8([ b cis']) } cis'8( d') d'4
 d'4 ~ \times 2/3 { d'8([ e' f']) } f'8( e') e'4
 \times 2/3 { a8[ a a] a([ b cis']) cis'([ d') d'\staccato] } d'4
 \times 2/3 { d'8[ d' d'] d'([ e' f']) f'([ e') e'\staccato] } a4\rest
 \times 2/3 { e'8([ f') f'\staccato] } a4\rest
 \times 2/3 { f'8([ e') e'\staccato] } a4\rest } \\
 { R2_\markup { \large \italic "dolce" } R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2
 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2_\markup { \large \italic "cresc." } R2
 R2 R2_\markup { \large \italic "dimin." } R2 R2 } >> R2
 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2
 d'4\pp^\markup { \large \italic "ten." } d'8\staccato e'\staccato
 f'2_\markup { \large \italic "cresc." } ~ f'2 ~ f'2 ~
 f'8( e'16 dis' e') e\staccato fis\staccato gis\staccato
 a16\ff b c' b a c' b a e fis gis a b c' d' e' d' b c' d' e' d' c' b c' b c' d' e' e fis gis
 a b c' b a c' b a e fis gis a b c' d' e' d' b c' d' e' d' c' b a4 r
 <b d'>4\p^\markup { \large \italic "ten." } <b d'>8\staccato <b d'>\staccato <a c'>8 r r4

 << { e'4\rest e'4 ~ \key a \major e'4( cis' a cis') } \\
 { R2_\markup { \large \italic "dolce" } R2 R2 } >>
 cis'4( <d b>4 ~ <d b>\< <cis a> <b, gis> <cis a> <d b>\!
 <e cis'>\> <fis d'> <gis e'> <b d'> <a cis'>8 <cis' e'>\!)
 <cis' e'>2\<( <a cis'>4 <cis' e'>)
 <cis' e'>4( <d' fis'> ~ <d' fis'> <cis' e'>\! <fis d'>\> <e cis'> <fis d'> <gis e'> <a cis'>2\!)
 <fis d'>4_\markup { \large \italic "dimin." }( <gis e'> <a cis'>2) <fis d'>4( <gis e'>)
 <a, a>4\pp^\markup { \large \italic "ten." } <a, a>8\staccato( <a, a>\staccato)
 <a, a>4\staccato( <a, a>\staccato)
 <a, a>4 <a, a>8\staccato( <a, a>\staccato) <a, a>4\staccato( <a, a>\staccato)
 <b d'>4\ff^\markup { \large \italic "ten." } <a c'!>8\staccato <b d'>\staccato
 \bar "||"

 \key a \minor
 <c'! e'>8 r r4 R2 R2
 <b d'>4\ff^\markup { \large \italic "ten." } <a c'>8\staccato <b d'>\staccato
 <c' e'>8 r r4 R2 R2 R2 R2 R2 R2
 <a c'>4\pp^\markup { \large \italic "ten." } <a c'>8\staccato( <a c'>\staccato)
 <g c'>4\staccato( <g c'>\staccato) R2 R2 R2 R2 R2 R2
 <a c'>4\pp^\markup { \large \italic "ten." } <a c'>8\staccato( <a c'>\staccato)
 <gis d'>4\staccato( <a c'>\staccato) R2 R2
 <b d'>4\pp^\markup { \large \italic "ten." } <b d'>8\staccato <b d'>\staccato <a c'>4 r4 R2 R2 R2
 <a c'>2\ff\> ~ <a c'>2 ~ <a c'>8\!\pp r8 r4
 \bar "|."

}