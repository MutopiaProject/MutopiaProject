\version "2.10.33"

\header {
 mutopiatitle = "O Lamm Gottes unschuldig"
 mutopiacomposer = "BachJS"
 mutopiaopus = "BWV 656"
 mutopiainstrument = "Organ"
 source = "Edition Peters 8662"
 style = "Baroque"
 copyright = "Creative Commons Attribution-ShareAlike 3.0"
 maintainer = "Urs Metzger"
 maintainerEmail = "urs@ursmetzger.de"
 lastupdated = "2007/Dec/23"

 title = "O Lamm Gottes unschuldig"
 subtitle = "3 Versus"
 composer = "Johann Sebastian Bach"
 opus="BWV 656"
 footer = "Mutopia-2007/12/29-1188"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

global = {
   \key a \major
   \time 3/2
   #(set-accidental-style 'default)
   \override Score.MetronomeMark #'transparent = ##t
   \override Score.SpacingSpanner #'average-spacing-wishes = ##f
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

halsup        = { \stemUp \tieUp \slurUp \dotsUp }
halsdown      = { \stemDown \tieDown \slurDown \dotsDown }
halsneutral   = { \stemNeutral \tieNeutral \dotsNeutral }
mmrestdown    = { \once \override MultiMeasureRest #'staff-position = #-2 }
mmrestdownn   = { \once \override MultiMeasureRest #'staff-position = #-4 }
mmrestup      = { \once \override MultiMeasureRest #'staff-position = #2 }
mmrestupp     = { \once \override MultiMeasureRest #'staff-position = #4 }
shifttiedown  = { \once \override Tie #'extra-offset = #'( 0 . -0.4 ) }
shifttieup    = { \once \override Tie #'extra-offset = #'( 0 . 0.4 ) }
shifttieupp   = { \once \override Tie #'extra-offset = #'( 0 . 0.9 ) }
staffup       = { \change Staff = "right" \halsdown }
staffdown     = { \change Staff = "left" \halsup }

sopran = {
   \new Voice \relative a' {
      \halsup
      s1.^"Vers 1"
      \repeat volta 2 {
         s1.*3
         %% Takt  5 ==================================================
         s1.*5
         %% Takt 10 ==================================================
         r2 r a
         cis1 d4.\upprall cis16 d
         e1 e2
         fis2~ fis4. e8 fis4. g8
         e1 e2
         %% Takt 15 ==================================================
         a,1 h2
         cis1 d2~
         d8 d cis h e4. fis8 e cis d h
         a1.~
         a1.
      }
      %% Takt 20 ==================================================
      \alternative {
         {
            R1.
         }
         {
            \set Score.currentBarNumber = #20
            r8 e fis gis a gis a h cis h d cis
         }
      }
      \pageBreak
      cis1 cis2
      h1 gis2
      a2~ a8 a gis fis fis4.\prall e8
      e1 e'2
      %% Takt 25 ==================================================
      e1 d2
      cis2~ cis8 cis d e fis2
      e2~ e8 g fis e d2
      cis1 fis2
      e!2. d4 cis2
      %% Takt 30 ==================================================
      h2. cis4 d4. e16 fis
      e2. d4 cis2
      d8[ e16 fis e d cis8] h1\prall
      \shifttieup a1.~
      \shifttieup a1.~
      %% Takt 35 ==================================================
      \shifttieup a1~ a8 e' gis,! d'
      <<
         \new Voice { cis1 h2\rest }
         \new Voice { \halsup \once \override Rest #'extra-offset = #'( -0.4 . 0 ) g8\rest gis a4~ a4 h\rest g2\rest }
      >>
      \repeat volta 2 {
         h8\rest^"Vers 2" e, a gis a2~ a8 fis h a
         gis8 h e dis e2~ e8 cis a' gis
         a4 dis,~ dis8 gis, dis' cis dis2~
         %% Takt 40 ==================================================
         dis8 gis, cis his cis2~ cis8 a cis h
         cis8 cis, fis e fis d gis fis gis d a' gis
         a4 cis8 h cis2~ cis8 fis, h a
         h8 e, a gis a fis d' cis \halsneutral d h a' gis
         a2 r8 a, d cis d2~
         %% Takt 45 ==================================================
         d8 e, cis' h cis d, h' a h cis, a' gis
         a8 h, gis' fis gis e gis h e4 e,
         fis8 a d4 e,8 gis cis4 d,8 fis h4
         cis,8 e a cis, d h gis' h, cis a fis' a,
         h8 gis e'4~ e8 cis fis e fis d h gis'
      }
      %% Takt 50 ==================================================
      \alternative {
         {
            a8 e a h cis a d cis d h e h
            <<
               \new Voice { cis1 h2\rest }
               \new Voice { \halsup g8\rest gis a4~ a4 h\rest g2\rest }
            >>
         }
         {
            \set Score.currentBarNumber = #50
            a8 e a h cis a d cis d2~
         }
      }
      d8 cis fis eis fis2~ fis8 gis, fis' eis!
      fis8 cis a' gis a4 eis fis8 cis fis gis
      a8 h, gis' fis gis4 dis e!8 h e d!
      cis8 cis, e dis e h e2 dis!4
      %% Takt 55 ==================================================
      e2~ e8 cis a' gis \halsup a2~
      a8 fis cis' h cis2~ cis8 fis, h4~
      h8 e, a gis a2~ a8 a d cis
      d8 gis, cis h cis2~ cis8 fis, h a
      h8 eis, a gis a4 h\rest h2\rest
      %% Takt 60 ==================================================
      d8\rest h e fis gis e h'4~ h8 a gis fis
      gis h, e dis e e, h' ais h2~
      h4 a!8 gis e'4 gis, a2~
      a1~ a4 gis
      a2 r8 a d cis d2~
      %% Takt 65 ==================================================
      d8 cis fis e \once\override Tie #'control-points = #'( ( 1.2 . 2.7 ) ( 4 . 5.2 ) ( 19 . 5.2 ) ( 24.2 . 2.3 ) ) fis1~
      fis4 s s1
      a1.
      r8 g, a e fis2~ fis
      d'2\rest a'4\rest f8\rest gis,! a2 \bar "||"
      %% Takt 70 ==================================================
      \time 9/4 <<
                    { s1.^"Vers 3" }
                    { \mmrestup R1*9/4 }
                >>
      \mmrestup R1*9/4
      d4\rest dis e fis a, gis fis gis a
      gis4 gis' a h d,! cis h cis d
      cis4 a h cis d e d2.~
      %% Takt 75 ==================================================
      d4 cis d e h a gis a h
      a4 h cis d e fis e fis d
      cis2. fis4\rest d e fis a gis!
      a4 e cis a2. r
      \mmrestup R1*9/4
      %% Takt 80 ==================================================
      fis'4\rest gis a h e, d cis dis e
      dis4 fis e dis2 e4~ e2 dis!4
      a'4\rest e fis gis2 a4 a2 gis4
      a4 a\rest a\rest h\rest fis gis a gis fis
      e2 d4 cis d e~ e2.~
      %% Takt 85 ==================================================
      e4 d e fis h, a gis a h
      cis2. fis4\rest a g fis e d
      cis4 d e~ e d e fis2 gis!4
      a2 a4\rest d,2.\rest d\rest
      \mmrestup R1*9/4
      %% Takt 90 ==================================================
      d4\rest d\rest h h gis h h fis h
      gis4 e gis a2 h4\rest gis2 h4\rest
      a2 e'4 e cis e e h e
      cis4 a cis cis a cis cis gis cis
      a4 fis a cis a cis e cis e
      %% Takt 95 ==================================================
      dis4 h dis fis dis fis h h, d
      cis4 h'\rest h\rest a2.\rest a\rest
      a4\rest a\rest h h gis h h fis h
      gis4 e gis a2 h4\rest gis2 h4\rest
      a2 h,4 cis e cis h d h
      %% Takt 100 =================================================
      cis4 e gis, a2 h4\rest gis2 h4\rest
      \bar "||" \time 3/2 \tempo 2 = 81
      a4 cis his \tempo 2 = 77 h ais \tempo 2 = 74 fis'
      gis ais h a g fis
      eis4 fis2 e2 d!4~
      d4 cis \tempo 2 = 70 his h ais \tempo 2 = 56 a
      %% Takt 105 =================================================
      gis1 \tempo 2 = 78 h2\rest
      r8 e, fis gis a h cis d e cis h a
      d2~ d8 cis d e fis d e fis
      h,2 cis8 d e2 e4~
      e8 e d cis d1
      %% Takt 110 =================================================
      cis2 h\rest h\rest
      \mmrestup R1.
      h8\rest a h cis d e fis g a g fis e                          \break
      fis2~ fis8 e d e fis a g fis
      e8 a gis! fis e d cis h a cis h a
      %% Takt 115 =================================================
      \once\override Tie #'control-points = #'( ( 1.1 . 1.6 ) ( 6.1 . 3.5 ) ( 27.2 . 3.5 ) ( 32.4 . 1.6 ) ) d1.~
      \once\override Tie #'control-points = #'( ( 1.1 . 1.6 ) ( 6.1 . 4 ) ( 27 . 4 ) ( 32 . 1.5 ) ) d1.~
      d8 h cis d d\rest a h cis \tempo 2 = 70 d e \tempo 2 = 56 fis \tempo 2 = 42 gis
      \tempo 2 = 36 a1. \bar "|."
   }
}

alt = {
   \new Voice \relative e' {
      \global
      \halsup
      R1.
      \repeat volta 2 {
         h'2\rest h\rest e,
         fis1.
         e1.
         %% Takt  5 ==================================================
         \shifttieup d1~ d8 fis e d
         cis2~ cis8 e d cis h2~
         h8 e dis e fis gis fis gis gis4.\prallprall fis16 gis
         a2~ a8 h a g fis e fis d
         gis!2~ gis8 e a4~ a8 h a gis
         %% Takt 10 ==================================================
         \halsdown a2~ a8 h a g fis e fis d
         e8 d cis h \staffdown a4 \staffup e' a2
         r8 d cis h cis4 gis a2~
         a8 a h cis d cis d4~ d2~
         d8 d cis h cis4 h8 a gis!2~
         %% Takt 15 ==================================================
         gis8 gis fis eis fis4 d2 e4~
         e8 e fis gis a4 e a8 cis h a
         gis2~ gis8 gis a4~ a gis
         r8 fis e d cis4 e \staffdown a, \staffup fis'~
         fis8 fis e d e2~ e2
      }
      %% Takt 20 ==================================================
      \alternative {
         {
            s1.
         }
         {
            \set Score.currentBarNumber = #20
            \mmrestdownn R1.
         }
      }
      e2\rest e8\rest cis dis e fis gis fis a
      dis,8 h cis dis e1~
      e8 dis e fis h,4 e~ e8 e dis!4
      e8 d! cis h cis4 \staffdown h8 a gis4 \staffup gis'
      %% Takt 25 ==================================================
      a8 d cis h cis2. h4~
      h8 e, fis gis a2. d4~
      d8 d cis h cis2. h4~
      h8 a gis! fis eis2 e\rest
      e8\rest h cis d e!2. a4~
      %% Takt 30 ==================================================
      a8 a gis fis gis4 ais h2~
      h8 cis h a! gis4 h2 e,4
      a1 gis2
      s1.
      s1 e4\rest fis~
      %% Takt 35 ==================================================
      fis8 fis e d e1~
      e4. e8~ e4 c\rest e2\rest
      \repeat volta 2 {
         cis1 dis2
         e1 e2
         fis1.
         %% Takt 40 ==================================================
         e1 e2
         \staffdown a,1 h2
         \staffup cis2. d8 cis d2
         cis2 \staffdown h1
         a1 r2
         %% Takt 45 ==================================================
         s1.*5
      }
      %% Takt 50 ==================================================
      \alternative {
         {
            s1.
            \staffup a4\rest c8\rest e8~ e4 c\rest e2\rest
         }
         {
            s1.
         }
      }
      s1.*4
      %% Takt 55 ==================================================
      s1.*5
      %% Takt 60 ==================================================
      s1.*5
      %% Takt 65 ==================================================
      g2\rest h8\rest \halsup a d cis \once \override Tie #'extra-offset = #'( -0.3 . -0.6 ) d2~
      \shiftOn d8 \shiftOff cis h a gis! h d fis e d h' gis
      d8\rest e fis cis d1
      s2 cis,8\rest \halsdown cis d4~ d2
      g2\rest <<
                  \new Voice { \stemUp   h4\rest e, \shiftOn e2 }
                  \new Voice { \stemUp   e8\rest d4. s2 }
                  \new Voice { \stemDown h2 cis }
              >>
      \break
      %% Takt 70 ==================================================
      \time 9/4
      \mmrestdown R1*9/4
      g'4\rest gis a h e, d cis dis e
      dis4 fis e dis2 e4 e2 dis!4
      h4\rest e fis gis2 a4 a2 gis4
      a4 c,\rest c\rest c\rest fis gis a gis fis
      %% Takt 75 ==================================================
      e2 d4 cis d e~ e2.~
      e4 d e fis \staffdown h, a gis a h
      e,2 \staffup e'4 a2 g!4 fis e d
      e2. c4\rest e cis \staffdown a2.
      \staffup g'4\rest cis d e a, gis fis gis a
      %% Takt 80 ==================================================
      gis4 h a gis a h a h gis
      \shiftOn \halsup a2.~ a4 fis gis a gis fis
      h2. \once \override Rest #'extra-offset = #'( -0.6 . -0.2 ) \once \override Rest #'font-size = #-1 d4\rest h cis d! cis h
      a4 \shiftOff \halsdown cis d e a, gis fis gis a
      gis4 a h a h cis h a gis
      %% Takt 85 ==================================================
      a2.~ a4 gis fis gis c,\rest c\rest
      e4\rest a g fis h cis d cis h
      \halsup \once \override Tie #'extra-offset = #'( 0 . -0.1) a1.~ \shiftOn a2 h4
      cis2 \shiftOff \halsdown h4\rest g2.\rest g\rest
      e4\rest e\rest fis fis dis fis fis cis fis
      %% Takt 90 ==================================================
      dis4 h dis e2 c4\rest dis!2 c4\rest
      e2 d!4 cis2 c4\rest d2 c4\rest
      e2 \staffdown gis,4 a2.~ a2 gis4
      a4 \staffup cis e~ e cis fis~ fis2 eis4
      c4\rest cis fis c4\rest cis fis c4\rest cis gis'
      %% Takt 95 ==================================================
      e4\rest dis fis dis fis a e gis h
      a4 e' a, h e gis, a dis fis,
      gis2 dis4 e2 c4\rest dis!2 c4\rest
      e2 e'4 e cis e e h e
      cis4 a gis a2 a4 gis2 gis4
      %% Takt 100 =================================================
      a2 e4 e cis e e h e
      \time 3/2 e4 cis dis eis fis a
      gis4 g \halsup fis8 \shiftOn gis a!4 h his
      cis2 dis4 cis2 h!4~
      h4 a fis gis cis, dis!
      %% Takt 105 =================================================
      \shiftOff eis1 g2\rest
      \mmrestdownn R1.
      \halsdown g8\rest h a gis fis e d cis h fis' gis a
      gis4 a8 h a4. gis8 a2~
      a2~ a8 a gis! a h gis a h
      %% Takt 110 =================================================
      e,2 e\rest e\rest
      h'8\rest d cis h a g fis e d fis e d
      cis2 g'8\rest h a g fis a h cis
      d2 g,\rest g\rest
      \mmrestdown R1.
      %% Takt 115 =================================================
      r8 h, cis d e fis gis! a gis h a gis
      a1 \halsup h2
      \shiftOn a2 gis \shiftOff \halsdown h
      cis1.
   }
}

tenor = {
   \new Voice \relative a {
      \global
      \halsup
      a2 \staffup cis4._\mordent d8 d4._\prallprall cis16 d
      \repeat volta 2 {
         e2 e\rest e~
         e8 e d cis \shifttieup d1~
         d8 d cis h cis1~
         %% Takt  5 ==================================================
         cis8 cis \staffdown h a h1~
         h8 h a gis a2~ a8 a gis fis
         gis4. gis8 a h a h e, h' \staffup e4~
         e8 e d cis \shifttieup d1~
         d8 fis e d \staffdown cis h cis a h4 d~
         %% Takt 10 ==================================================
         d8 d cis h cis2 d
         a2 s1
         s1.
         s1.
         s1.
         %% Takt 15 ==================================================
         s1.
         s1.
         s1.
         s1 s4 d~
         d2~ d8 d cis h cis2
      }
      %% Takt 20 ==================================================
      \alternative {
         {
            e8\rest gis, a h \staffup cis d cis d d4._\prallprall cis16 d
         }
         {
            \set Score.currentBarNumber = #20
            s1.
         }
      }
      s1.*9
      %% Takt 30 ==================================================
      s1.*3
      \staffdown a8\rest e fis gis a h \staffup cis d e2~
      e8 \staffdown a, h cis \staffup d e fis \staffdown cis d2~
      %% Takt 35 ==================================================
      d2~ d8 d cis h cis4 h
      a2 cis8 a e' gis, a2
      \repeat volta 2 {
         s1.*13
      }
      %% Takt 50 ==================================================
      \alternative {
         {
            s1.
            s2 cis8 a e' gis, a2
         }
         {
            \set Score.currentBarNumber = #50
            s1.
         }
      }
      r2 r cis
      cis1 cis2
      h1 gis2
      a2 gis fis
      %% Takt 55 ==================================================
      e1 \staffup e'2
      e1 d!2
      cis2~ cis8 cis fis e fis2
      e2. d8 cis d2
      \staffdown cis2~ cis8 a \staffup d cis fis d gis a16 h
      %% Takt 60 ==================================================
      e,!2~ e4. d8 cis2
      \staffdown h2~ h4. cis8 \staffup d!( cis) e( dis)
      e2~ e4. d!8 cis a d cis
      e8 d fis e d4 cis \staffdown h2
      a1 r2
      %% Takt 65 ==================================================
      \staffup c8\rest e d cis d g fis e fis d a' gis
      a4 s s1
      e2\rest e8\rest g a e fis2
      \staffdown s1 a,2
      r8 d, fis a~ a2~ a
      %% Takt 70 ==================================================
      s4*9*5
      %% Takt 75 ==================================================
      s4*9*5
      %% Takt 80 ==================================================
      s4*9*5
      %% Takt 85 ==================================================
      s4*9
      s4*9
      \staffup c2.\rest c4\rest fis e d2.
      e2 c4\rest s1.
      s4*9
      %% Takt 90 ==================================================
      s4*9*5
      %% Takt 95 ==================================================
      s4*9
      s4*9
      s2. \staffdown h2 c4\rest a2 c4\rest
      h4 cis \halsneutral d! cis a cis e d e
      s4*9
      %% Takt 100 =================================================
      s4*9
      \times 3/2
      \halsneutral a,2. gis4 fis d'!~
      d4 cis dis8 eis fis2 \staffup a8 gis!
      a2 gis fis
      eis4 fis dis eis! fis his,
      %% Takt 105 =================================================
      cis1 e2\rest
      s1.*9
      %% Takt 115 =================================================
      s1.
      \staffup c2\rest fis e
      fis2 d1
      \dotsUp e1.
   }
}

bass = {
   \new Voice \relative e {
      \global
      R1*3/2
      \repeat volta 2 {
         r4 e fis8 gis fis gis gis4.\prallprall fis16 gis
         a2~ a8 h a g fis e fis d
         a'2~ a8 fis e d cis h cis a
         %% Takt  5 ==================================================
         \halsdown fis'2~ fis8 a gis! fis gis2
         a4 a, cis4. d8 d4._\prallprall cis16 d
         e2 r e
         \halsneutral fis1.
         \halsdown e1.
         %% Takt 10 ==================================================
         a1.~
         a2~ a8 h a g fis e fis d
         \halsneutral a'2~ a8 fis e d cis h cis a
         d2~ d8 h a g fis e fis d
         a'2~ a8 gis! a h cis d cis e
         %% Takt 15 ==================================================
         \tieDown fis,2~ fis8 cis'' h a gis fis gis e!
         \tieNeutral a2~ a8 h a gis fis e fis d
         e8 fis e d cis h cis a e'4 e,
         \shifttiedown a2~ a8 h a g fis e fis d
         a'1 r8 h' a gis!
      }
      %% Takt 20 ==================================================
      \alternative {
         {
            a8 d, cis h a2 h2\rest
         }
         {
            \set Score.currentBarNumber = #20
            a'4 a, r2 r
         }
      }
      \halsneutral r8 e' fis gis a1~
      a2 gis8 gis, a h cis dis cis e
      fis,4 fis' gis4. a8 h4 h,
      \halsdown e2~ e8 a gis fis e d! e cis
      %% Takt 25 ==================================================
      \halsneutral fis2~ fis8 cis' h a gis fis gis e
      a2~ a8 a, h cis d e d fis
      g,!2~ g8 d' e fis g! a g h
      eis,4 h'~ h8 d cis h a gis! a fis
      gis2 r8 e fis gis a h a cis
      %% Takt 30 ==================================================
      dis,4 h e,8 e' d cis h a! h gis
      cis2~ cis8 e fis gis a h a cis
      fis,8 gis fis a d, e d fis \halsdown h, e d e
      cis2~ cis8 fis e d cis h cis a
      fis'2~ fis8 h a g! fis e fis d
      %% Takt 35 ==================================================
      a'1.
      \halsdown a2 d,\rest d8\rest e cis e
      \repeat volta 2 {
         \halsneutral a,2 r8 fis' h a h4 h,
         e4 e, r8 gis' cis his cis2~
         cis8 cis his ais his2~ his8 gis cis his
         %% Takt 40 ==================================================
         cis2~ cis8 e, a! gis a4 gis
         \halsdown fis4 e d cis h e
         a,8 e' a gis a cis, fis e fis4 gis
         a4 fis d h e d
         cis8 a fis' e fis2~ fis8 d a' gis
         %% Takt 45 ==================================================
         \halsneutral a8 h a gis fis a gis fis e gis fis e
         dis4 h e2~ e8 gis cis h
         cis8 d,! h' a h cis, a' gis a h, gis' fis
         gis8 a, fis' e fis gis, e' d e fis, d' cis
         d8 e, cis' h cis a d cis d h e h
      }
      %% Takt 50 ==================================================
      \alternative {
         {
            cis8 a cis e a fis h a h gis e gis
            \halsdown a2 d,\rest d8\rest e cis e
         }
         {
            \set Score.currentBarNumber = #50
            \halsneutral cis8 a cis e a fis h a h gis e gis
         }
      }
      \halsdown a2~ a8 fis cis' his cis4 h
      a4 eis fis8 cis a' gis a4 fis
      dis4 h e!8 h gis' fis gis4 e
      a,4 h cis8 gis cis h a fis h a
      %% Takt 55 ==================================================
      gis8 e cis' h cis2~ cis8 a fis' e
      fis2~ fis8 h, h' a h4 gis8 e
      a4 gis fis e d8 fis h a
      gis8 h ais gis ais fis h ais h a gis fis
      eis8 cis fis eis fis fis, fis' e d fis h a
      %% Takt 60 ==================================================
      gis a gis fis e4 gis a dis,
      e4 fis gis e h' a!
      \halsneutral gis8 e, cis' h cis a e'4 fis e
      d4 cis h8 a cis h d cis e d
      \halsdown cis8 a fis' e fis2~ fis8 d a' gis
      %% Takt 65 ==================================================
      \halsneutral a1.~
      a1.~
      a1~ a8 cis d gis,!
      \halsdown a2~ a4. gis!8 d\rest e fis d
      a1.
      %% Takt 70 ==================================================
      \time 9/4 \tempo 2. = 90 \halsneutral r4 cis' d e a, gis fis gis a
      gis4 h a gis a h a h gis
      a2.~ a4 fis gis a gis fis
      h2. r4 h cis d! cis h
      a4 cis d e a, gis fis gis a
      %% Takt 75 ==================================================
      gis4 a h a h cis h a gis
      \halsdown a2.~ a4 gis fis gis2.
      g,4\rest a' g fis h cis d cis h
      cis2. s1.
      R1*9/4
      %% Takt 80 ==================================================
      R1*9/4
      \staffup d4\rest dis e fis \staffdown a, gis fis gis a
      gis4 \staffup gis' a \once \override NoteColumn #'force-hshift = #0.5 h d,! cis h cis d
      cis4 \staffdown \halsneutral a h cis d e d2.~
      d4 cis d e h a gis a h
      %% Takt 85 ==================================================
      a4 h cis d e fis e fis d
      e2. r r
      r4 a, g fis h cis d cis h
      a2 cis4 cis a cis cis gis! cis
      a4 fis ais h2 r4 ais!2 r4
      %% Takt 90 ==================================================
      h2 a!4 gis2 r4 h2 r4
      e,2 e4 e cis e e h e
      \halsdown cis4 a h cis e d e2.
      a2. a gis4 cis2
      \halsneutral fis,2. a ais
      %% Takt 95 ==================================================
      h2. r r4 r e
      e4 cis e e h e e a, dis
      \halsdown e4 h a gis2 d4\rest fis2 d4\rest
      e2 s4 s1.
      \halsneutral a2 e4 e cis e e h e
      %% Takt 100 =================================================
      cis4 a h cis e a e gis h
      \time 3/2
      s1.
      s1.
      r4 cis his h ais a
      gis4 a2 gis4 fis2
      %% Takt 105 =================================================
      gis1 r2
      R1.
      R1.
      r8 e fis gis a h cis d e cis h a
      fis' g fis e d cis h a gis! h a gis
      %% Takt 110 =================================================
      a8 a, h cis d e fis g a g fis e
      fis2~ fis8 e d e fis a g fis
      e2 r r
      r8 d' cis h a g fis e d fis e d
      cis4 a r2 r
      %% Takt 115 =================================================
      R1.
      r8 g'' fis e d cis h a gis! h a gis
      a1.~
      a1.
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
   <<
      \tenor
      \bass
   >>
}

pedal = {
   \clef "bass"
   \key a \major
   \new Voice {
      \relative a, {
         r2 r a
         %% Takt 70 ==================================================
         \time 9/4
         cis1. dis2.
         e1. e2.
         fis1.~ fis2.
         e1. e2.
         a,1. h2.
         %% Takt 75 ==================================================
         cis1. d2.
         cis2. h1.
         a1.~ a2.~
         a1. a2.
         cis1. dis2.
         %% Takt 80 ==================================================
         e1. e2.
         fis1.~ fis2.
         e1. e2.
         a,1. h2.
         cis1. d2.
         %% Takt 85 ==================================================
         cis2. h1.
         a1.~ a2.~
         a1.~ a2.~
         a2. r r
         R1*9/4
         %% Takt 90 ==================================================
         R1*9/4
         R1*9/4
         R1*9/4
         r2. r cis
         cis1. cis2.
         %% Takt 95 ==================================================
         h1. gis2.
         a2. gis fis
         e1.~ e2.~
         e1.~ e2.
         r2. r e'
         %% Takt 100 =================================================
         e1. d2.
         \time 3/2
         cis1 fis2
         eis4 e dis cis d2
         cis1.~
         cis1.~
         %% Takt 105 =================================================
         cis1 fis2
         e2. d4 cis2
         h2. cis4 d2
         e2. d4 cis2
         d2 h1
         %% Takt 110 =================================================
         a1.~
         a1.~
         a1.~
         a1.~
         a1.~
         %% Takt 115 =================================================
         a1.~
         a1.~
         a1.~
         a1.
      }
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
      \new Staff \with {
         firstClef = ##f
         clefGlyph = #""
         \override VerticalAxisGroup #'minimum-Y-extent = #'( 0 . 0 )
      }
      {
         \once \override Staff.TimeSignature #'break-visibility = #begin-of-line-invisible
         \stopStaff
         \skip 1.*71
         \startStaff
         \pedal
      }
   >>


   \layout{
      indent = 1.0\cm
   }
}

\score {
   \unfoldRepeats {
      <<
      \new PianoStaff
      {
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
      \new Staff \with {
         \remove "Time_signature_engraver"
         firstClef = ##f
         clefGlyph = #""
         midiInstrument = "church organ"
         \override VerticalAxisGroup #'minimum-Y-extent = #'( 0 . 0 )
      }
      {
         \stopStaff
         \skip 1.*102
         \startStaff
         \pedal
      }
      \new Staff \with {
         \remove "Time_signature_engraver"
         firstClef = ##f
         clefGlyph = #""
         midiInstrument = "tuba"
         \override VerticalAxisGroup #'minimum-Y-extent = #'( 0 . 0 )
      }
      {
         \stopStaff
         \skip 1.*102
         \startStaff
         \transpose a, a,, \pedal
      }
      >>
   }
   \midi {
      \context {
         \Score
         tempoWholesPerMinute = #(ly:make-moment 78 2)
      }
   }
}
