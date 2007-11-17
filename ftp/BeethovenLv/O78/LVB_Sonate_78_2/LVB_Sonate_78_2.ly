\version "2.10.3"

 \header {
  title = "Piano Sonate Opus 78 (2nd Movement)"
  composer = "Ludwig Van Beethoven"
  mutopiatitle = "Sonata No. 24 (2nd Movement: Allegro vivace)"
  mutopiacomposer = "BeethovenLv"
  mutopiainstrument = "Piano"
  mutopiaopus = "Op. 78"
  date = "1809"
  source = "Breitkopf & Hartel (1862-1865)"
  style = "Classical"
  copyright = "Public Domain"
  maintainer = "Stelios Samelis"
  lastupdated = "2007/November/15"
  version = "2.10.3"

 footer = "Mutopia-2007/11/17-1161"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\score {

 \new GrandStaff
 <<
 \new Staff = "up" {
 \clef treble
 \key fis \major
 \time 2/4
 \override Score.MetronomeMark #'transparent = ##t
 \tempo 4 = 128
 \override TextScript #'padding = #2.0
 \set doubleSlurs = ##t <fis' bis'>4.^\markup { "Allegro vivace." }( <eis' cis''>8) <eis' gis'>8 r r <fis' ais'>\p
 \set doubleSlurs = ##f <dis' b'!>8.( <cis' ais'>16) <b gis'>8 <ais fis'> <gis eis'>4 r
 <ais' cis''>4.\f( <b' dis''>8) <cis'' e''>4 r8 <dis'' fis''>8\p <e'' gis''>8.( <cis'' e''>16) <b' dis''>8 <ais' cis''>
 <b' dis''>4 r4 \break
 <fis' b'>4.\pp( <fis' ais'>8) <fis' dis''>4 r8 <fis' cis''>8
 << { b'8.( ais'16) gis'8\staccato cis''\staccato } \\ { fis'4 fis'8 eis'! } >>
 ais'16_\markup { \italic "cresc." }([ fis']) eis'([ fis']) b'([ fis'']) ais'([ fis''])
 dis''16([ fis'']) cis''([ fis'']) eis''([ gis'']) eis''([ cis''']) fis''\f([ ais'']) fis''([ cis''']) fis''([ cis''']) ais''([ cis''']) \break
 ais''16([ cis''']) ais''([ cis''']) gis''([ b'']) eis''([ cis''']) ais''([ fis'']) ais'([ fis'']) b'([ fis'']) ais'([ fis''])
 dis''([ fis'']) cis''([ fis'']) eis''([ gis'']) eis''([ cis''']) fis''([ ais'']) fis''([ cis''']) fis''([ cis''']) ais''( cis'''])
 ais''([ cis''']) ais''([ cis''']) gis''([ b'']) eis''([ cis''']) \break
 ais''16([ cis''']) <fis'' ais''>([ cis''']) fis''([ gis'']) fis''([ bis'']) fis''([ gis'']) fis''([ dis''']) fis''([ gis'']) fis''( dis'''])
 <eis'' gis'' cis'''>8\f bis16([ cis']) r8 disis'16( eis') r8 fisis'16( gis') r8 bis'16( cis'') \break
 r8 disis''16( eis'') r8 fisis''16( gis'') r8 bis''16( cis''') r8 disis'''16( eis''')
 r8 fisis'''16\p( gis''') r8 disis'''16( eis''') r8 bis''16( cis''') r8 fisis''16( gis'') \break
 r8 disis''16( eis'') r8 bis'16( cis'') r8 bis'16( cis'') r8 bis'16( cis'')
 r8 bis'16\pp( cis'') r8 bis16( cis') r8 bis'16( cis'') r8 bis16( cis')
 \set doubleSlurs = ##t <fis' bis'>4.\f( <eis' cis''>8) \break
 <eis' gis'>8 r r <fis' ais'>\p \set doubleSlurs = ##f <dis' b'!>8.( <cis' ais'>16) <b gis'>8 <ais fis'>
 <gis eis'>4 r <ais' cis''>4.\f( <b' dis''>8) <cis'' e''>4 r8 <dis'' fis''>8\p
 <e'' gis''>8.( <cis'' e''>16) <b' dis''>8 <ais' cis''> <b' dis''>4 r4
 <fis' b'>4.\pp( <fis' ais'>8) <fis' dis''>4 r8 <fis' cis''>8 \break
 << { b'8.( ais'16) gis'8\staccato[ cis''\staccato] } \\ { fis'4 fis'8[ eis'!8] } >>
 ais'16_\markup { \italic "cresc." }([ fis']) eis'([ fis']) b'([ fis'']) ais'([ fis''])
 dis''16([ fis'']) cis''([ fis'']) eis''([ gis'']) eis''([ cis''']) fis''\f([ ais'']) fis''([ cis''']) fis''([ cis''']) ais''([ cis'''])
 ais''([ cis''']) ais''([ cis''']) gis''([ b'']) eis''([ cis''']) \break
 ais''([ fis'']) ais'([ fis'']) b'([ fis'']) ais'([ fis'']) dis''([ fis'']) cis''([ fis'']) eis''([ gis'']) eis''([ cis'''])
 fis''([ ais'']) fis''([ cis''']) fis''([ ais'']) fis''([ dis''']) fis''([ dis''']) fis''([ dis''']) fis''([ dis''']) fis''([ dis'''])
 <eis'' cisis'''>8 b'16([ ais']) r8 ais'16([ gis']) \break
 r8 gis'16([ fis']) r8 fis'16([ eis']) r8 eis'16([ dis']) r8 dis'16([ cis'])
 r8 cis'16([ b]) r8 b16([ ais]) r8 \clef bass ais16([ gisis]) r8 ais16([ gis]) \break
 r8 ais16([ fis]) r8 ais16([ eis]) \clef treble r8^\f ais16([ dis']) dis'([ fisis']) fisis'([ ais'])
 ais'16([ dis'']) dis''([ fisis'']) fisis''([ ais'']) ais''([ dis'''])
 fisis'''8 fis'!16\p([ ais']) dis'([ ais']) fis'([ ais']) \break
 dis'16([ ais']) fis'([ ais']) gis'([ ais']) eis'([ ais']) r8^\f ais16([ dis']) dis'([ fisis']) fisis'([ ais'])
 ais'16([ dis'']) dis''([ fisis'']) fisis''([ ais'']) ais''([ dis''']) fisis'''8 fis'!16\p([ ais']) dis'([ ais']) fis'([ ais'])
 dis'16([ ais']) fis'([ ais']) gis'([ ais']) eis'([ ais']) \break
 dis'16([ fis']) fis'_\markup { \italic "cresc." }([ dis'']) eis'([ cisis'']) cisis''([ eis''])
 fis'([ dis'']) dis''([ fis'']) cisis''([ eis'']) eis''([ gis'']) fis'\f([ dis'']) dis''([ fis'']) cisis''([ eis'']) eis''([ gis''])
 dis''([ fis'']) fis''([ dis''']) eis''([ cisis''']) gis''([ eis'''])
 dis'\p_\markup { \italic "   cresc." }([ fis']) fis'([ dis'']) eis'([ cisis'']) cisis''([ eis'']) \break
 fis'16([ dis'']) dis''([ fis'']) cisis''([ eis'']) eis''([ gis'']) fis'\f([ dis'']) dis''([ fis'']) cisis''([ eis'']) eis''([ gis''])
 dis''([ fis'']) fis''([ dis''']) e''([ fis'']) fis''([ e''']) dis''([ fis'']) b''([ dis''']) b''([ dis''']) b''([ dis'''])
 <f'' b'' d''' f'''>8\ff r r ais!16([ b]) \break
 r8 ais16( b) r8 cis'16( d') r8 e'16( f') r8 ais'!16( b') r8 cis''16( d'') r8 e''16( f'') r8 ais''!16( b'') r8 cis'''16( d''') \break
 r8 e'''16\p( f''') r8 d'''16( f''') r8 e'''16( f''') r8 d'''16( f''')
 r8 e'''16( f''') r8 d'''16( f''') r8 d'''16( f''') r8 e''16( f'') \break
 r8 e''16( f'') r8 d''16( f'') r8 e''16( f'') r8 d''16( f'') r8 e''16\pp( f'') r8 d''16( f'') r8 d''16( f'') r8 d''16( f'')
 r8 cis'''16( d''') r8 ais''16( b'') \break
 r8 cis'''16( d''') r8 ais''16( b'') <eis''! b'' eis'''!>4.\f( <fis'' ais'' fis'''>8)
 <fis'' ais'' cis'''>8 r r \clef bass <gis bis>8\p <gis! e'>8.( <fis dis'>16) <e cis'>8[ <dis b>] <cis ais>4 r4
 \clef treble <dis''! fis'' b'' dis'''!>4.\f( <e'' gis'' b'' e'''>8) <fis'' a'' dis''' fis'''>4 r8 \clef bass <gis b>8\p \break
 <ais cis'>8.( <fis ais>16) <e gis>8 <dis fis> <e gis>4 r4 \clef treble <e'' b'' e'''>4.\f( <dis'' b'' dis'''>8)
 <gis'' b'' gis'''>8 r8 r fis'8^\p e'8.( dis'16) cis'8\staccato fis'\staccato
 dis'16([ b]) ais_\markup { \italic "cresc." }([ b]) e'([ b']) dis'([ b']) gis'([ b']) fis'([ b']) ais'([ cis'']) ais'([ fis'']) \break
 b'16\f([ dis'']) b'([ fis'']) b'([ fis'']) dis''([ fis'']) dis''([ fis'']) dis''([ fis'']) cis''([ e'']) ais'([ fis''])
 dis''([ b']) dis'([ b']) e'([ b']) dis'([ b']) gis'([ b']) fis'([ b']) ais'([ cis'']) ais'([ fis'']) \break
 b'16([ dis'']) b'([ fis'']) b'([ fis'']) d''([ fis'']) d''([ b'']) d''([ b'']) <cis'' eis''!>([ b'']) <cis'' gis''>([ b''])
 <cis'' fis''>([ a'']) <cis'' fis''>([ a'']) <cis'' fis''>([ a'']) <cis'' fis''>([ a''])
 <cis'' fis''>([ a'']) <a' cis''>([ fis'']) <fis' cis''>([ fis'']) <fis' bis'>([ fis''])
 <eis' cis'' eis''>8 cis''16([ b']) r8 b'16([ a']) \break
 r8 a'16([ gis']) r8 gis'16([ fis']) r8 fis'16([ eis'!]) r8 eis'16([ d'])
 r8 d'16([ cis']) r8 cis'16([ bis]) r8 cis'16([ bis]) r8 cis'16([ b]) \break
 r8 cis'16\p([ a]) r8 cis'16([ gis]) r8 cis'16\f([ fis']) fis'([ ais'!]) ais'([ cis''])
 cis''16([ fis'']) fis''([ ais''!]) ais''([ cis''']) cis'''([ fis'''])
 ais'''8 ais'16^\p([ cis'']) fis'([ cis'']) ais'([ cis'']) fis'([ cis'']) a'([ cis'']) b'([ cis'']) gis'([ cis'']) \break
 r8 cis'16\f([ fis']) fis'([ ais'!]) ais'([ cis'']) cis''([ fis'']) fis''([ ais''!]) ais''([ cis''']) cis'''([ fis'''])
 ais'''8 ais'16^\p([ cis'']) fis'([ cis'']) ais'([ cis'']) fis'([ cis'']) a'([ cis'']) b'([ cis'']) gis'([ cis'']) \break
 fis'16([ a']) a'_\markup { \italic "cresc." }([ fis'']) gis'([ eis'']) eis''([ gis'']) a'([ fis'']) fis''([ a'']) eis''([ gis'']) gis''([ b''])
 a'16\f([ fis'']) fis''([ a'']) eis''([ gis'']) gis''([ b'']) fis''([ a'']) a''([ fis''']) gis''([ eis''']) b''([ gis''']) \break
 fis'16([ a']) a'_\markup { \italic "cresc." }([ fis'']) gis'([ eis'']) eis''([ gis'']) a'([ fis'']) fis''([ a'']) eis''([ gis'']) gis''([ b''])
 a'16\f([ fis'']) fis''([ a'']) eis''([ gis'']) gis''([ b'']) fis''([ a'']) a''([ fis''']) fis''([ a'']) a''([ fis''']) \break
 fis''16([ a'']) a''([ fis''']) fis''([ a'']) a''([ fis''']) <fis'' a'' c''' fis'''>8^\ff r r b16([ c']) r8 b16([ c']) r8 eis'!16([ fis'])
 r8 gis'16([ a']) r8 b'16([ c'']) r8 eis''!16([ fis'']) r8 gis''16([ a'']) \break
 r8 b''16([ c''']) r8 eis'''!16([ fis''']) r8 gis'''16\p([ a''']) r8 eis'''16([ fis'''])
 r8 gis'''16([ a''']) r8 eis'''16([ fis''']) r8 b''16([ c''']) r8 a''16([ c''']) r8 b''16([ c''']) r8 b''16([ c''']) \break
 r8 a''16([ c''']) r8 b''16( c''']) r8 a''16([ c''']) r8 b'16([ c'']) r8 a'16([ c'']) r8 b'16([ c''])
 r8 a'16([ c'']) r8 b'16([ c'']) r8_\markup { \italic "piu p" } a'16([ c'']) r8 a'16([ c'']) \break
 r8 a'16([ c'']) r8 a'16([ c'']) r8 gis''16\pp([ a'']) r8 b''16([ c''']) r8 gis''16([ a'']) r8 b''16([ c'''])
 <bis' fis'' bis''>4.\f( <cis'' eis''! cis'''>8) <cis'' eis'' gis''>4 r8 \clef bass <cis ais!>8\p(
 <dis b!>8. <cis ais>16 <b, gis>8 <ais, fis> <gis, eis>4) r4 \clef treble \break
 <cis'' ais'' cis'''>4.\f( <dis'' b'' dis'''>8) <e'' cis''' e'''>4 r8 \clef bass <dis fis>8\p(
 <e gis>8. <cis e>16 <b, dis>8 <ais, cis> <b, dis>4) r4 \clef treble <b' b''>4.\pp( <ais' ais''>8) <dis'' dis'''>4 r8
 \clef bass << { cis'8( b8.[ ais16 gis8 cis'] ais4.) dis'8( b8.[ ais16 gis8 cis'] ais4.) } \\
 { fis8 fis4. eis8 fis4. fis8 fis4. eis8 fis4._\markup { \italic "cresc." } } >>
 << { fis'8( e'8.[ dis'16 cis'8 fis'] e'4.) } \\ { <fis dis'>8 <fis ais>4. <ais cis'>8 <ais cis'>4. } >>
 \clef treble << { fis''8 fis''8.([ e''16 dis''8 fis''] gis''8.[ fis''16 eis''!8 gis'']) } \\
 { <ais' e''>8 <b' dis''>4. dis''8 <b' cis''>4. eis''8 } >>
 gis''8.\f([ fis''16 eis''8 cis'''\sf] ais''8.[ gis''16 fis''8 cis'''\sf]
 gis''8.[ fis''16 eis''8 cis'''\sf] fis''8.[ eis''16 dis''8 cis'''\sf] eis''8.[ dis''16 <cis'' cis'''>8\sf <cis'' b''>]) \break
 << { b''8.([ ais''16 gis''8]) cis''8\staccato cis''4\staccato cis''8\staccato([ cis''\staccato]) } \\
 { cis''4._\markup { \italic "dim." } b'8\p b'8.( ais'16) <gis' b'>8 <fis' ais'> } >>
 <eis' gis' cis''>2^\fermata <fis' a' dis''>2\pp^\fermata
 \new Voice { \stemDown \cadenzaOn s4 s4 s4
 \times 4/5 { eis'16[ gis' b' cis'' eis''] } s4 \times 4/5 { eis''16[ gis'' b'' cis''' eis'''] } r8^\fermata
 \cadenzaOff  \bar "|" } \break
 a16\f([ fis']) a([ fis']) a([ fis']) ais([ fis']) b([ fis']) dis'([ b']) gis'([ b']) eis'([ cis''])
 a'16\ff([ fis'']) a'([ fis'']) a'([ fis'']) ais'([ fis'']) b'([ fis'']) dis''([ b'']) gis''([ b'']) eis''([ cis'''])
 fis''([ ais'']) ais''([ cis''']) ais''([ cis''']) <gis'' b''>([ eis''']) <fis'' ais'' fis'''>8\staccato r8 r4 \bar "|."
}

 \new Staff = "down" {
 \clef bass
 \key fis \major
 \time 2/4
 <d fis>4.\f( <cis gis>8) <b,! cis>8 r r <ais, cis>\p gis,8.( ais,16) b,8 bis, cis4 r4
 \clef treble <e' g'>4.\f( <dis' fis'>8) <cis' e'>4 r8 \clef bass <b dis'>8\p
 << { gis8.( cis'16) dis'8 e' } \\ { e4 fis8 fis } >> <b dis'>4 r4
 dis'4.\pp( cis'8) b4 r8 ais gis8.( ais16) b8\staccato cis\staccato fis8([ cis' dis' cis'] b[ ais gis cis] fis[ cis ais, cis])
 fis,8([ cis cis, cis] fis,8) cis'8([ dis' cis'] b[ ais gis cis] fis[ cis ais, cis] fis,[ cis cis, cis])
 fis,8[ fis dis, dis] bis,,[ bis, gis,, gis,]
 <cis, cis>8\f r8 \clef treble bis16([ cis']) r8 disis'16( eis') r8 fisis'16( gis') r8
 bis'16( cis'') r8 disis''16( eis'') r8 fisis''16( gis'') r8 bis''16( cis''') r8
 disis'''16\p( eis''') r8 bis''16( cis''') r8 fisis''16( gis'') r8 disis''16( eis'') r8
 bis'16( cis'') r8 fisis'16( gis') r8 disis'16( eis') r8 \clef bass bis16( cis') r8
 bis16\pp( cis') r8 bis,16( cis) r8 bis16( cis') r8 bis,16( cis) r8
 <d fis>4.\f( <cis gis>8) <b,! cis>8 r r <ais, cis>\p gis,8.( ais,16) b,8 bis, cis4 r4
 \clef treble <e' g'>4.\f( <dis' fis'>8) <cis' e'>4 r8 \clef bass <b dis'>8\p
 << { gis8.( cis'16) dis'8 e' } \\ { e4 fis8 fis } >> <b dis'>4 r4 dis'4.\pp( cis'8) b4 r8 ais
 gis8.( ais16) b8\staccato[ b,\staccato] fis8([ cis' dis' cis'] b[ ais gis cis] fis\f[ cis ais, cis] fis,[ cis cis, cis])
 fis,8 cis'8([ dis' cis'] b[ ais gis cis] fis[ fis, dis dis,] b,[ b,, gisis, gisis,,] <ais,, ais,>8) r8
 \clef treble ais'16([ gis'!]) r8 gis'16([ fis']) r8 fis'16([ eis']) r8 eis'16([ dis']) r8 dis'16([ cis']) r8
 \clef bass cis'16([ b]) r8 b16([ ais]) r8 ais16^\markup { \italic "dimin." }([ gisis]) r8 ais16([ gis]) r8
 ais16([ fis]) r8 ais16( eis]) r8 dis,8^\f\sustainDown fisis8\staccato[ ais\staccato dis'\staccato]
 \clef treble fisis'8\staccato[ ais'\staccato dis''\staccato fisis''\staccato] ais''8\sustainUp
 \clef bass << { dis8\p([ fis! dis] fis[ dis eis! cisis]) } \\ { s8 f,4\rest f,4\rest ais,4 } >>
 dis,8^\f\sustainDown fisis8\staccato[ ais\staccato dis'\staccato]
 \clef treble fisis'8\staccato[ ais'\staccato dis''\staccato fisis''\staccato] ais''8\sustainUp
 \clef bass << { dis8\p([ fis! dis] fis[ dis eis cisis]) } \\ { s8 f,4\rest f,4\rest ais,4 } >>
 dis8[ dis( ais ais,] dis[ dis, ais, ais,,] dis\f)[ dis( ais ais,] dis[ dis, ais, ais,,] dis)[ dis( ais ais,]
 dis[ dis, ais, ais,,] dis,\f)[ dis( ais ais,] dis[ dis, cis cis,] b,[ b,, b, b,,]) <g,, g,>8\sustainDown r8 r4\sustainUp
 ais16( b) r8 cis'16( d') r8 \clef treble e'16( f') r8 ais'!16( b') r8 cis''16( d'') r8 e''16( f'') r8 ais''!16( b'') r8 cis'''16( d''') r8
 cis'''16\p( d''') r8 b''16( d''') r8 cis'''16( d''') r8 b''16( d''') r8 cis'''16( d''') r8 ais''!16( b'') r8 fis''!16( g'') r8 e''16( f'') r8
 cis''16( d'') r8 ais'!16( b') r8 cis''16( d'') r8 ais'16( b') r8 cis''16\pp( d'') r8 ais''16( b'') r8
 cis'''16( d''') r8 ais''16( b'') r8 cis''16( d'') r8 ais'16( b') r8
 cis''16( d'') r8 ais'16( b') r8 <g' b'>4.\f( <fis' ais' cis''>8) <fis' ais' cis''>8 r8 r8 \clef bass b,,8\p
 cis,8.( dis,16) e,8[ eis,] fis,4 r \clef treble <a' b'>4.\f( <gis' b'>8) <fis' a' b'>4 r8 \clef bass e,8
 a,,8.( a,16) b,8[ b,,] e,4 r \clef treble <gis' b'>4.\f( <fis' b'>8) <e' b'>8 r8 r
 \clef bass << { <fis b>8 <gis b>4 <gis b>8\staccato[ ais!\staccato] } \\
 { dis,8 cis,8.( dis,16) e,8\staccato fis,\staccato } >> b,8([ fis gis fis] e[ dis cis fis,])
 b,8\f([ fis, dis, fis,] b,,[ fis, fis,, fis,] b,,)[ fis( gis fis] e[ dis cis fis,])
 b,8([ fis, d, fis,] b,,[ fis, cis, eis,!] fis,[ cis a, cis] fis,[ fis d, d] <cis, cis>8) r8 \clef treble b'!16([ a']) r8
 a'16([ gis']) r8 gis'16([ fis']) r8 fis'16([ eis'!]) r8 eis'16([ d']) r8
 d'16([ cis']) r8 \clef bass cis'16([ bis]) r8 cis'16_\markup { \italic "dim." }([ bis]) r8 cis'16([ b]) r8
 cis'16\p([ a]) r8 cis'16([ gis]) r8 fis,8\sustainDown^\f \clef treble ais!8\staccato[ cis'\staccato fis'\staccato]
 ais'!8\staccato[ cis''\staccato fis''\staccato ais''\staccato] cis'''8\staccato\sustainUp
 \clef bass << { fis8^\p([ a fis] a[ fis gis eis]) } \\ { g,8\rest g,4\rest g,4\rest cis4 } >>
 fis,8\sustainDown^\f \clef treble ais!8\staccato[ cis'\staccato fis'\staccato]
 ais'!8\staccato[ cis''\staccato fis''\staccato ais''\staccato] cis'''8\staccato\sustainUp
 \clef bass << { fis8^\p([ a fis] a[ fis gis eis]) } \\ { g,8\rest g,4\rest g,4\rest cis4 } >>
 fis8[ fis( cis' cis] fis[ fis, cis cis,] fis\f) fis[( cis' cis] fis[ fis, cis cis,])
 fis8\p[ fis( cis' cis] fis[ fis, cis cis,] fis\f) fis[( cis' cis] fis[ fis, e e,]
 d8[ d, d d,]) <d, d>8^\ff\sustainDown r8 r4 \clef treble b16\sustainUp([ c']) r8 eis'!16([ fis']) r8
 gis'16([ a']) r8 b'16([ c'']) r8 eis''!16([ fis'']) r8 gis''16([ a'']) r8
 b''16([ c''']) r8 eis'''!16([ fis''']) r8 gis'''16\p([ a''']) r8 eis'''16([ fis''']) r8
 b''16([ c''']) r8 gis''16([ a'']) r8 gis''16([ a'']) r8 eis''16([ fis'']) r8 b'16([ c'']) r8 gis'16([ a']) r8
 eis'16([ fis']) r8 gis'16([ a']) r8 fis'16([ a']) r8 gis''16([ a'']) r8 eis''16([ fis'']) r8 gis''16([ a'']) r8
 eis''16([ fis'']) r8 gis''16([ a'']) r8 eis''16([ fis'']) r8 gis''16([ a'']) r8
 eis''16([ fis'']) r8 gis''16([ a'']) r8 gis'16\pp([ a']) r8 b'16([ c'']) r8 gis'16([ a']) r8 b'16([ c'']) r8
 <d' fis'>4.\f( <cis' eis'! gis'>8) <cis' eis' gis'>4 r8 \clef bass fis,8( b,,8. cis,16 dis,8 bis,, cis,4) r4 \clef treble
 <cis' e' fis'>4.\f( <b dis' fis'>8) <ais cis' fis'>4 r8 \clef bass b,,8( e,8. cis,16 fis,8 fis, b,,4) r4
 \clef treble <dis' fis'>4.\pp( <cis' fis'>8) <b fis'>4 r8 \clef bass ais,8( gis,8.[ ais,16 b,8 cis] fis,8.[ gis,16 ais,8 b,])
 gis,8.([ ais,16 b,8 cis] fis,8.[ gis,16 ais,8 b,]) cis8.([ dis16 e8 fis] gis8.[ ais16 b8 cis'])
 \clef treble dis'8.([ e'16 fis'8 b'] eis'!8.[ fis'16 gis'8 cis''])
 eis'8.\f([ fis'16 gis'8 cis''\sf]] fis'8.[ gis'16 ais'8 cis''\sf] eis'8.[ fis'16 ais'8 cis''\sf]
 dis'8.[ eis'16 fis'8 cis''\sf] cis'8.[ dis'16 eis'8\sf <eis' gis'>])
 <eis' gis'>8.([ <fis' ais'>16 <gis' b'>8]) \clef bass <eis gis>8\p <eis gis>8.( <fis ais>16)
 <gis b>8\staccato( <ais cis'>\staccato) <b cis'>2^\fermata <a c'>2^\fermata
 \new Voice { \stemDown \cadenzaOn
 \times 4/5 { cis,!16\sustainDown^\markup { \italic "cresc." }[ eis, gis, b, cis] }
 \stemUp \times 4/5 { eis16[ gis b cis' eis'] } \stemDown \times 4/5 { cis16[ eis gis b cis'] } s4
 \clef treble \times 4/5 { cis'16[ eis' gis' b' cis''] } s4 r8^\fermata\sustainUp \cadenzaOff  \bar "|" }
 \clef bass << { c4.( cis8 d8[ b, eis cis]) c'4.( cis'8 dis'[ b eis' cis']) } \\ { fis,2\f~ fis,2 fis2\ff~ fis2 } >>
 fis'8\staccato[ cis'\staccato fis\staccato cis\staccato] fis,8\staccato r8 r4 \bar "|."
}
>>

 \layout { }

 \midi { }

}
