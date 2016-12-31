\version "2.18.2"
\language "english"

\header {
  %title        = "Deux juifs l'un riche et lautre pauvre"
  composer     = "Modest Moussorgsky (1839 - 1881)"
  style        = "Romantic"
  license      = "Creative Commons Attribution-ShareAlike 4.0"
  enteredby    = "Knute Snortum"
  date         = "1874"
  source       = "Pavel Lamm"

  mutopiatitle       = "Pictures at an Exhibition"
  mutopiacomposer    = "MussorgskyM"
  mutopiainstrument  = "Piano"
  maintainer         = "Knute Snortum"
  maintainerEmail    = "knute (at) snortum (dot) net"
  maintainerWeb      = "http://www.musicwithknute.com/"

 footer = "Mutopia-2016/12/31-475"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " 2016 " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License "\char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
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
pocoRit = \markup { \italic "poco ritard con dolore" }
aTempo = \markup { \italic "a tempo" }

staffUp = \change Staff = "up"
staffDown = \change Staff = "down"

beamSubdivideEight = \set baseMoment = #(ly:make-moment 1/8)
beamSubdivideQuarter = \set baseMoment = #(ly:make-moment 1/4)

tupletNumberOn = \override TupletNumber.stencil = #ly:tuplet-number::print
tupletNumberOff = \override TupletNumber.stencil = ##f

highVoice = \relative c' {
  \tempo "Andante. Grave-energico."
  \partial 64 bf64 ( \f
  \beamSubdivideEight
  | f'8 ) r16. e64 f e4 \sf ~ e8 r \tuplet 3/2 { a,16-- [ bf-- c-- } df16.-- bf32 ] (
  \beamSubdivideQuarter
  | f'8 ) r16. \tuplet 3/2 { e64 ( f e ) } df4 \sf ~ df8 r a16-- [ bf-- c-- df-- ]
  | ef8.-- [ \< f16 ( gf8-. ) a-. ] \! bf4 ( af8 \> gf 
  | \tuplet 3/2 { a8 gf f } f8.. ) \! a32 ( f8 ) r a,16-- [ bf-- c-- df-- ]
  | ef8.-- [ \< f16 ( gf8-. ) a-. ] \! bf4 ( bff8 \> gf 
  | \tuplet 3/2 { af8 gf \! f } f2 ~ f8 ) r16. bf,32 (
  \time 3/4
  | f'8 ) r16. \tuplet 3/2 { e64 ( f e ) } df8.. \tuplet 3/2 { c64 ( df a ) } df8.. [ 
    \appoggiatura { c32 df } \tuplet 3/2 { c64 ( bf af ) ] } 
  \bar "||"
  
  \barNumberCheck #8
  \time 4/4
  | df2. ~ df8 r
  \tempo "Andantino."
  \tupletUp
  | \acciaccatura { bff''8 } \tuplet 3/2 { bff16-> [ \mf bff bff } \appoggiatura { bff32 cf } bff8 ]
    \acciaccatura { bff8 } \tuplet 3/2 { bff16-> [ bff bff } \appoggiatura { bff32 cf } bff8 ]
    \acciaccatura { af8 } \tuplet 3/2 { af16-> [ af af } \appoggiatura { af32 bff } af8 ]
    \acciaccatura { gf8 } \tuplet 3/2 { gf16-> [ gf gf } \appoggiatura { gf32 aff } gf8 ]
  \tupletNumberOff
  | \acciaccatura { af8 } \tuplet 3/2 { af16-> [ af af } \appoggiatura { af32 bff } af8 ]
    \acciaccatura { df,8 } \tuplet 3/2 { df16-> [ df df } \appoggiatura { df32 eff } df8 ]
    \acciaccatura { df8 } \tuplet 3/2 { df16-> _\dimin [ df df } \appoggiatura { df32 eff } df8 ]
    \acciaccatura { df8 } \tuplet 3/2 { df16-> [ df df } \appoggiatura { df32 eff } df8 ]
  | \acciaccatura { bff'8 } \tuplet 3/2 { bff16-> [ \mf bff bff } \appoggiatura { bff32 cf } bff8 ]
    \acciaccatura { bff8 } \tuplet 3/2 { bff16-> [ bff bff } \appoggiatura { bff32 cf } bff8 ]
    \acciaccatura { af8 } \tuplet 3/2 { af16-> [ af af } \appoggiatura { af32 bff } af8 ]
    \acciaccatura { gf8 } \tuplet 3/2 { gf16-> [ gf gf } \appoggiatura { gf32 aff } gf8 ]
  | \acciaccatura { af8 } \tuplet 3/2 { af16-> [ af af } \appoggiatura { af32 bff } af8 ]
    \acciaccatura { df,8 } \tuplet 3/2 { df16-> [ df df } \appoggiatura { df32 eff } df8 ]
    \acciaccatura { df8 } \tuplet 3/2 { df16-> _\dimin [ df df } \appoggiatura { df32 eff } df8 ]
    \acciaccatura { df8 } \tuplet 3/2 { df16-> [ df df } \appoggiatura { df32 eff } df8 ]
  | \acciaccatura { gf8 } \tuplet 3/2 { gf16-> [ \p gf gf } \appoggiatura { gf32 af } gf8 ]
    \acciaccatura { gf8 } \tuplet 3/2 { gf16-> [ gf gf } \appoggiatura { gf32 af } gf8 ]
    \acciaccatura { ff8 } \tuplet 3/2 { ff16-> _\dimin [ ff ff } \appoggiatura { ff32 gf } ff8 ]
    \acciaccatura { eff8 } \tuplet 3/2 { eff16-> [ eff eff } \appoggiatura { eff32 ff } eff8 ]
  | \acciaccatura { gf8 } \tuplet 3/2 { gf16-> [ gf gf } \appoggiatura { gf32 af } gf8 ]
    \acciaccatura { df8 } \tuplet 3/2 { df16-> [ df df } \appoggiatura { df32 eff } df8 ]
    \acciaccatura { df8 } \tuplet 3/2 { df16-> _\dimin [ df df } \appoggiatura { df32 eff } df8 ]
    \acciaccatura { df8 } \tuplet 3/2 { df16-> [ df df } \appoggiatura { df32 eff } df8 ]
  | \acciaccatura { gf8 } \tuplet 3/2 { gf16-> [ \p gf gf } \appoggiatura { gf32 af } gf8 ]
    \acciaccatura { gf8 } \tuplet 3/2 { gf16-> [ gf gf } \appoggiatura { gf32 af } gf8 ]
    \acciaccatura { ff8 } \tuplet 3/2 { ff16-> _\dimin [ ff ff } \appoggiatura { ff32 gf } ff8 ]
    \acciaccatura { eff8 } \tuplet 3/2 { eff16-> [ eff eff } \appoggiatura { eff32 ff } eff8 ]

  \barNumberCheck #16
  | \acciaccatura { gf8 } \tuplet 3/2 { gf16-> [ gf gf } \appoggiatura { gf32 af } gf8 ]
    \acciaccatura { df8 } \tuplet 3/2 { df16-> [ df df } \appoggiatura { df32 eff } df8 ]
    \acciaccatura { df8 } \tuplet 3/2 { df16-> _\dimin [ df df } \appoggiatura { df32 eff } df8 ]
    \acciaccatura { df8 } \tuplet 3/2 { df16-> [ df df } \appoggiatura { df32 eff } df8 ]
  \tupletNumberOn
  \beamSubdivideEight
  | c8-- ( \mf \< ef32 ff af bff ) af8-- ( \! ff32 ef df c )
    df16.-- \sf \> df32 \tuplet 3/2 { df16 df df \! }
    df16.-- df32 \tuplet 3/2 { df16 df df }
  | c8-- ( \mf \< ef32 ff af bff ) af8-- ( \! ff32 ef df c )
    df16.-- \sf \> df32 \tuplet 3/2 { df16 df df \! }
    df16.-- df32 \tuplet 3/2 { df16 df \f df }
  \tempo "Andante. Grave."
  | <df df,>16._^ [ q32 \tuplet 3/2 { q16 q q ] } 
    q16._^ [ q32 \tuplet 3/2 { q16 q q ] }
    <bff' bff,>16.-^ [ ( <af af,>32 ) \tuplet 3/2 { q16 q q ] } 
    <gf gf,>16.-^ [ ( <af af,>32 ) \tuplet 3/2 { q16 q q ] }
  \tupletNumberOff
  | <df, df,>16._^ [ q32 \tuplet 3/2 { q16 q q ] }
    q16._^ [ q32 \tuplet 3/2 { q16 q q ] }
    q16._^ [ q32 \tuplet 3/2 { q16 q q ] }
    q16._^ [ q32 \tuplet 3/2 { q16 q q ] }
  | <bff' bff,>16.-^ [ ( <af af,>32 ) \tuplet 3/2 { q16 q q ] } 
    <gf gf,>16.-^ [ ( <af af,>32 ) \tuplet 3/2 { q16 q q ] }
    <df, df,>16._^ [ q32 \tuplet 3/2 { q16 q q ] }
    q16._^ [ q32 \tuplet 3/2 { q16 q q ] }
  | q16._^ [ \mf q32 \tuplet 3/2 { q16 q q ] }
    q16._^ [ q32 \tuplet 3/2 { q16 q q ] }
    q16._^ [ q32 \tuplet 3/2 { q16 q q ] }
    q16._^ [ q32 \tuplet 3/2 { q16 q q ] }
  | q16._^ [ q32 \tuplet 3/2 { q16 q q ] }
    <bff' bff,>16.-^ \f [ ( <af af,>32 ) \tuplet 3/2 { q16 q q ] } 
    <gf gf,>16.-^ [ ( <af af,>32 ) \tuplet 3/2 { q16 q q ] }
    <df, df,>16._^ \mf [ q32 \tuplet 3/2 { q16 q q ] }
    
  \barNumberCheck #24
  | q16._^ _\cres [ q32 \tuplet 3/2 { q16 q q ] }
    q16._^ [ q32 \tuplet 3/2 { q16 q q ] }
    q16._^ [ q32 \tuplet 3/2 { q16 q q ] }
    q16._^ [ q32 \tuplet 3/2 { q16 q q ] }
  | q16._^ [ \f \< q32 \tuplet 3/2 { q16 q q ] }
    <df, f a df>8-^ \sf r r4 \fermata
  << { f4 ^\pocoRit ( \p
       \override TupletBracket.stencil = ##f
       | ff4 \< ef8 \tuplet 3/2 { d16 ef eff \! }  df4 \> c8 \! \acciaccatura { e8 } f ) \sf
       | ff4 ( \p \< ef8 \tuplet 3/2 { d16 ef eff \! } df4 \> c8 \! \acciaccatura { e8 } f ) \sf
     } 
     \\ 
     { s4
       | c4 cf bf a8 r
       | c4 cf bf a8 r
     }
  >>
  \tupletNumberOn
  | r8. ^\aTempo \tuplet 3/2 { e'32 _\cres ( f e ) } df4 \sf ~ df8 r r 
    \tuplet 3/2 { <c' c'>16 \ff ( <df df'> <bf bf'> ) }
  | q2 ~ q4 r \fermata
  \bar "|."   
}

lowerMiddle = \relative c'' {
  \partial 64 s64
  | s1 * 6
  \time 3/4
  | s2.
  
  \barNumberCheck #8
  \time 4/4
  | s1
  | <gf bff>2 <ff af>4 <eff gf>
  | <ff af>4 <df ff>2 \sustainOn ~ q8 
    \tag #'layout { r }
    \tag #'midi { r \sustainOff }
  | <gf bff>2 <ff af>4 <eff gf>
  | <ff af>4 <df ff>2 \sustainOn ~ q8 
    \tag #'layout { r }
    \tag #'midi { r \sustainOff }  
  | <eff gf>2 <df ff>4 <cf eff>
  | <eff gf>4 <bff df>2 \sustainOn ~ q8 
    \tag #'layout { r }
    \tag #'midi { r \sustainOff }  
  | <eff gf>2 <df ff>4 <cf eff>
  
  \barNumberCheck #16
  | <eff gf>4 <bff df>2 \sustainOn ~ q8 
    \tag #'layout { s }
    \tag #'midi { s \sustainOff }  
  | s1 * 9
  | f4 gf f ~ f8 r
  | f4 gf f ~ f8 r
  | s1 * 2
}

lowVoice = \relative c {
  \oneVoice
  \partial 64 bf64 ( 
  \beamSubdivideEight
  | f'8 ) r16. e64 f e4 ~ e8 r \tuplet 3/2 { a,16-- [ bf-- c-- } df16.-- bf32 ] (
  \beamSubdivideQuarter
  | f'8 ) r16. \tuplet 3/2 { e64 ( f e ) } df4 ~ df8 r a16-- [ bf-- c-- df-- ]
  | ef8.-- [ f16 ( gf8-. ) a-. ] bf4 ( af8 gf 
  | \tuplet 3/2 { a8 gf f } f8.. ) a32 ( f8 ) r a,16-- [ bf-- c-- df-- ]
  | ef8.-- [  f16 ( gf8-. ) a-. ]  bf4 ( bff8  gf 
  | \tuplet 3/2 { af8 gf f } f2 ~ f8 ) r16. bf,32 (
  \time 3/4
  | f'8 ) r16. \tuplet 3/2 { e64 ( f e ) } df8.. \tuplet 3/2 { c64 ( df a ) } df8.. [ 
    \appoggiatura { c32 df } \tuplet 3/2 { c64 ( bf af ) ] } 
  \bar "||"
  
  \barNumberCheck #8
  \time 4/4
  | df1 ~
  | df2 ~ df8 r r4
  | r2 df2 ~
  | df2 ~ df8 r r4
  | r2 df2 ~
  | df2 ~ df8 r r4
  | r2 df2 ~
  | df2 ~ df8 r r4
  
  \barNumberCheck #16
  | r2 df4 ~ df8 r
  | <bff' c ff>4 <ff af c ff> <df ff af df>8 r r4
  | <bff' c ff>4 <ff af c ff> <df ff af df>8 r r8. <bf bf,>16
  | <f' f,>4 ~ q8 <e e,>16 ( <f f,> ) <df df,>2 ( \sf
  | <ff ff,>8 ) \sf r r8. <bf, bf,>16 ( <f' f,>4 ~ q8 ) 
    \tuplet 3/2 { <e e,>16 ( <f f,> <e e,> ) }
  | <df df,>2 ( \sf <ff ff,>8 ) \sf r r <bf, bf,>8 (
  | <ef ef,>8. ) [ <f f,>16 ( <gf gf,>8-. ) <a a,>-. ] <bf bf,>4 ( <af af,>8 <gf gf,> )
  | <a a,>8 ( <gf gf,>16 <f f,> ) <f f,>8 r r4 r8 <bf, bf,>8 (
  | <ef ef,>8. ) [ <f f,>16-. ( <gf gf,>8-. ) <a a,>-.] <bf bf,>4 ( <bff bff,>8 <gf gf,> )
  | <af af,>8 <gf gf,>16 <f f,> <f a>8-^ r r4 \fermata f,4
  \voiceFour
  | bf2. ~ bf8 \acciaccatura { e,8 } f
  | bf2. ~ bf8 \acciaccatura { e,8 } f
  \oneVoice
  | r8. \tuplet 3/2 { e'32 ( f e ) } df4 ~ df8 r r \tuplet 3/2 { <c c'>16 ( <df df'> <bf bf'> ) }
  | q2 ~ q4 r \fermata
}

global = {
  \key bf \minor
  \time 4/4
  \accidentalStyle piano
}

\bookpart {
  \header {
    subtitle = "No. 6 Deux juifs l'un riche et lautre pauvre"
  }
  \score {
    \keepWithTag #'layout
    \new PianoStaff <<
      \new Staff = "up" {
        \global
        \override TupletBracket.stencil = ##f
        \set subdivideBeams = ##t
        \highVoice 
       }
      \new Staff = "down" {
        \clef bass
        \global
        <<
          \new Voice { 
            \voiceThree   
            \lowerMiddle 
          }
          \new Voice { 
            \voiceFour 
            \override TupletBracket.stencil = ##f
            \set subdivideBeams = ##t
            \lowVoice 
          }
        >>
      }
    >>
    \layout {
    }
  }
}

% MIDI output only
\score {
  \keepWithTag #'midi
  \new PianoStaff <<
    \new Staff = "up" {
      \global
      \highVoice 
     }
    \new Staff = "down" {
      \clef bass
      \global
      <<
        \new Voice { 
          \voiceThree   
          \lowerMiddle 
        }
        \new Voice { 
          \voiceFour 
          \lowVoice 
        }
      >>
    }
  >>
  \midi {
    \tempo 4 = 46
  }
}
