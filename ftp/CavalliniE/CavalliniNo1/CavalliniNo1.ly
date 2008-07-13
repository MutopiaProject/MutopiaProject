\version "2.11.45"
\header {
  mutopiatitle = "Thirty Caprices: No. 1"
  mutopiacomposer = "CavalliniE"
  mutopiainstrument = "Clarinet"
  source = "Carl Fisher, 1909"
  style = "Classical"
  copyright = "Public Domain"
  maintainer = "Garrett Fitzgerald"
  maintainerWeb = "http://blog.donnael.com/"
  title = "Thirty Caprices: No. 1"
  composer = "Ernesto Cavallini"
 footer = "Mutopia-2008/07/13-1463"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

#(set-global-staff-size 17)

ECCapriceOne = \relative c'' {
  #(override-auto-beam-setting '(end 1 8 2 4) 4 8)
  
  a4.-.\mark \markup{Allegro mosso} b8-. | c8-. d-. e-. f-. | e4-. a-. | b4( e,) |
  e'4.-. c8-. | a8( b) e,4-. | a4.-. b8( | c8 a e) c-. |
  a4.-. b8-. | c8-. d-. e-. f-. | e4-. a-. | b4( e,) |
  e'4.-. c8-. | a8( b) e,4-. | a4.-. g8-. | f8( e) d-. a'-. |

  g4-. e8-. c-. | e8( d) b-. g-. | c4-. a'8-. g | f8( e) d-. a'-. |
  g4-. e8-. c-. | e8( d) b-. g-. | c8-. c'( b) a-. | gis8-. b,,-. gis-. e-. |
  a8-. c''( b) a-. | gis8-. b,,-. gis-. e-. | a8( c'') f,,,( d''') |  e,,,8( e''') c-. a-. |
  gis8( e) d-. b-. | a8-. c'( b) a-. | gis8-. b,,-. gis-. e-. | a8-. c''( b) a-. | 
  gis-. b,,-. gis-. e-. | a8( c'') f,,,( d''') | e,,,8( e''') c-. a-. | g!8( f) d-. b-. | 

  c4.-. d8-. | e8-. f-. g-. a-. | g4-. c-. | d4( g,) | 
  g'4.-. e8-. | c8( d) g,4-. | c4-. g8-. e-. | c8( g) e-. d-. |
  c4.-. d8-. | e8-. f-. g-. a-. | g4-. c-. | d4( g,) |
  g'4.-. e8-. | c8( d) g,4-. | c4-. a'8-. g-. | fis8( e d) d'-. |
  
  d4-. b8-. g-. | b8( a) d,-. g-. | g4-. d8-. g-. | fis8( e d) d'-. |
  d4-. b8-. g-. | b8( a) d,-. g-. | g4-. a8( d,) | g8( a) d,( b') |
  g4-. a8-. d,-. | 
  \repeat unfold 3 {g8( a) d,( b') | }
  g4-. e'8-. d-. | cis8( e) g,( bes) | fis4-. d'8-. c-. | b!8( d) f,( aes) |
  e4-. c'8-. bes-. | a8( c) f,( aes) | d,4-. bes'8( aes) | f8( d) bes-. aes-. |
  g4-. d'8-. b!-. | g8( ees') c-. g-. | g'4-. d8-. b-. | g8( ees') c-. g-. | 
  g'4-. fis8-. g-. | f!8-. g-. d-. g-. |  b,8-. g'-. g,-. g'-. | a,8-. g'-. b,-. g'-. | 
  
  c,4.-. d8-. | ees8-. f-. g-. aes-. | g4-. c-. | d4( g,) |
  g'4.( ees8) | c8( d) g,4-. | c4-. g8-. ees-. | c8-. g-. ees( d) |

  c4.-. d8-. | ees8-. f-. g-. aes-. | g4-. c-. | d4( g,) |
  g'4.-. ees8-. | c8( d) g,4-. | c4-. ees8-. aes | 
  fis8( d') d-. c-. |  b4-. d,8( g) | g8-. f-. d-. ees-. | c4-. ees8( aes) | 
  fis8( d') d-. c-. |  b4-. d,8( g) | g8( fis e fis) | 
  g8( aes) d,-. f!-. | \repeat unfold 3 {g8( aes) d,-. f-. | }
  gis8( a!) d,-. f-. | gis8( a) d,-. f-. | gis8( a) d,-. f-. | gis8( a) b,-. d-. |
  e8( f) gis,-. b-. | d8( e) e,-. gis-. | 
  a4.-. b8-. | c8-. d-. e-. f-. | e4-. a-. | b4( e,) |
  e'4.-. c8-. | a8( b) e,4-. | a4.-. b8-. | c8( a) e-. c-. | 
  a4.-. b8-. | c8( d) e-. f-. | e4-. a-. | b4( e,) |
  e'4.-. c8-. | a8( b) e,4-. | a4.-. g8-. | f8( e) d-. a'-. |
  g4-. e8-. c-. | e8( d) b-. g-. | c4-. a'8-. g | f8( e) d-. a'-. |
  g4-. e8-. c-. | e8( d) b-. g-. | c8-. c'( b) a-. | gis8-. b,,-. gis-. e-. |
  a8-. c''( b) a-. | gis8-. b,,-. gis-. e-. | a8( c'') f,,,( d''') | e,,,8( e''') c-. a-. |
  gis8( e) d-. b-. | a8-. c'( b) a-. | gis8-. b,,-. gis-. e-. | a8-. c''( b) a-. |
  gis8-. b,,-. gis-. e-. | a8( c'') f,,,( d''') | e,,,8( e''') c-. a-. | gis8( e) d-. b-. |
  a4.-. b8-. | c8-. d-. e-. f-. | e4-. r | e,4-. r | a,4-. r | \bar "|."
}

\book {
  \score {
    \new Staff {
      \clef treble
      \time 2/4
      \key c \major
      \set beatLength = #(ly:make-moment 4 8)
      \set Staff.midiInstrument = "clarinet"
      \override Staff.VerticalAxisGroup #'minimum-Y-extent = #'(-2 . 2)
      \ECCapriceOne
    }
    
    \layout {
      #(layout-set-staff-size 15)
    }
    
    \midi {
      \context {
	\Score
	tempoWholesPerMinute = #(ly:make-moment 120 4)
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
