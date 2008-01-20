\version "2.10.33"

\header {
 mutopiatitle = "Allein Gott in der Höh' sei Ehr'"
 mutopiacomposer = "BachJS"
 mutopiaopus = "BWV 664"
 mutopiainstrument = "Organ"
 date = ""
 source = "Autograph"
 style = "Baroque"
 copyright = "Creative Commons Attribution-ShareAlike 3.0"
 maintainer = "Urs Metzger"
 maintainerEmail = "urs@ursmetzger.de"
 lastupdated = "2008/Jan/17"

 title = "Trio super: Allein Gott in der Höh' sei Ehr'"
 subtitle = "a 2 Clav. e Pedale"
 composer = "Johann Sebastian Bach"
 opus="BWV 664"
 footer = "Mutopia-2008/01/20-1268"
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
   head-separation = 0.6 \cm
   foot-separation = 0.2 \cm
   page-top-space = 0 \cm
   ragged-bottom = ##f
   ragged-last-bottom = ##f
}

#(set-default-paper-size "a4" 'landscape)
#(set-global-staff-size 18)

shiftscriptright  = { \once \override Script #'extra-offset = #'( 0.5 . 0 ) }
shifttiedown      = { \once \override Tie #'extra-offset = #'( 0 . -0.4 ) }
shifttieup        = { \once \override Tie #'extra-offset = #'( 0 . 0.4 ) }
shifttieupp       = { \once \override Tie #'extra-offset = #'( 0 . 0.9 ) }

right = {
   \new Voice \relative a' {
      \global
      \partial 8 a16 h
      cis h a cis d cis h a e' d cis d e4~\mordent
      e8 d d4~\mordent d16 e d h cis d cis a
      h16 cis d e fis e d e cis h a h cis dis e dis
      e4 r r r8 h
      %% Takt 5 ===================================================
      cis16 h cis e dis cis dis fis e2~\mordent
      e4 dis\prall e r8 e
      d!16 cis d fis e d e g fis4 r8 fis
      e16 d e gis! fis e fis a gis8 e a cis,
      h8 a' e gis a4  r16 h, cis d
      %% Takt 10 ==================================================
      e16 d e g fis e d cis h a gis! fis e d e gis
      fis16 e fis a gis fis gis h a h a fis g a g e
      fis16 e d cis h cis d e d cis h a cis'4~
      cis8 h h4~\mordent h16 cis h gis a h a fis
      gis16 fis gis h ais gis ais cis h8 h'16 ais h4~
      %% Takt 15 ==================================================
      h8 a! a4~\mordent a16 h a fis gis a gis e
      fis16 gis fis dis e fis gis e a h a fis gis a h8
      e,2~ e16 cis dis8 r dis
      e4 fis h, e~
      e8 fis h, dis e4 r8 gis,
      %% Takt 20 ==================================================
      ais16 gis ais cis his ais his dis cis8 cis, cis'4~\mordent
      cis8 h! h4~\mordent h16 cis h gis a! h a fis
      gis16 fis gis h ais gis ais cis h8 h, h''4~\mordent
      h8 a! a4~ a16 h a fis gis a gis e
      fis e fis a gis fis gis h a2~
      %% Takt 25 ==================================================
      a4 gis a r
      r2 r4 r8 a,
      h16 a h d cis h cis e d2~
      d2~ d8 cis d16 e fis g
      a16 g a c h a g fis e d cis! h a gis! a cis
      %% Takt 30 ==================================================
      h16 a h d cis h cis e d e d h c d c a
      h16 a g fis e fis g a fis e d e fis gis a gis
      a4  r8 a g16 fis e fis gis ais h ais
      h4 r8 e a,!16 gis! a cis h a h d
      cis16 h cis e a, gis a cis fis, a d, fis h, fis' e d
      %% Takt 35 ==================================================
      cis16 e a, cis e a cis, e a cis e, a cis e a, cis
      e2~\prall e16 d e a e a cis, e
      d16 cis d a' d, fis h, d cis h cis a' cis, e a, e'
      fis16 e fis a fis a d, fis e a cis, a' d, a' h, a'
      cis,16 a' a, h cis d e fis g a g a, g' a g a,
      %% Takt 40 ==================================================
      fis'16 g fis a, fis' g fis a, e' fis e a, e' fis e a,
      d16 e d fis, d' e d gis,! cis d cis e, cis' d cis fis,
      h16 cis h dis, h' cis h eis, a h a eis! fis gis a h
      cis16 h cis d! cis h a gis h a gis fis a gis fis eis
      fis16 eis fis a gis fis gis h a gis a cis fis eis fis a
      %% Takt 45 ==================================================
      dis,16 cis dis fis gis fis gis h fis eis dis! cis fis4~
      fis4 eis fis r16 a, cis fis
      h,16\prall a h8 r16 gis h e a,\prall gis a8 r16 fis a d
      gis,16\prall fis gis8 r4 h2~
      h16 gis ais fis' e! g cis, e ais,! gis! ais e' cis e ais, cis
      %% Takt 50 ==================================================
      fis,8 h dis fis a! fis dis a~
      a16 fis gis e' d! f h, d gis, fis! gis d' h d gis, h
      e,8 a cis e g e cis g
      fis16 e fis a fis a e g fis e fis a fis a e g!
      fis16 e fis a d fis a, c h a h e d g h, d
      %% Takt 55 ==================================================
      cis!16 h cis e fis a cis, e d16 cis d e cis8.\prall d16
      d4 \clef "bass" fis,,16 a d, fis a d fis, a d fis a, d
      \clef "treble" fis16 a d, fis a d fis, a d8 a fis d
      r8 d' h g r d' a fis
      r8 d' g, e fis d' e, cis'
      %% Takt 60 ==================================================
      d,8 a' d16 e fis g a2~\prall
      a4 g2\prall \once \override Script #'extra-offset = #'( 0 . 0.3 ) fis4~\prall
      fis4 e2\prall d4~\prall
      d4 cis2\prall h4~\prall
      h4 ais4\prall h4 r8 h16 cis
      %% Takt 65 ==================================================
      d8 h e h fis'16 e d e fis4~
      fis8 e e4~\mordent e16 fis e cis d e d h
      cis16 d e fis g fis e fis d cis d fis h8 d,
      cis16 h cis e a8 cis, h16 ais h d g8 h,
      ais16 gis! ais fis' e g cis, e ais,! gis! ais e' cis e ais, cis
      %% Takt 70 ==================================================
      fis,8 h dis fis a! fis dis a~
      a16 fis gis e' d! f h, d gis, fis! gis d' h d gis, h
      e,8 a cis e g e cis g!~
      g16 e fis a h8 a~ a16 fis gis! h cis8 h~
      h16 gis a cis d8 cis~ cis16 a h d e8 d~
      %% Takt 75 ==================================================
      d16 h cis e a8 cis,~ cis16 a h d gis8 h,~
      h16 gis a cis fis8 a,~ a16 fis g h e8 g,~
      g16 e fis a d8 fis,~ fis16 d e gis! cis8 e,~
      e16 cis d fis h4~ h16 gis a8~ a16 fis g8~
      g16[ fis32 e fis16 gis!] a cis h a gis e fis gis a32[ h a gis a16 h]
      %% Takt 80 ==================================================
      cis h a cis d cis h a e' d cis d e4~
      e8 d d4~ d16 e d h cis d cis a
      h16 cis d e fis e d e cis h a h cis dis e dis
      e16 fis gis e fis gis a fis gis a h a gis fis e d!
      cis16 h cis e dis cis dis fis e8 h e4~
      %% Takt 85 ==================================================
      e8 d! d4~ d16 e d h cis d cis a
      e'8 e, fis fis'~ fis16 gis fis dis e4~
      e16 fis e cis d! e d h eis8 eis, fis fis'~
      fis16 a gis fis eis dis cis h a4~ a16 h a fis
      gis8. ais16 h8. e!16 a,16 gis! a cis d! fis e d
      %% Takt 90 ==================================================
      cis16 h cis a h8 e~ e16 d e g fis e fis a
      g16 a g e fis g fis d e8 a, a'4~
      a16 h a fis g a g e fis8 gis16 a h4~
      h8 a, cis e g e cis g~
      g16 e fis d' a d fis, a d, cis d a' fis a d, fis
      %% Takt 95 ==================================================
      h,8 gis! h \tempo 4 = 78 d f \tempo 4 = 74 h, << \new Voice { d8[ h'32 a gis!16]
                                        a1\fermata }
                           \new Voice { \stemDown \tieDown d,4~
                                        \tempo 4 = 70 d16 cis d8~ \tempo 4 = 66 d16 \tempo 4 = 58 e d \tempo 4 = 36 h \once \override Script #'extra-offset = #'( 0 . -2 ) cis2\fermata } >>
      \bar "|."
   }
}

left = {
   \new Voice \relative e' {
      \global
      \partial 8 r8
      r2 r4 r8 e
      fis16 e fis a gis fis gis h a2~\mordent
      a4 gis\prall a r8 e16 fis
      gis fis e gis a gis fis e h' a gis a h4~\mordent
      %% Takt 5 ===================================================
      h8 a a4~\mordent a16 h a fis gis a gis e
      fis16 gis a h cis h a h gis fis e fis gis ais h ais
      h4 r8 h a!16 gis! fis gis a h cis h
      cis4 r8 dis e16 fis e d cis h a gis
      fis16 e d cis h cis d e d cis h a a'4~\mordent
      %% Takt 10 ==================================================
      a2~ a16 fis gis8 r gis
      a4 h e, a~
      a8 h e, gis! a4 r8 cis,
      dis16 cis dis fis eis dis eis gis fis8 fis'16 eis fis4~
      fis8 e! e4~\mordent e16 fis e cis d! e d h
      %% Takt 15 ==================================================
      cis h cis e dis cis dis fis e2~
      e2~ e8 dis e16 fis, gis a
      h16  a h d! cis h a gis fis e dis cis h a h dis
      cis16 h cis e dis cis dis fis e fis e cis d e d h
      \clef "bass"cis16 h a gis fis gis a h a gis fis e \clef "treble"gis'4~
      %% Takt 20 ==================================================
      gis8 fis fis4~\mordent fis16 gis fis dis e fis e cis
      dis16 cis dis fis eis dis eis gis fis8 fis, fis''4~\mordent
      fis8 e! e4~ e16 fis e cis d! e d h
      cis16 h cis e dis cis dis fis e2~
      e8 d! d4~\mordent d16 e d h cis d cis a
      %% Takt 25 ==================================================
      h16 cis d e fis e d e cis h a h cis d e cis
      fis16 e d fis g fis e d a' g fis g a4~
      a8 g g4~ g16 a g e fis g fis d
      e16 fis e cis d e fis d g a g e fis g a8
      d,2~ d16 h cis8 r cis
      %% Takt 30 ==================================================
      d4 e a, d~
      d8 e a, cis d4 r8 d,
      cis16 h a h cis dis e dis e4 r8 e
      d!16 cis d fis e d e g fis e fis a gis fis gis h
      a2~ a4 gis
      %% Takt 35 ==================================================
      a4 cis,16 e a, cis e a cis, e a cis e, a
      cis16 e a, cis e a cis, e a8 e cis a
      r8 a' fis d r a' e cis
      r8 a' d, h cis a' h, gis'
      a8 e a,16 h cis d e2~\prall
      %% Takt 40 ==================================================
      e4 d2\prall cis4~\prall
      cis4 h2\prall a4~\prall
      a4 gis2\prall fis4~\prall
      fis4 eis fis4 r8 fis16 gis
      a8 fis h fis cis'16 h a h cis4~
      %% Takt 45 ==================================================
      cis8 h h4~\mordent h16 cis h gis a h a fis
      gis16 a h cis d cis h cis a gis a cis fis8 a,
      gis16 fis gis h e8 gis, fis16 eis fis a d8 fis,
      eis16 dis eis cis' h d! gis, h eis,! dis! eis h' gis h eis, gis
      cis,8 fis ais cis e! cis ais e~
      %% Takt 50 ==================================================
      e16 cis dis h' a! c fis, a dis,! cis! dis a' fis a dis, fis
      h,8 e gis h d! h gis d~
      d16 h cis a' g b e, g cis, h! cis g' e g cis, e
      d16 cis d fis d fis cis e d cis d fis d fis cis e
      \clef "bass" d8 d, a'4~ a8 g16 fis g4~
      %% Takt 55 ==================================================
      g8 h a g fis16 e fis g e8.\prall fis16
      fis16 a d, fis a d fis, a d fis a, d \clef "treble" fis a d, fis
      a2~ a16 g a d a d fis, a
      g16 fis g d' g, h e, g fis e fis d' fis, a d, a'
      h16 a h d h d g, d' a d fis, a g d' e, d'
      %% Takt 60 ==================================================
      fis,16 d' d, e fis g a h c d c d, c' d c d,
      h'16 c h d, h' c h d, a' h a d, a' h a d,
      g16 a g h, g' a g cis,! fis g fis a, fis' g fis h,
      e16 fis e gis,! e' fis e ais, d e d ais! h cis d e
      fis16 e fis g fis e d cis e d cis h d cis h ais
      %% Takt 65 ==================================================
      h16 ais h d cis h cis e d cis d fis h ais h d
      gis,!16 fis gis h cis h cis e h ais gis! fis h4~
      h4 ais h r16 d, fis h
      e,16\prall d e8 r16 cis e a d,\prall cis d8 r16 h e g
      cis,16\prall h cis8 r4 e2~
      %% Takt 70 ==================================================
      e16 cis dis h' a! c fis, a dis,! cis! dis a' fis a dis, fis
      h,8 e gis h d! h gis d~
      d16 h cis a' g b e, g cis, h! cis g'! e g cis, e
      a,8 a'~ a16 e fis h h,8 h'~ h16 fis gis! cis
      cis,8 cis'~ cis16 gis a d d,8 d'~ d16 a h e
      %% Takt 75 ==================================================
      e,8 e'~ e16 cis a cis fis,8 d'~ d16 h gis e
      cis8 cis'~ cis16 a fis a d,8 h'~ h16 g e cis
      a8 a'~ a16 fis d fis h8 h,~ h16 e cis a
      fis8 fis'~ fis16 e gis! h cis,8.[ d16 e8. cis16]
      a8 d e fis h, h' e,[ fis16 gis]
      %% Takt 80 ==================================================
      a8 a, r4 r r8 e'
      fis16 e fis a gis fis gis h a2~
      a4 gis\prall a r8 e16 fis
      gis fis e gis a gis fis e h' a gis a h4~
      h8 a a4~ a16 h a fis gis a gis e
      %% Takt 85 ==================================================
      fis16 e fis a gis fis gis h a8 e a4~
      a16 gis a cis h a h d gis,4~ gis16 a gis e
      ais8 ais, h h'~ h16 cis h gis a h a fis
      gis8 h cis, gis'~ gis16 a gis eis fis4~
      fis16 dis e!8~ e16 d g8~ g16 e fis a~ a fis gis h~
      %% Takt 90 ==================================================
      h16 gis a d~ d e d h cis fis e8~ e16 cis d8~
      d16 h cis8\mordent d4~ d16 e d h cis d cis a
      h8 e, e'4~ e16 fis e cis d e d h
      cis16 h cis a' g b e, g cis, h! cis g' e g cis, e
      a,8 a, d fis a fis d h
      %% Takt 95 ==================================================
      \clef "bass" gis!16 fis gis f' d f h, d gis, fis! gis d' h d gis, h
      << \new Voice{ \stemUp c8\rest c16\rest fis,32 gis \once \override Script #'extra-offset = #'( 0 . 3) gis8._\prallprall fis32 gis \once \override Script #'extra-offset = #'( 0 . 2 ) a2_\fermata }
         \new Voice{ e1_\fermata }
      >>
   }
}

pedal = {
   \global
   \clef "bass"
   \relative a, {
      \partial 8 r8
      a4 h cis r8 cis
      d4 e fis r8 e
      d8 h e e, a a' gis8. fis16
      e4 fis gis r8 gis
      %% Takt 5 ==============================================
      a4 h cis r8 h
      a8 fis h h, e, e' d!8. cis16
      h4 cis d r8 d,
      a'8 a' dis, h e cis fis e
      d!8 h e e, a4 r8 a
      %% Takt 10 ==================================================
      cis8 a d h e2~
      e4 d cis8 h cis a
      d4 e a, r8 a
      h4 cis fis, r8 d'!
      e4 fis h, r8 gis'
      %% Takt 15 ==================================================
      a4 h cis r8 h
      a8 fis gis e fis h, e8. fis16
      gis8 e a fis h2~
      h4 a gis8 fis gis e
      a4 h e, r8 e
      %% Takt 20 ==================================================
      fis4 gis cis, r8 a!
      h4 cis fis, r8 dis'
      e4 fis h, r8 gis
      a4 h e, r8 cis'
      d4 e fis r8 e
      %% Takt 25 ==================================================
      d8 h e e, a g fis e
      d4 e fis r8 fis'
      g4 a h r8 a
      g8 e fis d e a, d8. e16
      fis8 d g e a2~
      %% Takt 30 ==================================================
      a4 g fis8 e fis d
      g4 a d,8 d' cis h
      a8 a, g fis e e' d! cis
      h4 cis d r8 h
      fis'8 e fis cis d h e e,
      %% Takt 35 ==================================================
      a4 r r2
      a4 r r r8 a'
      a8 a, r a' a a, r a'
      a8 a, r a' a a, r a'
      a4 r r8 a, cis a
      %% Takt 40 ==================================================
      r8 d fis d r a' cis a
      h8 a gis e a gis fis e
      dis8 gis eis cis fis gis a fis
      h8 gis cis cis, fis4 r
      r2 r8 fis a fis
      %% Takt 45 ==================================================
      h8 h, d! h cis a d cis
      h8 gis cis cis fis,4 r8 fis'
      gis4 r8 gis a4 r8 h~
      h8 a gis fis gis fis eis cis
      fis4 r fis, r
      %% Takt 50 ==================================================
      h4 r h r
      e4 r e, r
      a4 r a r
      d4 r h r
      fis4 r8 fis g4  r8 g
      %% Takt 55 ==================================================
      a4 r8 a h g a4
      d,4 r r2
      d4 r r r8 d'
      d8 d, r d' d d, r d'
      d8 d, r d' d d, r d'
      %% Takt 60 ==================================================
      d4 r r8 d, fis d
      r8 g h g r8 d' fis d
      e8 d cis a d cis h a
      gis!8 cis ais fis h cis d h
      e8 cis fis fis, h4 r
      %% Takt 65 ==================================================
      r2 r8 h d h
      e8 e g e fis d g! fis
      e8 cis fis fis, h4 r8 h
      cis4 r8 cis d4 r8 e~
      e8 d cis h cis h ais fis
      %% Takt 70 ==================================================
      h4 r h r
      e4 r e, r
      a4 r a r
      d4 r8 dis e4 r8 eis
      fis4 r8 fis gis4 r8 gis
      %% Takt 75 ==================================================
      a4 fis d! e
      fis4 d h cis
      d4 h gis! a
      h4 gis a8 fis cis' a
      d8 h cis d e d cis h
      %% Takt 80 ==================================================
      a4 h cis r8 cis
      d4 e fis r8 e
      d8 h e e, a a' gis8. fis16
      e2~ e8 e, e' gis
      a8 fis h h, e,4 r
      %% Takt 85 ==================================================
      r2 a2
      cis4 d e4. d!8
      cis4 h cis2
      r2 cis
      cis4 h8. cis16 d8 cis h4
      %% Takt 90 ==================================================
      a8 fis gis4 \override Tie #'staff-position = #-4 a2~
      a1~
      a1~
      a1~
      a1~
      %% Takt 95 ==================================================
      a1~
      a1_\fermata
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
            \set Staff.midiInstrument = "pan flute"
            \right
         }
         \context Staff = right {
            \set Staff.midiInstrument = "recorder"
            \transpose g' g'' \right
         }
         \context Staff = left {
            \set Staff.midiInstrument = "recorder"
            \left
         }
         \context Staff = left {
            \set Staff.midiInstrument = "recorder"
            \transpose g' g''' \left
         }
         \new Staff {
            \set Staff.midiInstrument = "recorder"
            \pedal
         }
         \new Staff {
            \set Staff.midiInstrument = "recorder"
            \transpose d d' \pedal
         }
      >>
   }
   \midi {
      \context {
         \Score
         tempoWholesPerMinute = #(ly:make-moment 82 4)
      }
   }
}
