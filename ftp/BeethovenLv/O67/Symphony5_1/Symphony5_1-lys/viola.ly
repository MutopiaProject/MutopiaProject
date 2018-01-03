\version "2.16.2"


pizz = \markup{\italic "pizz."} 
arco = \markup{\italic "arco"} 
crescendo = \markup{\italic "cresc."} 



viola = {
 %\set Staff.instrumentName = "Viola."
 \set Staff.midiInstrument = "viola"
 \override MultiMeasureRest #'expand-limit = 1
 \compressFullBarRests
 \clef alto
 \key c \minor
 \time 2/4
 \repeat volta 2 {
 r8 g8\ff[ g g] ees2^\fermata r8 f[ f f] d2~ d2^\fermata R2 r8 aes'8\p[ aes' aes'] g'2~ g'2~ g'4 r
 r8 aes'[ aes' aes'] g'2 d'2~ d'2 ees'8[ ees' ees' f'] g'2~ g'8[ ees' ees' f']
 g'4._\markup { \italic "cresc." } d'8 ees'4\f r aes r g r4^\fermata
 r8 aes8\ff[ aes aes] f2~ f2^\fermata R2 R2 r8 aes8\p[ aes aes] g2~ g4 r R2 r8 aes8\p[ aes aes] g2~ g8[ ees' ees' c']
  d'2\cresc~ d'8[ f' f' d'] ees'2~ ees'8[ ees' ees' c'] f'8\!\sf[ f' f' b]
 g'8\sf[ g' g' bes!] aes'\sf aes[ aes f] bes\sf[ bes bes g] c'\sf[ c' c' aes] f'\sf[ f' f' d']
 ees'8\f <c ees>[ <c ees> <c ees>] <c ees>2:8 <c ees>2:8 <c ees>2:8 <d f>2:8 <d f>2:8 <d f>2:8
 <d f>8[ <d f> <c ees> <c ees>] <c ees>8\ff <ees ges>[ <ees ges> <ees ges>]
 <ees ges>2:8 <ees ges>2:8 <ees ges>2:8 <ees ges>4 r R2 f4 r
 R2*4 ees'2\p( f') d'( ees') ees'( f') d'( ees') ees'( f') d'( ees') ees'( e') e'( c') f'( g') g'( d') R2
 r8  a8\cresc[ a a] a4 r r8 bes[ bes bes] bes4 r r8 ces'8[ ces' ces'] ces'4 r
 r8 c'!8[ c' c'] c'4 r r8 c'[ c' c'] c'4 c'8[ c'\!]
 d'2\ff~ d'4 d ees r f r g r aes r bes r bes r f8\ff[ f bes bes] f[ f bes bes] g[ g bes bes] aes[ aes bes bes]
 f'[( ees') bes\staccato g\staccato] d'[( c') aes\staccato f\staccato] c'[( bes) g\staccato ees\staccato]
 d8[ <f d'> <aes f'> <f d'>]
 g2~ g2~ g2~ g8 bes8[ bes bes] bes2~ bes2~ bes2~ bes8 bes8[ bes bes]
 bes4 r r8 bes8[ bes bes] bes4 r r8 bes8[ bes bes] ees'4 r R2*2 }

 R2 r8 des8\ff[ des des] c2~ c2^\fermata
 R2 c'2\p~ c'2~ c'8 des'8[ des' des'] c'2~ c'2~ c'2~ c'8 des'8[ des' des'] c'2~ c'2~ c'2~ c'2~ c'2~ 
 c'2\<( d'4 ees' f' fis') g'8\!\p[ g' g' f'!] ees'2 d'8[ g' g' f'] ees'2 d'8[ g' g' f']
  ees'8\<[ ees' ees' d'] c'[ c' c' bes] a[ a a g] fis4\!\p r4 r8 bes[ bes c']
 d'2~ d'8[ bes bes c'] d'[ d' d' c'] bes[ bes bes a] g[ g g f] ees[ ees ees d] c[ c' c' bes] a[ a a g] fis[ fis fis ees]
 d[ d d c] bes[ d' d' c'] bes_\markup { \italic "cresc." }[ bes bes a] g[ f ees d] c8\f <c c'>[ <c c'> <c c'>]
 <c c'>2:8 <c c'>4 r r8 cis8[ cis cis] cis8 cis'[ cis' cis'] cis'2:8 cis'4 r
 %\set crescendoText = \markup { \italic "piu f" } %\set crescendoSpanner = #'dashed-line
 r8 d'8 [_\markup{\italic "più" } d' d'] d'4\f r r4 e'8 e' e'4 fis8 fis fis4 r4 R2*2 r4 c''4~ c''4 a'4\staccato fis'\staccato d'\staccato
 c'4\staccato a\staccato fis\staccato d\staccato g4 r R2*2
 r4 f''!4~ f'' d''\staccato b'\staccato g'\staccato f'\staccato d'\staccato b\staccato g\staccato c'4 r
 R2*2 <c c'>2 <c c'> R2*2 g2 aes R2*2 bes2 ees R2*2
 f2_\markup { \italic "dimin." } R2 ges2 R2 f2 R2 fis2\p R2 fis2_\markup { \italic "sempre più" \dynamic p } R2
 fis2 R2 d!2\pp R2 d2 R2 d2 R2 d8\ff <d d'>[ <d d'> <d d'>] <d d'>2 <d d'> <d d'>~ <d d'>
 R2 f2\pp R2 f2 R2 f2 R2 f4\f r4 r8 aes\ff[ aes aes] f2~ f8 aes[ aes aes] f2~ f8 aes[ aes aes]
 f8 aes[ aes aes] f[ aes aes aes] f[ g g g] ees2^\fermata r8 f[ f f] d2~ d2^\fermata
 R2 c'4\p^\pizz r4 R2 c'4 r4
 R2 b4 r R2 b4 r R2 c'4 r b r r8 ees8^\arco[ ees f] g[ g a b] c'4_\markup { \italic "cresc." } r4
 aes!4 r4

 \cadenzaOn 
g4\ff %s4 s2 s2 
r4^\fermata %s2 s4 \cadenzaOff \bar "|" 
s2*4    \cadenzaOff
s2

R2*2 r8 aes8\p[ aes aes] g2
 g8 aes8_\markup { \italic "cresc." }[ aes aes] f d[ d d] b aes[ aes aes] g2:8 g8\f[ c' ees' ees']
 d'2~ d'8[ f' f' d'] ees'2~ ees'8[ ees' ees' c'] f'\sf[ f' f' b] g'\sf[ g' g' bes!] aes'\sf[ aes aes f] bes\sf[ bes bes g]
 c'\sf[ c' c' aes] f'\sf[ f' f' d'] ees'8\f <c ees>[ <c ees> <c ees>] <c ees>2:8 <c ees>2:8 <c ees>2:8
 <d f>2:8 <d f>2:8 <d f>2:8 <d f>8[ <d f> <c ees> <c ees>] <ees a>8\ff ees''[ ees'' ees'']
 c''8 a'[ a' a'] fis' ees'[ ees' ees'] c' a[ a a] c'4 r R2 <b d'>4 r R2*3
 R2 c'2\p( d') b( c') R2*4 c'2( d') b( c') R2*4 g'2( e') e'( c') f'( fis') fis'( d') R2
 r8  aes8\cresc[ aes aes] aes4 r4 r8 a[ a a] a4 r R2 f4( g) aes( g fis g) a( g fis g) a( g fis g fis g fis g\!)
 <g f'>2\ff~ <g f'>4 d8[ d] e[ e g g] f[ f g g] e[ e g g] d[ d a a] e[ e g g] d4 r
 d8[ d g g] d[ d g g] e[ e g g] f[ f b b] d'[( c') g\staccato e\staccato] b[( a) f\staccato d\staccato]
 a8[( g) e\staccato c\staccato] <d b>[ <d b> <f d'> <f d'>]
 g2~ g~ g~ g8 g[ g g] g2~ g~ g~ g8 g'[ g' g'] g'4 r r8 g'[ g' g'] g'4 r r8 g[ g g]
 g'2\sf~ g'2:8 f'2\sf~ f'2:8 c'2\sf~ c'2:8 aes!2\sf~ aes2:8 aes8\ff aes'[ aes' aes'] aes'2:8 aes'2:8 aes'2:8 aes'4 r R2*3
 r8 a8\ff[ a a] a a'[ a' a'] a'2:8 a'2:8 a'2:8 a'4 r4 R2*2 r8 g'\f[ g' g'] ees'2 f' d'2~ d'8[ g' g' g']
 ees'2 f' d'2~ d'8[ g' g' g'] ees'4 f' d' ees' c' d' bes c' aes bes g aes f g ees f
 d4 c' b c' d' c' d' e' f' e' f' g' aes' g a b c'2 d'4\staccato ees'\staccato
 f'4\sf( d') ees'\staccato f'\staccato g'( ees') f'\staccato g'\staccato aes'( f') g'\staccato a'\staccato
 b'4( g') a'\staccato b'\staccato c''( g') aes'!\staccato ees'\staccato f'\staccato d'\staccato
 ees'4\staccato f'\staccato g'\staccato fis'\staccato g'\staccato g\staccato c'\staccato r R2*2
 ees4\staccato f\staccato g( ees) R2*2
 g4\staccato a\staccato b( g) R2*2 g4\staccato a\staccato b( g) R2*4 <f aes>4\sf( <ees g>) R2 f4( c')
 <g g'>4 r g r c'4( bes aes g f ees) R2 <f aes>4( <ees g>) f'4( c') <g g'>4 r <g g'> r
 <c c'>8 g[ g g] g2~ g2~ g2~ g2~ g8 g8[ g g] c'8 g[ g g]
 g2:8 g2:8 g2:8 ees2\ff^\fermata r8 f[ f f] d2~ d2^\fermata 
 R2*8
 r8 g8\ff[ g g] c'4 r r8 g[ g g] c'4 r r8 g[ g g] c'4 g c' g c' g' c'' g' c''4 r g r c r \bar "|."
}
