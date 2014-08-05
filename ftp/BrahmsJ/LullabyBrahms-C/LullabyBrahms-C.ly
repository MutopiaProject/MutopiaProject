\include "english.ly"
\version "2.18.2"

\header {
  title = "Cancion de Cuna"
  composer = "Johannes Brahms (1833-1897)"
  mutopiacomposer = "BrahmsJ"
  mutopiainstrument = "Recorder, Guitar"
  arranger = "Arreglo por Diego F. Guillen"
  meter = "Slow Waltz"
  license = "Public Domain"
  maintainer = "Diego Guillen"
  maintainerEmail = "adsldieg (at) tpg.com.au"
  style = "Romantic"
  source = "Arranged by typesetter"
  moreInfo = "Arrangement of Brahm's Lullaby Op. 49, No. 4"

 footer = "Mutopia-2014/08/05-481"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

songSettings =  { 
  \time 3/4 
  \key c \major
  \clef treble 
  \tempo 4=80 
}

theChords =  \transpose g c \chordmode {
    r4 
    g4 b2:m
    g4 b2:m
    g4 b2:m 
    a4:m d2
    a4:m d2
    a4:m d2:7
    d2.:7
    g2 g4:7
    c2.
    g2.
    a4:m d2
    g2 g4:7
    c2.
    g2.
    a4:m b4:m d4:7
    g
  
}


theNotes =  \transpose g c \relative c' {
%    \easyHeadsOn
    \partial 4
    b'8 b
    d4. b8 b4
    d2 b8 d8
    g4 fs4. e8
    e4 d4 a8 b8
    c4 a4 a8 b8
    c4 r4 a8 c8
    fs8 e8 d4 fs4
    g4 r4 g,8 g8
    g'2 e8 c8
    d2 b8 g8
    c4 d4 e4
    b8 d4. g,8 g8
    g'2 e8 c8
    d2 b8 g8 
    c8 d16 (c16) b4 a4
    g2
    \bar ":|."

}


wholeStaff = \context Staff {
  \songSettings
  << { \context ChordNames \theChords }
     { \theNotes  } >>
     
}


\score {

  \wholeStaff
  
  
  \midi {
    \tempo 4 = 80
    }


  \layout { }
}

