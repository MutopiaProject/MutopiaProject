\version "2.10.3"

 \header {
  title = "Sonate Opus 10 No.2 - 2nd Movement"
  subtitle = "for the Pianoforte"
  composer = "Ludwig Van Beethoven"
  mutopiatitle = "Sonata No. 6 (2nd Movement: Allegretto)"
  mutopiacomposer = "BeethovenLv"
  mutopiainstrument = "Piano"
  mutopiaopus = "Op. 10, No. 2"
  date = "1796-1798"
  source = "Breitkopf & Hartel (1862-1865)"
  style = "Classical"
  copyright = "Public Domain"
  maintainer = "Stelios Samelis"
  lastupdated = "2007/June/23"
  version = "2.10.3"
 footer = "Mutopia-2007/06/24-993"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\score {

 \new GrandStaff
 <<
 \new Staff = "up" {
 \clef treble
 \key f \minor
 \time 3/4
 \override Score.MetronomeMark #'transparent = ##t
 \tempo 4 = 178
 \once \override TextScript #'padding = #2.5
 \repeat volta 2 {
 \clef bass \partial 4 c4\p^\markup { \large "Allegretto." }
 f4 aes e f aes c' \clef treble des' bes e' f' c' g'
 << { aes'2 bes'4 <aes' c''>2 \acciaccatura ees''8 <bes' des''>4 } \\ { aes'4 f' ees'!4~ ees' f'2 } >>
 <ees' aes' c''>2( <des' g' bes'>4) <c' aes'>4 r4 }
 \repeat volta 2 {
 << { c''4\p c''4( des''8 c'') des''4\staccato des''4 ees''4\rest des''4 des''4( ees''8 des'') ees''4\staccato
 ees''4 f''4\rest ees'' ees''4( f''8 ees'') f''4\staccato f''2 f''4\staccato f''2^\trill \grace { e''16[ f''] } g''4\staccato } \\
 { d'4\rest d'4\rest d'4\rest f'\sf\staccato f'4( g'8 f') g'4\sf\staccato g' e'4\rest g'4\sf\staccato
 g'4( a'8 g') a'4\sf\staccato a'4 f'4\rest a'\sf\staccato a'4( bes'8 a') bes'4\sf\staccato b'2 b'4\sf } >>
 <g' c''>2\sf\staccato^\fermata c''4\p( f'' aes'' e'' f'' aes'' c''' des''' bes'' e''' f''' c''' aes'' bes'' des''' g'' aes''2)
 <aes' aes''>4 << { aes''2( g''4) aes''2( g''4) } \\ { <bes' des'' e''>2.\rfz <bes' des'' e''>2.\rfz } >> <aes' f''>4( <bes' g''> <g' e''>)
 <aes' f''>4( c'' aes') << { aes'2( g'4) aes'2( g'4) } \\ { <bes des' e'>2.\rfz <bes des' e'>2.\rfz } >>
 <aes f'>4( <bes g'> <g e'> <aes f'>) r4 c'4\p << { e'2( f'4) } \\ { c'2. } >> <c' e' g'>2\staccato~ <c' f' aes'>4\staccato
 <e' g' c''>4.\ff bes'8\p([ aes' g']) bes'8([ aes' g' f']) \afterGrace c''4^\trill { b'16[ c''] }
 << { <e'' g''>2( <f'' aes''>4 <g'' bes''>) } \\ { c''2.\<~ c''4\! } >> r4 <e'' g'' e'''>4\p\staccato <f'' aes'' f'''>4\staccato r4 r4 r4 r4 }
 \key des \major
 <f aes f'>4\pp <f aes f'>2\staccato( <f aes f'>4\staccato) <f aes f'>2\staccato( <f aes f'>4\staccato)
 <ges bes f'>2.~ <ges bes ees'>2 \once \override TextScript #'script-priority = #-100 ees'8^\turn^\markup { \natural }( f')
 <aes ees' ges'>2\staccato( <aes ees' ges'>4\staccato) <aes ees' ges'>2\staccato( <aes ees' ges'>4\staccato)
 <aes ees' ges'>2.( <aes des' f'>4) r4 f'8( g') <f' aes'>2\staccato\<( <f' aes'>4\staccato)
 <ees' aes'>2\staccato( <ees' aes'>4\staccato\!)
 \set doubleSlurs = ##t <des' ees' aes' des''>2.\sf~ <des' ees' aes' des''>2( <c' ees' aes' c''>4) \set doubleSlurs = ##f
 << { c''4( bes') aes' aes'2( g'4) } \\ { f'2 f'4 ees'2( des'!4) } >> \set doubleSlurs = ##t <des' bes'>2.( <c' aes'>4) \set doubleSlurs = ##f r4
 <f aes f'>4 <f aes f'>2 <f aes f'>4 <f aes f'>2 <f aes f'>4 \set doubleSlurs = ##t <ges bes f'>2.( <bes ees'>4) r4 \set doubleSlurs = ##f
 ees'8( f') <a c' ees' ges'>2 <a c' ees' ges'>4 <a c' ees' ges'>2 <a c' ees' ges'>4
 \set doubleSlurs = ##t <a c' ees' ges'>2.( <bes des' f'>4) r4 \set doubleSlurs = ##f g'8( aes')
 <des' g' bes'>2 <des' g' bes'>4 <des' g' bes'>2 <des' g' bes'>4
 \set doubleSlurs = ##t <c' g' bes'>2.( <c' f' aes'>4) \set doubleSlurs = ##f r4 <aes aes'>4
 <aes bes f'>4 r <aes bes f'>4\p <g bes ees'> r <g bes ees'> aes4 r4 r R2. R2. R2. r4 r4 f'''4\sf~ f'''8([ ees''' d''' ces''' bes'' aes''])
 ges''4 r4 r4 R2. r4 r4 ees'''4\sf~ ees'''8([ des''' c''' bes'' aes'' ges'']) <f' f''>2 <f' aes' f''>4 <f' aes' f''>2 <f' aes' f''>4
 <ges' bes' f''>2.~ <ges' bes' ees''>4 r4 <c'' ees''>8( <des'' f''>)
 <c'' ees'' ges''>2_\markup { \italic "cresc." } <c'' ees'' ges''>4 <c'' ees'' ges''>2 <c'' ees'' ges''>4
 \set doubleSlurs = ##t <c'' ees'' ges''>2.\sf( <des'' f''>4) r4 r \set doubleSlurs = ##f
 <des' bes'>2\pp\staccato( <des' bes'>4\staccato) <des' bes'>2\staccato( <des' bes'>4\staccato)
 <des' bes'>2.~ <des' aes'>4 r4 r <c' aes'>2\pp <c' aes'>4 <c' aes'>2 <c' aes'>4 des'4 r r R2. R2. R2.
 r4 r4 \acciaccatura f''8 f'''4\sf~ f'''8([ ees''' d''' ces''' bes'' aes'']) ges''4\staccato r4 r R2.
 r4 r4 \acciaccatura ees''8 ees'''4\sf~ ees'''8([ des''' c''' bes'' aes'' ges'']) <f' f''>2 <f' aes' f''>4 <f' f''>2 <f' aes' f''>4
 <ges' bes' f''>2.~ <ges' bes' ees''>4 r4 <c'' ees''>8( <des'' f''>)
 <c'' ees'' ges''>2_\markup { \italic "cresc." } <c'' ees'' ges''>4 <c'' ees'' ges''>2 <c'' ees'' ges''>4
 \set doubleSlurs = ##t <c'' ees'' ges''>2.( <des'' f''>4) \set doubleSlurs = ##f r4 r
 <des' bes'>2\pp\staccato( <des' bes'>4\staccato) <des' bes'>2\staccato( <des' bes'>4\staccato) <des' bes'>2.( <des' beses'>2.)
 <c' aes'>2\pp <c' aes'>4 <c' aes'>2 <c' aes'>4 des'4 r4 r R2. des'2\pp\staccato( des'4\staccato) des'2\staccato( des'4\staccato)
 c'2.~ c'2. <g bes e'>2 <g bes e'>4 <g bes e'>2 <g bes e'>4 \bar "||"
 \key f \minor
 <f f'>4\p aes e f aes c' des' bes e' f' c' g'
 << { aes'2 bes'4 <aes' c''>2 \acciaccatura ees''8 <bes' des''>4 } \\ { aes'4 f' ees'!4~ ees' f'2 } >>
 <ees' aes' c''>2 <des' g' bes'>4 <c' aes'>4 r r8 \clef bass c8~ c8_\markup { \italic "cresc." }( f4 aes e8~ e8 f4 aes c'8~ c'8 des'4
 bes4 \clef treble e'8~ e'8 f'4 c' g'8~ g'8 aes'4 f'4)
 << { s8 c''4. c''8( ees''8[ des''] c''4. des''8[ bes' c''] aes'4) e''4\rest c''4 } \\
 { bes'8~ bes'8 aes'4. bes'8 f' bes'8 ees'~ <ees' aes'>4 <des' g'> c'4 c'4\rest c'4\rest } \\
 { s8 s2 bes'4~ bes'4 s2 s2 s4 } >>
 << { c''4( b'8 c'') des''4\staccato des''4 ees''4\rest des''4 des''4( c''8 des'') ees''4\staccato
 ees''4 f''4\rest ees'' ees''4( d''8 ees'') f''4\staccato f''4 g''4\rest f''4\staccato f''2^\trill \grace { e''16[ f''] } g''4 c''2^\fermata } \\
 { d'4\rest d'4\rest f'\sf\staccato f'4( e'8 f') g'4\sf\staccato g' e'4\rest g'4\sf\staccato
 g'4( f'8 g') a'4\sf\staccato a'4 f'4\rest a'\sf\staccato a'4( g'8 a') bes'4\sf\staccato b'2 b'4 g'2\sf } >> c''4\pp(
 f''4 aes'' e''~ e''8 f''4 aes'' c'''8~ c'''8 des'''4 bes''4 e'''8~ e'''8 f'''4 c''' aes''8~ aes''8 bes''4 des''' g''8~ g''8 aes''4) aes''4 aes''8
 << { aes''2^\rfz( g''4) aes''2^\rfz( g''4) f''4( g'' e'') f''8([ ees''! des'' c'' bes' aes']) aes'2^\rfz( g'4) aes'2^\rfz( g'4)
 f'4( g' e') } \\ { g'8\rest <bes' des''>4 <bes' des''> <bes' des''>8 r8 <bes' des''>4 <bes' des''>4 <bes' des''>8 r8 aes'4 bes' g'8
 aes'4 d'4\rest d'4\rest b8\rest <bes des'>4 <bes des'> <bes des'>8 b8\rest <bes des'>4 <bes des'> <bes des'>8
 a8\rest aes4 bes g8 } >> <aes f'>4 r c'4_\markup { \italic "cresc." }
 << { e'2( f'4) <e' g'>2( <f' aes'>4) } \\ { a8\rest c'4 c' c'8 a8\rest c'4 c'4 c'8 } >> <e' g' c''>4.\fp bes'8([ aes' g'])
 bes'8([ aes' g' f']) \afterGrace c''4^\trill { b'16[ c''] }
 << { <e'' g''>2( <f'' aes''>4 <g'' bes''>4) a''4\rest <g'' e'''>4\staccato <aes'' f'''>4\staccato } \\
 { f'8\rest c''4_\markup { \italic "cresc." } c''4 c''8~ c''8[ c''8( b' c'')] e''4\f f''4 } >> r4 r4 r2.^\fermata \bar "|."
}

 \new Staff = "down" {
 \clef bass
 \key f \minor
 \time 3/4
 \repeat volta 2 {
 \partial 4 c,4\p f,4 aes, e, f, aes, c des bes, e f c g aes f <g bes> << { <aes c'>2 s4 } \\ { aes4 f des } >>
 ees4 ees, ees, aes,4\staccato aes,,\staccato }
 \repeat volta 2 {
 r4 r4 r4 <aes c'>4\sf\staccato <bes des'>2 <bes des'>4\sf\staccato <bes des'>2 <bes des'>4\sf\staccato
 <c' ees'>2 <c' ees'>4\sf\staccato <c' ees'>2 <c' ees'>4\sf\staccato <des' f'>2 <des' f'>4\sf\staccato
 <des' f'>2 <des' f'>4\sf\staccato <c' e'>2\sf\staccato^\fermata r4 R2. R2. R2.
 r4 r4 \clef treble c''4\pp( des'' bes' e'' f'' c'') \clef bass c'4 des'4( bes e' des' bes e') c'2 c'4 f4 r4 c4( des bes, e des bes, e)
 c2 c4 <f, f>4 r4 r4 << { bes2( aes4) <g bes>2( <f aes>4) } \\ { c2.~ c2. } >> <c e g c'>2. <f aes c'>4 r4 r4
 \clef treble << { <g' bes'>2( <f' aes'>4 <e' g'>4) } \\ { c'2.~ c'4 } >> r4 \clef bass <c c'>4\p\staccato <f, f>\staccato r4 r4
 r4 r4 }
 \key des \major
 <des, des>4\pp <des, des>2\staccato( <des, des>4\staccato) <des, des>2\staccato( <des, des>4\staccato)
 <des, des>2.\staccato( <des, des>2.\staccato) <c, c>2\staccato( <c, c>4\staccato) <c, c>2\staccato( <c, c>4\staccato)
 <des, des>2.( <des, des>4) r4 r4 <des aes>2\staccato~ <des aes>4\staccato <c aes>2\staccato~ <c aes>4\staccato
 <bes, ees aes>2.( <bes, ees g>2) <c ees aes>4 <des f bes>2 <d f ces'>4 <ees c'!>2 <ees bes>4
 << { g2.~ aes4 } \\ { aes,2.~ aes,4 } \\ { s2 ees4~ ees4 } >> r4 r4
 r4 <des, des>^\sf r r4 <des, des>^\sf r r4 des^\sf( ees8 f ges[ f) ees\staccato des\staccato c\staccato bes,\staccato]
 a,4\staccato a,\sf\staccato r r4 a,^\sf\staccato r r4 a,4^\sf( bes,8 c des8[ c) bes,\staccato aes,!\staccato g,\staccato f,\staccato]
 e,4\staccato e,4^\sf\staccato r r4 e,^\sf\staccato r r4 e,^\sf\staccato( f,8 g, aes,[ g,) f,\staccato ees,!\staccato des,\staccato c,\staccato]
 des,4\staccato des,\staccato r r4 ees, r r4 aes,,8( c, ees, aes,) aes,,4 r <f aes ces'>^\pp
 <f aes ces'>2\staccato\<( <f aes ces'>4\staccato) <ees f aes ces'>2\staccato( <ees f aes ces'>4\staccato\!)
 <d f aes ces'>2.\>( <d f aes bes>4\!) r4 r <ees ges bes>2\staccato\<( <ees ges bes>4\staccato)
 <des! ees ges beses>2\staccato( <des ees ges beses>4\staccato\!)
 <c ees ges beses>2.\>~ <c ees ges aes>4\! r4 r des4\staccato des'\sf\staccato r r4 des'\sf\staccato r
 r4 des'4\sf( ees'8 f' ges'8[ f') ees'\staccato des'\staccato c'\staccato bes\staccato] a4\staccato \clef treble a'^\sf\staccato r
 r4 a'^\sf\staccato r r4 bes'2^\sf~ bes'4 r r \clef bass <g, e>2\pp\staccato( <g, e>4\staccato) <g, e>2\staccato( <g, e>4\staccato)
 <aes, e>2.( <aes, f>4) r r <aes, ges!>2\pp <aes, ges>4 <aes, ges>2 <aes, ges>4 <des f>4 r r
 r4 r <f aes ces'>4^\pp <f aes ces'>2\staccato\<( <f aes ces'>4\staccato) <ees f aes ces'>2\staccato( <ees f aes ces'>4\staccato\!)
 <d f aes ces'>2.\>~ <d f aes bes>4\! r4 r
 <ees ges bes>2\staccato\<( <ees ges bes>4\staccato) <des ees ges beses>2\staccato( <des ees ges beses>4\staccato\!)
 <c ees ges beses>2.\>~ <c ees ges aes>4\! r4 r des4\staccato des'\sf\staccato r r4 des'\sf\staccato r r4 des'\sf( ees'8 f' ges'[ f')
 ees'\staccato des'\staccato c'\staccato bes\staccato] a4\staccato \clef treble a'4\sf\staccato r r4 a'\sf\staccato r r4 bes'2\sf~ bes'4 r r
 \clef bass <g, e>2\pp\staccato( <g, e>4\staccato) <g, e>2\staccato( <g, e>4\staccato) <aes, e>2.( <aes, f>2.)
 <aes, ges!>2\pp <aes, ges>4 <aes, ges>2 <aes, ges>4 <des f>4 r r R2. des2\pp\staccato( des4\staccato) des2\staccato( des4\staccato)
 c2.~ c2. <c, c>2 <c, c>4 <c, c>2 <c, c>4 \bar "||"
 \key f \minor
 f,4\p aes, e, f, aes, c des bes, e f c g aes f <g bes> << { <aes c'>2 s4 } \\ { aes4 f des } >> ees4 ees, ees, aes,4\staccato aes,,\staccato
 c,4( f, aes, e, f, aes, c des bes, e f c g aes f <g bes> <aes c'> f des ees) ees, ees, aes,4\staccato aes,,\staccato r4
 aes8[ c' aes c' aes c'] bes![ des' bes des' bes des'] bes[ des' bes des' bes des'] c'[ ees' c' ees' c' ees'] c'[ ees' c' ees' c' ees']
 des'![ f' des' f' des' f'] d'[ f' d' f' d' f'] \clef treble <c' e'>2^\fermata
 r4 r4 r c''4\pp( aes' f' aes' bes' f' bes' aes' f' c'' des'' bes' e'' f'' c'') \clef bass c'4( des' bes e')
 des'4( bes e') c'4 c' c' f4 r c4( des bes, e) des( bes, e) c4 c c <f, f>4 r r
 << { b4\rest bes4( aes) b4\rest <g bes>4( <f aes>) } \\ { c2. c2. } >> <c e g c'>2.\fp <f aes c'>4 r r
 \clef treble << { b'4\rest <g' bes'>4( <f' aes'> <e' g'>) } \\ { c'2.~ c'4 } >> r4
 \clef bass <c c'>4\f\staccato <f, f>\staccato r r r2.^\fermata \bar "|."
}
>>

 \layout { }

 \midi { }

}
