\version "2.11.42"

\header {
   mutopiatitle = "Allein Gott in der Höh' sei Ehr'"
   mutopiacomposer = "BachJS"
   mutopiaopus = "BWV 677"
   mutopiainstrument = "Organ"
   date = ""
   source = "Edition Peters 8661"
   style = "Baroque"
   copyright = "Creative Commons Attribution-ShareAlike 3.0"
   maintainer = "Urs Metzger"
   maintainerEmail = "urs@ursmetzger.de"
   lastupdated = "2008/Mar/18"

   title = "Fughetta super: Allein Gott in der Höh' sei Ehr'"
   subtitle = "Manualiter"
   composer = "Johann Sebastian Bach"
   opus="BWV 677"
 footer = "Mutopia-2008/03/19-1372"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
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

halsup      = { \stemUp \tieUp \slurUp \dotsUp }
halsdown    = { \stemDown \tieDown \slurDown \dotsDown }
up          = { \change Staff = "right" \halsdown }
down        = { \change Staff = "left" \halsup }

sopran = {
   \new Voice \relative a' {
      \global
      \halsup
      r4 r8 a^. cis^. a^. fis^. d'^.
      e8^. h^. cis^. gis^. a h16 cis d4~
      d16 cis d e d cis h a gis8 a16 h cis d e fis
      h,4 e~ e16 cis h a h cis d e
      %% Takt  5 ==================================================
      fis8 gis a4~ a16 gis a h a gis fis e
      d4~ d8. cis16 d cis d e d cis h a
      h16 d e fis e d cis h cis4 r
      r2 r4 r8 gis~
      gis8 fis~ fis16 e fis gis a8 gis fis h
      %% Takt 10 ==================================================
      e,8 a16 gis a4~ a16 gis a h a gis fis e
      fis8 h16 ais h4~ h8 ais!16 gis ais cis his dis
      cis gis cis h! a!4 h8 a16 h cis8 cis~
      cis8 h~ h16 a h cis d!8 cis h e
      a,8 d16 cis d4~ d16 cis d e d cis h a
      %% Takt 15 ==================================================
      h16 d e fis e d cis h cis e d cis d e fis gis
      a8 f\rest f4\rest r16 e, dis cis dis e fis gis
      a16 gis fis e e'8 cis~ cis h~ h16 a h cis
      d8 cis h e a, d16 cis d4~
      d16 cis h a h cis d e fis8 \tempo 4 = 72 d \tempo 4 = 68 h \tempo 4 = 50 gis'
      %% Takt 20 ==================================================
      \tempo 4 = 30 a4 f\rest f2\rest
      \bar "|."
   }
}

alt = {
   \new Voice \relative e' {
      \global
      \halsdown
      \once \override MultiMeasureRest #'staff-position = #-4 R1
      e4\rest e8\rest e_. fis_. d_. h_. gis'_.
      a8_. e_. fis_. cis_. e fis16 gis a4~
      a16 gis a h a gis fis e fis4~ fis16 e fis gis
      %% Takt  5 ==================================================
      a8 h cis fis d4 h
      g16\rest a gis fis gis a h8~ h4 a~
      a4 gis e16\rest a e \down cis a8 cis~
      cis8 h~ h16 a h cis d8 cis h \up e
      \down a,8 \up d16 cis d4~ d16 cis dis e dis cis \down h a
      %% Takt 10 ==================================================
      gis4 fis e a4\rest
      a2\rest c4\rest c8\rest \up fis~
      fis8 e~ e16 dis e fis gis8 fis e! a
      dis,8 gis16 fis gis8 g~ g16 fis gis a gis fis e d
      cis8 a'~ a16 cis h a gis!8 e~ e[ d16 cis]
      %% Takt 15 ==================================================
      d8 h4 e8~ e16 g fis e fis gis a h
      cis16 a gis fis e d \down cis h a8 a\rest a4\rest
      c4\rest c8\rest \up e fis d! \down h \up gis'
      a8 e f cis c16\rest d e fis e d \down cis h
      a2~ a16 \up fis' gis a gis fis e d
      %% Takt 20 ==================================================
      cis4 e\rest e2\rest
   }
}

bass = {
   \new Voice \relative a {
      \global
      R1
      R1
      r4 r8 a^. cis^. a^. fis^. d'^.
      e8^. h^. cis ^. gis^. a h16 cis d4~
      %% Takt  5 ==================================================
      d16 cis d e d cis h a h8 cis16 d e8 e,
      fis8 d h gis' a e fis cis
      d8 h e e, a4 \halsdown r16 e' fis gis
      a4 gis r16 fis gis a gis fis e d
      cis4 \once \override Script #'extra-offset = #'( 0 . -2.3 ) h\prall a h
      %% Takt 10 =================================================
      cis16 dis e8~ e16 dis cis dis e8 e, h'8\rest e~
      e8 dis~ dis16 cis dis eis fis8 e dis! gis
      \stemUp cis,4 \stemDown fis~ fis16 eis fis gis a h cis a
      fis8 h e,! a d,! dis \tieUp e4~
      e16 e fis g fis e d cis h8 gis' a4~
      %% Takt 15 ==================================================
      a4 gis a r
      r4 r8 a, cis a fis dis'!
      e8 h cis16 a h cis d! e fis a gis fis e gis
      fis16 gis a a, gis' a, g' a, fis'8 h gis e
      a8 e fis cis d h e4
      %% Takt 20 ==================================================
      a4 r r2
   }
}

right = {
   \clef "treble"
   <<
      \sopran
      \alt
   >>
}

left = {
   \clef "bass"
   \bass
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
      >>
   }
   \layout{
      indent = 1.0\cm
   }
   \midi {
      \context {
         \Score
         tempoWholesPerMinute = #(ly:make-moment 76 4)
      }
   }
}
