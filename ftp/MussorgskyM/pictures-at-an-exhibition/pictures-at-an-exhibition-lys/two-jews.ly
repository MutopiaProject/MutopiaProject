\version "2.18.2"
\language "english"

\header {
  title        = "Deux juifs l'un riche et lautre pauvre"
  composer     = "Modest Moussorgsky (1839 - 1881)"
  style        = "Romantic"
  license      = "Creative Commons Attribution-ShareAlike 4.0"
  enteredby    = "Knute Snortum"
  lastupdated  = "2014/May/8"
  date         = "1874"
  source       = "Pavel Lamm (1882-1951)"

  mutopiatitle       = "Pictures at an Exhibition"
  mutopiacomposer    = "MussorgskyM"
  mutopiainstrument  = "Piano"
  maintainer         = "Knute Snortum"
  maintainerEmail    = "knute (at) snortum (dot) net"
  maintainerWeb      = "http://www.musicwithknute.com/"
}

andante = {
  \once
  \override Score.RehearsalMark.self-alignment-X = #LEFT
  \mark "Andante. Grave-energico."
}

andantino = {
  \once
  \override Score.RehearsalMark.self-alignment-X = #LEFT
  \mark "Andantino."
}

daCapoAdjust = {
  \override TextScript.X-offset = -38
  \override TextScript.Y-offset = -3
}

adjustTrillSpanners = {
  \override TrillSpanner.X-extent = #'( 1 . 1 )
  \override TrillSpanner.Y-extent = #'( -2 . 0 )
}

daCapo = \markup { \italic "De Capo il Scherzino, senza Trio, e poi Coda" }
cres = \markup { \italic "cresc." }
dimin = \markup { \italic "dim" }
attacca = \markup { \italic "attacca  " }

staffUp = \change Staff = "up"
staffDown = \change Staff = "down"

slurAcrossStaves = {
  \shape #'((0.1 . 0.1) (1 . 2) (1 . 3.5) (1 . 5)) Slur
}

highVoice = \relative c' {
  \tempo "Andante. Grave-energico."
  \partial 64 bf64 ( \f
  | f'8 ) r16. e64 f e4 \sf ~ e8 r \tuplet 3/2 { a,16-- [ bf-- c-- } df16.-- bf32 ] (
  | f'8 ) r16. \tuplet 3/2 { e64 ( f e ) } df4 \sf ~ df8 r a16-- [ bf-- c-- df-- ]
  | ef8.-- [ \< f16 ( gf8-. ) a-. ] \! bf4 ( af8 \> gf 
  | \tuplet 3/2 { a8 gf f } f8.. ) \! a32 ( f8 ) r a,16-- [ bf-- c-- df-- ]
  | ef8.-- [ \< f16 ( gf8-. ) a-. ] \! bf4 ( bff8 \> gf 
  | \tuplet 3/2 { af8 gf \! f } f2 ~ f8 ) r16. bf,32 (
  \time 3/4
  | f'8 ) r16. \tuplet 3/2 { e64 ( f e ) } df8.. \tuplet 3/2 { c64 ( df a ) } df8.. [ 
    \appoggiatura { c32 df } \tuplet 3/2 { c64 ( bf af ) ] } 
  \bar "||"
  \time 4/4
  | df2. ~ df8 r
  \tempo "Andantino."
  | \acciaccatura { bff''8 } \tuplet 3/2 { bff16-> [ \mf bff bff } \appoggiatura { bff32 cf } bff8 ]
    \acciaccatura { bff8 } \tuplet 3/2 { bff16-> [ bff bff } \appoggiatura { bff32 cf } bff8 ]
    \acciaccatura { af8 } \tuplet 3/2 { af16-> [ af af } \appoggiatura { af32 bff } af8 ]
    \acciaccatura { gf8 } \tuplet 3/2 { gf16-> [ gf gf } \appoggiatura { gf32 aff } gf8 ]
  | \acciaccatura { af8 } \tuplet 3/2 { af16-> [ af af } \appoggiatura { af32 bff } af8 ]
    \acciaccatura { df,8 } \tuplet 3/2 { df16-> [ df df } \appoggiatura { df32 eff } df8 ]
    \acciaccatura { df8 } \tuplet 3/2 { df16-> [ df df } \appoggiatura { df32 eff } df8 ]
    \acciaccatura { df8 } \tuplet 3/2 { df16-> [ df df } \appoggiatura { df32 eff } df8 ]
  |
}

lowerMiddle = \relative c'' {
  \partial 64 s64
  | s1 * 6
  \time 3/4
  | s2.
  \time 4/4
  | s1
  | <gf bff>2 <ff af>4 <cff ef>
  | <ff af>4 <df f>2 ~ q8 r
  |
}

lowVoice = \relative c {
  \oneVoice
  \partial 64 bf64 ( 
  | f'8 ) r16. e64 f e4 ~ e8 r \tuplet 3/2 { a,16-- [ bf-- c-- } df16.-- bf32 ] (
  | f'8 ) r16. \tuplet 3/2 { e64 ( f e ) } df4 ~ df8 r a16-- [ bf-- c-- df-- ]
  | ef8.-- [ f16 ( gf8-. ) a-. ] bf4 ( af8 gf 
  | \tuplet 3/2 { a8 gf f } f8.. ) a32 ( f8 ) r a,16-- [ bf-- c-- df-- ]
  | ef8.-- [  f16 ( gf8-. ) a-. ]  bf4 ( bff8  gf 
  | \tuplet 3/2 { af8 gf f } f2 ~ f8 ) r16. bf,32 (
  \time 3/4
  | f'8 ) r16. \tuplet 3/2 { e64 ( f e ) } df8.. \tuplet 3/2 { c64 ( df a ) } df8.. [ 
    \appoggiatura { c32 df } \tuplet 3/2 { c64 ( bf af ) ] } 
  \bar "||"
  \time 4/4
  | df1 ~
  | df2 ~ df8 r r4
  |
}

global = {
  \key bf \minor
  \time 4/4
  \accidentalStyle piano
}

\score {
  \new PianoStaff <<
    \new Staff = "up" {
      \global
      \highVoice 
     }
    \new Staff = "down" {
      \clef bass
      \global
      <<
        \new Voice { \voiceThree \lowerMiddle }
        \new Voice { \voiceFour \lowVoice }
      >>
    }
  >>
  \layout {
  }
  \midi {
    \tempo 4 = 40
  }
}

