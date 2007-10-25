\version "2.10.33"

\header {
 mutopiatitle = "Christum wir sollen loben schon"
 mutopiacomposer = "BachJS"
 mutopiaopus = "BWV 611"
 mutopiainstrument = "Organ"
 date = "1715"
 source = "Autograph"
 style = "Baroque"
 copyright = "Creative Commons Attribution-ShareAlike 3.0"
 maintainer = "Urs Metzger"
 maintainerEmail = "urs@ursmetzger.de"
 lastupdated = "2007/Oct/24"

 title = "Christum wir sollen loben schon"
 subtitle = "Choral in Alto"
 composer = "Johann Sebastian Bach"
 opus="BWV 611"
 footer = "Mutopia-2007/10/25-1081"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

global = {
   \key a \minor
   \time 4/4
   #(set-accidental-style 'default)
   \override Score.MetronomeMark #'transparent = ##t
}

\paper {
   ragged-bottom = ##f
   ragged-last-bottom = ##t
}

#(set-default-paper-size "a4" 'landscape)

halsup        = { \stemUp \tieUp }
halsdown      = { \stemDown \tieDown }
halsneutral   = { \stemNeutral \tieNeutral }
shifttiedown  = { \once \override Tie #'extra-offset = #'( 0 . -0.5 ) }
shifttieup    = { \once \override Tie #'extra-offset = #'( 0 . 0.5 ) }
staffup       = { \change Staff = "right" \halsdown }
staffdown     = { \change Staff = "left" \halsup }

sopran = {
   \new Voice \relative b'' {
      \global
      \halsup r16 b[ a g f e d cis] d8 c16 b a8 g16 a
      b16 f' e d cis d d\prall cis32 d e16 a, h cis d e f8~
      f8 e d16 c! h a gis\fermata a a\prall gis32 a h4
      r16 c' h a g f e d c8. d16 e b' a g
      %% Takt 5 ==============================================
      f16 e d e f d g8~ g16~ c, f8~ f16 e f g
      c,8 a'~ a16 e f g a\fermata g a h c4
      r16 g f e d4~ d16 h c d e8 a~
      a16 g f e d8. d16 e d c h c8 c'~
      c16 b a g f e f g e d c d e f g a
      %% Takt 10 =============================================
      b16 a g f e f f\prall e32 f g16 f e d cis8 a'~
      a16 b a g f e d cis d b a g f e d8
      r4 r16 a'' g f e4~ e16 f g a
      b8. a16 g f e d cis h! a8~ a16 h gis a
      h16 a gis a h c! d e c h a h c d e f
      %% Takt 15 =============================================
      gis,16[ a32 h a8~] a16[ h32 a gis h d16] c8.[ d32 c] \tempo 4=30
          <<  \new Voice { \stemUp h16[ \tempo 4=22 e32 \tempo 4=18 dis \tempo 4=8 e8]^\fermata }
              \new Voice { \stemDown h4 } >>
   }
}

alt = {
   \new Voice \relative d' {
      \global
      \halsdown \dotsDown
      d4~ d8. e16 f4 f
      g4 a2 d,4
      g4 f e2
      g!2 a8. h16 c4
      %% Takt 5 ==============================================
      c4 h!8. b16 a8. as16 g4
      a!8. h!16 c4 c2
      g2 g8 a16 h c4
      c4 h!8. b16 a8. as16 g4
      a!8. b16 c4 g8. f16 e4~
      %% Takt 10 =============================================
      e8. f16 g4 a2
      d,4~ d8. e16 \shifttiedown f4~ \once \override Stem #'details #'beamed-lengths = #'( 3.9 ) f8. g16
      a8. b16 c4~ c8. b16 a4
      g8. f16 e8. f16 g4 f
      e1~
      %% Takt 15 =============================================
      e1
   }
}

tenor = {
   \new Voice \relative d {
      \global
      \halsneutral
      r8  d8. \set stemRightBeamCount = #2 \set stemLeftBeamCount = #1 e16 \set stemLeftBeamCount = #2 f g a b a g f e d cis
      d8[ b'] a g16 f e d' cis h a g f e
      d16 cis d e f g a h c!8 h16 a gis h c d
      e8 d16 c h8 e~ e16 d c h \once \override Stem #'details #'beamed-lengths = #'( 4.8 ) a8 \clef "treble" a'~ \revert Stem #'details #'beamed-lengths
      %% Takt 5 ==============================================
      a16 g f e d8. d16 e d c h! \clef "bass" c4~
      c16 e, f g a h c d e c f8~ f16 e d c
      h16 e d c h a g f \once \override Stem #'details #'beamed-lengths = #'( 5.3 ) e \clef "treble" f' e d \revert Stem #'details #'beamed-lengths c b' a g
      f16 e d e f d g8~ g16 c, f8~ f16[ e32 d e8]
      f8. g16 a8 c,~ c16 f e d \clef "bass" c8~ g~
      %% Takt 10 =============================================
      g16[ a b8.] a16 h8 a16 h cis d e cis d e
      f,8. b16 a g f e d cis d b a g f e
      \stemUp d16 \stemDown d'' c b \stemNeutral a4~ a16 b c d e4~
      e16 d cis8~ cis8. d16 e d e cis d4~
      d16 c! h a gis8 h~ h16 d c h a8. h16
      %% Takt 15 =============================================
      c8. d32 c h4~ h16[ c32 h a8~] a16[ gis32 fis gis8]
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
   \relative d, {
      \global
      d2~ d8[ d'8. \set stemLeftBeamCount = #1 \set stemRightBeamCount = #2 c16 \set stemLeftBeamCount = #2 b a]
      g8[ g'8.] f16 e d cis8[ f8.] e16 d c
      h!8 cis d4 e2
      e,8[ e'8.] d16 c! h a8[ a'8.] g16 f e
      %% Takt 5 ==============================================
      d8[ g8.] f16 e d c8[ c'8.] b16 a! g
      f8[ f,8.] g16 a h! c8[ c,~] c d
      e8[ f8.] g16 a h c8[ a'8.] g16 f e
      d8[ g8.] f16 e d c8[ c'8.] b16 a! g
      f8[ f,8.] g16 a b c8[ c,8.] d16 e f
      %% Takt 10 =============================================
      g8[ g'8.] f16 e d cis8[ a'8.] g16 f e
      d2 d,4~ d8. e16
      f4~ f8. g16 a8. b16 c4~
      c8[ e8.] d16 cis h! a8[ d8.] c16 h a
      <<
         \new Voice \relative d    { \stemUp r8 d8. \set stemLeftBeamCount = #1 \set stemRightBeamCount = #2 e16 \set stemLeftBeamCount = #2 fis gis a2
                                     \stemDown r4 \stemUp e,2._\fermata }
         \new Voice \relative gis, { \stemDown gis4 e r8 a8. \set stemLeftBeamCount = #1 \set stemRightBeamCount = #2 h16 \set stemLeftBeamCount = #2 c d
                                     e1 }
      >> \bar "|."
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
   }
}

\score {
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
      \context Staff = cf {
         \set Staff.midiMaximumVolume = #0.5
         \set Staff.midiInstrument = "recorder"
         \transpose d' d'' \alt
      }
      \context Staff = pedal {
         \set Staff.midiInstrument = "church organ"
         \transpose d d, \pedal
      }
      \new Staff {
         \set Staff.midiInstrument = "tuba"
         \transpose d d, \pedal
      }
   >>

   \midi {
      \context {
         \Score
         tempoWholesPerMinute = #(ly:make-moment 44 4)
      }
   }
}
