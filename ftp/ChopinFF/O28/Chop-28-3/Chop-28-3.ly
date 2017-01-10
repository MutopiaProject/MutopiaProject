%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.18.2"
\language "english"

\header {
  title = "Prélude"
  composer = "Frederic Chopin (1810-1849)"
  opus = "Op 28, No 3"
  date = "1837"
  style = "Romantic"
  source = "CFEO, http://www.chopinonline.ac.uk/cfeo/browse/pageview/71890/"
  
  maintainer = "Knute Snortum"
  maintainerEmail = "knute (at) snortum (dot) net"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  
  mutopiatitle = "Prélude 3"
  mutopiaopus = "Op 28, No 3"
  mutopiacomposer = "ChopinFF"
  mutopiainstrument = "Piano"

 footer = "Mutopia-2017/01/10-2159"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " 2017 " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License "\char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}

shapeSlurOne = \shape #'((0 . 0) (0 . -5) (4 . -5) (0 . 2)) Slur
shapeSlurTwo = \shape #'((0 . 0) (0 . 0.5) (0 . 0.5) (0 . 0)) Slur
shapeSlurThree = \shape #'((0 . -1) (0 . 0) (0 . 0) (0 . 0)) Slur

global = {
  \key g \major
  \time 2/2
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1 1 1)
  \accidentalStyle piano
}

upper = \relative {
  \global
  \tempo "Vivace."
  
  | R1
  | R1
  | d'4.-> r8 <g b>4. r16 <c e> (
  | <b d>2. ) r8 r16 <e c'> (
  | <d b'>1
  | <b g'>2 ) r
  << { 
    | fs'2... ( e16 
    | a2 \arpeggio ) 
  } \\ { 
    | <g, a cs>1 
    | <fs d'>4 \arpeggio \tweak Y-offset #0 r 
  } >>
    r2
  << { 
    | fs'2... ( e16 
    | a2 \arpeggio ) 
  } \\ { 
    | <g, a cs>1 
    | <fs c'>4 \arpeggio \tweak Y-offset #0 r 
  } >>
    r2
  | r4 r8 r16 <a' c> ( <c, e>4. ) r16 <c d> (
  
  \barNumberCheck 12
  | d,4. ) r8 <g b>4. r16 <c e> (
  | <b d>2. ) r8 r16 <e c'> (
  | <d b'>1
  | <b g'>2 ) r
  |
  << {
    | f'2 ( f4.. f16 
    | f4.. \grace { f16 g } f16 e4.. ds16
    | <e, g c e>1 ~ \arpeggio
    | q1 )
  } \\ {
    | b'1
    | b1
    | s1
    | s1
  } >>
  << {
    | c2 ( c4.. c16
    | c2... b16
    | b1
    | a2... b16
    | <d, g>1 \arpeggio )
  } \\ {
    | <e g>1
    | q1
    | q1 ~
    | q1
    | a,4 \arpeggio \tweak Y-offset #-2 r \tweak Y-offset #-2 r2
  } >>
  << { 
    | fs'2... ( g16
    | g1 )
  } \\ { 
    | <c, d>1
    | <b d>1
  } >>
  | R1
  
  \barNumberCheck 28
  | b16 ( d g a b a g e' d c b a g a b d,
  | b16 d g a b a g e' d c b a g a b d,
  | b16 d g a g a b d, b d g a g a b d,
  | b16 d g a g a b d g a b d \ottava #1 g a b d
  | b4 ) \ottava #0 r \set PianoStaff.connectArpeggios = ##f
    <b,,, d g b>2 \arpeggio
  | q1 \arpeggio
  
  \bar "|."
}

lower = \relative {
  \global
  \clef bass
  
  | \repeat unfold 6 { \shapeSlurTwo g,16 ( d' g a b a g e' d c b a g a b d, ) }
  | a16 ( e' a b cs b a fs' e d cs b a b cs e, )
  | \shapeSlurThree d,16 ( a' d e fs e d b' a g fs e d e fs b, )
  | a16 ( e' a b cs b a fs' e d cs b a b cs e, )
  | d,16 ( a' d e fs e d b' a g fs e d e fs a, )
  | d,16 ( a' d e fs e d b' a g fs e d e fs a, )
  
  \barNumberCheck 12
  | \repeat unfold 5 { \shapeSlurTwo g16 ( d' g a b a g e' d c b a g a b d, ) }
  | \shapeSlurOne g,16 ( d' g a b a g e' d c b a g a b g, )
  | \repeat unfold 4 { c,16 ( g' c d e d c a' g f e d c d e g, ) }
  | c,16 ( g' c d e d c a' g fs e d c d e g, )
  | c,16 ( g' c d e d c a' g fs e d c d e g, )
  | d16 ( a' c d e d c b' a g e d c d e a, )
  | d,16 ( a' d e fs e d b' a g fs e d e fs a, )
  | \repeat unfold 2 { \shapeSlurTwo g16 ( d' g a b a g e' d c b a g a b d, ) }
  
  \barNumberCheck 28
  | \repeat unfold 2 { g,16 d' g a b a g e' d c b a g a b d, }
  | g,16 d' g a g a b d, g, d' g a g a b d,
  | g,16 d' g a g a b d \clef treble g a b d g a b d 
  | b4 r \clef bass <g,,, d' g>2 \arpeggio
  | q1 \arpeggio
}

dyn = {
  | s4-\markup { \dynamic p leggieramente } s2.
  | s1 * 3
  | s4 \> s s s16 s s s \!
  | s1 * 6
  
  \barNumberCheck 12
  | s1
  | s1
  | s4 \> s s s16 s s s \!
  | s1 * 13
  
  \barNumberCheck 28
  | s4-\markup { \dynamic p leggiero } s2.
  | s1
  | s1
  | s4-\dim s2.
  | s4-\!
}

\paper {
  ragged-last-bottom = ##f
}

\score {
  \new PianoStaff <<
    \set PianoStaff.connectArpeggios = ##t
    \set PianoStaff.instrumentName = #"III"
    \new Staff = "upper" \upper
    \new Dynamics \dyn
    \new Staff = "lower" \lower
  >>
  \layout {
    \context {
      \Score
      \remove "Bar_number_engraver"
    }
  }
  \midi {
    \tempo 4 = 120
  }
}
