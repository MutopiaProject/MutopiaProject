\version "2.18.2"
\language "english"

\header {
  %title        = "No. 2 Il Vecchio Castello"
  composer     = "Modest Moussorgsky (1839 - 1881)"
  style        = "Romantic"
  license      = "Creative Commons Attribution-ShareAlike 4.0"
  enteredby    = "Knute Snortum"
  date         = "1874"
  source       = "Pavel Lamm"

  mutopiatitle       = "Pictures at an Exhibition"
  mutopiacomposer    = "MussorgskyM"
  mutopiainstrument  = "Piano"
  maintainer         = "Knute Snortum"
  maintainerEmail    = "knute (at) snortum (dot) net"
  maintainerWeb      = "http://www.musicwithknute.com/"

 footer = "Mutopia-2016/12/31-475"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " 2016 " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License "\char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}

andantino = {
  \once
  \override Score.RehearsalMark.self-alignment-X = #LEFT
  \mark "Andantino molta cantabile e can dolore" 
}

conEspress = \markup { \italic "con espressione" }
espress = \markup { \italic "espressivo" }

forceShiftOn = \override NoteColumn.force-hshift = #1.4
forceShiftOff = \override NoteColumn.force-hshift = #0

highVoice = \relative c' {
  \andantino
  \oneVoice
  | R2. \pp
  | R2. * 5
  | r4 r8 r4 \slurUp ds8 ^ \conEspress (
  
  \barNumberCheck #8
  
  | gs2. ~
  | gs8 b as \appoggiatura { gs16 as } gs8 e gs
  | gs4 ds8 fs4. ~
  | fs8 e ds \acciaccatura { ds8 } e ds cs
  | ds8 gs,4 ~ gs4. ~
  | gs8 as b \appoggiatura { cs16 ds } cs8 b as 
  | b4. gs4. ~ 
  | gs4. ) r8 r gs' (
  
  \barNumberCheck #16
  
  | ds'2. ~
  | ds2.
  | gs8 ) r r r4 \voiceOne ds,8 (
  | gs2. ~
  | gs8 b as \appoggiatura { gs16 as } gs8 e gs
  | gs4 ds8 e4. ~
  | e8 fs gs a b cs )
  | fs,4. ( ~ fs8 gs a
  
  \barNumberCheck #24
  
  | gs4 ds8 gs4 fs8 )
  | e4. ( ds8 cs b
  | as8. b16 as8 cs b as
  | b4. gs4. ~
  | gs4 ) \oneVoice r8 r4 r8
  \voiceOne 
  | <e' e'>4 q8 <fs fs'>8. ( <e e'>16 ) <ds ds'>8-.
  | <e e'>4 q8 <fs fs'>8. ( <e e'>16 ) <ds ds'>8-.
  | <e a cs e>4. <d fs a d>
  
  \barNumberCheck #32
  
  | <a'_~ a'^~>4. ( q8 <gs gs'>8 <fs fs'> )
  \oneVoice 
  | <e gs cs e>4. ( <gs cs e gs>
  | <fs gs ds' fs>4. <e gs cs e>
  \voiceOne
  | <ds ds'>4. <cs cs'>4 <b b'>8
  | <as as'>8. <b b'>16 <as as'>8 <cs cs'> <b b'> <as as'>
  | <gs' b>4. gs4 ) \oneVoice r8
  \voiceOne
  | <e e'>4 q8 <fs fs'>8. ( <e e'>16 ) <ds ds'>8-.
  | <e e'>4 q8 <fs fs'>8. ( <e e'>16 ) <ds ds'>8-.
  
  \barNumberCheck #40
  
  | <e a cs e>4. <d fs a d>
  | <a' a'>4. ( <gs gs'>8 <a a'> <fs fs'> )
  \oneVoice
  | <e gs cs e>4. ( <gs cs e gs>
  \voiceOne
  | <fs fs'>8 <gs gs'> <ds ds'> <e e'> <ds ds'> <e e'>
  | <ds ds'>4. <cs cs'>4 <b b'>8
  | <as as'>8. <b b'>16 <as as'>8 <cs cs'> <b b'> <as as'>
  | <gs' b>4. gs4 ) \oneVoice r8
  | r4 r8 gs4. (
  
  \barNumberCheck #48
  
  | ds'2. ~
  | ds2.
  | gs4 ) r8 r4 ds,8 (
  | gs2. ~
  | gs8 b as \appoggiatura { gs16 as } gs8 e gs
  | gs4 ds'8 gs,4. ~
  | gs4. ) r4 r8
  \voiceOne
  | gss4. ( ~ gss8 gs gss
  
  \barNumberCheck #56
  
  | as4 es'8 as,4 ) \oneVoice r8
  \voiceOne
  | bs4. ( ~ bs8 b bs
  | cs4 gs'8 cs,4 ) \oneVoice r8
  | <ds, as' css>2. ~
  | q
  \voiceOne
  | <ds ds'>4. ( <css css'>8 <cs cs'> <css css'> )
  | <ds ds'>4. ( <css css'>8 <cs cs'> <css css'> 
  | <ds ds'>4. <css css'> )
  
  \barNumberCheck #64
  
  \oneVoice
  | <cs gs' cs>4. ( <gs' e' gs>
  | <fs ds' fs>4. <e cs' e>
  \voiceOne
  | <ds ds'>4. <cs cs'>4 <b b'>8
  | <as as'>8. <b b'>16 <as as'>8 <cs cs'> <b b'> <as as'>
  | <gs' b>4. gs4 ) \oneVoice r8
  | r4 r8 r4 ds8 (
  | gs2. ~
  | gs8 b as \appoggiatura { gs16 as } gs8 e gs
  
  \barNumberCheck #72
  
  | gs8. e'16 gs,8 gs4. ~
  | gs4 ) r8 r4 r8
  \voiceOne
  | gss4. ( ~ gss8 gs gss
  | as8. es'16 as,8 as4 ) \oneVoice r8
  \voiceOne
  | bs4. ( ~ bs8 b bs
  | cs8. gs'16 cs,8 cs4 ) \oneVoice r8
  | <ds, as' css>2. ~
  | q
  
  \barNumberCheck #80
  
  \voiceOne
  | <ds ds'>4. ( <css css'>8 <cs cs'> <css css'> )
  | <ds ds'>4. ( <css css'>8 <cs cs'> <css css'> 
  | <ds ds'>4. <css css'> )
  \oneVoice
  | <cs gs' cs>4. ( <gs' e' gs>
  | <fs ds' fs>4. \voiceOne <e e'>8 <gs gs'> <e e'> )
  | <ds ds'>4. ( <cs cs'>8 <ds ds'> <b b'>
  | <as as'>8. <b b'>16 <as as'>8 <cs cs'> <b b'> <as as'> )
  \oneVoice
  | R2. %{ \pp %} _ \markup { \left-align \dynamic "pp       " } % kludge to get "pp" mark in the right place
  
  \barNumberCheck #88
  
  \voiceOne
  | <e' e'>4 q8 <fs fs'>8. ( <e e'>16 ) <ds ds'>8-.
  | <e e'>4 q8 <fs fs'>8. ( <e e'>16 ) <ds ds'>8-.
  \oneVoice
  | R2.
  | \tag #'layout { <cs e gs cs>4. \< ( } 
    \tag #'midi   { <cs e gs cs>4. ( }
    <gs' cs e gs>
  
  | \tag #'layout { <fs gs ds' fs>4. \> <e gs cs e>4 ) \! } 
    \tag #'midi   { <fs gs ds' fs>4.    <e gs cs e>4 ) }
    r8
  
  | R2.
  | <as, as'>8. ( <b b'>16 <as as'>8 <cs cs'> <b b'> <as as'>-. )
  | r4 r8 r4 ds8 (
  
  \barNumberCheck #96
  
  | gs2. ^ \espress ~
  | gs8 b as \appoggiatura { gs16 as } gs8 e gs
  | gs4 ds8 fs4. ~
  | fs8 e ds \acciaccatura { ds8 } e ds cs
  | ds8 gs,4 ~ gs4 ) r8
  | R2.
  \clef bass
  | <gs as cs e>4 r8 <fss as cs ds>4 r8
  | R2.
  
  \barNumberCheck #104
  
  | <fs a d>4 r8 <e gs cs>4 r8
  | <fss as>8 r8 r r4 \clef treble <ds'? ds'>8 \<
  | <gs gs'>2. \>
  | R2. \! \fermataMarkup
}

upperMiddle = \relative c' {
  | s2. * 8
  | s2. * 8
  | s2. * 4
  | s4. b4. ~
  | b4. <cs e>
  | <cs a>2.
  
  \barNumberCheck #24
  
  | <ds gs,>2.
  | gs,2.
  | gs4. fss 
  | gs4. gs ~
  | gs4 s8 s4 s8
  \forceShiftOn 
  | <cs' a>4. q
  | q4. q
  | s2.
  
  \barNumberCheck #32
  
  | <d fs>2.
  | s2. * 2
  | <fss, as>2.
  | <ds fss>2.
  \forceShiftOff
  | <b ds>4. ~ q4 s8
  \forceShiftOn
  | <cs' a>4. q
  | q4. q
  
  \barNumberCheck #40
  
  | s2.
  | <d fs>2.
  | s2. 
  | <gs, ds'>4. <gs cs>
  | <fss as>2.
  | <ds fss>2.
  \forceShiftOff
  | <b ds>4. ~ q4 s8
  | s2.
  
  \barNumberCheck #48
  
  | s2. * 7
  \forceShiftOn
  | <ds fs>2.
  
  \barNumberCheck #56
  
  \forceShiftOff
  | <css es>4. ~ q4 s8
  | <ds fs>4. ~ q4 r8
  | <es gs>4. ~ q4 s8
  | s2.
  | s2.
  \forceShiftOn
  | gs4. gs
  | gs4. gs
  | gs2.
  
  \barNumberCheck #64
  
  | s2.
  | s2.
  | <fss as>2.
  | <ds fss>2.
  \forceShiftOff
  | <b ds>4. ~ q4 s8
  | s2. * 3
  
  \barNumberCheck #72
  
  | s2.
  | s2.
  \forceShiftOn
  | <ds fs>4. ~ q4 r8
  \forceShiftOff
  | <css es>4. ~ q4 s8
  | <ds fs>4. ~ q4 r8
  | <es gs>4. ~ q4 s8
  | s2. 
  | s2.
  
  \barNumberCheck #80
  
  \forceShiftOn
  | gs4. gs
  | gs4. gs
  | gs2.
  | s2.
  | s4. cs4.
  | <fss, as>2.
  | <ds fss>2.
  | s2.
  
  \barNumberCheck #88
  
  | <a' cs>4. q
  | <a cs>4. q
  | s2. * 4
  | <ds, fss>4. q
  | s2. * 13
}

lowerMiddle = \relative c {
  | ds2. ~
  | ds4 ds8 ds-. ds-. ds-.
  | ds8. ( e16 ) ds8-. fs-. ( e-. ds-. )
  | cs8. ( ds16 ) cs8-. e-. ( ds-. cs-. )
  
  | \tag #'layout { b4 ^\< ( cs8 ds ^\> cs b ) \! }
    \tag #'midi   { b4     ( cs8 ds cs b ) }
  
  | as8. ( b16 ) as8-. cs-. ( b-. as-. )
  | b4. ( gs4. )
  
  \barNumberCheck #8
  
  | ds'2. ~
  | ds4. e
  | ds2. ~
  | ds4. e
  | ds2.
  | e2.
  | ds8. ( e16 ) ds8-. fs-. ( e-. ds-. )
  | cs8. ( ds16 ) cs8-. e-. ( ds-. cs-. )
  
  \barNumberCheck #16
  
  | \tag #'layout { b4 ^\< ( cs8 ds ^\> cs b ) \! }
    \tag #'midi   { b4     ( cs8 ds cs b ) }
  
  | as8. ( b16 ) as8-. cs-. ( b-. as-. )
  | b4. ( gs4. )
  | ds'2. ~
  | ds4. e4.
  | ds4. gs4. ~
  | gs4. e4.
  | ds2.
  
  \barNumberCheck #24
  
  | bs2.
  | cs4. ds
  | e4. ds ~
  | ds2. ~
  | ds4. ~ ds4 r8
  | <cs e>4. <ds fs>
  | <cs e>4. <ds fs>
  | <cs e>4. <d fs> ~
  
  \barNumberCheck #32
  
  | q2.
  | <e gs>4. <cs e>
  | <ds fs>4. <e gs>
  | ds2.
  | fss2.
  | gs4. ~ gs4 r8
  | <cs, e>4. <ds fs>
  | <cs e>4. <ds fs>
  
  \barNumberCheck #40
  
  | <cs e>4. <d fs> ~  
  | q2.
  | <e gs>4. <cs e>
  | <ds fs>4. <e gs>
  | fss2.
  | ds2.
  | ds8. ( e16 ) ds8-. fs-. ( e-. ds-. )
  | cs8. ( ds16 ) cs8-. e-. ( ds-. cs-. )
  
  \barNumberCheck #48
  
  | \tag #'layout { b4 ^\< ( cs8 ds ^\> cs b ) \! }
    \tag #'midi   { b4     ( cs8 ds cs b ) }
  
  | as8. ( b16 ) as8-. cs-. ( b-. as-. )
  | b4. ( gs4. )
  | ds'2. ~
  | ds4. e
  | ds4. gs ~
  | gs4. r4 r8
  | bs2.
  
  \barNumberCheck #56
  
  | as2.
  | a2.
  | gs2.
  | fs2. ~
  | fs2.
  | es4. ( e )
  | es4. ( e )
  | es2.
  
  \barNumberCheck #64
  
  | e4. cs
  | ds4. gs
  | ds4. fss
  | ds4. fss
  | ds4. gs ~
  | gs4. ~ gs4 r8
  | ds2. ~
  | ds4. e
  
  \barNumberCheck #72
  
  | b'2. ~
  | b4 r8 r4 r8
  | bs2.
  | as2.
  | a2.
  | gs2.
  | fs2. ~
  | fs2.
  
  \barNumberCheck #80
  
  | es4. ( e )
  | es4. ( e )
  | es2.
  | e4. cs
  | ds4. gs
  | ds4. fss
  | ds4. fss
  | R2.
  
  \barNumberCheck #88
  
  | <cs e>4. <ds fs>
  | <cs e>4. <ds fs>
  | R2.
  | <e gs>4. <cs e>
  | <ds fs>4. <e gs>4 r8
  | R2.
  | ds4. fss
  | R2.
  
  \barNumberCheck #96
  
  | ds2. ~
  | ds4. e
  | b'4. as4 a8
  | gs8 fss4 bs,4 cs8
  | gs4. r4 r8
  | R2.
  | cs4 r8 ds4 r8
  | R2.
  
  \barNumberCheck #104
  
  | bs4 r8 cs4 r8
  | gs2.
  \forceShiftOn
  | <gs ds' b'>4 r8 r4 r8
  | R2. \fermataMarkup
}

lowVoice = \relative c {
  | gs2. ~
  | gs4. gs
  | gs4. gs 
  | gs4. gs
  | gs4. ~ gs4 r8
  | gs4. ~ gs4 r8
  | gs4 gs8 gs4 gs8 
  
  \barNumberCheck #8
  
  | \repeat unfold 6 { gs4 gs8 gs4 gs8 } 
  | gs4. gs4.
  | gs2. 
  
  \barNumberCheck #16
  
  | gs2.
  | gs2.
  | \repeat unfold 6 { gs4 gs8 gs4 gs8 }
  
  \barNumberCheck #24
  
  | \repeat unfold 7 { gs4 gs8 gs4 gs8 }
  | gs4 gs8 gs4 gs8 ~
  
  \barNumberCheck #32
  
  | \repeat unfold 8 { gs4 gs8 gs4 gs8 }
  
  \barNumberCheck #40
  
  | gs4 gs8 gs4 gs8 ~
  | \repeat unfold 5 { gs4 gs8 gs4 gs8 }
  | gs2. ~
  | gs2.
  
  \barNumberCheck #48
  
  | gs2.
  | gs2.
  | \repeat unfold 6 { gs4 gs8 gs4 gs8 }
  
  \barNumberCheck #56
  
  | \repeat unfold 40 { gs4 gs8 gs4 gs8 }
  
  \barNumberCheck #96
  
  | gs4 gs8 gs4 gs8
  | gs4 gs8 gs4 gs8
  | gs4 gs8 gs4. ~
  | gs2.
  | \repeat unfold 4 { gs4 gs8 gs4 gs8 }
  
  \barNumberCheck #104
  
  | gs4 gs8 gs4 gs8
  | gs2.
  | gs4 gs8 ~ gs4 gs8 ~
  | gs4 r8 r4 r8 \fermata
  \bar "|."
}

global = {
  \key gs \minor
  \time 6/8
  \accidentalStyle piano
}

upper = {
  \clef treble
  \global
  <<
    \new Voice { \voiceOne \highVoice }
    \new Voice { \voiceTwo \upperMiddle }
  >>
}

lower = {
  \clef bass
  \global
  <<
    \new Voice { \voiceThree \lowerMiddle }
    \new Voice { \voiceFour \lowVoice }
  >>
}

\bookpart {
  \header {
    subtitle = "No. 2 Il Vecchio Castello"
  }
  \score {
    \keepWithTag #'layout
    \new PianoStaff <<
      \new Staff = "up" \upper
      \new Staff = "down" \lower
    >>
    \layout {
      \context {
        \Score
        \remove "Bar_number_engraver"
      }
    }
  }
}

% MIDI only
\score {
  \keepWithTag #'midi
  \new PianoStaff <<
    \new Staff = "up" \upper
    \new Staff = "down" \lower
  >>
  \midi {
    \tempo 4. = 60
  }
}
