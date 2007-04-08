\version "2.10.3"

 oboi = {
 \set Staff.instrumentName = \markup { \center-align { "Oboi." } }
 \set Staff.midiInstrument = "oboe"
 \clef treble
 \key g \major
 \time 4/4
 \partial 2 r2 R1 R1 R1 r2 << { d''4\staccato( d''\staccato) d''4.( d''8\staccato d''4\staccato) } \\
 { b'4\p( c'') b'4.( a'8 b'4) } >> <b' d''>8.( <a' c''>16) <g' b'>4( <fis' a'>8) r8 <b' dis''>4\staccato( <b' dis''>\staccato)
 << { e''4.( g''8 fis''4 e'') } \\ { b'4.~ b'8 a'4( g') } >> <fis' d''!>2 r R1 R1 R1
 r2 <fis' d''>4\p( <g' cis''> <a' c''!> <g' b'>) << { e''4. e''8 a'2 } \\ { a'4.( g'8) g'4( fis') } >>
 <g' d''>4_\markup { \italic "cresc." }( <gis' f''> <a' e''>\f) r8 <bes' g''>8
 \set doubleSlurs = ##t <b' g''>4\p( <c'' fis''!>) \set doubleSlurs = ##f <b' g''>8 r r4 <c'' a''>2\f
 <b' g''>2 <c'' a''>8 r <a' fis''> r <b' g''>8 <d' d''>8\ff[ <d' d''> <d' d''>] <c'' a''>2\sf
 <b' g''>8.[ <c'' a''>16\staccato <d'' b''>8\staccato <b' g''>\staccato] <c'' a''>8 r <a' fis''> r <b' g''>8 r r4 r2
 R1 R1 R1 R1 R1 R1 R1 R1 r2 << { cis''8.[ d''16\staccato e''8\staccato cis''\staccato] } \\
 { a'4\p a'8\staccato[ a'\staccato] } >> <a' fis''>8 r8 r4 r2
 r2 << { cis''8.[ d''16\staccato e''8\staccato cis''\staccato] } \\ { a'4 a'8\staccato[ a'\staccato] } >>
 <a' fis''>8 r8 r4 r2 r2 \set doubleSlurs = ##t <g' cis''>2( <fis' d''>8) r8 r4 <g' cis''>2( <fis' d''>8) r8 r4 r2
 << { <c''! fis''>2( <b' g''>8) } \\ { s4\< s16\! s16\> s8 s8\! } >> r8 r4 \set doubleSlurs = ##f
 R1 R1 R1 r2 << { d''4\staccato( d''\staccato) d''4.( d''8\staccato d''4\staccato d''8.( c''16) } \\
 { b'4\p( a') b'8([ c'' b' c'']) b'8( g'4 a'8) } >> <g' b'>4( <fis' a'>8)
 r8 << { f''8\rest dis''8([ e'' a'']) g''([ a'' g'' e''] d''!4 cis''4) } \\
 { b'4\staccato_\markup { \italic "cresc." }( b'4\staccato) b'4. b'8 d'4\p( g'4) } >> <fis' d''>8 r8 r4 r2 R1 R1 R1
 r2 <fis' d''>4\p( <g' cis''> <a' c''!> <g' b'>) << { e''4. e''8 a'4. d''8 } \\ { a'4.( g'8) g'4( fis'4) } >>
 <g' d''>4_\markup { \italic "cresc." }( <gis' f''>4 <a' e''>4.) <g'! e''>8
 << { b'8([ cis'' d'' c'']) } \\ { g'4.\p( fis'8) } >> <g' b'>8 r8 r4 <c'' a''>2\f
 <b' g''>2 <c'' a''>8 r <a' fis''> r <b' g''>8 <d' d''>8\ff[ <d' d''> <d' d''>] <c'' a''>2\sf
 <b' g''>8.[ <c'' a''>16\staccato <d'' b''>8\staccato <b' g''>\staccato] <c'' a''>8 r <a' fis''> r
 <b' g''>8 r r4 <c'' fis''>8\p r <a' dis''> r <g' e''>8 r8 r4 r2
 << { g''2\rest g''8\rest a''8^\p([ g'' fis''] e'') f''8\rest f''4\rest g''2\rest
 g''2\rest e''8\rest dis''8([ e'' fis''] g'') g''8\rest g''4\rest g''2\rest
 g''2\rest f''8\rest dis''8([ fis'' a''] g'') g''8\rest g''4\rest g''2\rest
 g''8\rest fis''4 fis''8 b' d''!8([ b' d'']) e'8 b'8\rest b'4\rest c''2\rest
 d''2\rest d''8\rest dis''8([ fis'' a''] g'') g''8\rest g''4\rest g''2\rest
 g''2\rest f''8\rest e''8([ f'' d''!] b') f''8\rest f''4\rest g''2\rest
 b'2\rest d''8\rest dis''!8([ fis''! a''] g'') g''8\rest g''4\rest g''2\rest } \\
 { R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 } >> R1 <c'' fis''>8\p r8 r4 r2 R1 R1 R1 R1 R1 R1 R1
 R1 R1 r2 <c'' a''>2\f <b' g''>2 <c'' a''>8 r <a' fis''> r
 <b' g''>8 r r4 <d' fis'>8.[ <e' g'>16\staccato <fis' a'>8\staccato <d' fis'>\staccato] <g' b'>8 r8 r4 r2
 R1 R1 <g' b'>4\p( <a' c''> <g' b'>8) r8 r4 <g' b'>4( <a' c''> <g' b'>8) r8 r4
 r2 <b' g''>8\ff r <d'' b''> r << { g'2^\fermata } \\ { g'2 } >> \bar "|."
}