%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.18.2"
\language "english"

\header {
  title = "Prélude"
  composer = "Frederic Chopin (1810-1849)"
  opus = "Op 28, No 5"
  date = "1837"
  style = "Romantic"
  source = "CFEO, http://www.chopinonline.ac.uk/cfeo/browse/pageview/71893/"
  
  maintainer = "Knute Snortum"
  maintainerEmail = "knute (at) snortum (dot) net"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  
  mutopiatitle = "Prélude 5"
  mutopiaopus = "Op 28, No 5"
  mutopiacomposer = "ChopinFF"
  mutopiainstrument = "Piano"

 footer = "Mutopia-2017/01/10-2160"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " 2017 " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License "\char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}

global = \relative {
  \time 3/8
  \key d \major
  \accidentalStyle piano
}

rightHandUpper = \relative {
  \global
  \clef treble
  \tempo "Allegro molto"
  
  | b'16 ( a cs, b' e a,
  | cs,16 bf' e a, cs, b'
  | e16 a, cs, bf' e a,
  | cs,16 b' e a, cs, fs
  | d16 a as b <cs fs> e
  | d16 d' fs, a <gs cs> b
  | e,16 a es fs <gs cs> b
  | a16 e' e, a <ds, c'> b'
  | b,16 e c e <ds g> fs
  | e16 e' g, b <as d> cs
  | b16 fs g b <as d> cs
  | b16 b' gs d cs b
  | as16 fs' b, gs' es, as'
  | as,16 fs' b, gs' es, as'
  | as,16 fs' b, gs' es, as'
  | as,16 fs' b, gs' es, a'
  
  \barNumberCheck 17
  | fs16 fs, cs b' e a,
  | cs,16 bf' e a, cs, b'
  | e16 a, cs, bf' e a,
  | cs,16 b' e a, cs, fs
  | d16 a as c <cs g'> fs
  | d16 d' fs, a <gs c> b
  | e,16 a f a <gs c> b
  | a16 e' e, fs <ds c'> b'
  | b,16 e c e <ds g> fs
  | e16 e' g, b <as d> cs
  | b16 fs g b <as d> cs
  | b16 b' gs d cs b
  | a16 d g, e' cs, fs'
  | fs,16 d' g, e' cs, fs'
  | fs,16 d' g, e' cs, fs'
  | fs,16 d' g, e' cs, fs'
  | fs,16 d' d, bf' d a
  | d,16 g d' fs, d bf'
  | d16 a d, g d' fs,
  | d bf' d a d, d' 
  | fs'8 ) \override Rest.Y-offset = #0 r r
  | <g,, e' a>8 \arpeggio r r
  | <fs d' fs>8 r r \fermata
  
  \bar "|."
}

rightHandLower = \relative {
  s8. b'8 [ a ] bf [ a ] b [ a ] bf [ a ] b [ a ] s16 % Four bars
  s4. * 12
  s8. b8 [ a ] bf [ a ] b [ a ] bf [ a ] b [ a ] s16
  s4. * 12
  s8. bf8 [ a ] g [ fs ] bf [ a ] g [ fs ] bf [ a ] s16
  s4. * 3
}

rightHand = << { 
  \stemNeutral \rightHandUpper 
} \\ { 
  \stemDown \rightHandLower 
} >>

leftHand = \relative {
  \global
  \clef bass
  \stemDown
  
  | r8 \sustainOn g16 a, g' e' \sustainOff
  | g,16 \sustainOn a, g' e' g, \sustainOff a, \sustainOn
  | g'16 e' g, \sustainOff a, \sustainOn g' e'
  | g,16 \sustainOff a, \sustainOn g' e' g, \sustainOff a 
  | d,,16 \sustainOn fs' g \sustainOff g, a g'
  | fs16 \sustainOn b, d' fs, \sustainOff e d'
  | cs16 a d d, e d'
  | cs16 c \sustainOn fs, a, b \sustainOff a'
  | g16 \sustainOn e, a \sustainOff a' b, a'
  | g16 \sustainOn e e' g, \sustainOff fs e'
  | d16 \sustainOn b, e \sustainOff e' fs, e'
  | d16 \sustainOn es, b' gs' cs, \sustainOff d
  | cs16 \sustainOn fs, d' b, cs' \sustainOff cs,
  | fs,16 \sustainOn cs'' d \sustainOff b, cs' \sustainOn cs, \sustainOff
  | fs,16 \sustainOn cs'' d \sustainOff b, cs' \sustainOn cs, \sustainOff
  | fs,16 \sustainOn cs'' d \sustainOff b, cs' \sustainOn cs, \sustainOff
  
  \barNumberCheck 17
  | fs,16 \sustainOn a' g \sustainOff a, \sustainOn g' e' 
  | g,16 \sustainOff a, g' \sustainOn e' g, a, \sustainOff
  | g'16 \sustainOn e' g, \sustainOff a, \sustainOn g' e'
  | g,16 \sustainOff a, g' \sustainOn e' g, a \sustainOff
  | d,,16 \sustainOn fs' g \sustainOff g, a a'
  | fs16 \sustainOn b, d' f,\sustainOff e d'
  | c16 \sustainOn a d d, \sustainOff e d'
  | cs16 c \sustainOn fs, a, b a' \sustainOff
  | g16 \sustainOn e, a \sustainOff a' b, a'
  | g16 \sustainOn e e' g, \sustainOff fs e'
  | d16 \sustainOn b, e \sustainOff e' fs, e'
  | d16 \sustainOn es, b' gs' cs, \sustainOff d
  | fs,16 \sustainOn d' \sustainOff bf \sustainOn g, \sustainOff 
    a' \sustainOn a, \sustainOff
  | d,16 \sustainOn a'' \sustainOff bf \sustainOn g, \sustainOff 
    a' \sustainOn a, \sustainOff
  | d,16 \sustainOn a'' \sustainOff bf \sustainOn g, \sustainOff 
    a' \sustainOn a, \sustainOff  
  | d,16 \sustainOn a'' \sustainOff bf \sustainOn g, \sustainOff 
    a' \sustainOn a, \sustainOff
  | d,16 \sustainOn a' a' a, d, a'
  | a'16 a, d, a' a' a,
  | d,16 a' a' a, d, a'
  | a'16 a, d, a' a' a,
  | \stemNeutral d,8 \sustainOff r r
  | <a' e' cs'>8 \arpeggio r r
  | \acciaccatura { d,8 } <d' a' d>8 r r \fermata
}

dyn = {
  | s8 \p \< s s 
  | s4.
  | s8 s \> s
  | s4 s16 s \!
  | s4.
  | s4. \cresc
  | s4. * 4
  | s4. \!
  | s4. * 3
  | s16 \dim s \! s4
  | s4.
  
  \barNumberCheck 17
  | s16 \< s s4
  | s4.
  | s8 s \> s
  | s4.
  | s4. \p
  | s4. \cresc
  | s4. * 3
  | s4 s16 s \!
  | s4. * 4
  | s16 \dim s \! s4
  | s4.
  | s4. \<
  | s4. * 3
  | s8 \! s4
  | s4. \f
  | s4.
}

\score {
  \new PianoStaff <<
    \set PianoStaff.instrumentName = #"V"
    \new Staff \rightHand
    \new Dynamics \dyn
    \new Staff \leftHand
  >>
  \layout {
    \context {
      \Score
      \remove "Bar_number_engraver"
    }
  }
  \midi {
    \tempo 8 = 208
  }
}
