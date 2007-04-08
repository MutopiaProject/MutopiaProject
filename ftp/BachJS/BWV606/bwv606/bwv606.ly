\version "2.6.4"

\header {
 mutopiatitle = "Vom Himmel hoch, da komm' ich her"
 mutopiacomposer = "BachJS"
 mutopiaopus = "BWV 606"
 mutopiainstrument = "Organ"
 date = ""
 source = "Bach-Album, Ernst H. Wolfram (editor), 6787, C. F. Peters, Leipzig"
 style = "Baroque"
 copyright = "Public Domain"
 maintainer = "Urs Metzger"
 maintainerEmail = "urs@ursmetzger.de"
 lastupdated = "2006/Mar/16"

 title = "Vom Himmel hoch da komm' ich her"
 composer = "Johann Sebastian Bach"
 opus="BWV 606"

 footer = "Mutopia-2006/03/27-704"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }

}

\include "deutsch.ly"

global = {
   \key d \major
   \time 4/4
   #(set-accidental-style 'default)
}

#(set-default-paper-size "a4" 'landscape)
%#(set-global-staff-size 18)

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
   \new Voice \relative d'' {
      \global
      \halsup
      d2 cis4 d16\rest h cis d
      cis4 a h cis! \break
      d2\fermata d
      d4 a~ a16 h a g fis4
      %% Takt 5 ==============================================
      a4 g fis2\fermata \break
      fis4~ fis16 fis g! a! h4~ h16 d cis h
      a8. h16 cis4 d8 cis h4
      a2\fermata d \break
      cis4 h a h8. a16
      %% Takt 10 =============================================
      g16 a g fis e4 d2\fermata \bar "|."
   }
}

alt = {
   \new Voice \relative fis' {
      \global
      \halsdown
      r16 fis gis a gis4 a4. g8~
      g16 h a g fis4~ fis16 a g fis e g fis e
      d16 a h cis d cis d e fis cis d e fis e fis g
      a16 h a g fis e fis g e4~ e16 cis d e
      %% Takt 5 ==============================================
      cis8 dis cis16\rest e dis cis dis h' a g fis e d cis
      h16 ais h cis d4~ d16 d e fis g4~
      \once \override NoteColumn #'force-hshift = #0.8
      g8 fis e a~ a16 gis8 fis16~ fis gis fis eis
      fis16 cis d e! fis e fis g! a4~ a16 h a gis
      a8. g!16 fis d g fis e cis fis e d c h8~
      %% Takt 10 =============================================
      h8 c \staffdown e16\rest h a g fis g fis e d4\fermata
   }
}

tenor = {
   \new Voice \relative h {
      \global
      d4~ d16 d cis h a cis d e fis8 e
      e4~ e16 e d c h8. a16 g h a g
      fis4 r16 a h cis d r r8 r16 cis d e
      fis16  g fis e d4~ d16 d cis h a8 h
      %% Takt 5 ==============================================
      r16 a g fis g8 a h4 r16 g fis e
      d16 fis gis ais h8 a g16 h cis d e fis e d
      cis16 a d8 r16 cis h a gis8 a h cis
      cis16 a h cis \clef treble d cis d e fis g fis e d8 e~
      e16 cis fis e d h e d \clef bass cis a d c h a g fis
      %% Takt 10 =============================================
      \halsdown e8 d~ d cis! d16 h a g fis a d,8_\fermata
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
   \relative d {
      r8 d h e a, a' d, e
      a,8 cis d, d' g, h e, a
      d,2 r
      r8 d' fis d a' a, d h
      %% Takt 5 ==============================================
      fis'8 h, e e, h'2
      r8 h h' fis g g, g' cis,
      fis d a' fis h fis gis cis,
      fis2 r8 d h e
      a,8 a'4 g fis8 g h,
      %% Takt 10 =============================================
      cis8 d g, a d,2_\fermata
   }
}

\score {
   \new PianoStaff {
      \set PianoStaff.instrument = \markup { \large \center-align {
         "" "" "Manuale." "" "" "" "" "" "" "" "Pedale." } \hspace #1.3 }
      <<
         \context Staff = right {
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
      <<
         \context Staff = right {
            \set Staff.midiInstrument = "church organ"
            \context Voice = right \right
         }
         \context Staff = left {
                  \set Staff.midiInstrument = "church organ"
                  \context Voice = left \left
         }
         \context Staff = pedal {
            \set Staff.midiInstrument = "contrabass"
            \context Voice = pedal \transpose d d, \pedal
         }
      >>
   }
   \midi{ \tempo 4 = 52 }
}
