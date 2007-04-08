\version "2.6.0"

 flauti = {
 \set Staff.instrument = "Flauti"
 \set Staff.midiInstrument = "flute"
 \clef treble
 \key a \minor
 \time 2/4
 R2^\markup { \large \bold "Allegretto" } R2 R2 R2 R2 R2 R2 R2 R2 R2
 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2
 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2
 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2
 R2 << { f''4\rest_\markup { \large \italic "cresc." } gis''4 f''4\rest a''4 } \\ { R2 R2 } >>
 <e'' e'''>4\ff^\markup { \large \italic "ten." } <e'' e'''>8\staccato <e'' e'''>\staccato
 <e'' e'''>4\staccato( <e'' e'''>4\staccato)
 <e'' e'''>4 <e'' e'''>8\staccato <e'' e'''>\staccato <e'' e'''>4\staccato( <e'' e'''>4\staccato)
 <e'' e'''>4 <e'' e'''>8\staccato <fis'' fis'''>\staccato <g'' g'''>4\staccato( <g'' g'''>4\staccato)
 <g'' g'''>4 <g'' g'''>8\staccato <g'' g'''>\staccato <g'' g'''>4 r
 << { g''4^\markup { \large \italic "ten." } g''8\staccato a''\staccato
 b''4\staccato( b''\staccato) } \\ { g''4 g''8 a'' b''4 b'' } >>
 <fis'' fis'''>4 <fis'' fis'''>8\staccato <gis'' gis'''>\staccato
 <a'' a'''>4\staccato( <a'' a'''>4\staccato)
 <e'' e'''>4 <e'' e'''>8\staccato <e'' e'''>\staccato <e'' e'''>4\staccato( <e'' e'''>4\staccato)
 <e'' e'''>4 <fis'' fis'''>8\staccato <gis'' gis'''>\staccato <a'' a'''>4 r4 R2 R2
 <fis'' fis'''>4_\markup { \large \italic "dimin." } <fis'' fis'''>8\staccato <gis'' gis'''>\staccato
 <a'' a'''>4\staccato( <a'' a'''>4\staccato)
 <e'' e'''>4_\markup { \large \italic "sempre dimin." } <e'' e'''>8\staccato
 <e'' e'''>\staccato <e'' e'''>4\staccato( <e'' e'''>4\staccato)
 <e'' e'''>4 <fis'' fis'''>8\staccato <gis'' gis'''>\staccato <a'' a'''>4\p r4 R2 R2 R2
 \bar "||"

 \key a \major
 R2 R2 R2 R2 R2 R2 R2 R2 r4 <e''' g'''>4\p\< ~ <e''' g'''>2 ~
 <e''' g'''>4( <d''' fis'''> ~ <d''' fis'''> <cis''' e'''>\!)
 <b'' d'''>4\>( <a'' cis'''> <gis'' b''> <fis'' dis'''> <e'' e'''>\!) r4 R2 R2 R2 R2 R2 R2
 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2
 << { e'''2_\markup { \large \italic "dolce dimin." } ~
 \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { e'''8([ f''' e'''] g'''[ f''' a'']) }
 c'''4\p( e'''8 d''' c'''4) r4 } \\ { R2 R2 R2 R2 } >>
 \bar "||"

 \key a \minor
 << { f'''4. f'''8
 \times 2/3 { f'''8([ e''') d'''\staccato] c'''\staccato[ b''\staccato a''\staccato] }
 g''4( a''8) b''\staccato c'''4 ~ \times 2/3 { c'''8([ d''' e''']) }
 f'''4._\markup { \large \italic "cresc." } f'''8
 \times 2/3 { f'''8\f\staccato[ e'''\staccato d'''\staccato]
 c'''\sf\staccato[ b''\staccato a''\staccato] } g''8 f''8\rest f''4\rest } \\
 { R2 R2 R2 R2 R2 R2 R2 } >> R2 R2 R2 r4 <e'' e'''>8\ff\staccato <e'' e'''>8\staccato
 << { c'''2\p( b'') \grace { b''16[ c'''] } d'''4 ~ \times 2/3 { d'''8([ c''' b'']) }
 b''8( c''') c'''4 c'''4.( d'''8) dis'''( e''') e'''\staccato e'''\staccato
 \grace { d'''16[ e'''] } f'''4 ~ \times 2/3 { f'''8([ e''' d''']) } d'''8( e''') e'''4
 e'''4.( fis'''8 e'''4 dis'''8) a''8\rest d'''!4.( e'''8 d'''8[ cis''' c''']) a''8\rest
 c'''2( b''4 c''') \grace { b''16[ c'''] } d'''4 ~
 \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { d'''8([ c''' b'']) a''\staccato[
 a''( b''] c'''\staccato)[ c'''( d'''] }
 e'''4.)( fis'''8 e'''4 dis'''8) a''8\rest
 \times 2/3 { d'''!8([ b'' cis'''] d'''[ e''' d'''] } d'''8[ cis''' c''']) a''8\rest
 c'''2( b''4 c''') \grace { b''16[ c'''] } d'''4 ~ \times 2/3 { d'''8([ c''' b'']) }
 a''4 a''4\rest a''4 ~ \times 2/3 { a''8([ b'' cis''']) } cis'''8( d''') d'''4
 d'''4 ~ \times 2/3 { d'''8([ e''' f''']) } f'''8( e''') e'''4
 \times 2/3 { a''8[ a'' a''] a''([ b'' cis''']) cis'''([ d''') d'''\staccato] } d'''4
 \times 2/3 { d'''8[ d''' d'''] d'''([ e''' f''']) f'''([ e''') e'''\staccato] } a''4\rest
 \times 2/3 { e'''8([ f''') f'''\staccato] } a''4\rest
 \times 2/3 { f'''8([ e''') e'''\staccato] } a''4\rest } \\
 { R2_\markup { \large \italic "dolce" } R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2
 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2_\markup { \large \italic "cresc." } R2
 R2 R2_\markup { \large \italic "dimin." } R2 R2 } >> R2
 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2
 R2 << { gis''4\p^\markup { \large \italic "ten." } gis''8\staccato a''\staccato
 b''4 b''8 c''' d'''4 d'''8 e''' f'''8( e'''16 dis''' e''')
 e''\staccato fis''\staccato gis''\staccato } \\
 { R2_\markup { \large \italic "cresc." } R2 R2 R2 } >>
 a''16\ff b'' c''' b'' a'' c''' b'' a'' e'' fis'' gis'' a'' b'' c''' d''' e'''
 d'''16 b'' c''' d''' e''' d''' c''' b'' c''' b'' c''' d''' e''' e'' fis'' gis''
 a''16 b'' c''' b'' a'' c''' b'' a'' e'' fis'' gis'' a'' b'' c''' d''' e'''
 d'''16 b'' c''' d''' e''' d''' c''' b'' a''4 r R2 R2 R2
 \bar "||"

 \key a \major
 R2 R2 R2 R2 R2 R2 R2 R2
 r4 <e''' g'''>4\p\<( ~ <e''' g'''>2 ~ <e''' g'''>4 <d''' fis'''>4 ~ <d''' fis'''>
 <cis''' e'''>4\! <fis'' d'''>\> <e'' cis'''> <fis'' d'''> <gis'' e'''> <a'' cis'''>2\!)
 <fis'' d'''>4_\markup { \large \italic "dimin." }( <gis'' e'''> <a'' cis'''>2)
 <fis'' d'''>4( <gis'' e'''>)
 << { a''4^\markup { \large \italic ten. } a''8\staccato( a''\staccato)
 a''4\staccato( a''\staccato)
 a''4 a''8\staccato( a''\staccato) a''4\staccato( a''\staccato)
 } \\ { a''4\pp r4 R2 R2 R2 } >>
 <d'' b''>4\ff^\markup { \large \italic "ten." } <c''! a''>8\staccato <d'' b''>\staccato
 \bar "||"

 \key a \minor
 <e'' c'''!>8 r r4 R2 R2
 <d'' b''>4\ff^\markup { \large \italic "ten." } <c'' a''>8\staccato <d'' b''>\staccato
 <e'' c'''>8 r r4 R2
 << { r4 r8 e'''8 } \\ { b''4\p a''8\staccato b''\staccato } >>
 <c''' e'''>4\pp^\markup { \large \italic "ten." } <c''' e'''>8\staccato( <c''' e'''>8\staccato)
 <b'' e'''>4\staccato( <b'' e'''>\staccato) R2 R2 R2 R2 R2 R2
 << { e'''4\pp e'''8\staccato( e'''\staccato) dis'''4\staccato( d'''\staccato) } \\ { R2 R2 } >>
 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2
 \bar "|."
 
}