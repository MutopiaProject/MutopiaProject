\version "2.10.33"

\header {
 mutopiatitle = "Jesus Christus, unser Heiland"
 mutopiacomposer = "BachJS"
 mutopiaopus = "BWV 665"
 mutopiainstrument = "Organ"
 date = ""
 source = "Edition Peters 8661"
 style = "Baroque"
 copyright = "Creative Commons Attribution-ShareAlike 3.0"
 maintainer = "Urs Metzger"
 maintainerEmail = "urs@ursmetzger.de"
 lastupdated = "2008/Jan/20"

 title = "Jesus Christus, unser Heiland, der von uns den Zorn Gottes wand"
 subtitle = "(sub Communione)"
 composer = "Johann Sebastian Bach"
 opus="BWV 665"
 footer = "Mutopia-2008/01/23-1269"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

global = {
   \key e \minor
   \time 4/4
   #(set-accidental-style 'default)
   \override Score.MetronomeMark #'transparent = ##t
}

\paper {
   head-separation = 0.6 \cm
   foot-separation = 0.2 \cm
   page-top-space = 0 \cm
   ragged-bottom = ##f
   ragged-last-bottom = ##f
}

#(set-default-paper-size "a4" 'landscape)
#(set-global-staff-size 18)

halsup       = { \stemUp \tieUp \slurUp \dotsUp }
halsdown     = { \stemDown \tieDown \slurDown \dotsDown }
halsneutral  = { \stemNeutral \tieNeutral \slurNeutral \dotsNeutral }
up           = { \change Staff = "right" \halsdown }
down         = { \change Staff = "left" \halsup }

sopran = {
   \new Voice \relative e' {
      \global
      \halsup
      s1 * 4
      %% Takt  5 ==================================================
      s1
      s1
      s1
      r2 e4 h'
      h8. c!16 a4 h e,8. fis16
      %% Takt 10 ==================================================
      g4 g~ g16 g a g fis g e fis
      fis2\prall e16 h e8~ e16 d! c! h
      c8. d16 e8 a gis16 h d!8 c16 e a dis,
      e2~ e16 h e dis e h e,8
      s1
      %% Takt 15 ==================================================
      s1 * 5
      %% Takt 20 ==================================================
      s1
      s1
      s1
      g4 g g8. f16 e8. fis16
      g4 a h a
      %% Takt 25 ==================================================
      g4 fis e2~
      e4~ e16 fis e dis e2
      \halsneutral r16 g! fis f e es d c h8 c16 d e fis g a
      h16 g' fis e d c h a g e dis d cis c h a
      h4 r4 r16 h' ais a gis g fis e
      %% Takt 30 ==================================================
      d4 d d h
      d4 e fis e
      d4 r r2
      \once \override MultiMeasureRest #'staff-position = #4 R1
      \once \override MultiMeasureRest #'staff-position = #4 R1
      %% Takt 35 ==================================================
      \halsup g4 g g e
      g4 a h a
      g16 g' fis f e es d c h e dis d cis c h a
      g4 f'8\rest h16\rest g fis!8. e16 d8. c16
      h8~[ h32 g a h] c!16 h a8~ a8 g4 fis8~
      %% Takt 40 ==================================================
      fis8 e4 dis8 e4 r16 e fis g
      a4 h a8 g fis e
      d4 e fis e
      d4 cis! h r16 d c h
      a16[ h32 c d] h'\rest d16\rest f32\rest g,[ a h c8~] c16 h a8~ a16 g fis8~
      %% Takt 45 ==================================================
      fis32[ h, cis dis e8~] e16 g fis e dis! fis e d cis! e d c
      s1
      d'4 e d8 c h a
      g4 a h a
      g4 fis e2~
      %% Takt 50 ==================================================
      e32[ h c! d! e16 d] \halsdown cis8 c \halsup \once \override Rest #'X-extent = #'( 0 . 1.9 ) a''32\rest h,[ c d! e16 d] \halsdown \shiftOn cis8 \shiftOff c~
      \halsup \shiftOn c8. \shiftOff d!16 c4~ \shiftOn c16.[ \shiftOff h32 c8~] \shiftOn c4 \shiftOff
      h1
   }
}

alt = {
   \new Voice \relative e' {
      \global
      R1
      r2 h4 e
      e8. fis16 dis4\prall e4 h8. cis16
      d!4 d cis2
      %% Takt  5 ==================================================
      h2 r16 dis e fis g e fis g
      cis,16 e g8~ g16 g fis e dis fis a8~ a16 a g fis
      e16 g h8~ h16 g c! h a4~  a16 fis h a
      \halsdown g8. fis16 e8. d16 c8. d16 h8 e
      g8[ e] cis dis16 e fis a dis, h~ h c h8~
      %% Takt 10 ==================================================
      h8. h16 e8. d16 c4. e8~
      e4~ e16 cis dis8 e16 s4..
      s4. a16 dis, e8. gis!16 a4~
      a4~ a8 gis16 fis gis2
      \halsneutral r16 e d! c h8. c16 d4. c8
      %% Takt 15 ==================================================
      h8. g'16~ g8. fis16~ fis8. e16 c'8. dis,16
      h'8. cis,16 a'8. h,16 g'4~ g16 g fis e
      \halsup d4 d d8. c!16 h8. cis16
      d4 e fis e
      d4 cis h16 h' a! g fis4
      %% Takt 20 ==================================================
      g16 e' d c h8. c16 d8. e,16 c'8. fis,16
      h8. g16 c8. a16 d8. h16 c8. dis,16
      h'8. cis,16 a'8. h,16 g'4 r16 \halsdown fis e dis!
      e16 e d! c! h8. c16 d4. c8
      \down h8. g16 c8. a16 \up d8. e16 c8. d16
      %% Takt 25 ==================================================
      h8. c16 a8. h16 gis8 a h4~
      h16 h a gis a4~ a16 a gis! fis gis4
      s1
      s1
      s1
      %% Takt 30 ==================================================
      s1 * 5
      %% Takt 35 ==================================================
      s1
      s1
      g'8 g\rest g4\rest \once \override Rest #'extra-offset = #'( 1.4 . 0 ) \once \override Rest #'X-extent = #'( 0 . 2 ) h16\rest g fis f e es d c
      h4 e32\rest g[ a h c8~] c16 h a8~ a16 g fis8~
      fis32[ h, cis dis e8~] e16 g fis e dis! fis e d cis! e d c
      %% Takt 40 ==================================================
      \down h16 d c h a c h a g a g fis e4
      \up c'4\rest c8\rest c16\rest d! cis8. \down h16 a8. g16
      fis8~[ fis32 \up d' e fis] g16 fis e8~ e d4 cis8~
      cis8 \down h4 ais8 h16 g fis e d h' a g
      fis8 \up f32\rest d' e fis g a,\rest c16\rest e\rest g fis8. e16  d8.  c16
      %% Takt 45 ==================================================
      s1
      \down h16 d c h a c h a g a g fis e \up g' fis e
      d32[ c' h a g8~] g32[ g a h c8~] c16 h a8~ a16 g fis8~
      fis32~[ h, cis dis e8~] e16 g fis e dis! fis e d cis! e d c
      \down h d c h a c h a gis4~ gis16 e a8~
      %% Takt 50 ==================================================
      a8 gis \up \halsup h'16\rest e, \once \override Tie #'staff-position = #1 a8~ \halsdown
         a gis \once \override Stem #'length = #6.5 \once \override Tie #'staff-position = #-2 a4~
      a8. gis16 a4~ a32 gis! a8 gis!16 a4
      gis1
      \bar "|."
   }
}

tenor = {
   \new Voice \relative e {
      \global
      \halsup
      e4 h' h8. c!16 a4
      h8. h16 e,8. fis16 g4 g
      fis2 e8. fis16 gis8. ais16
      h8. fis16 h8. a!16 g8. fis16 e g fis e
      %% Takt  5 ==================================================
      dis4 a'16\rest dis, e fis g fis g a \halsneutral h g a h
      e,8. d'!16 c! h a g fis h, cis dis e fis g a
      h8. a16 g h e8~ e16 cis! fis e dis4
      e16 e, e' d! c! e, c' h a e a8~ a16 e fis g
      cis,16 e g8~ g16 g fis e dis fis a8~ a16 a g fis
      %% Takt 10 ==================================================
      e16 e, e' d! c! e, c' h a c e8~ e16 d c h
      ais16 cis fis ais, s8 \halsup a'16\rest a! gis8. a16 h4~
      h16 e, a8~ a16 c8. h16 d! c h a c h a
      h8 e16 dis e h8.~ h2
      g!4 g g8. f16 e8. fis16
      %% Takt 15 ==================================================
      g4 a h a
      g4 fis e16 e' d! c! h4
      c16\rest h a g fis8. g16 a4. g8
      fis8. \up d'16~ d8. cis16~ cis8. \down h16 \up \dotsUp g'8. \down ais,16
      \up fis'8. \down gis,16 \up \dotsUp e'8. \down fis,16 \up d'4~ d16 e d c!
      %% Takt 20 ==================================================
      h16 c\rest c8\rest c16\rest e d c \down h d g,8~ g16 c c,8
      f16\rest e e'8~ e16 fis, d'8~ d16 g, \up g'8~ g16 \down a, \up \once \override Tie #'staff-position = #-7 fis'8~
      fis16 h, \once \override Tie #'staff-position = #-8 e8~ e16 cis! dis8 c16\rest e d c \down h a g fis
      e4 r16 e d! c h d g,8~ g16 c c,8
      s1
      %% Takt 25 ==================================================
      s2. f'16\rest f e d
      cis4 c~ c16 c h a \shiftOn h4 \shiftOff
      g'!4 g g e
      g4 a h a
      g4 c\rest a2\rest
      %% Takt 30 ==================================================
      a2\rest c16\rest h! ais a gis g fis e
      d16 a' b h \up c! cis d e~ e[ d32 cis! d8~] d16[ cis!32 h cis8]
      a16\rest d cis c \down h b a g fis e fis gis a8 dis,!
      e16 \up g' fis f e es d c h8 c16 d e fis g a
      h16 g' fis e d c h a g e dis d cis c h a
      %% Takt 35 ==================================================
      h8 a16 h c d e! fis! g e dis d cis c \down h a
      g16 \up d' es e f fis g a~ a[ g32 fis g8~] g16[ fis32 e fis8]
      s2 \down a,16\rest d, es f g a h c
      d4 e s2
      s1
      %% Takt 40 ==================================================
      s1 * 5
      %% Takt 45 ==================================================
      s1
      s1
      s1
      s1
      s2.. \once \override Rest #'extra-offset = #'( 1.4 . 0 ) \once \override Rest #'X-extent = #'( 0 . 1.9 ) f,16\rest dis
      %% Takt 50 ==================================================
      \shiftOn e4 \shiftOff a h a~
      a32[ h c! d! e16 h] c16 gis a8~ a2
      h1\fermata
   }
}

bass = {
   \new Voice \relative g, {
      \global
      \halsdown
      g4\rest h16\rest e fis g cis, e g8~ g16 g fis e
      dis16 fis a8~ \override Stem #'details #'beamed-lengths = #'( 3.7 ) a16 a g fis \revert Stem #'details #'beamed-lengths e h e d c a h c
      fis,16 a c8~ c16 c h a gis h e8~ e16 e d! cis
      h16 fis h a! g d e fis e g h8~ h a~
      %% Takt  5 ==================================================
      a16 c h a g a g fis e16 s4..
      s1
      s1
      s1
      s1
      %% Takt 10 ==================================================
      s1
      s4 h'8. h16 e,8. fis16 gis8. e16
      a8. h16 c!8. a16 e'2~
      e16 e8.~ e4~ e2
      h4\rest d16\rest e d c h d g,8~ g16 c c,8
      %% Takt 15 ==================================================
      r16 e e'8~ e16 fis, d'8~ d16 g, g'8~ g16 a, fis'8~
      fis16 h, e8~ e16 cis dis8 e4~ e16 e d! cis!
      h4 h16\rest h a g fis a d8~ d16 g, g'8
      r16 h, h'8~ h16 cis, a'8~ a16 d, \once \override Tie #'staff-position = #4 d'8~ d16 e, \once \override Tie #'staff-position = #2 cis'8~
      cis16 fis, \once \override Tie #'staff-position = #1 h8~ h16 gis! ais8 h8 h,~ \stemNeutral h16 c! h a!
      %% Takt 20 ==================================================
      g16 r16 r8 s2.
      s1
      s1
      s1
      \halsdown r16 e e'8~ e16 fis, d'8~ d16 g, g'8~ g16 a, fis'8~
      %% Takt 25 ==================================================
      fis16 h, e8~ e16 cis dis8 e16 c h a gis4
      a2 \shiftOn e4~ \shiftOff \once \override NoteColumn #'force-hshift = #1 e16 e8.
      h'2\rest h16\rest e dis d cis c h a
      g16 d' es e f fis g a~ a[ g32 fis g8]~ g16[ fis32 e fis8]
      d16\rest g fis f e es d c h8 cis16 dis e8 ais,
      %% Takt 30 ==================================================
      h16 d! cis c h b a! g fis8 g16 a h cis d e
      fis16 d cis h! \stemUp a g fis e d \stemDown h'' ais a gis g fis e
      fis16 d e fis g8 cis, d16 e dis d cis! c h! a
      g8 a16 h c d e! fis! g e dis d cis c h a
      g16 d' es e f fis g a ~ a[ g32 fis g8]~ g16[ fis32 e fis8]
      %% Takt 35 ==================================================
      d16\rest g fis f e es d c h8 c16 d e fis g a
      h16 g fis e \stemUp d c h a g \stemDown e'' dis d cis c h a
      h16 g a h \up c d e! fis! g4 s
      s2 \down \halsneutral d8 c h a
      g4 a h a
      %% Takt 40 ==================================================
      g4 fis e h16\rest g' fis e
      d16 c h a g32[ d' e fis g8~] \halsdown g16 fis e8~ e16 d cis8~
      cis32[ fis, gis ais h8~] h16 d cis! h ais! cis h a gis! h a g
      fis16 a g fis e g fis e d e' d cis h8 c
      d8 s2..
      %% Takt 45 ==================================================
      h'8~[ h32 g a h] c16 h a8~ a g4 fis8~
      fis8 e4 dis8 e8 h\rest h16\rest h' a g
      fis8[ g32 f' e d] \clef "treble" \halsneutral c[ e fis! g a16 g] fis8. e16 d8. c16
      \clef "bass" h8~[ h32 g a h] c!16 h a8~ a g4 fis8~
      \halsdown fis8 e4 d!8~ d32[  h c d e16 d] cis8 c
      %% Takt 50 ==================================================
      h4 a s2
      s4. h16\rest dis e2~
      e1
   }
}

somevoice = {
   \new Voice {
      \global
      s1 * 12
      %% Takt 13 ==================================================
      \relative h' { s2. s16 \once \override Staff.NoteCollision #'merge-differently-dotted = ##t \stemDown h8. }
      %% Takt 14 ==================================================
      s1 * 12
      %% Takt 26 ==================================================
      \relative e, { s2. \down \once \override NoteColumn #'force-hshift = #1 e8 e' }
      %% Takt 27 ==================================================
      s1*10
      %% Takt 37 ==================================================
      \relative g, { s2 \stemDown g16\rest h c d e fis g a
                     h4 d,\rest s2 }
      %% Takt 39 ==================================================
      s1 * 11
      %% Takt 50 ==================================================
      \up <<
         \new Voice \relative e' {
            s4. \halsup \once \override Rest #'extra-offset = #'( 1.5 . 0 ) \once \override Rest #'X-extent = #'( 0 . 2 ) e16\rest dis \shiftOn e2 \shiftOff
            s2. \halsdown \once \override Rest #'extra-offset = #'( 0.4 . 0 ) c16\rest dis e8~
            e1 }
         \new Voice \relative c''' {
            \halsup s 2. c16\rest e, a dis,
            \override Tie #'staff-position = #8 e2~ e4~ \once \override Dots #'extra-offset = #'(0.5 . 0) e8. dis16
            e1\fermata
         }
      >>
   }
}

right = {
   \clef "treble"
   <<
      \sopran
      \somevoice
      \alt
   >>
}

left = {
   \clef "bass"
   <<
      \tenor
      \bass
   >>
}

pedal = {
   \global
   \clef "bass"
   \relative e, {
      R1 * 4
      %% Takt  5 ==================================================
      r2 e4 h'
      h4 a h e,
      g4 g fis2
      e1
      R1
      %% Takt 10 ==================================================
      R1*5
      %% Takt 15 ==================================================
      R1*5
      %% Takt 20 ==================================================
      g4 g g e
      g4 a h a
      g4 fis e2
      R1
      R1
      %% Takt 25 ==================================================
      R1 * 5
      %% Takt 30 ==================================================
      R1
      R1
      R1
      g4 g g e
      g4 a h a
      %% Takt 35 ==================================================
      g1~
      g1~
      g1~
      g4 r4 r2
      R1
      %% Takt 40 ==================================================
      R1
      R1
      R1
      R1
      d'4 e d8 c h a
      %% Takt 45 ==================================================
      g4 a h a
      g4 fis e8 fis g a
      h4 c d2
      e8 d! c4 h2~
      h2 <<
            \new Voice {
               \halsdown e,2~
               e2~ e2~
               e1~
               \once \override Script #'extra-offset = #'(0 . -0.6) e1_\fermata }
            \new Voice {
               \halsup s2
               s2 e'2~
               e1~
               e1 }
         >>
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
            \pedal
         }
         \new Staff {
            \set Staff.midiInstrument = "trombone"
            \transpose d d, \pedal
         }
      >>
   }
   \midi {
      \context {
         \Score
         tempoWholesPerMinute = #(ly:make-moment 68 4)
      }
   }
}
