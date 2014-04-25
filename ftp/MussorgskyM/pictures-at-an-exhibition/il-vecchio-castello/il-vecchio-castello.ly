\version "2.18.2"
\language "english"

\header {
  title        = "Il Vecchio Castello"
  composer     = "Modest Moussorgsky (1839 - 1881)"
  style        = "Romantic"
  license      = "Creative Commons Attribution-ShareAlike 4.0"
  enteredby    = "Knute Snortum"
  lastupdated  = "2014/Apr/24"
  date         = "1874"
  source       = "Pavel Lamm (1882-1951)"

  mutopiatitle       = "Pictures at an Exhibition"
  mutopiacomposer    = "MussorgskyM"
  mutopiainstrument  = "Piano"
  maintainer         = "Knute Snortum"
  maintainerEmail    = "knute (at) snortum (dot) net"
  maintainerWeb      = "http://www.musicwithknute.com/"
}

andantino = {
  \once
  \override Score.RehearsalMark.self-alignment-X = #LEFT
  \mark "Andantino molta cantabile e can dolore" 
}

conEspress = \markup { \italic "con espressione" }

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
  
  | <a' a'>4. ( q8 <gs gs'>8 <fs fs'> )
  \oneVoice 
  | <e gs cs e>4. ( <gs cs e gs>
  | <fs gs ds' fs>4. <e gs cs e>
  \voiceOne
  | <ds ds'>4. <cs cs'>4 <b b'>8
  | <a a'>8. <b b'>16 <a a'>8 <cs cs'> <b b'> <a a'>
  | <gs' b>4. gs4 ) \oneVoice r8
  \voiceOne
  | <e e'>4 q8 <fs fs'>8. ( <e e'>16 ) <ds ds'>8-.
  | <e e'>4 q8 <fs fs'>8. ( <e e'>16 ) <ds ds'>8-.
  
  \barNumberCheck #40
  
  | <e a cs e>4. <d fs a d>
  | <a' a'>4. ( <gs gs'>8 <a a'> <fs fs'> )
  | <e a cs e>4. ( <d fs a d>
  | <fs fs'>8 <gs gs'> <ds ds'> <e e'> <ds ds'> <e e'>
  | <ds ds'>4. <cs cs'>4 <b b'>8
  | <a a'>8. <b b'>16 <a a'>8 <cs cs'> <b b'> <a a'>
  | <gs' b>4. gs4 ) \oneVoice r8
  | 
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
  | % start here
}

lowerMiddle = \relative c {
  | ds2. ~
  | ds4 ds8 ds-. ds-. ds-.
  | ds8. ( e16 ) ds8-. fs-. ( e-. ds-. )
  | cs8. ( ds16 ) cs8-. e-. ( ds-. cs-. )
  | b4 ^\< ( cs8 ds ^\> cs ds ) \!
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
  
  | b4 ^\< ( cs8 ds ^\> cs ds ) \!
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
  | <cs e>4. <d fs> ~  
  | q2.
  | <e gs>4. <cs e>
  | <ds fs>4. <e gs>
  | fss2.
  | ds2.
  | ds8. ( e16 ) ds8-. fs-. ( e-. ds-. )
  | cs8. ( ds16 ) cs8-. e-. ( ds-. cs-. )
  | b4 ^\< ( cs8 ds ^\> cs ds ) \!
  | as8. ( b16 ) as8-. cs-. ( b-. as-. )
  | b4. ( gs4. )
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
  
  | \repeat unfold 16 { gs4 gs8 gs4 gs8 }
  
  \barNumberCheck #40
  
  | gs4 gs8 gs4 gs8 ~
  | \repeat unfold 5 { gs4 gs8 gs4 gs8 }
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

\score {
  \new PianoStaff <<
    \new Staff = "up" \upper
    \new Staff = "down" \lower
  >>
  \layout {
  }
  \midi {
    \tempo 4. = 60
  }
}
