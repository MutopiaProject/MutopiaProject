\version "2.16.1"
\header {
  mutopiatitle = "Serenade op.127 nr.1: Maestoso"
  mutopiacomposer = "GiulianiM"
  mutopiaopus = "O 127"
  mutopiainstrument = "Flute, Violin"
  date = "1820s"
  source = "Tecla facsimile of 1827 Ricordi edition"
  style = "Classical"
  copyright = "Creative Commons Attribution 3.0"
  maintainer = "Mark Van den Borre"
  maintainerEmail = "mark@markvdb.be"
  maintainerWeb = "http://markvdb.be"
  lastupdated = "2002/Jul/31"

  filename	= "giuliani_op127_1_flute.ly"
  title 	= "Serenade"
  opus		= "Opus 127"
  instrument	= "Flauto o Violino"
  meter		= "Maestoso"
  subtitle = 	"1. Maestoso"
  mutopiasource =	"Tecla facsimile of 1827 Ricordi (Milano) edition"
  composer =	"Mauro Giuliani"
  enteredby	= "Mark Van den Borre"
%  copyright	= "Copyleft 2002 Mark Van den Borre - mark@markvdb.be"
%  tagline =	"Mark Van den Borre - mark@markvdb.be - http://www.markvdb.be"
 footer = "Mutopia-2013/02/17-255"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2013. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/by/3.0" http://creativecommons.org/licenses/by/3.0 } } } } }
}

\score {
  {
    \time 4/4
    \key g \major
    \clef violin 
    \relative c'' {
				%1
      r2 r4 d8.\mf d16 |
      d4 d8. d16 d8 cis16-. d-. e-. fis-. g-. a-. |
      b2(  g8) r8 d8. d16 |
      cis8( d) fis-. e-. \times 2/3 {e( d) c-.} \times 2/3 {c b a-.} |
      g4-. r r8 g_\turn a b |
				%6
      a4. d8 cis e fis g |
      fis4 a4.( g8[) b,8. e16] |
      e4 d2 \afterGrace cis4^\trill {b16[ cis]} |
      d4\f r8 d^\turn e fis g gis |
      b4( a8.) fis16-. a4( g8.) e16-.|
				%11
      g4( fis8) d^\turn e fis g gis|
      a16( g) fis-. g-. a( b) cis-. d-. d( cis) b-. a-. a( g) fis-. e-.|
      d4 d' d,,8 r8 e'8.\mf d16|
      c4 d8. c16 b4 c8.b16|
      a2 r8 a^\turn d c|
				%16
      b( c) cis-. d-. dis fis16( e d c b  a) |
      g2( fis8) r8 g'8.\mf a16|
      b4. b8 ais[ b \slashedGrace d c8. b16] |
      b2 \times 2/3 {r8 a b} \times 2/3 {c e, a}|
      a( g) fis-. g-.  b( a) d-. c-.|
				%21
      ais2( b8) r g,8. a16|
      ais8( b) \slashedGrace d c b \stemDown b ais16-. b-. \stemNeutral cis-. dis-. e-. fis-.|
      g2 fis16( g) c-. b-. a-. g-. fis-. e-.|
      e( d) c-. b-. d( c) b-. a-. \stemDown c( b) a-. g-. \stemNeutral b( a) g-. fis-.|

      g8 r b'4\sf(~ b16 c a b g a fis  g)|
				%26
      \barNumberCheck #26
      e4 r r8 b16( c) b8 g'|
      fis8.\sf dis16\> e4\! r8 b16( c) b8 g'|
      fis8.\sf dis16\> e4\! r8 e16( fis) g8 fis16( e)|
      d8 fis4-.\sf e16 d cis8 e4-.\sf d16 cis|
      b4 r r8 fis'16( g) fis8 d'|
				%31
      cis8. ais16( b4) r8 fis16( g) fis8 d'|
      cis8.\sf ais16\> b4\! r8 b16( cis) d8 cis16( b16)|
      a8 cis4\sf b16 a gis8 b4\sf a16 gis|
      fis4 r r8 a,8\mf a a|
      \stemDown  a16.[ b32-. \stemNeutral cis16. d32] e4 r8 a,8 a a|
				%36
      a16.[( cis32)-. d16. e32] fis4 r8 a,8 a a|
      a16.[ cis32-. e16. fis32] g4. fis16( g fis g a g)|
      fis4 r r8 d d d|
      d16.[( fis32)-. g16. a32] bes4. a16( g fis g a  g)|
      fis8-. a8-. d4-. r8 d, d d|

				%41
      d16.[( fis32)-. g16. a32] bes4. a16( g fis g a  g)|
      fis2 e8 g16( fis a g b  a)|
      a4( d,8) r d16( c) b-. c-. fis( e) d-. c-.|
      b8-. g'16( fis a g d  b) a8-. e'16( dis fis e c  a)|
      g8 d'16( cis e d b  g) \stemDown fis8 c'16( b d c a  fis) \stemNeutral|
				%46
      g4 r r d'8.\mf d16|
      d4 d8. d16 d8 cis16-. d-. e-. fis-. g-. a-.|
      b2( g8) r d8. d16|
      cis8( d) fis e \times 2/3 {e( d) c-.} \times 2/3 {c( b) a-.}|
      g4 r r g8. g16|

				%51
      g2\> r8\! c^\turn d e|
      d4.( b8  g4) g8. g16|
      g8 c4 e4 g8( fis8) e8-.|
      d2 r8 f(\>  e)  d\!-.|
      c4( a') r8 e8(\> d)  c\!-.|
				%56
      c( b) a-. b-. \stemDown d( c) e,-. a-. \stemNeutral|
      a4 g2 b16( a gis a)|
      ais4 b r8 e^\turn fis gis|
      \slashedGrace b a16( gis a  b) c4 r8 d,^\turn e fis|
      g16( b a g fis g a  g) fis( e d c b a c  e)|
				%61
      e4( d8) g16 fis-. a( g) fis-. e-. d-. c-. b-. a-.|
      g4 r r g'8. g16|
      g4\mf g8. g16 g8 fis16( g a b c d|
      e2  c8) r a8. g16|
      fis8-.\f es'4-. c-. a-. fis8-.|
				%66
      g2 r4 g,8.\mf g16|
      g4 g8. g16 g8 fis16( g a b c d|
      e2  c8) r a'8. g16|
      fis8-. es4-. c-. a-. fis8|
      g2 r4 d8. d16|
				%71
      d4 d8. d16 d8 e16( fis g gis a  ais)|
      b2( g8) r d'8. d16|
      d4 d8. d16 cis16( d) fis-. e-. d-. c-. b-. a-.|
      g2\> r8.\! d16 b'8. d,16|
      g2 r8. d16\p b'8. d,16|
				%76
      g4\f~ \stemDown  g16[ a32( b c d e  fis)] g4~ g16[ a32( b c d e  fis)]|
      g2 r^\fermata \bar "||"
    }
  }
  \midi { \tempo 4 = 84}
  \layout {}
}
