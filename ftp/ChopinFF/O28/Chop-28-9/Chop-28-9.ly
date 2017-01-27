%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.18.2"
\language "english"

\header {
  title = "Prélude"
  composer = "Frederic Chopin (1810-1849)"
  opus = "Op 28, No 9"
  date = "1837"
  style = "Romantic"
  source = "CFEO, http://www.chopinonline.ac.uk/cfeo/browse/pageview/71899/"
  
  maintainer = "Knute Snortum"
  maintainerEmail = "knute (at) snortum (dot) net"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  
  mutopiatitle = "Prélude 9"
  mutopiaopus = "Op 28, No 9"
  mutopiacomposer = "ChopinFF"
  mutopiainstrument = "Piano"

 footer = "Mutopia-2017/01/27-2168"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " 2017 " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License "\char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}

% Notes on the MIDI output:
%
% The alternate MIDI output is my interpretation of how the piece should be 
% played.  I have listened to two performances of this prelude and my MIDI
% output has been informed by them.  

su = \sustainOn 
sd = \sustainOff 

invisibleNote = {
  \once \hide NoteHead
  \once \hide Stem
  \override NoteHead.no-ledgers = ##t 
}

global = {
  \key e \major
  \time 4/4
  \accidentalStyle piano
}

rightHandUpper = \relative {
  \global
  \clef bass
  \tempo "Largo."
  
  | b4 ( b8. b16 b4 cs
  | cs4 ds8. ds16 ds4 ) ds (
  | e4 e8. e16 e4 ds8. ds16
  | ds4 ds8. cs16 cs4 cs8. b16
  
  | b4 b8. b16 b4 b8. b16
  | c4 d e e8. e16
  | e4 e8. e16 f4 g
  \omit TupletBracket
  \omit TupletNumber
  | \tuplet 3/2 { af8 \invisibleNote af \revert NoteName.no-ledgers ef } 
    ef8. df16 c8. cf16 b8. b16
  
  | b4 b8.. b32 b4 c
  | c4 c8.. c32 c4 d8. d16
  | d4 d8.. d32 d4 ds8.. e32 
  | e4 e8.. e32 \stemDown <e, gs b e>2 ) \fermata
}

rightHandUpperMidi = \relative {
  \global
  \clef bass
  
  | b4 \tuplet 3/2 { b4 ~ b16 b } b4 cs
  | cs4 \tuplet 3/2 { ds4 ~ ds16 ds } ds4 ds
  | e4 \tuplet 3/2 { e4 ~ e16 e } e4 \tuplet 3/2 { ds4 ~ ds16 ds }
  | ds4 \tuplet 3/2 { ds4 ~ ds16 cs } cs4 \tuplet 3/2 { cs4 ~ cs16 b }
  
  | b4 \tuplet 3/2 { b4 ~ b16 b } b4 \tuplet 3/2 { b4 ~ b16 b }
  | c4 d e \tuplet 3/2 { e4 ~ e16 e }
  | e4 \tuplet 3/2 { e4 ~ e16 e } f4 g
  | \tuplet 3/2 { af4 ef8 } \tuplet 3/2 { ef4 ~ ef16 df } 
    \tuplet 3/2 { c4 ~ c16 cf } \tuplet 3/2 { b4 ~ b16 b }
  
  | b4 \tuplet 3/2 { b4 ~ b16. b32 } b4 c
  | c4 \tuplet 3/2 { c4 ~ c16. c32 } c4 \tuplet 3/2 { d4 ~ d16 d } 
  | d4 \tuplet 3/2 { d4 ~ d16. d32 } d4 \tuplet 3/2 { ds4 ~ ds16. e32 }
  | e4 \tuplet 3/2 { e4 ~ e16. e32 } <e, gs b e>2 
}

rightHandLower = \relative {
  \global
  \clef bass
  
  \omit TupletBracket
  \tuplet 3/2 { <e gs>8 b <e gs> }
  \omit TupletNumber
  \tuplet 3/2 {
      <ds fs>8 b <ds fs> <e gs> b <e gs> <e a> cs <e a>
    <fs a>8 cs <fs a> <fs a> cs <fs a> <fs b> ds <fs b> <gs b> ds <gs b>
    <gs b>8 e <gs b> <fs cs'> e <fs cs'> <fs b> e <fs b> <fs b> ds <fs b>
    <gs b>8 e <gs b> <fs as> e <fs bf> <fs a> cs <fs a> <fs a> b, <fs' a>
    
    <e gs>8 b <e gs> <ds fs> b <ds fs> <d g> b <d g> <d g> b <d g>
    g8 c, g' <g bf> d <g bf> <g bf> e <g bf> <g c> e <g c>
    <a cs>8 e <a cs> <bf cs> e, <bf' cs> <bf df> f <bf df> <bf df> g <bf df> 
    <af c>8 ef <af c> <g c> ef <g bf> af ef af <ds, gs> b <ds a'>
    
    <e gs>8 b <e gs> <ds fs> b <ds fs> <e gs> b <e gs> <e a> c <e a>
    <f a>8 c <f a> <e g> c <e g> <f a> c <f a> <f bf> d <f bf>
    <g bf>8 d <g bf> <fs a> d <fs a> <g b> d <g b> <fs b> ds <fs b>
    <gs b>8 e <gs b> <gs b> e <gs b> 
  }
}

rightHand = << { 
  \rightHandUpper 
} \\ { 
  \rightHandLower 
} >>

rightHandMidi = << { 
  \rightHandUpperMidi
} \\ { 
  \rightHandLower 
} >>

leftHandNotes = \relative {
  \global
  \clef bass
  
  | e,4 b e a8.. ( gs32
  | fs2 b,4 ) b'8.. \slurDown b32 (
  | cs,4 ) a'8.. \slurDown a32 ( b,4 ) \grace { as16 b } 
    <<
      { b4 \trill }
      { s8.. \grace { as16 b } s32 }
    >>
  | cs4 fs8.. fs32 ds4 \grace { css16 ds } 
    <<
      { ds4 \trill }
      { s8.. \grace { cs16-. ds-. e-. fs-. } s32 }
    >>
    
  | \slurUp e4 ( b g g'8.. f32
  | e4 d c <c c'>8.. <bf bf'>32
  | <a a'>4 <g g'>8.. <g g'>32 <f f'>4 <ff ff'>
  | <ef ef'>2 af4 b
  
  | <e, e'>4 b' e <a, a'>8.. <a a'>32
  | <f f'>4 <c c'> <f f'> <bf bf'>8.. <bf bf'>32
  | <g g'>4 <d d'> <g g'> <b b'>8.. <b b'>32
  <<
      { | <e, e'>2 \arpeggio <e e'> ) \fermata }
      { | s4 b'4 ~ b2 }
  >>
}

leftHandNotesMidi = \relative {
  \global
  \clef bass
  
  | e,4 b e \tuplet 3/2 { a4 ~ a16. gs32 } % a8.. gs32
  | fs2 b,4 \tuplet 3/2 { b'4 ~ b16. b32 } % b'8.. b32
  | cs,4 \tuplet 3/2 { a'4 ~ a16. a32 } \tuplet 3/2 { b,4 ~ b16 as32 b }
    \tuplet 3/2 { \repeat unfold 10 { cs64 b } as32 b }
  | cs4 fs8.. fs32 \tuplet 3/2 { ds4 ~ ds16 css32 ds }
    \tuplet 3/2 { \repeat unfold 8 { e64 ds } cs32 ds e fs } 
    
  | e4 b g \tuplet 3/2 { g'4 ~ g16. f32 }
  | e4 d c \tuplet 3/2 { <c c'>4 ~ q16. <bf bf'>32 }
  | <a a'>4 \tuplet 3/2 { <g g'>4 ~ q16. <g g'>32 } <f f'>4 <ff ff'>
  | <ef ef'>2 af4 b
  
  | <e, e'>4 b' e \tuplet 3/2 { <a, a'>4 ~ q16. <a a'>32 }
  | <f f'>4 <c c'> <f f'> \tuplet 3/2 { <bf bf'>4 ~ q16. <bf bf'>32 }
  | <g g'>4 <d d'> <g g'> \tuplet 3/2 { <b b'>4 ~ q16. <b b'>64 e, ~ }
  <<
      { | e'2 <e, e'> }
      { | s4 b'4 ~ b2 }
  >>
}

pedal = {
  | s8. \su s16 \sd s8. \su s16 \sd s4 \su s4 \sd 
  | s4 \su s8. s16 \sd s4 \su s8.. s32 \sd
  | s4 \su s4 \sd s8.. \su s32 \sd s8.. \su s32 \sd
  | s8. \su s16 \sd s8. \su s16 \sd s4 \su s4 \sd
  
  | s8. \su s16 \sd s8. \su s16 \sd s4 \su s8.. s32 \sd
  | s8. \su s16 \sd s8. \su s16 \sd s4 \su s8.. s32 \sd
  | s8. \su s16 \sd s8. \su s16 \sd s8. \su s16 \sd s8. \su s16 \sd 
  | s4 \su s8. s16 \sd s8. \su s16 \sd s8. \su s16 \sd 
  
  | s8. \su s16 \sd s8. \su s16 \sd s8. \su s16 \sd s8.. \su s32 \sd
  | s8. \su s16 \sd s8. \su s16 \sd s8. \su s16 \sd s8.. \su s32 \sd
  | s8. \su s16 \sd s8. \su s16 \sd s8. \su s16 \sd s8.. \su s32 \sd
  | s2. \su s4 \sd
}

leftHand = << {
  \leftHandNotes
} \\ {
  \pedal
} >>

leftHandMidi = << {
  \leftHandNotesMidi
} \\ {
  \pedal
} >>             

dyn = {
  | s1 \f 
  | s1
  | s2 s4 \< s8.. s32 \!
  | s2 s4 \< s8.. s32 \!
  
  | s2. s4 \cresc
  | s1
  | s1
  | s4 \ff \> s4 s8. s16 \! s4 -\markup{ \italic "decresc." } 
  
  | s4 \p \< s4 s4 s8. s16 \!
  | s1
  | s4 -\markup{ \italic "cresc." } s4 \! s4 -\markup{ \italic "riten." } s4
  | s1 \ff
}

#(set-global-staff-size 16)

\paper {
  ragged-last-bottom = ##f
  
  top-margin = 8\mm
  bottom-margin = 6\mm
  system-system-spacing.basic-distance = #19
  
  % #(set-paper-size "letter") % for testing only
}

\score {
  \new PianoStaff <<
    \set PianoStaff.instrumentName = #"IX"
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
}

% MIDI only
\score {
  <<
    \new Staff \rightHandMidi
    \new Dynamics \dyn
    \new Staff \leftHandMidi
  >>
  \midi {
    \tempo 4 = 30
  }
}
