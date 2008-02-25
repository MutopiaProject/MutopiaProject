\version "2.10.33"

\header {
 mutopiatitle = "Komm, heiliger Geist, Herre Gott"
 mutopiacomposer = "BachJS"
 mutopiaopus = "BWV 652"
 mutopiainstrument = "Organ"
 source = "Edition Peters 8662"
 style = "Baroque"
 copyright = "Creative Commons Attribution-ShareAlike 3.0"
 maintainer = "Urs Metzger"
 maintainerEmail = "urs@ursmetzger.de"
 lastupdated = "2008/Feb/23"

 title = "Komm, heiliger Geist, Herre Gott"
 subtitle = \markup { \center-align { \normalsize "(Alio modo)" \large "a 2 Clav. e Pedale" } }
 composer = "Johann Sebastian Bach"
 opus="BWV 652"
 footer = "Mutopia-2008/02/25-1325"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

global = {
   \key g \major
   \time 3/4
   #(set-accidental-style 'default)
   \override Score.MetronomeMark #'transparent = ##t
}

\paper {
   ragged-bottom = ##f
   ragged-last-bottom = ##f
}

#(set-default-paper-size "a4" 'landscape)
#(set-global-staff-size 18)
#(define set-script-property (lambda (script property value)
   (append! (cdr (assoc script default-script-alist))
      (list (cons property value)))))
#(set-script-property "mordent" 'avoid-slur 'outside)
#(set-script-property "prall" 'avoid-slur 'outside)
#(set-script-property "prallprall" 'avoid-slur 'outside)

halsup            = { \stemUp \tieUp \slurUp }
halsdown          = { \stemDown \tieDown \slurDown }
shiftscriptright  = { \once \override Script #'extra-offset = #'( 0.5 . 0 ) }
tsdown            = { \once \override TextScript #'extra-offset = #'(0 . -0.8) }

sopran = {
   \new Voice \relative d'' {
      \global
      \partial 4 r4
      R2.*14
      %% Takt 15 ==================================================
      r4 r4 \tsdown d^\markup { \hspace #0.3 \musicglyph #"scripts.mordent" \hspace #0.5 \musicglyph #"scripts.turn" }
      e4 d4.\prallprall c8
      h4.\prallprall c8 d4
      a2.
      h8.\mordent cis16 cis4.~\prallprall ( h16 cis)
      %% Takt 20 ==================================================
      d2.~
      d2 r4
      R2.
      R2.
      R2.
      %% Takt 25 ==================================================
      R2.*10
      %% Takt 35 ==================================================
      R2.
      d8.( e32 f) e4 \tsdown d8.^\markup { \hspace #2 \musicglyph #"scripts.turn" } e16
      a,4.\lineprall h8 c4
      h8. c32 a a4.\prallprall g16 a
      g2.~
      %% Takt 40 ==================================================
      g2 r4
      R2.*18
      r4 r g
      %% Takt 60 ==================================================
      a4.\mordent h8 c4
      \appoggiatura c8 h8. d32 c d2
      a4. g8 fis4~
      fis8 g e4. d16 e
      d2.~
      %% Takt 65 ==================================================
      d2 r4
      R2.*19
      %% Takt 85 ==================================================
      d4 \compressMusic #'( 5 . 6 ) g8. \set stemLeftBeamCount = #1 \set stemRightBeamCount = #3 a32 \set stemLeftBeamCount = #3 g a a4\prallmordent
      h4. c8 d4~
      d8. f32 e \appoggiatura d8 c2~
      c8 h a4.\prallprall g16 a
      h2.~
      %% Takt 90 ==================================================
      h4 r r
      R2.*9
      %% Takt 100 =================================================
      R2.*4
      h8.\mordent c16 d4 e
      %% Takt 105 =================================================
      d2 a4
      h8.\mordent cis16 cis4.\prallprall h16 cis
      d2.~
      d2 r4
      R2.
      %% Takt 110 =================================================
      R2.*5
      %% Takt 115 =================================================
      R2.
      R2.
      R2.
      R2.
      d4 e d
      %% Takt 120 =================================================
      a2 c4
      h4 a4.\prallprall g16 a
      g2.~
      g2 r4
      R2.
      %% Takt 125 =================================================
      R2.*15
      %% Takt 140 =================================================
      R2.
      r4 r g
      a4. h8 c4
      h8. d32 c d2
      a4. g8 fis4~
      %% Takt 145 =================================================
      fis8 g e4. d16 e
      d2.~
      d2 r4
      R2.
      R2.
      %% Takt 150 =================================================
      R2.*14
      d4 g a
      %% Takt 165 =================================================
      h4. c8 d4~
      d8 g, c2~
      c8. d32 h a4. h8
      e,8. fis16 fis4.\prallprall e16 fis
      g2.~
      %% Takt 170 =================================================
      g2 r4
      R2.*9
      %% Takt 180 =================================================
      R2.*4
      r8 a h a g fis
      %% Takt 185 =================================================
      e2 a4
      e16 fis e fis fis4.\prallprall e16 fis
      g16 d' e fis g4~ g16 f e f32 d
      e16 g, a h c4~ c16 h a h32 g
      fis16 a, h c d4~ d16 c h c32 a
      %% Takt 190 =================================================
      h16 d e fis g h, c d g, f' e f32 d
      e16 g a h c e, f g c, h' a h32 g
      fis!16 a h c d fis, g a d, c' h c32 a
      h16 d e fis g h, c d g, h a h32 g
      \once \override Tie #'staff-position = #2 c2.~\mordent c4~ c16 d, e fis g a h c
      %% Takt 195 =================================================
      d16 c d e a,4.\prallprall g16 a
      g2.~
      g2~ g16 a g a32 fis
      g2.\mordent
      \bar "|."
    }
}

alt = {
   \new Voice \relative g' {
      \global
      \halsup
      \partial 4 h4\rest
      \once \override MultiMeasureRest #'staff-position = #6 R2.
      \once \override MultiMeasureRest #'staff-position = #4 R2.
      \once \override MultiMeasureRest #'staff-position = #4 R2.
      \once \override MultiMeasureRest #'staff-position = #4 R2.
      %% Takt  5 ==================================================
      h4\rest h\rest g
      h4 a4.\downprall g8
      fis4. g8 a4
      d,2.
      e8. fis16 \shiftscriptright fis4.\prallprall e16 fis
      %% Takt 10 ==================================================
      g4. fis8 e4
      d4 d'2~
      d8 d cis h a h
      g4. fis8 g a
      fis4. fis8 g a
      %% Takt 15 ==================================================
      h4. a8 g f
      e4 fis!2
      g2~ g8 fis
      e8 cis! fis g fis e
      d8 g4 h8 a g
      %% Takt 20 ==================================================
      fis8 d' c!4. h8
      a4. h8 c4~
      c8 a h c h a
      g4 a2~
      a8 d, g a g f
      %% Takt 25 ==================================================
      e4. fis!8 g a
      h4 h\rest h\rest
      h8\rest a g fis e fis
      g8 d' c h c d
      h4 a8 g a h
      %% Takt 30 ==================================================
      g4 h a
      e4. fis8 g4
      fis4 e4.\prallprall d16 e
      d8 c! h d c h
      c4. d8 e4
      %% Takt 35 ==================================================
      r8 d e d e fis
      g4. a8 h c
      d2 g,4~
      g2 fis4
      g4. f8 e4~
      %% Takt 40 ==================================================
      e8 e d4. g8
      c,4. e8 d c
      h8 d e fis g4~
      g8 e fis g a4~
      a8 g4 fis8 e d
      %% Takt 45 ==================================================
      cis8\prall d e4. a,8
      d4. e8 cis4
      d2 r8 d
      e4. fis8 g4
      fis4 a2
      %% Takt 50 ==================================================
      d,4. c8 h4~
      h8 c \shiftscriptright a4.\prallprall g16 a
      g4 c4. h8
      c8 h c d e4
      d8 e fis g a h
      %% Takt 55 ==================================================
      cis8 d e4. a,8
      d4. e8 cis4
      d8 c! h a g c
      a4. h8 e, fis
      g4. f8 e4~
      %% Takt 60 ==================================================
      e4 d2~
      d4 g8 fis e d
      cis8 a d2~
      d2 cis4
      d4. c!8  h4~
      %% Takt 65 ==================================================
      h8[ h] a d4 cis8
      d4 g\rest g\rest
      g8\rest d g4. fis8
      e8 a, h'\rest a e fis
      g4. g8 fis e
      %% Takt 70 ==================================================
      dis8 e fis4. g8
      a4. h8 g4
      fis4 e2~
      e4 \once \override Tie #'staff-position = #3.2 d2~
      d4. cis8 d e
      %% Takt 75 ==================================================
      a,4 d e
      fis4. g8 a4~
      a4 g2~
      g8 fis e4.\prallprall d16 e
      fis4. e8 d4
      %% Takt 80 ==================================================
      g4. fis8 e4
      fis8 e' d c h a
      g8 a h4 a
      g8 fis g a e fis
      g4. g8 fis e
      %% Takt 85 ==================================================
      d8[ c] h e4 d8~
      d2.
      e2.
      d4 e dis8 e
      fis4. e4 dis8
      %% Takt 90 ==================================================
      e8 g cis,4 dis
      e4 g\rest g\rest
      g4\rest h8\rest d4 cis8~
      cis8 c h a g fis
      g8 h e, a g a
      %% Takt 95 ==================================================
      fis8 g a4 h
      a2 d,4
      e4 fis4.\prallprall e16 fis
      g2~ g8 a16 g
      fis8 g16 a cis,4.\prallprall h16 cis
      %% Takt 100 =================================================
      d8 e fis4 g8. a16
      fis4~ fis16 g a h cis,!8 a'
      d,8 g4 fis8 e[ fis16 g]
      fis4. g8 a[ h16 c!]
      h8 a g2
      %% Takt 105 =================================================
      fis4 g a~
      a4 g8 fis e g~
      g8 g fis e fis4
      g4. a8 h cis
      d4. e8 cis4\prall
      %% Takt 110 =================================================
      d4 d8\rest c!4 h8
      c8 h a g fis e
      d8 g4 fis16 e fis4\prall
      g4 h a
      e2 g4
      %% Takt 115 =================================================
      fis4 e4.\prallprall d16 e
      d8 d' c h e gis,
      a8 h c d e fis
      g8 d c e d c
      h4 g8 a h4
      %% Takt 120 =================================================
      h4\rest d8\rest a g fis
      g2 fis4
      g8 f e4.\prallprall d16  e
      d4. g,8 c4
      h8 d e fis g4~
      %% Takt 125 =================================================
      g8 e fis g a4~
      a8 g4 fis8 e d
      cis8 d e4. a,8
      d4. cis16 h cis4
      d2 e8\rest d
      %% Takt 130 =================================================
      e4. fis8 g4
      fis4 a2
      d,4. c8 h4~
      h8 c \shiftscriptright a4.\prallprall g16 a
      g4 c4. h8
      %% Takt 135 =================================================
      c8 h c d e4
      d8 e fis g a h
      cis8 d e4. a,8
      d4. cis16 h cis4
      d8 c! h a g c
      %% Takt 140 =================================================
      a4. h8 e, fis
      g4. f8 e4~
      e4 d2~
      d4 g8 fis e d
      cis8 a d2~
      %% Takt 145 =================================================
      d2 cis4
      d4. c!8 h4~
      h8[ h] a d4 cis8
      d4 g\rest g\rest
      g8\rest c! h a g fis
      %% Takt 150 =================================================
      e4. d8 e fis
      g4. f8 e d
      c8 h a h c d
      h4 cis4.\prallprall h16 cis
      d8 a d4 e
      %% Takt 155 =================================================
      fis4. g8 a4~
      a8 d, g2~
      g8 fis e4. fis8
      h,4 cis4.\prallprall h16 cis
      d8 c'! h a g fis
      %% Takt 160 =================================================
      g8 e' d c h a
      g4. fis8 g a
      d,8 g4 fis8 e d
      c8 h a h c d
      h8 c d g4 fis8
      %% Takt 165 =================================================
      g4 d2
      g4. f8 e4
      d4 c4. d8
      e8 d c h c d
      h8 c d2~
      %% Takt 170 =================================================
      d8 g, c2
      h4 g'\rest g\rest
      e8\rest d e d c h
      c8 e d c h a
      h8 a h cis d e
      %% Takt 175 =================================================
      cis8 e fis e d cis
      h2 e4
      h4 cis4.\prallprall h16 cis
      d8 fis e d cis h
      cis8 a d4 e8 fis
      %% Takt 180 =================================================
      g8 h e d cis h
      c!8 e d c h a
      h4. h8 cis d
      e8 e, a g fis e
      d2.~
      %% Takt 185 =================================================
      d4 c8 h c d
      c8 cis d e d c
      d4 \clef "treble" fis'16\rest d e fis g4~
      g4 fis16\rest g, a h c4
      a4 \clef "alto" g16\rest a, h c \once \override Tie #'staff-position = #2 d4~
      %% Takt 190 =================================================
      d4 h'16\rest d, e fis g4~
      g4 h16\rest g a h c4
      a4 \clef "treble" d16\rest a h c d4~
      d4 fis16\rest d e fis g4~
      g16 g fis e fis2~
      %% Takt 195 =================================================
      fis16 a, h c d4. fis,8
      g2 fis4
      h16\rest d, e fis g4~ g16 f e d
      e16 g a h c4~ \tempo 4 = 60 c16 \tempo 4 = 52 c \tempo 4 = 44 h \tempo 4 = 30 a
      h2.
   }
}

altzwei = {
   \new Voice \relative h' {
      \global
      \partial 4 s4
      s2.*186
      s2 h8\rest \stemUp h
      \shiftOn c4 e,\rest e8\rest e
      fis4 \clef "alto" f,\rest f8\rest \once \override Stem #'length = #6.3 fis
      %% Takt 190 =================================================
      g4 a\rest c8\rest h
      c4 a\rest c8\rest e
      fis4
   }
}

tenor = {
   \new Voice \relative d' {
      \global
      \halsdown
      \partial 4 d4
      e4 \once \override Script #'extra-offset = #'(0 . 1.3) d4.\downprall c8
      h4.\downprall c8 d4
      a2.
      h8. cis16 cis4.\prallprall h16 cis
      %% Takt  5 ==================================================
      d8 a d c! h a
      g4. fis8 e4
      d4 d'4. c8
      h8 a h c h a
      g8 c4 a8 d4~
      %% Takt 10 ==================================================
      d8 c h a g a
      h8 c d e fis g
      \dotsDown e4. d8 cis4
      r8 d e4 a,~
      a4. a8 h c!
      %% Takt 15 ==================================================
      d8 c h2
      c8 h a h c4
      d8 e d c h4
      cis8 a d e d c
      h4 e2
      %% Takt 20 ==================================================
      d4 e8 fis g4
      a8 g fis4. e8
      fis4 r8 d g fis~
      fis8 e4 e8 d c
      h4. c8 d4~
      %% Takt 25 ==================================================
      d8 g, c e d c
      d4 e d
      a4. h8 c4
      h4 a4._\prallprall g16 a
      g8 d' c h c d
      %% Takt 30 ==================================================
      h8 a g fis e d
      cis8 e d cis h cis
      d8 a' g fis g a
      h8 a g fis gis4
      f8\rest a g! fis e fis
      %% Takt 35 ==================================================
      g4 c8 h c a
      h4 c d~
      d2 e4
      d4 e a,
      h8 c d4. g,8
      %% Takt 40 ==================================================
      c4. c8 h4~
      h8 a16 g fis2
      g2 f8\rest g
      a4. h8 c4
      h4 d2
      %% Takt 45 ==================================================
      a4. g8 fis4~
      fis8 g e4. d16 e
      d8 c'! h a g4~
      g8 a g fis e e'~
      e8 d c h a g
      %% Takt 50 ==================================================
      fis8 g a4. d,8
      g4. fis16 e fis4~
      fis8 e d c d g
      e4 a g8 a
      h4 a fis'
      %% Takt 55 ==================================================
      e8 d cis h a g
      fis8 d g4._\prallprall fis16 g
      fis8 a d c! h e~
      e8 d c h c4
      h8 c d4. g,8
      %% Takt 60 ==================================================
      c8 h a g a fis!
      g8 a h2
      e,4 fis8 g a4
      h2 a8 g
      fis8 g a4. d,8
      %% Takt 65 ==================================================
      g4. fis8 e4
      d4 g a
      h4. c!8 d4~
      d4 c2~
      c8 h a4._\prallprall g16 a
      %% Takt 70 ==================================================
      h4. cis8 dis!4~
      dis8 e fis4. e8~
      e8 d!4 d8 cis h
      ais8 fis fis\rest cis' h a
      gis8 e a2
      %% Takt 75 ==================================================
      d,8\rest g! fis e d cis
      d8 a' d4. cis8
      h8 e, a\rest e' h cis
      d4. d8 cis h
      ais8 h cis4. h16 ais!
      %% Takt 80 ==================================================
      h8 cis d4. cis8
      d8 c! h a! g fis
      g8 d' g4. fis8
      e4 e,8 fis g a
      d,8 g c h a g
      %% Takt 85 ==================================================
      fis4 g4. fis8
      g4. a8 h a
      gis4 a g8 a
      h4 c2
      h8 a g4 a
      %% Takt 90 ==================================================
      h4. a8 g fis
      g8 fis e fis g a
      h8 c! d!4 e
      d2 a4
      h4 cis4._\prallprall h16 cis
      %% Takt 95 ==================================================
      d8 c! h a g g'~
      g8 fis e d c h
      c8 e a, d c d
      h8 e d e cis4
      d8 d, e a g a
      %% Takt 100 =================================================
      fis4 a8\rest d4 cis8
      d8 cis h a g fis
      g8 h e, a g a
      d,8 a' d2~
      d2~ d8 c
      %% Takt 105 =================================================
      d2.~
      d4 e a,
      h4 a8 g a4
      h4. cis8 d e
      fis4. g8 e4
      %% Takt 110 =================================================
      d4 e d
      a4. h8 c4
      h4 a4._\prallprall g16 a
      g8 h d g4 fis8
      g8 fis e d cis h
      %% Takt 115 =================================================
      a8 d4 c!16 h c4~
      c8 h r d c h
      c8 h a g! fis e
      d8 g'4 fis16 e fis4
      g4 e8 fis g4
      %% Takt 120 =================================================
      c,8\rest g' fis e d c
      d4 e d8. c16
      h8 g c2~
      c8 h e,4. fis!8
      g4 fis\rest fis8\rest g
      %% Takt 125 =================================================
      a4. h8 c4
      h4 d2
      a4. g8 fis4~
      fis8 g e4._\prallprall d16 e
      d8 c'! h a g4~
      %% Takt 130 =================================================
      g8 a g fis e e'~
      e8 d c h a g
      fis8 g a4. d,8
      g4. fis16 e fis4~
      fis8 e d c d g
      %% Takt 135 =================================================
      e4 a g8 a
      h4 a fis'
      e8 d cis h a g
      fis8 d g4. fis16 e
      fis8 a d c! h e~
      %% Takt 140 =================================================
      e8 d c h c4
      h8 c d4. g,8
      c8 h a g a fis!
      g8 a h2
      e,4 fis8 g a4
      %% Takt 145 =================================================
      h2 a8 g
      fis8 g a4. d,8
      g4. fis8 e4
      d4 g a
      h4. c!8 d4~
      %% Takt 150 =================================================
      d8 g, c2~
      c8 h a4. h8
      e,4 fis!4._\prallprall e16 fis
      g8 fis e fis g a
      fis8 g fis e d cis
      %% Takt 155 =================================================
      d8 a' d e d c!
      h4. a8 h cis
      d4. c!8 h a
      g8 fis e fis g a
      fis4 g8 a h c!
      %% Takt 160 =================================================
      d8 c h a g fis
      e4. d8 e fis
      g4 c fis,
      g4 d a'
      g8 a h e c d
      %% Takt 165 =================================================
      g,4. a8 h4~
      h8 a g2~
      g4 a g8 f
      g4 a2
      g4. f8 e d
      %% Takt 170 =================================================
      e4. d8 e fis!
      g8 a h a g fis
      e2 a4
      e4 fis4. e16 fis
      g4 fis8 e fis g
      %% Takt 175 =================================================
      a8 cis, d e fis d
      g8 a h a g fis
      g8 h a g fis e
      fis8 d g2~
      g4 fis8 d g a
      %% Takt 180 =================================================
      h8 a g fis e fis
      g4 a d~
      d8 c h a g fis
      e4 d8\rest e a g
      fis4 g2~
      %% Takt 185 =================================================
      g4. gis8 a h
      a8 g! a2
      g4 \clef "treble" e'\rest e8\rest g~
      g4 f,\rest a8\rest c
      d4 \clef "alto" g,,\rest h8\rest d~
      %% Takt 190 =================================================
      d4 h\rest f'8\rest g~
      g4 h,\rest f'8\rest c'~
      c4 \clef "treble" c\rest e16\rest d fis d
      g4 e\rest g16\rest g h g
      a2.~
      %% Takt 195 =================================================
      a16 e\rest e8\rest e16\rest fis g a d,8 c
      h8 a~ a h c d
      h4 c16\rest h c d g,4~
      g16 c16\rest c8\rest e16\rest e f g c,4
      d2.
   }
}

right = {
   \clef "treble"
      \sopran
}

left = {
   \clef "alto"
   <<
      \alt
      \altzwei
      \tenor
   >>
}

pedal = {
   \global
   \clef "bass"
   \relative d {
      \partial 4 r4
      R2.*8
      r4 r d
      %% Takt 10 ==================================================
      e4 d4. c8
      h4. c8 d4
      a2.
      h4 cis2
      d8 a d c! h a
      %% Takt 15 ==================================================
      g8 d' g f e d
      c4. h8 a4
      g4 \once \override Tie #'staff-position = #4 g'2~
      g4 fis2
      g4 e a,
      %% Takt 20 ==================================================
      h4 a4. g8
      fis4. g8 a4
      d,2.
      e4 fis2
      g2.~
      %% Takt 25 ==================================================
      g2.~
      g4 r r
      R2.
      R2.
      R2.
      %% Takt 30 ==================================================
      R2.
      R2.
      R2.
      d'4 e d
      a4. h8 c4
      %% Takt 35 ==================================================
      h4 a2
      g8 g' c h a g
      fis8 a g fis e fis
      g8 h, c h c d
      g,8 a h g c d
      %% Takt 40 ==================================================
      e8 c \once \override Tie #'staff-position = #4 g'2~
      \once \override Tie #'staff-position = #4 g2.~
      g4 r r
      R2.
      R2.
      %% Takt 45 ==================================================
      R2.*5
      %% Takt 50 ==================================================
      R2.
      R2.
      r4 r g,
      a4. h8 c4
      h4 d2
      %% Takt 55 ==================================================
      a4. g8 fis4~
      fis8 g e2
      d2 e4
      fis4. g8 a4
      g8 a h4 c8 h
      %% Takt 60 ==================================================
      a8 g fis e fis d
      g2.~
      g8 g' fis e d cis
      h8 a g e a4
      d,8 e fis d g a
      %% Takt 65 ==================================================
      h8 g d'2~
      d4 r r
      R2.*13
      %% Takt 80 ==================================================
      R2.
      d,4 g a
      h4. c8 d4~
      d4 c2~
      c8 h a2
      %% Takt 85 ==================================================
      h4 e8 d c d
      g,8 d' g4. f8
      e8 a, r a' e fis!
      g4. g8 fis e
      dis4 e fis
      %% Takt 90 ==================================================
      g4 a h
      e,4 r r
      R2.*8
      %% Takt 100 =================================================
      h8 cis d4 e
      d2 a4
      h4 cis2
      d4. e8 fis d
      g8 a h g c!4~
      %% Takt 105 =================================================
      c8 c h a g fis
      g8 h e, a g a
      d,2~ d8 c
      h8 a g g' fis e
      d8 g, a2
      %% Takt 110 =================================================
      d,4 r r
      R2.*4
      %% Takt 115 =================================================
      R2.
      d'4 e d
      a2 c4
      h4 a2
      g8 g' c h a g
      %% Takt 120 =================================================
      fis8 e d c h a
      g8 h c a d d,
      e4 e'8 d e c
      g'2.~
      g4 g, r
      %% Takt 125 =================================================
      R2.*9
      r4 r g
      %% Takt 135 =================================================
      a4. h8 c4
      h4 d2
      a4. g8 fis4~
      fis8 g e2
      d2 e4
      %% Takt 140 =================================================
      fis4. g8 a4
      g8 a h4 c8 h
      a8 g fis e fis d
      g2.~
      g8 g' fis e d cis
      %% Takt 145 =================================================
      h8 a g e a4
      d,8 e fis d g a
      h8 g d'2~
      d4 r r
      R2.
      %% Takt 150 =================================================
      R2.*9
      d,4 g a
      %% Takt 160 =================================================
      h4. c8 d4~
      d8 g, c2~
      c8 h a4. h8
      e,4 fis2
      g2 r4
      %% Takt 165 =================================================
      r8 c' h a g fis
      e4. d8 e fis!
      g4. f8 e d
      c8 h a4 d
      e4 h2
      %% Takt 170 =================================================
      c4. h8 a d
      g,4 r r
      R2.*3
      %% Takt 175 =================================================
      R2.*4
      r8 a h a g fis
      %% Takt 180 =================================================
      e2 a4
      e4 fis2
      g8 d' g fis e d
      cis2.
      d4 g,8 a h4
      %% Takt 185 =================================================
      c!8 d e d c h
      c8 e d c h a
      h4 r r16 g h g
      c4 r r16 a c a
      d4 r r16 d fis d
      %% Takt 190 =================================================
      g4 r r16 g h g
      c4 r r16 a c a
      d2.~
      d2.~
      d4~ d16 d a c fis, a d, fis
      %% Takt 195 =================================================
      h,8 e d c h a
      h8 c d4 d,
      g4. a8 h g
      c4. d,8 e c
      g'2.
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
         \context Staff {
            \set Staff.midiInstrument = "recorder"
            \transpose d' d'' \right
         }
         \context Staff {
            \set Staff.midiInstrument = "recorder"
            \transpose d' a'' \right
         }
         \context Staff = left {
            \set Staff.midiInstrument = "recorder"
            \left
         }
         \context Staff {
            \set Staff.midiInstrument = "recorder"
            \transpose d' d''\left
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
   }
   \midi {
      \context {
         \Score
         tempoWholesPerMinute = #(ly:make-moment 72 4)
      }
   }
}
