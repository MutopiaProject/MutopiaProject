\version "2.10.33"

\header {
   mutopiatitle = "Allein Gott in der Höh sei Ehr"
   mutopiacomposer = "BachJS"
   mutopiaopus = "BWV 675"
   mutopiainstrument = "Organ"
   date = ""
   source = "Edition Peters 8661"
   style = "Baroque"
   copyright = "Creative Commons Attribution-ShareAlike 3.0"
   maintainer = "Urs Metzger"
   maintainerEmail = "urs@ursmetzger.de"
   lastupdated = "2008/Jan/22"

   title = "Allein Gott in der Höh sei Ehr"
   composer = "Johann Sebastian Bach"
   opus=\markup { \lower #2.5 "BWV 675" }
 footer = "Mutopia-2008/02/25-1326"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

\paper {
   ragged-bottom = ##f
   ragged-last-bottom = ##f
}

#(set-default-paper-size "a4" 'landscape)
#(set-global-staff-size 18)


global = {
   \key f \major
   \time 3/4
   #(set-accidental-style 'default)
   \override Score.MetronomeMark #'transparent = ##t
   \override TupletBracket #'bracket-visibility = ##f
   \set tupletSpannerDuration = #(ly:make-moment 1 8)
}

halsup        = { \stemUp \tieUp \slurUp \dotsUp }
halsdown      = { \stemDown \tieDown \slurDown \dotsDown }
halsneutral   = { \stemNeutral \tieNeutral \slurNeutral \dotsNeutral }
staffup       = { \change Staff = "right" }
staffdown     = { \change Staff = "left" }
triolen = {
   #(override-auto-beam-setting '(end * * * *) 1 8)
   #(override-auto-beam-setting '(end * * * *) 2 8)
   #(override-auto-beam-setting '(end * * * *) 3 8)
   #(override-auto-beam-setting '(end * * * *) 4 8)
   #(override-auto-beam-setting '(end * * * *) 5 8)
   #(override-auto-beam-setting '(end * * * *) 6 8)
   #(override-auto-beam-setting '(end * * * *) 7 8)
   #(override-auto-beam-setting '(end * * * *) 8 8)
}

duolen = {
   #(revert-auto-beam-setting '(end * * * *) 1 8)
   #(revert-auto-beam-setting '(end * * * *) 2 8)
   #(revert-auto-beam-setting '(end * * * *) 3 8)
   #(revert-auto-beam-setting '(end * * * *) 4 8)
   #(revert-auto-beam-setting '(end * * * *) 5 8)
   #(revert-auto-beam-setting '(end * * * *) 6 8)
   #(revert-auto-beam-setting '(end * * * *) 7 8)
   #(revert-auto-beam-setting '(end * * * *) 8 8)
}
showTripletNumber = { \override TupletNumber #'text = #tuplet-number::calc-denominator-text }
hideTripletNumber = { \override TupletNumber #'text = #"" }

sopran = {
   \new Voice \relative f' {
      \global
      \halsup \once \override TextScript #'extra-offset = #'( -4 . 2 )
      r4^\markup{ "Canto fermo in Alto." \tiny "(a 3 voci)" } f g
      a4. b16 c \times 2/3 { \triolen b a g a g f } \duolen
      \repeat volta 2 {
         c'8 c, c'4. b8~
         b8 a16 g a8 d g, c
         %% Takt  5 ==================================================
         a16 b c8~ \times 2/3 { \triolen c16 b a } \duolen f'8~ \times 2/3 { \triolen f16 e d e f g~ } \duolen
         g16 c, d e f g a8~ \times 2/3 { \triolen a16 g f g a b~ } \duolen
         b8 a16 g f8 a d, g
         cis,8 d~ \times 2/3 { \triolen d16 e f e d cis! d e f e f g~ } \duolen
         g8. f32 e \times 2/3 { \triolen f16 e d e d cis d c b! c b a
         %% Takt 10 ==================================================
         b16 a g } \duolen a8~ \times 2/3 { \triolen a16 a' g f e d~ d g f e d cis
         d16 c! b a g f b a g f e d } \duolen << \new Voice { \stemUp \once \override Beam #'positions = #'( 1.8 . 3.5 ) a16 e' g cis
                                                              d8 d16 c! }
                                                 \new Voice { s8 \stemDown g
                                                              \stemUp \shiftOn f8 s } >> d'8 f b, es~
         es16 d g8~ \times 2/3 { \triolen g16 f e! d cis d~ d e d c h c~ } \duolen
         c8 b!16 a b8 d g, c
         %% Takt 15 ==================================================
         \once \override Slur #'extra-offset = #'( -0.1 . 0.5 ) \appoggiatura b16 a8 d16 c b8 es c f
         \times 2/3 { \triolen b,16 a b } \duolen g'8~ \times 2/3 { \triolen g16 a, b c d e! \hideTripletNumber f e d c b a
         d16 c b a g f b a g f e d c g' a b a g
         a16  g f g f e f a g f e d \staffdown c b a b a g } \duolen
      }
      \alternative {
         {
            a8 f \staffup f'4 g
            a4. b16 c \times 2/3 { \triolen \showTripletNumber b a g a g f } \duolen
         }
         {
            \staffdown a,8 f \staffup r4 r
         }
      }
      %% Takt 20 ==================================================
      r4 g' a
      b4. c16 d \times 2/3 { \triolen c b a b a g } \duolen
      a8 d, d'4. cis8
      f8 b,16 a b8 es a, d
      g,4~ \times 2/3 { \triolen g16 a b c b a } \duolen f'8[ f,~]
      %% Takt 25 ==================================================
      \times 2/3 { \triolen f16 g a b a g } \duolen es'16 es, es'8~ \times 2/3 { \triolen es16 c b a b c } \duolen
      d8 b a f d d'~
      d16 c b a b8 es a, d
      d,16 f es d es8 es'~ \times 2/3 { \triolen es16 f es d c d~
      d16 es d c b c~ c c b a g a~ a c d es! d c } \duolen
      %% Takt 30 ==================================================
      b8 es8~ \times 2/3 { \triolen es16 d c h c d c d es f es d
      as'16 g f } \duolen e!8~ \times 2/3 { \triolen e16 fis g c,h c~ c c' b! a g fis!
      g16 f! es d c b es d c b a g } \duolen d a' c fis
      \times 2/3 { \triolen g16 d, e fis g a  } \duolen b4~ \times 2/3 { \triolen b16 b c d c b } \duolen
      a8 f f'4\rest f\rest
      %% Takt 35 ==================================================
      a8\rest f16 e f8 a d, g
      c,8 f~ f[ e16 d] e4\prall
      f8 f\rest d16 cis d8 g cis,!
      f8 b, es4~ \times 2/3 { \triolen es16 c! b a b c } \duolen
      d8 d,~ \times 2/3 { \triolen d16 e! f g f e } \duolen c'16 c, c' b
      %% Takt 40 ==================================================
      c8 f b, es \times 2/3 { \triolen a,16 b c d c d } \duolen
      \once \override Slur #'extra-offset = #'( -0.1 . 0.5 ) \appoggiatura c16 h8 c16 d es f g8~ \times 2/3 { \triolen g16 a g f e f~
      f16 g f e f g} \duolen cis,8[ f b,! e]
      a,8 g16 a b8 d g,16 a b8~
      \times 2/3 { \triolen b16 a g a b c~ c b a b c d~ d c b c d es~
      %% Takt 45 ==================================================
      es16 c d } \duolen b'8~ \times 2/3 { \triolen b16 c, d e! f g a g f \hideTripletNumber e d c
      f16 e d c b a d c b a g f e g a b a g
      a16 g f g f e f a g f e d \tempo 4 = 60 c b \tempo 4 = 54 a b \tempo 4 = 48 a \tempo 4 = 36 g } \duolen
      \tempo 4 = 22 a4\mordent
      \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
      \mark \markup { \musicglyph #"scripts.ufermata" }
   }
}

alt = {
   \new Voice \relative f' {
      \global
      \halsdown
      \once \override MultiMeasureRest #'staff-position = #-6 R2.
      \override MultiMeasureRest #'staff-position = #-4 R2.
      \repeat volta 2 {
         R2.
         R2.
         %% Takt  5 ==================================================
         f2 g4
         a2 b4
         c2 b4
         a4 g2
         a2.
         %% Takt 10 ==================================================
         R2.
         c,4\rest c\rest a'
         a2 g8 a
         b4 a g
         f4 d e
         %% Takt 15 ==================================================
         f2.
         R2.
         \once \override MultiMeasureRest #'staff-position = #-6 R2.
         \once \override MultiMeasureRest #'staff-position = #-6 R2.
      }
      \alternative {
         {
            R2.
            R2.
         }
         {
            R2.
         }
      }
      %% Takt 20 ==================================================
      R2. * 5
      %% Takt 25 =================================3=================
      \once \override MultiMeasureRest #'staff-position = #-6 R2.
      c4\rest c\rest f
      g2 a4
      \once \override Tie #'staff-position = #2.3 \tieUp b4~ \times 2/3 { \triolen \once \override Beam #'positions = #'( -3.8 . -3.8 ) b16 c b a b g } \duolen a4
      g4 fis2
      %% Takt 30 ==================================================
      g2.
      R2.
      R2.
      c,4\rest c\rest g'
      a2 b4
      %% Takt 35 ==================================================
      c2 b4
      a4 g2
      a2 e4\rest
      R2.
      \once \override MultiMeasureRest #'staff-position = #-6 R2.
      %% Takt 40 ==================================================
      c4\rest c\rest f
      g2 a4
      b!4 a g
      f4 d e
      f2.
      %% Takt 45 ==================================================
      R2.
      R2.
      \once \override MultiMeasureRest #'staff-position = #-6 R2.
      c,4\rest
      \bar "|."
   }
}

tenor = {
   \new Voice \relative c' {
      \global
      R2.
      r4 c d
      \repeat volta 2 {
         e4. f16 g \times 2/3 { \triolen f e d e d c } \duolen
         f8 f, f'4. e8
         %% Takt  5 ==================================================
         f8 a,16 g a8 d g, c
         f,4 r r
         r16 a, b c d e f8~ \times 2/3 { \triolen f16 e d e f g~
         g16 f e f g a} \duolen b,8[ b'16 a] b8 d,
         cis16 a' h cis d e f8~ \times 2/3 { \triolen f16 e d e f g } \duolen
         %% Takt 10 ==================================================
         cis,8 f,16 e f8 b! e, a
         f8 d' g, gis a a,
         d16 f g! a b c d8~ \times 2/3 { \triolen d16 c b c d es } \duolen
         g,8 f16 e! f8 b e, a
         d,16 d, e f g a b8~ \times 2/3 { \triolen b16 a g a b c~
         %% Takt 15 ==================================================
         c16 b a b c d~ d c b c d es~ es d c d es f~} \duolen
         f16 e! d c f8 a d, f
         b8 d g, b e, c
         \halsdown f8 c16 b a8 d g, c
      }
      \alternative {
         {
            f,4~ \times 2/3 { \triolen f16 g a b c d \hideTripletNumber e f g a b c } \duolen \showTripletNumber
            \halsneutral f,8 f, c''4 d
         }
         {
            \set Score.currentBarNumber = #19
            \halsdown f,,4 c' d
         }
      }
      %% Takt 20 ==================================================
      \halsneutral es4. f16 g \times 2/3 { \triolen f es d es d c } \duolen
      d8 g, \once \override Tie #'staff-position = #4 g'2~
      g8 f16 e! f8 b e, a
      d,8 d'~ d8[ c16 b] c8 f
      b,8 es a, a,~ \times 2/3 { \triolen a16 b c d c b } \duolen
      %% Takt 25 ==================================================
      g'8 g,~ \times 2/3 { \triolen g16 a b c b a } \duolen f'16 f, f'8~
      \times 2/3 { \triolen f16 b c d c b \hideTripletNumber f' f, g a g f b d, c b c d } \duolen \showTripletNumber
      es4~ \times 2/3 { \triolen es16 d c b a g fis a g fis e! d } \duolen
      g8 g'16 fis g8 c f, b
      es,8 es' a,[ d16 c] d8 d,
      %% Takt 30 ==================================================
      g,16 g' a b c d es8~ \times 2/3 { \triolen es16 d c d es f } \duolen
      h,8 b,!16 a! b8 es a, d
      b8 g' c cis d d,
      g, r \times 2/3 { \triolen r16 g' a b c d } \duolen e,!8[ c]
      f,16 c' d e f g a8~ \times 2/3 { \triolen a16 g f g a b~
      %% Takt 35 ==================================================
      b16 a g a b c f, a g f e f~ f g f e d e } \duolen
      f16 e d c b a b8~ \times 2/3 { \triolen b16 a g a b c } \duolen
      f,8 f'16 e f8 b e, a
      d,4~ \times 2/3 { \triolen d16 es f g f es } \duolen c'!8[ c,~]
      \times 2/3 { \triolen c16 d es f es d } \duolen b'16 b, b'8~ \times 2/3 { \triolen b16 g f e f g
      %% Takt 40 ==================================================
      a16 f e d e f g es d c d es } \duolen f16 f, f'8~
      f8 es16 d c8 es a, d
      g,8 g'~ \times 2/3 { \triolen g16 f e! d cis d~ d e d cis! h cis } \duolen
      d16 d, e f g a b8~ \times 2/3 { \triolen b16 c! b a b c } \duolen
      f,8 f'16 es! d8 g c, f
      %% Takt 45 ==================================================
      b,8 g'16 f e!8 c f, g
      a8 f' b, d g, e'
      f8 c16 b a8 b c c,
      f4
      \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
      \override Staff.RehearsalMark #'direction = #-1
      \mark \markup { \musicglyph #"scripts.dfermata" }
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
   \tenor
}

\score {
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

   \layout{
      indent = 1.0\cm
      \context {
            \Score
            \remove "Mark_engraver"
      }
      \context {
         \Staff
         \consists "Mark_engraver"
      }
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
   >>
   }
   \midi {
      \context {
         \Score
         tempoWholesPerMinute = #(ly:make-moment 68 4)
      }
   }
}
