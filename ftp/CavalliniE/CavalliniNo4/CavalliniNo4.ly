\version "2.11.45"
\header {
  mutopiatitle = "Thirty Caprices: No. 4"
  mutopiacomposer = "CavalliniE"
  mutopiainstrument = "Clarinet"
  source = "Carl Fisher, 1909"
  style = "Classical"
  copyright = "Public Domain"
  maintainer = "Garrett Fitzgerald"
  maintainerWeb = "http://blog.donnael.com/"
  title = "Thirty Caprices: No. 4"
  composer = "Ernesto Cavallini"
 footer = "Mutopia-2008/07/14-1478"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

#(set-global-staff-size 17)

ECCapriceFour = \relative c'' {
  \key b \minor

  b16(\mark \markup{Andante} fis) d'( cis) b( fis) fis'( e) | 
  d( fis,) d'( cis) b( fis) fis'( e) |
  d( fis,) b( cis) d( b) d( e) | fis( d) fis( ais) b( d) cis( b) |
  ais( g) e( fis) g( e) cis( b) | ais( g) e( fis) g( e) cis( b) |
  ais( cis) e( fis) ais( cis) e( fis) | ais( cis) ais-. fis-. e( cis) ais-. fis-. | 
  b( fis) d'-. cis-. b( fis) fis'-. e-. | d( fis,) d'-. cis-. b( fis) fis'-. e-. | 
  d( fis,) b-. cis-. d( b) d-. e-. |
  fis( d) fis-. ais-. b( d) cis-. b-. | ais( g) e-. fis-. g( e) cis-. b-. |
  ais( g) e-. fis-. g( e) cis-. b-. | ais( cis) e-. fis-. ais( cis) e-. fis-. |
  ais( cis) ais-. fis-. e( cis) ais-. fis-. | b( fis) d'-. cis-. b( fis) fis'-. e-. |
  d( fis,) d'-. cis-. b( fis) fis'-. e-. | d( g,) d'-. c-. b( g) b'-. a-. |
  g( g,) d'-. c-. b( g) b'-. a-. | 
  \repeat unfold 2 { 
    ees( c') b-. a-. e( c') b-. a-. | f( c') b-. a-. fis( c') b-. a-. | 
    \repeat unfold 2 {g,,-. b''( a g) b,-. b'( a g) | }
  }
  \repeat unfold 2 { gis,,-. f''( e d) gis,-. f'( e d) | }
  \repeat unfold 2 { a,-. e''( d c) a-. e'( d c) | }
  \repeat unfold 2 { ais,-. g''( fis e) ais,-. g'( fis e) | }
  b,-. fis''( e dis) b-. fis'( e dis) | \repeat unfold 2 { b-. fis'( e dis) } |
  b-. fis'( e d!) b-. fis'( e d) | \repeat unfold 2 { b-. fis'( e d) } |
  c,-. fis'( e d) a,-. fis''( e d) | fis,,-. fis''( e d) d,( cis!) c-. a-. |
  g( d') b'-. a-. g( d) d'-. c-. | b( d,) b'-. a-. g( d) d'-. c-. |
  b( d,) g-. a-. b( g) b-. c-. | d( b) d-. fis-. g( b) a-. g-. |
  g( fis) c-. d-. ees( c) a-. g-. | g( fis) c-. d-. ees( c) a-. g-. |
  fis( a) c-. d-. fis( a) c-. d-. | fis( a) fis-. d-. c( a) fis-. d-. |
  g( d) b'-. a-. g( d) d'-. c-. | b( d,) b'-. a-. g( d) d'-. c-. |
  b( d,) g-. a-. b( g) b-. c-. | d( b) d-. fis-. g( b) a-. g-. |
  g( fis) c-. d-. ees( c) a-. g-. | g( fis) c-. d-. ees( c) a-. g-. |
% end of page 1
  fis( a) c-. d-. fis( a) c-. d-. | fis( a) fis-. d-. c( a) fis-. d-. |
  g( d) b'-. a-. g( d) d'-. c-. | b( d,) b'-. a-. g( d) d'-. c-. |
  b( g) b-. d-. f( g) b-. d-. | f( d) b-. g-. f( d) b-. g-. |
  c( g) e'-. d c( g) g'-. f-. | e( g,) e'-. d-. c( g) g'-. f-. |
  e( c) e-. g-. bes( g) e-. c-. | bes( g) e-. c-. bes( g) e-. c'-. | 
  f,-. a''( g f) a,-. a'( g f) | f,,-. a''( g f) a,-. a'( g f) |
  \repeat unfold 2 { fis,,!-. c'''( bes a) a,-. c'( bes a) | }
  \repeat unfold 2 { g,,-. bes''( a g) g,-. bes'( a g) | }
  \repeat unfold 2 { gis,,-. f''( e d) gis,-. f'( e d) | }
  \repeat unfold 2 { a,-. e''( d c) a-. e'( d c) | }
  \repeat unfold 2 { ais,-. g''( fis e) ais,-. g'( fis e) | }
  b,-. fis''( e d) b'-. fis( e d) | b-. fis'( e d) b'-. fis( e d) |
  e,,-. g''( fis e) cis'-. g( fis e) | e,-. g'( fis e) cis'-. g( fis e) |
  fis,,-. fis''( e d) b'-. fis( e d) | fis,-. fis'( e d) b'-. fis( e d) |
  \repeat unfold 2 { fis,,-. e''( d cis) fis,-. e'( d cis) | } 
  b( fis) d'( cis) b( fis) fis'( e) | d( fis,) d'( cis) b( fis) fis'( e) |
  d( fis,) b( cis) d( b) d( e) | fis( d) fis( ais) b( d) cis( b) |
  ais( g) e( fis) g( e) cis( b) | ais( g) e( fis) g( e) cis( b) |
  ais( cis) e( fis) ais( cis) e( fis) | ais( cis) ais( fis) e( cis) ais( fis) |
  b( fis') e-. d-. e,,( g'') fis-. e-. | fis,,( fis'') e-. d-. fis,( e') d-. cis-. |
  b( fis') e-. d-. e,,-. g''( fis e) | fis,,-. fis''( e d) fis, e'( d cis) |
  b( fis) d'-. cis-. b( fis) fis'-. e-. | d( fis,) d'-. cis-. b( fis) fis'-. e-. |
  d( fis,) d'( cis) b( fis) fis'( e) | d( fis,) d'( cis) b( fis) fis'( e) |
  d4 r16 fis,,( fis' e) | d4 r16 fis,( d' cis) | b4-. r \bar "|."
}

\book {
  \score {
    \new Staff {
      \clef treble
      \time 2/4
      \set beatLength = #(ly:make-moment 4 16)
      \set Staff.midiInstrument = "clarinet"
      \ECCapriceFour
    }
    
    \layout {
      #(layout-set-staff-size 15)
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
