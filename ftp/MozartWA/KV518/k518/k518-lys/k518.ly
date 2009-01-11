% -*- mode: LilyPond; coding: utf-8; -*-

\version "2.6.0"
\include "defs.ly"

#(set-global-staff-size 17)

\header {
  title = "Die Verschweigung (KV 518)"
  subtitle = "für eine Singstimme mit Begleitung des Pianoforte"
  composer = "Wolfgang Amadeus Mozart (1756-1791)"
  poet = "Gedicht von C. F. Weisse"
  piece = "Andante."
  
  mutopiatitle = "Die Verschweigung"
  mutopiacomposer = "MozartWA"
  mutopiaopus = "KV 518"
  mutopiainstrument = "Voice and Piano"
  date = "20th May 1787"
  source = "Breitkopf & Härtel (serie 7 n. 27)"
  style = "Classical"
  copyright = "Public Domain"
  maintainer = "Maurizio Tomasi"
  maintainerEmail = "zio_tom78@hotmail.com"
  maintainerWeb = "http://www.geocities.com/zio_tom78/"
  lastupdated = "2005/Oct/27"
  
  footer = "Mutopia-2005/12/09-641"
  tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
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
        \override StaffSymbol #'staff-space = #(magstep -2)
      }
      <<
        \set Staff.minimumVerticalExtent = #'(-2 . 2)
        \context Voice = mel {
          \set Staff.midiInstrument = #"clarinet"
          \set Staff.instrument = \markup { "Singstimme." }

	  \autoBeamOff
          \melody
        }
        \lyricsto mel \new Lyrics { \stanzaI }
        \lyricsto mel \new Lyrics { \stanzaII }
        \lyricsto mel \new Lyrics { \stanzaIII }
        \lyricsto mel \new Lyrics { \stanzaIV }
      >>
      
      \new PianoStaff <<
        \set PianoStaff.midiInstrument = #"acoustic grand"
        \set PianoStaff.instrument = \markup { "Pianoforte." }
        
        \context Staff = upper \upper
        \context Staff = lower <<
          \clef bass
          \lower
        >>
      >>
    >>
    
    \layout {
    }  

    \midi
    {
      \tempo 8 = 36
    }  
  }
}
