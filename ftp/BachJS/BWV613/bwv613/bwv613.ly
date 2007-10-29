\version "2.10.33"

\header {
 mutopiatitle = "Helfft mir Gottes Güte preisen"
 mutopiacomposer = "BachJS"
 mutopiaopus = "BWV 613"
 mutopiainstrument = "Organ"
 date = "1740"
 source = "Autograph"
 style = "Baroque"
 copyright = "Creative Commons Attribution-ShareAlike 3.0"
 maintainer = "Urs Metzger"
 maintainerEmail = "urs@ursmetzger.de"
 lastupdated = "2007/Oct/28"

 title = "Helfft mir Gottes Güte preisen"
 composer = "Johann Sebastian Bach"
 opus="BWV 613"
 footer = "Mutopia-2007/10/29-1084"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

halsup      = { \stemUp \tieUp }
halsdown    = { \stemDown \tieDown }
halsneutral = { \stemNeutral \tieNeutral }

global = {
   \key h \minor
   \time 4/4
   #(set-accidental-style 'default)
}

\paper {
   ragged-bottom      = ##f
   ragged-last-bottom = ##t
   page-top-space     = 0.7\cm
}

#(set-default-paper-size "a4" 'landscape)

sopran = {
   \new Voice \relative h' {
      \global
      \halsup
      \partial 2
      h2
      h4 cis d e
      cis4. d8 e4\fermata fis8 e
      d8 cis h4 cis cis
      h2. h4
      %% Takt 5 ==============================================
      h cis4 d e
      cis4. d8 e4 fis8 e
      d8 cis h4 cis cis
      h2 fis'
      e4 d cis h
      %% Takt 10 =============================================
         cis2. \repeat volta 2 {
         cis4
         d4 e fis fis
         e4. d8 cis4
      } fis8 e
      d8 cis h4 cis cis
      h2. \bar "|."
   }
}

alt = {
   \new Voice \relative fis' {
      \global
      \halsdown \dotsDown
      \partial 2 s2
      r8 fis fis gis a gis16 fis e d cis h
      a8 e' a4~ a16 cis e d cis h ais gis
      fis16 h8 ais16 h fis8 eis16 fis gis a g fis e dis e
      dis16 h cis dis e fis g8 fis16 g fis8~ fis e\rest
      %% Takt 5 ==============================================
      e16\rest fis e fis g8 gis a g16 fis e d cis h
      a8 e' a4~ a16 cis e d cis h ais gis
      fis8 e~ e16 d e fis g!8 e~ e16 g fis e
      d4 e\rest e8\rest fis fis gis
      ais16 d cis h ais gis fis eis fis gis ais e dis fis8 eis16
      %% Takt 10 =============================================
      fis8 e\rest e4\rest e16\rest e! fis g! \repeat volta 2 {
         fis16 e d cis
         h8 fis' g gis a ais h4~
         h8 cis4 h8~ h16 h a! g!
      } fis8 ais
      h8 e,\rest e16\rest d e fis g fis e d cis g' fis e
      dis16 e fis8~ fis16 h, e8~ e dis!\fermata
   }
}

tenor = {
   \new Voice \relative h {
      \global
      \halsneutral
      \partial 2
      r8 h h cis
      d8 cis16 h a gis fis eis fis8 h gis e
      a8 gis16 fis e d cis h a8 r r4
      r8 fis' fis gis a!16 h cis h a g fis g
      fis8 r r r16 e'~ e8. e16 d cis h ais
      %% Takt 5 ==============================================
      h4~ h16 h cis h a! fis h a h8 r
      r16 a gis fis e d cis h a8 r r4
      r16 h'8 ais16 h4~ h16 d cis h ais!4
      r8 h h cis d e16 d cis h ais gis
      fis8 r r4 r8 fis fis gis
      %% Takt 10 =============================================
      ais16 h cis h ais gis fis eis fis8 r \repeat volta 2 {
         r4
         r16 a! g! fis e d' cis h cis a cis8 d dis
         e16 d! cis h a gis fis e e'8 r
      } r16 e d cis
      h16 ais gis ais h4~ h ais!8 a~
      a8 g16 fis g8. e16 fis4_\fermata
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
      \partial 2 r2
      R1
      r8 a a h cis h ais fis
      h8 cis d h fis' fis, fis g
      a8 a' g e h' h, h cis
      %% Takt 5 ==============================================
      d8 dis e eis fis g gis a
      a8 a, a h cis h ais fis
      h8 cis d h e cis fis fis,
      h4 r r2
      r8 fis' fis gis ais fis h h,
      %% Takt 10 =============================================
      fis' fis, fis gis ais[ cis] \repeat volta 2 {
         ais! fis
         h8 r r e~ e d16 cis h a gis fis
         gis8 e fis gis a[ cis]
      }
      ais fis
      h8 fis' g! d e cis fis fis,
      h2.

   }
}


\score {
   <<
      \new PianoStaff {
         <<
            \context Staff = right {
               \context Voice = right \right
            }
            \context Staff = left {
               \context Voice = left \left
            }
         >>
      }
      \context Staff = pedal {
         \context Voice = pedal \pedal
      }
   >>

   \layout{
      \context {
         \PianoStaff \override VerticalAxisGroup #'minimum-Y-extent = #'(-3 . 4)
      }
      \context {
         \Staff      \override VerticalAxisGroup #'minimum-Y-extent = #'(-3 . 3)
      }
      indent = 1.0\cm
   }
}

\score {
   \unfoldRepeats {
      <<
         \new PianoStaff {
            <<
               \context Staff = right {
                  \set Staff.midiInstrument = "church organ"
                  \right
               }
               \context Staff = left {
                  \set Staff.midiInstrument = "church organ"
                  \left
               }
            >>
         }
         \context Staff = pedal {
            \set Staff.midiInstrument = "church organ"
            \pedal
         }
         \context Staff = pedalb {
            \set Staff.midiInstrument = "tuba"
            \transpose d d, \pedal
         }

      >>
   }

   \midi {
      \context {
         \Score
         tempoWholesPerMinute = #(ly:make-moment 54 4)
      }
   }
}
