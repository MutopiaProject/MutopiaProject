%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.20.0"
\language "english"

\header {
  title = "Mazurka"
  subtitle = "in F Minor"
  composer = "Frederic Chopin (1810-1849)"
  opus = "Opus 7, No 3"
  date = "1830 – 1832"
  style = "Romantic"
  source = "http://www.chopinonline.ac.uk/ocve/browse/pageview/67297/"
  
  maintainer = "Knute Snortum"
  maintainerEmail = "knute (at) snortum (dot) net"
  copyright = "Creative Commons Attribution-ShareAlike 4.0"
  
  mutopiatitle = "Mazurka in F Minor"
  mutopiaopus = "Opus 7, No 3"
  mutopiacomposer = "ChopinFF"
  mutopiainstrument = "Piano"
}

sd = \sustainOn 
su = \sustainOff

arpeggioPositionA = { \once \override Staff.Arpeggio.positions = #'(0 . 0) }

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
  \key f \minor
  \time 3/4
  \accidentalStyle piano
  \override Slur.details.accidental-collision = #1000
  %\override TextSpanner.script-priority = #-100
  %\override Staff.RestCollision.minimum-distance = #0.4 % needed?
}

rightHand = \relative c' {
  \global
  \clef treble
  \tempo 2. = 54
  \omit TupletBracket
  
  s2. * 8 |
  
  \barNumberCheck 9
  f8[ r16 g( af8 bf c af]) |
  \tuplet 3/2 { g8( af g) } f4-. f'->( |
  bf,8)[ r16 c16( df8 ef f df]) |
  \tuplet 3/2 { df8( ef df) } c4-! af-> |
  f8[-! r16 g( af8 bf c af]) |
  \tuplet 3/2 { g8( af g) } f4-! c'4-> |
  \slashedGrace { c8 } c,8[^\markup { \italic "con forza." } 
    r16 d( ef8 f g b,)] |
  c4.-> c8 df8->\prall[ r16 c]( |
  
  \barNumberCheck 17
  f8)[-!^\markup { \italic rubato. } r16 g( af8 bf c af)] |
  \tuplet 3/2 { g8( af g) } f4-. f'-> |
  bf,8[-! r16 c( df8 ef f df)] |
  \tuplet 3/2 { df8( ef df) } c4 af-> |
  f8[-! r16 g( af8 bf c af]) |
  \tuplet 3/2 { g8( af g) } f4 f'-> |
  \slashedGrace { c8 } c,8[^\markup { \italic "con forza." } 
    r16 d( ef8 f g b,)] |
  c2-^( c'4) |
  \bar "||"
  
  \barNumberCheck 25
  bf8 af g4-! g8( af) |
  f8( g af4)-! af8 c |
  bf8( af g\prall f g af) |
  f8-.[ r16 g af8 bf c df] |
  \slashedGrace { df8 } f8. ef16 df4\prall c8( bf |
  af8 bf c4-!) c8( df |
  f8)[ r16 ef]( df4\trill c8 bf |
  af8 bf c2) |
  
  \barNumberCheck 33
  bf8( af g4-!) g8( af) |
  f8( g af4)-! af8( c) |
  bf8( af g\prall f g af) |
  f8-.[ r16 g af8 bf c df] |
  \slashedGrace { df8 } f8.( ef16 df4\prall c8 bf) |
  af8( bf c4) c8( df |
  f8)[ r16 ef]( df4\prall c8 bf) |
  af8[ r16 bf]( c4) af8( c) |
  \break
  \bar "||"
  
  \barNumberCheck 41
  <gf af ef'>8.-.( q16-. <gf af f'>4 <gf af ef'>-.) |
}

leftHand = \relative c {
  \global
  \clef bass
  \override Beam.auto-knee-gap = 4
  
  <<
    {
      c2.(~  |
      c4 df b |
      c2.~ |
      c4 df b |
      c2.)~ |
      c2.~ |
      c2.~ |
      c2. |
    }
    \\
    {
      f,8 e c2 |
      f2.~ |
      f8 e c2 |
      f2.~ |
      f8 e c2 |
      f4 f8 e c4 |
      f8 e c4 c |
      f8-. e-. f-. e-. c-. c-. |
    }
  >> 
  
  \barNumberCheck 9
  f4-. <f c' af'>\arpeggio q\arpeggio |
  r4 <f c' af'>\arpeggio q\arpeggio |
  r4 <bf f' df'>\arpeggio q \arpeggio |
  \repeat unfold 3 { r4 <f c' af'>\arpeggio q\arpeggio } |
  r4 <g ef' g> <g d' g> |
  r4 <c g' e'>\arpeggio <c bf' e>\arpeggio |
  
  \barNumberCheck 17
  r4 <f, c' af'>\arpeggio q\arpeggio |
  r4 <f c' af'>\arpeggio q\arpeggio |
  r4 <bf f' df'>\arpeggio q \arpeggio |
  \repeat unfold 3 { r4 <f c' af'>\arpeggio q\arpeggio } | 
  r4 <g ef' g> <g d' g> |
  r4 c2->~ |
  
  \barNumberCheck 25
  c4( c') c |
  <f, af c>4 q q |
  <f g c>4 <f bf c> q |
  <f af c>4-. q( <f af bf>) |
  ef,4-. <ef' g df'> q |
  af,4 <ef' af c> q |
  ef,4-. <ef' g df'> q |
  af,4-. << { <af' c>4 } \\ { ef8[ e] } >> <f af c>4 |
  
  \barNumberCheck 33
  <f g c>4 <f bf c> q |
  <f af c>4 q q |
  <f g c>4 <f bf c> q |
  <f af c>4-! q <f af bf> |
  ef,4-.^\markup { \italic dolce. } <ef' g df'> q |
  af,4 <ef' af c> q |
  ef,4-. <ef' g df'> q |
  af,4 <ef' c'> af, |
  
  \barNumberCheck 41
  << { \voiceFour \arpeggioPositionA <ef' af c>4\arpeggio q q } \\ { \voiceTwo af,2. } >>
}

pedal = {
  s2. * 8 |
  
  \barNumberCheck 9
  s2. * 8 |
  
  \barNumberCheck 17
  s2. * 8 |
  
  \barNumberCheck 25
  s2. * 4 |
  \repeat unfold 3 { s4\sd s s\su } |
  s4 s\< s\! |
  
  \barNumberCheck 33
  s2. * 4 |
  \repeat unfold 3 { s4\sd s s\su } |
  s2 s4\fz |
}

dynamics = {
  \tag layout { s2.-\markup { \dynamic pp \whiteout "sotto voce." } } |
  \tag midi { s2.\pp } |
  s2. * 5 |
  s4 s2_"smorz."
  s2.
  
  \barNumberCheck 9
  \tag layout { s2.-\markup { \dynamic p "con anima." } } |
  \tag midi { s2.\p } |
  s2. |
  s4 s4.\< s8\! |
  s2. |
  s4 s4.\< s8\! |
  s2. * 3 |
  
  \barNumberCheck 17
  s4 s4.\< s8\! |
  s2. |
  s4 s4.\< s8\! |
  s2. |
  s4 s4.\< s8\! |
  s4 s2^"cres." |
  s4\< s2\! |
  s2. |
  
  \barNumberCheck 25
  s2.-\markup { \dynamic p stretto. } |
  s2. * 2 |
  s2\< s8 s\! |
  s2.^"dolce." |
  s4 s\< s8 s\! |
  s4\> s\! s |
  s4\> s2\! |
  
  \barNumberCheck 33
  s2.-\markup { \dynamic p stretto. } |
  s2. * 2 |
  s8 s16 s\< s4 s8 s\!
  s8.\> s16\! s2 |
  s4 s4\< s8 s\!
  s4 s4\> a8 s\! |
  s8.\< s16\! s8.\> s16\! s4 | 
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
  \new PianoStaff \with { instrumentName = \markup \huge "No. 3" } 
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
    \context {
     \Staff
     %\override RestCollision.minimum-distance = #0.4 % needed?
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
