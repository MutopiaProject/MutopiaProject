\version "2.10.3"

 \header {
  title = "Piano Sonate Opus 79 (2nd Movement)"
  composer = "Ludwig Van Beethoven"
  mutopiatitle = "Sonata No. 25 (2nd Movement: Andante)"
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
 footer = "Mutopia-2007/04/15-956"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\score {

 \new GrandStaff
 <<
 \new Staff = "up" {
 \clef treble
 \key g \minor
 \time 9/8
 \override Score.MetronomeMark #'transparent = ##t
 \tempo 4 = 72
 \override TextScript #'padding = #2.0
 <bes g'>4.\p_\markup { \italic "   espressivo" }^\markup { \large "Andante." } <g' bes'>4\<( <a' c''>8 <bes' d''>4) <bes' d''>8\!
 <bes' d''>4\>( <g' bes'>8 <bes g'>4 <g' bes'>8 <fis' a'>4.\!)
 <bes g'>4. <g' bes'>4\<( <a' c''>8 <bes' d''>4) <bes' d''>8\!
 <bes' d''>4\>( <d' bes'>8 <ees' c''>[ <g' ees''> <c' a'>] <d' bes'>4.\!)
 <bes' d''>4( <d' bes'>8 <a' c''>4\< <b' d''>8 <c'' ees''>4) <c'' ees''>8\!
 <c'' ees''>4\>( <a' c''>8 <fis' a'>8[ <a' c''> <fis' a'>\!] <g' bes'!>)[ <g' bes'>( <a' c''>)]
 <bes' d''>4( <d' bes'>8 <a' c''>4\< <b' d''>8 <c'' ees''>4) <c'' ees''>8\!
 <c'' ees''>4\>( <a' c''>8 <fis' a'>8[ <a' c''> <fis' a'>\!]) <bes! g'>4. r4 r8 bes4. <aes bes d'>4. \bar "||"
 \key ees \major <g bes ees'>8 r8 r r g'[ g'] g'8( bes') bes' \acciaccatura bes'16 ees''8( d'' c'' bes' aes' g' bes'4 a'8)
 \acciaccatura f'16 f'8( ees'' d'' c'' bes' aes' fis'4 g'8)
 f'!4( aes'16\< g' f'[ g' aes' bes' c'' bes'\!]) bes'8^\trill\>( ees'' g'\!)
 f''4( aes''16\< g'' f''[ g'' aes'' bes'' c''' bes''\!]) bes''8^\trill\>( ees''' g''\!
 f''_\markup { \italic "cresc." } aes'' c''' d'' f'' bes'' aes''4\> g''8\!)
 f'8_\markup { \italic "dimin." }( aes' c'' ees' g' bes' aes bes d') <g bes ees'>4. r8
 << { <c'' ees''>8[ <c'' ees''>] <c'' ees''>4( <aes' c''>8) bes'4.( g'4 bes'8) bes'8( aes'
 \set tupletSpannerDuration = #(ly:make-moment 1 4) \times 2/3 { g'16[ bes' aes']) } } \\
 { ees'8_\markup { \italic "cresc." }[ ees'] ees'4. ees'4.\p <bes ees'>4. d'4. } >>
 <bes ees' g'>4. \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { ees'16_\markup { \italic "cresc." }([ f' ees'] } d'32[ ees' f' g']
 \set tupletSpannerDuration = #(ly:make-moment 1 4) \times 4/5 { aes'32[ bes' c'' d'' ees''] } f''16[ ees'' d'' c'' ees'' c''])
 bes'4.\p <g g'>4_\markup { \italic "dimin." }( <cis' b'>8) << { g'8.( bes'16 a' g') } \\ { c'4 c'8 } >> \bar "||"
 \key g \minor
 <d' fis'>4.\pp( <fis' a'>4 <g' bes'>8) <a' c''!>16\sf\> ees''( d'' c'' bes' a'\!)
 <bes g'>4.\p <g' bes'>4\<( <a' c''>8 <bes' d''>4) <bes' d''>8\! <bes' d''>4\>( <g' bes'>8 <bes g'>4 <g' bes'>8 <fis' a'>4.\!)
 <bes g'>4. <g' bes'>4\<( <a' c''>8 <bes' d''>4) <bes' d''>8\! <bes' d''>4\>( <d' bes'>8 <ees' c''>[ <g' ees''> <c' a'>] <d' bes'>4.\!)
 <bes' d''>4( <d' bes'>8 <a' c''>4\< <b' d''>8 <c'' ees''>4) <c'' ees''>8\!
 <c'' ees''>4\>( <a' c''>8 <fis' a'>8[ <a' c''> <fis' a'>\!] <g' bes'!>)[ <g' bes'>( <a' c''>)]
 <bes' d''>4( <d' bes'>8 <a' c''>4\< <b' d''>8 <c'' ees''>4) <c'' ees''>8\!
 <c'' ees''>4\>( <a' c''>8 <fis' a'>8[ <a' c''> <fis' a'>]) <bes! g'>4.\!
 <g' g''>4.( <bes' bes''>4_\markup { \italic "cresc." } <c'' c'''>8 <d'' d'''>4) <d'' d'''>8
 <d'' d'''>4( <bes' bes''>8 <g' g''>4 <bes' bes''>8 <a' a''>4.) <c'' c'''>4( <a' a''>8 <fis' fis''>4 <a' a''>8 <g' g''>4.\>)
 <ees' c''>4\staccato\!_\markup { \italic "dimin." }( <ees' a'>8\staccato) r4 r8 <c' fis'>4\staccato( <fis' a'>8\staccato)
 <c' d' fis'>4\p r8 <bes d' g'>4 r8 r4 r8 \bar "|."
}

 \new Staff = "down" {
 \clef bass
 \key g \minor
 \time 9/8
 g,8\p d d g, d d g, d d g, d d g, d d d, d d g, d d g, d d g, d d f, f f f, f f bes, f f
 bes, f f f, f f c, c c c, c c d, d d, g, <g, g> <f,! f!> bes, f f f, f f c, c c c, c c d, d d g, g g g4. g4. <bes, f!>4. \bar "||"
 \key ees \major ees16 g bes g ees bes, ees g bes g ees bes, ees g bes g ees bes,
 ees g bes g ees bes, ees g bes g ees bes, f aes bes aes f bes, d f bes f d bes, d f bes f d bes, ees g bes g ees bes,
 aes, bes, d f d bes, aes, bes, d f d bes, g, bes, ees g bes g \clef treble aes bes d' f' d' bes aes bes d' f' d' bes g bes ees' g' ees' bes
 aes c' f' aes' f' c' bes d' f' aes' f' d' c' b c' d' ees' c' \clef bass aes, c f aes c' aes bes, ees g bes g ees bes, d f aes f aes
 g, bes, ees bes, g, ees, aes, c ees c aes, ees, aes, c ees c aes, ees,
 g, bes, ees bes, g, ees, g, bes, ees bes, g, ees, f, aes, d aes, f, ees, g, bes, ees bes, g, ees, aes, c ees c aes, ees, aes, c ees c aes, ees,
 g, bes, ees bes, g, ees, g, bes, ees bes, g, ees, g, bes, ees ees, ees ees, \bar "||"
 \key g \minor
 d,8 d d d d' d' r r d g,8\p d d g, d d g, d d g, d d g, d d d, d d g, d d g, d d g, d d f, f f f, f f bes, f f bes, f f f, f f c, c c
 c, c c d, d d, g, <g, g> <f,! f!> bes, f f f, f f c, c c c, c c d, d d g,16 bes, d g, bes, d g bes d' bes g d g bes d' bes g d g bes d' bes g d
 g16 bes d' bes g d g bes d' bes g d fis a d' a fis d fis a c' a fis d fis a c' a fis d ees g bes g ees d
 <c a>4\staccato( <c c'>8\staccato) r4 r8 <d a>4\staccato( <d c'>8\staccato) <d a>4\p r8 <g, g>4 r8 r4 r8 \bar "|."
}
>>

 \layout { }

 \midi { }

}
