\version "2.16.2"

violinotwo = {
% \set Staff.instrumentName = "Violino II."
 \set Staff.midiInstrument = "violin"
 \override MultiMeasureRest #'expand-limit = 1
 \compressFullBarRests
 \clef treble
 \key c \minor
 \time 2/4
  \repeat volta 2 {
 r8 g'\ff[ g' g'] ees'2^\fermata r8 f'[ f' f'] d'2~ d'2^\fermata r8 g'8\p[ g' g'] ees'2~ ees'2~ ees'2~ ees'8[ g' g' g']
 d'2~ d'2 g'2~ g'2~ g'8[ ees' ees' f'] g'2~ g'8[ ees' ees' f'] g'8_\markup { \italic "cresc." }[ d'' d'' g']
 <c' g' ees''>4\f r <a fis' c''> r <g d' b'>4 r4^\fermata
 r8 aes'8\ff[ aes' aes'] f'2~ f'2^\fermata R2 r8 d'8\p[ d' d'] b2~ b2 c'4 r r8 d'8[ d' d'] b2~ b2 c'8[ g' g' ees']
  f'2\cresc~ f'8[ aes' aes' f'] g'2~ g'8[ g' g' ees'] aes'8\!\sf[ aes' aes' f']
 bes'8\sf[ bes' bes' g'] c''\sf[ c' c' aes] e'\sf[ e' e' bes] f'\sf[ f' f' c'] aes'\sf[ aes' aes' f']
 g'8\f <ees' c''>[ <ees' c''> <ees' c''>] <ees' c''>2:8 <ees' c''>2:8 <ees' c''>2:8
 <d' b'>8 f''[ d'' d''] b'[ g' f' f'] d'[ b g f'] d'[ b c' c'] c''8\ff ees''[ ees'' ees''] c'' a'[ a' a'] ges' ees'[ ees' ees']
 c'8 <a a'>[ <a a'> <a a'>] <a a'>4 r R2 <bes f' bes'>4 r
 R2*4 g'2\p( aes') aes'( g') g'( aes') aes'( g') g'( aes') aes'( g') g'~ g' g'( f') aes'( bes') bes'( aes')
 ees'4( f'  ges'\cresc f' ees' f') ges'( f' ees' f') ges'( f' ees' f') ges'( f' ees' f' ges' f' ges' a'\!)
 <bes' bes''>2\ff~ <bes' bes''>8[ c'''\staccato bes''\staccato aes''!\staccato] aes''[( g'') f''\staccato ees''\staccato]
 ees''[( d'') c''\staccato d''\staccato] f''[( ees'') bes'\staccato g'\staccato] d''[( c'') aes'\staccato f'\staccato]
 c''[( bes') g'\staccato ees'\staccato] bes8 a'([ bes' a'] bes'[ a' bes' a'])
 bes'\staccato[ c'''\staccato bes''\staccato aes''!\staccato] aes''[( g'') f''\staccato ees''\staccato]
 ees''[( d'') c''\staccato d''\staccato] f''[( ees''\staccato) bes'\staccato g'\staccato]
 d''[( c'') aes'\staccato f'\staccato] c''[( bes') g'\staccato ees'\staccato] bes[ bes' bes'' bes'']
 ees'2~ ees'2~ ees'2~ ees'8 d'8[ d' d'] ees'2~ ees'2~ ees'2~ ees'8 <f' d''>8[ <f' d''> <f' d''>]
 <g' ees''>4 r r8 <f' d''>[ <f' d''> <f' d''>] <g' ees''>4 r
 r8 <bes' f''>8[ <bes' f''> <bes' f''>] <ees' bes' g''>4 r R2*2 }

 R2 r8 des'8\ff[ des' des'] c'2~ c'2^\fermata
 r8 c''8\p[ c'' c''] aes'2~ aes'2~ aes'2~ aes'8 c''[ c'' c''] g'2~ g'2~ g'2~ g'2
 aes'8[ aes' aes' bes'] c''2~ c''8[ aes' aes' bes'] c''2~ c''4 r4 R2*3 r8 ees'8\p[ ees' f']
 g'2~ g'8[ ees' ees' f'] g'2~  g'2\<( a'4 bes' c'' cis'') d''2\!\p~ d''8[ g' g' a'] fis'4 r
 r8 g''8[ g'' a''] fis''4 d''4~ d''8[ g' g' a'] bes'4 r r8 fis'[ a' bes'] c''4 r r8 fis'8[ a' bes'] c''4 r
 r8 g'8[ bes' c''] d''4 r r8 g'8_\markup { \italic "cresc." }[ bes' c''] d''[ bes' c'' d'']
 a'8\f[ <a' fis''> <a' fis''> <a' fis''>] <a' fis''>2:8 <a' fis''>4 r4 r8 <g' bes'>8[ <g' bes'> <g' bes'>]
 <g' bes'>8 <bes' g''>[ <bes' g''> <bes' g''>] <bes' g''>2:8 <bes' g''>4 r4
 \set crescendoText = \markup { \italic "piu f" } %\set crescendoSpanner = #'dashed-line
 r8 <bes' g''>\cresc[ <bes' g''> <bes' g''>] <bes' g''>4 r r4 cis''8 cis'' cis''4 d''8 d'' d''8\! d''8\ff[ d'' d'']
 g'2\sf a'\sf d'2\sf~ d'2~ d'2~ d'4 fis'8 fis' a'4 d''8 d'' b'8 g'8[ g' g'] c'2\sf d'2\sf
 g2\sf~ g2~ g2~ g4 b8 b d'4 g'8 g' e'4 r4 R2*2 bes2 c' R2*2 bes2 c' R2*2 des'2 a2 R2*2 f'2_\markup { \italic "dimin." } R2 ces'2 R2 aes!2 R2 a2\p R2 a2_\markup { \italic "sempre più"  \dynamic p } R2
 a2 R2 a2\pp R2 a2 R2 a2 R2 a8\ff d'[ d' d'] b2 c'2 a2~ a2 R2 aes!2\pp R2 aes2 R2 aes2 R2
 aes4\f r4 r8 aes'8\ff[ aes' aes'] f'2~ f'8 aes'[ aes' aes'] f'2~ f'8 aes'[ aes' aes'] f' aes'[ aes' aes']
 f'8[ aes' aes' aes'] f' g'[ g' g'] ees'2^\fermata r8 f'8[ f' f'] d'2~ d'2^\fermata
 r8 g'8\p[ g' g'] ees'2_\markup { \italic "pizz." }~ ees'2~ ees'4 r4
 r8 g'8[ g' g'] d'2~ d'2~ d'4 r4 R2 r8 ees'8[ ees' f'] g'2~ g'8[ ees' ees' f'] g'[ b c' d']
 ees'4_\markup { \italic "cresc." } r4 <aes fis' c''>4 r4

 \cadenzaOn 
<g d' b' g''>4\ff %s4 s2 s2
 r4^\fermata %s2 s4 \cadenzaOff \bar "|"
s2*4    \cadenzaOff
s2

 R2 r8 d'8\p[ d' d'] b2~ b2 c'8 aes'_\markup { \italic "cresc." }[ aes' aes'] f' d'[ d' d'] b aes[ aes aes]
 g8 d'[ d' d'] ees'\f[ ees' g' g'] f'2~ f'8[ aes' aes' f'] g'2~ g'8[ g' g' ees'] aes'\sf[ aes' aes' f'] bes'\sf[ bes' bes' g']
 c''\sf[ c' c' aes] e'\sf[ e' e' bes] f'\sf[ f' f' c'] aes'\sf[ aes' aes' f'] g'8\f <ees' c''>[ <ees' c''> <ees' c''>]
 <ees' c''>2:8 <ees' c''>2:8 <ees' c''>2:8 <d' b'>8 f''[ d'' d''] b'[ g' f' f'] d'[ b g f'] d'[ b c' c']
 c''8\ff ees'''[ ees''' ees'''] c''' a''[ a'' a''] fis'' ees''[ ees'' ees''] c'' a'[ a' a'] a4 r R2 <g g'>4 r R2*4 e'2\p( f'2) f'2( e'2) R2*4 e'2( f') f'( e') R2*4 
%\pageBreak
bes'2( g') g'( f') a'~ a' a'( g')
 f'4( g'  aes'!\cresc g' f' g') aes'( g' f' g') aes'4( g' f' g')
 aes'4( g' fis' g') a'( g' fis' g') a'( g' fis' g' fis' g' fis' g'\!)
 g''2\ff~ g''8[ a''\staccato g''\staccato f''\staccato] f''[( e'') d''\staccato c''\staccato] c''[( b') a'\staccato b'\staccato]
 d''[( c'') g'\staccato e'\staccato] b'[( a') f'\staccato d'\staccato] g[ g c' c']
 b8\staccato fis'([ g' fis'] g'[ fis' g' fis']) g'\staccato a''\staccato[ g''\staccato f''!\staccato]
 f''[( e'') d''\staccato c''\staccato] c''[( b') a'\staccato b'\staccato] d''[( c'') g'\staccato e'\staccato]
 b'[( a') f'\staccato d'\staccato] a'[( g') e'\staccato c'\staccato] g[ g' g'' g'']
 e'2~ e'~ e'~ e'8 b[ b b] c'2~ c'~ c'~ c'8 <d' b'>[ <d' b'> <d' b'>] <e' c''>4 r r8 <d' b'>[ <d' b'> <d' b'>] <e' c''>4 r
 r8 <b' g''>[ <b' g''> <b' g''>] e''2\sf~ e''2:8 <c'' f''>2\sf~ <c'' f''>2:8 <c'' g''>2\sf~ <c'' g''>2:8
 <c'' aes''!>2\sf~ <c'' aes''>2:8 des''2\ff des'' des'' des'' des''4 r4 R2*3 r8 <ees'' c'''>8\ff[ <ees'' c'''> <ees'' c'''>] <ees'' c'''>2:8 <ees'' c'''>2:8 <ees'' c'''>2:8 <ees'' c'''>2:8
 <ees'' c'''>4 r4 R2*4 b'8([ c'' d'' ees''] f''[ g'' aes'' g''] aes''[ g'' aes'' g'']) R2
 b'8([ c'' d'' ees''] f''[ g'' aes'' g''] aes''[ g'' aes'' g'']) aes''8[ g'' bes'' aes''] g''[ f'' aes'' g''] f''[ ees'' g'' f'']
 ees''[ d'' f'' ees''] d''[ c'' ees'' d''] c''[ bes' d'' c''] bes'[ aes' c'' bes'] aes'[ g' bes' aes']
 f'8[ g' ees' g'] d'[ g' ees' g'] f'[ g' ees' g'] f'[ g' g' c''] aes'[ c'' g' c'']
 aes'[ c'' b' f''] c''[ f'' b' f''] c''[ f'' d'' g''] ees''4\sf( c'') d''\staccato ees''\staccato
 f''4\sf( d'') ees''\staccato f''\staccato g''( ees'') f''\staccato g''\staccato aes''( f'') g''\staccato a''\staccato
 b''4( g'') a''\staccato b''\staccato c'''( g'') aes''!\staccato ees''\staccato f''\staccato d''\staccato
 ees''4\staccato f''\staccato g''\staccato fis''\staccato g''\staccato g'\staccato c''\staccato r R2*2 ees'4\staccato f'\staccato g'( ees') R2*2 b4\staccato c'\staccato d'( b) R2*2 b4\staccato c'\staccato d'( b) R2*4 f'4\sf( ees') R2 f'4( ees') <g ees' c'' g''>4 r <g d' b' g''> r ees'4( bes' c' g' aes ees') R2
 f'4( ees') f''( ees'') <g ees' c'' g''>4 r <g d' b' g''> r <g ees' c''>8 g'[ g' g'] g'2~ g'2~ g'2~ g'2~ g'2:8 c'8 g'[ g' g']
 g'2:8 g'2:8 g'2:8 ees'2\ff^\fermata r8 f'8[ f' f'] d'2~ d'2^\fermata r8 g'\pp[ g' g']
 ees'2~ ees'2~ ees'2~ ees'8 g'[ g' g'] ees'2~ ees'2~ ees'2~ ees'8 <d' b'>\ff[ <d' b'> <d' b'>]
 <ees' c''>4 r r8 <d' b'>[ <d' b'> <d' b'>] <ees' c''>4 r r8 <d' b'>[ <d' b'> <d' b'>]
 <ees' c''>4 <g d' b'> <g ees' c''> <g d' b'> <g ees' c''> <d' b' g''> <ees' c'' g''> <d' b' g''>
 <ees' c'' g''>4 r <g d' b'> r <g ees' c''> r \bar "|."
}

