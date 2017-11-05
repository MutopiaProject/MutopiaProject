\version "2.16.2"

violinoone = {
% \set Staff.instrumentName = "Violino I."
 \set Staff.midiInstrument = "violin"
 \override MultiMeasureRest #'expand-limit = 1
 \compressFullBarRests
 \clef treble
 \key c \minor
 \time 2/4
 \repeat volta 2 {
 r8 g'\ff[ g' g'] ees'2^\fermata r8 f'[ f' f'] d'2~ d'2^\fermata R2*2 r8 ees''8\p[ ees'' ees''] c''2~ c''4 r4 R2
 r8 f''8[ f'' f''] d''2~ d''8[ g'' g'' f''] ees''2( d''8)[ g'' g'' f''] ees''2( d''8_\markup { \italic "cresc." })[ g'' g'' f'']
 ees''4\f r <a fis' c''> r << { g''2^\fermata } \\ { <g d' b'>4 s4 } >>
 r8 aes'8\ff[ aes' aes'] f'2~ f'2^\fermata
 r8 aes'8\p[ aes' aes'] f'2~ f'2~ f'2 ees'8[ aes' aes' aes'] f'2~ f'2~ f'2 ees'8[ g' c'' c'']
  c''2\cresc b'8[ b' b' d''] d''2 c''8[ c'' c'' ees''] ees''8\!\sf[( d'') d''\staccato f''\staccato]
 f''8\sf[( e'') e''\staccato g''\staccato] g''\sf[( f'') f''\staccato aes''\staccato] aes''\sf[( g'') g''\staccato bes''\staccato]
 bes''\sf[( aes'') aes''\staccato c'''\staccato] c'''\sf[( b'') b''\staccato d'''\staccato] c'''\f[ ees''' ees''' ees''']
 c'''8 g''[ g'' g''] ees'' c''[ g' g'] ees'[ c' c' c'] b f'''[ d''' d'''] b''[ g'' f'' f''] d''[ b' g' f'] d'[ b c' c']
 c'8\ff ees'''[ ees''' ees'''] c''' a''[ a'' a''] ges'' ees''[ ees'' ees''] c'' <a a'>[ <a a'> <a a'>]
 <a a'>4 r R2 <bes f' bes'>4 r
 R2*4 bes'4\p( ees''_\markup { \italic "dolce" } d'' ees'' f'' c'') c''( bes') R2*4 bes'4\p( ees'' d'' ees'' f'' c'') c''( bes') bes'( c'' des'' c'') bes'( c'' bes' aes') des''( ees'' f'' ees'')
 des''( ees'' des'' c'') ees''( f''  ges''\cresc f'' ees'' f'') ges''( f'' ees'' f'') ges''( f'' ees'' f'')
 ges''( f'' ees'' f'' ges'' f'' ges'' a''\!)
 <bes' bes''>2\ff~ <bes' bes''>8[ c'''\staccato bes''\staccato aes''!\staccato] aes''[( g'') f''\staccato ees''\staccato]
 ees''[( d'') c''\staccato d''\staccato] f''[( ees'') bes'\staccato g'\staccato] d''[( c'') aes'\staccato f'\staccato]
 c''[( bes') g'\staccato ees'\staccato] bes8 a''([ bes'' a''] bes''[ a'' bes'' a''])
 bes''\staccato[ c'''\staccato bes''\staccato aes''!\staccato] aes''[( g'') f''\staccato ees''\staccato]
 ees''[( d'') c''\staccato d''\staccato] f''[( ees''\staccato) bes'\staccato g'\staccato]
 d''[( c'') aes'\staccato f'\staccato] c''[( bes') g'\staccato ees'\staccato] bes[ bes' bes'' bes'']
 ees''2~ ees''2~ ees''2~ ees''8 f''8[ f'' f''] g''2~ g''2~ g''2~ g''8 <bes' bes''>8[ <bes' bes''> <bes' bes''>]
 <bes' bes''>4 r r8 <bes' bes''>[ <bes' bes''> <bes' bes''>] <bes' bes''>4 r
 r8 <f'' d'''>8[ <f'' d'''> <f'' d'''>] <g'' ees'''>4 r R2*2 }
\pageBreak

 R2 r8 des'8\ff[ des' des'] c'2~ c'2^\fermata
 R2*2 r8 aes''8\p[ aes'' aes''] f''2~ f''4 r4 R2 r8 bes''8[ bes'' bes''] g''2~ g''8[ c''' c''' bes'']
 aes''2( g''8)[ c''' c''' bes''] aes''2( g''8)[ c''' c''' bes'']
  aes''\<[ aes'' aes'' g''] f''[ f'' f'' ees''] d''[ d'' d'' c''\!] b'4\p r r8 ees''[ ees'' f'']
 g''2~ g''8[ ees'' ees'' f''] g''2~  g''2\<( a''4 bes'' c''' cis''')
 <d'' d'''>2\!\p~ <d'' d'''>2~ <d'' d'''>2~ <d'' d'''>2~ <d'' d'''>2~ <d'' d'''>8[ g'' g'' a''] bes''4 r r8 fis''8[ a'' bes'']
 c'''4 r4 r8 fis''8[ a'' bes''] c'''4 r4 r8 g''8[ bes'' c'''] d'''4 r
 r8 g''8_\markup { \italic "cresc." }[ bes'' c'''] d'''[ bes'' c''' d'''] <ees'' ees'''>2:8\f <ees'' ees'''>2:8
 <ees'' ees'''>4 r r8 <e'' e'''>8[ <e'' e'''> <e'' e'''>] <e'' e'''>2:8 <e'' e'''>2:8 <e'' e'''>4 r
 \set crescendoText = \markup { \italic più \dynamic f } %\set crescendoSpanner = #'dashed-line
 r8 <d'' d'''>\cresc[ <d'' d'''> <d'' d'''>] <d'' d'''>4 r r4 cis'''8 cis''' cis'''4 d'''8 d''' d'''8\! d'''8\ff[ d''' d''']
 g''2\sf a''\sf d''2\sf~ d''2~ d''2~ d''4 fis''8 fis'' a''4 d'''8 d''' b''8 g''8[ g'' g''] c''2\sf d''2\sf
 g'2\sf~ g'2~ g'2~ g'4 b'8 b' d''4 g''8 g'' e''4 r4 R2*2 <g e'>2 <aes f'> R2*2 <g e'>2 <aes f'> R2*2 ges'2 a'2 R2*2 bes'2_\markup { \italic "dimin." } R2 ces''2 R2 des''2 R2 cis'2\p R2 cis'2_\markup { \italic "sempre più"  \dynamic p } R2
 cis'2 R2 d'!2\pp R2 d'2 R2 d'2 R2 d'8\ff d''[ d'' d''] b'2 c'' a'2~ a'2 R2 d'2\pp R2 d'2 R2 d'2 R2
 d'4\f r4 r8 aes''\ff[ aes'' aes''] f''2~ f''8 aes''[ aes'' aes''] f''2~ f''8 aes''[ aes'' aes'']
 f''8 aes''[ aes'' aes''] f''[ aes'' aes'' aes''] f'' g''[ g'' g''] ees''2^\fermata r8 f''[ f'' f''] d''2~ d''2^\fermata
 R2 r8 aes'\p[ aes' aes'] g'8 ees''[ ees'' ees''] c''4 r4
 R2 r8 aes'[ aes' aes'] g' f''[ f'' f''] d''2~ d''8[ g'' g'' f''] ees''2 d''8[ g'' g'' f''] ees''2 d''8[ g'' g'' f'']
 ees''4_\markup { \italic "cresc." } r4 <aes fis' c''>4 r4

 \cadenzaOn 
<g d' b' g''>4\ff % s4 s2 s2
 r4^\fermata% s2 s4 \cadenzaOff \bar "|"
s2*4    \cadenzaOff
s2

 r8 aes'\p[ aes' aes'] f'2~~ f'2~ f'2 ees'8 aes'8_\markup { \italic "cresc." }[ aes' aes'] f' d'[ d' d']
 b8 aes[ aes aes] g b'[ b' b'] c''8\f[ g' c'' c''] c''2 b'8[ b' b' d''] d''2
 c''8[ c'' c'' ees''] ees''\sf[( d'') d''\staccato f''\staccato] f''\sf[( e'') e''\staccato g''\staccato]
 g''\sf[( f'') f''\staccato aes''\staccato] aes''\sf[( g'') g''\staccato bes''\staccato]
 bes''\sf[( aes'') aes''\staccato c'''\staccato] c'''\sf[( b'') b''\staccato d'''\staccato] c'''8\f ees'''[ ees''' ees''']
 c'''8 g''[ g'' g''] ees''[ c'' g' g'] ees'[ c' c' c'] b f'''[ d''' d'''] b''[ g'' f'' f''] d''[ b' g' f'] d'[ b c' c']
 c'8\ff ees'''[ ees''' ees'''] c''' a''[ a'' a''] fis'' ees''[ ees'' ees''] c'' a'[ a' a'] fis'4 r R2 <g g'>4 r R2*4 g'4\p( c'' b' c'' d'' a') a'( g') R2*4 g'4( c'' b' c'' d'' a') a'( g') R2*4 bes'!4( c'' des'' c'') R2*2 c''4( d''! ees'' d'') R2*2 f''4( g''  aes''!\cresc g'' f'' g'') aes''( g'' f'' g'')
 aes''4( g'' f'' g'') aes''( g'' fis'' g'') a''( g'' fis'' g'') a''( g'' fis'' g'' fis'' g'' fis'' g''\!)
 g''2\ff~ g''8[ a''\staccato g''\staccato f''\staccato] f''[( e'') d''\staccato c''\staccato] c''[( b') a'\staccato b'\staccato]
 d''[( c'') g'\staccato e'\staccato] b'[( a') f'\staccato d'\staccato] a'[( g') e'\staccato c'\staccato]
 g8\staccato fis''([ g'' fis''] g''[ fis'' g'' fis'']) g''\staccato[ a''\staccato g''\staccato f''!\staccato]
 f''[( e'') d''\staccato c''\staccato] c''[( b') a'\staccato b'\staccato] d''[( c'') g'\staccato e'\staccato]
 b'[( a') f'\staccato d'\staccato] a'[( g') e'\staccato c'\staccato] g[ g' g'' g'']
 c''2~ c''2~ c''2~ c''8 d''[ d'' d''] e''2~ e''~ e''~ e''8 g''[ g'' g''] g''4 r r8 g''[ g'' g''] g''4 r
 r8 <d'' b''>[ <d'' b''> <d'' b''>] c'''2\sf~ c'''2:8 c'''2\sf~ c'''2:8 c'''2\sf~ c'''2:8 c'''2\sf~ c'''2:8
 des'''2:8\ff des''' des''' des''' des'''4 r R2*3 r8 <ees'' ees'''>8\ff[ <ees'' ees'''> <ees'' ees'''>]
 <ees'' ees'''>2:8 <ees'' ees'''>2:8 <ees'' ees'''>2:8 <ees'' ees'''>2:8 <ees'' ees'''>4 r4 R2*4 b'8([ c'' d'' ees''] f''[ g'' aes'' g''] aes''[ g'' aes'' g'']) R2 b'8([ c'' d'' ees''] f''[ g'' aes'' g''] aes''[ g'' aes'' g''])
 aes''8[ g'' bes'' aes''] g''[ f'' aes'' g''] f''[ ees'' g'' f''] ees''[ d'' f'' ees''] d''[ c'' ees'' d''] c''[ bes' d'' c'']
 bes'[ aes' c'' bes'] aes'[ g' bes' aes'] f'[ g' ees' g'] d'[ g' ees' g'] f'[ g' ees' g'] f'[ g' g' c''] aes'[ c'' g' c'']
 aes'[ c'' b' f''] c''[ f'' b' f''] c''[ f'' d'' g''] ees''4\sf( c'') d''\staccato ees''\staccato
 f''4\sf( d'') ees''\staccato f''\staccato g''( ees'') f''\staccato g''\staccato aes''( f'') g''\staccato a''\staccato
 b''4( g'') a''\staccato b''\staccato c'''( g'') aes''!\staccato ees''\staccato f''\staccato d''\staccato
 ees''4\staccato f''\staccato g''\staccato fis''\staccato g''\staccato g'\staccato c''\staccato r R2*2 ees'4\staccato f'\staccato g'( ees') R2*2 b'4\staccato c''\staccato d''( b') R2*2 b'4\staccato c''\staccato d''( b') R2*4 aes'4\sf( g') R2 aes''4( g'') <g ees' c'' g''>4 r <g d' b' g''> r ees''4( d'' c'' bes' aes' g') R2
 aes'4( g') aes''( g'') <g ees' c'' g''>4 r <g d' b' g''> r <g ees' c''>8 g''[ g'' g'']
 g''2~ g''2~ g''2~ g''2~ g''2:8 c''8 g''[ g'' g'']
 g''2:8 g''2:8 g''2:8 ees''2\ff^\fermata r8 f''8[ f'' f''] d''2~ d''2^\fermata R2
 r8 aes'8\pp[ aes' aes'] g' ees''[ ees'' ees''] c''2~ c''4 r r8 aes'[ aes' aes'] g' ees''[ ees'' ees'']
 c''2~ c''8 <b' g''>8\ff[ <b' g''> <b' g''>] <c'' g''>4 r r8 <b' g''>[ <b' g''> <b' g''>] <c'' g''>4 r
 r8 <b' g''>[ <b' g''> <b' g''>] <c'' g''>4 <d' b' g''> <ees' c'' g''> <d' b' g''>
 <ees' c'' g''>4 <g' d'' b''> <g' ees'' c'''> <g' d'' b''> <g' ees'' c'''> r <g d' b'> r <g ees' c''> r \bar "|."
}

