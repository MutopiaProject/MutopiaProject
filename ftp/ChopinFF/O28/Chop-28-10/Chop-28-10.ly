%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.19.54"
\language "english"

\header {
  title = "Prélude"
  composer = "Frederic Chopin (1810-1849)"
  opus = "Op 28, No 10"
  date = "1837"
  style = "Romantic"
  source = "CFEO, http://www.chopinonline.ac.uk/cfeo/browse/pageview/71900/"
  
  maintainer = "Knute Snortum"
  maintainerEmail = "knute (at) snortum (dot) net"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  
  mutopiatitle = "Prélude 10"
  mutopiaopus = "Op 28, No 10"
  mutopiacomposer = "ChopinFF"
  mutopiainstrument = "Piano"

 footer = "Mutopia-2017/02/10-2171"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " 2017 " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License "\char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}

sd = \sustainOn 
su = \sustainOff 

staffUp   = \change Staff = "upper"
staffDown = \change Staff = "lower"

shapeSlurA = \shape #'((0 . -3) (0 . 3) (0 . 0) (0 . 0)) Slur
shapeTieA = \shape #'((0 . 0) (0 . -1) (0 . -1.5) (0 . 0)) Tie
shapeSlurB = \shape #'((0 . 2) (0 . 3) (0 . 1) (0 . 0)) Slur
shapeSlurC = \shape #'((0 . -0.5) (0 . 0) (0 . 0) (0 . 0)) Slur
shapeSlurD = \shape #'((0 . 0) (0 . 1) (0 . 12) (0 . 0)) Slur
shapeSlurE = \shape #'((0 . -1) (0 . 0) (0 . 0) (0 . -3)) Slur

global = {
  \key cs \minor
  \time 3/4
  \accidentalStyle piano
}

rightHandUpper = \relative {
  \global
  \clef treble
  \tempo "Allegro molto."
  \omit TupletBracket
  \tupletUp
  \stemNeutral
  \ottava #1
  
  \partial 4 { \tuplet 6/4 { \shapeSlurA gs'''16 ( a gs a gs fss } }
  | \tuplet 3/2 { <gs cs>16 a gs } e ds
    \tuplet 3/2 { <cs gs'>16 ds cs } a gs
    \ottava #0
    \tuplet 3/2 { <fs cs'>16 gs fs } e ds
  | \tuplet 3/2 { <cs gs'>16 ds cs } a gs
    \tuplet 3/2 { <fs cs'>16 gs fs } e ds
    \tuplet 3/2 { <cs gs'>16 ds cs } b a
  | \staffDown \voiceOne \shapeTieA gs2.^> _~ )
  | \shiftOn \tweak NoteColumn.force-hshift -1.3 gs2 \crossStaff { gs4 }
  
  \staffUp \oneVoice \tupletUp \ottava #1
  | \tuplet 3/2 { <gs''' cs>16 ( a gs } e ds
    \tuplet 3/2 { <cs gs'>16 ds cs } a gs
    \ottava #0
    \tuplet 3/2 { <fs cs'>16 gs fs } e ds
  | \tuplet 3/2 { <cs gs'>16 ds cs } a gs
    \tuplet 3/2 { <fs cs'>16 gs fs } e ds
    \tuplet 3/2 { <cs gs'>16 ds cs } b as )
  | r4 ds2^> ^(
  | s2 gs4^> )
  
  \ottava #1
  | \tuplet 3/2 { <fs'' cs'>16 ( gs fs } d cs
    \tuplet 3/2 { <b fs'>16 cs b } a gs
    \ottava #0
    \tuplet 3/2 { <fs cs'>16 gs fs } d cs
  | \tuplet 3/2 { <b fs'>16 cs b } a gs
    \tuplet 3/2 { <fs cs'>16 gs fs } d cs
    \tuplet 3/2 { <b fs'>16 cs b } a gs )
  | r4 cs ^( ds
  | s4 ds e^> )
  
  \ottava #1
  | \tuplet 3/2 { \shapeSlurC <gs'' cs>16 ( a gs } e ds
    \tuplet 3/2 { <cs gs'>16 ds cs } a gs
    \ottava #0
    \tuplet 3/2 { <fs cs'>16 gs fs } e ds
  | \tuplet 3/2 { <cs gs'>16 ds cs } a gs
    \tuplet 3/2 { <fs cs'>16 gs fs } e ds
    \tuplet 3/2 { <cs gs'>16 ds cs } b a 
  | \staffDown \stemUp gs2. )
  | <fs bs ds>8. [ \staffUp e'16 ] s4 \shapeSlurE a ^~ ^(
  | a4 s2
  | \voiceThree \staffDown <ds, bs gs fs>8 ) [ s16 \staffUp e16 ] 
    ( cs4 ) \oneVoice r
  
  \bar "|."
}

rightHandLower = \relative {
  \global
  \clef treble
  
  \partial 4 { s4 }
  | s2.
  | s2.
  | s4 \staffDown \voiceThree \stemUp \shapeSlurB <ds bs'>4 ( <cs as'>
  | <ds bs'>8. <e cs'>16 <fs bs ds>4 
    \staffUp \voiceThree \crossStaff { e' ) } 
  
  | s2.
  | s2.
  \staffDown
  | << 
      { gs,2 s4 } 
      { << { s4 \crossStaff { ds2 } } { s4 b'4 <fss as> } >> } 
    >>
  | <ds gs b>8. <ds as' cs>16 <ds b' ds>4 \crossStaff { gs }
  
  | s2.
  | s2.
  | << { fs2. } { s4 <cs a'>2 } >>
  | <ds gs bs>8. <e gs cs>16 << { bs'2 } { \crossStaff { fs4 gs } } >>
  
  | s2.
  | s2.
  | s4 \shapeSlurD <ds bs'> ( <e cs'>
  | s8. \crossStaff { gs16 } <e cs'>4 ) \crossStaff { a ~ }
  | << { a2. } { s4 <ds, bs'> <e cs'> } >>
  | s8 r16 \crossStaff { <fs bs>16 e4 } s4
}

rightHand = << 
  \new Voice { \rightHandUpper } 
  \new Voice { \rightHandLower } 
>>

leftHandNotes = \relative {
  \global
  \clef bass
  
  \partial 4 { r4 }
  | <cs gs' e'>4 \arpeggio r <fs, cs' a'>8 \arpeggio r
  | <cs' gs' e'>8 \arpeggio r <fs, cs' a'> \arpeggio r 
    <cs gs' e'>8 \arpeggio r
  \stemDown
  << 
    { | r4 gs'2 | gs8 [ r16 gs ] gs2 }
    { | s2 gs,4 | s2 gs4 }
  >>
  
  \stemNeutral
  | <cs' gs' e'>4 \arpeggio r <fs, cs' a'>8 \arpeggio r
  | <cs' gs' e'>8 \arpeggio r <fs, cs' a'> \arpeggio r 
    <cs gs' e'>8 \arpeggio r
  \voiceFour 
  | r4 ds \grace { css16 ds }
    <<
      { ds4 -\tweak Y-offset #-2.5 ^\trill }
      { s8 s16 \grace { css16 ds } s }
    >>
  | gs8 [ r16 gs ] gs4 gs,
  
  \oneVoice
  | <fs' cs' a'>8 \arpeggio r <b fs' d'> \arpeggio r
    <fs cs' a'>8 \arpeggio r
  | <b fs' d'> \arpeggio r <fs cs' a'>8 \arpeggio r r4
  \voiceFour 
  | r4 fs ds
  | << { gs8 [ r16 gs ] gs2 } { s2 gs,4_> } >>
  
  \oneVoice
  | <cs' gs' e'>4 \arpeggio r <fs, cs' a'>8 \arpeggio r
  | <cs' gs' e'>8 \arpeggio r <fs, cs' a'> \arpeggio r 
    <cs gs' e'>8 \arpeggio r
  \voiceFour
  | << { r4 gs'2 } { s2 gs,4 } >>
  | gs'8 [ r16 gs ] ( cs,4 ) r
  | << { r4 gs'2 } { s2 gs,4 } >>
  | gs'8 [ r16 gs ] ( cs,4 ) \oneVoice r
}

pedal = {
  \partial 4 { s4 }
  | s4.. \sd s16 \su s8. \sd s16 \su
  | s8. \sd s16 \su s8. \sd s16 \su s8. \sd s16 \su
  | s2.
  | s2.
  
  | s4.. \sd s16 \su s8. \sd s16 \su
  | s8. \sd s16 \su s8. \sd s16 \su s8. \sd s16 \su
  | s2 s8. \sd s16 -\tweak Y-offset -5.5 \su
  | s2.
  
  | s8. \sd s16 \su s8. \sd s16 \su s8. \sd s16 \su
  | s8. \sd s16 -\tweak X-offset -1 \su s4 \sd s8. s16 \su
  | s2.
  | s2.
  
  | s4.. \sd s16 \su s8. \sd s16 \su
  | s8. \sd s16 \su s8. \sd s16 \su s8. \sd s16 \su
  | s2.
  | s2.
  | s2.
  | s2.
}

leftHand = << 
  \new Voice { \leftHandNotes } 
  \new Voice { \pedal } 
>>

dyn = {
  \partial 4 { s4 -\markup { \italic Leggiero } \> }
  | s8. \> s16 \! s8. \> s16 \! s8. \> s16 \! 
  | s8. \> s16 \! s8. \> s16 \! s8. \> s16 \! 
  | s2.
  | s2.
  
  | s8. \> s16 \! s8. \> s16 \! s8. \> s16 \! 
  | s8. \> s16 \! s8. \> s16 \! s8. \> s16 \! 
  | s2.
  | s2.
  
  | s8. \> s16 \! s8. \> s16 \! s8. \> s16 \! 
  | s8. \> s16 \! s8. \> s16 \! s8. \> s16 \! 
  | s2.
  | s2.
  
  | s8. \> s16 \! s8. \> s16 \! s8. \> s16 \! 
  | s8. \> s16 \! s8. \> s16 \! s8. \> s16 \! 
  | s2.
  | s2.
  | s2.
  | s2.
}

#(set-global-staff-size 18)

\paper {
  ragged-last-bottom = ##t
  
  top-margin = 8\mm
  bottom-margin = 6\mm
  system-system-spacing.basic-distance = #19
  
  % #(set-paper-size "letter") % for testing only
}

\score {
  \new PianoStaff <<
    \set PianoStaff.instrumentName = #"X"
    \new Staff = "upper" \rightHand
    \new Dynamics \dyn
    \new Staff = "lower" \leftHand
  >>
  \layout {
    \context {
      \Score
      \remove "Bar_number_engraver"
    }
    \context {
      \PianoStaff
      \consists #Span_stem_engraver
    }
  }
  \midi {
    \tempo 4 = 140
  }
}
