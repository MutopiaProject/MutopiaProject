%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.19.81"
\language "english"
\include "articulate.ly"

\header {
  title = "Prélude"
  composer = "Frederic Chopin (1810-1849)"
  opus = "Op 28, No 23"
  date = "1837"
  style = "Romantic"
  source = "CFEO, http://www.chopinonline.ac.uk/cfeo/browse/pageview/73671/"
  
  maintainer = "Knute Snortum"
  maintainerEmail = "knute (at) snortum (dot) net"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  
  mutopiatitle = "Prélude 23"
  mutopiaopus = "Op 28, No 23"
  mutopiacomposer = "ChopinFF"
  mutopiainstrument = "Piano"

  footer = "Mutopia-2018/05/15-2220"
  copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white "ǀ" \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {"ǀ" "ǀ"}}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " ©" 2018 ""by " \maintainer " — " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License" " — free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white "ǀ" }}}
  tagline = ##f
}

% #(ly:expect-warning "part of warning message")

sd = \sustainOn 
su = \sustainOff

trillUnderSlur = {
  \once \override Script.avoid-slur = #'inside
  \once \override Script.outside-staff-priority = ##f
}

global = {
  \key f \major
  \time 4/4
  \accidentalStyle piano
}

rightHand = \relative c'' {
  \global
  \clef treble
  \set Score.tempoHideNote = ##t
  \tempo "Moderato." 4 = 100
  
  c16^( a f d c f f' d c a f d c f f' d |
  c16 a f d c f f' d c a f d c e bf' g) |
  a16( f c a c f <e bf'> g a f c a c f <e bf'> g |
  a16 f c a c f bf gs a bf d b c e f a) |
  
  g16( e c a g c c' a g e c a g c c' a |
  g16 e c a g c c' a g e c a g b f' d) |
  e16 c g e g c <b f'> d e c g e g c <b f'> d |
  e16 c g e g c e g c e d g, d g d e |
  
  c'16( a f d c f f' d c a f d c f f' d |
  c16 a f d c f f' d c a f d c e bf' g |
  a16 f c a c f <e bf'> g a f c a c f <e bf'> g |
  a16 f c a c f a c \ottava 1 f a g c, g c g a |
  
  f'16 d bf g f bf bf' g f d bf g f bf bf' g |
  f16 d b g f g b' g f d b g f g b' g |
  f16 d c a g c c' a f d c a g c c' a |
  f16 d c a g c c' a g e c a g c c' g |
  
  c16 a f d c f f' d c a f d c f f' d |
  c16 a f d c f f' d c a f d c e bf' g |
  a16 f c a \ottava 0 f c <e bf'> g a16 f c a f c <e bf'> g
  a16 f c a c f <e bf'> g a f c a c f <e bf'> g |
  
  a16 f c a c f a c f a c f \ottava 1 a c, f a, |
  f''4) \fermata \ottava 0 r r2 |
  \bar "|."
}

leftHand = \relative f, {
  \global
  \clef bass
  \override TupletBracket.bracket-visibility = ##f
  
  <f c' a'>2 \arpeggio r |
  \new Voice = "1" {c4 \grace { b'16 c } c4^( _\trill }
    <<
      {
        a'4 g) |
      } \\ {
        \voiceThree \slurDown \appoggiatura { b,16 c } \voiceFour c2 |
      }
    >>
  f,8( c'16 f a8 <c, g'> f,8 c'16 f a8 <c, g'>) |
  f,8( c'16 f a f d' b c8 bf'16 gs a8) r |
  
  <c,, g' e'>2 \arpeggio r |
  \new Voice = "1" { g4-. \grace { fs'16 g } \trillUnderSlur g4^( ^\trill }
    <<
      {
        e'4 d) |
      } \\ {
        \voiceThree \slurDown \appoggiatura { fs,16 g } \voiceFour g2 |
      }
    >>
  c,8( g'16 c e8 <g, d'> c, g'16 c e8 <g, d'> |
  \tuplet 3/2 { c,8 g' c } \clef treble \tupletDown \tuplet 3/2 { e bf') r } r2
  
  \clef bass <f, c' a'>2 \arpeggio r |
  \new Voice = "1" {c4-. \clef treble \grace { b'16 c } c4^( _\trill }
    <<
      {
        a'4 g) |
      } \\ {
        \voiceThree \slurDown \appoggiatura { b,16 c } \voiceFour c2 |
      }
    >> 
  f,8( c'16 f a8 <c, g'> f,8 c'16 f a8 <c, g'> |
  \tupletUp \tuplet 3/2 { f,8 c' f } \clef treble 
    \tuplet 3/2 { a8 ef') r } r2 |
  
  \scaleDurations 2/3 { bf,8( <f' g> d') } r4 r2 |
  \scaleDurations 2/3 { g,,8( f' d') } r4 r2 |
  \scaleDurations 2/3 { c,8( \tweak duration-log #1 g' c } f2.) |
  <<
    { 
      \tag layout {
        <c, \tweak duration-log #1 g' \tweak duration-log #1 bf f'>4( \arpeggio 
          s a''8) \tweak Y-offset 0 r \tweak Y-offset 0 r4 | 
      }
      \tag midi { 
        <<
          { <c,, f'>4 s a''8 r r4 }
          { <g bf>1 }
        >>
      }
    }
    \\
    { s4 e2. | }
  >>
  
  \clef bass <f,, c' a'>2 \arpeggio \tweak Y-offset 0 r |
  \new Voice = "1" {c4 \clef treble \grace { b'16 c } c4^( _\trill }
    <<
      {
        a'4 g) |
      } \\ {
        \voiceThree \slurDown \appoggiatura { b,16 c } \voiceFour c2 |
      }
    >>
  \clef bass f,8( c'16 f a8 <c, g'>) f,,8 c'16 f a8 <c, g'> |
  f,8 c'16 f a8 <c, g'> f,8 c'16 f a8 <c, g'> |
  
  f,8. c'16 f a c f \clef treble a ef'-> a, f \clef bass c a f c |
  f,4 \fermata r r2 |
  \bar "|."
}

pedal = {
  s2.\sd s8. s16\su |
  \tag layout { s2\sd s8. s16\su s4 } 
  \tag midi { s1 } |
  s4.\sd s8\su s4.\sd s8\su |
  s4\sd s16 s\su s8 s2 |
  
  s2.\sd s8. s16\su |
  \tag layout { s2\sd s8. s16\su s4 } 
  \tag midi { s1 } |
  s4.\sd s8\su s4.\sd s8\su |
  s2.\sd s8. s16\su |
  
  s2.\sd s8. s16\su |
  \tag layout { s2\sd s8. s16\su s4 }
  \tag midi { s1 } |
  s4.\sd s8\su s4.\sd s8\su |
  s2.\sd s8. s16\su |
  
  s2.\sd s8. s16\su |
  s2.\sd s8. s16\su |
  s2.\sd s8. s16\su |
  s8.\sd s16\su s2\sd s8. s16\su
  
  s2.\sd s8. s16\su |
  \tag layout { s2.\sd s4 \su }
  \tag midi { s1 } |
  s4.\sd s8\su s4.\sd s8\su |
  s4.\sd s8\su s4.\sd s8\su |
  
  s1\sd |
  s4 s4\su s2 |
}

dynamics = {
  \tag layout { s1-\markup { \dynamic p \italic delicatis. } }
  \tag midi { s1\p } |
  s1 * 3 |
  s1 * 4 |
  s1 * 3 |
  s2 \tag layout { s-\markup { \italic "poco riten." } }
     \tag midi { \tempo 4 = 94 s4 \tempo 4 = 88 s } |
  \tag layout { s1-\markup { \italic "in tempo" } }
  \tag midi { \tempo 4 = 100 s1  } |
  s1 * 3 |
  s1 * 2 |
  s2 s\dim |
  s2. <>\! 
    \tag layout { \override TextSpanner.bound-details.left.text = "smorz." 
      s4 \startTextSpan }
    \tag midi { \tempo 4 = 94 s4\pp } |
  \tag layout { s1 }
  \tag midi { \tempo 4 = 88 s2\ppp \tempo 4 = 82 s\pppp } |
  \tag layout { s4 \stopTextSpan s2. }
  \tag midi { \tempo 4 = 60 s4\ppppp s2. } |
}

#(set-global-staff-size 20) % default 20

\paper {
  ragged-last-bottom = ##f % set to false after editing 

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
    
  %#(set-paper-size "letter") % for testing only
  
  % Variables not affected by scaling of paper size 
  top-margin = 12\mm % default 5
  bottom-margin = 12\mm % default 6
}

% Typeset only
\score {
  \keepWithTag layout
  \new PianoStaff <<
    \set PianoStaff.instrumentName = #"XXIII"
    \new Staff = "upper" \rightHand
    \new Dynamics = "dynamics" \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics = "pedal" \pedal 
  >>
  \layout {
    \context {
      \Score
      \omit BarNumber
    }
  }
}

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
  }
}
