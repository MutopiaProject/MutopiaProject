\version "2.10.33"

\header {
 mutopiatitle = "Wir Christenleut"
 mutopiacomposer = "BachJS"
 mutopiaopus = "BWV 612"
 mutopiainstrument = "Organ"
 date = "1714"
 source = "Autograph and Edition Peters 8660"
 style = "Baroque"
 copyright = "Creative Commons Attribution-ShareAlike 3.0"
 maintainer = "Urs Metzger"
 maintainerEmail = "urs@ursmetzger.de"
 lastupdated = "2007/Oct/28"

 title = "Wir Christenleut"
 subtitle = "\"Wir Christen Leüt\""
 composer = "Johann Sebastian Bach"
 opus="BWV 612"
 footer = "Mutopia-2007/10/29-1083"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

halsup      = { \stemUp \tieUp }
halsdown    = { \stemDown \tieDown }
halsneutral = { \stemNeutral \tieNeutral }
staffup     = { \change Staff = "right" \halsdown }
staffdown   = { \change Staff = "left" \halsup }
bali        = { \set stemLeftBeamCount = #1 \set stemRightBeamCount = #2 }
bami        = { \set stemLeftBeamCount = #2 \set stemRightBeamCount = #2 }
bare        = { \set stemLeftBeamCount = #2 \set stemRightBeamCount = #1 }

global = {
   \key d \minor
   \time 4/4
   #(set-accidental-style 'default)
   \override Score.MetronomeMark #'transparent = ##t
}

\paper {
   ragged-bottom      = ##f
   ragged-last-bottom = ##t
   page-top-space     = 0.7\cm
}

#(set-default-paper-size "a4" 'landscape)
%#(set-global-staff-size 18)

sopran = {
   \new Voice \relative g' {
      \global
      \halsup
      g2 b4 a
      g2\fermata g
      b4 a g\fermata r
      d'2 c4 b
      %% Takt 5 ==============================================
      a2\fermata a
      b4 b c c
      d4 d c b
      a2 g\fermata
      \repeat volta 2 {
         d'2 c4 b
         %% Takt 10 =============================================
         a4 d c b
         a2\fermata a
         b4 b c c
         d4 d c b
         a1
         %% Takt 15 =============================================
         g1~
      }
      g1\fermata \bar "|."
   }
}

alt = {
   \new Voice \relative g' {
      \global
      \halsdown \dotsDown
      r2
      \compressMusic #'( 2 . 3 ) {
         r8 g16 f es d es8 \bali f16 \bami es d c
         b8 \bali d16 \bami c b a b8 \bali c16 \bami b a g c8 \bali h16 \bare c d8~ d \bali c16 \bare d es8
         d8 \bali g16 \bami f es d es8 \bali f16 \bami es d c b8 \bali b'16 \bami a g f! g8 \bali a16 \bami g f es
         d8. c'16 b a b8 f b~ b \bali a16 \bami g f es f8 \bali g16 \bami f es d
         %% Takt 5 ==============================================
         cis8 \bali cis16 \bare d e!8~ e \bali d16 \bare e f8 e \bali g16 \bami f e d e8 \bali f16 \bami e d cis!
         d8 \bali fis16 \bare g a8 d, \bali es16 \bami d c b g'8 \bali b16 \bami a g f g8 \bali a16 \bami g f es
         d8 f a~ a g4~ g8 \bali a16 \bami g f es f8 \bali g16 \bami f es d
         es8 \bali g16 \bami f es d es8 \bali f16 \bami es d c h8 \bali h16 \bare c d8~ d \staffdown g, c~
         \repeat volta 2 {
            c8 \bali d16 \bami c b a b8 \bali c16 \bami b a g a8 \bali \staffup a'16 \bare g a8~ a \bali g16 \bare fis g8~
            %% Takt 10 =============================================
            g8 \bali fis16 \bare e! fis8 g16[ a b a g f] es8 \bali f16 \bami es d c d8 \bali es16 \bami d c b
            \staffdown c16[ b a b c d] \staffup es[ f es d c b] c[ es g f! es d] es8 \bali f16 \bami es d c
            b8 c\rest c\rest c\rest es16 d c b a8 e'\rest e\rest e\rest f!16 es d c
            b8 e\rest e\rest e\rest g16 f es d es4 d8 g16 f! es d c b
            e!4.~ e16 g fis e d cis d8 \bali g16 \bami f es d es8 \bali f16 \bami es d c
            %% Takt 15 =============================================
            h8 \bali d16 \bami c h a h8 \bali c16 \bami h a g c8 \bali es16 \bami d c h c8 g c8
         }
      }
      h1
   }
}

tenor = {
   \new Voice \relative g {
      \global
      \halsneutral
      \compressMusic #'( 2 . 3 ) {
         r8 g16 f es d es8 \bali f16 \bami es d c g'4.~ g4 fis8
         g8 r r r4. r8 g16 f! es d es8 \bali f16 \bami es d c
         g'4.~ g4 fis8 g4 b8~ b4 a8
         r8 b16 a g f! g8 \bali a16 \bami g f es f8 a4~ a8 g4~
         %% Takt 5 ==============================================
         g8 \bali a16 \bami g f e! f8 \bali g16 \bami f e d cis8 \bali d16 \bare e f8 g e a~
         a8 \bali b16 \bami a g fis g8 b4~ b4.~ b4 a8
         b8 \bali d16 \bami c b a b8 \bali c16 \bami b a g a4.~ a4 g8~
         g4.~ g4 fis8 g8 \bali g16 \bami f es d es8 \bali f16 \bami es d c
         \repeat volta 2 {
            \tieDown g'2.~ g8 \tieNeutral \bali f16 \bami es d c d8 \bali es16 \bami d c b
            %% Takt 10 =============================================
            c8 \bali d16 \bami c b a b8 g b'~ b \bali a16 \bare g a8~ a \bali g16 \bare fis \tieDown g8~
            g4.~ \tieNeutral g8 \bali g16 \bare fis g8~ g4.~ g8 \bali a16 \bare g fis!8~
            g8 \bali b16 \bami a g fis g4.~ g8 \bali c16 \bami b a g a4.~
            a8 \bali d16 \bami c b a b4.~ b8 \bali b16 \bami a g fis g4.~
            g8 \bali b16 \bami a g fis g4.~ g4.~ g4 fis!8
         %% Takt 15 =============================================
            g8 h fis g d f es \bali g16 \bami f es d es8 \bali f16 \bami es d c
         }
      }
      d1 \bar "|."
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
   \relative es {
      r2
      \compressMusic #'( 2 . 3 ) {
         r8 es b c a d
         g,8 b fis g d f es es' h c c, r
         r8 es' b! c a d g, g' d es c f
         b,4. r4. r8 f' c d b es
         %% Takt 5 ==============================================
         a,2. r2.
         r8 d a b g es'~ es g d es c f
         b,8 b' f g e a a, f' c d b es
         c es b c a d g,2.
         \repeat volta 2 {
            R1.
            %% Takt 10 =============================================
            R1.
            r2. r8 es' b c a d
            g,8 d' a b g es' a, es' b c a f'
            b,8 f' c d b g' c, g' d es c g'
            cis, g' d e! cis g' d es b c a d
            %% Takt 15 =============================================
            g,1.~
         }
      }
      g1
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
            \transpose d d, \pedal
         }
      >>
   }

   \midi {
      \context {
         \Score
         tempoWholesPerMinute = #(ly:make-moment 44 4)
      }
   }
}
