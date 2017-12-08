% -*- mode: LilyPond; coding: utf-8; -*-

\version "2.19.49"
\include "defs.ly"

#(set-global-staff-size 17)

\header {
  title = "Als Luise die Briefe ihres ungetreuen Liebhabers verbrannte"
  subtitle = "Lied for voice and piano, KV 520"
  composer = "Wolfgang Amadeus Mozart (1756-1791)"
  piece = "Andante."
  
  mutopiatitle = "Als Luise die Briefe ihres ungetreuen Liebhabers verbrannte"
  mutopiacomposer = "MozartWA"
  mutopiaopus = "KV 520"
  mutopiainstrument = "Voice and piano"
  date = "26th May 1787"
  source = "Breitkopf & Härtel (serie 7 n. 29)"
  style = "Classical"
  maintainer = "Maurizio Tomasi"
  maintainerEmail = "zio_tom78@hotmail.com"
  maintainerWeb = "http://www.geocities.com/zio_tom78/"
  lastupdated = "2005/Oct/26"
  
  license = "Public Domain"
  footer = "Mutopia-2017/11/16-500"
  copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white "ǀ" \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {"ǀ" "ǀ"}}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " "by " \maintainer " — " \footer}\concat {\concat {\abs-fontsize #8 { "Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "Public Domain" " by the typesetter " " — free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white "ǀ" }}}
  tagline = ##f
}

\paper {
  left-margin = 15\mm
  right-margin = 15\mm
}

\include "melody.ly"
\include "piano.ly"
\include "lyrics.ly"

\book {
  \score {
    <<
      \new Staff \with
      {
        fontSize = #-2
        \override StaffSymbol.staff-space = #(magstep -2)
      }
      <<
        \context Voice = mel {
          \set Staff.midiInstrument = #"clarinet"
          \set Staff.instrumentName = \markup { "Singstimme." }

	  \autoBeamOff
          \melody
        }
        \new Lyrics \lyricsto mel { \text }
      >>
      
      \new PianoStaff <<
        \set PianoStaff.midiInstrument = #"acoustic grand"
        \set PianoStaff.instrumentName = \markup { "Pianoforte." }
        
        \context Staff = upper \upper
        \context Dynamics=dynamics \dynamics
        \context Staff = lower <<
          \clef bass
          \lower
        >>
      >>
    >>
    
    \layout {
      \context { \Staff \RemoveEmptyStaves }
    }  

    \midi
    {
      \context {
        \type "Performer_group"
        \name Dynamics
        \consists "Piano_pedal_performer"
        \consists "Dynamic_performer"
      }
      \context {
        \PianoStaff
        \accepts Dynamics
      }
      \tempo 4 = 60 
    }  
  }
}
