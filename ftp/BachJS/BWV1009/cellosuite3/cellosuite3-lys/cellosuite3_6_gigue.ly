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
 \time 3/8
 \set Staff.midiInstrument = "contrabass"
 \override TextScript #'padding = #2.5
 \repeat volta 2 { \partial 8 g8^\markup { \huge "Gigue." } c'8 c16( d e f) g8( a) b c'( g) e' c'( g) e' d'16( c' d' e') f'8
 b8( c' e) g,( d) c' b( g) d' d'( fis) g e8 e'16( d' c' b) c'8 a,16( b, c d) e8( a,) c' c' e( fis) d8 d'16( c' b a)
 b8 g,16( a, b, c) d8( g,) b b d( e) c8 c'16( b a g) fis8 a16( g fis e) d4 d8
 c16( d) b,( d) a,( d) b,( d) a,( d) b,( d) c( d) b,( d) a,( d) b,( d) a,( d) g,( d)
 f16( g,) e( g,) d( g,) e( g,) d( g,) e( g,) f( g,) e( g,) d( g,) e( g,) fis( g,) g( g,) fis( g,) g( g,) a( g,) g( g,) a( g,) b( g,)
 a16( g,) b( g,) c'8 d4 a8
 << { c'16( d') ees'8 d' c'8\staccato bes\staccato a\staccato fis'8( g') a fis'( g') a c'16( d') ees'8 d'
 c'8\staccato bes\staccato a\staccato cis'8( d') a cis'8( d') d } \\ { d8 d d d d d d4 d8 d4 d8 d8 d d d d d d4 d8 d4 s8 } >>
 g,16( b, d8) e a,16( c e8) fis b,16( d) g( e) f!( d) c( e a b c' a) d'( a fis e d c) b,( d g) b, a, fis g8 d b, g,4 }
 \break
 \repeat volta 2 { d'16( c') b16( c') a( b) g( a) f( g) e( f) d( e) c16 g( a b c' d')
 \new Voice { \stemDown e'8[ \stemUp c, \stemDown e'] } f16( a b c' d' c') d( fis gis a b a)
 gis16( fis) gis( a) b( gis) e4^\trill b8 c'8 e( f) d8 d'16( c' b a) b8 g,16( a, b, c) d8( g,) bes bes d( e)
 c8 c'16( bes a g) a8 f,16( g, a, bes,) c8( f,) a f cis( d) bes gis( a) d'16( e' f'8) gis d4 f'8 e'8 d'16( c' b a)
 b16( d') c'( a) b( gis) a8 e c a,4 c'8 << { c'4 s8 s4 c'8 b4 s8 } \\ { fis16( e fis8) d d,16 a, d8 fis g16( fis g8) d } >>
 e16 f! g a bes g a( g f e f) d' c'( b a g c' e) g, f( e d e c) g4 g8 f16( g,) e( g,) d( g,) e( g,) d( g,) e( g,) f( g,) e( g,) d( g,)
 e16( g,) fis( g,) g( g,) << { fis16( a) d( a) e( a) } \\ { g,8 s4 } >> fis16( a) g( a) e( a) << { fis16( c') d( c') e( c') } \\ { g,8 s4 } >>
 fis16( c') e( c') d( c') b( d) a( d) b( d) c'( d) b( d) a( d) b( d) d'( d) f'8 g,4 d8
 << { f!16( g) aes8 g f8\staccato ees\staccato d\staccato b8( c') d b( c') d
 f16( g) aes8 g f8\staccato ees\staccato d\staccato fis8( g) d fis( g16) f!( e d) } \\
 { g,8 g, g, g, g, g, g,4 g,8 g,4 g,8 g,8 g, g, g, g, g, g,4 g,8 g,4 s8 } >>
 c16( e g8) a d16( f a8) b e16( g) c'( a) bes( g) a( f d f e d) g( d b, a, g, f,) e,( g, c) e, d, b, c8 e g <c, g, e c'>4 }
}

 \layout { }
 
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 128 4)
      }
    }


}

