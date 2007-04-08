\version "2.10.3"

 \header {
  title = "Piano Sonate Opus 90"
  subtitle = "Dem Grafen Lichnowsky gewidmet"
  composer = "Ludwig Van Beethoven"
  mutopiatitle = "Sonata No. 27 (1st Movement: Mit Lebhaftigkeit)"
  mutopiacomposer = "BeethovenLv"
  mutopiainstrument = "Piano"
  mutopiaopus = "Op. 90"
  date = "1814"
  source = "Breitkopf & Hartel (1862-1865)"
  style = "Classical"
  copyright = "Public Domain"
  maintainer = "Stelios Samelis"
  lastupdated = "2007/January/08"
  version = "2.10.3"
 footer = "Mutopia-2007/01/10-906"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\score {

 \new GrandStaff
 <<
 \new Staff = "up" {
 \clef treble
 \key e \minor
 \time 3/4
 \override Score.MetronomeMark #'transparent = ##t
 \tempo 4 = 156
 \override TextScript #'padding = #1.5
 \partial 4 <g b e' g'>8\f^\markup { \large "Mit Lebhaftigkeit und durchaus mit Empfindung und Ausdruck" } r
 << { g'4.( fis'8) } \\ { <g b e'>2 } >> <g e'>8 r <a fis' a'>8 r8 r4 <fis' a'>4\p
 <fis' a'>4.( g'8) <fis' a'>4\staccato( <g' b'>\staccato) r4 <b d' g' b'>8\f r8
 << { b'4.( a'8) } \\ { <b d' g'>2 } >> <b g'>8 r <cis' ais' cis''>8 r r4 <ais' cis''>4\p
 <ais' cis''>4.( b'8) <ais' cis''>4\staccato( <b' d''>\staccato) r4
 d''4~ d''4( g'' e'' d'' c''!) c''~ c''( a'') c''(~ c'' b') b'(~ b' g'_\markup { \italic "dimin." }) g'(~ g' e')
 \new Voice { e'4~ e'4\pp^\markup { \italic "ritard." } \change Staff = "down" \stemUp g4 e <dis b>2^\fermata }
 <e'' e'''>4\<^\markup { "in tempo" } ~ <e'' e'''>4.( <dis'' dis'''>8 <e'' e'''>4) <c' e' fis'>2 <cis' e' fis'>4\!
 << { fis'4.( g'8\> a' g' fis'4 e'\!) } \\ { <a! dis'>2. s2 } >>
 <e'' e'''>4\<~ <e'' e'''>4.( <dis'' dis'''>8 <e'' e'''>4\!) <c' e' fis'>2\fp <cis' e' fis'>4
 << { fis'4.( a'8 g' fis' <g e'>) } \\ { <a! dis'>2._\markup { \italic "ritard." } s4 } >> r4^\fermata <b b'>4\pp^\markup { "in tempo." }
 <b b'>2 <e' e''>4 <e' e''>2 <b' b''>4 <b' b''>2 <e'' e'''>4
 <e'' e'''>2 <f'' b'' d''' f'''>8\f r8 <f'' b'' d''' f'''>4.\sf e'''16 d''' c''' b'' a'' g''
 f''16 e'' d'' c'' \times 4/6 { b'16[ a' g' f' e' d'] } \times 4/5 { c'16[ b a g fis!] } g8 r r4 <g d' f'>8 r
 <g c' e'>8 r r4 <d'' gis'' b'' d'''>8 r <d'' gis'' b'' d'''>4.\sf c'''16 b'' a'' gis'' fis''! e''
 d''16 c'' b' a' \times 4/6 { gis'16[ fis' e' d' c' b] } \times 4/5 { a16[ gis fis e dis] }
 e4 r <e b d'!>8 r <e a c'>8 r r4 bes''4\p bes''4.( a''16 g'' f'' ees'' d'' c'' bes' a' g' f' \times 2/3 { ees'8[ d' c'] } bes4)
 bes2.~ bes2 g'4 g'2 <g' cis''>4 <g' cis''>2
 << { g''4 g''2( fis''4 eis''2 fis''4) fis''2. } \\ { <cis'' e''>4 \setTextCresc <cis'' e''>2.\<~
 \once \override Stem #'X-offset = #2.0 \once \override NoteHead #'X-offset = #2.0
 <cis'' e''>2 <cis'' e''>4\! <b' d''>2.\f } >>
 <b' fis'' b''>2.\sf <fis' b'>8 r <c'! c''!>8 r r4 <g' c''>8 r <dis' dis''> r r4
 <a' dis''>8 r <e' e''> r r4 <b' e''>8 r <eis' eis''> r r4
 <gis' b' e''!>8\pp[ <gis' b' eis''> <gis' b' eis''>\staccato <gis' b' eis''>\staccato <gis' b' eis''>\staccato <gis' b' eis''>\staccato]
 <gis' b' eis''>8_\markup { \italic "cresc." }[ <gis' b' eis''> <gis' b' eis''> <gis' b' eis''> <gis' b' eis''> <gis' b' eis''>]
 <fis'' ais'' cis''' e'''! fis'''>8\ff <g'' ais'' cis''' e''' g'''> <g'' ais'' cis''' e''' g'''>\staccato
 <g'' ais'' cis''' e''' g'''>\staccato <g'' ais'' cis''' e''' g'''>\staccato <g'' ais'' cis''' e''' g'''>\staccato]
 <g'' ais'' cis''' e''' g'''>8^\markup { \italic "ritard." }_\markup { \italic "dimin." }[ <g'' ais'' cis''' e''' g'''>
 <g'' ais'' cis''' e''' g'''> <g'' ais'' cis''' e''' g'''> <g'' ais'' cis''' e''' g'''> <g'' ais'' cis''' e''' g'''>]
 <g'' g'''>4\p^\markup { "a tempo." }( <fis'' fis'''>2)~ <fis'' fis'''>4 <b' b''>2~ <b' b''>4 <fis' fis''>2~ <fis' fis''>4 <b b'>2~ b'4( g' fis')
 fis'2( ais'4) r8 g''8( g'''4. fis'''8) r8 fis'''8( cis'''4. b''8) r8 b''8( g''4. fis''8) r8 fis''8( cis''4. b'8) b'4( g' fis')
 fis'8([ d' b g fis ais]) b4 r r << { <g b>2.\sfp\( c'!2 g'4~ g'2( fis'4)\) } \\ { s2. g2. <ais cis' e'>2. } >> <b d' fis'>4 r r
 << { <g b>2.\sfp\( c'!2 g'4~ g'2( fis'4)\) } \\ { s2. g2. <ais cis' e'>2. } >> r4 r
 << { g'4(~ g'2 fis'4) } \\ { s4 <b d'>2._\markup { \italic "dimin." } } >> r4 r << { g'4(~ g'2 ais'4) } \\ { s4 <cis' e'>2. } >>
 <b d' b'>4\pp r r <b d' b'> r r <b d' b'> r r b'2.\pp b'2.
 << { b''4\rest b''4\rest a''4\staccato a''4.( g''8\staccato) fis''8 g''8\rest <g'' b''>4 a''\rest <g'' b''>
 <gis'' b''>4.( a''8) <gis'' b''>8 a''8\rest <a'' c'''>4 } \\ { b'2 b'8[ b'] b'[ b' b' b' b' b'] b'[ b' b' b' b' b'] b'[ b' b' b' b' b'] c''4 } >>
 r4 <c'' c'''>4_\markup { \italic "cresc." } <c'' c'''>4.( <b' b''>8) <a' a''>8 r <d'' d'''>4 r <d'' d'''> <d'' d'''>4.( <c'' c'''>8) <d'' d'''>8 r
 <ees'' ees'''>4.\f( <d'' d'''>8) <ees'' ees'''>8 r ees'4.\sf( d'8) ees'8 r <ees' ges'>4.\sf( <d' f'>8) <ees' ges'>8 r
 <ees'' ges''>4.\sf( <d'' f''>8) <ees'' ges''>8 r <c'' c'''>4.\sf( <b' b''>8) <c'' c'''>8 r a4.\sf( gis8) a8 r
 <fis''! fis'''!>4.( <eis'' eis'''>8) <fis'' fis'''>8 r <fis' a' c''>4. <fis' a' b'>8 <fis' a' c''>8 r
 <f' aes' b'>4 r8 <aes' b' f''>8\p\staccato <g' c'' e''!>4\staccato
 <fis'! a' ees''>4\staccato r8 <fis' a' ees''>8\staccato <f' b' d''>4\staccato
 <e'! g' cis''>4\staccato r8 <ees' g' c''>8\staccato <d' g' b'>4\staccato
 <cis' e'! bes'>8\staccato r <c' e' a'>\staccato r <c' ees' aes'>\staccato r
 \setTextCresc g'8\< r fis'! r f' r e' r ees' r d' r cis' r c' r b\! r
 bes_\markup { \italic "dimin." } r a r aes r aes8\pp( g g'2)~ g'2 g'4~ g'4( c'' a' g' f') f'(~ f' d'' f'~ f' e') e'16 g' c'' e''
 f''16 c'' a' f' a' c'' f'' a'' a'' d'' a'' d''' a'' d'' a'' bes'' g'' d'' g'' bes'' g'' des'' g'' bes'' g'' c'' g'' bes'' e'' c'' e'' g'' g'' e'' g'' c'''
 g''16 e'' g'' c''' a'' f'' a'' c''' a''_\markup { \italic "cresc." } f'' a'' c''' \bar "||"
 \key a \minor
 a''16 f'' a'' d''' a'' f'' a'' d''' bes'' f'' bes'' d''' b''! f'' b'' d''' b'' e'' b'' d''' b'' e'' b'' d'''
 b'' e'' b'' d''' b'' e'' b'' d''' b'' e'' b'' d''' b'' e'' b'' c''' a'' e'' a'' c''' a'' e'' a'' c'''
 a'' d'' a'' b'' gis'' d'' gis'' b'' gis'' d'' gis'' b'' gis'' c'' gis'' b'' gis'' a'' c'' a'' gis'' a'' c'' a''
 a'' b' a'' b'' a'' b' a'' b'' a'' b' a'' b'' a'' b' a'' b'' a'' b' a'' b'' a'' b' a'' b''
 a'' b' a'' b'' a'' b' a'' b'' a'' b' a'' b'' g'' b' g'' b'' g'' b' g'' b'' b'' e'' b'' e'''
 c''' e'' c''' e''' c''' e'' c''' e''' c''' e'' c''' e''' cis''' g'' cis''' e''' cis''' g'' cis''' e''' cis''' g'' cis''' e''' \bar "||"
 \key e \minor
 b''16_\markup { \italic "piu forte" } g'' b'' e''' g''' fis''' e''' dis''' e''' dis''' e''' fis'''
 g''' fis''' e''' dis''' g''' fis''' e''' dis''' g''' fis''' e''' dis''' g'''\ff fis''' e''' dis''' e'''8 r r4 g'''8\p([ fis''' e''' dis'''] e'''4)
 g'''4_\markup{ "sempre" }( fis''' e''' dis'''_\markup { "di  -  mi  -  nu  -  en  -  do" } e''') r g'''2( fis'''4~ fis''' e''') r
 g'2\<^( fis'8\! e'\> e'4\!) r r r4 g'4\pp( fis'8 e') e'8 r r g'8([ fis' e']) r8 g'''([ fis''' e''']) r g'8( fis' e') r4 g'8\f r8
 << { g'4.( fis'8) } \\ { <g b e'>2 } >> <g e'>8 r <a fis' a'>8 r8 r4 <fis' a'>4\p(
 <fis' a'>4. g'8) <fis' a'>4\staccato( <g' b'>\staccato) r4 <b d' g' b'>8\f r8
 << { b'4.( a'8) } \\ { <b d' g'>2 } >> <b g'>8 r <cis' ais' cis''>8 r r4 <ais' cis''>4\p
 <ais' cis''>4.( b'8) <ais' cis''>4\staccato( <b' d''>\staccato) r4
 d''4(~ d''4 g'' e'' d'' c''!) c''~ c'' a'' c''~ c''( b') b'(~ b' g'_\markup { \italic "dimin." }) g'(~ g' e')
 \new Voice { e'4~ e'4\pp^\markup { \italic "ritard." } \change Staff = "down" \stemUp g4 e <dis b>2^\fermata }
 <e'' e'''>4\<^\markup { "in tempo" } ~ <e'' e'''>4.( <dis'' dis'''>8 <e'' e'''>4\!)
 << { fis'2 fis'4 fis'4.( g'8\> a' g' fis'4 e'\!) } \\ { <c' e'>2 <cis' e'>4 <a! dis'>2. s2 } >>
 <e'' e'''>4\<~ <e'' e'''>4.( <dis'' dis'''>8 <e'' e'''>4\!)
 << { fis'2( fis'4 fis'4. a'8 g' fis' <g e'>) } \\
 { <c' e'>2\fp <cis' e'>4 <a! dis'>2._\markup { \italic "ritard." } s4 } >> r4^\fermata <g g'>4\pp^\markup { "a tempo." }
 <g g'>2 <c' c''>4 <c' c''>2 <g' g''>4 <g' g''>2 <c'' c'''>4
 <c'' c'''>2 <f'' d''' f'''>8\f r8 <f'' d''' f'''>4.\sf e'''16 d''' c''' b'' a'' g''
 f''16 e'' d'' c'' \times 4/6 { b'16[ a' g' f' e' d'] } \times 4/5 { c'16[ b a g fis!] } g8 r r4 <g d' f'>8 r
 <g c' e'>8 r r4 <d'' gis'' b'' d'''>8 r <d'' gis'' b'' d'''>4.\sf c'''16 b'' a'' gis'' fis''! e''
 d''16 c'' b' a' \times 4/6 { gis'16[ fis' e' d' c' b] }
 \new Voice { \change Staff="down" \stemUp \times 4/5 { a16[ gis fis e dis] } e4 } r4 <e b d'>8 r <e a c'>8 r r4 c'''4\p
 c'''4. bes''16 a'' g'' f'' e'' d'' c''16 bes' a' g' \times 4/5 { f'16[ e' d' c' bes] } a4
 a2 <a dis'>4 <a dis'>2 <dis' a'>4 <dis' a'>2 <dis' a' dis''>4 <dis' a' dis''>2
 <c'' dis'' a'' cis'''>4( \setTextCresc <c'' dis'' a'' cis'''>2\< <b' dis'' a'' b''>4 <ais' dis'' ais''>2 <b' dis'' a'' b''>4\!)
 <b' e'' b''>2.\f <e'' e'''>2.\sf <b' d'' e''>8 r <f' c'' f''> r r4 <c'' e'' f''>8 r <gis' d'' gis''> r r4
 <gis' d'' e'' gis''>8 r <a' e'' a''> r r4 <e'' a''>8 r <ais' e'' g'' ais''> r r4
 <cis'' e'' a''!>8\pp[ <cis'' e'' ais''> <cis'' e'' ais''>\staccato <cis'' e'' ais''>\staccato
 <cis'' e'' ais''>\staccato <cis'' e'' ais''>\staccato] <cis'' e'' ais''>_\markup { \italic "cresc." }[ <cis'' e'' ais''>
 <cis'' e'' ais''> <cis'' e'' ais''> <cis'' e'' ais''> <cis'' e'' ais''>]
 #(set-octavation 1)
 <b'' b'''>8\ff[ <c'''! c''''!> <c''' c''''>\staccato <c''' c''''>\staccato <c''' c''''>\staccato <c''' c''''>\staccato]
 <c''' c''''>_\markup { \italic "dimin." }^\markup { \italic "ritard." }[ <c''' c''''> <c''' c''''> <c''' c''''> <c''' c''''> <c''' c''''>]
 <c''' c''''>4\p( <b'' b'''>2)~ <b'' b'''>4 #(set-octavation 0)
 <e'' e'''>2~ <e'' e'''>4 <b' b''>2~ <b' b''>4 e''2~ e''4( c'' b') b'2( dis''4 e''8) c'' c'''4.( b''8)
 r8 b''8 fis''4.( e''8) r8 e''8 c''4.( b'8) r8 b'8( fis'4. e'8) e'4( c' b)
 \clef bass b8( g e c b, dis) e4 r r \clef treble << { <c' e'>2.\sfp( f'2 c''4~ c''2 b'4) b'4 } \\ { s2. c'2. <dis' fis'! a'>2. <e' g'>4 } >> r4 r4
 \clef bass << { e2.( f2 c'4~ c'2 b4) } \\ { c2.\sfp c2. <dis fis! a>2. } >>
 r4 r << { \stemDown c'4(~ \stemUp c'2 b4) } \\ { s4 <e g>2._\markup { \italic "dimin." } } >>
 r4 r << { \stemDown c'4(~ \stemUp c'2 dis'4) } \\ { s4 <fis a>2. } >>
 \clef treble <g e'>4 r4 << { \stemDown c''4(~ \stemUp c''2 b'4) } \\ { s4 <dis' fis' a'>2. } >>
 r4 r << { \stemDown c''4(~ \stemUp c''2 b'4) } \\ { s4 <e' g'>2. } >>
 r4 r << { \stemDown c''4(~ \stemUp c''2 dis''4) e'' } \\ { s4 <fis' a'>2. g'4 } >>
 r4 << { c'''4(~ c'''2 b''4) } \\ { c''4\rest <dis'' fis'' a''>2. } >> R2. r4 r <dis'' fis''> <e'' g''>4.\pp <dis'' fis''>8 e''4
 <fis'' a''>4^\markup { \italic "ritard  --   --   --   --" } r <fis'' a''> <fis'' a''>4. g''8 <fis'' a''>4
 <g'' b''>4^\markup { \italic "dan  --   --   --   --   do" } r b'' b''4. a''8 <g'' b''>4 <a'' c'''>4 r4^\fermata
 <e'' e'''>4^\markup { "a tempo" } ~ <e'' e'''>4.\<( <dis'' dis'''>8 <e'' e'''>4\!)
 << { fis'2 fis'4 fis'4.( g'8\> a' g' fis'4 e'\!) } \\ { <c' e'>2 <cis' e'>4 <a! dis'>2. s2 } >>
 <e'' e'''>4~ <e'' e'''>4.\<( <dis'' dis'''>8 <e'' e'''>4\!)
 << { fis'2^\markup { \italic "dimin." } fis'4 fis'4.( a'8 g' fis') } \\ { <c' e'>2 <cis' e'>4\pp <a! dis'>2. } >>
 <g e'>4 r4^\fermata \bar "|."
}

 \new Staff = "down" {
 \clef bass
 \key e \minor
 \time 3/4
 \partial 4 <e, e>8\f r <e, e>2 <e, e>8 r <d, d>8 r r4 d'4\p <c' d'>4. <b d'>8 <a c'>4\staccato( <g b>4\staccato) r4
 <g, g>8\f r <g, g>2 <g,, g,>8 r <fis,, fis,>8 r r4 \clef treble fis'4 <e' fis'>4. <d' fis'>8
 <cis' e'>4\staccato( <b d'>4\staccato) r4 r << { <b g'>2.~ g'2 fis'4~ fis'2 } \\ { d'2 e'4~ <a e'>2 ees'4( d'2) } >> 
 \clef bass \new Voice { fis'4( g'2 g4 e2 e'4 c'2) c4~ \stemDown <c, c>2. <b,, b,>2_\fermata } r4
 << { \stemDown <g, e b>2.~ \stemUp e2. } \\ { s2. a,2 ais,4 } >> b,2.
 << { g2 s4 <e b>2. } \\ { c2( b,8 a,) g,2 gis,4 } >> a,2 ais,4 <b,, b,>2. <e, e>4 r4^\fermata <b,, b,>4
 <b,, b,>2 <e, e>4 <e, e>2 <b, b>4 <b, b>2 <e e'>4 <e e'>2 <g b d' f'>8\f r
 <g b d' f'>4.\sf r8 r4 R2. r4 r <b,, b,>8 r <c, c>8 r r4 <e gis b d'>8 r <e gis b d'>4.\sf r8 r4 R2.
 r4 r <gis,, gis,>8 r <a,, a,>8 r r4 bes4\p bes2.~ bes4 r r r4 r \clef treble e'4
 e'2 <ais e'>4 <ais e'>2 <ais e'>4 <ais e'>2 
 << { g'4 g'2( fis'4 eis'2 fis'4) } \\
 { <ais cis' e'>4 <ais cis' e'>2.~
 \once \override Stem #'X-offset = #2.0
 \once \override NoteHead #'X-offset = #2.0
 <ais cis' e'>2 <ais cis' e'>4 } >>
 <b d' fis'>8[ <b d' fis'> <b d' fis'> <b d' fis'> <b d' fis'> <b d' fis'>] 
 \clef bass <d fis b>8[ <d fis b> <d fis b> <d fis b> <d fis b> <d fis b>]
 <dis fis a>8[ <dis fis a> <e g> <e g> <e g> <e g>] <e g b>[ <e g b> <fis a> <fis a> <fis a> <fis a>]
 <fis a c'!>8[ <fis a c'> <g b> <g b> <g b> <g b>] <gis b>[ <gis b d'> <gis b cis'> <gis b cis'> <gis b cis'> <gis b cis'>]
 cis'8\pp[ cis' cis' cis' cis' cis'] cis'[ cis' cis' cis' cis' cis']
 <fis ais cis' fis'>8\ff[ <fis ais cis' fis'> <fis ais cis' fis'> <fis ais cis' fis'> <fis ais cis' fis'> <fis ais cis' fis'>]
 <fis ais cis' e'>8[ <fis ais cis' e'> <fis ais cis' e'> <fis ais cis' e'> <fis ais cis' e'> <fis ais cis' e'>]
 b,16\p d' fis d' cis e' fis e' d fis' fis fis' b, d' fis d' cis e' fis e' d fis' fis fis' b, d' fis d' cis e' fis e' d fis' fis fis'
 b, d' fis d' cis e' fis e' d fis' fis fis' e d' b d' eis d' b d' fis d' b d' fis d' b d' fis d' b d' fis e' cis' e'
 b, d' fis d' cis e' fis e' d fis' fis fis' b, d' fis d' cis e' fis e' d fis' fis fis' b, d' fis d' cis e' fis e' d fis' fis fis'
 b, d' fis d' cis e' fis e' d fis' fis fis' e d' b d' eis d' b d' fis d' b d'
 fis2 <fis,, fis,>4 <b,, b,>8\f\staccato[ <cis, cis>\staccato <d, d>\staccato <e, e>\staccato] <fis, fis>4\sf~ <fis, fis>2.
 <e, e>2. <fis, fis>2. <b,, b,>8\f\staccato[ <cis, cis>\staccato <d, d>\staccato <e, e>\staccato] <fis, fis>4\sf~ <fis, fis>2.
 <e, e>2. <fis, fis>2. R2. <b,, b,>2. R2. <fis,, fis,>2. <b,, b,>4\pp r r <b,, b,> r r <b,, b,> r r R2. R2. r4 r4 \clef treble <fis' a'>\staccato
 <fis' a'>4 r <fis' a'>8 r <e' g'>4 r <e' g'> <d' f'> r <d' f'>8 r <c' e'>8 e'[ e' e' e' e']
 \clef bass << { e'8[ e' e' e' e' e'] f'![ f' f' f' f' f'] f'[ f' f' f' f' f'] } \\
 { <a c'>4 a,4\rest <a c'>8 b,8\rest <aes b>4 b,4\rest <aes b>4 <aes bes> a,4\rest <aes bes>8 b,8\rest } >>
 <g bes ees'>8[ <g bes ees'> <g bes ees'> <g bes ees'> <g bes ees'> <g bes ees'>]
 <ges bes>[ <ges bes> <ges bes> <ges bes> <ges bes> <ges bes>]
 <ees ges>[ <ees ges> <ees ges> <ees ges> <ees ges> <ees ges>] <c ees>[ <c ees> <c ees> <c ees> <c ees> <c ees>]
 <a, c>[ <a, c> <a, c> <a, c> <a, c> <a, c>] <fis,! a, c>[ <fis, a, c> <fis, a, c> <fis, a, c> <fis, a, c> <fis, a, c>]
 <ees, fis,! a, c>8[ <ees, fis, a, c> <ees, fis, a, c> <ees, fis, a, c> <ees, fis, a, c> <ees, fis, a, c>]
 <d, fis, a, c>[ <d, fis, a, c> <d, fis, a, c> <d, fis, a, c> <d, fis, a, c> <d, fis, a, c>] <g,, g,>8[ <g,, g,> <g,, g,>] r r4
 r8 <g,, g,>[ <g,, g,>] r r4 r8 <g,, g,>[ <g,, g,>] r r4 r8 <g,, g,> r <g,, g,> r <g,, g,>
 r8 <g,, g,> r <a,, a,> r <b,, b,> r <c, c> r <cis, cis> r <d, d> r <ees, ees> r <e, e> r <f, f> r <fis,! fis!> r <g, g> r <g, g> R2.
 \clef treble f'2^\p <b f'>4( <c' e'> c' cis' \clef bass d'4 a bes b! g d' des' c') <bes c'>4~ <a c'>_( <f f'> <fis d'>)
 <g c'>4( <d bes>) << { bes4~ bes g' bes~ bes a } \\ { f4 e a,4\rest c f f } >> a,4~ \bar "||"
 \key a \minor
 a,4 d4( bes, a, gis,) gis, gis,4 << { e2 } \\ { e4\sf gis, } >> a,4 << { e2 } \\ { e4\sf a, } >> b,4 << { e2 } \\ { e4\sf b, } >>
 c4 << { e2 } \\ { e4\sf c } >> dis4 << { b2 } \\ { b4\sf dis } >> e4 << { c'2 } \\ { c'4\sf e } >> fis4 << { dis'2 } \\ { dis'4\sf fis } >>
 g4 << { e'2 } \\ { e'4\sf g } >> a4 << { fis'2 } \\ { fis'4\sf a } >> ais4 << { g'2 } \\ { g'4\sf ais } >> \bar "||"
 \key e \minor
 \clef treble << { b4 e' g' } \\ { b2. } >> b'4 e'' g'' r4 g''16\ff fis'' e'' dis'' e''8 r r4 g''8\p([ fis'' e'' dis''] e''4) r
 g''4( fis'' e'' dis'' e'') r r g''2( fis''4~ fis'' e'') r4 g'2\<^( fis'8\!\> e'\! e'4) r4 g'4( fis'8[ e']) e'8 r r g''8( fis'' e'') r g''( fis'' e'')
 \clef bass r8 g8( fis e) e4
 <e, e>2 <e, e>8 r <d, d>8 r r4 d'4\p <c' d'>4. <b d'>8 <a c'>4\staccato( <g b>4\staccato) r4 <g, g>8\f r
 <g, g>2 <g,, g,>8 r <fis,, fis,>8 r r4 \clef treble fis'4\p <e' fis'>4. <d' fis'>8 <cis' e'>4\staccato( <b d'>4\staccato) r4 r
 << { <b g'>2.~ g'2 fis'4~ fis'2 } \\ { d'2 e'4~ <a e'>2 ees'4( d'2) } >>
 \clef bass \new Voice { fis'4( g'2 g4 e2 e'4 c'2 c4)~ \stemDown <c, c>2. <b,, b,>2_\fermata } r4
 << { \stemDown <g, e b>2.~ \stemUp e2. } \\ { s2. a,2 ais,4 } >> b,2.
 << { g2 a4\rest <e b>2. } \\ { c2( b,8 a,) g,2 gis,4 } >> a,2 ais,4 <b,, b,>2. <e, e>4 r4^\fermata <g,, g,>4
 <g,, g,>2 <c, c>4 <c, c>2 <g, g>4 <g, g>2 <c c'>4 <c c'>2 \clef treble <b d' f' g'>8\f r <b d' f' g'>4.\sf r8 r4 R2.
 r4 r \clef bass <b,, b,>8 r <c, c>8 r r4 <e gis b d'>8 r <e gis b d'>4.\sf r8 r4 R2. g,4\rest r4 <gis,, gis,>8 r
 <a,, a,>8 r r4 <f, c a>8 r <f, c a>2.~ <f, c a>2 <f, c>4
 <f, c>2 <f, c>4 <f, c>2 <fis, c a>4 <fis, c a>2 <fis, c a>4 <fis, c a>2 <fis, c a>4 <fis, b, a>2.~ <fis, b, a>2 <fis, b, a>4
 <g, b, g>8 <g b>8[ <g b> <g b> <g b> <g b>] <gis b>[ <gis b> <gis b> <gis b> <gis b> <gis b>]
 <gis b d'>[ <gis b d'> <a c'> <a c'> <a c'> <a c'>] <a c' e'>[ <a c' e'> <b d'> <b d'> <b d'> <b d'>]
 \clef treble <b d' e'>[ <b d' e'> <c' e'> <c' e'> <c' e'> <c' e'>] <c' e'>[ <cis' e'> <cis' e'> <cis' e'> <cis' e'> <cis' e'>]
 fis'8\pp[ fis' fis' fis' fis' fis'] fis'[ fis' fis' fis' fis' fis']
 <b dis' fis' a'>8\ff[ <b dis' fis' a'> <b dis' fis' a'> <b dis' fis' a'> <b dis' fis' a'> <b dis' fis' a'>]
 <b dis' fis' a'>8[ <b dis' fis' a'> <b dis' fis' a'> <b dis' fis' a'> <b dis' fis' a'> <b dis' fis' a'>]
 e16 g' b g' fis a' b a' g b' b b' e g' b g' fis a' b a' g b' b b' e g' b g' fis a' b a' g b' b b' e g' b g' fis a' b a' g b' b b'
 a16 g' e' g' ais g' e' g' b g' e' g' b g' e' g' b g' e' g' b a' fis' a'
 \clef bass e,16 g b, g fis, a b, a g, b b, b e, g b, g fis, a b, a g, b b, b e, g b, g fis, a b, a g, b b, b e, g b, g fis, a b, a g, b b, b
 a,16 g e g ais, g e g b, g e g
 b,2 b,,4 e,8\f\staccato[ <fis, fis>\staccato <g, g>\staccato <a, a>\staccato] <b, b>4\sf~ <b, b>2. <a, a>2. <b, b>2.
 <e,, e,>8\f\staccato[ <fis,, fis,>\staccato <g,, g,>\staccato <a,, a,>\staccato] <b,, b,>4\sf~ <b,, b,>2. <a,, a,>2. <b,, b,>2.
 R2. <e, b,>2. R2. <b,, b,>2. e,4 r r <b, b>2. R2. <e b>2. R2. <b, b>2. e4 r r \clef treble b'2. r4 r c''4\<(~ c''4\! b'\>) <fis' a'>\!
 <e' g'>4.\pp <fis' a'>8 g'4 <d'! fis' a'>4 r d'' <c'' d''>4. <b' d''>8 <a' c''>4 <g' b'>4 r g'' g''4. fis''8 e''4 dis'' r4^\fermata r
 \clef bass <g, e b>2. a,2 ais,4 b,2. <c g>2 <b,, b,>8( <a,, a,> <g,, g,>2 <gis,, gis,>4 <a,, a,>2 <ais,, ais,>4 <b,, b,>2.)
 e,4 r4^\fermata \bar "|."
}
>>

 \layout { }

 \midi { }

}
