\version "2.10.33"

\header {
 mutopiatitle = "Christus der uns seelig macht"
 mutopiacomposer = "BachJS"
 mutopiaopus = "BWV 620"
 mutopiainstrument = "Organ"
 date = "1715"
 source = "Edition Peters 8660"
 style = "Baroque"
 copyright = "Creative Commons Attribution-ShareAlike 3.0"
 maintainer = "Urs Metzger"
 maintainerEmail = "urs@ursmetzger.de"
 lastupdated = "2007/Nov/5"

 title = "Christus der uns seelig macht"
 subtitle = "in Canone al' Ottava"
 composer = "Johann Sebastian Bach"
 opus="BWV 620"
 footer = "Mutopia-2007/11/10-1131"
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
   head-separation = 0 \cm
   ragged-bottom = ##f
   ragged-last-bottom = ##f
}

#(set-default-paper-size "a4" 'landscape)
#(set-global-staff-size 18)

halsup        = { \stemUp \tieUp \slurUp }
halsdown      = { \stemDown \tieDown \slurDown }
halsneutral   = { \stemNeutral \tieNeutral }
shifttiedown  = { \once \override Tie #'extra-offset = #'( 0 . -0.5 ) }
shifttieup    = { \once \override Tie #'extra-offset = #'( 0 . 0.4 ) }
shifttieupp   = { \once \override Tie #'extra-offset = #'( 0 . 0.9 ) }
staffup       = { \change Staff = "right" \halsdown }
staffdown     = { \change Staff = "left" \halsup }

sopran = {
   \new Voice \relative e'' {
      \global
      \halsup
      e4 e e e
      d4 c h f'\rest
      h,2\rest d4\rest a~
      a4 gis a4. h16 c
      %% Takt  5 ==================================================
      d2 c
      h4 d\rest d\rest \shifttieupp a~
      a4 h c8. h16 a4
      a8. g!16 f4 e d'\rest
      h4\rest \shifttieup d,~ d cis!
      %% Takt 10 ==================================================
      d4 e8 fis g2
      f2 e4 r
      a4 a a g
      f2 e
      d4 r g a
      %% Takt 15 ==================================================
      h4 c d2~
      d4 e d c
      h4 r r \shifttieup a~
      a h c8. h16 a4
      a8. g16 f!4 e2~
      %% Takt 20 ==================================================
      r4 d2 cis!4
      d4 e8 fis g4 a~
      a4 g2 f!4
      e2 r8 a4 gis16 a
      h8 e,16 fis gis8 a h c d e
      %% Takt 25 ==================================================
      dis d cis c h2\fermata
   }
}

alt = {
   \new Voice \relative a' {
      \global
      \halsdown
      r8 a4 gis16 a h8 e,16 fis gis! a gis a
      h8 e,8~ e[ dis16 e] fis a gis h a g fis! e
      dis4. e16 fis h,8 e4 d8
      cis8 c h16 c d8~ d16 c8 h16 c a f'! e
      %% Takt  5 ==================================================
      d16 h e8~ e16 d c h a8 e'8~ e[ d16 e]
      f!8 h,16 c d c d e fis a gis h a g f e
      d16 e f d \staffdown gis,4 a8 \staffup e'~ e[ c16 d]
      e8 a, r d~ d c! e16\rest e d c
      h16 d cis e d8 \staffdown a b a gis g
      %% Takt 10 ==================================================
      fis8 f e! es d4 r8 \staffup e'!~
      e8 d16 cis d4~ d8 cis!16 d e d cis h!
      a8 d~ d[ cis16 d] e8 a,16 h c!8 cis~
      cis8 h16 cis d4~ d8 cis~ cis[ h!16 cis]
      d8 a16 h cis8 d e4 \shifttiedown fis~
      %% Takt 15 ==================================================
      fis8 g4 fis8 g d' cis c
      h16 a g8~ g16 e a g fis8 f e es
      d8 e!16 d cis8 c h e~ e[ dis16 e]
      fis8 h,16 c d! c d e \staffdown a, gis a h c h a h
      c8 cis \staffup d4~ d8 c c\rest c
      %% Takt 20 ==================================================
      h16 d cis e d8 \staffdown a b16 a b a gis8 g
      fis8 f e es d g4 f16 e
      f4 a8\rest c16\rest c! h8 b a8.[ h16]
      cis8 a16 h c8 cis \staffup d2~
      d16[ c32 h c16 d] e dis e fis! gis!16 e a8 gis g
      %% Takt 25 ==================================================
      fis8 f e8. dis16 e2
   }
}

tenor = {
   \new Voice \relative a {
      \global
      r4 r8 a8~ a gis16 a h8 e,16 fis
      gis16 a fis gis a4 r8 e4 dis16 e
      fis a g! h a4. g8 fis! f
      e8 dis \shifttieup e4~ e8 e4 d16 e
      %% Takt  5 ==================================================
      f!8 h,16 c d8 e fis16 a gis h a4~
      a8 gis~ gis[ fis16 gis] a8 e~ e[ d16 e]
      f!8 h,16 c d c d e \halsdown a,4~ a16 h a h
      c8 cis d h'~ h16 gis a h c!8 e,
      d e a,16 d e f g!8 f e4
      %% Takt 10 ==================================================
      h8\rest d cis c h! b a4
      \halsneutral r8 a'~ a[ g16 a] b8 e, cis[ d16 e]
      f16 a g f e d e d cis h cis d e4~
      e8 a~ a[ b16 a] g8 a16 b! e, f g e
      a16 g f8~ f16 e d8~ d8 c!~ c[ h16 c]
      %% Takt 15 ==================================================
      d8 d'16 c h8 a h4. a16 g
      fis8 h16 c h8 b a a4 gis16 a
      h!8 e,16 fis gis e a8~ a gis a[ h16 c!]
      dis,8 a' gis g fis f e g
      f8 e d h'~ h16 gis a h c!8 e,
      %% Takt 20 ==================================================
      d8 e \halsdown a,16 d e f g f g f e d e8
      h8\rest d cis c h! b a4
      h8\rest d4 cis16 d e f e d cis! a d8
      e8. fis32 gis a4~ a8. h32 c! h16 a h a
      gis8 a h c d! c h16 a h c32 h
      %% Takt 25 ==================================================
      a16 gis a h32 a <<
                         \new Voice { \override Staff.NoteCollision #'merge-differently-dotted = ##t
                                      \halsup gis16 e \tempo 4 = 50 a8~ a[ \tempo 4 = 32 gis!16 fis] \tempo 4 = 8 gis4^\fermata }
                         \new Voice { \halsdown s16 e8.~ e2_\fermata }
                      >>
   }
}

right = {
   \clef "treble"
   <<
      \alt
      \sopran
   >>
}

left = {
   \clef "bass"
   \tenor
}

pedal = {
   \global
   \clef "bass"
   \relative e {
      r2 e4 e
      e4 e d! c
      h2 r
      r2 \shifttiedown a~
      %% Takt  5 ==================================================
      a4 gis a4. h16 c
      d2 c
      h4 r r \shifttiedown a~
      a4 h c!8. h16 \shifttiedown a4~
      a8. g!16 f4 e r
      %% Takt 10 ==================================================
      d2. cis4
      d4 e8 f g2
      f2 e4 r
      a4 a a g
      f2 e
      %% Takt 15 ==================================================
      d4 r g a
      h4 c d2~
      d4 e d c
      h4 r r \shifttiedown a~
      a4 h c8. h16 a4
      %% Takt 20 ==================================================
      a8. g!16 f4  e r
      d2. cis4
      d4 e8. fis16 g4 \shifttiedown a~
      a4 g f!2
      e1~
      %% Takt 25 ==================================================
      \override Script #'padding = #0.8 e1_\fermata \bar"|."
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
         \PianoStaff \override VerticalAxisGroup #'minimum-Y-extent = #'(-3 . 3)
      }
      \context {
         \Staff      \override VerticalAxisGroup #'minimum-Y-extent = #'(-4 . 3.5)
      }
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
         tempoWholesPerMinute = #(ly:make-moment 66 4)
      }
   }
}
