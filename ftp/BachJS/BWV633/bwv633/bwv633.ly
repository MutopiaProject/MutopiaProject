\version "2.6.4"

\header {
 mutopiatitle = "Liebster Jesu, wir sind hier"
 mutopiacomposer = "BachJS"
 mutopiaopus = "BWV 633"
 mutopiainstrument = "Organ"
 date = ""
 source = "Bach-Album, Ernst H. Wolfram (editor), 6787, C. F. Peters, Leipzig"
 style = "Baroque"
 copyright = "Public Domain"
 maintainer = "Urs Metzger"
 maintainerEmail = "urs@ursmetzger.de"
 lastupdated = "2006/Mar/15"

 title = "Liebster Jesu, wir sind hier"
 piece = \markup { \hspace #20 \large "In Canone alla Quinta" }
 composer = "Johann Sebastian Bach"
 opus="BWV 633"

 footer = "Mutopia-2006/03/27-708"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }

}

\include "deutsch.ly"

global = {
   \key a \major
   \time 4/4
   #(set-accidental-style 'default)
}

#(set-default-paper-size "a4" 'landscape)

halsup = {
  \stemUp
  \tieUp
}

halsdown = {
  \stemDown
  \tieDown
}

staffup = {
   \change Staff = "right" \halsdown
}

staffdown = {
   \change Staff = "left" \halsup
}

sopran = {
   \new Voice \relative cis'' {
      \global
      \halsup
      \repeat volta 2 {
         \once \override TextScript #'extra-offset = #'( -2.0 . -0.7 )
         cis4^\markup { \italic forte } h8\prall a h4 e
         cis4\prall h8 a h2\fermata
         a4 a a a
         h4 cis8 d16 h h2\prall
         %% Takt 5 ==============================================
         a1\fermata
      }
      e4 e e e
      fis8. gis16 a4 gis gis\fermata
      a4 a a a
      h4 cis8 d16 h h2\prall a1\fermata \bar "|."
   }
}

alt = {
   \new Voice \relative gis' {
      \global
      \halsdown
      \repeat volta 2 {
         e2\rest gis4 fis8_\prall e
         fis4 h gis fis8 e
         fis2_\fermata e4 e
         e4 e fis gis8 a16 fis fis2_\prall e_\fermata
      %% Takt 5 ==============================================
      }
      a,2\rest h4 h
      h4 h cis8. dis16 e4
      dis4 dis_\fermata e e
      e4 e fis gis8 a16 fis
      fis2_\prall e_\fermata
   }
}

tenor = {
   \new Voice \relative e' {
      \global
      \halsup
      \repeat volta 2 {
         \once \override TextScript #'extra-offset = #'( -2.0 . -0.7 )
         e8^\markup { \italic piano } d e fis gis,4 a8 h
         cis8 a' gis fis e4 gis,
         a8 h cis d e4 d8 cis
         d8 cis16 h e8 e, d d' cis h
         cis8 d16 cis d4~ d8 cis16 h cis4
      %% Takt 5 ==============================================
      }
      a8 cis h a e' e, fis gis
      a8 cis h4~ h2
      a8 e' fis gis a e d! cis
      d8 cis16 h e8 e, d d' cis h
         cis8 d16 cis d4~ d8 cis16 h cis4 \fermata
      %% Takt 10 =============================================
   }
}

bass = {
   \new Voice \relative a {
      \global
      \halsdown
      \repeat volta 2 {
         a8 h cis dis e e, fis gis
         a4 h2 cis4~
         cis8 gis a h e, fis gis a
         e8 gis a2 gis4
         a8 e fis gis a2
      %% Takt 5 ==============================================
      }
      cis,8 dis e fis gis4 a8 h
      fis8 a gis fis e gis fis e
      fis8 gis a h cis fis, gis a
      e8 gis a2 gis4
      a8 e fis gis a2_\fermata
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
         a1
      %% Takt 5 ==============================================
      }
      a8 a' gis fis e2~
      e4 dis e,8 e' d cis
      fis2 cis8 cis' h a
      gis8 e d cis d h e e,
      a1
   }
}

\paper {
betweensystempadding = #1
raggedbottom = ##f
raggedlastbottom = ##f
}

\score {
   \new PianoStaff \with {
      \override VerticalAlignment #'forced-distance = #14
      }
      { \set PianoStaff.instrument = \markup { \large \center-align {
         "" "" "a" "" "" "2 Clav." "" "" "e"  "" "" "" "Pedale." } \hspace #1.3 }
      <<
         \context Staff = right
         {
            \context Voice = right \right
         }
         \context Staff = left {
            \context Voice = left \left
         }
         \context Staff = pedal {
            \context Voice = pedal \pedal
         }
      >>
   }
   \layout{}
}

\score {
   \new PianoStaff {
      \unfoldRepeats {
         <<
            \new Staff {
               \set Staff.midiInstrument = "trumpet"
               \sopran
            }
            \new Staff {
               \set Staff.midiInstrument = "trumpet"
               \alt
            }
            \new Staff {
               \set Staff.midiInstrument = "pan flute"
               \tenor
            }
            \new Staff {
               \set Staff.midiInstrument = "pan flute"
               \bass
            }
            \new Staff {
               \set Staff.midiInstrument = "flute"
               \transpose a a, \pedal
            }
         >>
      }
   }
   \midi{ \tempo 4 = 52 }
}
