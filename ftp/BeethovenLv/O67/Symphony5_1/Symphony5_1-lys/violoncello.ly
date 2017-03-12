\version "2.16.2"



pizz = \markup{\italic "pizz."} 
arco = \markup{\italic "arco"} 
crescendo = \markup{\italic "cresc."} 


violoncello = {
 %\set Staff.instrumentName = "Violoncello."
 \set Staff.midiInstrument = "cello"
 \override MultiMeasureRest #'expand-limit = 1
 \compressFullBarRests
 \clef bass
 \key c \minor
 \time 2/4
 \repeat volta 2 {
 r8
 g,8\ff[ g, g,] ees,2^\fermata r8 f,[ f, f,] d,2~ d,2^\fermata R2 c'2\p~ c'2~ c'2~ c'2 b2~ b2~ b2~ b2
 c'2 b c'2 b8_\markup { \italic "cresc." }[ b b b] c'4\f r aes, r g, r4^\fermata
 r8 aes,8\ff[ aes, aes,] f,2~ f,2^\fermata R2*3 r8 g,8\p[ g, g,] c4 r R2*2 r8 g,\p[ g, g,] c4 r
 r8  c8\cresc[ c c] c4 r r8 c8[ c c] c4\!\sf r c4\sf r4
 c4\sf r c\sf r c\sf r c\sf r c\sf r c2\f~ c2~ c2~ c8[ c c c] g,2~ g,2~ g,2~ g,8[ g, c c] c2:8\ff c2:8 c2:8 c2:8 c4 r R2 d4 r
 R2*6 
r8 bes,8\p[ bes, bes,] ees4 r R2*2 r8 bes,8[ bes, bes,] ees4 r R2*2 r8 bes,8[ bes, bes,] ees4 r
 R2*2 r8 c8[ c c] f4 r R2*2 r8 ees8[ ees ees] aes4 r \clef tenor ees'4( f' 
 ges'\cresc f' ees' f')
 ges'( f' ees' f') ges'( f' ees' f') ges'( f' ees' f' ges' f' ges' c'\!)
 \clef bass d'2\ff~ d'4 d ees4 r f r g r aes r bes r bes, r d4\ff f d f ees g f aes g bes aes c' bes bes, bes bes,
 ees2~ ees2~ ees2~ ees8 bes,8[ bes, bes,] ees2~ ees2~ ees2~ ees8 bes,8[ bes, bes,]
 ees4 r r8 bes,8[ bes, bes,] ees4 r r8 bes,8[ bes, bes,] ees4 r R2*2 }

 R2 r8 des8\ff[ des des] c2~ c2^\fermata
 R2 
%\clef tenor 
 c'2\p~ c'2~ c'8 des'8[ des' des'] c'2~ c'2~ c'2~ c'8 des'8[ des' des'] 

%c'2~ c'2~ c'2~ c'2~ c'2~ 

<<
  \context Voice = "foo" {
    \clef bass
     c'2~ c'2~ c'2~ c'2~ c'2~ c'2\< 
 d'4( ees' f' fis') 

\clef tenor g'8\!\p[ 
g' g' f'!]
  }
  \context Voice = "foo" {
    \set countPercentRepeats = ##t
    \override PercentRepeat #'transparent = ##t
    \override PercentRepeatCounter #'staff-padding = #3
    \repeat percent 6 { s2 }
  }
>>



 ees'2 d'8[ g' g' f'] ees'2 d'8[ g' g' f']
  ees'8\<[ ees' ees' d'] 
\clef bass
c'[ c' c' bes] a[ a a g] fis4\!\p r4
 \clef bass r8 bes8[ bes c'] d'2~ d'8[ bes bes c'] d'[ d' d' c'] bes[ bes bes a] g[ g g f] ees[ ees ees d]
 c8[ c' c' bes] a[ a a g] fis[ fis fis ees] d[ d d c] bes,[ d' d' c'] bes_\markup { \italic "cresc." }[ bes bes a]
 g[ f ees d] <c, c>2:8\f <c, c>2:8\f <c, c>4 r r8 cis8[ cis cis] cis2:8 cis2:8 cis4 r
% \set crescendoText = \markup { \italic "piu f" } %\set crescendoSpanner = #'dashed-line
 r8 d8[_\markup{\italic "più"} d d] 
 d4\f r r4 e8 e e4 fis8 fis fis4\! r4 R2*2 r4 c'4~ c'4 a4\staccato fis\staccato d\staccato
 c4\staccato a,\staccato fis,\staccato d,\staccato g,4 r R2*2
 r4 f'!4~ f'4 d'\staccato b\staccato g\staccato f\staccato d\staccato b,\staccato g,\staccato c4 r
 R2*2 g,2 aes, R2*2 g,2 aes, R2*2 bes,2 c R2*2
 des!2_\markup { \italic "dimin." } R2 ees2 R2 f2 R2 fis,2\p R2 fis,2_\markup { \italic "sempre più" \dynamic p } R2
 fis,2 R2 fis,2\pp R2 fis,2 R2
 fis,2 R2 fis,8\ff d[ d d] b,2 c2 a,2~ a,2 R2 b,2\pp R2 b,2 R2 b,2 R2 b,8\ff aes,[ aes, aes,] f,2~ f,8 aes,8[ aes, aes,]
 f,2~ f,8 aes,[ aes, aes,] f, aes,[ aes, aes,] f, aes,[ aes, aes,] f,[ aes, aes, aes,] f, g,[ g, g,]
 ees,2^\fermata r8 f,[ f, f,] d,2~ d,2^\fermata R2 c4\p^\pizz r4 R2 c4 r4
 R2 b,4 r R2 b,4 r R2 c4 r b, r c r g, r c4_\markup { \italic "cresc." } r aes, r

 \cadenzaOn 
 g,4\ff^\arco %s4 s2 s2 
 r4^\fermata %s2 s4 
 %\cadenzaOff 
  s2*4 \cadenzaOff
 s2
 %\bar "|" 
 R2*3 

 r8 g,8\p[ g, g,]
 c8 aes_\markup { \italic "cresc." }[ aes aes] f d[ d d] b, aes,[ aes, aes,] g, g[ g g] c2:8\f c2~ c2:8 c2~
 c2:8 c4\sf r c\sf r c\sf r c\sf r c\sf r c\sf r c2\f~ c2~ c2~ c2:8 g,2~ g,2~ g,2~ g,8[ g, c c]
 c8\ff ees'[ ees' ees'] c' a[ a a] fis ees[ ees ees] c a,[ a, a,] c4 r R2 b,4 r 
 R2*6 r8 g,8\p[ g, g,] c4 r4 
 R2*6 r8 g,8[ g, g,] c4 r4 
 R2*6
\pageBreak
 r8 c8[ c c] f4 r4 R2*2 r8 d8[ d d] g4 r4
 \clef tenor f'4( g'  aes'!\cresc g' f' g') aes'( g' f' g') aes'4( g' f' g') aes'( g' fis' g')
 a'( g' fis' g') a'( g' fis' g' fis' g' fis' g'\!) \clef bass d'2\ff~ d'4 b4 c'4 r d' r e' r f' r g' r g r
 b,4 d b, d c e d f e g f a g g, g g,
 c2~ c~ c~ c8 g,[ g, g,] c2~ c~ c~ c8 g,[ g, g,] c4 r r8 g,[ g, g,] c4 r r8 g,[ g, g,]
 c2\sf~ c2:8 aes,!2\sf~ aes,2:8 e2\sf~ e2:8 f2\sf~ f2:8 f,8\ff f[ f f] f2:8 f2:8 f2:8 f4 r
 R2*3 r8 fis,\ff[ fis, fis,] fis, fis[ fis fis] fis2:8 fis2:8 fis2:8 fis4 r R2*2
 \clef tenor r8 g'8\f[ g' g'] ees'2 f' d'2~ d'8[ g' g' g'] ees'2 f' d'2~ d'8[ g' g' g']
 \clef bass
 ees'4 f' d' ees' c' d' bes c' \clef bass aes bes g aes f g ees f
 d4 c b, c d c d e f e f g aes g a b c'2~ c' aes!~ aes ees~ ees f ees d f ees4\staccato r c\staccato r
 f4\staccato r d\staccato r g\staccato r g,\staccato r c\staccato r R2*2 ees4\staccato f\staccato g( ees) R2*2
 g,4\staccato a,\staccato b,( g,) R2*2 g,4\staccato a,\staccato b,( g,) R2*4  f4\sf( c) R2 f4( c)
 g4 r g, r c'4( g aes ees f c) R2 f4( c) f( c) g4 r g, r c4 r R2*4  r8 g,8[ g, g,] c8 g,[ g, g,]
 g,2:8 g,2:8 g,2:8 ees,2\ff^\fermata r8 f,[ f, f,] d,2~ d,2^\fermata R2

% <c, g,>2\pp~ <c, g,>~ <c, g,>~ <c, g,>~ <c, g,>~ <c, g,>~ <c, g,>~ 


<<
  \context Voice = "foo" {
    \clef bass
      <c, g,>2\pp~ <c, g,>~ <c, g,>~ <c, g,>~ <c, g,>~ <c, g,>~ <c, g,>~ 
  }
  \context Voice = "foo" {
    \set countPercentRepeats = ##t
    \override PercentRepeat #'transparent = ##t
    \override PercentRepeatCounter #'staff-padding = #1
    \repeat percent 7 { s2 }
  }
>>





<c, g,>8 g,8\ff[ g, g,] c4 r
 r8 g,[ g, g,] c4 r r8 g,[ g, g,] c4 g, c g, c g c' g c' r g, r  c r \bar "|."
}
