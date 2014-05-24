\version "2.18.2"
\language "english"

\header {
  title        = "[Promenade III]"
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

moderato = {
  \once
  \override Score.RehearsalMark.self-alignment-X = #LEFT
  \mark "Moderato non tanto, pesamente." 
}

ritard = \markup { \italic "ritard." }
dimin = \markup { \italic "dim." }
attacca = \markup { \italic "          attacca" }

upper = {
  \time 5/4
  \clef treble
  \moderato 
  
  | <gs gs'>4 \f <fs fs'> <b b'> <cs' cs''>8 <fs' fs''> <ds' ds''>4
  \bar "||"
  \time 6/4
  | <cs' cs''>8 <fs' fs''> <ds' ds''>4 <b b'> <cs' cs''> <gs gs'> <fs fs'>
  \bar "||"
  \time 5/4
  | r2 <fs' b' ds'' fs''>4 <cs' fs' as' cs''> <fs' b' ds'' fs''>
  \bar "||"
  \time 6/4
  | <as' cs'' fs'' as''>4 <b' ds'' fs'' b''> <ds'' fs'' b'' ds'''>
    <cs'' es'' gs'' cs'''> <es'' gs'' cs''' es'''> <fs'' as'' cs''' fs'''>
  \bar "||"
  \time 5/4
  | <fs' fs''>4 <gs' gs''> <cs' cs''> <fs' fs''>8 <gs' gs''> <cs' cs''>4
  \bar "||"
  \time 6/4
  | <gs' gs''>8 <as' as''> <fs' fs''>4 <fs'' fs'''> <ds'' ds'''>
    <cs'' cs'''>8 <b' b''> <fs' fs''>4
  \bar "||"
  \time 5/4
  | fs'4 gs' cs' ^ \ritard _ \dimin fs'8 gs' cs'4
  \bar "||"
  \time 4/4
  | r2 fs'8 \p [ gs' ] cs' r
  \bar "|."
}

lower = {
  \time 5/4
  \clef bass
  
  | r2 <ds, ds,,>4 <as, as,,> <b, b,,>
  \time 6/4
  | <as, as,,>4 <b, b,,> <ds, ds,,> <e, e,,> <es, es,,> <fs, fs,,>
  \time 5/4
  | <gs, gs,,>4 <fs, fs,,> <b, b,,> <cs cs,>8 <fs fs,> <ds ds,>4
  \time 6/4
  | <cs cs,>8 <fs fs,> <ds ds,>4 <b, b,,> <cs cs,> <gs, gs,,> <fs, fs,,>
  \time 5/4
  | r2 <es es,> <e e,>4 ~
  \time 6/4
  | q4 <ds ds,>2 ~ q4 <es es,> <fs fs,> 
  \time 5/4
  | fs4 gs cs fs8 gs cs4
  \time 4/4
  | R1 _ \attacca 
}

global = {
  \key b \major
  \accidentalStyle piano
}

\score {
  \new PianoStaff 
  <<
    \new Staff = "up" {
      \global
      \upper
    }
    \new Staff = "down" {
      \global
      \lower
    }
  >>
  \layout {
  }
  \midi {
    \tempo 4 = 88
  }
}
