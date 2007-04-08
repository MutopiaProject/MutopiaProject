\version "2.10.3"

 \header {
  title = "Six Variations - Opus 76"
  subtitle = "on an Original Theme"
  composer = "Ludwig Van Beethoven"
  mutopiatitle = "Six Variations"
  mutopiacomposer = "BeethovenLv"
  mutopiaopus = "Op. 76"
  mutopiainstrument = "Piano"
  date = "1809"
  source = "Breitkopf & Hartel (1862-1865)"
  style = "Classical"
  copyright = "Public Domain"
  maintainer = "Stelios Samelis"
  lastupdated = "2007/March/03"
  version = "2.10.3"
 footer = "Mutopia-2007/03/04-934"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\score {

 \new PianoStaff
 <<
 \set PianoStaff.instrumentName = "TEMA."
 \new Staff = "up" {
 \clef treble
 \key d \major
 \time 2/4
 \override Score.MetronomeMark #'transparent = ##t
 \tempo 4 = 88
 \once \override TextScript #'padding = #2.0
 \repeat volta 2 {
 <fis' a'>8\f^\markup { \bold "Allegro risoluto." }[( <d' fis'>) <d' fis'>\staccato <d' fis'>\staccato]
 <fis' a'>8\sf[( <d' fis'>) <d' fis'>\staccato] <d'' fis''>\staccato
 <cis'' e''>16 <b' d''> <a' cis''> <g' b'> <fis' a'>8\staccato <e' g'>\staccato
 <d' fis'>8\staccato <e' g'>\staccato <fis' a'>4\sf
 <fis' a'>8\sf[( <d' fis'>) <d' fis'>\staccato <d' fis'>\staccato] <fis' a'>8\sf[( <d' fis'>) <d' fis'>\staccato] <d'' fis''>\staccato
 <cis'' e''>16 <b' d''> <a' cis''> <g' b'> <fis' a'>8\staccato <cis' e' ais'>\staccato }
 \alternative { { <b d' b'>4\sf <a! e' a'!> } { <b d' b'>4 r4 } }
 \repeat volta 2 {
 <fis' d''>8\sf[( <d' b'>) <d' b'>\staccato <d' b'>\staccato] <g' e''>8\sf[( <e' cis''>) <e' cis''>\staccato <e' cis''>\staccato]
 <e' g' e''>8\sf( <e' g' cis''>) <e' g' e''>8\sf( <e' g' cis''>) <fis' a' fis''>8\sf( <fis' a' d''>) <fis' a' fis''>8\sf( <fis' a' d''>)
 <fis' a'>8\sf[( <d' fis'>) <d' fis'>\staccato <d' fis'>\staccato] <fis' a'>8\sf[( <d' fis'>) <d' fis'>\staccato] <d'' fis''>\staccato
 <cis'' e''>16 <b' d''> <a' cis''> <g' b'> <fis' a'>8\staccato <e' g' cis''>\staccato <d' fis' d''>4 r }
 \break

 \once \override TextScript #'padding = #2.5
 \repeat volta 2 {
 a''16\p\<^\markup { \bold "VAR. I." }( b'' a'' g''\! fis''\> g'' a'' gis''\! a''\< b'' a'' g''!\! fis''\> fis''' e''' d'''\!
 cis''' c''' b'' d''' a'' gis'' g'' a'' g'' fis'' a'' g'' a'' g'' a'' gis''
 a'' b'' a'' g''! fis'' g'' a'' gis'' a'' b'' a'' g''! fis'' fis''' e''' d''' cis''' c''' b'' d''' a'' gis'' a'' ais'' }
 \alternative { { b''16 cis'''! a''! b'' a'' g''! fis'' g'') } { b''16 cis'''! b'' ais'' b'' ais'' b'' cis''' } }
 \repeat volta 2 {
 d'''16( e''' d''' cis''' cis''' b'' cis''' d''' e''' fis''' e''' d''' d''' cis''' d''' e''')
 e'''( fis''' e''' d''' d''' cis''' d''' e''' fis''' g''' fis''' e''' e''' d''' e''' fis''')
 << { s2 s2 s4 s8 cis'''!8 } \\ { a''16( b'' a'' g'' fis'' g'' a'' gis'' a'' b'' a'' g''! fis'' fis''' e''' d''' cis''' c''' b'' d''' a''[ d'''] g'' a'') } >> }
 \alternative { { <fis'' d'''>16( e''' d''' cis''' b'' ais'' b'' cis''') } { <fis'' d'''>16( e''' d''' cis''' d'''8) r8 } }
 \break

 \once \override TextScript #'padding = #1.5
 \repeat volta 2 {
 <fis' a'>16\f^\markup { \bold "VAR. II." }( a) <d' fis'>( a) <d'' fis''>8\sf\staccato r <fis' a'>16( a) <d' fis'>( a) <d'' fis''>8\sf\staccato r
 e'16\p[ r d' r cis' r b] r a[ r g r fis r e] r
 <fis' a'>16\f( a) <d' fis'>( a) <d'' fis''>8\sf\staccato r <fis' a'>16( a) <d' fis'>( a) <d'' fis''>8\sf\staccato r
 e'16\p[ r d' r cis' r b] r a[ r ais r b r cis'] r }
 \repeat volta 2 {
 <b d'>16\f( fis) b( fis) <b' d''>8\sf\staccato r <cis' e'>16( a) cis'( a) <cis'' e''>8\sf\staccato r
 <cis' e'>16\sf( a) r8 <cis'' e''>16\sf( a') r8 <d' fis'>16\sf( a) r8 <d'' fis''>16\sf( a') r8
 <fis' a'>16( a) <d' fis'>( a) <d'' fis''>8\sf\staccato r <fis'' a''>16( a') <d'' fis''>( a') <d''' fis'''>8\sf\staccato r
 <e'' e'''>16\p[ r <d'' d'''> r <cis'' cis'''> r <b' b''>] r <a' a''>[ r <cis'' e'' cis'''>] r <d'' fis'' d'''>8 r }
 \break

 \time 6/8
 \once \override TextScript #'padding = #1.5
 \repeat volta 2 {
 <fis'' a''>8^\markup { \bold "VAR. III." }_\markup { \italic "sempre dolce" }( <e'' g''> <d'' fis''>)
 <d'' fis''>\staccato \grace { g''16[ fis'' e''] } <d'' fis''>8( <e'' g''>
 <fis'' a''> <e'' g''> <d'' fis''>) <d'' fis''>\staccato <d''' fis'''>( <cis''' e'''>
 <b'' d'''> <a'' cis'''> <g'' b''> <fis'' a''> <g'' b''> <e'' g''>) <d'' fis''>( <e'' g''> <eis'' gis''> <g'' b''> <fis'' a''>) <fis'' a''>\staccato
 <fis'' a''>8( <e'' g''> <d'' fis''>) <d'' fis''>\staccato \grace { g''16[ fis'' e''] } <d'' fis''>8( <e'' g''>
 <fis'' a''> <e'' g''> <d'' fis''>) <d'' fis''>\staccato <d''' fis'''>( <cis''' e'''> }
 \alternative { { <b'' d'''>8 <e'' cis'''> <d'' b''>) <d'' b''>( <e'' cis'''> <cis'' ais''>)
 \set doubleSlurs = ##t <e'' cis'''>4( <d'' b''>8) r r \set doubleSlurs = ##f <a'! e'' a''!> }
 { <b'' d'''>8( <e'' cis'''> <d'' b''>) <d'' b''>( <e'' cis'''> <cis'' ais''>)
 \set doubleSlurs = ##t <e'' cis'''>4( <d'' b''>8) r \set doubleSlurs = ##f <d'' b''>( <e'' cis'''> } }
 \repeat volta 2 {
 <fis'' d'''>8 <e'' cis'''> <d'' b''>) <d'' b''>\staccato <d'' b''>( <e'' cis'''> <fis'' d'''> <e'' cis'''> <d'' b''>)
 <d'' b''>\staccato \grace { d'''16[ cis''' b''] } <e'' cis'''>8( <fis'' d'''> <g'' e'''> <fis'' d'''> <e'' cis'''>)
 <e'' cis'''>\staccato \grace { b''16[ a'' g''] } <e'' cis'''>8( <fis'' d'''>
 <g'' e'''> <fis'' d'''> <e'' cis'''>) <e'' cis'''>\staccato <d'' fis''>( <e'' g''> <fis'' a''> <e'' g''> <d'' fis''>) <d'' fis''>\staccato
 <fis'' d'''>8([ <g'' e'''>] <a'' fis'''> <g'' e'''> <fis'' d'''>) <fis'' d'''>\staccato_\markup { \italic "dolce" }
 <d''' fis'''>([ <cis''' e'''>] <b'' d'''> <a'' cis'''> <g'' b''> <fis'' a''> <g'' b''> <e'' cis'''> }
 \alternative { { <g'' e'''>4 <fis'' d'''>8 r <d'' b''>( <e'' cis'''>) } { <g'' e'''>4( <fis'' d'''>8) <fis'' d'''>4 r8 } }
 \break

 \time 2/4
 \once \override TextScript #'padding = #1.5
 \repeat volta 2 {
 <e' a'>8\p^\markup { \bold "VAR. IV." }( <d' fis'>) <e' a'>( <d' fis'>) <e' a'>16([ <d' fis'>]) <e' a'>([ <d' fis'>]) <e' a'>([ <d' fis'>])
 \set tupletSpannerDuration = #(ly:make-moment 1 8)
 \times 2/3 { fis'''16_\markup { \italic "leggiermente" }[ e''' d'''] cis'''[ b'' a''] g''[ fis'' e''] d''[ cis'' b'] a'[ b' cis''] }
 d''8\staccato[ <cis'' e''>\staccato <d'' fis''>\staccato] r
 <e' a'>8( <d' fis'>) <e' a'>( <d' fis'>) <e' a'>16([ <d' fis'>]) <e' a'>([ <d' fis'>]) <e' a'>([ <d' fis'>])
 \set tupletSpannerDuration = #(ly:make-moment 1 8)
 \times 2/3 { g'''16[ fis''' e'''] d'''[ cis''' b''] } a''32[ g'' fis'' e'']
 \set tupletSpannerDuration = #(ly:make-moment 1 8) \times 2/3 { d''16[ cis'' b'] ais'[ fis'' ais'] }
 b'8\staccato[ b'\staccato b'\staccato] r }
 \repeat volta 2 {
 <fis d'>8_\markup { \italic "cresc." }( b) <fis d'>( b) <b e'>( <a cis'>) <b e'>( <a cis'>)
 <b e'>16([ <a cis'>]) <b e'>([ <a cis'>]) <b e'>([ <a cis'>]) <b e'>([ <a cis'>])
 <a fis'>16\f([ d']) <a fis'>([ d']) <a fis'>([ d']) <a fis'>([ d'])
 <e' a'>8\p( <d' fis'>) <e' a'>( <d' fis'>) <e' a'>16([ <d' fis'>]) <e' a'>([ <d' fis'>]) <e' a'>([ <d' fis'>])
 \set tupletSpannerDuration = #(ly:make-moment 1 8)
 \times 2/3 { fis'''16[ e''' d'''] cis'''[ b'' a''] g''[ fis'' e''] d''[ cis'' b'] a'[ b' cis''] }
 d''8\staccato[ d''\staccato d''\staccato] r }
 \break

 \repeat volta 2 {
 \once \override TextScript #'padding = #1.5
 << { d'16^\markup { \bold "VAR. V." }( fis' a' fis' a' fis' a' d'') d'( fis' a' fis' a' fis' a' d'') e'( g' a' g' a' g' a' cis'')
 d'16( fis' a' fis' a' fis' a' d'') d'( fis' a' fis' a' fis' a' d'') d'( fis' a' fis' a' fis' a' d'') e'( g' a' g' a' g' bes' g') } \\
 { d'2_\markup { \italic "p dolce" } d'2 a8\rest cis'8 a8\rest cis'8 d'2 d'2 d'2 a8\rest cis' a8\rest cis' } >> }
 \alternative { { << { d'16\<( gis' b'! gis'\! d'\> fis' a' fis'\!) } \\ { d'4 d' } >> }
 { << { d'16\<( gis' b'! gis'\! d'\> gis' b' gis'\!) } \\ { d'4 d' } >> } }
 \repeat volta 2 {
 << { d'16( gis' b' gis' b' gis' b' d'') e'( g'! cis'' g' cis'' g' cis'' e'') e'( g' cis'' g' cis'' g' cis'' e'')
 fis'( a' d'' a' d'' a' d'' fis'') d''( fis'' a'' fis'' a'' fis'' a'' d''') d''( fis'' a'' fis'' a'' fis'' a'' d''') e''( g'' a'' g'' a'' g'' a'' cis''') } \\
 { d'2\p \setTextCresc e'2\< e'2 fis'2 d''\!\f d''2 f'8\rest\p cis'' f'\rest cis'' } >> }
 \alternative { { << { d''4 d''4 } \\ { d''16\<( fis'' a'' fis''\! d''\> gis'' b'' gis''\!) } >> }
 { << { d''16\<( fis'' a'' fis''\! a''\> fis'' a'' d'''\!) } \\ { d''2 } >> } }
 \break

 \time 3/4
 \once \override TextScript #'padding = #1.5
 \set doubleSlurs = ##t <fis'' a''>4\f^\markup { \bold "VAR. VI." }^\markup { \bold "Presto." } ( <d'' fis''>8) r8
 \set doubleSlurs = ##f  \grace { g''32([ fis'' e''] } <d'' fis''>8)[ r16 <e'' g''>]
 \set doubleSlurs = ##t <fis'' a''>4\sf( <d'' fis''>8) r <d''' fis'''>4\sf
 <cis''' e'''>8\staccato[ <b'' d'''>\staccato <a'' cis'''>\staccato <g'' b''>\staccato <fis'' a''>\staccato <e'' g''>\staccato]
 <d'' fis''>\staccato[ <e'' g''>\staccato <fis'' a''>\staccato <e'' g''>\staccato <d'' fis''>\staccato <e'' g''>\staccato]
 <fis'' a''>4\sf( <d'' fis''>8) r8 \set doubleSlurs = ##f \grace { g''32([ fis'' e''] } <d'' fis''>8)[ r16 <e'' g''>]
 \set doubleSlurs = ##t <fis'' a''>4\sf( <d'' fis''>8) r <fis'' fis'''>4\sf
 <e'' e'''>8\staccato[ <d'' d'''>\staccato <cis'' cis'''>\staccato <b' b''>\staccato] <d'' fis''>\staccato[ <cis'' e''! ais''>\staccato]
 <b' d'' b''>8\staccato[ <ais' cis'' ais''>\staccato] <b' d'' b''>4
 \break
 \repeat volta 2 {
 \once \override TextScript #'padding = #2.5
 \partial 4 <b' d'' b''>8^\markup { \small "La 2da parte due volte. " }[ r16 <cis'' e'' cis'''>]
 <d'' fis'' d'''>4\sf( <b' d'' b''>8) r8 <cis'' e'' cis'''>8[ r16 <d'' fis'' d'''>]
 <e'' g'' e'''>4\sf( <cis'' e'' cis'''>8) r8 <cis'' e'' cis'''>8[ r16 <d'' fis'' d'''>]
 <e'' g'' e'''>8\sf\staccato[ <d'' fis'' d'''>\staccato <e'' g'' e'''>\staccato <cis'' e'' cis'''>\staccato
 <d'' fis'' d'''>\staccato <e'' g'' e'''>\staccato]
 <fis'' a'' fis'''>\sf\staccato[ <e'' g'' e'''>\staccato <d'' fis'' d'''>\staccato <e'' g'' e'''>\staccato
 <fis'' a'' fis'''>\staccato <fis'' a'' fis'''>\staccato]
 \set doubleSlurs = ##t <fis'' a'' fis'''>4\sf( <d'' fis'' d'''>8)
 \set doubleSlurs = ##f r8 \grace { g''32([ fis'' e''] } <d'' fis''>8)[ r16 <e'' g''>]
 \set doubleSlurs = ##t <fis'' a''>4\sf( <d'' fis''>8) r8 <fis'' fis'''>4\sf \set doubleSlurs = ##f
 <e'' e'''>8\staccato[ <d'' d'''>\staccato <cis'' cis'''>\staccato <b' b''>\staccato <a' a''>\staccato <cis'' e'' cis'''>\staccato] }
 \alternative { { <d'' fis'' d'''>8\staccato <ais' cis'' e'' ais''>\staccato <b' d'' b''>4 s4 }
 { <d'' fis'' d'''>8\staccato <cis'' e'' cis'''>\staccato <d'' fis'' d'''>4 r4 } }
 <d' d''>8\p\staccato[ <e' e''>\staccato <f' f''>\staccato <d' d''>\staccato] r4
 <g' g''>8\staccato[ <a' a''>\staccato <bes' bes''>\staccato <g' g''>\staccato] r4
 <c' c''>8\staccato[ <d' d''>\staccato <e' e''>\staccato <c' c''>\staccato] r4
 <f' f''>8\staccato[ <g' g''>\staccato <a' a''>\staccato <f' f''>\staccato] a'8\staccato_\markup { \italic "sempre p" }[ c''\staccato]
 \acciaccatura cis''16 bes'8\staccato[ a'\staccato bes'\staccato g'\staccato c''\staccato bes'\staccato]
 a'\staccato[ c''\staccato f''\staccato c''\staccato f''\staccato a''\staccato]
 e''\staccato g''\staccato c'''\staccato bes''\staccato a''\staccato g''\staccato]
 f''\staccato[ a''\staccato f''\staccato c''\staccato a'\staccato c''\staccato]
 \acciaccatura cis''16 bes'8\staccato[ a'\staccato bes'\staccato g'\staccato c''\staccato bes'\staccato]
 a'\staccato[ c''\staccato f''\staccato c''\staccato f''\staccato a''\staccato]
 e''\staccato[ g''\staccato c'''\staccato bes''\staccato a''\staccato g''\staccato] f''4\pp r f'8[ r16 g']
 aes'4( f') bes'8[ r16 c''] des''4( bes') bes'8[ r16 ces''] des''4( bes') b'8[ r16 cis''!] d''!4( b'!) cis''8[ r16 d''] e''4( cis'') e''8[ r16 fis'']
 g''4( e'') <e'' cis'''>8\staccato[ <fis'' d'''>\staccato]
 \setTextCresc <g'' e'''>8\staccato\<[ <fis'' d'''>\staccato <e'' cis'''>\staccato <fis'' d'''>\staccato <g'' e'''>\staccato <fis'' d'''>\staccato]
 <e'' cis'''>\staccato[ <fis'' d'''>\staccato <g'' e'''>\staccato <fis'' d'''>\staccato <e'' cis'''>\staccato <fis'' d'''>\staccato]
 <e'' cis'''>\staccato[ <fis'' d'''>\staccato <g'' e'''>\staccato] <fis'' a'' fis'''>\!\ff[ <fis'' a'' fis'''> <fis'' a'' fis'''>]
 \set doubleSlurs = ##t <fis'' a'' fis'''>4\sf( <d'' fis'' d'''>8)
 \set doubleSlurs = ##f r8 \grace { g''32([ fis'' e''] } <d'' fis''>8)[ r16 <e'' g''>]
 \set doubleSlurs = ##t <fis'' a''>4\sf( <d'' fis''>8) r8 <d''' fis'''>4\sf \set doubleSlurs = ##f
 <cis''' e'''>8\staccato[ <b'' d'''>\staccato <a'' cis'''>\staccato <g'' b''>\staccato <fis'' a''>\staccato <e'' g''>\staccato]
 <d'' fis''>\staccato[ <e'' g''>\staccato <fis'' a''>\staccato] <d'' fis'' d'''>[ <d'' fis'' d'''> <e'' g'' e'''>]
 <fis'' a'' fis'''>8\sf <d'' fis'' d'''>[ <d'' fis'' d'''> <d'' fis'' d'''>] \grace { g''32([ fis'' e''] } <d'' fis''>8)[ r16 <e'' g''>]
 <fis'' a''>8\sf <d'' fis''>[ <d'' fis''> <d'' fis''>] <d'' fis'' d'''>\staccato[ <fis'' fis'''>\staccato]
 <e'' e'''>8\staccato[ <d'' d'''>\staccato <cis'' cis'''>\staccato <b' b''>\staccato <fis' fis''>\staccato <ais' cis'' e''! ais''>\staccato]
 <b' d'' b''>8\staccato[ <ais' cis'' ais''>\staccato] <b' d'' b''>4 \bar "||"
 \break
 \repeat volta 2 {
 <b' d'' b''>8\staccato^\markup { \small "La 2da parte due volte. " }[ <cis'' e'' cis'''>\staccato]
 <d'' fis'' d'''>\staccato[ <cis'' e'' cis'''>\staccato <d'' fis'' d'''>\staccato <b' d'' b''>\staccato <cis'' e'' cis'''>\staccato <d'' fis'' d'''>\staccato]
 <e'' g'' e'''>\staccato[ <d'' fis'' d'''>\staccato <e'' g'' e'''>\staccato <cis'' e'' cis'''>\staccato <d'' fis'' d'''>\staccato <e'' g'' e'''>\staccato]
 <e'' g'' e'''>\staccato[ <d'' fis'' d'''>\staccato <e'' g'' e'''>\staccato <cis'' e'' cis'''>\staccato <d'' fis'' d'''>\staccato <e'' g'' e'''>\staccato]
 <fis'' a'' fis'''>\staccato[ <e'' g'' e'''>\staccato <fis'' a'' fis'''>\staccato <d'' fis'' d'''>\staccato <e'' g'' e'''>\staccato <fis'' a'' fis'''>\staccato]
 <fis'' a'' fis'''>\sf\staccato <d'' fis'' d'''>\staccato[ <d'' fis'' d'''>\staccato <d'' fis'' d'''>\staccato]
 \grace { g''32([ fis'' e''] } <d'' fis''>8)\staccato[ <e'' g''>\staccato]
 <fis'' a''>8\sf\staccato <d'' fis''>\staccato[ <d'' fis''>\staccato <d'' fis''>\staccato] <d'' fis'' d'''>\staccato[ <fis'' fis'''>\staccato]
 <e'' e'''>\staccato[ <d'' d'''>\staccato <cis'' cis'''>\staccato <b' b''>\staccato <a' a''>\staccato <cis'' e'' cis'''>\staccato] }
 \alternative { { <d'' fis'' d'''>8\staccato[ <ais' cis'' e'' ais''>\staccato] <b' d'' b''>4 s4 }
 { <d'' fis'' d'''>4 r4 <fis' a' d''>8\p\staccato[ <a' fis''>\staccato] } }
 <g' e''>8\staccato[ <fis' d''>\staccato <e' cis''>\staccato <d' b'>\staccato <cis' a'>\staccato <e' g'! cis''>\staccato]
 <d' fis' d''>4 r <fis'' fis'''>\f\staccato r4 r fis'\p r4 r fis' \bar "||"
 \time 2/4
 <fis' a'>8\sf^\markup { "Tempo I." }[( <d' fis'>) <d' fis'>\staccato <d' fis'>\staccato]
 <fis' a'>8\sf[( <d' fis'>) <d' fis'>\staccato] <d'' fis''>\staccato
 <cis'' e''>16 <b' d''> <a' cis''> <g' b'> <fis' a'>8\staccato[ <e' g'>\staccato] <d' fis'>8\staccato <e' g'>\staccato <fis' a'>4\sf
 \acciaccatura fis'16 <fis' a'>8\sf[( <d' fis'>) <d' fis'>\staccato <d' fis'>\staccato]
 \acciaccatura fis'16 <fis' a'>8\sf[( <d' fis'>) <d' fis'>\staccato] <d'' fis''>\staccato
 <cis'' e''>16 <b' d''> <a' cis''> <g' b'> <fis' a'>8\staccato[ <cis' e' ais'>\staccato] <b d' b'>4 r
 <fis' d''>8\sf[( <d' b'>) <d' b'>\staccato <d' b'>\staccato] <g' e''>8\sf[( <e' cis''>) <e' cis''>\staccato <e' cis''>\staccato]
 <e' g' e''>8\sf( <e' g' cis''>) <e' g' e''>8\sf( <e' g' cis''>) <fis' a' fis''>8\sf( <fis' a' d''>) <fis' a' fis''>8\sf( <fis' a' d''>)
 \acciaccatura fis''16 <fis'' a''>8\sf[( <d'' fis''>) <d'' fis''>\staccato <d'' fis''>\staccato]
 \acciaccatura fis''16 <fis'' a''>8\sf[( <d'' fis''>) <d'' fis''>\staccato <d''' fis'''>\staccato]
 <cis''' e'''>16 <b'' d'''> <a'' cis'''> <g'' b''> <fis'' a''>8\staccato[ <e'' g'' a'' cis'''>\staccato] <d'' fis'' a'' d'''>4 r8 fis'8\p
 e'16 d' cis' b a8 a a4 r8 fis'''8\f e'''16 d''' cis''' b'' a''8 cis''' d'''4 r8 fis'8\p e'16 d' cis' b a8 a
 a4 r8 fis''8\f e''16 d'' cis'' b' a'8 <e' g' a' cis''> <d' fis' a' d''>4 <d' fis' a' d''> <d' fis' a' d''> r \bar "||"
}

 \new Staff = "down" {
 \clef bass
 \key d \major
 \time 2/4
 \repeat volta 2 {
 <d, d>8\sf[ d d d] <d, d>\sf[ d d d] <d, d>\sf[ d d d] <d, d>\sf[ d d d] <d, d>\sf[ d d d] <d, d>\sf[ d d d]
 <d, d>\sf[ d d <fis, fis>] }
 \alternative { { <b,, b,>4\sf <cis, cis> } { <b,, b,>4 r } }
 \repeat volta 2 { <b,, b,>8\sf[ b, b, b,] <a,, a,>\sf[ a, a, a,] <a,, a,>\sf a, <a,, a,>\sf a, <d, d>\sf d <d, d>\sf d
 <d, d>8\sf[ d d d] <d, d>\sf[ d d d] <d, d>\sf[ d d] <a,, a,>8 <d, d>4 r }
 \break

 \repeat volta 2 {
 \clef treble fis'16\p( a' d' a' d' a' fis' a' fis' a' d' a' d' d'' cis'' b' a' d'' g' d'' fis' a' e' a' d' a' e' a' e' a' eis' a'
 fis'16 a' d' a' d' a' fis' a' fis' a' d' a' d' d'' cis'' b' a' d'' g' d'' fis' d'' fis' e'' }
 \alternative { { b' d'' cis'' e'' cis''[ e'']) d'( e') } { b'16 d'' fis' b' d' fis' d' cis' } }
 \repeat volta 2 { << { b16^\< d'\! ais^\> d'\! b d' e' d' cis'^\< e'\! cis'^\> e'\! cis' e' cis' e'
 cis'^\< e'\! cis'^\> e'\! cis' e' cis' e' fis'^\< a'\! fis'^\> a'\! fis' a' fis' a' } \\
 { b8( ais b4) a!8( gis a4) a8( gis a4) d'8( cis' d'4) } >>
 << { fis'16( a' d' a' d' a' fis' a' fis' a' d' a' d' d'' cis'' b' a' d'' g' d'' fis' a' e' a') } \\ { s2 s2 s4 s8 a8 } >> }
 \alternative { { d'16( fis' d' fis' d' fis' cis' fis') } { <d' fis'>8 r \clef bass d,16( e, d, cis,) } }
 \break

 \repeat volta 2 {
 d,8 <d, d>\sf r <d' fis'>8\sf\staccato r <d, d>\sf r <d' fis'>\sf\staccato r16 e\p[ r d r cis r b,] r a,[ r g, r fis, r e,]
 r8 <d, d>\sf r <d' fis'>8\sf\staccato r <d, d>\sf r <d' fis'>\sf\staccato r16 e\p[ r d r cis r b,] r a,[ r ais, r b, r cis] }
 \repeat volta 2 {
 r8 <b,, b,>\sf r <b d'>\sf\staccato r <a,, a,>\sf r <cis' e'>\sf\staccato r8 <cis e>16( a,) r8 <cis' e'>16( a)
 r8 <fis a>16( d) r8 \clef treble <fis' a'>16( d') r8 \clef bass <d, d>8\sf r <d' fis'>\sf\staccato
 r8 <d d'>\sf r \clef treble <d'' fis''>\sf\staccato r16 \clef bass <e e'>16\p[ r <d d'> r <cis cis'> r <b, b>] r <a, a>[ r a,] r8 <d, d>8 }
 \break

 \time 6/8
 \repeat volta 2 {
 << { fis8 d' a fis d' a fis d' a
 \override Staff.NoteCollision #'merge-differently-dotted = ##t d( e fis g a b) cis' cis' cis' d' d' d' d' d' d' fis d' a fis d' a fis d' a } \\
 { d4. d4. d4. d4. d4. d8[ d d] d d d d d d d4. d4. d4. } >> d8( e fis }
 \alternative { { g8 fis g e cis fis) b, b fis cis cis' a } { g8 \clef treble fis' g' e' cis' fis' << { d'8 b' fis' d' b' fis' } \\ { b4. b4. } >> } }
 \repeat volta 2 {
 << { d'8 b' fis' d' b' fis' d' b' fis' d' b' fis' cis' g' e' cis' g' e' cis' g' e' cis' } \\ { b4. b4. b4. b4. a4. a4. a4. a8 } >>
 \clef bass << { a8([ g] fis) d' a fis d' a fis d' a } \\ { s4 d4. d4. d4. } >> d8( e fis)
 << { \override Staff.NoteCollision #'merge-differently-dotted = ##t g8 b e' a g' e' } \\ { g4. a4. } >> }
 \alternative {
 { << { d8( cis' d') s8 } \\ { d4 d8 <d d'>8 } >> \clef treble <d' fis'>8 <cis' e'> }
 { \clef bass << { d8( cis' d') } \\ { d4 d8 } >> <d d'>4 r8 } }
 \break

 \time 2/4
 \repeat volta 2 {
 cis,8\p( d,) cis,( d,) cis,16([ d,]) cis,([ d,]) cis,([ d,]) r8 \clef treble <a e' g'>8[ <a e' g'> <a e' g'> <a e' g'>]
 <d' fis'>8\staccato[ <a g'>\staccato <d' fis'>\staccato] r
 \clef bass cis,8( d,) cis,( d,) cis,16([ d,]) cis,([ d,]) cis,([ d,]) r8 \clef treble <d' fis'>8[ <d' fis'> <d' fis'>] \clef bass <fis cis' e'>
 <b d'>8\staccato[ <b d'>\staccato <b d'>\staccato] r }
 \repeat volta 2 {
 ais,,8( b,,) ais,,( b,,) gis,,( a,,!) gis,,( a,,) gis,,16([ a,,]) gis,,([ a,,]) gis,,([ a,,]) gis,,([ a,,]) cis,16\f([ d,]) cis,([ d,]) cis,([ d,]) cis,([ d,])
 cis,8\p( d,) cis,( d,) cis,16([ d,]) cis,([ d,]) cis,([ d,]) \clef treble <d'' fis''>8 <e'' g''> <a e' g'>[ <a e' g'> <a e' g'>]
 <d' fis'>8\staccato[ <d' fis'>\staccato <d' fis'>\staccato] r }
 \break

 \clef bass
 \repeat volta 2 {
 << { a2 a2 a2 a2 a2 a2 a2 } \\ { a16( fis d fis d fis d a,) a( fis d fis d fis d a,) a( g e g e g e a,) a( fis d fis d fis d a,)
 a( fis d fis d fis d a,) a( fis d fis d fis d a,) a( g e g e g e a,) } >> }
 \alternative {
 { << { gis4 a4 } \\ { gis16( f d f a fis d fis) } >> } { << { gis4 b4 } \\ { gis16( f d f b f d f) } >> } }
 \repeat volta 2 {
 << { b2 cis'4. d'8\rest cis'4. d'8\rest d'4. d'8\rest a2 a2 a2 } \\
 { b16( f d f d f d a,) cis'( g! e g e g e a,) cis'( g e g e g e a,) d'( a fis a fis a fis a,)
 a( fis d fis d fis d a,) a( fis d fis d fis d a,) a\p( g e g e g e a,) } >> }
 \alternative { { << { a4 b4 } \\ { a16( fis d fis b f d f) } >> } { fis16( d a, d fis, a, fis, d,) } }
 \break

 \time 3/4
 d8\f[ <fis a d'> d <fis a d'> d <fis a d'>] d[ <fis a d'> d <fis a d'> d <fis a d'>] d[ <fis a d'> d <fis a d'> d <fis a d'>]
 d[ <fis a d'> d <fis a d'> d <fis a d'>] d[ <fis a d'> d <fis a d'> d <fis a d'>] d[ <fis a d'> d <fis a d'> d d']
 <cis cis'>\staccato[ <d d'>\staccato <e e'>\staccato <eis eis'>\staccato] <fis fis'>\staccato[ <fis, fis>\staccato]
 <b, b>8\staccato[ <fis, fis>\staccato] <b, b>4
 \break
 \repeat volta 2 {
 \partial 4 b,8[ <d fis b>] b,8[ <d fis b> b, <d fis b>] a,[ <cis e g>] a,[ <cis e g> a, <cis e g> a, <cis e g>]
 a,[ <cis e g> a, <cis e g> a, <cis e g>] d[ <fis a d'> d <fis a d'> d <fis a d'>]
 d[ <fis a d'> d <fis a d'> d <fis a d'>] d[ <fis a d'> d <fis a d'>] d[ d']
 <e e'>\staccato[ <fis fis'>\staccato <g g'>\staccato <gis gis'>\staccato <a a'>\staccato <a, a>\staccato] }
 \alternative { { <d d'>8\staccato <fis, fis>\staccato <b, b>4 s4 }
 { <d d'>8\staccato[ <a, a>\staccato] <d d'>4 <b,, b,>8\p\staccato[ <cis, cis>\staccato] } }
 <f, f>8\staccato[ <d, d>\staccato] r4 <g, g>8\staccato[ <aes, aes>\staccato]
 <bes, bes>\staccato[ <g, g>\staccato] r4 <c, c>8\staccato[ <d, d>\staccato]
 <e, e>8\staccato[ <c, c>\staccato] r4 <f, f>8\staccato[ <g, g>\staccato] <a, a>8\staccato[ <f, f>\staccato] r4 r4
 <c g bes>4 <c g bes> <c g bes> <c f a> <c f a> <c f a> <c g bes> <c g bes> <c g bes> <c f a> <c f a> <c f a>
 <c g bes>4 <c g bes> <c g bes> <c f a> <c f a> <c f a> <c g bes> <c g bes> <c g bes>
 f16\pp[ aes f aes] f[ aes f aes] f[ aes f aes] des[ f des f] des[ f des f] des[ f des f]
 bes,[ des bes, des] bes,[ des bes, des] bes,[ des bes, des] ges,[ bes, ges, bes,] ges,[ bes, ges, bes,] fis,![ ais, fis, ais,]
 b,![ d! b, d] b,[ d b, d] b,[ d b, d] a,[ cis! a, cis] a,[ cis a, cis] a,[ cis a, cis]
 a,[ e a, e] a,[ e a, e] a,[ e a, e] a,[ a a, a] a,[ a a, a] a,[ a a, a] a,[ a a, a] a,[ a a, a] a,[ a a, a]
 a,[ a a, a] a,[ a d <fis a d'>] d[ <fis a d'> d <fis a d'>]
 d16[ fis a d'] d[ fis a d'] d[ fis a d'] d[ fis a d'] d[ fis a d'] d[ fis a d'] d[ g b d'] d[ g b d'] d[ g b d'] d[ fis a d'] d[ fis a d'] d[ fis a d']
 d16[ fis a d'] d[ fis a d'] d[ fis a d'] d[ fis a d'] d[ fis a d'] d[ d' d d'] cis[ cis' d d'] e[ e' eis eis'] fis[ fis'] fis,[ fis]
 b,[ b fis, fis] b,[ d fis b] \bar "||"
 \break
 \repeat volta 2 {
 b,16[ d fis b] b,[ d fis b] b,[ d fis b] a,[ cis e g] a,[ cis e g] a,[ cis e g] a,[ cis e g] a,[ cis e g] a,[ cis e g] a,[ cis e g]
 d,[ fis, a, d] d,[ fis, a, d] d,[ fis, a, d] d,[ fis, a, d] d,[ fis, a, d] d,[ fis, a, d] d,[ fis, a, d] d,[ fis, a, d] d,[ d d, d] e,[ e fis, fis] g,[ g gis, gis] a,[ a a, a] }
 \alternative { { d[ d' fis, fis] b,[ d fis b] s4 } { <d, d>4 r d8\p\staccato[ d\staccato] } }
 e8\staccato[ fis\staccato g\staccato gis\staccato] a\staccato[ a,\staccato] d4 r <fis fis'>\staccato R2. R2. \bar "||"
 \time 2/4
 <d, d>8\sf[ d d d] <d, d>\sf[ d d d] <d, d>\sf[ d d d] <d, d>\sf[ d d d] <d, d>\sf[ d d d] <d, d>\sf[ d d d] <d, d>\sf[ d d <fis, fis>] <b,, b,>4 r
 <b,, b,>8\sf[ b, b, b,] <a,, a,>\sf[ a, a, a,] <a,, a,>\sf a, <a,, a,>\sf a, <d, d>\sf d <d, d>\sf d
 <d fis a>8\sf[( <d fis>) <d fis>\staccato <d fis>\staccato] <d fis a>\sf[( <d fis>) <d fis>\staccato <d' fis'>\staccato]
 <d' fis'>8\staccato[ <g e' g'>\staccato <a d' fis'>\staccato <a, cis e a>\staccato] <d, fis, a, d>4 r8 fis8\p
 e16 d cis b, a,8 a, a,4 r8 \clef treble fis''8\f e''16 d'' cis'' b' a'8 <a' e'' g''> <d'' fis''>4 r8 \clef bass fis8\p
 e16 d cis b, a,8 a, a,4 r8 <d fis> <a, e g>8[ <a, e g> <a, e g> <a, e g>] <d fis>4 <d, fis, a, d> <d, fis, a, d> r4 \bar "||"
 }
>>

 \layout { }

 \midi { }

}
