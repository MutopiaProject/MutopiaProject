%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.19.55"
\language "english"

\header {
  title = "Prélude"
  composer = "Frederic Chopin (1810-1849)"
  opus = "Op 28, No 13"
  date = "1837"
  style = "Romantic"
  source = "CFEO, http://www.chopinonline.ac.uk/cfeo/browse/pageview/73651/"
  
  maintainer = "Knute Snortum"
  maintainerEmail = "knute (at) snortum (dot) net"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  
  mutopiatitle = "Prélude 13"
  mutopiaopus = "Op 28, No 13"
  mutopiacomposer = "ChopinFF"
  mutopiainstrument = "Piano"

 footer = "Mutopia-2017/03/29-2174"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " 2017 " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License "\char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}

sd = \sustainOn 
su = \sustainOff 

staffUp   = \change Staff = "upper"
staffDown = \change Staff = "lower"

createArpeggio = #(define-music-function (grow) (number?)
  ;% easy chord arpeggio; extendable in one staff without connectArpeggios
  #{ % apply in one voice, supplying growth parameter: + = up, - = down
    \once \override Arpeggio #'positions  = #(lambda (grob)
      (let ((iv (ly:arpeggio::calc-positions grob))
        (grow-hi (max 0 (/ grow 2)))
        (grow-lo (min 0 (/ grow 2))))
        (cons (+ (car iv) grow-lo) (+ (cdr iv) grow-hi))))
    $(make-music 'EventChord 'elements (list (make-music 'ArpeggioEvent)))
  #})

global = {
  \key fs \major
  \time 6/4
  \accidentalStyle piano
}

rightHandUpper = \relative {
  \global
  \clef treble
  \set Score.tempoHideNote = ##t
  \tempo "Lento." 4 = 96 
  
  \oneVoice
  | <cs' fs as>2. ^( q
  \voiceOne
  | <fs as>2. << { b2 gs4 ) } \new Voice { \voiceTwo es2. } >>
  | <cs fs as>2. ( <fs as>2 q4
  | \tuplet 5/3 { <fs as>4 <gs b> <fs as> <es gs> <fs as> }
    << { <as cs>4 <gs b> ) } \new Voice { \voiceTwo es2 } >> 
    \oneVoice \tweak Y-offset 0 r8 <cs gs'>
  | <cs fs as>2. ( <cs as' cs>
  | <fs as fs'>2. <gs cs es> )
  | \createArpeggio #-7 \grace es'4 <gs, fs ds'>2. \oneVoice <es gs cs>2 r4
  | R1 * 6/4
  
  \barNumberCheck 9
  \oneVoice
  | \acciaccatura { as,4 } <cs fs as>2. ^( q
  \voiceOne
  | <fs as>2. << { b2 ~ b8. gs16  } \new Voice { \voiceTwo es2. } >> 
  | <cs fs as>2. q4 ~ \tuplet 3/2 { q8 [ q q ] } \tuplet 3/2 { q [ q q ] }
  | <fs as>4 <gs b>8 <fs as> <es gs> <fs as>
    << { <as cs>4 <gs b> ) } \new Voice { \voiceTwo es2 } >> 
    \oneVoice \tweak Y-offset 0 r8 <cs~ gs'> ^(
  | <cs e as>2. as'2 ^~ as8. b16
  | <e, as cs>2. \voiceOne ds'2 ~ ds8. cs16 )
  \oneVoice
  | <e, as cs>2. ^( <ds gs b> )
  
  \barNumberCheck 16
  | <cs fss as>2. ^( \voiceOne b'2 ~ b8. ds,16
  | <b gs'>2. <cs as'>
  | <as fs'>2 ) \oneVoice r4 <ds b'>2. ^(
  | \voiceOne <b gs'>2. << { as'2. } \new Voice { \voiceTwo cs,2 b4 } >>
  | <as_~ fs'^~>2. ) q4 \oneVoice r r 
  
  \barNumberCheck 21 
  \tempo "Più Lento." 4 = 80
  \voiceOne
  | fs''2. ( as,2 bs4
  | bs2 ~ bs16 cs es ds cs2. )
  | e2. ( gs,2 as4
  | as2 ~ as16 b ds cs b2 as4
  | as4 gs ) ~ gs16 ( as cs b as4 gs ) ~ gs16 ( as cs b
  | as4 gs2. ~ gs8 as cs as
  | fs4 ) fs ( <ds fs> 
    << 
      { gs2 gs4 }
      \new Voice { 
        \voiceTwo \override NoteColumn.horizontal-shift = -1 
        <ds fs>4 <cs es> ds 
      }
    >>
  | <b ds gs>4 <as cs as'> <b ds gs> <as cs as'>2. )
  
  \barNumberCheck 29
  \tempo "Tempo I." 4 = 96
  | <e' as>2. ( as2 ~ as8. b16
  | <e, as cs>2. ds'2 ~ ds8. cs16
  | \stemDown < e, cs' fs>2. \stemUp ds'2. ~
  | ds2. b2 ~ b8. ds,16
  | \arpeggioParenthesis \createArpeggio #-5 es'1.
  | \createArpeggio #-8 fs2. \createArpeggio #-5 gs2.
  | 
    <<
      { es2. ~ es2 ~ es8. fs16 }
      \new Voice { \voiceTwo \tweak NoteColumn.X-offset -0.75 gs,2. as }
    >>
  | <fs fs'>1. )
  \tempo 4 = 80
  | s8 \voiceThree \staffDown \hideNotes as,8 ( \unHideNotes s2  
    \voiceOne \staffUp as'2 gss16 as cs b 
  | as1. )
  |
  
  \bar "|."
}

rightHandLower = \relative {
  \global
  \clef treble
  
  \voiceTwo
  | s1.
  | cs'1.
  | s2. cs
  | cs1.
  | s1. * 4
  
  \barNumberCheck 9
  | s1.
  | cs1.
  | s1.
  | cs1.
  | s2. e
  | s2. <e as>
  | s1.
  
  \barNumberCheck 16
  | s2. <b gs'>
  | \tweak X-offset -0.75 es1.
  | s1.
  | \tweak X-offset -0.75 es1.
  | s1.
  
  % Piu lento
  
  \barNumberCheck 21
  | r8 fs fs fs fs fs  fs fs fs fs fs fs
  | es8 es es es es es  es es es es es es
  | r8 e e e e e  e e e e e e
  | r8 ds ds ds ds ds  ds ds ds ds ds cs
  | b8 b b b cs cs  ds ds ds ds cs cs 
  | b8 b ds ds es ds  es ds es ds cs cs 
  | as8 as ds ds bs bs  b b b b b b
  | s1.
  
  % Tempo I
  
  \barNumberCheck 29
  | s2. e2.
  | s2. <e as fs'>2.
  | s2. <ds b'>2.
  | <cs fss b>2. <b gs'>
  | <b es gs>2. ( q2 <cs as'>4
  | <as fs'>2. ) <ds gs b>
  | <b es>1. (
  | as1. )
  \voiceThree
  | \staffDown r8 as as as ds as  as cs b as as as
  | as1.
  |
}

rightHand = << 
  \new Voice { \rightHandUpper } 
  \new Voice { \rightHandLower } 
>>

leftHandNotes = \relative {
  \global
  \clef bass
  \oneVoice
  
  | fs,8 ( es' gs fs as cs,  fs, es' gs fs as cs,
  | fs,8 es' gs fs as cs,  cs, fss' as gs b cs, )
  | fs,8 ( es' gs fs as cs,  fs, es' gs fs as cs,
  | fs,8 es' gs fs as cs,  cs, fss' as gs b cs, )
  | fs,8 ( es' gs fs as cs,  fs,8 es' gs fs as cs,
  | ds,8 gss' bs as ds fs,  gs, fss' as gs cs es,
  | gs,8 fss' as gs bs ds,  cs fss as gs cs es,
  | gs8 fs b ds, fs es  as cs, as' b, as' gs )
  
  \barNumberCheck 9
  | fs,8 ( es' gs fs as cs,  fs, es' gs fs as cs,
  | fs,8 es' gs fs as cs,  cs, fss' as gs b cs, 
  | fs,8 es' gs fs as cs,  fs, es' gs fs as cs, 
  | fs,8 es' gs fs as cs,  cs, fss' as gs b cs, )
  | fs,8 es' gs fs as cs,  fs, es' gs fs as cs,
  | fs,8 ( es' gs fs as cs,  fs, es' gs fs as cs, )
  | b ( fs' gs fss as cs,  b fss' as gs b ds, ) 
  
  \barNumberCheck 16
  | ds,8 ( css' e ds fss as,  gs css e ds gs gs, )
  | cs,8 bs' ds cs es gs,  cs, bs' ds cs es gs,
  | fs8 bs ds cs fs fs,  b, es' gs fs b b,
  | cs,8 bs' ds cs es gs,  cs, bs' ds cs es gs,
  | fs8 bs ds cs fs cs, (  fs ) bs ds cs fs es, _(
  
  % Piu lento
  
  \barNumberCheck 21
  | ds8 ) <ds' as'> q q <ds ds'> <ds as'> 
    q <ds cs'> <ds bs'> <ds as'> <gs, as'> <gs gs'>
  | cs,8 <gs' gs'> <cs gs'> <ds gs> <cs gs'> <gs gs'>
    <cs gs'> <ds gs> <cs gs'> <fs gs> <es gs> <gs, gs'>
  | cs,8 <cs' gs'> q q <cs cs'> <cs gs'> 
    q <cs b'> <cs as'> <cs gs'> <fs, gs'> <fs fs'>
  | b,8 <fs' fs'> <b fs'> <cs fs> <b fs'> <fs fs'>
    <b fs'> <cs fs> <b fs'> <fs fs'> <b fs'> <cs fs>
  | <ds fs>8 q q q <cs fs> q  <b fs'> q q q <cs fs> q
  | <ds fs>8 q <b fs'> q <b gs'> <b fs'> 
    <b gs'> <b fs'> <b gs'> <b fs'> <as fs'> <cs fs>
  | <ds fs>8 q <ds as'> q <gs, ds' gs> q  <cs gs'> q q q q q
  | <cs gs'> <fs, cs'> q q q <fs es'>  <fs fs'> es ( gs fs as cs,

  % Tempo I

  \barNumberCheck 29
  | fs,8 ) es'' gs fs as cs,  fs, es' gs fs as cs,
  | fs, es' gs fs as cs,  fs, es' gs fs as cs,
  | b8 es gs fs as cs,  b es gs fs b b,
  | ds,8 css' e ds fss as,  gs css e ds gs gs,
  | cs,8 bs' ds cs es gs,  cs, bs' ds cs es gs,
  | fs8 bs ds cs fs fs,  b, css' es ds b' gs,
  | cs,8 bs' ds cs es gs,  cs, bs' ds cs gs' cs,,
  | fs,8 bs' ds cs fs cs,  fs bs ds cs fs cs,
  \voiceFour 
  | fs,8 <fs' ds'> q q q q  q q q <fs cs'> q q 
  | <fs cs'>1.
  |
}

pedal = {
  | s1.
  | s2. s2 \sd s8 s \su
  | s1.
  | s2. s2 \sd s8 s \su
  | s2. \sd s2 s8 s \su
  | s2 \sd s8 s \su s2 \sd s8 s \su
  | s1.
  | s1.
  
  \barNumberCheck 9
  | s1.
  | s2. s2 \sd s8 s \su
  | s1.
  | s2. s2 \sd s8 s \su
  | s1. * 3
  
  \barNumberCheck 16
  | s1. * 5
  
  % Piu lento
  
  \barNumberCheck 21
  | s2 \sd s8 s \su s2.
  | s4. \sd s8 \su s4 s2.
  | s2. \sd s4 s8 \su s s4
  | s4. \sd s8 \su s4 s2.
  | s1.
  | s1.
  | s2. s4 s8 s \sd s4
  | s8 \su s \sd s \su s \sd s4 s8 \su s s2
 
  % Tempo I
  
  \barNumberCheck 29
  | s2. \sd s4 s8 \su s s4
  | s4. \sd s8 \su s4 s2 \sd s8 s \su
  | s2. \sd s8 \su s s2
  | s2 \sd s8 s \su s2.
  | s2. \sd s2 s8 s \su
  | s2 \sd s8 s \su s2 \sd s8 s \su
  | s2. \sd s4 s8 s \su s4
  | s1.
  | s2. \sd s4 s8 \su s \sd s s \su
  | s1. \sd
  |
}

leftHand = << 
  \new Voice { \leftHandNotes } 
  \new Voice { \pedal } 
>>

dyn = {
  | s1. -\markup { \dynamic "p" "legato" }
  | s1. * 3
  | s2. \< s2 s8 s \!
  | s1. 
  | s2. \> s2 s8 s \!
  | s1.
  
  \barNumberCheck 9
  | s1. 
  | s1.
  | s2. s2. \<
  | s2 s8 s \! s2.
  | s2. s2. \<
  | s2. s2 \> s8 s16 s \!
  | s1.
  
  \barNumberCheck 16
  | s1. * 5
  
  % Piu lento
  
  \barNumberCheck 21
  | s2. -"sostenuso" s2.
  | s1. * 4
  | s2 s8 \> s4. s8 \< s s s \! 
  | s1.
  | s1.
  
  % Tempo I
  
  \barNumberCheck 29
  | s1. * 8
  | s8 s \< s2 s2 \> s8 s \!
  | s1.
  |
}

#(set-global-staff-size 18)

\paper {
  ragged-last-bottom = ##f % False after editing is finished
  
  top-margin = 8\mm
  bottom-margin = 6\mm
  system-system-spacing.basic-distance = #19
  
  % #(set-paper-size "letter") % for testing only
}

\score {
  \new PianoStaff <<
    \set PianoStaff.instrumentName = #"XIII"
    \new Staff = "upper" \rightHand
    \new Dynamics \dyn
    \new Staff = "lower" \leftHand
  >>
  \layout {
    \context {
      \Score
      \remove "Bar_number_engraver"
    }
  }
  \midi {
  }
}
