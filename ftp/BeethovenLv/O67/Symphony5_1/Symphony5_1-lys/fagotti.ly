\version "2.16.2"

 fagotti = {
 \set Staff.instrumentName = \markup { \center-align { "Fagotti." } }
 \set Staff.midiInstrument = "bassoon"
 \clef bass
 \key c \minor
 \time 2/4
 \repeat volta 2 {
 R2 r2^\fermata R2 R2 r2^\fermata R2
 << { c'2~ c'~ c'~ c' b~ b~ b~ b c' b c' b8[ b b b] c'4 } \\
 { c'2\p~ c'~ c'~ c' b~ b~ b~ b c' b c' b8_\markup { \italic "cresc." }[ b b b] c'4\f  } >> r4
 << { aes,4 } \\ { aes,4 } >> r << { g,4 } \\ { g,4 } >> r4^\fermata
 r8 << { aes,8[ aes, aes,] f,2~ f,2^\fermata } \\ { aes,8\ff[ aes, aes,] f,2~ f,2 } >>
 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 R2 \clef tenor <ees' g'>2_\markup { \italic "cresc." }~ <ees' g'>4 r4
 \clef bass << { b4 } \\ { b4\sf } >> r4
 <c bes!>4\sf r <c aes>\sf r <c e>\sf r <c f>\sf r <c c'>\sf r <c ees>2\f~ <c ees>~ <c ees>~ <c ees>
 <b, d>2~ <b, d>~ <b, d>~ <b, d>4 <c ees>4 <ees a>2\ff~ <ees a>~ <ees a>~ <ees a> <ees a>4 r R2 <d f>4 r
 R2 R2 R2 R2 R2 R2 R2 R2
 \set doubleSlurs = ##t <g bes>2\p( <f aes>) <bes, f>( <ees g>) <g bes>2\p( <f aes>) <bes, f>( <ees g>)
 <g bes>( <e g>) <c e>( <f aes>) <aes des'>( <g bes>) <ees! g>( <aes c'>) <aes, aes>2 \set doubleSlurs = ##f
  <a, a>2\cresc ~ <a, a> <bes, bes>~ <bes, bes> <ces ces'>~ <ces ces'>
 <c! c'!>2~ <c c'>~ <c c'>4 <c c'> <c c'> <c c'>\!
 <d d'>2\ff~ <d d'>4 <d f> <ees g> r <f aes> r <g bes> r <aes c'> r << { bes4 } \\ { bes4 } >> r
 << { bes,4 } \\ { bes,4 } >> r4 \clef tenor <f' aes'>2\ff~ <f' aes'>4 <bes f'> <ees' g'> <ees' g'>
 r4 <bes f'> r <bes ees'> \clef bass r4 <aes c'> r <g bes> r <bes, bes>
 <ees ees'>8 \clef tenor << { g'8[ g' g'] ees'8 } \\ { g'8[ g' g'] ees'8 } >>
 \clef bass << { bes8[ bes bes] g ees[ ees ees] bes,2~ bes,8 } \\ { bes8[ bes bes] g ees[ ees ees] bes,2~ bes,8 } >>
 \clef tenor << { g'8[ g' g'] ees'8 } \\ { g'8[ g' g'] ees'8 } >>
 \clef bass << { bes8[ bes bes] g ees[ ees ees] bes,2~ bes,4 } \\ { bes8[ bes bes] g ees[ ees ees] bes,2~ bes,4 } >> r4
 r8 <bes d'>8[ <bes d'> <bes d'>] <bes ees'>4 r r8 << { bes,8[ bes, bes,] ees4 } \\ { bes,8[ bes, bes,] ees4 } >> r4 R2 R2 }

 R2 \clef tenor << { g'2~ g'2~ g'2^\fermata } \\ { g'2\ff~ g'2~ g'2 } >>
 \clef bass R2 <f f'>2\p~ <f f'>~ <f f'>~ <f f'> <e e'>2~ <e e'>~ <e e'>~ <e e'> <f f'>2( <e e'> <f f'> <e e'> <f f'>4) r4
 R2 R2 R2 \clef tenor <c' ees'>2\p( <b d'> <c' ees'> <b d'> <c' ees'>4) r4
 r8 << { ees'8[ ees' d'] c'[ c' c' bes] a s8 s4 } \\
 {  ees'8\<[ ees' d'] c'[ c' c' bes\!] a8\p[ <fis d'> <fis d'> <a c'>] } >> <g bes>2
 <fis a>8[ <fis d'> <fis d'> <a c'>] <g b>2 <fis a> <g b>4 r4
 \clef bass << { a8\rest g8[ a bes] c'4 a4\rest a8\rest fis8[ a bes] c'4 a4\rest a8\rest a8[ bes c']
 d'4 a4\rest a8\rest g8[ bes c'] d'4 a4\rest } \\ { g,2:8 a,2~ a,2:8 a,2~ a,2:8 bes,2~ bes,2:8 bes,2 } >>
 r8 <g bes>8_\markup { \italic "cresc." }[ <a c'> <bes d'>] <fis a>2\f~ <fis a>2 <fis a>4 r
 r8 <cis cis'>8[ <cis cis'> <cis cis'>] <cis cis'>2~ <cis cis'>2 <cis cis'>4 r
 \set crescendoText = \markup { \italic "piu f" } %\set crescendoSpanner = #'dashed-line
 r8 <d d'>\cresc[ <d d'> <d d'>] <d d'>4 r r4 <e e'>8 <e e'> <e e'>4 <fis fis'>8 <fis fis'> <fis fis'>4\! r R2 R2 R2
 r4 << { fis'8 fis' fis'4 } \\ { fis'8 fis' fis'4 } >> r4 R2 r4 <d d'>8 <d d'> <g, g>4 r R2 R2
 r4 << { b8 b b4 } \\ { b8 b b4 } >> r4 R2 R2 R2 r8 << { c'8[ c' c'] } \\ { c'8\ff[ c' c'] } >> <aes c'>2 <bes des'>
 R2 R2 <aes c'>2 <bes des'> R2 R2 <aes c'>2 <bes des'> R2 R2 <c' ees'>2 <des' f'>
 R2 \clef tenor <ees' ges'>2_\markup { \italic "dimin." } R2 <f' aes'>2 R2 <fis' a'>2\p R2
 <fis' a'>2_\markup { \italic "sempre più"  \dynamic p } R2 <fis' a'>2 R2 <fis' a'>2\pp R2 <fis' a'>2 R2 <fis' a'>2 R2 <fis' a'>2
 r8 \clef bass <d d'>8\ff[ <d d'> <d d'>] <b, b>2 <c c'> <a, a>~ <a, a> <b f'>2\pp R2 <b f'>2 R2 <b f'>2 R2 <b f'>2
 r8 <aes, aes>\ff[ <aes, aes> <aes, aes>] <f, f>2~ <f, f>8 <aes, aes>[ <aes, aes> <aes, aes>]
 <f, f>2~ <f, f>8 <aes, aes>[ <aes, aes> <aes, aes>] <f, f>8 <aes, aes>[ <aes, aes> <aes, aes>]
 <f, f>8 <aes, aes>[ <aes, aes> <aes, aes>] <f, f> <aes, aes>[ <aes, aes> <aes, aes>]
 <f, f> <g, g>[ <g, g> <g, g>] <ees, ees>2^\fermata r8 <f, f>[ <f, f> <f, f>] <d, d>2~ <d, d>2^\fermata R2
 <c c'>2\p~ <c c'>2~ <c c'>4 <c c'>4( <ees ees'> <c c'>) <b, b>2~ <b, b>2~ <b, b>4 <g, g>4( <b, b> <g, g>)
 <c c'>2 <b, b> <c c'> <g, g> <c c'>2_\markup { \italic "cresc." } <aes, aes>2

 \cadenzaOn 
<g, g>4\f %s4 s2 s2 
r4^\fermata% s2 s4 \cadenzaOff \bar "|"
s2*4    \cadenzaOff
s2
 R2 R2 R2 R2 R2 \clef tenor << { d'2~ d'2~ d'2 c'4 } \\ { d'2_\markup { \italic "cresc." }~ d'2~ d'2 c'4\f } >> r4
 r8 <f' aes'>[ <f' aes'> <f' aes'>] <f' aes'>4 r r8 <ees' g'>[ <ees' g'> <ees' g'>]
 <ees' g'>4 r \clef bass << { b4 } \\ { b4\sf } >> r4 <c bes!>4\sf r <c aes>\sf r <c e>\sf r <c f>\sf r <c c'>\sf r
 <c ees>2\f~ <c ees>~ <c ees>~ <c ees> <b, d>2~ <b, d>~ <b, d>~ <b, d>4 <c ees>
 <c' ees'>2\ff~ <c' ees'>~ <c' ees'>~ <c' ees'> <c' ees'>4 r R2 <b d'>4 r
 r8 \clef tenor << { g'8[ g' g'] c'2 d'2 g2\~ g2~ g2~ g2~ g2 } \\ { g'8\ff[ g' g'] c'2\sf d'2\sf g2\sf\>~ g2\!\p~ g2~ g2~ g2 } >>
 \set doubleSlurs = ##t <e' g'>2( <d' f'>) <g d'>( <c' e'>) \clef bass <e g>2( <d f>) <g, d>( <c e>)
 \clef tenor <e' g'>2( <d' f'>) <g d'>( <c' e'>) \clef bass <g bes!>2( <e g>) << { e2( f) } \\ { c2( f) } >>
 \set doubleSlurs = ##f <a c'>2( <fis a>) << { fis2( g) } \\ { d2( g) } >>
  <aes,! aes>2\cresc~ <aes, aes>2~ <aes, aes>2 <b, b>2~ <b, b>2\!
  <d d'>2\cresc ~ <d d'>2~ <d d'>2~ <d d'>2 <d d'>2~ <d d'> <d d'>2~ <d d'>~ <d d'>2~ <d d'>\!
 \clef tenor <d' f'>2\ff~ <d' f'>4 <b f'> <c' e'>4 r <b f'> r <c' e'> r
 \clef bass <f f'>4 r <g g'> r <g, g> r <b, d>2~ <b, d>2 <c e>4 <c e> r4 <d f> r <e g> r <f a> r <g c'> r <g b>
 <g c'>8 <e e'>[ <e e'> <e e'>] <c c'> <g g'>[ <g g'> <g g'>] <e e'> <c c'>[ <c c'> <c c'>]
 <g, g>2~ <g, g>8 << { e'8[ e' e'] c' } \\ { e'8[ e' e'] c' } >> <g g'>8[ <g g'> <g g'>] <e e'> <c c'>[ <c c'> <c c'>]
 <g, g>8 <b d'>[ <b d'> <b d'>] <c' e'>4 r4 r8 <b d'>[ <b d'> <b d'>] <c' e'>4 r4 r8 <g d'>[ <g d'> <g d'>]
 <c c'>2:8 <c c'>2~ <c c'>2:8 <c c'>2~ <c c'>2:8 <c c'>2~ <c c'>2:8 <c c'>8 <f aes>[ <f aes> <f aes>]
 <f aes>2~ <f aes>~ <f aes>~ <f aes> <f aes>4 r4 r8 \clef tenor << { f'8[ f' f'] aes'4 } \\ { f'8\p[ f' f'] aes'4 } >> r4 R2
 r8 \clef bass <fis a>8\ff[ <fis a> <fis a>] <fis a>2~ <fis a>~ <fis a>~ <fis a>~ <fis a>4 r
 r8 \clef tenor c'8[ c' c'] ees'4 r r8 g'8\f[ g' g'] ees'2 f' d'~ d'8[ g' g' g'] ees'2 f' d'~ d'8[ g' g' g']
 ees'4 f' d' ees' c' d' bes c' \clef bass aes bes g aes f g ees f
 d4 c b, c d c d e f e f g <aes, aes> <g, g> <a, a> <b, b> <c c'>2~ <c c'> <aes,! aes!>~ <aes, aes>
 <ees, ees>~ <ees, ees> <f, f> <ees, ees> <d, d> <f, f>
 <ees, ees>4\staccato r <c, c>\staccato r <f, f>\staccato r <d, d>\staccato r <g, g>\staccato r
 << { g,4\staccato } \\ { g,4 } >> r4 <c c'>2\ff <d d'>4\staccato <ees ees'>\staccato <f f'>( <d d'>) R2 R2
 <f f'>4\staccato <g g'>\staccato <aes aes'>( <f f'>)
 R2 R2 <a c'>4\staccato <b d'>\staccato <c' ees'>( <g c'>) R2 R2
 <a c'>4\staccato <b d'>\staccato <c' ees'>( <g d'> <aes! c'> <ees bes> <f aes> <c g>) R2
 <f aes>4\sf( <c g>) <f aes>( < ees g>) r4 <c' ees'> r <b d'>
 R2 R2 R2 <f aes>4( <ees g>) R2 <f aes>4( <ees g>) r4 <g c'> r <g b> <c c'>4 r
 r8 \clef tenor <d' f'>8[ <d' f'> <d' f'>] <d' f'>2~ <d' f'>4( <c' ees'> <b d'> <d' f'> <c' ees'> <b d'>) <c' ees'>4 r
 \clef bass r8 <g, g>[ <g, g> <g, g>] <g, g>2:8 <g, g>2:8 <ees, ees>2\ff^\fermata
 r8 <f, f>[ <f, f> <f, f>] <d, d>2~ <d, d>2^\fermata
 \clef tenor << { e'4\rest g'4\p( ees'2)~ ees'2~ ees'2~ ees'4 g'4( ees'2)~ ees'2~ ees'2~ ees'8 } \\
 { R2 R2 R2 R2 R2 R2 R2 R2 d8\rest } >> <b d'>8[ <b d'> <b d'>] <c' ees'>4 r r8 <b d'>[ <b d'> <b d'>] <c' ees'>4 r
 r8 <b d'>[ <b d'> <b d'>] <c' ees'>4 <b d'> <c' ees'> <b d'> <c' ees'> <b d'> <c' ees'> <b d'>
 <c' ees'>4 r \clef bass <g b> r <c c'> r \bar "|."
}
