\version "2.8.0"

\header {
 mutopiatitle = "Herzlich thut mich verlangen"
 mutopiacomposer = "BachJS"
 mutopiaopus = "BWV 727"
 mutopiainstrument = "Organ"
 date = ""
 source = "Bach-Album, Ernst H. Wolfram (editor), 6787, C. F. Peters, Leipzig"
 style = "Baroque"
 copyright = "Public Domain"
 maintainer = "Urs Metzger"
 maintainerEmail = "urs@ursmetzger.de"
 lastupdated = "2006/Mar/27"

 title = "Herzlich thut mich verlangen"
 subtitle = "a 2 Clav. e Pedale"
 composer = "Johann Sebastian Bach"
 opus="BWV 727"

 footer = "Mutopia-2006/03/30-715"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\include "deutsch.ly"

global = {
   \key h \minor
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
   \new Voice \relative fis' {
      \global
      \stemUp
      \partial 4 fis4
      h4 a g fis~
      fis16 fis g a e8. fis16 fis4\fermata cis'
      d4 d fis16\rest cis d e ais,8. h16
      h2.\fermata fis4
      %% Takt 5 ==============================================
      h4 fis'16\rest c h a g4 h16\rest g fis e
      d16 cis d e e8.\prall fis16 fis4\fermata r16 cis' d e
      d4 fis16\rest d e fis g cis, d e d8. cis16
      h2.\fermata d4
      cis8. h16 a4 h cis
      %% Takt 10 =============================================
      d2 d4\fermata a
      h4 a a g
      fis2.\fermata d'4
      cis4 e d cis
      e16\rest h cis d h8. cis16 cis4\fermata fis,
      %% Takt 15 =============================================
      g4 fis e r16 a g a
      \tieUp fis1~
      fis1\fermata
   }
}

alt = {
   \new Voice \relative ais {
      \global
      \halsup
      \partial 4 ais4
      h4 cis8 d~ d8[ cis] d8.[ cis16]
      h2 ais4 \staffup fis'
      fis4 h8 a g4 fis8 e~
      e8 e d cis d4 d
      %% Takt 5 ==============================================
      d4 e8\rest fis e4 cis8\rest cis!
      \staffdown h4 e16\rest d cis h ais fis h8~ h16 h ais!8
      h4 \staffup e8\rest fis e4 fis8 e
      d8 e fis g fis4 h8. a!16
      gis8 eis fis8.[ e16] d4 g8 fis16 e
      %% Takt 10 =============================================
      fis8 \staffdown a, h[ a16 g] a4 \staffup e'16\rest fis e fis
      g8. fis16 e fis dis e fis4. e8~
      \shiftOn e4~ e16 d e cis d4 e8\rest fis
      e4~ e16 e fis g fis8 gis a4
      e8\rest a~ a gis a4 \staffdown g16\rest d cis d
      %% Takt 15 =============================================
      g16\rest d cis d g\rest d cis d g\rest d e d c4
      cis!4~ cis16 h8 ais16 h8 cis << \new Voice { \halsup d8. d16
                                                  cis1\fermata ]
                                                }
                                     \new Voice { \halsup \shiftOn s8. h16
                                                  ais1 ]
                                                }
                                  >>
   }
}

tenor = {
   \new Voice \relative fis {
      \global
      \halsdown
      \partial 4 fis4~
      fis8 e4 fis8 g4 a8 d,~
      d8 d cis h cis4 ais'!
      h4 fis' e8 d cis \tieUp fis,~
      fis8 g fis e fis4 h
      %% Takt 5 ==============================================
      h4 r8 h h4 r8 fis
      fis4 \tieDown e~ e8. d16 cis8 fis
      fis4 r8 h h4. ais8
      h8 cis d e d cis h4
      cis8 cis cis4 h8. a16 g8[ \tieDown a~]
      %% Takt 10 =============================================
      a8 fis g[ fis16 e] fis4 d'
      d4 c h h
      \tieUp cis!8 cis, fis4~ fis8 fis h4~
      h8 h a4~ a fis'
      r8 cis h4 a a
      %% Takt 15 =============================================
      g4 a h \tieDown e,~
      e16 e fis e d8 e r16 fis8 fis16~ fis fis gis8
      ais1
   }
}

right = {
   \clef treble
   <<
   \sopran
   >>
}

left = {
   \clef bass
   <<
   \alt
   \tenor
   >>
}

pedal = {
   \global
   \clef "bass"
   \relative fis, {
      \partial 4 fis4
      g4. fis8 e4 d
      g2 fis4 fis'8 e
      d8[ cis] h[ cis16 d] e4 fis8 fis,
      h2~ h8 h h' a
      %% Takt 5 ==============================================
      g8 a16 h dis,4 e8 fis16 g ais,4
      h8 a! g4 fis4. fis'8
      h,8 cis16 d d,8 d' e8 fis16 g fis8 fis,
      h2. r8 h'
      eis,8 cis fis fis, r g'! e! a
      %% Takt 10 =============================================
      d,2~ d8 d, fis' d
      g8 g, c c' dis, h e g
      ais,2 h4. h8
      cis4. cis8 d4. dis8
      e4. e,8 a4 d
      %% Takt 15 =============================================
      h4 a gis a
      ais4 h8 cis d ais h eis,
      fis1_\fermata \bar "|."
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
         \set Staff.midiInstrument = "flute"
         \right
      }
      \new Staff {
         \set Staff.midiInstrument = "pan flute"
         \left
      }
      \new Staff {
         \set Staff.midiInstrument = "pan flute"
         \pedal
      }
      \new Staff {
         \set Staff.midiInstrument = "recorder"
         \transpose d d, \pedal
      }
   >>
   \midi{ \tempo 4 = 34 }
}