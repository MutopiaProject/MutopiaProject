\version "2.10.33"

\header {
 mutopiatitle = "Liebster Jesu, wir sind hier"
 mutopiacomposer = "BachJS"
 mutopiaopus = "BWV 633"
 mutopiainstrument = "Organ"
 date = "1715"
 source = "Autograph"
 style = "Baroque"
 copyright = "Creative Commons Attribution-ShareAlike 3.0"
 maintainer = "Urs Metzger"
 maintainerEmail = "urs@ursmetzger.de"
 lastupdated = "2007/Nov/25"

 title = "Liebster Jesu, wir sind hier"
 composer = "Johann Sebastian Bach"
 opus="BWV 633"
 footer = "Mutopia-2007/11/26-708"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

global = {
   \key a \major
   \time 4/4
   #(set-accidental-style 'default)
   \override Score.MetronomeMark #'transparent = ##t
}

\paper {
   ragged-bottom = ##f
   ragged-last-bottom = ##f
}

#(set-default-paper-size "a4" 'landscape)

halsup        = { \stemUp \tieUp \slurUp }
halsdown      = { \stemDown \tieDown \slurDown }

sopran = {
   \new Voice \relative cis'' {
      \global
      \halsup
      \repeat volta 2 {
         \once \override TextScript #'extra-offset = #'( -2.0 . 0 )
         cis4^\markup { \italic Forte. } h8\prall a h4 e
         cis4\prall h8 a h2\fermata
         a4 a a a
         h4 cis8 d16 h h2\prall
         %% Takt 5 ==============================================
         a1\fermata
      }
      e4 e e e
      fis8. gis16 a4 gis gis\fermata
      a4 a a a
      h4 cis8 d16 h h2\prall
      %% Takt 10 =============================================
      a1\fermata \bar "|."
   }
}

alt = {
   \new Voice \relative gis' {
      \global
      \halsdown \dotsDown
      \repeat volta 2 {
         e2\rest gis4 fis8_\prall e
         fis4 h gis_\prall fis8 e
         fis2_\fermata e4 e
         e4 e fis gis8 a16 fis
         %% Takt 5 ==============================================
         fis2_\prall e_\fermata
      }
      a,2\rest h4 h
      h4 h cis8. dis16 e4
      dis4 dis_\fermata e e
      e4 e fis gis8 a16 fis
      %% Takt 10 =============================================
      fis2_\prall e_\fermata
   }
}

tenor = {
   \new Voice \relative e' {
      \global
      \halsup
      \repeat volta 2 {
         \once \override TextScript #'extra-offset = #'( -2 . -2 )
         e8^\markup { \italic p. } d e fis gis,4 a8 h
         cis8 a' gis fis e4 gis,
         a8 h cis d e4 d8 cis
         d8 cis16 h e8 e, d d' cis h
      %% Takt 5 ==============================================
        cis8 d16 cis d4~ d8 cis16 h cis4
      }
      a8 cis h a e' e, fis gis
      a8 cis h4~ h2
      a8 e' fis gis a e d! cis
      d8 cis16 h e8 e, d d' cis h
      %% Takt 10 =============================================
      cis8 d16 cis d4~ d8 \tempo 4 = 40 cis16 h \tempo 4 = 16 cis4 \fermata
   }
}

bass = {
   \new Voice \relative a {
      \global
      \halsdown
      \repeat volta 2 {
         a8 h cis dis e e, fis gis
         a4 h~ h \tieUp \once \override Tie #'extra-offset = #'( 0 . 0.4 ) cis4~
         cis8 gis a h e, fis gis[ a]
         e8 gis a4~ a gis4
      %% Takt 5 ==============================================
         a8 e fis gis a2
      }
      cis,8 dis e fis gis4 a8 h
      fis8 a gis fis e gis fis e
      fis8 gis a h cis fis, gis a
      e8 gis a4~ a gis4
      %% Takt 10 =============================================
      a8 e fis gis a2_\fermata
   }
}

right = {
   \clef "treble"
   <<
      \alt
      \sopran
   >>
}

left = {
   \clef "tenor"
   <<
      \tenor
      \bass
   >>
}

pedal = {
   \global
   \clef "bass"
   \relative a, {
      \repeat volta 2 {
         a8 a' gis fis e2~
         e4 dis e,8 e' d cis
         fis,8 fis' e d cis cis' h a
         gis8 e d cis d h e e,
      %% Takt 5 ==============================================
         a1
      }
      a8 a' gis fis e2~
      e4 dis e,8 e' dis! cis
      fis2 cis8 cis' h a
      gis8 e d cis d h e e,
      %% Takt 10 =============================================
      a1
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
         \PianoStaff \override VerticalAxisGroup #'minimum-Y-extent = #'(-3 . 3)
      }
      \context {
         \Staff      \override VerticalAxisGroup #'minimum-Y-extent = #'(-4 . 3.5)
      }
      indent = 1.0\cm
   }
}

\score {
   \unfoldRepeats {
      <<
         \context Staff = right {
            \set Staff.midiInstrument = "recorder"
            \right
         }
         \context Staff = right {
            \set Staff.midiInstrument = "pan flute"
            \transpose a a' \right
         }
         \context Staff = left {
            \set Staff.midiInstrument = "recorder"
            \left
         }
         \context Staff = left {
            \set Staff.midiInstrument = "recorder"
            \transpose a a' \left
         }
         \new Staff {
            \set Staff.midiInstrument = "recorder"
            \pedal
         }
         \new Staff {
            \set Staff.midiInstrument = "recorder"
            \transpose a, a,, \pedal
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
