\version "2.10.33"

\header {
 mutopiatitle = "Liebster Jesu, wir sind hier"
 mutopiacomposer = "BachJS"
 mutopiaopus = "BWV 634"
 mutopiainstrument = "Organ"
 date = "1715"
 source = "Autograph"
 style = "Baroque"
 copyright = "Creative Commons Attribution-ShareAlike 3.0"
 maintainer = "Urs Metzger"
 maintainerEmail = "urs@ursmetzger.de"
 lastupdated = "2007/Nov/27"

 title = "Liebster Jesu, wir sind hier"
 subtitle = "in Canone alla Quinta"
 subsubtitle = "à 2. Clav & Ped."
 composer = "Johann Sebastian Bach"
 opus="BWV 634"
 footer = "Mutopia-2007/11/27-1172"
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
         cis4 h8 a h4 d16 cis8 d32 e
         cis4\prall h8 a h2\fermata
         a4 a a a
         h4 cis8 d16 h h2\prall
         %% Takt 5 ==============================================
         a1
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
         e2\rest gis4 fis8 e
         fis4 gis8 a16 h gis4_\prall fis8 e
         fis2_\fermata e4 e
         e4 e fis gis8 a16 fis
         %% Takt 5 ==============================================
         fis2_\prall e_\fermata
      }
      a,2\rest h4 h
      h4 h cis8 dis e4
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
         e4. dis8 e gis, a h
         cis8 a' gis[ fis] e4 cis~
         cis8 gis[ a h] e4 d8 cis
         d8 cis16 h e4 e8\rest d cis h
      %% Takt 5 ==============================================
        cis8 d16 cis d4~ d8 cis16 h cis4
      }
      cis4 h8 a gis4 a8[ h]
      a8 cis h a h2
      a8 e' fis gis a e d! cis
      d8 cis16 h e4 e8\rest d cis h
      %% Takt 10 =============================================
      cis8 d16 cis d4~ d8 \tempo 4 = 40 cis16 h \tempo 4 = 16 cis4 \fermata
   }
}

bass = {
   \new Voice \relative a {
      \global
      \halsdown
      \repeat volta 2 {
         a4 h  h8 e, fis gis
         a4 h~ h gis
         a8 h cis d e, fis gis[ a]
         e8 gis a4~ a gis4
      %% Takt 5 ==============================================
         a8 e fis gis a2
      }
      r2 e'8 e, fis[ gis]
      fis8 a gis[ fis] e gis fis e
      fis8 gis a h cis fis, gis a
      e8 gis a4~ a gis4
      %% Takt 10 =============================================
      a8 e fis[ gis] a2_\fermata
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
         fis,8 fis' e d cis4 h8 a
         gis8 e' d cis d h e e,
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
      indent = 1.0\cm
   }
}

\score {
   \unfoldRepeats {
      <<
         \context Staff = right {
            \set Staff.midiInstrument = "church organ"
            \right
         }
         \context Staff = left {
            \set Staff.midiInstrument = "church organ"
            \left
         }
         \new Staff {
            \set Staff.midiInstrument = "church organ"
            \transpose a a, \pedal
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
