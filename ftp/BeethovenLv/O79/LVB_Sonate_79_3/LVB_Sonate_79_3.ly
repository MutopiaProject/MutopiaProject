\version "2.10.3"

 \header {
  title = "Piano Sonate Opus 79 (3rd Movement)"
  composer = "Ludwig Van Beethoven"
  mutopiatitle = "Sonata No. 25 (3rd Movement: Vivace)"
  mutopiacomposer = "BeethovenLv"
  mutopiainstrument = "Piano"
  mutopiaopus = "Op. 79"
  date = "1809"
  source = "Breitkopf & Hartel (1862-1865)"
  style = "Classical"
  copyright = "Public Domain"
  maintainer = "Stelios Samelis"
  lastupdated = "2007/April/9"
  version = "2.10.3"
 footer = "Mutopia-2007/04/15-957"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\score {

 \new GrandStaff
 <<
 \new Staff = "up" {
 \clef treble
 \key g \major
 \time 2/4
 \override Score.MetronomeMark #'transparent = ##t
 \tempo 4 = 138
 \override TextScript #'padding = #3.0
 \repeat volta 2 {
 b'8\p^\markup { \large "Vivace." }( c''16_\markup { \italic "dolce" } b' d''8 e''16 d'' g'8 a'16 g' b'4)
 e'8( fis'16 e' g'8 a'16 g' a'8 b'16 a' b'4) b'8( c''16 b' d''8 e''16 d'' g''8 a''16 g'' fis''4)
 e''8( fis''16 e'') cis''8^\prall( b'16 cis'') d''8 r r4 }
 \repeat volta 2 {
 d''8\f( e''16 d'' b'8\staccato) cis''\staccato d''4( d')
 \acciaccatura fis'16 e'8\staccato[ d'\staccato e'\staccato fis'\staccato] g'4( g)
 << { d''8( e''16 d'' b'8 cis'' d''4 b') d''8[( c''!) a'\staccato fis'!\staccato] } \\ { d''4\p g' fis' f' e' c' } >> }
 \alternative { { <b g'>8 r8 r4 } { <b g'>8 r8 r4 } }
 r4 b'8\f( c''16 b') e'8( fis'16 e') g''4\mf fis''8([ a'' fis'' dis'']) e''4( b'8) b' c''16 b' a' g' fis' g' fis' e'
 dis'16 e' fis' dis' b8 <b dis' fis'> <b e' g'>8[ <b e' g'> <b e' g'> <b e' g'>] <b dis' fis'>8 r r4
 b'8\f( c''16 b') b''4\sf R2 c''8( d''16 c'') c'''4\sf R2
 c''8_\markup { \italic "dimin." }( d''16 c'' a''8 b''16 a'' c''8 d''16 c'' a''8 b''16 a'')
 c''8( d''16 c'' fis''8 g''16 fis'' c''8 d''16 c'' d''8 e''16 d'' cis''8\< d''16 cis'' d''8 e''16 d''\!
 c''!8\> d''16 c'' d''8 e''16 d''\!) b'8\p( c''16 b' d''8 e''16 d'') g'8( a'16 g' b'4) e'8( fis'16 e' g'8 a'16 g') a'8( b'16 a' b'4)
 b'8( c''16 b' d''8 e''16 d'') g''8( a''16 g'' fis''4) e''8( fis''16 e'') cis''8^\prall( b'16 cis'') b'8 r8 r4
 d''8\f( e''16 d'' b'8\staccato) cis''8\staccato d''4( d')
 \acciaccatura fis'16 e'8\staccato[ d'\staccato e'\staccato fis'\staccato] g'4( g)
 d''8\p( e''16 d'' b'8 cis'') d''4( b') d''8( c''!) a'8\staccato fis'\staccato g'4 r16 g16\f[ a b] \bar "||"
 \key c \major
 c'16 g a b c' d' e' f'! g'8\staccato[ e'\staccato c''\staccato g'\staccato]
 e''8\staccato[ c''\staccato g''\staccato e''\staccato] <a' a''>4~ <a' a''>16 c'16[ d' e'] f'16 c' d' e' f' g' a' bes'
 c''8\staccato[ a'\staccato f''\staccato c''\staccato] a''\staccato[ f''\staccato f'''\staccato b''!\staccato]
 <c'' c'''>4~ <c'' c'''>16 g16[ a b] c' g a b c' d' e' f' g' e' c' g' c'' g' e' c'' e'' c'' g' e'' g'' e'' c'' g''
 <a' c'' f'' a''>4~ <a' c'' f'' a''>16 c'16[ d' e'] f' c' d' e' f' g' a' bes' c'' a' f' c'' f'' c'' a' f'' a'' f'' c'' a'' f'' f''' d''' b''! c'''8 r r4
 e''8\p( f''16 e'' g''8 a''16 g'' e''8 f''16 e'' g''8 a''16 g'' c''8 d''16 c'' e''8 f''16 e'' c''8 d''16 c'' e''8 f''16 e'') \bar "||"
 \key g \major
 c''8( d''16 c'' d''8 e''16 d'') b'8( c''16 b' d''8 e''16 d'' g'8 a'16 g' b'4) e'8( fis'16 e' g'8 a'16 g' a'8 b'16 a' b'4)
 b'8( c''16 b' d''8 e''16 d'' g''8 a''16 g'' fis''4) e''8( fis''16 e'') \acciaccatura d''16 cis''8( b'16 cis'') d''8 r r4
 \override TupletBracket #'transparent = ##t
 \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { r8 b'[ b''] r d''[ d'''] r g'[ g''] r b'[ b''] r e'[ e''] r g'[ g''] r a'[ a''] r b'[ b''] r b'[ b''] r d''[ d''']
 r g''[ g'''] r fis''[ fis'''] r e''[ e'''] r cis''[ cis'''] r d''[ d'''] } r4 d''8\f( e''16 d'' b'8\staccato) cis''\staccato d''4( d')
 \acciaccatura fis'16 e'8\staccato[ d'\staccato e'\staccato fis'\staccato] g'4( g)
 \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { r8 d''\p[ d'''] r cis''[ cis'''] r d''[ d'''] r b'[ b''] r c''![ c'''!] r fis'![ fis''!] } <g' g''>4 r4
 d''8\f( e''16 d'' b'8\staccato) cis''\staccato d''4( d') d'''8( e'''16 d''' b''8\staccato) cis'''\staccato d'''8 r8 r4
 \acciaccatura fis'16 e'8\f\staccato[ d'\staccato e'\staccato fis'\staccato] g'4( g)
 \acciaccatura fis'''16 e'''8\p\staccato[ d'''\staccato e'''\staccato fis'''\staccato] g'''8 r r4
 \acciaccatura fis''16 e''8\staccato[ d''\staccato e''\staccato fis''\staccato]
 g''8 r d''8( e''16 d'' c''8 d''16 c'' a'8 b'16 a') b'8( c''16 b' d''8 e''16 d'' c''8 d''16 c'' a'8 b'16 a')
 b'8 r8 \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { r8 d''[ d'''] r c''[ c'''] r a'[ a''] r b'[ b''] r d''[ d'''] r c''[ c'''] r a'[ a''] }
 \setTextCresc b'8\< c''16 b' d''8 e''16 d'' b'8 c''16 b' g''8 a''16 g'' d''8 e''16 d'' b''8 c'''16 b'' g''8 r <d'' fis'' a'' d'''>\!\p r
 <b' g'' b''>8 r r4 \bar "|."
}

 \new Staff = "down" {
 \clef bass
 \key g \major
 \time 2/4
 \repeat volta 2 {
 <g b>4\p( <fis a> <e g> <d fis> <c e> <b, d> <d fis> <g, g>) <g b>( <fis a> <e cis'> <d d'>)
 <g b> <a e'> <d d'>8 r r4 }
 \repeat volta 2 {
 d8\f( e16 d b,8\staccato) cis\staccato d4( d,)
 \acciaccatura fis,16 e,8\staccato[ d,\staccato e,\staccato fis,\staccato] g,4( g,,)
 << { d4( e d d) } \\ { d4 a, d g, } >> <c, c>4 <d, d> }
 \alternative { { g,8[ g fis e] } { g,8 r g8( a16 g) } } b8\f( c'16 b) r4
 <e g>16 b <e g> b <e g> b <e g> b <e fis a> b <e fis a> b <e fis a> b <e fis a> b
 <e g>16 b <e g> b <e g> b <e g> b c' b a g fis g fis e dis e fis dis b,8 b, b,8[ b, b, b,]
 b,8 r8 b8\f( c'16 b) R2 r4 a8( b16 a) R2 r4 fis8( g16 fis) R2 R2 R2 R2 R2 R2
 \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { g8[ b d'] fis[ a d'] e[ g b] d[ fis b] c[ e g] b, d g] a,[ d fis] g,[ d g] g[ b d'] fis[ a d'] e[ a cis'] d[ a d']
 g[ b d'] a[ e' g'] d'[ a' fis'] d'[ a fis] } d8\f( e16 d b,8\staccato) cis\staccato d4( d,)
 \acciaccatura fis,16 e,8\staccato[ d,\staccato e,\staccato fis,\staccato] g,4( g,,)
 \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { d8\p[ fis a] e[ g a] d[ fis a] g, f g] c[ e a] d[ fis! a] g,[ d g] } r16 g,16\f[ a, b,] \bar "||"
 \key c \major
 c16 g, a, b, c d e f! <c e g>8[ <c e g> <c e g> <c e g>] <c e g c'>[ <c e g c'> <c e g c'> <c e g c'>]
 <f a c'>4~ <f a c'>16 c[ d e] f c d e f g a bes <f a c'>8[ <f a c' f'> <f a c' f'> <f a c' f'>]
 <f a c' f'>8[ <f a c' f'> <g b! d'> <g b d'>] <c c'>4~ <c c'>16 g,16[ a, b,] c16 g, a, b, c d e f
 <c e g>8[ <c e g> <c e g> <c e g>] <c e g c'>[ <c e g c'> <c e g c'> <c e g c'>] <f a c'>4~ <f a c'>16 c[ d e]
 f16 c d e f g a bes <f a c'>8[ <f a c'> <f a c'> <f a c'>] <f a c' f'>8[ <f a c' f'> <g b! d'> <g b d'>] <c c'>8 r r4
 \clef treble << { \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { c'8[ e' g'] b[ d' g'] c'[ e' g'] b[ d' g'] } } \\ { c'4 b c' b } >>
 \clef bass << { \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { a8[ c' e'] gis[ b e'] a[ c' e'] gis[ b e'] } } \\ { a4 gis a gis } >> \bar "||"
 \key g \major
 << { \set tupletSpannerDuration = #(ly:make-moment 1 4) \times 2/3 { a8[ c' e'] fis![ a d'] } } \\ { a4 fis } >>
 g!16 b d' b fis a d' a e g b g d fis b fis c e g e b, d g d a, d fis d g, d g d
 g b d' b fis a d' a e a cis' a d a d' a g b e' b a e' g' e' d fis a d' cis' d' c' a
 g16 d' b d' fis d' a d' e b g b d b fis b c g e g b, g d g a, fis d fis g, g d g
 g d' b d' fis d' a d' e cis' a cis' d d' a d' g e' b e' a g' e' g' d fis a d' cis' d' a fis
 d8\f( e16 d b,8\staccato) cis\staccato d4( d,)
 \acciaccatura fis,16 e,8\staccato[ d,\staccato e,\staccato fis,\staccato] g,4( g,,)
 d16\p a fis a e a g a d a fis a g, g f g c a e a d c' a c' <g b> d' c' b a g fis e
 d8\f( e16 d b,8\staccato) cis\staccato d4( d,) \clef treble d''16 fis'' d'' fis'' e'' g'' e'' g'' <d'' fis''>8 r8 r4
 \clef bass \acciaccatura fis,16 e,8\f\staccato[ d,\staccato e,\staccato fis,\staccato] g,4( g,,)
 \clef treble c''16\p e'' b' d'' c'' e'' a' c'' <b' d''>8 r r4 \clef bass c'16 e' b d' c' e' a c' b d' b d' g f' g f'
 c' e' c' e' d' fis'! d' fis' g g' g g' b f' b f' c' e' c' e' d' fis'! d' fis' g g' g g' b f' b f' c' e' c' e' d' fis'! d' fis' g g' g g' b f' b f'
 c' e' c' e' d' fis'! d' fis' g b d' g' g b d' g' g b d' g' g b d' g' g b d' g' g b d' g' g b d' g' d fis a d' g,8 r r4 \bar "|."
}
>>

 \layout { }

 \midi { }

}
