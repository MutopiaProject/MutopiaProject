\version "2.10.3"

 \header {
  title = "Piano Sonate Opus 2 No 1 (3rd Movement)"
  composer = "Ludwig Van Beethoven"
  mutopiatitle = "Sonata No. 1 (3rd Movement: Allegretto)"
  mutopiacomposer = "BeethovenLv"
  mutopiainstrument = "Piano"
  mutopiaopus = "Op. 2, No. 1"
  date = "1794/95"
  source = "Breitkopf & Hartel (1862-1865)"
  style = "Classical"
  copyright = "Public Domain"
  maintainer = "Stelios Samelis"
  lastupdated = "2008/February/08"
  version = "2.10.3"
 footer = "Mutopia-2008/02/13-1276"
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
 \tempo 4 = 168
 \repeat volta 2 { \partial 4 <c' aes'>4\p\staccato^\markup { "Allegretto." }^\markup { "MENUETTO." }
 <des' bes'>4( <bes g'>) r4 <c' aes'>( <aes f'>) <c' f'>( <c' e'> <c' f'> <c' g'>)
 << { bes'4( aes') } \\ { c'2 } >> <ees'! c''>4\staccato <f' des''>( <des' bes'>) r4
 <ees' c''>( <c' aes'>) <ees' aes'>( <ees' g'> <ees' aes'> <ees' bes'>)
 << { des''4( c'') ees'' ees'' ees'' ees'' ees''2 f''4\p } \\ { ees'2 aes'4\f( g' aes' bes') des''4( c'') s4 } >>
 aes'2( \appoggiatura c''8 <g' bes'>4) aes'4 r g''8\sf( f'') aes'2( \appoggiatura c''8 <g' bes'>4) aes'4 r4 }
 \repeat volta 2 { <c'' ees''>4\p( <des'' fes''> <bes' des''>) r4 <c'' ees''>( <aes' c''>) r4 \break
 <ees'' ges''>4( <c'' ees''>) r <des'' f''!>( <bes' des''>) r <f' bes'>2\p( \acciaccatura des''8 <a' c''>4)
 bes'4 r ges''8\sf( f'') bes'2\pp( \acciaccatura des''8 <a' c''>4) bes'4 r <a' des''>8( c'')
 bes'4 r <a' des''>8( c'') bes'4 r des''8\ff( c'' bes'8[ c'' des'' c'' bes' c''] bes'[ aes'! g' aes' g' f'] e'[ f' g' f' aes' b])
 c'4\staccato r4 r r4 r e''4\sf f''( aes'') \afterGrace c'''4^\trill { bes''16[ c'''] }
 des'''4( bes'') \afterGrace bes''4^\trill { aes''16[ bes''] } \break
 c'''4\sf( aes'') \afterGrace aes''4^\trill { bes''16[ c'''] } bes''4\sf( g'') \afterGrace g''4^\trill { f''16[ g''] } aes''4( f'') f''\sf
 f''2\p( \acciaccatura aes''8 <e'' g''>4) f''4 r4 ees''!8\pp( des'') f'2( \acciaccatura aes'8 <e' g'>4)
 f'4 r r s2 s4 s2 }
 \break
 \key f \major
 \repeat volta 2 { c'4\p^\markup { "Trio." } a'8([ g' a' f' g' a'] bes'[ a' bes' g' a' bes'] c''[ b' c'' d'' c'' bes']
 a'[ g' a' bes' a' f']) << { a'4( c'' f'') g'( d'' f'') f''4\rest f''4( e'') e''4\rest d''4( c''!) b'8\rest g'8([ e' c' f'! d']) } \\
 { a'2. g'2. g'2. f'2 e'4 s8 s8 s4 b4 } >> c'4 r4 }
 \repeat volta 2 {
 c'4 e'8([ d' e' c' d' e'] f'[ e' f' d' e' f'] g'[ fis' g' e' f' g']) a'([ f' a' c'' f'' a'']) <c'' c'''>2.( <b' b''>2. <bes'! bes''!>4)
 r8 g'8([ a' bes'] c''[ bes' c'' a' bes' c'']) \break
 << { b''4\rest b''8\rest e''8([ f'' g'']) } \\ { d''8[ c'' d'' bes' c'' d''] } >>
 <e'' a''>8\<([ <d'' g''> <e'' a''> <c'' f''> <d'' g''> <e'' a''>\!])
 <f'' bes''>8\ff([ <e'' a''> <d'' g''> <e'' a''> <d'' g''> <c'' f''>] <bes' e''>[ <c'' f''>\> <bes' e''> <a' d''> <g' c''> <a' d''>\!])
 <g' c''>2.\p( <f' b'>2. <e' bes'!>2.\pp)
 a'8\p([ g' a' f' g' a'] bes'[ a' bes' g' a' b'] c''[ b' c'' d'' c'' bes'] a'[ g' a' bes' a' f'])
 a'4( c'' f'' d'' g' f' e' g' c'' f'4_\markup { \small "Men.D.C." }) r4 s4 } \bar "|."
}

 \new Staff = "down" {
 \clef bass
 \key f \minor
 \time 3/4
 \repeat volta 2 { \partial 4 r4 r4 r f4 r4 r <f aes>( <g bes> <f aes> <e g>) <f aes>2 r4 r4 r4 <aes, aes>
 r4 r <aes c'>( <bes des'> <aes c'> <g bes>) <aes c'>2 <c' ees'>4\f( <bes des'> <aes c'> <g bes>)
 aes2 <des bes>4\p <ees c'>2 <ees des'>4 <aes c'>4 r4 r <ees c'>2 <ees des'>4 <aes c'>4 r4 }
 \repeat volta 2 { r4 r4 <g bes>( <bes des'>) r4 <aes c'>( <c' ees'>)
 r4 <a c'>( <c' ees'>) r <bes des'>( <des' f'>) <f des'>2\p <f ees'>4 <bes des'>4 r r
 <f des'>2\pp <f ees'>4 <bes des'>4 r <f ees'> <bes des'> r <f ees'>
 <bes des'> r des'8\ff( c' bes[ c' des' c' bes c'] bes[ aes! g aes g f] e[ f g f aes b,])
 c4\staccato c' \clef treble <c' aes'>4\f <des' bes'>( <bes g'>) <bes g'> <c' aes'>( <aes f'>) \clef bass <f aes>
 <e g>4\sf( <g bes>) <g bes> <f aes>4\sf( <aes c'>) <aes c' f'> <g bes e'>4\sf <bes des' e'> <bes des' e'>
 \clef treble << { f'4( aes') aes' } \\ { <b d'>2 <b d'>4 } >> <c' aes'>2\p <c' bes'!>4 <f' aes'>4 r r
 \clef bass <c aes>2\pp <c bes>4 <f aes>4 r r
 << { <e g c'>2. f4 b4\rest } \\ { <c, c>2.\pp f,4 f,4\rest } >> }
 \key f \major
 \repeat volta 2 { r4 f4( a c' d' g f e g c' f a c')
 a,8([ gis, a, f, g, a,] bes,[ a, bes, g, a, b,] c[ b, c a, b, cis] d[ a, b, g, c! fis,]) g,2 g,,4 c,4 c }
 \repeat volta 2 { r4 << { c'2. b2. bes!2. a4 } \\ { c2.~ c2.~ c2.~ c4 } >> r4 r \clef treble e'8([ d' e' c' d' e']
 f'8([ e' f' d' e' f'] g'[ f' g' e' f' g'] a'[ g' a' f' g' a']) bes'8([ a' bes' g' a' bes']) c''([ bes' c'' a' bes' c''])
 d''\ff([ c'' bes' c'' bes' a'] g'[ a' g' f' e' f']) \clef bass e'2.\p( d'2. c'2.\pp) f4\p( a c' d' g f e g c') f4 a c'
 a,8([ gis, a, f, g, a,] bes,[ a, bes, g, a, b,] c[ b, c bes, a, g,]) f,4 f s4 } \bar "|."
}
>>

 \layout { }

 \midi { }

}
