%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.20.0"
\language "english"

\header {
  title = "Mazurka"
  subtitle = "in A Minor"
  composer = "Frederic Chopin (1810-1849)"
  opus = "Opus 7, No 2"
  date = "1830 – 1832"
  style = "Romantic"
  source = "http://www.chopinonline.ac.uk/ocve/browse/pageview/67295/"
  
  maintainer = "Knute Snortum"
  maintainerEmail = "knute (at) snortum (dot) net"
  copyright = "Creative Commons Attribution-ShareAlike 4.0"
  
  mutopiatitle = "Mazurka in A Minor"
  mutopiaopus = "Opus 7, No 2"
  mutopiacomposer = "ChopinFF"
  mutopiainstrument = "Piano"
}

sd = \sustainOn 
su = \sustainOff

%slurPositionA = \once \override Slur.positions = #'(0 . 0)

% () may be used as a shorthand for ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
% if any of the segments does not need to be changed

%slurShapeA = \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . 0)) \etc
%slurShapeA = \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . 0)) Slur
%{slurShapeA = \shape #'(
             (( 0 . 0) (0 . 0) (0 . 0) (0 . 0))
             ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
           ) Slur %}

global = {
  \key a \minor
  \time 3/4
  \accidentalStyle piano
  \override Slur.details.accidental-collision = #1000
}

rightHand = \relative c'' {
  \global
  \clef treble
  \tempo "Viva ma non troppo" 4 = 160
  \omit TupletBracket
  
  \partial 4 e4(
  f8. e16 d4 f |
  f2) e4 |
  \tuplet 3/2 { d16( e d } cs8 d ds e b |
  d2 c4) |
  \tuplet 3/2 { a8( b a) } gs4-.( a-. |
  b4-.) e2-> |
  b8( g e b' ds,4 |
  e2) e'4( |
  
  % Can't have \repeat volta and barNumberCheck together
  %\barNumberCheck 9
  f8. e16 d4 f |
  f2 e4) |
  \tuplet 3/2 { d16( e d } cs8 d ds e b |
  \slashedGrace { b8 } d2 c4) |
  \tuplet 3/2 { a8(\( bf a) } g4 a |
  << { bf4 d\) } \\ { d,4( f) } >> r4\fermata
}

leftHand = \relative c' {
  \global
  \clef bass
  \override Beam.auto-knee-gap = 4
  
  \partial 4 r4
  r4 <a d f>-.( q-.) |
  r4 <a d f>-.( <a c e>-.) |
  r4 <e gs d'>-.( q-.) |
  r4 a,( <e' c'>) |
  r4 <e c'>( a,) |
  r4 <e' g b>( b) |
  r4 <b g' b> <b fs' b> |
  <e gs b>4 e, r |
  
  %\barNumberCheck 9
  r4 <a' d f> q |
  r4 <a c f> <a c e>
  r4 <e gs e'> q |
  r4 <f a d> <f a c> |
  bf2 r4\fermata |
}

pedal = {
  \partial 4 s4
  s2. * 8 |
  
  %\barNumberCheck 9
  s2. * 4 |
}

dynamics = {
  \partial 4 s4
  s8.\p\> s16\! s2 |
  s8.\> s16\! s2 |
  s8.\< s16\! s4 s8.\> s16\! |
  s4\> s8. s16\! s4 |
  s4 s8 s-"cres." s4 |
  s2. |
  s4.-\markup { \dynamic f stretto } s8\< s4 |
  s8. s16\! s4 s\p |
  
  %\barNumberCheck 9
  s8.\> s16\! s2 |
  s8.\> s16\! s2 |
  s8.\> s16\! s2-"cres." |
  s8.\> s16\! s2 |
}


#(set-global-staff-size 18) % default 20

% ly:expect-warning only works to supress once.  This function allows
% you to specify the number of times a warning appears.
#(define ly:expect-warning-times (lambda args
   (for-each (lambda _ (apply ly:expect-warning (cdr args)))
             (iota (car args)))))

%#(ly:expect-warning-times 69 "omitting tuplet bracket")
%#(ly:expect-warning-times 3 "stealing the entirety")

\paper {
  ragged-right = ##t % set to false after editing 
  ragged-last-bottom = ##t % set to false after editing 

  markup-system-spacing = 
    #'((basic-distance . 2)
       (padding . 1)) % defaults: 1, 0.5
    
  system-system-spacing =
    #'((basic-distance . 12) 
       (minimum-distance . 8)
       (padding . 3)
       (stretchability . 60)) % defaults: 12, 8, 1, 60
      
  last-bottom-spacing = 
    #'((basic-distance . 2)
       (minimum-distance . 1)
       (padding . 2)
       (stretchability . 30)) % defaults 1, 0, 1, 30
    
  #(set-paper-size "letter") % for testing only
  
  % These settings are scaled to paper-size
  top-margin = 12\mm % default 5
  bottom-margin = 12\mm % default 6
  left-margin = 10\mm % default 10
  right-margin = 10\mm % default 10
}

% Typeset only
\score {
  \keepWithTag layout
  \new PianoStaff \with { instrumentName = \markup \huge "No. 2" } 
  <<
    \new Staff = "upper" \rightHand
    \new Dynamics = "dynamics" \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics = "pedal" \pedal 
  >>
  \layout {
    \context {
      \Score
      %\omit BarNumber % Uncomment after editing
    }
  }
}

\include "articulate.ly"

% Midi only
\score {
  \keepWithTag midi
  \articulate {
    <<
      \new Staff = "upper" << \rightHand \pedal \dynamics >>
      \new Staff = "lower" << \leftHand \pedal \dynamics >>
    >>
  }
  \midi {
    \context {
      \Staff
      \consists "Dynamic_performer"
    }
    \context {
     \Voice
     \remove "Dynamic_performer"
    }    
  }
}
