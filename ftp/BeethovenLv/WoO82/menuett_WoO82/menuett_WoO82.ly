\version "2.10.3"

 \header {
  title = "Menuett Op. WoO 82"
  subtitle = "fur das Pianoforte"
  composer = "Ludwig Van Beethoven"
  mutopiatitle = "Menuett Op. WoO 82"
  mutopiacomposer = "BeethovenLv"
  mutopiainstrument = "Piano"
  mutopiaopus = "WoO 82"
  date = "1785"
  source = "Breitkopf & Hartel (1862-1865)"
  style = "Classical"
  copyright = "Public Domain"
  maintainer = "Stelios Samelis"
  lastupdated = "2007/January/5"
  version = "2.10.3"
 footer = "Mutopia-2007/01/07-904"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\score {

 \new GrandStaff
 <<
 \new Staff = "up" {
 \clef treble
 \key ees \major
 \time 3/4
 \override Score.MetronomeMark #'transparent = ##t
 \tempo 4 = 112
 \repeat volta 2 {
 \partial 4 bes4
 << { <g' bes'>4^\markup { \large "Moderato." }( <f' aes'> <ees' g'>) g'2 aes'8( g') g'8( f') f'4 f' f' } \\
 { bes2. <bes ees'>2 <bes ees'>4 <c' ees'>4 <c' ees'> <c' ees'> <c' ees'> } >> r4 r <f' aes'>4( <ees' g'> <d' f'>)
 << { <bes bes'>2 <bes f' aes'>4 aes'8( g') g'4 g' g' } \\
 { d'4 ees' s4 <bes ees'> <bes ees'> <bes ees'> <bes ees'> } >> r4
 \override TupletBracket #'transparent = ##t
 \times 4/6 { r16 bes16[ c' d' ees' f'] } <ees' g'>4( <f' aes'> <g' bes'>) <c' f' a' c''>2 <d' f' bes' d''>4
 <ees' f' a' ees''>4 <ees' f' a' ees''> <d' f' bes' d''> <g' bes' ees'' g''> r r
 << { <g' g''>2( s4 <ees' ees''>2 <d' bes' d''>4) } \\
 { a4\rest a'4 \stemUp <f' bes' f''>4~ \stemDown bes'4 a' s4 } >>
 \appoggiatura d''16 <ees' g' c''>4 <d' f' bes'> <c' ees' f' a'> <d' f' bes'>4 r }
 \repeat volta 2 { bes4 << { bes'2.~ bes'4 aes'!2~ aes'4 g'4. ees'8 } \\
 { c'4\rest bes c' aes!2 bes4 g2 a4 } >> ees'8[ d' c' bes] bes'8 bes'
 << { bes''2.~ bes''4 aes''2~ aes''4 g''4. ees''8 ees''8[ d'' c'' bes'] } \\
 { e'4\rest e'8\rest bes'8 c''4~ c''8 aes'2 bes'8~ bes'8( g')~ g'4 a' bes'2 } >> r4 R2. r4 r bes4
 << { <g' bes'>4( <f' aes'> <ees' g'>) g'2 aes'8( g') g'8( f') f'4 f' f' } \\
 { bes2. <bes ees'>2 <bes ees'>4 <c' ees'>4 <c' ees'> <c' ees'> <c' ees'> } >> r4 r
 <f' aes'>4( <ees' g'> <d' f'>) <bes bes'>2 <aes bes>4 <g ees'>4 <g bes ees'> <g bes ees'> <g bes ees'> r }

 \key aes \major
 \repeat volta 2 {
 ees'8^\markup { \large "Trio." } g' aes'8 r r4 aes'8 c'' ees''8 r r4 ees''8 g'' aes''8 r r4 aes''8 c'''
 ees'''8[ d''' f''' ees''' des''' bes''] aes''4 aes'' aes''8 bes'' aes''8[ g'' f'' ees''] r4 r8 c'8[ ees' aes'] ees''8 r
 r8 g'8[ bes' ees''] des'''8 r r8 c''8[ ees'' aes''] c'''8 r ees'''8( d''' f''' ees''' des''' bes'')
 aes''4 aes'' bes''8 c''' aes''4 r }
 \repeat volta 2 { <ees'' ees'''>4 <fes'' fes'''>4. <ees'' ees'''>8[ <des''! des'''!> <ces'' ces'''>]
 <bes' bes''>2 <c''! c'''!>8 <des'' des'''> <ees'' ees'''>4. <des'' des'''>8[ <c'' c'''> <bes' bes''>]
 <aes' aes''>8[ <g' g''> <f' f''> <ees' ees''> <d' d''> <bes bes'>]
 <ees' ees''>4 r r r4 bes8[ d'] ees'4 r4 bes8[ d'] ees'4 r4 r ees'8 g' aes' r r4 aes'8 c'' ees''8 r r4 ees''8 g''
 aes''8 r r4 aes''8 c''' ees'''8[ d''' f''' ees''' d''' ees'''] d'''[ ees''' f''' ees''' des''' c''']
 bes''4 bes'' bes''8 c''' aes''4 r }
}

 \new Staff = "down" {
 \clef bass
 \key ees \major
 \time 3/4
 \repeat volta 2 {
 \partial 4 r4
 <ees, ees>2. <ees, ees>4( <f, f> <g, g>) <aes, aes>4 <aes, aes> <aes, aes> <aes, aes> r r <bes, bes>2.
 <bes,, bes,>4( <c, c> <d, d>) <ees, ees>4 <ees, ees> <ees, ees> <ees, ees> r r
 <ees, ees>2.~ <ees, ees>4 <ees, ees> <d, d> <c, c> <f, f> <bes,, bes,> <ees, ees> r r
 <ees ees'>2 <d d'>4 <c c'>2 <bes, bes>4 ees4 f f, <bes, bes>4 r }
 \repeat volta 2 { r4 << { b4\rest b4\rest ees4 c2 d4 ees2 c4 bes2 } \\ { bes,2. bes,2. bes,2. bes,2 } >> r4
 \clef treble << { b'8\rest bes8 d'4. ees'8 c'4. c'8 d'4 ees'4. ees'8 c'4 d'2 } \\
 { a8\rest bes2~ bes8~ bes2. bes2. bes2 } >>
 \clef bass << { g'8[ ees'] ees'[ d' c' bes a bes] } \\ { a4 bes2 a,4\rest } >> a8[ bes c' bes aes f] ees2.
 <ees, ees>4( <f, f> <g, g>) <aes, aes>4 <aes, aes> <aes, aes> <aes, aes> r r
 <bes, bes>2. <bes,, bes,>4( <c, c> <d, d>) <ees, ees>4 <ees, ees> <ees, ees> <ees, ees> r }

 \key aes \major
 \repeat volta 2 { r4 r8 aes,8([ aes c'] ees') r r8 ees([ bes des'] ees') r r8 aes([ c' ees'] aes') r
 <g bes des' ees'>2. <aes c' ees'>4 <aes c' ees'> <f aes bes d'> <ees g bes ees'>2 ees8[ g]
 aes8 r r4 \clef treble aes8[ c'] ees'8 r r4 ees'8[ g'] aes'8 r r4 aes'8[ c''] <ees' g' des''>2.
 <f' aes' c''>4 <des' f' aes' bes'> <ees' g' bes'> <aes aes'> r }
 \clef bass \repeat volta 2 { <ees ees'>4 <fes fes'>4. <ees ees'>8[ <des! des'!> <ces ces'>]
 <bes, bes>2 <c! c'!>8 <des des'> <ees ees'>4. <des des'>8[ <c c'> <bes, bes>]
 <aes, aes>8[ <g, g> <f, f> <ees, ees> <d, d> <bes,, bes,>]
 <ees, ees>4 r bes,8[ d] ees4 r bes,8[ d] ees4 r bes,8[ d] ees4 r r r8 aes,8[ aes c'] ees' r
 r8 ees[ bes des'!] ees' r r8 aes[ c' ees'] aes' r <g bes des' ees'>2. <aes c' ees'>2.
 <ees g des' ees'>4 <ees g des' ees'> <ees g des' ees'>
 <aes c' ees'>4_\markup { \small \center-align { "Menuetto da capo." } } r4 }
}
>>

 \layout { }

}



\score {

 \unfoldRepeats

 \new GrandStaff
 <<
 \new Staff = "up" {
 \clef treble
 \key ees \major
 \time 3/4
 \override Score.MetronomeMark #'transparent = ##t
 \tempo 4 = 112
 \repeat volta 2 {
 \partial 4 bes4
 << { <g' bes'>4^\markup { \large "Moderato." }( <f' aes'> <ees' g'>) g'2 aes'8( g') g'8( f') f'4 f' f' } \\
 { bes2. <bes ees'>2 <bes ees'>4 <c' ees'>4 <c' ees'> <c' ees'> <c' ees'> } >> r4 r <f' aes'>4( <ees' g'> <d' f'>)
 << { <bes bes'>2 <bes f' aes'>4 aes'8( g') g'4 g' g' } \\
 { d'4 ees' s4 <bes ees'> <bes ees'> <bes ees'> <bes ees'> } >> r4
 \override TupletBracket #'transparent = ##t
 \times 4/6 { r16 bes16[ c' d' ees' f'] } <ees' g'>4( <f' aes'> <g' bes'>) <c' f' a' c''>2 <d' f' bes' d''>4
 <ees' f' a' ees''>4 <ees' f' a' ees''> <d' f' bes' d''> <g' bes' ees'' g''> r r
 << { <g' g''>2( s4 <ees' ees''>2 <d' bes' d''>4) } \\
 { a4\rest a'4 \stemUp <f' bes' f''>4~ \stemDown bes'4 a' s4 } >>
 \appoggiatura d''16 <ees' g' c''>4 <d' f' bes'> <c' ees' f' a'> <d' f' bes'>4 r }
 \repeat volta 2 { bes4 << { bes'2.~ bes'4 aes'!2~ aes'4 g'4. ees'8 } \\
 { c'4\rest bes c' aes!2 bes4 g2 a4 } >> ees'8[ d' c' bes] bes'8 bes'
 << { bes''2.~ bes''4 aes''2~ aes''4 g''4. ees''8 ees''8[ d'' c'' bes'] } \\
 { e'4\rest e'8\rest bes'8 c''4~ c''8 aes'2 bes'8~ bes'8( g')~ g'4 a' bes'2 } >> r4 R2. r4 r bes4
 << { <g' bes'>4( <f' aes'> <ees' g'>) g'2 aes'8( g') g'8( f') f'4 f' f' } \\
 { bes2. <bes ees'>2 <bes ees'>4 <c' ees'>4 <c' ees'> <c' ees'> <c' ees'> } >> r4 r
 <f' aes'>4( <ees' g'> <d' f'>) <bes bes'>2 <aes bes>4 <g ees'>4 <g bes ees'> <g bes ees'> <g bes ees'> r }

 \key aes \major
 \repeat volta 2 {
 ees'8^\markup { \large "Trio." } g' aes'8 r r4 aes'8 c'' ees''8 r r4 ees''8 g'' aes''8 r r4 aes''8 c'''
 ees'''8[ d''' f''' ees''' des''' bes''] aes''4 aes'' aes''8 bes'' aes''8[ g'' f'' ees''] r4 r8 c'8[ ees' aes'] ees''8 r
 r8 g'8[ bes' ees''] des'''8 r r8 c''8[ ees'' aes''] c'''8 r ees'''8( d''' f''' ees''' des''' bes'')
 aes''4 aes'' bes''8 c''' aes''4 r }
 \repeat volta 2 { <ees'' ees'''>4 <fes'' fes'''>4. <ees'' ees'''>8[ <des''! des'''!> <ces'' ces'''>]
 <bes' bes''>2 <c''! c'''!>8 <des'' des'''> <ees'' ees'''>4. <des'' des'''>8[ <c'' c'''> <bes' bes''>]
 <aes' aes''>8[ <g' g''> <f' f''> <ees' ees''> <d' d''> <bes bes'>]
 <ees' ees''>4 r r r4 bes8[ d'] ees'4 r4 bes8[ d'] ees'4 r4 r ees'8 g' aes' r r4 aes'8 c'' ees''8 r r4 ees''8 g''
 aes''8 r r4 aes''8 c''' ees'''8[ d''' f''' ees''' d''' ees'''] d'''[ ees''' f''' ees''' des''' c''']
 bes''4 bes'' bes''8 c''' aes''4 r }
}

 \new Staff = "down" {
 \clef bass
 \key ees \major
 \time 3/4
 \repeat volta 2 {
 \partial 4 r4
 <ees, ees>2. <ees, ees>4( <f, f> <g, g>) <aes, aes>4 <aes, aes> <aes, aes> <aes, aes> r r <bes, bes>2.
 <bes,, bes,>4( <c, c> <d, d>) <ees, ees>4 <ees, ees> <ees, ees> <ees, ees> r r
 <ees, ees>2.~ <ees, ees>4 <ees, ees> <d, d> <c, c> <f, f> <bes,, bes,> <ees, ees> r r
 <ees ees'>2 <d d'>4 <c c'>2 <bes, bes>4 ees4 f f, <bes, bes>4 r }
 \repeat volta 2 { r4 << { b4\rest b4\rest ees4 c2 d4 ees2 c4 bes2 } \\ { bes,2. bes,2. bes,2. bes,2 } >> r4
 \clef treble << { b'8\rest bes8 d'4. ees'8 c'4. c'8 d'4 ees'4. ees'8 c'4 d'2 } \\
 { a8\rest bes2~ bes8~ bes2. bes2. bes2 } >>
 \clef bass << { g'8[ ees'] ees'[ d' c' bes a bes] } \\ { a4 bes2 a,4\rest } >> a8[ bes c' bes aes f] ees2.
 <ees, ees>4( <f, f> <g, g>) <aes, aes>4 <aes, aes> <aes, aes> <aes, aes> r r
 <bes, bes>2. <bes,, bes,>4( <c, c> <d, d>) <ees, ees>4 <ees, ees> <ees, ees> <ees, ees> r }

 \key aes \major
 \repeat volta 2 { r4 r8 aes,8([ aes c'] ees') r r8 ees([ bes des'] ees') r r8 aes([ c' ees'] aes') r
 <g bes des' ees'>2. <aes c' ees'>4 <aes c' ees'> <f aes bes d'> <ees g bes ees'>2 ees8[ g]
 aes8 r r4 \clef treble aes8[ c'] ees'8 r r4 ees'8[ g'] aes'8 r r4 aes'8[ c''] <ees' g' des''>2.
 <f' aes' c''>4 <des' f' aes' bes'> <ees' g' bes'> <aes aes'> r }
 \clef bass \repeat volta 2 { <ees ees'>4 <fes fes'>4. <ees ees'>8[ <des! des'!> <ces ces'>]
 <bes, bes>2 <c! c'!>8 <des des'> <ees ees'>4. <des des'>8[ <c c'> <bes, bes>]
 <aes, aes>8[ <g, g> <f, f> <ees, ees> <d, d> <bes,, bes,>]
 <ees, ees>4 r bes,8[ d] ees4 r bes,8[ d] ees4 r bes,8[ d] ees4 r r r8 aes,8[ aes c'] ees' r
 r8 ees[ bes des'!] ees' r r8 aes[ c' ees'] aes' r <g bes des' ees'>2. <aes c' ees'>2.
 <ees g des' ees'>4 <ees g des' ees'> <ees g des' ees'>
 <aes c' ees'>4_\markup { \small \center-align { "Menuetto da capo." } } r4 }
}
>>

 \midi { }

}
