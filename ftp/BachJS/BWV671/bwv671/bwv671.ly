\version "2.10.33"

\header {
   mutopiatitle = "Kyrie, Gott heiliger Geist"
   mutopiacomposer = "BachJS"
   mutopiaopus = "BWV 671"
   mutopiainstrument = "Organ"
   date = "1739"
   source = "Edition Peters 8662"
   style = "Baroque"
   copyright = "Creative Commons Attribution-ShareAlike 3.0"
   maintainer = "Urs Metzger"
   maintainerEmail = "urs@ursmetzger.de"
   lastupdated = "2008/Feb/2"

   title = "Kyrie, Gott heiliger Geist"
   subtitle = "Cum Organo pleno"
   composer = "Johann Sebastian Bach"
   opus=\markup { \lower #3 "BWV 671" }
 footer = "Mutopia-2008/02/13-1278"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

global = {
   \key c \minor
   \time 4/2
   \override Staff.TimeSignature #'stencil = #ly:text-interface::print
   \override Staff.TimeSignature #'text =
      \markup{ \musicglyph #"timesig.C22"
               \postscript #"0.07 setlinewidth
                             1 setlinejoin
                             -1.24 -1.365 moveto
                             -1.19 -1.365 lineto
                             -1.19  1.365 lineto
                             -1.24  1.365 lineto
                             -1.24 -1.365 lineto
                             closepath
                             stroke" }
   #(set-accidental-style 'default)
   \override Score.MetronomeMark #'transparent = ##t
   \override NoteCollision #'axes = #'( 0 1 2 3 )
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

shiftnote = #(define-music-function (parser location xy)
                                (number-pair?)
   #{
      \once \override Stem     #'extra-offset = #$xy
      \once \override NoteHead #'extra-offset = #$xy
   #})

halsup      = { \stemUp \tieUp \slurUp \dotsUp }
halsdown    = { \stemDown \tieDown \slurDown \dotsDown }
halsneutral = { \stemNeutral \tieNeutral \slurNeutral \dotsNeutral }
up          = { \change Staff = "right" \halsdown }
down        = { \change Staff = "left" \halsup }

sopran = {
   \new Voice \relative d'' {
      \global
      \halsup \once \override TextScript #'extra-offset = #'( -4 . 2)
      d1\rest^\markup { \column { { "(a 5 voci)" } { \bold "Canto fermo in Basso" } } } d2 c
      b1 f'4\rest d2 c4
      b2 c d es
      f2 es d4 c b c~
      %% Takt  5 ==================================================
      c4 a'2 \once \override Tie #'extra-offset = #'( -0.2 . -0 ) g4~ \shiftnote #'( -0.4 . 0 ) g f2 e4
      f4 c8 b c4 d e c'\rest c2\rest
      \once \override Rest #'extra-offset = #'( -0.4 . 0 ) c4\rest f,2 e4
         \once \override Beam #'extra-offset = #'( -0.4 . 0 ) \shiftnote #'( -0.4 . 0 ) f8 \shiftnote #'( -0.4 . 0 ) g a2 g4
      a2 b4 c8 b a!4 b \once \override Tie #'staff-position = #6 es,!2~
      \shiftnote #'( -0.4 . 0 ) es4 d8 es \once \override Tie #'staff-position = #4 f2~ f4 es2 d4
      %% Takt 10 ==================================================
      c4 d8 c b4 c8 b a!4 b2 a4
      b2 c4 d es8 b es2 f4~
      f4 es8 d es4 f g8 f es2 d8 c
      b4 c8 b c4 d es8 d c b as g as b
      g8 a b2 a!4 b8 c d2 c4
      %% Takt 15 ==================================================
      d8 es f2 es4~ es d4~ d8 es f4~
      f8 g as2.~ as4 g8 f g4 a
      b4 a8 g a4 b c2 e\rest
      s1 \once \override TextScript #'extra-offset = #'( -1 . 1.5 ) s1^\markup { \postscript #"0.5 0.5 scale 1.45 0.1 1.1 1.8 rectfill 0 0 4 0.3 rectfill 0 2 4 -0.3 rectfill stroke" }
      c4\rest b2 as!4~ as b8 as g f es d
      %% Takt 20 ==================================================
      \once \override Tie #'staff-position = #8.3 as'1~ as4 g2 f4
      es2 d c1
      f4\rest es2 d4 c2 d
      es2 f g8 f es d c es d c
      b2 a g4 c2 b4~
      %% Takt 25 ==================================================
      b4 a8 g a b c4~ c b8 a! b c d4~
      d4 c8 b c4 d es8 f g2.~
      \shiftnote #'( -0.4 . 0 ) g4 f8 es \shiftnote #'( -0.4 . 0 ) f4 g as!1~
      as4 b8 c b4 as g2 f
      es2 f g4 a\rest c2\rest
      %% Takt 30 ==================================================
      a4\rest es2 f4 g2 f
      es2 \shiftnote #'( -0.4 . 0 ) d c c'~
      c4 b8 c b4 as \once \override Tie #'transparent = ##t \once \override Slur #'ratio = #2 g1~(
      g4) as8 b as4 g \once \override Tie #'transparent = ##t f1~(
      f4) g8 as g4 f es8 d c2 h8 c
      %% Takt 35 ==================================================
      d8 es f2 es8 d e f g2 f8 e
      f8 g as2 g8 f g as b2 as8 g
      as8 b c2 b4~ b as2 g4
      f2 \once \override Tie #'staff-position = #7 es~ es4 des!2 c4~
      \shiftnote #'( -0.4 . 0 ) c4 b \once \override Tie #'staff-position = #5 es2~ es \once \override Tie #'staff-position = #6 des!~
      %% Takt 40 ==================================================
      des4 c2 \once \override Tie #'extra-offset = #'( -0.2 . 0 ) b4~ \shiftnote #'( -0.4 . 0 ) b as \shiftnote #'( -0.4 . 0 ) des! c
      h8 c d!2 c8 h! c d es2 d8 c
      d8 es f!2 es8 d e f g2 f8 e!
      f8 g as2 g8 f g as b2 as8 g
      a8 b c2 b8 a! b1~
      %% Takt 45 ==================================================
      b2 as!~ as2. b8 as
      g1 f
      es\breve
      d2 es f1
      f4\rest d2 es4 f2 es
      %% Takt 50 ==================================================
      d2 c b8 d e f \once \override Tie #'staff-position = #7.5 g2~
      g4 f~ f8 a g f e f g a! b a g b
      a8 g f e d f e g f2 \once \override Rest #'extra-offset = #'( -0.4 . 0 ) f\rest
      a4\rest f2 es!4~ es8 d es2 d4~
      d4 c8 d es f g a b4 a\rest a2\rest
      %% Takt 55 ==================================================
      a1\rest c4\rest f, ges2~
      ges4 e f2~ f4 d es2~
      es4 c \once \override Tie #'staff-position = #5 des2~ des4 h \once \override Tie #'staff-position = #2 c2~
      c4 a h2 c4 d8 es f2~
      f4 d es2~ es4 c des2~
      %% Takt 60 ==================================================
      des4 h c2~ \tempo 2 = 50 c4 \tempo 2 = 38 h!8 a \tempo 2 = 20 h2\fermata
    }
}

alt = {
   \new Voice \relative b' {
      \global
      \halsdown
      \once \override MultiMeasureRest #'staff-position = #-2 R\breve
      \once \override MultiMeasureRest #'staff-position = #-2 R\breve
      \once \override Rest #'extra-offset = #'( 1.6 . 0 ) \once \override Rest #'X-extent = #'( 0 . 1 ) g4\rest b2 a4 b8 c d2 c4
      d4 \halsup b \shiftOn g a b a! g2
      %% Takt  5 ==================================================
      a8 b c4 \shiftOff d2 c b
      \halsdown a1 g4\rest \halsup d'8 c d4 e!
      f4 \shiftOn c \shiftOff b2 c4 \shiftOn f2 e!4
      f2 g f b,4 c8 b
      \shiftOff a4 \shiftOn b8 c \once \override Tie #'staff-position = #2 d2~d4 c2 b4
      %% Takt 10 ==================================================
      a2 g f es
      d4 es8 d es4 f g2 as! \shiftOff
      b1 b4\rest \shiftOn g2 as4
      \halsdown b2 \halsup as g f
      es8 f g2 fis4 g8 a! b2 a4
      %% Takt 15 ==================================================
      b8 c d2 \once \override Tie #'staff-position = #1 c4~ c b~ b8 c d4~
      d4 \shiftOff \once \override Beam #'positions = #'( 2.4 . 2.1 ) c8 b c4 d  es1
      \tieDown f1~ \shiftOn f2 \shiftOff \once \override Script #'extra-offset = #'( -0.2 . -0.8 ) es\prall
      d1 f4\rest f2 es4
      d2 es \shiftOn f \halsdown g
      %% Takt 20 ==================================================
      \halsup c,4 d8 es f es d c b2 as
      g4 as8 g f es f4 es g8 f g4 a
      \halsdown \shiftOff h8 g c h c4 d g, c2 h!4
      c8 b! as g f as g f es4 c g'2~
      g2 fis g1
      %% Takt 25 ==================================================
      \halsup \once \override Tie #'staff-position = #-3.4 f!1~ \shiftOn f2. b4~
      b4 a8 g a4 h c \shiftOff \once \override Beam #'positions = #'( 1.8 . 1.5 ) b8 a! b4 c
      d2 b h4\rest c8 b c d es4
      \shiftOn f4 g8 as g4 \tieDown f~ f es2 d4 \shiftOff
      \halsdown es2 \once \override Rest #'extra-offset = #'( -1 . 0 ) h\rest \halsup \shiftOn es des \shiftOff
      %% Takt 30 ==================================================
      c1 h4\rest \halsdown es2 d!4
      \shiftOn c2 \shiftOff \halsdown \shiftnote #'( -0.4 . 0 ) d \shiftOn es \shiftOff \once \override Stem #'length = #5 f
      g2~ \stemUp \shiftOn g4 f~ f e8 d e f g4
      c, f2 es!4~ es d8 c d es f4
      h,2 c4 d g, as!8 b! as4 g
      %% Takt 35 ==================================================
      \once \override Rest #'extra-offset = #'( -1.2 . 0 ) \once \override Rest #'X-extent = #'( -1.6 . 0 ) h4\rest a8 g a4 h c2 g
      as4 h\rest h2\rest h4\rest d!8 c d4 e
      f8 g as2 \tieUp \once \override Tie #'staff-position = #5 g4~ g f8 es! des c des b
      c8 f, es'! des c b c a b2 ges!
      \shiftOff f2 g4\rest b~ \shiftOn b8 as des c \once \override Beam #'positions = #'( 2.5 . 2.5 ) b as b g!
      %% Takt 40 ==================================================
      as2 \shiftOff f es \tieDown as~
      \shiftOn \once \override Stem #'length = #5 as4. g8 \once \override Beam #'positions = #'( 1.8 . 1.8 ) f es f d!
         \once \override Beam #'positions = #'( -0.15 . 0.15 ) es f g4 fis2
      g4 d'8 c \once \override Beam #'positions = #'( 2.6 . 2.6 ) h a h g b!4. c8 des!4 c
      \shiftOff \once \override Tie #'staff-position = #0 c1~ \halsup \shiftOn c4 g'8 f \once \override Beam #'positions = #'( 3 . 1.5 ) \shiftOff e d! c b
      \once \override Beam #'positions = #'( 2.3 . 2.6 ) c8 des \shiftOn \tieDown es!2.~ es4 d8 es f4 d
      %% Takt 45 ==================================================
      \shiftOff es1 f~
      \shiftOn f8 f es d \tieUp c2~ c8 es d c b2~
      b2~ b4 a8 g a4 b c2
      f,4 b8 as! g b as g \shiftOff \once \override Stem #'length = #5.5 f2 es
      \once \override Beam #'positions = #'( -0.2 . 0.5 ) d8 es f g as!4 \shiftOn g f g8 a b4 c
      %% Takt 50 ==================================================
      \halsdown d8 c b2 a4 \once \override Tie #'staff-position = #0 b2~ \halsup b8 d c b
      a2 b \shiftOff c1
      h4\rest \shiftOn a2 b4 c2 b
      a2 g f4 c'2 b4~
      b4 \once \override Beam #'positions = #'( 2.5 . 2.8 ) a8 b c2 \shiftOff f,4 h\rest d2\rest
      %% Takt 55 ==================================================
      d2\rest d4\rest es d!2. des4
      \shiftOn c2 g4\rest f g!2 g4\rest \once \override Stem #'length = #6 a
      b4  a \once \override Stem #'length = #4.7 b b, f'2. es!8 d!
      es2. d4 c2. c'4
      \shiftOn h2. b4 a2. as4
      %% Takt 60 ==================================================
      <<
         \new Voice \relative g' { \stemUp \shiftOn g2. fis4 \shiftOff g1 }
         \new Voice \relative a  { \stemDown a4\rest f' es c \once \override Script #'extra-offset = #'( 0 . -0.9 ) d!1_\fermata }
      >>
    }
}

tenor = {
   \new Voice \relative d' {
      \global
      \halsdown
      d2 es f1
      c4\rest d2 es4 f2 es
      d2 \down c \once \override Tie #'staff-position = #6 b1~
      b8 c \up d2 c4 d8 e f2 e!4
      %% Takt  5 ==================================================
      f2 e\rest a! g
      f1 a,4\rest a'!2 g4
      f2 g a b
      c2 d4 c~ c4 b8 a g4 a8 g
      f4. es8 d4 c b es8 f g2~
      %% Takt 10 ==================================================
      g4 f2 es4~ es d c2
      \down b2 as! b4 c8 b c4 d
      g,4 b c d \up es8 d c \down b as c \up f es
      d4 es2 f4~ f es2 d4~
      d4 c8 b c d es4~ es d8 c d es f!4~
      %% Takt 15 ==================================================
      f4 es8 d es f ges4 f g8 a b2~
      b4 as!8 g as4 b c b8 as b4 c
      f,4 f2 g4 a1
      e4\rest f2 g4 as!2 g
      f2 es d es~
      %% Takt 20 ==================================================
      es d es4. d8 \down c h c4
      h4 c2 h4 c8 h c \up d es2~
      \shiftOn \shiftnote #'( -0.7 . 0 ) es4 \shiftOff \down a,8 g a4 h c8 b as g f as g f
      g4 c as b~ b g2 a4
      b8 c d2 c4 b \up es8 f! es4 d
      %% Takt 25 ==================================================
      c8 d es2.~ es4 d8 c d es f4~
      f2 e\rest e4\rest g8 f g4 a!
      b2 f es4 as!8 g as b c4
      f,4 d es f g2 as
      \shiftnote #'( 0.5 . 0 ) b4 as8 g as4 b es, f8 es f4 g
      %% Takt 30 ==================================================
      as4 c,8 b c4 d! es \once \override Rest #'extra-offset = #'( 0.3 . 0 ) c\rest c2\rest
      \once \override Rest #'extra-offset = #'( 0.3 . 0 ) c8\rest es d es f g as!4 g8 f as g f es d c
      d4 g as b c1
      e,4\rest f g as b f2 c4
      d4 es8 f es4 d c c\rest c2\rest
      %% Takt 35 ==================================================
      f4 es2 d4 c2 des
      c4\rest c8 b c4 d! e8 f g4. as8 b4
      c4 g\rest g2\rest g4\rest f2 e4
      f8 c\rest c4\rest f2~ f8 es ges f es des es c
      des1 \down c4 b8 as \up fes'2
      %% Takt 40 ==================================================
      es8 des f! es des c des b c2 f~
      f4 \down h, a2\rest c4\rest es8 d c h! c a
      h4. c8 \up d2 c8 d e2 g4
      c,4 c\rest c2\rest c4\rest e!8 f g2
      ges2 e\rest e8\rest b f' es d! \down c b as!
      %% Takt 45 ==================================================
      g!4 c\rest\up g'2\rest g8\rest b as g f es d c
      b8 d es f g2 e8\rest \down a, b c d2
      \up e8\rest as! g f es2 c8\rest d \down c b a2
      b2 \up c\rest d c
      \down b1 \up a4\rest d2 \down c4
      %% Takt 50 ==================================================
      b2 c d \up e
      f8 e d c d f e d c4 f2 e!4
      f4 c f g a!8 g f e d f e g
      c,8 es! d c \down b c a b c4 \up f8 g f es f d
      es8 d es f g f es f d4 f ges2~
      %% Takt 55 ==================================================
      ges4 e f2~ f4 ges8 as! b2
      e,4\rest c des d es! \down b8 a b4 c
      \up d!4 es f \down g,! as!2. c4
      \up g'2. f4 es2 d~
      d2. \down c8 b c2. b8 as!
      %% Takt 60 ==================================================
      b8 c d!4 g, a g1
   }
}

bass = {
   \new Voice \relative a {
      \global
      R\breve * 4
      %% Takt  5 ==================================================
      a2 b c1
      r4 a2 b4 c2 b
      a2 g f1~
      f4 f'2 es!4~ es d2 c4~
      c4 b2 as!4 g c8 d es4 r
      %% Takt 10 ==================================================
      R\breve
      \halsdown g,2 f es1
      h4\rest g'2 f4 es2 f
      \halsneutral g2 as b1~
      b2 r4 c g2 r4 es'
      %% Takt 15 ==================================================
      d2 r4 a b2~ b4. c8
      d8 es f2 es8 d c d es2 d8 c
      b8 c d2 c8 b a b c2 b8 a
      b4 c8 b as! g f es d b c d es f g a
      b2 c b1
      %% Takt 20 ==================================================
      r1 es,2 f
      g1 r4 \halsdown es2 f4
      g2 f es d
      c8 d es2 d4 es1
      d2 h\rest h1\rest
      %% Takt 25 ==================================================
      \halsneutral r4 c'~ c8 b a g f4 b2~ b8 c
      d8 es f2 es8 d c d es2 d8 c
      b8 c d2 c8 b c d es2 d8 c
      d4 b c d es2 f
      g8 f es2 des4~ des c2 b4
      %% Takt 30 ==================================================
      as1 g4 a8 g a4 h
      c2. h4 c2 as!
      g2 r r4 c8 d c4 b
      as4 f r2 r4 b8 c b4 as
      g2 a4 h c r r2
      %% Takt 35 ==================================================
      r2 r4 g8 as! g4 f e g
      c,2 f b1
      r4 f'8 es des c des b c f, des' c b as b g
      as4 a2 f4 b2 r
      r8 f b as! g! f g es \halsdown as1~
      %% Takt 40 ==================================================
      as2 r r8 es as g f es f d!
      \once \override Tie #'staff-position = #2 g\breve~
      \once \override Tie #'staff-position = #2 g1~ g4 des'8 c b! as b g
      as8 g f g as b c d e d c4. d8 e!4
      es!8 des c b a b c4 f, r r2
      %% Takt 45 ==================================================
      r8 es f g as b c as f r r4 r2
      r2 r8 c' d es f2 r8 b, c d
      es2  r8 d c b c2 r8 g f es
      f4 d'2 c4~ c b2 a4
      b2. c4 d8 c b a g4 a
      %% Takt 50 ==================================================
      b8 a g f es4 f b2 r
      r1 a2 g
      f1 r4 a2 g4
      f2 g a! b
      c1 b4 r r des
      %% Takt 55 ==================================================
      c2. ces4 b2. b4
      a2. as4 g2. ges4
      f2. e4 f2. fis4
      \tieDown g1~ g4 g as!2~
      as4 fis g2~ g4 e f2~
      %% Takt 60 ==================================================
      f4 d! es!2 d1_\fermata
    }
}

right = {
   \clef "treble"
   <<
      \sopran
      \alt
      \tenor
   >>
}

left = {
   \clef "bass"
   \bass
}

pedal = {
   \global
   \clef "bass"
   \relative d {
      R\breve * 4
      %% Takt  5 ==================================================
      R\breve
      R\breve
      R\breve
      R\breve
      d1 es
      %% Takt 10 ==================================================
      f\breve
      R\breve
      R\breve
      R\breve
      R\breve
      %% Takt 15 ==================================================
      r1 d
      f1 es
      d1 c
      b\breve
      R\breve
      %% Takt 20 ==================================================
      R\breve
      R\breve
      R\breve
      R\breve
      d1 es
      %% Takt 25 ==================================================
      f1 d
      f1 es
      d1 c
      b\breve
      R\breve
      %% Takt 30 ==================================================
      R\breve
      R\breve
      R\breve
      R\breve
      r1 c
      %% Takt 35 ==================================================
      c1 b
      as1 g
      f\breve
      R\breve
      R\breve
      %% Takt 40 ==================================================
      R\breve
      R\breve
      R\breve
      f1 c'
      c1 b
      %% Takt 45 ==================================================
      c1 d
      es1 d
      c\breve
      b\breve
      R\breve
      %% Takt 50 ==================================================
      R\breve
      R\breve
      R\breve
      R\breve
      r1 b
      %% Takt 55 ==================================================
      as1 b
      c1 b
      b1 as
      g\breve~
      g\breve~
      %% Takt 60 ==================================================
      \once \override Script #'extra-offset = #'( 0 . -0.6 ) g\breve_\fermata
      \bar "|."
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
   <<
      \new PianoStaff {
      \set PianoStaff.midiInstrument = "church organ"
         <<
            \context Staff = right {
               \context Voice = right \right
            }
            \context Staff = left {
               \context Voice = left \left
            }
         >>
      }
      \new Staff {
         \set Staff.midiInstrument = "church organ"
         \pedal
      }
      \new Staff {
         \set Staff.midiInstrument = "tuba"
         \transpose c c, \pedal
      }
   >>
   \midi {
      \context {
         \Score
         tempoWholesPerMinute = #(ly:make-moment 64 2)
      }
   }
}
