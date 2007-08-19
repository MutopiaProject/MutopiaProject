\version "2.10.0"

\header {
  title = "Suite No. 3 in C Major"
  composer = "Johann Sebastian Bach"
  mutopiatitle = "Suite No. 3 in C Major"
  mutopiacomposer = "BachJS"
  mutopiainstrument = "Cello"
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
 c'8^\markup { \huge "Prelude." } b16 a g f e d c g, e, g, c,4 ~ c,16 d, e, f, g, a, b, c
 d( c b, a,) g,( a, b, c) d( e f d) e( f e d) c( d e f) g( a b c') d'16( c' b a) g( a b c') d'( e' f' d') e' f' e' d' c' c' b a g f e d
 c b( c' d' e' d' c' b) a c' g c' fis( e fis g) a( g fis e) d fis c fis b, a( b c' d' c' b a) g b fis b e( d e fis) g( fis e d) c e b, e
 a, g( a b c' b a g) fis a e a d( c d e) fis( e d c) b, d a, d g, d( e fis) g( a b c') d'( c' b a)
 b( c' d' c') b( a g a) b( a g f!) e( g e cis) a,( b, cis d) e( f g e) f d' a f d( e f g) a( b c' a)
 b d' b gis e( fis gis a) b( c' d' b) c'( d' c' b) a( f! e d) c( b, a, g,) f,( a, b, cis) d( e f d) b( gis a d)
 e, b,( d a) gis b e gis b d' c' gis
 a dis a( b a) dis a( b a) dis a( b c') e a( b c') e a( b c') e b( c' d') e b( c' d') e b( c' d') b gis( fis e)
 c' a( gis a) c' a( gis a) c' a( fis dis) c' a( gis a) c' a( gis a) c' a f! d! b gis( fis gis) b f( e f) b e d
 c a, c e c a, c e a c' a e c a, c e c a, c e a c' a f d b, d g d b, d g b d' b g f b, f( g f) b, f( g f) d' b g
 e c e g e c e g bes d' bes g e c e g e c e g c' bes a g a f e( f g a b c' d') a f d g e d( e f g a b c') g e c
 f d f( g f) d f( g f) c f( g f) b, f( g f) a, f( g f) g, f( g e) g, c,( g, e) g, c,( g, e) d c b,
 a,( e c') e a,16( e c') e a, g f e f a, d,( a, f) a, d,( a, f) e d c b,( fis d') fis b,( fis d') fis b, a g fis
 g b, e,( b, g) b, e,( b, g) f! e d c( g e') g c( g e') g c bes a g a c f,( c a) c f,( c a) g f e d( a f') d d( a f') a d a b c'
 g,( b f') b g,( b f') b g,( b f') b g,( c' e') c' g,( c' e') c' g,( c' e') c' g,( c' d') c' g,( b d') b g,( a d') a
 g,( b d') b g,( b g') b g,( b d') b g,( b c') b g,( a c') a g,( g c') g g,( a c') a g,( a f') a g,( a c') a
 g,( a b) a g,( g b) g g,( f b) f g,( g b) g g,( g e') g g,( g b) g g,( g a) g g,( f a) f g,( e a) e g,( f a) f g,( f d') f g,( f a) f
 g,( f b) f g,( f d') f g,( f b) f g,( e c') e g,( e e') e g,( e c') e g,( f b) f g,( f d') f g,( f b) f g,( ees c') ees
 g,( ees ees') ees g,( ees c') ees g,( fis c') fis g,( d c') d g,( e! c') e g,( fis c') fis g,( e c') e g,( fis c') fis
 g, g b( a) g( f! e d) g e g d g cis g( a g) cis g( a g) cis g( a f) d a( g) f( e d c!) f d f c
 f b, f( g f) b, f( g f) b, f( g e) c g( f) e( d c b,) c a, c g, c fis, c( d c) fis, c( d c) fis, c( d b,) g, b, d b, g, b, d b, f,! b, d
 bes, e, bes,( c bes,) e, bes,( c bes,) e, bes,( c a,) f, a, c a, f, a, c a, e, a, c b,! d, b, f b, d, b, f b, d, b, f
 e c, d, e, f, g, a, b, c d e f g e c( d e f g a bes) a bes g a f d( e f g a b! c') b c' a b g e( f g a b c' d') c' d' b
 c' a f( g a b c' d' e') d' e' c' b( a b) g f( e f) d b,( a, b,) g, <f, g, d b>4 r r
 \new Voice { \stemUp e,16[ \stemDown c'( b a)] } g f e d c g, e, g, <ees, c g a>4 r r <d, g, f b>4 r r
 <c, g, e c'>4 << { c'4( b) } \\ { <g, d>2 } >> <c, g, e c'>4 ~ c'16 e c'( d' c') e c'( d')
 <c, g, e bes>4 ~ bes16 e bes( c' bes) e bes( c') <c, a, f a>4 ~ a16 f( e f) a f( e f)
 << { b!4 ~ b16 c' b c' b c' b c' b2.^\trill } \\ { <c, aes, d>4 ~ d16 e d e d e d e d2._\trill } >>
 c'8 b16 a g f e d c g, e, g, <c, g, e c'>4 r r \bar "|."
}

 \layout { }
 
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 96 4)
      }
    }


}

