\version "2.18.2"
\language "english"

\header {
  title        = "Tuileries (Dispute d'enfants après jeux.)"
  composer     = "Modest Moussorgsky (1839 - 1881)"
  style        = "Romantic"
  license      = "Creative Commons Attribution-ShareAlike 4.0"
  enteredby    = "Knute Snortum"
  lastupdated  = "2014/Apr/28"
  date         = "1874"
  source       = "Pavel Lamm (1882-1951)"

  mutopiatitle       = "Pictures at an Exhibition"
  mutopiacomposer    = "MussorgskyM"
  mutopiainstrument  = "Piano"
  maintainer         = "Knute Snortum"
  maintainerEmail    = "knute (at) snortum (dot) net"
  maintainerWeb      = "http://www.musicwithknute.com/"
}

allegretto = {
  \once
  \override Score.RehearsalMark.self-alignment-X = #LEFT
  \mark "Allegretto non troppo, capriccioso" 
}

conEspress = \markup { \italic "con espressione" }
espress = \markup { \italic "espressivo" }

forceShiftOn = \override NoteColumn.force-hshift = #1.4
forceShiftOff = \override NoteColumn.force-hshift = #0

oneVoiceRest = { \oneVoice r8 \voiceOne }
fourVoiceRest = { \oneVoice r8 \voiceFour }

highVoice = \relative c' {
  | <fs b fs'>4 \p ( <es b' ds>8 ) \oneVoiceRest <fs b fs'>4 ( <es b' ds>8 ) \oneVoiceRest
  | fs'8 ( gs16 fs) es-. ds-. css-. ds-. es-. ds-. fs-. es-. gs-. fs-. es-. ds-.
  | <fs, b fs'>4 \p ( <es b' ds>8 ) \oneVoiceRest <fs b fs'>4 ( <es b' ds>8 ) \oneVoiceRest
  | fs'8 ( gs16 fs) es-. ds-. css-. ds-. es-. ds-. fs-. es-. gs-. fs-. es-. ds-.
  \oneVoice
  | <gs, b gs'>4 ( <fs b ds>8 ) r <gs b gs'>4 ( <fs b ds>8 ) r
  \voiceOne
  | gs'8 ( b16 as ) gs-. fs-. es-. ds-. css-. ds-. es-. ds-. gs-. fs-. es-. ds-.
  \oneVoice
  | <gs, b gs'>4 ( <fs b ds>8 ) r <gs b gs'>4 ( <fs b ds>8 ) r
  
  \barNumberCheck #8
  | <g cs a'>4 <fs cs' ds>8 r \voiceOne a'8 ( cs16 b ) a-. gs-. fs-. e-.
  \oneVoice
  | e'16-. ds-. cs-. b-. a-. gs-. fs-. e-. es8 ( fs gs cs, )
  | <fs, b fs'>4 ( <es b' ds>8 ) \oneVoiceRest <fs b fs'>4 ( <es b' ds>8 ) \oneVoiceRest
  | fs'8 ( gs16 fs) es-. ds-. css-. ds-. es-. ds-. fs-. es-. gs-. fs-. es-. ds-.
}

upperMiddle = \relative c' {
  | s1
  | <fs b>4 ( <es b'>8 ) r <fs b>4 ( <es b'>8 ) r
  | s1
  | <fs b>4 ( <es b'>8 ) r <fs b>4 ( <es b'>8 ) r
  | s1
  | <gs b>4 ~ q8 r <gs b>4 ~ q8 r
  | s1 * 3
  
  \barNumberCheck #8
  | s1
  | <fs b>4 ( <es b'>8 ) r <fs b>4 ( <es b'>8 ) r
}

lowerMiddle = \relative c' {
  | s1 * 7
  
  \barNumberCheck #8
  | e4 ( ds8 ) s e4 ( ds8 ) s
  | s1 * 3
}

lowVoice = \relative c' {
  | \repeat unfold 4 { 
    <b ds>4 ( <gs ds'>8 ) \fourVoiceRest <b ds>4 ( <gs ds'>8 ) \fourVoiceRest
  }
  \oneVoice
  | \repeat unfold 3 {
    <cs, es'>4 ( <gs' ds'>8 ) r <cs, es'>4 ( <gs' ds'>8 ) r
  }
  
  \barNumberCheck #8
  | <cs,_~ a'_~>4 q8 r <cs_~ a'_~>4 q8 r
  | r2 gs'16 ( gss as b bs cs e es )
  | <b ds>4 ( <gs ds'>8 ) \fourVoiceRest <b ds>4 ( <gs ds'>8 ) \fourVoiceRest
  | <b ds>4 ( <gs ds'>8 ) \fourVoiceRest <b ds>4 ( <gs ds'>8 ) \fourVoiceRest
  \clef treble
}

global = {
  \key b \major
  \time 4/4
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
    \tempo 4 = 120
  }
}
