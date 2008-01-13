\version "2.10.33"

\header {
 mutopiatitle = "Allein Gott in der Höh' sei Ehr'"
 mutopiacomposer = "BachJS"
 mutopiaopus = "BWV 663"
 mutopiainstrument = "Organ"
 source = "Edition Peters 8661"
 style = "Baroque"
 copyright = "Creative Commons Attribution-ShareAlike 3.0"
 maintainer = "Urs Metzger"
 maintainerEmail = "urs@ursmetzger.de"
 lastupdated = "2008/Jan/12"

 title = "Allein Gott in der Höh' sei Ehr'"
 subtitle = "a 2 Clav. e Pedale"
 composer = "Johann Sebastian Bach"
 opus="BWV 663"
 footer = "Mutopia-2008/01/13-1212"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

global = {
   \key g \major
   \time 3/2
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

#(set-default-paper-size "letter" 'landscape)
#(set-global-staff-size 18)

halsup        = { \stemUp \tieUp \slurUp }
halsdown      = { \stemDown \tieDown \slurDown }
halsneutral   = { \stemNeutral \tieNeutral }
mmrestdown    = { \once \override MultiMeasureRest #'extra-offset = #'( 0 . -1 ) }
mmrestdownn   = { \once \override MultiMeasureRest #'staff-position = #-2 }
mmrestdownnn  = { \once \override MultiMeasureRest #'staff-position = #-4 }
mmrestdownnnn = { \once \override MultiMeasureRest #'staff-position = #-6 }
mmrestup      = { \once \override MultiMeasureRest #'staff-position = #2 }
mmrestupp     = { \once \override MultiMeasureRest #'staff-position = #4 }
shifttiedown  = { \once \override Tie #'extra-offset = #'( 0 . -0.4 ) }
shifttieup    = { \once \override Tie #'extra-offset = #'( 0 . 0.4 ) }
shifttieupp   = { \once \override Tie #'extra-offset = #'( 0 . 0.9 ) }
staffup       = { \change Staff = "right" \halsdown }
staffdown     = { \change Staff = "left" \halsup }

sopran = {
   \new Voice \relative g' {
      \global
      \halsup
      \once \override TextScript #'extra-offset = #'( -3.4 . 1 ) r4^\markup { \column { \normalsize \bold   "Canto fermo in Tenore"
                                                                                        \normalsize \italic "Cantabile" } }
      g8 a h g fis g c g fis g
      \repeat volta 2 {
         d'8 c h a g fis e d e g c fis,
         g8 a h d, e h' a g fis e' d c
         h a h cis d1~
         %% Takt  5 ==================================================
         d8 cis d e fis2. e4~
         e4 d~ d8 cis d e e2\trill
         d8 e fis g a d, cis d h' d, e h
         c!8 d e fis g c, h c a' c, d a
         h8 a h c d g, fis g e' g, a  e
         %% Takt 10 ==================================================
         \clef "alto" fis8 d e fis g e d e a fis e fis
         h8 a g a h g fis g c g fis g
         d'8 c h a g fis e d e g c fis,
         g8 a h d, e h' a g fis e' d c
         \clef "treble" h8 g fis g c g fis g d' g, fis g
         %% Takt 15 ==================================================
         e'8 d c d e c h c fis c h c
         g'8 d c d e c h c d c h c
         d4 f\rest d2\rest d\rest
         r8 g, a h c g fis g d' f, g d
         e4  r r2 r
         %% Takt 20 ==================================================
         r8 a h  c d a gis a e' g, a e
         fis!8 g fis g a2~ a8 c h a
         g2 f'4\rest g fis!8 e dis e
         dis4. e8 fis4 f\rest g f\rest
         a2~ a8 c! h a g fis e d!
         %% Takt 25 ==================================================
         c!2 f4\rest c~ c8 c h a
         g4 a h c h8\rest e, fis dis!
         e8 h' cis dis e h a h fis' h, a h
         g'8 fis e d! c! h a g c e d f
         e8 a g f e d c h a c e g,
         %% Takt 30 ==================================================
         fis!4 d'\rest d2\rest d\rest
         h8\rest g a h c a h c d2~
         d1.~
         d4 e fis g2 fis4
      }
      \alternative {
         {
            g4 g,8 a h g fis g c g fis g \pageBreak
         }
         {
            g'8 d e f e2~ e8 e d c
         }
      }
      %% Takt 35 ==================================================
      h2~ h8 h a g fis2
      g4 d'\rest d2\rest d\rest
      \clef "alto" g,2 a h
      c1 h2
      a1 gis2
      %% Takt 40 ==================================================
      a8 c e \clef "treble" a d,cis d a' e d e g!
      fis8 e fis d g h, c! d e a, g a
      h8 d e fis g fis g g, a g' fis e
      dis8 cis h a g fis e d! \clef "alto" cis g' fis e
      dis8 cis dis h' e, dis e h' fis e fis a
      %% Takt 45 ==================================================
      g8 e d! e a f e f h f e f
      \clef "treble" c'8 e d e fis,! e fis e' gis, fis gis d'
      c8 h c a' d, c d a' e d e g!
      f2~ f8 e d c h a g f
      e8 d e gis fis! e fis a gis! fis gis h
      %% Takt 50 ==================================================
      a1~ a8 a h c
      d8 h c d e2~ e8 f e d
      c8 a gis a d a gis a e' g,! a e
      fis8 e fis d' gis, fis gis d' a gis a d
      gis,8 fis gis h a gis a c h a h d
      %% Takt 55 ==================================================
      c8 a gis a d a gis a e' a, gis a
      d8\rest gis, a h c h c a h\rest a h gis!
      a4. a8 h\rest fis! h4 h8\rest g! d' cis
      d2~ d8 c! d e fis g e fis
      g8 fis g h~ h fis g h~ h e, fis a
      %% Takt 60 ==================================================
      g2~ g8 fis e d c h a g
      fis8 a d4~ d8 h d g f e f d
      e2 d\rest d\rest
      \mmrestup R1.
      g2 fis1~
      %% Takt 65 ==================================================
      fis2~ fis8 h, e4~ e8 a, e' dis
      e2~ e8 dis e4~ e8 e d4~
      d8 h c4~ c8 c4 c8 d\rest c h a
      g2~ g8 g fis e d!2
      \clef "alto" e8\rest e fis gis a d, cis d h'4 h\rest
      %% Takt 70 ==================================================
      a4 f'\rest h, h\rest cis h\rest
      d1.~
      d8 \clef "treble" h c d \shiftOn e \shiftOff c h c << \new Voice { \stemUp fis8 c d a }
                                                            \new Voice { \stemDown fis'4 s } >>
      g1~ g4. f8
      e1.~
      %% Takt 75 ==================================================
      e8 c h c d h c d e c d e
      a,4 d2 e fis4
      g2 f e
      f2 f\rest f\rest
      e2 d\rest d\rest
      %% Takt 80 ==================================================
      d2 d\rest d\rest
      d8\rest d f e d1~
      d8 f! e d c h a h c d e h
      c8[ d16 c h8 c16 d]~ d1~
      d8 c h d c h c e d c d f
      %% Takt 85 ==================================================
      e8 d c e d c d f e d e g
      f2 f8\rest e d c h2
      d8\rest c h a g2 h8\rest g c4~
      c8 c h a  g f e d e2~
      \clef "alto" e2~ e8 d e4~ e2~
      %% Takt 90 ==================================================
      e2 e fis
      g2 a h
      \clef "treble" c2 \once \override Tie #'staff-position = #4.1 c1~
      c8 c h a h \override Staff.NoteCollision #'merge-differently-dotted = ##t d \tempo 2 = 68 h g e'4. \tempo 2 = 50 fis8
      \tempo 4 = 30 g4 a\rest f2\rest f\rest
      \bar "|."
    }
}

mezzosopran = {
   \new Voice \relative g' {
      \global
      s1.
      \repeat volta 2 {
         s1.*13
         \override Stem #'length = #6 g2\rest \shiftOn
         \once \override NoteColumn #'X-extent = #'( 0 . 1.5 ) g4 c,\rest
         \once \override NoteColumn #'X-extent = #'( 0 . 1.5 ) a' c,\rest \shiftOff
         s1.*18
      }
      \alternative {
         {
            s1.
         }
         {
            s1.
         }
      }
      %% Takt 35 ==================================================
      s1.*9
      \once\override Tie #'control-points = #'( ( 1.8 . -1.3 ) ( 7 . -4.5 ) ( 26 . -5.5 ) ( 31 . -1.3 ) ) \shiftOn h1.~ \shiftOff \noBreak
      %% Takt 45 ==================================================
      \stemDown h2 c d
      s1.*23
      s1.
      %% Takt 70 ==================================================
      %\stemUp \shiftOn \revert Stem #'length cis4 \shiftOff g'\rest s1
      \stemUp \revert Stem #'length cis4 g'\rest s1
      s1.
      s2 c,4 d\rest c d\rest
      s1.*2
      %% Takt 75 ==================================================
      s1.*14
      s1 \halsup \shiftOn c2
      %% Takt 90 ==================================================
      \override Rest #'extra-offset = #'( 1.2 . 0 ) \override Rest #'X-extent = #'( 0 . 1.5 )
         c8\rest c h c c\rest c h c c\rest c h c
      c8\rest d c d e\rest e d e \fatText \override Rest #'extra-offset = #'( 1.3 . 0 ) g\rest_"    " f e f
      g8\rest_"    " g fis! g \override Rest #'extra-offset = #'( 1.6 . 0 ) g\rest_"     " a g a fis a g fis
      g4 s s8 \stemDown d'4.~ \once \override NoteColumn #'force-hshift = #1.5 d8 c4.
      \stemUp d4 \revert Rest #'extra-offset \revert Rest #'X-extent h\rest h2\rest h\rest
   }
}

alt = {
   \new Voice \relative d' {
      \global
      \halsdown \dotsDown
      \mmrestdownnnn R1.
      \repeat volta 2 {
         \mmrestdownnnn R1.
         \mmrestdownnnn R1.
         d4\rest d8 e fis d cis d g d cis d
         %% Takt  5 ==================================================
         a'8 g fis e d cis h a h d g cis,!
         d8 e fis a, h fis' e d cis h' a g
         fis8 e d e fis4 e\rest gis e\rest
         a4 e\rest e c\rest fis e\rest
         g!4 c,\rest c2\rest c\rest
         %% Takt 10 ==================================================
         f,8\rest fis g a h g fis g c a g a
         d8 d, e fis g1~
         g8 fis g a h2. a4~
         a4 g~ g8 fis g a a2
         g4 a\rest a a\rest h a\rest
         %% Takt 15 ==================================================
         c4 a\rest h d,\rest a' d,\rest
         h''4 e,\rest g e\rest fis e\rest
         g4 g\rest g2\rest g\rest
         \mmrestdownnnn R1.
         \mmrestdownnn R1.
         %% Takt 20 ==================================================
         \mmrestdownnnn R1.
         \mmrestdownnn R1.
         \mmrestdownnn R1.
         g8\rest cis h cis dis! h a! h e h a h
         fis'8 e dis cis h4 h\rest h2~
         %% Takt 25 ==================================================
         h8 e, fis g a h c e, dis2
         c8\rest e dis e e\rest e4 e8 h4 a
         g4 c\rest c2\rest dis'!4 c,\rest
         e'4 e,\rest c2\rest c2\rest
         \mmrestdownnn R1.
         %% Takt 30 ==================================================
         h8\rest d e fis g e d e f d c d
         e1 e8\rest a g a
         h8 a c h a g fis g a h c fis,
         g2 d' c
      }
      \alternative {
         {
            h4 h,\rest c2\rest c2\rest
         }
         {
            h'2~ h8 h c a fis!2
         }
      }
      %% Takt 35 ==================================================
      g8 d e h c2~ c8 e d c
      h8 a h g' c, h c g' d c d f
      e8 d e c fis,! a h c d gis, fis gis
      a8 c d e f e f c d f e d
      c8 h a g! f e d c h f' e d
      %% Takt 40 ==================================================
      c4 a c'2\rest c\rest
      a2 h c
      d1 c2
      h1 a2~
      a2 g fis
      %% Takt 45 ==================================================
      s1.
      e'4 e\rest a,2\rest a\rest
      a'1.~
      a8 c h a d4 e,\rest e2\rest
      \mmrestdownnnn R1.
      %% Takt 50 ==================================================
      c2\rest c8\rest c d e f4 e
      gis4 a~ a8 h c a gis!2
      a8 c,\rest c4\rest c2\rest c\rest
      d2 e f
      e1.~
      %% Takt 55 ==================================================
      e1.
      f2 e d~
      d8 h cis4 d4. d8 e2
      fis2 e\rest c'~
      c4 h c2 d
      %% Takt 60 ==================================================
      e2 e,\rest e\rest
      a,4\rest e'8\rest fis g1~
      g2 g\rest g\rest
      \mmrestdownn R1.
      e'8 d cis d cis2._\prallprall h8 cis
      %% Takt 65 ==================================================
      h8 c! h a g4. g8 fis2
      g8\rest h a g fis4. fis8 gis4. gis8
      a4. g!8 fis4 e dis2
      c8\rest dis e h c2~ c8 c h a
      gis2 f\rest h'8 d, e h
      %% Takt 70 ==================================================
      f8\rest a h cis d g,! fis g e' g, a e
      fis8 d' e fis g c,! h c a' c, d a
      h4 e\rest h e,\rest a e\rest
      h''8 a h d c h c e d c d4~
      d8 h c e, fis! e fis a gis fis gis h
      %% Takt 75 ==================================================
      a1~ a4 g!
      fis2 g c
      h4 c d2 g,
      d'2 h\rest h\rest
      c2 g\rest g\rest
      %% Takt 80 ==================================================
      h2 g\rest g\rest
      g2\rest g8\rest c h a gis a h gis
      e4 e\rest e2\rest e\rest
      e2\rest h'4~ h16 a g a a4._\prall g16 a
      g1.~
      %% Takt 85 ==================================================
      g4 a h2 c
      h8\rest e d c h2 e,8\rest a g f
      g2 c,8\rest f e d e4. e8
      d1~ d8 d c h
      c8 g a h c4. h8 f\rest g a fis
      %% Takt 90 ==================================================
      g2 g a
      h2 c d
      e2 es1
      d4 s s4. g8~ g4 a
      h4 h,\rest e2\rest e\rest
    }
}

tenor = {
   \new Voice \relative g {
      \global
      R1.
      \repeat volta 2 {
         R1.
         R1.
         R1.
         %% Takt  5 ==================================================
         R1.*5
         %% Takt 10 ==================================================
         R1.*5
         %% Takt 15 ==================================================
         R1.
         g2~ g8 a g a h a g a
         h8 d, e fis g a h c \once \override Script #'extra-offset = #'(0.4 . 0 ) c4.\upprall h16 c
         d1.~
         d8 f e d c h a g a c h d16 c
         %% Takt 20 ==================================================
         c1.~
         c8 h a g fis! e d c'16 h h2~
         h8 fis' g e f dis e c! ais4.\upprall h8
         h1.~
         h1.
         %% Takt 25 ==================================================
         R1.
         R1.
         h1~ h4 c8 h
         h2~ h8 d c h a c h d16 c
         c1.~
         %% Takt 30 ==================================================
         c8 fis g a h,1~
         h8 e, fis g a c h a fis' d e fis
         g8 fis e d c h a g fis e d c'
         h8 e d c h a g a \once \override Script #'extra-offset = #'(0.3 . 0 ) a4.\upprall g8
      }
      \alternative
      {
         {
            g1.
         }
         {
            g1.~
         }
      }
      %% Takt 35 ==================================================
      g1.
      R1.
      R1.
      R1.
      R1.
      %% Takt 40 ==================================================
      R1.*5
      %% Takt 45 ==================================================
      g1.~
      g8 e fis g a h a h h4.\prallprall a16 h
      c1.~
      c8 e d c h1~
      h8 a gis h16 a a1~\mordent
      %% Takt 50 ==================================================
      a8 b a g! f e d c' h! a gis fis!
      e8 f' e d c d e f h,4.\prall a8
      a1.~
      a1.~
      R1.
      %% Takt 55 ==================================================
      R1.
      R1.
      a1.~
      a8 d, e fis g a h c d c e d
      d1.~
      %% Takt 60 ==================================================
      d8[ h a16 h g8] c1~
      c8 d, fis a h1~
      h8 h e dis e h c gis \tempo 2 = 64 a e f dis
      \tempo 2 = 42 e4~ e16 fis! g! a h cis dis e32 fis g8~ g32 fis e dis! e8~[ e32 d! c! h] c8~[ c32 e ais,16]
      \tempo 2 = 76 h2~^\markup { \italic "Adagio" } h4~ h16 ais gis ais ais4.\prall h8
      %% Takt 65 ==================================================
      h1.~
      h2 r r
      R1.
      R1.
      R1.
      %% Takt 70 ==================================================
      R1.
      R1.
      R1.
      g1.~
      g4 g a8 g a c h a h d
      %% Takt 75 ==================================================
      c1.~
      c8 e d c h d c h a c h a
      <<
         \new Voice {
            \halsup r8 h a c h a h d c h c e
            r8 c h d c h c e d c d f
            r8 d c e d c d f e d e g
            %% Takt 80 ==================================================
            f4~ f16 g f e d8 c h a g f e f
         }
         \new Voice {
            \halsdown g1.~
            g1.~
            g1.~
            %% Takt 80 ==================================================
            g4 r s1
         }
      >>
      e1.~
      e4. fis!16 gis a8 h c d c h a g
      g8 fis g e fis2~\upprall fis4. e16 fis
      g1.~
      %% Takt 85 ==================================================
      g1.~
      g1.~
      g1.~
      g1.~
      g1.~
      %% Takt 90 ==================================================
      g1.~
      g1.~
      g1.~
      g1.~
      g4 r r2 r
    }
}

right = {
   \clef "treble"
   <<
      \sopran
      \mezzosopran
      \alt
   >>
}

left = {
   \clef "alto"
   \tenor
}

pedal = {
   \global
   \clef "bass"
   \relative g, {
      g2 g' a
      \repeat volta 2 {
         h2 r4 h, c d
         e4 h c  a d d,
         g2 d' e
         %% Takt  5 ==================================================
         fis2 r4 fis g a
         h4 fis g e a a,
         d2 r r
         R1.
         g,2 h c
         %% Takt 10 ==================================================
         d1 c2
         h1 a2
         h2 r4 h c d
         e4 h c a d d,
         g1.~
         %% Takt 15 ==================================================
         g1.~
         g1 r2
         r2 g' a
         h a g
         c2 r r
         %% Takt 20 ==================================================
         a,2 h c
         d2 r4 fis g dis
         e4 h c2 cis
         h4 h' a! g fis e
         dis2 r4 dis e g8 e
         %% Takt 25 ==================================================
         a4 g fis g a h
         c4 c, g a h2
         e,2 g h
         e2 e, r
         a2 h c
         %% Takt 30 ==================================================
         d2 r4 g, a h
         c2 r r
         h2 r a
         g4 c d2 d,
      }
      \alternative {
         {
            g2 g' a
         }
         {
            \set Score.currentBarNumber = #34
            g,1.~
         }
      }
      %% Takt 35 ==================================================
      g1.
      g'2 a h
      c1 h2
      a1 gis2
      a2 d, e
      %% Takt 40 ==================================================
      a,2 h cis
      d1.
      h1 a2
      h2 e fis
      h,2 cis dis
      %% Takt 45 ==================================================
      e1 d!2
      c!1 h2
      a2 h c
      d2 r4 g, a h
      c2 r4 c d e
      %% Takt 50 ==================================================
      f!2 r4 e d c
      h4 a e'2 e,
      a2 h cis
      d1.
      e2 fis! gis
      %% Takt 55 ==================================================
      a2 h c
      d,2 e e,
      a2 r r
      d4 c h2 a
      g2 a h
      %% Takt 60 ==================================================
      e,2 r4 a h c
      d,2 r4 g a h
      c,2 r r
      R1.
      cis'2 fis e
      %% Takt 65 ==================================================
      dis2 e fis
      g2 a h
      c4 h a g fis h
      e,4 g a fis h h,
      e2 fis gis
      %% Takt 70 ==================================================
      a2 r r
      d,2 e fis
      g2 r r
      g,2 a h
      c2 r r
      %% Takt 75 ==================================================
      a2 h c
      d2 r dis
      e2 r r
      h2 r r
      c2 r r
      %% Takt 80 ==================================================
      g2 r r
      r2 gis e
      a2 r r
      r2 d c
      h2 a h
      %% Takt 85 ==================================================
      c2 r r
      d2 r r
      e2 d c
      g'1.~
      g1.
      %% Takt 90 ==================================================
      g,1.~
      g1.~
      g1.~
      g1.~
      g4 r r2 r
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
         \new Staff {
            \set Staff.midiInstrument = "recorder"
            \right
         }
         \new Staff {
            \set Staff.midiInstrument = "recorder"
            \transpose g' g''' \right
         }

         \new Staff {
            \set Staff.midiInstrument = "oboe"
            \tenor
         }
         \new Staff {
            \set Staff.midiInstrument = "recorder"
            \transpose g g' \tenor
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
   }
   \midi {
      \context {
         \Score
         tempoWholesPerMinute = #(ly:make-moment 76 2)
      }
   }
}
