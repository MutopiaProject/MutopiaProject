\header {
  title = "Waltz in A minor"
  composer = "Frédéric CHOPIN"
  meter = "Allegreto"
  opus = "B.150"
  mutopiatitle = "Waltz in A minor"
  mutopiacomposer = "ChopinFF"
  mutopiainstrument = "Piano"
  date = "1843"
  source = "IMSLP96384-PMLP113759"
  style = "Romantic"
  license = "Creative Commons Attribution 3.0"
  maintainer = "Leonardo Herrera"
  maintainerEmail = "leonardo.herrera@gmail.com"
  moreInfo = "This file was created from a public domain scan of the work.  The source is located in the Petrucci Music Library, http://imslp.org/."
  footer = "Mutopia-2014/07/25"
  tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2014. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/3.0" http://creativecommons.org/licenses/by/3.0 } } } }  
}

global = {
  \key c \major
  \override Staff.TimeSignature #'style = #'()
  \time 3/4
}

right = \relative c'' {
  \global
  \partial 4
  e, 
  ( a8 b c4 ) c
  d8 ( e f2 )
  b,8 ( c d a' g f )
  \grace { e16 f } e8 ( dis e2 )

  % 5
  a,8 ( b c4 ) c
  d8 ( e f2 )
  b,8 ( c d a' g b, 
  
  c4 ) r e,
  a8 b c4 c
  
  % 10
  d8 e f2
  b,8 c d a' g f
  \grace { e16 f} e8 dis e2
  c8 d e4 e
  f8 g a2
  
  % 15
  g4 fis8 g d' f,
  e2.
  \repeat volta 2 {
    e8 ( fis gis a b c
    \grace { b16 c } b8 a e b' ) a4
    \grace { a16 b } a8 ( gis e f ) e4
    
    % 20
    \grace { e16 f } e8 ( c a b a4 ) 
    \times 2/3 { e8 ( gis b } \times 4/5 { e16 gis \ottava #1 b' e, gis } b8.[ c16] )
    \grace { b16 c } b8 ( a e b' ) a4
    \grace { a16 b } a8 ( gis e e' e4 a,2 ) \ottava #0 r4
  }
  % 25
  \repeat volta 2 {
    a,,8 ( b c4 ) c
    d8 ( e f2 )
    b,8 ( c d a' g f )
    \grace { e16 f } e8 ( dis e2 )
    c8 ( d e4 ) e
    f8 ( g a2 )  
    
    % 31
    dis,8 ( e fis4 fis )
    gis8 ( a b2 )
    b8 ( cis d fis e dis 
    cis \prall b cis gis a fis )
    \grace { e16 fis } e8 ( d gis, fis' e4 )
    
    % 36
    \grace { e16 fis } e8 ( cis a fis' e4 )
    b'8 ( cis d fis e d
    \prall cis b cis gis a fis )
    \grace { e16 fis } e8 ( d gis, fis' e gis, 
    a4 ) r e
  }
  
  % 41
  a8 ( b c4 ) c
  d8 ( e f2 )
  b,8 (c d a' g f )
  \grace{ e16 f } \slurDashed e8 ( dis e2 ) \slurSolid
  a,8 ( b c4 ) c
  d8 ( e f2 )
  
  %47
  b,8 ( c d a' g b,
  c4 ) r e,
  a8 ( b c4 ) c
  d8 ( e f2 )
  r8 e \prall  ( dis e b' d, 
  
  % 52
  c2 ) r4
  r8 c' ( b a g f 
  e d cis d e f )
  
  e4 ( \startTrillSpan  dis8 \stopTrillSpan e f gis, ) 
  a2 r4
}

left = \relative c' {
  \global
  \partial 4
  r4
  a,, <a'' c e> <a c e>
  d,, <a'' d f> <a d f>
  g, <g' b f'> <g b f'>
  c, <g' c e> <g c e>
  
  % 5
  a, <a' c e> <a c e>
  d,, <a'' d f> <a d f>
  g, <g' b f'> <g b f'>
  c, <g' c e> r
  a,, <a'' c e> <a c e>
  
  %10
  d,, <a'' d f> <a d f>
  g, <g' b f'> <g b f'>
  c, <g' c e> <g c e>
  a, <a' c e> <a c e>
  d,, <a'' d f> <a d f>
  
  %15
  g, <g' b f'> <g b f'>
  c, <g' c e> <g c e>
 
  \repeat volta 2 {
    e, <e' b' d> <e gis d'>
    a, <e' a c> <e a c>
    e, <e' b' d> <e b' d>
   
    % 20
    a, <e' a c> <e a c>
    e, <e' b' d> <e gis d'>
    a, <e' a c> <e a c>
    e, <e' b' d> <e b' d>
    a, <e' a c> <e a c>
  }
  
  %25
  \repeat volta 2 {
    a,, <a'' c e> <a c e>
    d,, <a'' d f> <a d f>
    g, <g' b f'> <g b f'>
    c, <g' c e> <g c e>
    a, <a' c e> <a c e>
    d, <a' d f> <a d f>
    
    % 31
    b,, <a'' b dis> <a b dis>
    e, <e' b' d> r
    e, <e' gis d'> <e gis d'>
    a, <e' a cis> <e a cis>
    e, <e' b' d> <e b' d>
    
    % 36
    a, <e' a cis> <e a cis>
    e, <e' gis d'> <e gis d'>
    a, <e' a cis> <e a cis>
    e, <e' b' d> <e b' d>
    a, <e' cis'> r
  }
  
  % 41
  a,, <a'' c e> <a c e>
  d,, <a'' d f> <a d f>
  g, <g' b f'> <g b f'>
  c, <g' c e> <g c e>
  a, <a' c e> <a c e>
  d,, <a'' d f> <a d f>
  
  % 47
  g, <g' b f'> <g b f'>
  c, <g' e'> r
  a,, <a'' c e> <a c e>
  d,, <a'' d f> <a d f>
  e, <e' gis d'> <e gis d'>
  
  % 52
  a, <e' a c> <e a c>
  c <e a e'> r
  d <a' b f'> r
  e, <e' c'> <e b' d>
  a, <e' c'> r
  
   \bar "|."
  
}

% Engraving
\score {
  \new PianoStaff <<
    \new Staff \right
    \new Staff { \clef bass \left }
  >>
}

% Midi output with repeats
\score {
  \unfoldRepeats \new PianoStaff <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } \right
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } { \clef bass \left }
  >>
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 120 4)
    }
  }
}


