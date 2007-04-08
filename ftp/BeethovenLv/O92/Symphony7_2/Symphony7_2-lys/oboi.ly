\version "2.6.0"

 oboi = {
 \set Staff.instrument = "Oboi"
 \set Staff.midiInstrument = "oboe"
 \clef treble
 \key a \minor
 \time 2/4
 <c'' e''>2\f\> ~ <c'' e''>2\! ~ <c'' e''>4\pp r4 R2 R2 R2 R2 R2 R2 R2
 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2
 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2
 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2
 r4 <e'' g''>4_\markup { \large \italic "cresc." } r <dis'' b''>
 r4 <d''! fis''> r <c'' a''> r <c'' e''> r <c'' e''> r <b' e''> r <c'' e''>
 << { e''4^\markup { \large \italic "ten." } e''8\staccato e''\staccato e''4\staccato( e''\staccato)
 e''4 e''8\staccato e''\staccato e''4\staccato( e''\staccato)
 e''4 e''8\staccato fis''\staccato g''4\staccato( g''4\staccato)
 g''4 g''8\staccato g''\staccato g''4 } \\
 { e''4\ff e''8 e'' e''4 e'' e''4 e''8 e'' e''4 e'' e''4 e''8 fis'' g''4 g'' g''4 g''8 g'' g''4 } >> r4
 <g' g''>4^\markup { \large \italic "ten." } <g' g''>8\staccato <a' a''>\staccato
 <b' b''>4\staccato( <b' b''>\staccato)
 <fis' fis''>4 <fis' fis''>8\staccato <gis' gis''>\staccato <a' a''>4\staccato( <a' a''>4\staccato)
 << { e''4 e''8\staccato e''\staccato e''4\staccato( e''\staccato)
 e''4 fis''8\staccato gis''\staccato a''4 } \\ { e''4 e''8 e'' e''4 e'' e''4 fis''8 gis'' a''4 } >> r4
 << { g''!4_\markup { \large \italic "dimin." } g''8\staccato a''\staccato b''4\staccato( b''\staccato)
 fis''4 fis''8\staccato gis''\staccato a''4\staccato( a''\staccato)
 e''4_\markup { \large \italic "sempre dimin." } e''8\staccato e''\staccato e''4\staccato( e''\staccato)
 e''4 fis''8\staccato gis''\staccato a''4\p r4 } \\ { R2 R2 R2 R2 R2 R2 R2 R2 } >>
 << { e''4^\markup { \large \italic "ten." } } \\ { e''4 } >>
 <e'' fis''>8\staccato <e'' gis''>\staccato <e'' a''>4 r R2
 \bar "||"

 \key a \major
 R2 R2 R2 R2 R2 R2 R2 R2 r4 <e'' g''>4\p\< ~ <e'' g''>2 ~ <e'' g''>4( <d'' fis''>8\!) r8 R2
 r4 <a'' cis'''>4\>( <gis'' b''> <fis'' a''> <e'' gis''>\!) r4 R2 R2 R2 R2 R2 R2
 << { e''2 ~ e''4( fis''8 e'') e''2 ~ e''4( \times 2/3 { gis''8[ fis'' e'']) } } \\
 { bes'2_\markup { \large \italic "cresc." }( b'!) bes'2( b'!) } >> R2 R2 R2 R2
 << { e''2 ~
 e''4( fis''8 e'') e''2 ~ e''4( \times 2/3 {gis''8[ fis'' e'']) }
 e''2_\markup { \large \italic "dimin." } ~
 \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { e''8([ f'' e''] g''[ f'' a']) }
 c''4\p( e''8 d'' c''4) r4 }
 \\ { bes'2( b'!) bes'2( b'!) R2 R2 R2 R2 } >> \bar "||"

 \key a \minor
 << { f''4. f''8
 \times 2/3 { f''8([ e'') d''\staccato] c''\staccato[ b'\staccato a'\staccato] }
 g'4( a'8) b'\staccato c''4 ~ \times 2/3 { c''8([ d'' e'']) }
 f''4._\markup { \large \italic "cresc." } f''8
 \times 2/3 { f''8\f\staccato[ e''\staccato d''\staccato]
 c''\sf\staccato[ b'\staccato a'\staccato] } g'8 r8 r4 } \\ { R2 R2 R2 R2 R2 R2 R2 } >>
 R2 R2 R2 r4 << { e''8\staccato e''\staccato } \\ { e''8\ff e'' } >>
 << { c''2\p( b') \grace { b'16[ c''] } d''4 ~ \times 2/3 { d''8([ c'' b']) }
 b'8( c'') c''4 c''4.( d''8) dis''( e'') e''\staccato e''\staccato
 \grace { d''16[ e''] } f''4 ~ \times 2/3 { f''8([ e'' d'']) } d''8( e'') e''4
 e''4.( fis''8 e''4 dis''8) a'8\rest d''!4.( e''8 d''8[ cis'' c'']) a'8\rest
 c''2( b'4 c'') \grace { b'16[ c''] } d''4 ~
 \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { d''8([ c'' b']) a'\staccato[
 a'( b'] c''\staccato)[ c''( d''] } e''4.)( fis''8 e''4 dis''8) a'8\rest
 \times 2/3 { d''!8([ b' cis''] d''[ e'' d''] } d''8[ cis'' c'']) a'8\rest
 c''2( b'4 c'') \grace { b'16[ c''] } d''4 ~ \times 2/3 { d''8([ c'' b']) } a'4 a'4\rest
 a'4 ~ \times 2/3 { a'8([ b' cis'']) } cis''8( d'') d''4
 d''4 ~ \times 2/3 { d''8([ e'' f'']) } f''8( e'') e''4
 \times 2/3 { a'8[ a' a'] a'([ b' cis'']) cis''([ d'') d''\staccato] } d''4
 \times 2/3 { d''8[ d'' d''] d''([ e'' f'']) f''([ e'') e''\staccato] } e''4\rest
 \times 2/3 { e''8([ f'') f''\staccato] } e''4\rest
 \times 2/3 { f''8([ e'') e''\staccato] } e''4\rest } \\
 { R2_\markup { \large \italic "dolce" } R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2
 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2_\markup { \large \italic "cresc." } R2
 R2 R2_\markup { \large \italic "dimin." } R2 R2 } >> R2
 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2
 << { d''4^\markup { \large \italic "ten." } d''8\staccato e''\staccato
 f''2 ~ f''2 ~ f''2 ~ f''8( e''16 dis'' e'') e''\staccato fis''\staccato gis''\staccato
 a''16 b'' c''' b'' a'' c''' b'' a'' e'' fis'' gis'' a'' b'' c'' d'' e''
 d''16 b' c'' d'' e'' d'' c'' b' c'' b' c'' d'' e'' e'' fis'' gis''
 a''16 b'' c''' b'' a'' c''' b'' a'' e'' fis'' gis'' a'' b'' c'' d'' e''
 d''16 b' c'' d'' e'' d'' c'' b' a'4 } \\
 { d''4\pp d''8 e'' f''2_\markup { \large \italic "cresc." } ~ f''2 ~ f''2 ~
 f''8 e''16 dis'' e'' e' fis' gis'
 a'16\ff b' c'' b' a' c'' b' a' e' fis' gis' a' b' c'' d'' e''
 d''16 b' c'' d'' e'' d'' c'' b' c'' b' c'' d'' e'' e' fis' gis'
 a'16 b' c'' b' a' c'' b' a' e'' fis'' gis'' a'' b'' c'' d'' e''
 d''16 b' c'' d'' e'' d'' c'' b' a'4 } >> r4
 << { e''4^\markup { \large \italic "ten." } } \\ { e''4\p } >>
 <e'' fis''>8\staccato <e'' gis''>\staccato <e'' a''>8 r r4 R2
 \bar "||"

 \key a \major
 R2 R2 R2 R2 R2 R2 R2 R2 r4 <e'' g''>4\p\< ~ <e'' g''>2 ~ <e'' g''>4( <d'' fis''>8\!) r8 R2
 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2
 <d'' b''>4\ff^\markup { \large \italic "ten." } <c''! a''>8\staccato <d'' b''>\staccato
 \bar "||"

 \key a \minor
 <e'' c'''!>8 r8 r4 R2 R2
 <d'' b''>4\ff^\markup { \large \italic "ten." } <c'' a''>8\staccato <d'' b''>\staccato
 <e'' c'''>8 r8 r4 R2

 << { gis''4\p^\markup { \large \italic "ten." } fis''8\staccato gis''\staccato
 a''4\pp a''8\staccato( a''\staccato) gis''4\staccato( gis''\staccato) } \\ { R2 R2 R2 } >>
 b'4\pp^\markup { \large \italic "ten." } b'8\staccato( b'\staccato) c''4\staccato( c''\staccato)
 R2 R2 R2 R2
 << { g''!4\pp g''8\staccato( a''\staccato) b''4\staccato( b''\staccato) } \\ { R2 R2 } >>
 d''4\pp d''8\staccato( d''\staccato) cis''4\staccato( c''\staccato) R2 R2 R2 R2
 << { e''4^\markup { \large \italic "ten." } } \\ { e''4\pp } >>
 <e'' fis''>8\staccato <e'' gis''>8\staccato <e'' a''>4 r4 R2 R2 R2
 <c'' e''>2\f\> ~ <c'' e''>2 ~ <c'' e''>8\!\pp r8 r4
 \bar "|."
}