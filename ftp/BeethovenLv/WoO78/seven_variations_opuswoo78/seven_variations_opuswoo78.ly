\version "2.10.3"

 \header {
  title = "Seven Variations - Opus WoO 78"
  subtitle = "on God Save the King"
  composer = "Ludwig Van Beethoven"
  mutopiatitle = "Seven Variations - Opus WoO 78"
  mutopiacomposer = "BeethovenLv"
  mutopiainstrument = "Piano"
  mutopiaopus = "WoO 78"
  date = "1803"
  source = "Breitkopf & Hartel (1862-1865)"
  style = "Classical"
  copyright = "Public Domain"
  maintainer = "Stelios Samelis"
  lastupdated = "2007/August/12"
  version = "2.10.3"
 footer = "Mutopia-2007/08/14-1024"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\score {

 \new PianoStaff
 <<
 \set PianoStaff.instrumentName = "TEMA."
 \new Staff = "up" {
 \clef treble
 \key c \major
 \time 3/4
 \override Score.MetronomeMark #'transparent = ##t
 \tempo 4 = 88
 \repeat volta 2 { <e' c''>4 <g' c''> <a' d''> <d' b'>4. <g' c''>8 <g' d''>4 <g' c'' e''>4 <a' c'' e''> <a' d'' f''>
 << { e''4. d''8 c''4 e''8[ d''] c''4 b' } \\ { <g' c''>4 b' a' <f' a'> <e' g'> <d' g'> } >> }
 \alternative { { << { c''4 } \\ { <e' g'>4 } >> r4 r4 } { << { c''4. } \\ { <e' g'>4. } >> d''8[ e'' f''] } }
 \repeat volta 2 { <g' e'' g''>4 <g' e'' g''> <g' e'' g''> <g' e'' g''>4. <g' d'' f''>8 <g' c'' e''>4
 <g' d'' f''>4 <g' d'' f''> <g' d'' f''> <g' d'' f''>4. <g' c'' e''>8 <g' b' d''>4
 <g' c'' e''>4 <a' f''>8[ <g' e''> <f' d''> <e' c''>] <g' c'' e''>4. <f' c'' f''>8 <g' c'' g''>4
 \times 2/3 { a''8[ g'' f''] } <g' c'' e''>4 <f' b' d''> }
 \alternative { { <e' g' c''>4 r8 d''8[ e'' f''] } { <e' g' c''>4 r4 r } } \bar "|."
 \break

 << { c''8^\markup { \large "VAR. I." }( b' c''4 d'') } \\ { s4 e'8([ a' f' a']) } >>
 \repeat volta 2 { << { b'4.( c''8[ d'' b']) e''8( dis'' e''4) } \\ { d'8( fis') g'2 d'4\rest d'8\rest cis''8 } >>
 <e'' g''>8[ <d''! f''>]~ <d'' f''>[ <c''! e''>]~ <c'' e''>([ <b' d''>] <g' c''>[ <g' bes' cis''>])
 e''8([ d''16]) r16 d''8([ c''!16]) r16 c''8([ b'!16]) r16 }
 \alternative {
 { c''8([ e' f' g' a' b']) << { c''8( b' c''4 d'') } \\ { s4 e'8([ a' f' a']) } >> } { c''8([ b' c'' d'' e'' f'']) } } \bar "||"
 \repeat volta 2 { << { g''4 g'' g'' g''4. f''8 e''4 f''4 f'' f'' f''4. e''8 d''4 } \\
 { g''8([ fis'' g'' f'' e'' d'']) cis''([ bes' a' d''~ d'' cis''!]) f''8([ e'' f'' e'' d'' c''!]) b'([ aes' g' c''~ c'' b']) } >>
 <c'' e''>4( <c'' f''>8[ <b' e''> <a'! d''> <g' c''>]) r8 <c'' e''>4( <d'' f''>8[ <e'' g''> <e'' gis''>])
 <f'' a''>8([ <d'' f''>]~ <d'' f''>[ <c'' e''>]~ <c'' e''>[ <f' b' d''>])~ }
 \alternative { { <f' b' d''>4( <e' g' c''>8) d''8([ e'' f'']) } { <f' b' d''>4( <e' g' c''>8) r8 r4 } } \bar "||"
 \break

 \repeat volta 2 { r4^\markup { \large "VAR. II." } r16 e'16 a' g' f' a' d'' c'' b' a' g' a' b' a' b' c'' d'' b' c'' d''
 e'' d'' c'' d'' e'' d'' e'' c'' a' f'' g'' f'' g' e'' f'' e'' f' d'' e'' d'' e' c'' e' cis'' f' d'' e'' d'' e' c''! d'' c'' d' b' c'' b' }
 \alternative { { c''16 c'' b' c'' g' c'' f' c'' e' c'' d' c'' } { e'16 c'' b' c'' b' c'' d'' g' e'' g' f'' g' } }
 \repeat volta 2 { g''16 g' e'' g' c'' g' e'' g' g''^\sf g' fis'' g' g'' g' e'' g' c'' g' g'' g' f''! g' e'' g'
 f'' g' d'' g' b' g' d'' g' f''^\sf g' e'' g' f''16 g' d'' g' b' g' f'' g' e'' g' dis'' g' e'' dis'' e'' c'' f'' e'' d'' c'' a'' g'' f'' e''
 c'''16 b'' c''' c'' c''' c'' b'' c'' bes'' c'' gis'' c'' a'' e'' f'' d'' c''! e'' g''! fis'' f'' e'' f'' d'' }
 \alternative { { c''4 r16 g'16 a' b' c'' d'' e'' f'' } { c''4 r4 r4 } } \bar "|."
 \break

 \repeat volta 2 { c'16\p^\markup { \large "VAR. III." } e' g' c'' c''8 c'' r d'' r8 \acciaccatura c''16 b'16( a')
 b'8\staccato c''\staccato d''4 e'16 g' c'' e'' r e''16\staccato e''( c''') r f''\staccato f''( d''')
 r16 e''\staccato e''( c''') r d''\staccato d''( b'') r c'''[ r <g'' bes''>]
 r16 <f'' a''>[ r <f'' d'''>] r <e'' d'''>[ r <e'' c'''>] r <d'' c'''>[ r <d'' b''!>] }
 \alternative { { r8 <e'' c'''>8 <e'' g''>4\sf( <c'' e''>8) r8 } { r8 <e'' c'''>8 <e'' g''>4\sf( <c'' e''>8) r8 } }
 \repeat volta 2 { g'16 c'' e'' f'' g''8 g'' r8 g''8 r16 g''16 \acciaccatura a''16 g''16 fis'' g'' e''' f'' d''' e'' d''' e'' cis'''
 f'16 a' d'' e'' f''8 f'' r f'' r16 f''16 \acciaccatura g''16 f''16 e'' f''16 d''' e'' c''' d'' c''' d'' b''
 r16 e'' e'' c''' f'' c''' e'' c''' d'' c''' c'' c''' r16 e'' e'' c'' e'' c'' f'' c'' g'' c'' gis'' c''
 r16 a'' r <d''' f'''> r <d''' e'''> r <c''' e'''> r <c''' d'''> r <b'' d'''> }
 \alternative { { r8 <e'' c'''>8 <g'' e'''>4\sf( <e'' c'''>8) r8 } { r8 <e'' c'''>8 <g'' e'''>4\sf( <e'' c'''>8) r8 } } \bar "|."
 \break

 \repeat volta 2 { s4 <g' cis''>8\f\staccato^\markup { \large "VAR. IV." } <g' cis''>\staccato <f' d''>4_\markup { "ten." }
 r8 s8 <d'' b''>8 <d'' b''> <c'' c'''>4^\markup { "ten." } r8 <g c' e'>16 <g c' e'> <c'' e''>8 <c'' e''> <c'' f''>4
 r8 <g c' e'>16 <g c' e'> r8 <g' d''>16 <g' d''> r8 s8 s4 s8 <e' c''>16 <e' c''> r8 s8 }
 \alternative { { r16 c'16[ e' g'] c'' e'' g'' c''' c''8 r8 } { r16 c'16[ e' g'] c'' e'' g'' c''' c''8 r8 } }
 \repeat volta 2 { s4 s8 <c' e' g'>16 <c' e' g'> r8 <c'' e'' g''>16 <c'' e'' g''>
 r8 <cis'' e'' g''>16 <cis'' e'' g''> <a'' cis'''>8\staccato[ <a'' d'''>\staccato] <a'' e'''>4\sf
 s4 s8 <c' d' f'>16[ <c' d' f'>] r8 <c'' d'' f''>16 <c'' d'' f''>
 r8 <b' d'' f''>16 <b' d'' f''> <g'' d''' f'''>8\staccato <g'' c''' e'''>\staccato <g'' b'' d'''>4\sf
 r8 <c''' e'''>16 <c''' e'''> r8 <c''' e'''>16 <c''' e'''> r8 <c''' e'''>16 <c''' e'''> r16 e'''16[ c''' g''] e'' c'' g' e' c'8[ <c' gis'>]
 r8 <c' d' a'>16 <c' d' a'> r8 <c' d' g'!>16 <c' d' g'> r8 <b d' g'>16 <b d' g'> }
 \alternative { { r16 c'[ e' g'] c'' e'' g'' b'' c'''8 r8 } { r16 c'[ e' g'] c'' e'' g'' b'' c'''8 r8 } } \bar "|."
 \break

 \key c \minor
 \override TupletBracket #'transparent = ##t
 \override TupletNumber #'transparent = ##t
 \repeat volta 2 { c''4^\markup { "con espressione" }^\markup { \large "VAR. V." }~(
 \set tupletSpannerDuration = #(ly:make-moment 1 4) \times 2/3 { c''8[ b' c''] d''[ c'' d'']) }
 b'4~( \times 2/3 { b'8[ g' a'] b'[ c'' d'']) } ees''4~( \times 2/3 { ees''8[ d'' ees''] f''[ g'' f'']) ees''([ f'' ees''] d''[ ees'' d''] c''[ b' c'']) }
 \times 2/3 { des''8[ ees'' des''] c''[ d'' c''] \acciaccatura c''16 b'8[ a' b'] } }
 \alternative { { c''4~ \times 2/3 { c''8[ fis'( g'] a'[ g' b']) } } { c''4~ \times 2/3 { c''8[ bes'!( c''] d''[ ees'' f'']) } } }
 \repeat volta 2 { g''4~( \times 2/3 { g''8[ ees'' f''] g''[ ees'' f'']) } g''4~ \times 2/3 { g''8[ g''8( f''] \acciaccatura f''16 ees''8[ d'' ees''] }
 f''4~( \times 2/3 { f''8[ d'' ees''] f''[ d'' ees'']) } f''4~ \times 2/3 { f''8[ f''8( ees''] \acciaccatura ees''16 d''8[ c'' d''] }
 ees''4~ \times 2/3 { ees''8([ b' c''] d''[ ees'' f'']) } g''4 \acciaccatura c''16 c'''4\sf~( \times 2/3 { c'''8\>[ g'' bes''!\!]) }
 \times 2/3 { aes''8\p([ f'' des'']) } c''4 b'4^\trill }
 \alternative { { <b' d''!>4( \times 2/3 { c''8)[ bes'!( c''] d''[ ees'' f'']) } } { <b' d''!>4( c''8) r8 } } \bar "|."
 \break

 \key c \major
 \time 4/4
 \partial 4 <e' g' c''>8.^\markup { "Allegro. Alla Marcia." }^\markup { \large "VAR. VI." } <e' g' c''>16
 \repeat volta 2 { <e' g' c''>4. <f' g' b'>8 <g' c''>8.\staccato[ <f' g' b'>16\staccato <e' g' c''>8.\staccato <f' a' d''>16\staccato]
 <d' g' b'>4. <g' c''>8 <g' d''>8.\staccato[ <g' b'>16\staccato <g' c''>8.\staccato <g' d''>16\staccato]
 <g' e''>4. <g' d''>8 <g' e''>8.\staccato[ <g' e''>16\staccato <a' f''>8.\staccato <a' f''>16\staccato]
 <g' e''>8.[ <g' e''>16 <f' d''>8. <f' d''>16] <e' c''>8.[ <e' c''>16 <e' cis''>8. <e' cis''>16]
 <f' d''>4 <f' a' d''>8. <f' a' d''>16 <e' g' c''!>8.[ <e' g' c''>16 <d' g' b'>8. <g' d' b'>16] }
 \alternative { { <e' g' c''>4 c'''16 g'' c''' g'' e''4 g''16 e'' g'' e'' } { <e' g' c''>4 c'''16 g'' c''' g'' e''4 <g' c'' g''>8. <g' c'' g''>16 } }
 \repeat volta 2 { <g' c'' g''>4. <g' c'' g''>8 <g' c'' g''>8.[ <g' c'' g''>16 <g' b' f''>8. <g' bes' e''>16]
 <g' b'! f''>4 d'16 b d' b g4 <g' b' f''>8. <g' b' f''>16 <g' b' f''>4. <g' b' f''>8 <g' b' f''>8.[ <g' b' f''>16 <g' c'' e''>8. <g' d''>16]
 <gis' e''>4 b'16 gis' b' gis' e'4 <gis' e''>8. <gis' e''>16 <gis' e''>4 <gis' e''>8. <gis' e''>16 <a' e''>4 f''16 e'' d'' c''
 <c'' e'' g''!>4. <c'' f'' a''>8 <c'' g'' bes''>8. <c'' g'' bes''>16 <c'' g'' bes''>8. <c'' g'' bes''>16
 <c'' f'' a''>4. <e'' g''>16 <d'' f''> <c'' e''>8. <c'' e''>16 <f'! d''>8. <f' d''>16 }
 \alternative { { <e' c''>4 g'16 e' g' e' c'4 <g' c'' g''>8. <g' c'' g''>16 } { <e' c''>8 c'16[ e'] d'16 f' e' g' f' a' g' b' a' c'' b' d'' } } \bar "||"
 \break

 c''16^\markup { \large "VAR. VII." } g' e' g' c'' g' b' g' c'' g' b' g' c'' g' d'' a' b' g' fis' g' b' g' c'' g' d'' g' b' g' c'' g' d'' g'
 e''16 c'' g' c'' e'' g' d'' g' e'' g' e'' c'' f'' c'' f'' a' e'' c'' g' c'' e'' g' <b' d''> g' c'' g' b' g' c'' g' cis'' g'
 d''16 f' d'' g' d'' a' c''! f' c'' e' c'' ees' c'' d' b' f'! <e'! c''>8 g'16[ b'] a' c'' b' d'' c'' e'' d'' f'' e'' g'' f'' a''
 g''16 c'' g' c'' g'' c'' g'' bes' g'' a' g'' d'' g'' cis'' g'' d'' <e'' g''>8[ e''' <d'' f''> d'''] <cis'' e''> cis''' r8 d''16 e''
 f''16 a' f' a' f'' a' f'' aes' f'' g' f'' c'' f'' b' f'' c'' <f'' d''>8[ d''' <c'' e''> c'''] <b' d''> b'' r16 b'16 c'' d''
 e''16 c'' g' c'' e'' c'' e'' c'' f'' c'' e'' b' d'' a' c'' g' e'' c'' g' c'' e'' c'' f'' c'' g'' c'' fis'' c'' g'' c'' gis'' c''
 a''16 c'' d'' c'' f''! c'' d'' c'' e'' c'' d'' c'' d'' b' a' b' c''8 g'16 b' a' c'' b' d'' c'' e'' d'' f'' e'' g'' f'' a'' g''8 g''4\sf fis''8 g''8([ fis'' g'' fis''])
 g''8([ e'''16]) r16 f''!8([ d'''16]) r16 e''8([ c'''16]) r16 r8 e''8 f''8 f''4\sf e''8 f''8([ e'' f'' e''])
 f''8([ d'''16]) r16 e''8([ c'''16]) r16 d''8([ b''16]) r16 r16 b'16[ c'' d'']
 e''16 c'' g' c'' e'' c'' e'' c'' f'' c'' e'' b' d'' a' c'' g' e'' c'' g' c'' e'' c'' f'' c'' g'' c'' fis'' c'' g'' c'' gis'' c''
 a'' c'' d'' c'' f''! c'' d'' c'' e'' c'' d'' c'' d'' b' c'' b' e''16^\markup { "Coda" } c'' g' c'' e'' c'' f'' c'' g'' c'' fis'' c'' g'' c'' gis'' c''
 a''16 c'' gis'' c'' a'' c'' gis'' c'' a'' c'' gis'' c'' a'' c'' gis'' c'' a'' f'' c'' a' f'' c'' a' f' c'' a' f' c' a' f' c' a s1 \bar "||"
 \time 3/4 r4^\markup { "Adagio." } <a d' f'>4 ( <g d' g'>) <cis' e'>4..( <d' f'>16 <e' g'>4)
 << { a'4( a'4. c''16 bes') a'4( g'^\trill f') a'8.( g'16 f'4. e'8) f'8. d'16 } \\
 { ees'4 ees'4. d'8 f'4 e'!4 f' d'8 bes c'4 bes4 a8[ a] } >> c'4~ c'8.^\fermata b!16^\markup { "Allegro." }
 \clef bass
 \override TupletBracket #'transparent = ##t
 \override TupletNumber #'transparent = ##t
 \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { r16 e16\p[ g c' g e] r e[ g c' g e] r f[ a d' a f] r d[ g b g d] r g[ b] r g[ c'] r g[ d'] r g[ b]
 r16 g[ d' e' g d'] r g[ c' e' g c'] r a[ d' f' a d'] g[ d' e' g c' e'] f[ c' d' f b d'] e[ a c' e a cis']
 f[ a cis' f a d'] e[ g d' e g c'] d[ g c' d g b] }
 \clef treble r16 c' d' e' f' g' a' b' c'' d'' e'' f'' <bes' g''>4 <bes' g''> <bes' g''> <bes' g''>4. <a' f''>8[ <g' e''> <gis' e''>]
 <a' c'' f''>4 <a' c'' f''> <a' c'' f''> <a' c'' f''>4. <g' c'' e''>8[ <f' c'' d''> <fis' c'' dis''>]
 \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { r16 e'16[ c'' e'' c'' e'] r f'![ f''!] r e'[ e''] r d'![ d''!] r c'[ c''] r e'[ c'' e'' c'' e'] r e'[ e''] r f'[ f''] r g'[ g''] r gis'[ gis'']
 a'16[ c'' a''] d''[ f'' d'''] d''[ e'' d'''] c''[ e'' c'''] c''[ d'' c'''] b'[ d'' b''] } c'''8 r8 r4 r4
 r16 c''[( c'''\staccato) c'''] r c''[( c'''\staccato) c'''] r c''[( c'''\staccato) c'''] c'' c''' c'' c''' c'' c''' c'' c''' c'' c''' c'' c'''
 r16 c''[( c'''\staccato) c'''] r c''[( c'''\staccato) c'''] r c''[( c'''\staccato) c'''] c'' c''' c'' c''' c'' c''' c'' c''' c'' c''' c'' c'''
 \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { r16 c'''[ b'' c''' b'' c'''] r b''([ c''')] r b''([ c''')] r b''([ c''')] r b''([ c''')]
 r16 b''[ c''' e''' d''' c'''] b''[ a'' g'' f'' e'' d''] c''[ b' c'' g'' e'' c''] a'[ a'' gis'' a'' f'' d''] r g''![ fis'' g'' e'' c''] } d''4^\trill
 \times 2/3 { r16 c''([ e'']) r c''([ e'']) r c''([ f'']) r b'([ e'']) r a'([ d'']) r g'([ c''])
 r16 c'([ a']) r c'([ a']) r f'([ a']) r f'([ a']) r f'([ b']) r f'([ b']) r16 e'([ c'']) r c''([ c''']) r f''([ c''']) r e''([ c''']) r d''([ c''']) r c''([ c'''])
 r16 c''([ a'']) r c''([ a'']) r f''([ a'']) r f''([ a'']) r f''([ b'']) r f''([ b'']) r16 e''([ c''']) r f''([ b'']) r e''([ c''']) r b''([ d''']) r c'''([ e''']) r b''([ d''']) }
 <c''' e'''>8\staccato r8 s4 s4 \bar "|."
}

 \new Staff = "down" {
 \clef bass
 \key c \major
 \time 3/4
 \repeat volta 2 { c4 e f g4. a8 b4 c4 a f g <gis f'> <a e'> f4 g! g, }
 \alternative { { c4 g, c, } { c4 c, r } }
 \repeat volta 2 { c4 e g c' c r g, b, d g g, r c4 c' c' c'4. a8 e4 f8[ d] g4 g, }
 \alternative { { c4 c, r } { c4 g, c, } } \bar "|."
 \break

 r4 a4( d8 f) \repeat volta 2 { g4.( a8[ b g]) c'8([ b c' a d f]) g4 f e r8 <f a> r <g c' e'> r <g d' f'> }
 \alternative { { <c' e'>4 r8 e'8([ f' d']) c'8( gis a4 d8 f) } { <c' e'>4 r8 b8([ c' d']) } } \bar "||"
 \repeat volta 2 { e'([ dis' e' d' c' bes]) \clef treble << { a8([ d' cis' a' gis' g']) } \\ { a2~ a8[ a] } >>
 <d' f'>8([ cis' d' c' b aes]) << { g8([ c' b g' fis' f']) } \\ { g2~ g8[ g] } >>
 << { r8 b'8([ a' g' f' e']) a'([ g' f' e' d' c'])~ c'8[ d']~ d'[ e'16 fis'] g'8 } \\ { c'2. s2 s4 f4 g4~ g8 } >> \clef bass g,8\staccato }
 \alternative { { c8\staccato[ g\staccato c'\staccato] b8([ c' d']) } { c8[ g c'] g16 b a[ c' b d'] } } \bar "||"
 \break

 \repeat volta 2 { c'16 b a b c'8[ cis' d' fis] g4. g16 a b g a b c'16 b a b c' b c' a f! a d d'
 g c' g c' gis b gis b a c' g bes f a d f g, c e g g, d f g }
 \alternative { { <c e>4 r8 g8[ a b] } { <c e>4 r8 b8[ c' d'] } }
 \repeat volta 2 { e'8([ c' g c' e' dis']) e'([ c' g e' d'! c']) d'([ b g b d' cis']) d'8[ b g d' c'! b]
 c'16 b a g a g f e f e d c <c e>4. <d f>8[ <e g> <e c'>]( <f c'>16) cis' d' f' e' g c' g d' g b g }
 \alternative { { c'16 g e g c4 r4 } { c'16 g e g c g, e, g, c,4 } } \bar "|."
 \break

 \repeat volta 2 { r4 e16\p c' g c' f d' a d' g d' b d' g b a c' b d' g b c16 c' g c' a e' c' e' f d' a d'
 g e' c' e' f d' g d' e c' e cis' f d' d d' g e' c'! e' g g' fis' g' }
 \alternative { { c16 e g b c'8 r8 r4 } { c16 e g b c'8 r8 r4 } }
 \repeat volta 2 { r4 e16 c' g c' d bes f bes cis a e a cis a d a a, a g e d16 a f a d a f a c aes d aes
 b,16 g d g b, g c g g, g f d c e g c' a c' g c' f c' e c' bes,8 bes r8 <a c'> <e c'>[ <e c'>] f16 c' d d' g e' c' e' g g' fis' g' }
 \alternative { { c16 e g b c'8 r8 r4 } { c16 e g b c'8 r8 r4 } } \bar "|."
 \break

 \repeat volta 2 { << { c'8\rest <e g c'>16 <e g c'> } \\ { <c, c>16\f <c, c> e,8\rest } >> <a e'>8\staccato <a e'>\staccato <d d'>4
 << { s8 <e g c'!>16 <e g c'> } \\ { <g,, g,>16 <g,, g,> e,8\rest } >> \clef treble <f' g'>8 <f' g'> <e' g'>4
 \clef bass <bes,, bes,>16 <bes,, bes,> r8 \clef treble <bes g'>8 <bes g'> <a f'>4
 \clef bass <g,, g,>16 <g,, g,> r8 <f b!>16 <f b> r8 << { s8 <g bes cis'>16 <g bes cis'> } \\ { <e, e>16 <e, e> b,8\rest } >>
 << { c'8\rest <f a d'>16 <f a d'> e'8\rest } \\ { <f,, f,>16 <f,, f,> f,8\rest g16[ g] } >> r8
 << { s8 <d f b!>16 <d f b> } \\ { <g,, g,>16 <g,, g,> f,8\rest } >> }
 \alternative { { <c, c>8 r8 r4 r16 c16 g, e, } { <c, c>8 r8 r4 r16 g,16 e, c, } }
 \repeat volta 2 { << { a8\rest <c e g>16 <c e g> c'8\rest } \\ { bes,,16 bes,, d,8\rest bes,16[ bes,] } >> r8 bes16 bes16 r8
 a16 a r8 \clef treble <e'' g''>8\staccato <d'' f''>\staccato <cis'' e''>4\sf
 \clef bass << { b8\rest <c! d f>16 <c d f> b8\rest } \\ { aes,,16 aes,, d,8\rest aes,16[ aes,] } >> r8 aes16 aes r8
 g16 g r8 \clef treble <g' b' d''>8\staccato[ <g' c'' e''>\staccato] <g' d'' f''>4\sf
 \clef bass <c, c>16 <c, c> r8 <e, e>16 <e, e> r8 <g, g>16 <g, g> r8 <c c'>8 r8 r4 r8 <e, e>8
 <f, f>16 <f, f> r8 <g, g>16 <g, g> r8 <g,, g,>16 <g,, g,> r8 }
 \alternative { { <c, c>8 r8 r4 r16 g,[ e, c,] } { <c, c>8 r8 r4 r8 c,8 } } \bar "|."
 \break

 \key c \minor
 \override TupletBracket #'transparent = ##t
 \override TupletNumber #'transparent = ##t
 \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \repeat volta 2 { \times 2/3 { r8 c'([ ees'] a[ c' ees'] f[ a d']) g([ b d'] g[ b d'] g[ a b]) }
 \clef treble \times 2/3 { c'8([ ees' g'] c'[ ees' g'] aes![ c' f']) bes!([ ees' g'] b[ f' aes'] c'[ ees' g']) }
 \clef bass \times 2/3 { f8([ aes des'] fis[ a ees'] g[ d' f']) } }
 \alternative { { \times 2/3 { c8([ ees g] } c'8) r8 r4 } { \times 2/3 { c8([ ees g] c')[ c'( bes!] aes[ g f]) } } }
 \repeat volta 2 { \times 2/3 { ees8[ g bes] g[ bes ees'] }
 \clef treble \times 2/3 { bes[ ees' g'] ees'[ g' bes'] d'[ g' b'] c'[ g' c''] aes[ c' f'] aes[ c' f'] aes[ c' f']
 g[ b f'] a[ c' f'] b[ f' g] c'[ ees' g'] } \clef bass \times 2/3 { g8[ c' ees'] f[ b d']
 ees[ g c'] e[ g c'] e[ bes! c'] f[ aes des'] g[ c' ees'] g[ d' f'] } }
 \alternative { { \times 2/3 { c'8[ f' g'] <c' ees'>[ c'( bes] aes[ g f]) } } { \times 2/3 { c'8[ f' g'] } <c' ees'>8 r8 } } \bar "|."
 \break

 \key c \major
 \time 4/4
 \partial 4 c'8. c'16
 \repeat volta 2 { c'4. d'8 e'8.\staccato[ d'16\staccato c'8.\staccato f16\staccato]
 g4. a8 b8.\staccato[ g16\staccato a8.\staccato b16\staccato]
 c'4. b8 c'8.\staccato[ <bes c'>16\staccato <a c'>8.\staccato <f c'>16\staccato]
 <g c'>8.[ <g c'>16 <gis b!>8. <gis b>16] <a c'>8.[ <a c'>16 <g bes>8. <g bes>16] <f a>4 d8. d16 g8. g16 g,8. g,16 }
 \alternative { { c4 r4 \clef treble r4 g'16 e' g' e' }
 { \clef bass c4 \clef treble g'16 e' g' e' c'4 \clef bass <e e'>8. <e e'>16 } }
 \repeat volta 2 { <e e'>4. <e e'>8 <e e'>8.[ <e e'>16 <d d'>8. <cis cis'>16] <d d'>4 d16 b, d b, g,4 <d d'>8. <d d'>16
 <d d'>4. <d d'>8 <d d'>8.[ <d d'>16 <c c'>8. <f f'>16] <e e'>4 b16 gis b gis e4 <e b>8. <e b>16
 <e b>4 <e b>8. <e b>16 <a c'>4 <a c'>8. <a c'>16 bes4~ bes16 a g f e f g f e c d e f16 e f e f d e f g fis g fis g g, a, b, }
 \alternative { { c4 g16 e g e c4 <e e'>8. <e e'>16 } { c8 r8 r4 r2 } } \bar "||"
 \break

 c'4^\markup { \italic "ten." } e'8 d' e'[ d' e' f'] g4 g8 a b[ g a b] c'4 c'8 b c'[ bes a f]
 g4 g8 f e[ d e a] d8[ e f a] g[ fis g g,] c8 r8 r4 r2 e'4. d'8 cis'8[ bes a bes] a16 a, b,! cis d e f g a gis a bes a g f e
 d8 d'4 c'!8 b!8[ aes g aes] g16 g, a,! b, c d e fis g fis g a! g f e d c8 c'4 b8 a8[ g f e] c8 \clef treble c'4 d'8 e'8[ dis' e' e']
 f'8[ f' a' a'] g'[ g' g g] c'8 r8 r4 r2 e'16 g' f' g' e' g' dis' g' e' g' dis' g' e' g' dis' g'
 e'16 g' cis' g' d'! g' b g' c' g' b g' c' g' cis' g' d' g' b g' d' g' cis' g' d' g' cis' g' d' g' cis' g'
 d' g' b g' c'! g' e' g' g g' fis' g' f' g' d' g' \clef bass c'8[ c c' b] a[ g f e] c'[ c c' d'] \clef treble e'8[ dis' e' e']
 f'8[ f' a' a'] g'[ g'] \clef bass g[ g] c'8[ c c' d'] \clef treble e'[ dis' e' e'] f'[ e' f' e'] f'[ e' f' e'] f'8 r8 r4 r2
 \clef bass << { f'16 c' a f c' a f c a f c a, f c a, c } \\ { R1 } >> \bar "||"
 \time 3/4 <f,, f,>4 <d, d>( <bes,, bes,>) << { a2. } \\ { <a,, a,>2. } >> <c fis>4 <c fis>4. <bes, g>8 <c c'>4( <cis bes> <d a>)
 << { s4 a4 g } \\ { bes,4 c! cis } >> <d f>8 <f, f> << { g4 <d f> } \\ { <g, e>4 <g,, g,> } >>
 c,16\p c c c c, c c c f,, f, f, f, g,, g, g, g, g,, g, a,, a, b,, b, g,, g,
 c,16 c c c c, c c c f,, f, f, f, g,, g, g,, g, g,, g, gis,, gis, a,, a, g,, g, f,, f, f,, f, g,, g, g,, g, g,, g, g,, g,
 <c, c>4 r4 r4 r16 c[( c') c'\staccato] r c[( c') c'\staccato] r c[( c') c'\staccato] c16 c' c c' c c' c c' c c' c c'
 r16 c[( c') c'\staccato] r c[( c') c'\staccato] r c[( c') c'\staccato] c c' c c' c c' c c' c c' c c' c c' b c' a c' g b f a e g
 c16 c' b c' c c' a, a e, e e, e f, f d, d g, g fis g g,, g, fis, g, c, c d e f! g a b \clef treble c' d' e' f'
 <bes g'>4 <bes g'> <bes g'> <bes g'>4. <a f'>8[ <g e'> <gis e'>] <a c' f'>4 <a c' f'> <a c' f'>
 <a c' f'>4. \clef bass <g c' e'>8[ <f c' d'> <fis c' dis'>] <g c' e'>4 <a c' f'!>8[ <g c' e'> <f b d'!> <e c'>]
 <c' e'>4. <d' f'>8 <e' g'>16 c[ d e]
 \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { f16[ a d' f a d'] g[ c' e' g c' e'] g,[ b, d g a b] }
 <c c'>8\staccato[ <b, b>\staccato <a, a>\staccato <g, g>\staccato <f, f>\staccato <e, e>\staccato]
 <f, f>\staccato[ <e, e>\staccato <f, f>\staccato <d, d>\staccato <g, g>\staccato <g,, g,>\staccato]
 <c c'>8\staccato \clef treble <b b'>\staccato[ <a a'>\staccato <g g'>\staccato <f f'>\staccato <e e'>\staccato]
 \clef bass <f f'>\staccato[ <e e'>\staccato <f f'>\staccato <d d'>\staccato <g g'>\staccato <g, g>\staccato]
 <c c'>8\staccato[ <g g'>\staccato] \clef treble <c' c''>\staccato[ <g g'>\staccato] \clef bass <c c'>\staccato[ <g, g>\staccato]
 <c c'>8 r8 << { <e g c'>8 c'8\rest c'4\rest } \\ { <c, c>8 g,8\rest g,4\rest } >> \bar "|."
}
>>

 \layout { }

 \midi { }

}
