\version "2.11.45"
\header {
  mutopiatitle = "Thirty Caprices: No. 7"
  mutopiacomposer = "CavalliniE"
  mutopiainstrument = "Clarinet"
  source = "Carl Fisher, 1909"
  style = "Classical"
  copyright = "Public Domain"
  maintainer = "Garrett Fitzgerald"
  maintainerWeb = "http://blog.donnael.com/"
  title = "Thirty Caprices: No. 7"
  composer = "Ernesto Cavallini"
 footer = "Mutopia-2008/07/17-1479"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

#(set-global-staff-size 17)

ECCapriceSeven = \relative c' {
  a16( \mark \markup{Allegro assai} e') c-. f-. e( c) a-. e-. c'( a) e'( c) | 
  a16( e') c-. f-. e( c) a-. e-. c'( a) e'( a,) |
  \repeat unfold 2 { gis( d') b-| f'-| e( d) b-| gis-| e( e') d-| b-| | }
  a( e') c-| f-| e( c) a-| e-| c'( a) e'-| c-| | 
  a( e') c-| f-| e( c) a-| e-| c'( a) e'-| a,-| |
  \repeat unfold 2 { gis( d') b-| f'-| e( d) b-| gis-| e( e') d-| b-| | }
  \repeat unfold 2 { a( e') c-| f-| e( c) a-| e-| c'( a) e'-| c-| | }
  g!( d') cis-| e-| d( g) fis-| a-| g( b) ais-| c-| | 
  b( d) cis-| e-| d( f) d-| b-| g( f) d-| b-| |
  c( g') fis-| a-| g( e) c-| g-| e'( c) g'-| e-| |
  c( g') fis-| a-| g( e) c-| g-| e'( c) g'-| c,-| |
  \repeat unfold 2 {
    \repeat unfold 2 { b( g') fis-| a-| g( f) d-| b-| g( g') f-| d-| | }
    \repeat unfold 2 { c( g') fis-| a-| g( e) c-| g-| e'( c) g'-| e-| | }
  }
  c( e) g-| c-| e( bes') g-| e-| c( b) bes-| g-| | 
  e( c) bes-| g-| e( c') e-| g-| c( e) c'-| bes-| |
  a( f) e-| g-| f( c) a-| g-| f( c) a-| g-| |
  \stemUp f!( \stemNeutral f''!) e-| g-| f( c) a-| g-| f( c) a-| f-| |
  \repeat unfold 2 { \stemUp e( \stemNeutral g'') fis-| a-| g( e) c-| bes-| g( e) c-| g-| | }
  \stemUp f \stemNeutral f''( e-|) g-| f( c) a-| g-| f( c) a-| g-| |
  \stemUp f \stemNeutral f''( e-|) g-| f( c) a-| g-| f( c) a-| f-| |
  \repeat unfold 2 { \stemUp e \stemNeutral g''( fis-|) a-| g( e) c-| bes-| g( e) c-| g-| | }
  \stemUp f! \stemNeutral a''( gis) bes a( f!) c-| a-| f( c) a-| g-| |
  \stemUp f \stemNeutral a''( gis) bes a( f) c-| a-| f( c) a-| g-| |
  \stemUp f \stemNeutral c'''( b!) d c( a) f-| e-| c( a) f-| c-| |
% page break
  \stemUp f \stemNeutral c''( b) d c( a) f-| c-| a( f) c-| a-| |

  \repeat unfold 2 { bes( f') d-| g-| f( d) bes-| f-| d'( bes) f'-| d-| | }
  a( f') e-| g-| f( ees) c-| a-| f( f') ees-| c-| |
  f,( f') e!-| g-| f( ees) c-| a-| f( f') ees-| c-| |
  \repeat unfold 2 { bes( f') d-| g-| f( d) bes-| f-| d'( bes) f'( d) | }
  \repeat unfold 2 { a( f') e!-| g-| f( ees) c-| a-| f( f') ees-| c-| | }
  \repeat unfold 2 { bes( f') d-| g-| f( d) bes-| f-| d'( bes) f'-| d-| | }
  \repeat unfold 2 { bes( f') d-| aes'-| f( d) bes-| f-| d'( bes) f'-| d-| | }
  a!( f') d-| a'!-| f( d) a-| f-| d'( a) f'-| d-| |
  a( f') d-| a'-| f( d) a-| f-| d'( a) f'( d) |
  gis,( f') d-| b'-| g( d) b-| gis-| d'( b) f'-| d-| |
  gis,( f') d-| b'-| g( d) b-| gis-| d'( b) f'( d) |
  g,( f') d-| b'-| f( d) b-| g-| d'( b) f'( d) | 
  f,( g') d-| b'-| g( d) b-| f-| d'( b) g'-| d-| |

  e,( b') a-| gis-| d'( c) b-| f'-| e( d) b'-| a-| |
  gis( d') c-| b-| f'( e) d-| b'-| a( gis) d'-| c-| |
  b( bes) a-| aes-| g( fis) f-| e-| ees( d) des-| c-| | 
  b( bes) a-| aes-| g( fis) f-| e-| ees( d) c-| b!-| |

  a( e') c-. f-. e( c) a-. e-. c'( a) e'-| c-| | 
  a( e') c-. f-. e( c) a-. e-. c'( a) e'-| a,-| |
  \repeat unfold 2 { gis( d') b-| f'-| e( d) b-| gis-| e( e') d-| b-| | }
  a( e') c-| f-| e( c) a-| e-| c'( a) e'-| c-| | 
  a( e') c-| f-| e( c) a-| e-| c'( a) e'-| a,-| |
  \repeat unfold 2 { gis( d') b-| f'-| e( d) b-| gis-| e( e') d-| b-| | }
  a( e') c-| f-| e( c) a-| e-| c'( a) e'-| c-| |
  a'( e') c-| f-| e( c) a-| e-| c'( a) e'( c) |

  a'( e) c-| f-| e( c) a-| e-| c'( a) e'( c) |
  a( e) c-| f-| e( c) a-| e-| c'( a) e'( c) |
  a4 r r \bar "|."


}

\book {
  \score {
    \new Staff {
      \clef treble
      \time 3/4
      \set beatLength = #(ly:make-moment 4 16)
      \set Staff.midiInstrument = "clarinet"
      \ECCapriceSeven
    }
    
    \layout {
      #(layout-set-staff-size 17)
    }
    
    \midi {
      \context {
	\Score
	tempoWholesPerMinute = #(ly:make-moment 60 4)
      }  
    }
  }
  \paper { 
    between-system-space = 1.5\cm
    between-system-padding = #1
    ragged-bottom = ##f
    ragged-last-bottom = ##f
  }
}
