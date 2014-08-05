\include "english.ly"
\version "2.18.2"

#(set-global-staff-size 20)
%#(set-default-paper-size "letter")

\header {
  title = "If Ye Love Me"
  composer = "Thomas Tallis (1510-1585)"
  arranger = "Adapted by S. O. S. (2004)"
  poet = "John 14: 15-17"
  style = "Renaissance"
  source = "not known"
  license = "Public Domain"
  enteredby = "Stan Sanderson"
  maintainer = "Stan Sanderson"
  maintainerEmail = "physinfoman@ameritech.net"
  mutopiacomposer = "TallisT"
  mutopiainstrument = "Voice (SATB) and Piano"
  lastupdated = "2014/08/03"
  	
 footer = "Mutopia-2014/08/05-412"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

\paper {
  top-margin = 10\mm
  last-bottom-spacing.basic-distance = #12
  scoreTitleMarkup = \markup { \fill-line { \fontsize #1 \bold \fromproperty #'header:instrument } }
}

%%% Modified to fit the range of, shall we say, less flexible voices.
%%% My apologies to Tallis purists!

staffSetup =  { 
	\voiceTwo \repeat unfold 12 { s1 }
	\set Timing.measurePosition = #(ly:make-moment 1/2) 
	s2
	\repeat volta 2 {
	  \set Timing.measurePosition = #(ly:make-moment 1/2)
	  s2
	  \repeat unfold 12 { s1 }
	}
	\alternative {
	  { 
	  \set Timing.measurePosition = #(ly:make-moment 1/2) 
	  s2
	  }
	  {s1}
	} 
}	

sopMusic =   \relative c' {
  \key f\major
  f2. f4 |
  g2 a( | \mark \default 
  a4) a g f |
  bf2 a \mark \default |
  r4 a a a   |
  c2 bf4 a( ~ | 
  a8[ bf] g4) a2 \mark \default | 
  R1 | 
  r4 g f f | 
  bf2. a4( | \mark \default
  a4) f a g( | 
  g4) f2 e4 |
  \set Timing.measurePosition = #(ly:make-moment 1/2)
  f2
  \repeat volta 2 { 
    \set Timing.measurePosition = #(ly:make-moment 1/2)
    r2  |
    r1 |
    r1 | \mark \default
    r4 f c'2( |
    c4) bf a g |
    f4 a g2 |
    g2  b\rest | \mark \default
    b1\rest |
    r4 c2 f,4 |
    c'4 bf a2 |
    g4 f e d | \mark \default 
    c4 f2 c'4 |
    d4 bf( c2)
  }
  \alternative {
    { 
      \set Timing.measurePosition = #(ly:make-moment 1/2)
      c2
    }
    { c1 }
  }
}
sopWords = \lyricmode {  
	If ye love me, keep my com- mand- ments, 
	and I will pray the Fa -- ther, and He shall 
	give you__ a- no- ther__ com- fort- er, 
	that He -- may bide with you for ev- er: 
	Ev'n the Sp'rit of truth, ev'n the Sp'rit 
	of truth, ev'n the Sp'rit of__ truth, truth.
	}

altoMusic =   \relative c' {
  \key f\major
  c2. d4 |
  e2 f( |
  f4) f e d |
  f2 f( |
  f) r2 |
  R1 |
  r4 d d d |
  f2 e4 d( ~ | 
  d c) d d |
  bf bf f'2 |
  f4 c f e |
  d4( bf4 c4.) c8 
  \set Timing.measurePosition = #(ly:make-moment 1/2)
  c2 \repeat volta 2 {
    \set Timing.measurePosition = #(ly:make-moment 1/2)
    r2 |
    r2 f |
    bf2. a4 |
    g4 f f e |
    f2 f4 c  |
    d4 d d2|
    e2 e |
    e4 a2 g4( ~ |
    g8 f) f4 b\rest f( |
    f4) bf, f' f |
    e4 c'2 f,4 |
    c'4 bf a g ~  |
    g8 f f2 e4 
  }
  \alternative {
    {
     \set Timing.measurePosition = #(ly:make-moment 1/2)
     f2
    }
    { f1 }
  }
}

altoWords =\lyricmode { 
  If ye love me, keep my com- mand- ments, 
  and I will pray the Fa -- ther, and He shall 
  give you__ a- no- ther__ com- fort- er, 
  that He -- may bide with you for ev- er,
  with you for ev- er: 
  Ev'n the Sp'rit of truth, ev'n the Sp'rit 
  of truth, ev'n the Sp'rit of __ truth,
  ev'n the Sp'rit of __ truth, truth.
}

tenorMusic =  \relative c { 
  \key f\major
  a'2. f4 |
  c'2 c( |
  c4) c c a |
  d2 c( |
  c2) r4 a |
  a4 a d4. c8 |
  bf2 a( |
  a2) r |
  r2 r4 bf |
  g4 g d2 |
  c'4 a c2( |
  bf8 a) f4 g4. g8 
  f2 \repeat volta 2 {
    r2 |
    f2 bf( |
    bf4) a g f |
    e4 f c'2 |
    f,4 f f e |
    d4 d g2 |
    c,2 d4\rest c'( |
    c4) f, c' bf |
    a2 f4 a ~ |
    a8 f( g4) f2 |
    r2 r4 f4( |
    f) bf f g  |
    bf c c c 
  }
  \alternative {
    { a2 }
    { a1 }
  }
}

tenorWords = \lyricmode { 
  If ye love me, keep my com- mand- ments, 
  and I will pray the Fa -- ther, and He shall 
  give you__ a- no- ther__ com- fort- er, 
  that He -- may bide with you for ev- er,
  may bide with you for ev- er: 
  Ev'n the Sp'rit of truth, the Sp'rit 
  of truth, ev'n the Sp'rit of __ truth,
  the Sp'rit of __ truth, truth.
}

bassMusic =  \relative c {
  \key f\major
  f2. d4 |
  c2 f( |
  f4) f c d |
  bf2 f'( |
  f1) |
  R1 |
  r2 d |
  d4 d g4. f8 |
  e2 d |
  r4 g d d |
  f2 f4 c |
  d d c c 
  f2 \repeat volta 2 {
    c2 |
    f2. e4 |
    d4 c bf c |
    c4( a) g g |
    a d c g |
    a a b2 |
    c4 g'2 c,4 |
    g'4 f e d |
    c1 |
    a4 d2 c4( |
    c4) d c bf |
    a4 d c e |
    bf4 f' g g 
  }
  \alternative {
    { f2 }
    { f1 }
  }
}

bassWords = \lyricmode { 
  If ye love me, keep my com- mand- ments, 
  and I will pray the Fa -- ther, and He shall 
  give you__ a- no- ther__ com- fort- er, 
  that He  may bide with you for ev- er,
  that He  may bide with you for ev- er:  
  Ev'n the Sp'rit of truth, the Sp'rit 
  of truth, ev'n the Sp'rit of  truth,
  the Sp'rit of truth, the Sp'rit of truth, truth.	
}

\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = #"Sop." }
    <<
      \clef "treble"
      \set Staff.midiInstrument = "voice oohs"
      \new Voice = "Sop" \with { \consists "Ambitus_engraver" }
         { \oneVoice \sopMusic }
      \new Lyrics \lyricsto "Sop" { \sopWords }
    >>
    \new Staff \with { instrumentName = #"Alto" }
    <<
      \clef "treble"
      \set Staff.midiInstrument = "voice oohs"
      \new Voice = "Alto" \with { \consists "Ambitus_engraver" }
         { \oneVoice \altoMusic }
      \new Lyrics \lyricsto "Alto" { \altoWords }
    >>
    \new Staff \with { instrumentName = #"Ten." }
    <<
      \clef "treble_8"
      \set Staff.midiInstrument = "voice oohs"
      \new Voice = "Tenor" \with { \consists "Ambitus_engraver" }
         { \oneVoice \tenorMusic }
      \new Lyrics \lyricsto "Tenor" { \tenorWords }
    >>
    \new Staff \with { instrumentName = #"Bass" }
    <<
      \clef "bass"
      \set Staff.midiInstrument = "voice oohs"
      \new Voice = "Bass" \with { \consists "Ambitus_engraver" }
         { \oneVoice \bassMusic }
      \new Lyrics \lyricsto "Bass" { \bassWords }
    >>
  >>
  \header { instrument = "Voice"  }
  \layout { \override LyricText #'font-size = #-0.4 }
  \midi { \tempo 4 = 70 }
}

%%% Piano Reduction

\score {
  \context PianoStaff <<
    \set PianoStaff.midiInstrument = "acoustic grand"
  	\context Staff = "upper" <<
    	      \sopMusic \\
    	      \altoMusic \\
    	      \staffSetup
    	>>
    \context Staff = "lower" <<
    	\clef bass 
    	  \tenorMusic \\
          \bassMusic
    >>  
  >>
  \header { instrument = "Piano"  }
  \layout { }  
  \midi { \tempo 4 = 70 }  
}

