\version "2.8.2"

\header {
   mutopiatitle = "Herr Christ der ein'ge Gottes Sohn"
   mutopiacomposer = "BachJS"
   mutopiaopus = "BWV 601"
   mutopiainstrument = "Organ"
   source = "Autograph"
   style = "Baroque"
   copyright = "Public Domain"
   maintainer = "Urs Metzger"
   maintainerEmail = "urs@ursmetzger.de"
   lastupdated = "2006/May/21"

   title = \markup {
      \center-align {
         \fontsize #0 "Herr Christ der ein'ge Gottes Sohn"
         \fontsize #-2 "oder"
         \fontsize #0 "Herr Gott nun sey gepreiset"
      }
   }
   composer = "Johann Sebastian Bach"
   opus="BWV 601"
 footer = "Mutopia-2006/05/23-770"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\include "deutsch.ly"

global = {
   \key a \major
   \time 4/4
   #(set-accidental-style 'default)
}

#(set-default-paper-size "a4" 'landscape)
#(set-global-staff-size 18)

halsup = { \stemUp \tieUp }
halsdown = { \stemDown \tieDown }

sopran = {
   \new Voice \relative a' {
      \global
      \halsup
      \partial 4 a4
      \repeat volta 2 {
         a8. h16 cis4 h a
         gis4 gis fis\fermata cis'
         d8. cis16 h4 cis h
      }
      \alternative {
         {
            a2. a4
         }
         {
            \set Score.currentBarNumber = #4
            a2. a8. h16
         }
      }
      %% Takt  5 ==================================================
      \repeat volta 2 {
         cis4 cis d d
         e2 h4\fermata e
         cis4 cis h a
         gis2 fis4\fermata cis'
         d8. cis16 h4 cis h
      }
      %% Takt 10 ==================================================
      \alternative {
         {
            a2. a8. h16
         }
         {
            \set Score.currentBarNumber = #10
            a1 \bar "|."
         }
      }
   }
}

alt = {
   \new Voice \relative a {
      \global
      \halsdown
      \partial 4 a16\rest a cis a
      \repeat volta 2 {
         d4 e8. fis16 gis fis gis8~ gis16 gis fis8~
         fis16 fis eis fis eis8. eis16 fis eis fis gis a4~
         a16 a h a gis fis e! d cis8 e fis16 d e h
      }
      \alternative {
         {
            cis8 d16 h cis e fis gis a4 a,16\rest a cis a
         }
         {
            cis8 d16 h cis e fis gis a4 cis,4\rest
         }
      }
      %% Takt  5 ==================================================
      \repeat volta 2 {
         e16\rest e gis e a4~ a16 fis a fis h4~
         h16 gis h gis cis8 a~ a16 gis a fis gis8 h~
         h16 gis e gis a fis dis fis~ fis eis cis eis fis8 fis~
         fis8. fis16 eis dis cis h a cis fis gis a4~
         a16 a h a gis fis e8~ e8. e16 fis d e h
      }
      %% Takt 10 ==================================================
      \alternative {
         {
            cis8 d16 h cis e fis gis a fis e d cis4
         }
         {
            cis8 d16 h cis e fis gis a fis e d cis4
         }
      }
   }
}

tenor = {
   \new Voice \relative d {
      \global
      \partial 4 r4
      \repeat volta 2 {
         r16 d fis d a'4 r16 h e d cis8. cis16
         d16 gis, h gis cis h cis gis a gis a eis fis cis' fis e
         d16 cis h8~ h h~ h a~ a gis
      }
      \alternative {
         {
            a16 e fis d e cis d h cis a cis e a, r16 r8
         }
         {
            a'16 e fis d e cis d h cis a cis e a e cis e
         }
      }
      %% Takt  5 ==================================================
      \repeat volta 2 {
         a,16 cis e cis fis a cis a h d, fis d gis h d h
         cis e, gis e a cis e cis fis e fis dis h8 e~
         e16 d! cis h a4~ a8 gis a16 cis fis e!
         d cis h a gis fis eis8 fis16 cis a cis fis, cis'' fis e!
         d16 cis h cis d8. d16 cis h a8~ a gis
      }
      %% Takt 10 ==================================================
      \alternative {
         {
            a16 e fis d e cis d h cis a cis e a e cis e
         }
         {
            a16 e fis d e cis d h cis a cis e a4
         }
      }
  }
}

right = {
   \clef treble
   <<
   \alt
   \sopran
   >>
}

left = {
   \clef bass
   <<
   \tenor
   >>
}

pedal = {
   \global
   \clef "bass"
   \relative a, {
      \partial 4 r4
      \repeat volta 2 {
         r4 r16 a cis a e'8 e, r16 fis' a fis
         h8 h, r16 cis eis cis fis8 fis, r16 fis' a fis
         h8 h, r16 e gis e a a, cis a d h e e,
      }
      \alternative {
         {
            a2. r4
         }
         {
            a2. r4
         }
      }
      %% Takt  5 ==================================================
      \repeat volta 2 {
         r4 r16 fis' a fis h8 h, r16 gis' h gis
         cis8 cis, r16 a cis a dis8 dis, r16 e' gis e
         a8 a, r16 dis fis dis gis cis, eis cis fis fis a fis
         h8 h, r16 cis eis cis fis8 fis, r16 fis' a fis
         h8 h, r16 e gis e a a, cis a d h e e,
      }
      %% Takt 10 ==================================================
      \alternative {
         {
            a2. r4
         }
         {
            a1
         }
      }
   }
}

\score {
   <<
      \new PianoStaff
      {
         \set PianoStaff.instrument = \markup { \large "Manual" }
         <<
            \new Staff = right { \right }
            \new Staff = left { \left }
         >>
      }
      \new Staff {
         \set Staff.instrument = \markup { \large "Pedal" \hspace #1.8 }
         \pedal
      }
   >>
   \layout { }
}


\score {
   \unfoldRepeats {
      <<
         \new Staff = right {
            \set Staff.midiInstrument = "pan flute"
            \right
         }
         \new Staff = right {
            \set Staff.midiInstrument = "flute"
            \transpose c c' \right
         }

         \new Staff = left {
            \set Staff.midiInstrument = "pan flute"
            \left
         }
         \new Staff = left {
            \set Staff.midiInstrument = "pan flute"
            \transpose c c' \left
         }

         \new Staff {
            \set Staff.midiInstrument = "pan flute"
            \pedal
         }
         \new Staff {
            \set Staff.midiInstrument = "flute"
            \transpose c c' \pedal
         }
         \new Staff {
            \set Staff.midiInstrument = "recorder"
            \transpose c c, \pedal
         }
      >>
   }

   \midi{
      \tempo 4 = 64
   }
}
