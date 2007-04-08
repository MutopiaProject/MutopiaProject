\version "2.8.0"

\header {
   mutopiatitle = "Ein' feste Burg ist unser Gott"
   mutopiacomposer = "BachJS"
   mutopiaopus = "BWV 720"
   mutopiainstrument = "Organ"
   date = ""
   source = "Bach-Album, Ernst H. Wolfram (editor), 6787, C. F. Peters, Leipzig"
   style = "Baroque"
   copyright = "Public Domain"
   maintainer = "Urs Metzger"
   maintainerEmail = "urs@ursmetzger.de"
   lastupdated = "2006/Mar/31"

   title = "Ein' feste Burg ist unser Gott"
   subtitle = "a 2 Clav. e Pedale"
   composer = "Johann Sebastian Bach"
   opus="BWV 720"

   footer = "Mutopia-2006/04/02-716"
   tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } ‚Ä¢ \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\include "deutsch.ly"

global = {
   \key d \major
   \time 4/4
   #(set-accidental-style 'default)
}

#(set-default-paper-size "a4" 'landscape)
#(set-global-staff-size 18)

halsup = {
  \stemUp
  \tieUp
}

halsdown = {
  \stemDown
  \tieDown
}

halsneutral = {
  \stemNeutral
  \tieNeutral
}

chup = {
   \change Staff = "right"
}

staffup = {
   \chup \halsdown
}

chdown = {
   \change Staff = "left"
}

staffdown = {
   \chdown \halsup
}

scriptup = {
   \once \override Script #'extra-offset = #'(0 . 1.3)
}

textup = {
   \once \override TextScript #'extra-offset = #'(-0.5 . 1.3)
}

sopran = {
   \new Voice \relative d'' {
      \global
      R1
      R1
      r2 r16 d cis h a h a g
      fis16 e fis d d'4 d d
      %% Takt  5 ==================================================
      \halsup a4~ a16 cis h d cis4~ cis16 d h cis
      d2~ d16 e cis fis \scriptup h,8._\prall cis16
      a4 r r2
      r4 d cis h
      a4 h g8 fis16 h e,8._\prall fis16
      %% Takt 10 ==================================================
      d2 r
      r16 gis' a gis a e fis e fis cis d cis d a h a
      h16 g c h a g fis g a d, d' cis h a gis h
      a16 e e' d cis h cis d e a, a' g! fis d h' a
      gis16 e a h gis8.\prall a16 a e fis cis d h e gis,
      %% Takt 15 ==================================================
      a8\fermata a, r16 d' cis h a h g! a h a g fis
      e16 fis d e fis8 h~ h16 e, a8~ a16 d, gis8
      r16 gis a e cis a' d8~ d16 h g'! d h'32[ fis g a g h, cis d]
      << \new Voice {
            \halsup cis16 a d8 cis8. d16 d a h8~ h16 d r c!
            d16\rest a d\rest h d\rest g, d'\rest a d\rest fis, a e fis8.\prall g32 fis
            d4
         }
         \new Voice \relative e'{
            \halsdown e8\rest g16\rest a g8. fis16 fis8. fis16 g8 e
            fis8[ d] e[ cis!] d4 h8\rest cis16. d32
            d4
         } >>
      %% Takt 20 ==================================================
         \halsneutral r4 r8 d16 e e8._\prallprall d32 e
      fis4 r16 fis gis a gis4 r16 e fis gis
      a4~ a16 a h cis d8 cis16 d h8. cis16
      d16 fis e d cis8 h16 a gis e' d cis \scriptup h8._\prall a16
      a4 r8 a16 h cis8 cis16 d e8 cis
      %% Takt 25 ==================================================
      d8 d,16 e fis16 e fis g e8 a16 h cis d h cis
      d16 e d cis h8 d e16 fis e d cis8 e
      a16 h a g fis h a g fis g fis e d g fis e
      d16 h a g fis a g fis e4 r16 h'' a g
      fis4~ fis16 h a h e,4~ e16 a g a
      %% Takt 30 ==================================================
      d,4 r16 a h cis d cis d fis e fis e d
      cis e a8~ a16[ h32 a g16 a32 g] fis16[ g a h32 a] g16[ a32 g fis16 g32 fis]
      e16[ fis32 e d16 e32 d] cis8.\prall cis16 d cis h a gis8. a16
      a4~ a16 h a g! fis d' cis h a g' fis e
      d16 h' a g fis e fis cis d ais h e, fis cis d h
      %% Takt 35 ==================================================
      h'4 r16 a h c h4 r16 a h c
      h4 r16 c h a g4 r16 fis g a
      g4 r16 fis g a g fis g a g8._\prall fis16
      fis16 dis' e fis e e fis g fis4~ fis16 dis cis h
      e16 dis e cis ais8. h16 h4 r
      %% Takt 40 ==================================================
      R1
      r2 \stemUp d
      cis2 h
      a2 h
      g2 fis4 r16 \stemNeutral fis g a
      %% Takt 45 ==================================================
      h4 r16 a h e, e4 r16 a h e,
      e4 r16 a h cis d a h e, e8._\prall d16
      d2 r
      r16 fis a fis d' a h fis g a h fis g d e cis
      d16 e fis e fis g a g a h cis h cis d e d
      %% Takt 50 ==================================================
      e16 fis gis fis gis ais h ais \halsup h4 a16\rest a! gis fis
      e4 a16\rest g! fis e d4 a'16\rest fis e d
      cis4 fis16\rest e d c! h fis' e d g a g fis
      e4. d8~ d16 cis! d e cis8.\prall d16
      d4 d16\rest a g fis h c! h a g a h c
      %% Takt 55 ==================================================
      a16 h a g fis a g fis g a g fis e fis g a
      fis g e fis g fis g e fis a g a h a h cis
      d32[ cis d a h a g fis] g[ fis e d cis16._\prall d32] d2\fermata
   }
}

alt = {
   \new Voice \relative d'' {
      \global
      \halsdown
      s1*49
      %% Takt 50 ==================================================
      s2 d
      cis2 h
      a2 h
      g4 fis e2
      d1~
      %% Takt 55 ==================================================
      d1~
      d1~
      s1
   }
}

tenor = {
   \new Voice \relative d' {
      \global
      r8 d d d a8. h16 cis a d8~
      d16 e cis d h d cis h cis a d fis, g h a g
      fis16 d g h, cis e d cis d8 d, r4
      r4 r16 h'' a g fis g fis e d fis e d
      %% Takt  5 ==================================================
      cis16 h cis a a'4~ a16 h cis a \staffup a'4
      e16\rest e d cis \staffdown h cis h a gis e a d, e8 e,
      \stemDown a16 gis' a gis a gis a gis a dis, e dis \stemNeutral e h cis h
      cis16 a h a h g! a g a fis' g fis g e fis e
      fis16 cis' d cis d a h a h cis d g, a  h e, g
      %% Takt 10 ==================================================
      fis16 a h a h fis g fis g cis, d cis d a h g
      d'8 d, r4 r2
      r4 d'' d d
      a4. h8 cis4 d~
      d8 cis h4 a2
      %% Takt 15 ==================================================
      R1
      r4 r16 d e d cis8. d16 h8. cis16
      a4~ a16 fis h fis g!2~
      g8 fis e4\prall d2~
      d2 r
      %% Takt 20 ==================================================
      \halsneutral r8 \textup d16^\markup { \italic "Rückp." } e e8.\prallprall d32 e fis8 fis16 g g8.\prallprall fis32 g
      a4 r4 r16 e' d cis h4
      \clef treble r16 cis d e fis4~ fis16 gis a8~ a gis
      a8 h r16 e, d cis \clef bass h8 a4 gis8
      a8 a16 h cis8 cis16 d \clef treble e8 a16 h cis h a g!
      %% Takt 25 ==================================================
      fis16 g fis e d8 d'16 e cis d cis h a h a g
      fis8 d' g16 a g fis e8 gis a16 h a g
      fis16 g fis e d8 cis16 h a h a g fis h a g
      fis16 g fis e d4 r16 fis' e d cis d cis h
      a16 fis' e fis h,4~ h16 e d e a,4
      %% Takt 30 ==================================================
      r16 a h cis d cis d e fis e fis a gis8.\prall a16
      a8. g!16 fis8 e d fis e d
      cis8 h a16[ h32 a g16 a32 g] fis16 e d cis \clef bass h8. a16
      a4 r r2
      R1
      %% Takt 35 ==================================================
      \clef treble r16 e' fis g a4 r16 fis g a g4
      r16 e fis g fis4 r16 fis e dis e4
      r16 dis e fis e4 r16 dis e fis e8. dis16
      dis16 fis g a g g a h a dis,! e fis g4~
      g8 cis,~ cis16 g' fis e dis8 cis16 h \clef bass r16 \textup fis^\markup { \italic "Oberw." } h fis
      %% Takt 40 ==================================================
      h,16 fis' h ais h fis h, fis' h fis h ais h fis d'! h
      \halsdown fis h d cis d h \chup fis' d h fis' h ais h fis h h,
      \chdown a!16 \chup cis fis eis fis cis fis \chdown a, g h \chup e! dis e \chdown h \chup e \chdown g,
      fis16 a d cis d a \chup fis'  d \chdown g, \chup d' g fis g d g \chdown g,
      e16 g cis h cis a cis e, d a' d cis d d, e fis
      %% Takt 45 ==================================================
      g16 d g d g, fis' g gis a e a e a, fis' g gis
      a16 e a e a, fis' g! a h fis g gis a e a a,
      d16 fis a fis h d, fis d g h d h g h d a
      d8 d, \stemUp d,4 r2
      R1
      %% Takt 50 ==================================================
      r2 \clef treble \stemNeutral r16 fis'' gis a! h4
      r16 e, fis g! a4 r16 d, e fis g4
      \clef bass r16 cis, h a d4 r16 d cis h e4
      r16 d cis h a c h a h a g fis e fis g a
      fis16 g fis e d fis e d g a g fis e fis g a
      %% Takt 55 ==================================================
      fis16 g fis e d c' h a h c h a g a h c
      a16 h g a h a h g a fis e fis g fis g e
      fis8 g16 a h g e8\prall fis32[ g a g fis g fis e] d[ cis d cis d a d,16] \bar "|."
   }
}

right = {
   \clef treble
   <<
      \sopran
      \alt
   >>
}

left = {
   \clef bass
   \tenor
}

pedal = {
   \global
   \clef "bass"
   \relative d, {
      R1*20
      r8 d d' cis h d e d
      cis a d cis h cis d e
      fis gis a d, e a, e4
      a4 r r2
      %% Takt 25 ==================================================
      d2 a'
      h2 cis
      d1
      r2 cis
      d2 cis
      %% Takt 30 ==================================================
      h1
      a1~
      a2 r
      R1
      R1
      %% Takt 35 ==================================================
      r4 r8 dis, e4 r8 e
      dis4 r8 dis e4 r8 e
      g4 r8 e h'4 r8 ais,
      h1~
      h2 r
      %% Takt 40 ==================================================
      R1*10
      %% Takt 50 ==================================================
      r2 \stemDown h8 h' gis e
      a,8 a' fis d g,! g'! e cis
      a8 a' fis d g, g' e d
      \stemNeutral cis8 a d fis, g e a4
      d,1~
      %% Takt 55 ==================================================
      d1~
      d1~
      d1~
   }
}

\score {
   <<
      \new PianoStaff \with {
         \override VerticalAlignment #'forced-distance = #9
      }
      {
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
      \new Staff = right {
         \set Staff.midiInstrument = "pan flute"
         \right
      }
      \new Staff {
         \set Staff.midiInstrument = "recorder"
         \transpose d d' \right
      }
      \new Staff =left {
         \set Staff.midiInstrument = "pan flute"
         \left
      }
      \new Staff {
         \set Staff.midiInstrument = "recorder"
         \transpose d d' \left
      }
      \new Staff {
         \set Staff.midiInstrument = "pan flute"
         \pedal
      }
      \new Staff {
         \set Staff.midiInstrument = "recorder"
         \transpose d d, \pedal
      }
      \new Staff {
         \set Staff.midiInstrument = "recorder"
         \transpose d d' \pedal
      }
   >>
   \midi{ \tempo 4 = 80 }
}