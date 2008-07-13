\version "2.11.45"
\header {
  mutopiatitle = "Thirty Caprices: No. 3"
  mutopiacomposer = "CavalliniE"
  mutopiainstrument = "Clarinet"
  source = "Carl Fisher, 1909"
  style = "Classical"
  copyright = "Public Domain"
  maintainer = "Garrett Fitzgerald"
  maintainerWeb = "http://blog.donnael.com/"
  title = "Thirty Caprices: No. 3"
  composer = "Ernesto Cavallini"
 footer = "Mutopia-2008/07/13-1464"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

ECCapriceThree = \relative c' {
  \key c \minor
  #(override-auto-beam-setting '(end 1 8 4 4) 4 8)
  
  c8-.\<\mark \markup{Agitato} ees( g) b c-.\> d( ees) g,-.\! |
  c,8-. ees( g) b-. c-. d( ees) g,-. | b,8-. g'( b) c-. d-. ees( f) g,-. | \break
  b,8-.\< g'( b) c-. d-.\> ees( f) g,-.\! |

  \repeat unfold 2 { c,8-. ees( g) b-. c-. d( ees) g,-. }
  \repeat unfold 2 { b,8-. g'( b) c-. d-. ees( f) g,-. }

  \repeat unfold 2 { c,8-. ees( g) b-. c-. d( ees) g,-. }
  bes,!8-. d( f) a-. bes-. d( f) a-. | bes8-. aes!( f) d-. bes-. aes!( f) d-. |

  \repeat unfold 2 { ees8-. g( bes) d-. ees-. g( bes) g,-. | 
		     ees8-. g( bes) d-. ees-. g( bes) ees,,-. |
		     d8-. f( aes) d-. f-. g( aes) f,-. | 
		     d8-. f( aes) d-. f-. g( aes) d,,-. | }

  ees-. g( bes) d-. ees-. g( bes) g,-. | ees-. g( bes) d-. ees-. g( bes) ees,,-. |
  d8-. f( b) d-. f-. g( aes) f,-. | d8-. f( b) d-. f-. g( aes) d,,-. |

  c8-. ees( g) b-. c-. d( ees) g,-. | c,8-. ees( g) b-. c-. d( ees) c,-. |
  g8-. bes!( des) ees-. g-. bes( des) ees-. | g8-. bes( g) ees-. des-. bes( g) ees-. |

  \repeat unfold 2 {
    aes,8-. c( ees) g-. aes-. c( ees) c,-. | aes8-. c( ees) g-. aes-. c( ees) aes,,-. |
    g8-. bes( des) ees-. g-. bes( des) bes,-. | g8-. bes( des) ees-. g-. bes( des) g,,-. |
  }

  \repeat unfold 2 { aes8-. c( ees) g-. aes-. c( ees) c,-. | }
  aes8-. ces( ees) g-. aes-. ces( ees) ces,-. | aes8-. ces( ees) g-. aes-. ces( ees) aes,,-. |
  \bar "||"
  \key e \major
  
  \repeat unfold 2 {
    \repeat unfold 2 { fis8-. a( b) dis fis a( b) dis-. | }
    \repeat unfold 2 { e,,8-. gis( b) dis-. e-. gis( b) e-. | }
  }
  \repeat unfold 2 { e,,8-. g( b) dis-. e-. g( b) e-. | }

  \bar "||"
  \key g \major
  
  \repeat unfold 2 { c,8-. d( fis) a-. c-. d( fis) a | }
  \repeat unfold 2 { g,,8-. b( d) fis-. g-. b( d) g | }
  \repeat unfold 2 { a,,8-. c( d) fis-. a-. c( d) fis | }
  \repeat unfold 2 { g,,8-. b( d) fis-. g-. b( d) g-. | }
  \repeat unfold 2 { g,,8-. b( d) f-. g-. b( d) f | }

  \bar "||"
  \key c \minor

  \repeat unfold 2 { c,8-. ees( g) b-. c-. d( ees) g,-. | }
  \repeat unfold 2 { b,8-. g'( b) c-. d-. ees( f) g,-. | }
  \repeat unfold 2 { c,8-. ees( g) b-. c-. d( ees) g,-. | }
  b,8-. g'( b) c-. d-. ees( f) g,-. | b,8 g'( b) c-. d-. ees( f) g-. |
  \repeat unfold 2 { c,,8-. b''( c) c,,-. aes-. b''( c) aes,,-. |
		     g-. b''( c) g,,-. g'-. fis'( g) g,,-. | }
  \repeat unfold 2 { c8-.\< ees( g) b-. c-. d( ees) g-. |
		     b8-.\> c( g) ees-. b-. c( g) ees-.\! | }
  c8-.\< d( ees) f-. g-. b( c) d-. | ees-. f( g) b-. c-. d( ees)\! g,,,-. | c2 r2 \bar "|."
}

\book {
  \score {
    \new Staff {
      \clef treble
      \time 4/4
      \set beatLength = #(ly:make-moment 4 8)
      \set Staff.midiInstrument = "clarinet"
      \ECCapriceThree
    }
    
    \layout {
    }
    
    \midi {
      \context {
	\Score
	tempoWholesPerMinute = #(ly:make-moment 140 4)
      }  
      \context {
	\Voice
	\remove "Dynamic_performer"
      } 
    }
  }
  \paper { 
    ragged-bottom = ##f
    ragged-last-bottom = ##f
  }
}
