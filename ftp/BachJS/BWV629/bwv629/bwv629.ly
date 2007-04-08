\version "2.6.4"

\header {
 mutopiatitle = "Erschienen ist der herrliche Tag"
 mutopiacomposer = "BachJS"
 mutopiaopus = "BWV 629"
 mutopiainstrument = "Organ"
 date = ""
 source = "Bach-Album, Ernst H. Wolfram (editor), 6787, C. F. Peters, Leipzig"
 style = "Baroque"
 copyright = "Public Domain"
 maintainer = "Urs Metzger"
 maintainerEmail = "urs@ursmetzger.de"
 lastupdated = "2006/Mar/12"

 title = "Erschienen ist der herrliche Tag"
 composer = "Johann Sebastian Bach"
 opus="BWV 629"

 footer = "Mutopia-2006/03/13-698"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\paper {
aftertitlespace = 1
betweensystempadding = #1
raggedbottom=##f
raggedlastbottom=##f
}

\include "deutsch.ly"

global = {
   \key d \dorian
   \time 3/2
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

staffup = {
   \change Staff = "right" \halsdown
}

staffdown = {
   \change Staff = "left" \halsup
}

restup = {
   \once \override Rest #'extra-offset = #'( 5.0 . 0.0 )
}

sopran = {
   \new Voice \relative d' {
      \global
      \halsup
      d2 d d
      a'1 h2
      c2. h4 a2
      g1\fermata a2
      %% Takt 5 ==============================================
      h1 c2
      d1 a2
      c2 h1
      a1\fermata a2
      c1 a2
      %% Takt 10 =============================================
      g2 e1
      f2 e d
      c1\fermata c2
      f1 g2
      a1 g2
      %% Takt 15 =============================================
      f2 c'1
      a1\fermata g2
      f2 e1
      d2 r4 a'8 h cis4 h8 cis
      d1.\fermata
   }
}

alt = {
   \new Voice \relative d {
      \global
      \halsup
      r4 d8 e f4 f8 g a4 d8 e
      \staffup f4 f8 g a4 a8 g f4 g8 f
      e4 e8 d c4 e~e e8 dis
      e4 g8 f e4 e8 d c4 d8 c
      %% Takt 5 ==============================================
      \staffdown h4 d g, g8 f e4 a~
      a4 gis8 fis gis2 a~
      a4 \staffup d8 e f4 d~d e8 f
      e4 d8 e f4 e8 d e2~
      e4 c\rest c\rest \staffdown a8 h c4 c8 d
      %% Takt 10 =============================================
      e4 c8 h c4 c8 d e4 e8 d
      c1 b2
      a4 f8 g a4 a8 h! c b a g
      f4 a8 b c4 c8 d \staffup e4 d8 e
      f4 f8 e d4 d8 c \staffdown b4 c8 b
      %% Takt 15 =============================================
      a4 a8 b c4 c8 d e4 d8 e
      f2. \clef treble e8 f g4 f8 g
      a4 g8 f g4 e a2~
      a4 \clef bass h,8 cis d4 \staffup cis8 d e4 d8 e
      fis1.
   }
}

tenor = {
   \new Voice \relative d {
      \global
      \halsdown
      f,2\rest f4\rest d'8 e f4 f8 g
      a4 d8 e f4 f8 e d4 e8 d
      c4 c8 h a4 a8 g fis2
      e4 e'8 d c4 g2 fis4
      %% Takt 5 ==============================================
      g4 g8 f e4 e8 d c4 d8 c
      h4 h8 c d4 c8 d e4 d8 e
      fis4 fis8 gis a4 h8 a gis2
      a4 h8 a gis4 a8 h e, 4 a8 gis
      a4 a,8 h c4 c8 d e2~
      %% Takt 10 =============================================
      e4 e8 f g4 a8 h c4 c8 h
      a4 c,8 d e4 e8 f g4 f8 g
      a4 a,8 h c4 c8 d e4 f8 e
      d4 f8 g a4 g8 f c'2~
      c8 b a g f2~ f4 e8 d
      %% Takt 15 =============================================
      c4 c8 d e4 e8 f g4 f8 g
      a4 a8 b c4 c8 d e4 d
      cis4 d2 e8 d cis4 h8 cis
      d4 d,8 e f4 e8 f g4 f8 e
      a1.\fermata
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
   \clef "bass_8"
   \relative d,, {
      R1*3/2
      d2 d d
      a'1 h2
      c2. h4 a2
      %% Takt 5 ==============================================
      g1_\fermata a2
      h1 c2
      d1 h2
      c2 h c
      a1\fermata a2
      %% Takt 10 =============================================
      c1 a2~
      a2 g e
      f2 e4 d c2_\fermata
      r2 r c
      f1 g2
      %% Takt 15 =============================================
      a1 g2
      f2 c'1
      a1_\fermata g2
      f1 e2
      d1._\fermata
      \bar "|."
   }
}

\score {
   \new PianoStaff \with {
      \override VerticalAlignment #'forced-distance = #10
      }
      {
      \set PianoStaff.instrument = \markup { \large \center-align { "a" "" "" "2 Clav." "" "" "e" "" "" "Pedale." } \hspace #1.3 }
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
            \context Voice = pedal \pedal
         }
      >>
   }
   \layout{}
   \midi{ \tempo 2 = 68 }
}
