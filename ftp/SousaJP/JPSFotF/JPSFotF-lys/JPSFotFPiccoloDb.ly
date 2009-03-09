\version "2.11.63"
#(set-global-staff-size 15)
\paper {
  between-system-padding = #1
}

\header {
  title = "The Fairest of the Fair"
  subtitle = "March"
  composer = "John Philip Sousa"
  mutopiacomposer = "SousaJP"
  instrument = "Piccolo in Db"
  date = "1908"
  source = "John Church, 1908"
  style = "March"
  copyright = "Public Domain"
  maintainer = "Garrett Fitzgerald"
  maintainerEmail = "gfitzger@nyx.net"
  maintainerWeb = "http://blog.donnael.com/"
 footer = "Mutopia-2009/03/09-1643"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

piccoloInDb = \relative c''' {
  \key d \major

  \grace { a16[(^"Marziale" b cis] } d8.)\f-> a16 b8 g | a8.-> fis16 b8 g8 | 
  fis16 e d e fis8 e | d8 r r \times 2/3 {a16( b cis)} | \bar "||"
  d8\f e fis a | d8.-> cis16 d8 b | a8. gis16 a8 fis | a4. d,16-. fis-. |
  b8 b16 b b8 d,16 fis | b8 b16 b b8 d,16 fis | 
  b8 b b cis | a4.\< \times 2/3 {a,16(\! b cis} |
  d8->) e fis a | d8.-> cis16 d8 b | a8. gis16 a8 fis | a4. fis16-. a16-. |
  cis8 cis16 cis cis8 fis,16 a | cis8 cis16 cis cis8 eis,16 gis |
  \repeat tremolo 4 cis8 | cis8 r cis4(\< | d8.->)\! a16 b8 g | a8.-> fis16 b8 g |
  fis16 e d e fis8 e | d8 e fis a | d8. a16 b8 g | a8. fis16 b8 g |
  fis16 e d e fis8 e | d8 r d4-^( |
  \repeat volta 2 { cis8) e cis4~ | cis8 cis16( d e8) d16( e | 
		    fis8) a fis4~ | fis8 fis16( g a8) gis16( a |
		    b8) a b4~ | b8\< a16( b cis8) b16( cis\! |
		    d8) d16( e fis8) fis16( e | d8\>) a fis d\! |
		    cis8 e cis4~ | cis8 cis16( d e8) d16( e |
		    fis8) a fis4~ | fis8 fis16( g a8) gis16( a | 
		    \repeat percent 2 { \acciaccatura cis8 b8) ais b4 | }
		    \acciaccatura cis8 b8 ais b b | cis8 r cis4\ff( |
		    d8.->)_\markup {\italic "giocoso"} a16 b8 g | a8.-^ fis16 b8 g |
		    fis16 e d e fis8 e | d8 e fis a |
		    d8. a16 b8 g | a8. fis16 b8 g | fis16 e d e fis8 e | 
		  }
  \alternative { { d8 r d4\laissezVibrer } { d8 r d4\p( } } | \bar "||"
  \key g \major
  d'2\p) | g,4( b | e2 | b2)
  \acciaccatura b8 a8.( gis16 a8. c16 | b4 a) | g2 | d2 |
  e4-.( e-. | e4-. fis-.) | \acciaccatura a8 g8. fis16 g8. a16 | b2 |
  \acciaccatura b8 a8.( gis16 a8. b16 | cis4) a | d2~ | d4 d, |
  d'2 | g,4( b | e2 | b2) | 
  e4( b8. a16 | g4 fis | e2 | b2) |
  fis'4 g8.( fis16) | g4 fis8.( g16) | fis'2( | e2) |
  d8( b) r4 | d8( a) r4 | g2~ | g8 r g4\ff
  \repeat volta 2 { fis8-> b-> r4 | fis8 b fis b | fis8-> b-> r4 | c!2( |
		    b8) e e dis | e8 e16 dis e dis e fis |
		    g16 fis e8 fis dis | e8 r r4 | e,8-> a-> r4 | e8 a e a |
		    e8-> a-> r4 | b2 | a8 d d cis | d8 d16 cis d cis d e |
		    fis16 e d8 e cis | d8 r r \times 2/3 { a16( b cis) } |
		    d8.-> a16 b8 g | a8. fis16 b8 g | 
		    fis16 e d e fis8 e-> | d8 r d4\ff( |
		    d'2) | g,4( b | e2) | b2 |
		    \acciaccatura b8 a8.( gis16 a8. c16 | b4 a) |
		    g2 | d2 | e4-.( e-. | e4-. fis-.) |
		    \acciaccatura a8 g8.( fis16 g8. a16 | b2) |
		    \acciaccatura b8 a8.( gis16 a8. b16 | cis4 a) |
		    d2~ | d4 d, | d'2 | g,4( b | e2 | b2) |
		    e4( b8. a16 | g4 fis | e2 | b2) |
		    fis'4 g8.( fis16) | g4 fis8.( g16 | fis'2 | e2) |
		    d8( b) r4 | d8( a) r4 |
		  }
  \alternative { {g2~ | g8 r g4 | } { g2~ | g8 r g-> r | } } \bar "|."
}

\score {
  \new Staff = "left" { 
    \set Staff.midiInstrument = "piccolo" 
    \clef treble
    \once \override Score.MetronomeMark #'transparent = ##t
    \tempo 4=120
    \time 2/4
    \piccoloInDb
  }
  
  \layout {}
  \midi {}
}
