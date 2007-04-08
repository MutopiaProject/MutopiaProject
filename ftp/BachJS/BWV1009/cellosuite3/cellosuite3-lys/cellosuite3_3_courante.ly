\version "2.10.0"

\header {
  title = "Suite No. 3 in C Major"
  composer = "Johann Sebastian Bach"
  mutopiatitle = "Suite No. 3 in C Major"
  mutopiacomposer = "BachJS"
  mutopiainstrument = "Harpsichord, Piano"
  mutopiaopus = "BWV 1009"
  date = "18th Century"
  source = "Bach Gesellschaft"
  style = "Baroque"
  copyright = "Public Domain"
  maintainer = "Stelios Samelis"
  lastupdated = "2006/December/18"
  version = "2.6.0"
 footer = "Mutopia-2006/12/21-890"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\score {
 \context Staff = "up" {
 \clef bass
 \key c \major
 \time 3/4
 \set Staff.midiInstrument = "contrabass"
 \override TextScript #'padding = #2.5
 \repeat volta 2 { \partial 8 c'8^\markup { \huge "Courante." } c'8 g e c g, e,
 \new Voice { \stemUp c,[ \stemDown c'( d' c' b c')] } d'8 b g d b, g,
 \new Voice { \stemUp f,[ \stemDown d'( c' b a g)] } c' b( a g f e) f d g, a g f e( d c b, c) g,
 c,4. c16[( d e8 fis)] b, d( g a b c') gis d' e d'( c' b) c' b a gis a e c( d e) c a, g,! fis, a, d e fis g a fis d c' b a
 b( a g) fis g d b,( c d) b, g, f,! \new Voice { \stemUp e,8[ \stemDown g( a g fis g)] } c8 d c b, a, g,
 fis, a( b a g a) c e d c b, a, g, b( c' b) e b a, c'( d' c') fis c' b, d'( e' d' c' b) a( g f! e f d) c, f( e d e c) b, c( d e fis g)
 a, d( e fis g a) g, e( fis g a b) \new Voice { \stemUp d,8[ \stemDown c' a c' fis c'] } d8 c' a c' fis c'
 d bes g bes fis bes d bes g bes fis bes ees a g a fis a ees a g a fis a c' a fis d a, fis, d,4. d8[ fis a]
 b8( c' d') a b g a( b c') g a fis g d e c a, fis g,2 r8 }
 \break
 \repeat volta 2 { \partial 8 d'8 d' b g d b, d f( d b, a, b,) g, c, f e d e g c'( d' e') b c' a f( g a) e f d b, a( b c' d' b)
 gis8 fis gis a b gis e b gis e e' d c a e c b, g! a, f c a, g, e f, d a, f, e, c
 \new Voice { \stemUp d,8[ \stemDown c'( b c' d' fis)] \stemUp c,8[ \stemDown e'( d' c' b a)] }
 e8 d'( c' b a gis) a e( d c d e) a,4. a16[( b c' b c' a)] g8 e c e g bes
 \new Voice { \stemUp e,8[ \stemDown d'( c' bes a g)] } a8 f( e f) c f a, c f, a g a bes( a g) f e g
 cis8 e g, bes,( a, g,) f, e, f, g, a, f, d, f, a, d( e f) gis, f( e d c b,) a, c f a f d b, a( g f e d) c e a c' a f d c'( b a g f)
 e8 g c' e' c' a f e'( d' c' b a) b d' b g d b, g, f d f b, f g, f d f b, f g, ees c ees b, ees g, ees c ees b, ees aes, d c d b, d
 aes,8 d c d b, d f g, b, d f b d'4. c'8[ b a] g( f e) g f d e( d c) e d b, c g a f d b <c, g, e c'>2 r8 }
}

 \layout { }
 
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 146 4)
      }
    }


}

