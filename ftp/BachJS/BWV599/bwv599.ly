\version "2.8.0"

\header {
 mutopiatitle = "Nun komm' der Heiden Heiland"
 mutopiacomposer = "BachJS"
 mutopiaopus = "BWV 599"
 mutopiainstrument = "Organ"
 date = ""
 source = "Bach-Album, Ernst H. Wolfram (editor), 6787, C. F. Peters, Leipzig"
 style = "Baroque"
 copyright = "Public Domain"
 maintainer = "Urs Metzger"
 maintainerEmail = "urs@ursmetzger.de"
 lastupdated = "2006/Mar/17"

 title = "Nun komm' der Heiden Heiland"
 composer = "Johann Sebastian Bach"
 opus="BWV 599"

 footer = "Mutopia-2006/03/30-713"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\include "deutsch.ly"

global = {
   \key a \minor
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

rshiftI = {
   \once \override NoteColumn #'force-hshift = #1
}

sopran = {
   \new Voice \relative a' {
      \global
      \halsup
      a2 d16\rest a h fis g!4
      c4 h8 a h2
      a2\fermata a8. h16 c4
      d4 c d e
      %% Takt 5 ==============================================
      c2\fermata c4 d
      e4 c d8 c h4
      a2\fermata a
      r16 a h fis g4 c h8 a
      h2 \once \override Tie #'staff-position = #'4.5 a\fermata~
      %% Takt 10 =============================================
      a1 \bar "|."

   }
}

alt = {
   \new Voice \relative d' {
      \global
      \halsdown
      c16\rest d e8~ e dis~ dis4 c16\rest dis e8~
      e16 gis a dis, e4~ e16 e f!8~ f16 d e h
      c4 e16\rest d! e h c8. d16 e4
      a16 d, g8~ g8 f~ f16 a d,8 g16\rest g c b~
      %% Takt 5 ==============================================
      b16 g \tieUp a8~ \halsup \shiftOn a4~a~ a16 c h!8~
      h16 h c gis a4~ \halsdown a16 gis a8~ a16 fis gis8
      e16\rest d e8~ e4~ e16 e f8~ f16 e f8
      a,4\rest c16\rest dis e8~ e16 gis a dis, e8 a~
      \halsup \shiftOn a16 gis a8~ a16 fis \tieDown g8~ g16 f! \tieUp g8~ g16 e \tieDown f8~
      %% Takt 10 =============================================
      \rshiftI f16 e \tieUp f8~ f16 g f8~ f16 d e8~ e4\fermata

   }
}

tenor = {
   \new Voice \relative h {
      \global
      \halsup
      \shiftOn
      a8\rest c16\rest h c4~ c s
      s1
      s1
      s1
      %% Takt 5 ==============================================
      \staffup \once \override Rest #'extra-offset = #'(1 . 0) e,8\rest g16\rest e' f4~ f s
      s1
      \staffdown c8. h16 c4~ c16 cis d8~ d16 cis d8
      f,4\rest f8\rest a16\rest h16  a4 c16\rest h c8
      \staffup \rshiftI d!8. f16 \staffdown h,8 \staffup e~ \rshiftI e16 d e8~ e16 cis d8~
      %% Takt 10 =============================================
      \rshiftI d16 cis d8~ d16 e d8~ d8. h16 cis!4
   }
}

bass = {
   \new Voice \relative gis {
      \global
      \halsdown
      h,4\rest d16\rest gis a8~ a4 h8. h16
      \tieUp a4 r16 h c fis, gis8 a~ a[ gis]
      r16 gis a dis, e h c gis a gis' a8~ a16 h c8~
      c8 h c16 g a8~ a16 c h8 c16 e g,8
      %% Takt 5 ==============================================
      \once \override Rest #'extra-offset = #'(1 . 0) r4 r16 b c g a c \staffup f8~ \once \override NoteColumn #'force-hshift = #0.5 f16 a d, f
      e4~ e16 e f \staffdown c h8 a e'8.[ d16]
      \halsdown d,4\rest d16\rest gis a8~ a16 g f8~ f16 a d,8
      s2. h8\rest d16\rest e
      f!4 g! \tieUp a2~
      %% Takt 10 =============================================
      \rshiftI a16 g a e f cis d gis, <<
         \new Voice \relative f  {
            \stemUp f4\rest a16\rest gis \override Script #'extra-offset = #'(0 . 2) a8_\fermata
         }
         \new Voice \relative a, {
            \stemDown a2_\fermata
         }
      >>
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
      r4 r8 r16 a e'8. dis16 e4
      fis4 gis8 a e8. d!16 e8 e,
      a2 r8 r16 a a'8. g!16
      f8. g16 e8. f16 d8. g16 c,8. e16
      %% Takt 5 ==============================================
      f,2 f'8. a16 d,8. g16
      c,8. e16 f,8. a16 d,8. d'16 e8 e,
      a4 a'8. c16 f,8. a16 d,8. f16
      h,8. dis16 e,4 fis gis8 a
      d,8 d' e8.[ g!16] cis,8. e16 d8. f16
      %% Takt 10 =============================================
      a,1_\fermata
   }
}

\score {
   <<
      \new PianoStaff {
         \set PianoStaff.instrument = \markup { \large "Manuale." }
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
         \set Staff.instrument = \markup { \large "Pedale." \hspace #1.8 }
         \context Voice = pedal \pedal
      }
   >>
   \layout{}
}

\score {
   <<
      \new Staff {
         \set Staff.midiInstrument = "church organ"
         \right
      }
      \new Staff {
         \set Staff.midiInstrument = "church organ"
         \left
      }
      \new Staff {
         \set Staff.midiInstrument = "church organ"
         \pedal
      }
      \new Staff {
         \set Staff.midiInstrument = "contrabass"
         \transpose d d, \pedal
      }
   >>
   \midi{ \tempo 4 = 40 }
}