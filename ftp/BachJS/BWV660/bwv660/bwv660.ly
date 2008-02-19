\version "2.10.33"

\header {
 mutopiatitle = "Nun komm, der Heiden Heiland"
 mutopiacomposer = "BachJS"
 mutopiaopus = "BWV 660"
 mutopiainstrument = "Organ"
 date = ""
 source = "Edition Peters 8662"
 style = "Baroque"
 copyright = "Creative Commons Attribution-ShareAlike 3.0"
 maintainer = "Urs Metzger"
 maintainerEmail = "urs@ursmetzger.de"
 lastupdated = "2007/Dec/27"

 title = "Trio super: Nun komm, der Heiden Heiland"
 subtitle = "a due Bassi e Canto fermo"
 composer = "Johann Sebastian Bach"
 opus = \markup { \lower #3 "BWV 660" }
 footer = "Mutopia-2008/02/19-1190"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

global = {
   \key g \minor
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
#(define set-script-property (lambda (script property value)
   (append! (cdr (assoc script default-script-alist))
      (list (cons property value)))))
#(set-script-property "mordent" 'avoid-slur 'outside)
#(set-script-property "prall" 'avoid-slur 'outside)
#(set-script-property "prallprall" 'avoid-slur 'outside)

shifttiedown    = { \once \override Tie #'extra-offset = #'( 0 . -0.4 ) }
shifttieup      = { \once \override Tie #'extra-offset = #'( 0 . 0.4 ) }
shifttieup      = { \once \override Tie #'extra-offset = #'( 0 . 0.9 ) }

right = {
   \new Voice \relative g' {
      \global
      #(revert-auto-beam-setting '(end 1 32 4 4) 1 8)
      #(revert-auto-beam-setting '(end 1 32 4 4) 3 8)
      #(revert-auto-beam-setting '(end 1 32 4 4) 5 8)
      #(revert-auto-beam-setting '(end 1 32 4 4) 7 8)
      \clef "treble"
      R1*4
      %% Takt  5 ==================================================
      R1
      R1
      r2 g2\mordent
      g4~ g16 b a32 b g16 fis4. g32 fis e d
      b'4~ b16 a b c a c b a g fis g a
      %% Takt 10 ==================================================
      \once \override TextScript #'extra-offset = #'(0.8 . -0.6 )
      a2.~^\markup { \musicglyph #"scripts.prall" \hspace #-0.4 \musicglyph #"scripts.prall" } a8. g32 a % prallprallprall
      g4 r r2
      R1
      R1
      R1
      %% Takt 15 ==================================================
      R1
      R1
      g8.\mordent a16 a8.\prallprall g32 a b4~ b16 a b c
      c4.~\upprall c16 b32 c b2
      c4.\mordent es16 d d4.( c16\prall )  b
      %% Takt 20 ==================================================
      b4 r r2
      R1
      R1
      R1
      b4~\mordent b16 c b c \once \override TextScript #'extra-offset = #'(0.8 . -0.6 )
         c4.~^\markup { \musicglyph #"scripts.prall" \hspace #-0.4 \musicglyph #"scripts.prall" } c16 b32 c
      %% Takt 25 ==================================================
      d4~ d16 es d c b\prall a b8~ b16 a b g
      c16 d32 es d16 c b fis' g c, \appoggiatura b16 a4.~\prall a16 g32 a
      g4 r r2
      R1
      R1
      %% Takt 30 ==================================================
      R1
      R1
      R1
      r2 g2\mordent
      g4~ g32 a g fis g16. a32 fis2\prall
      %% Takt 35 ==================================================
      b4~ b16 a b c a c b a g fis g a
      a2~\downprall a4.~ a16 g32 a
      g1~
      g4 r r2
      R1
      %% Takt 40 ==================================================
      R1
      R1
      R1
      \bar "|."
   }
}

left = {
   \new Voice \relative g {
      \global
      \clef "bass"
      r8 g g fis b4 a~
      a8 g4 fis16 a b, es d es a, d c d
      g,16 c b c fis,8 a' b16 es d es a, d c d
      b16 d g, b es, c' b c a c f,! a d, b' a b
      %% Takt  5 ==================================================
      g16 b es, g c, a' g a fis a d, fis b, g' f g
      es16 g c, es a, c fis, a d, d' e fis g fis g a
      b16 a g a d,8 fis\turn g4 r
      r16 g f! g es! g c, es a,8 fis d' d,
      g16 g' f! g es f d es c8 a' d d
      %% Takt 10 ==================================================
      d8 cis f!4 \once \override Script #'extra-offset = #'(0 . 0.3) e~\prall e16 e d f
      b,8 g a cis, d f g b,
      c!8 e f a, b d e! g,
      a8 cis d f, \tieDown g2~
      g16 \tieNeutral b' a g f e d cis d d' b g f d' e, \tempo 4 = 54 cis'
      %% Takt 15 ==================================================
      <<
         \new Voice { \stemDown d,8 }
         \new Voice { \stemUp \shiftOnn \once \override Stem #'length = #5 fis8 }
         \new Voice { \stemUp \shiftOn a8 }
         \new Voice { \stemUp d8 } >> \tempo 4 = 68 r r4 r8 g, g fis!
      b4 a~ a8 g4 fis16 a
      b,16 es d es a, d c d g,4 r
      r16 a' g a f! g es f d8 d' d b
      r16 es d es c es a, c fis,8 a b d,~
      %% Takt 20 ==================================================
      d16 es c d b c a b g8 g' g fis
      b4 a~ a8 g4 fis16 a
      b,8 b' b a d4 c~
      c8 b4 a16 c d, g f! g c, f es f
      b,16 d' c d b d g, b es, c' b c a c f, a
      %% Takt 25 ==================================================
      d,8 b d fis g8. fis16 g4~
      g16 a fis a g4~ g8 g g fis!
      b4 a~ a8 g4 f!16 as
      h,16 es d es a,! d c d g, c h! c f,8 f'~
      f8 es~ es16 d es c h8 g \clef "treble" r16 g'' f g
      %% Takt 30 ==================================================
      es16 g c, es as, f' es f d f b,! d  g, es' d es
      \clef "bass" c16 es as, c f, d' c d h d g, h es, c' b c
      as16 c f, as d, f h, d g, g' a h c h c d
      es16 d c d g,8 h c16 es d es f, d' c d~
      d16 g, c8 c h es4 d~
      %% Takt 35 ==================================================
      d16 g, f! g es f d es c8 a' d d
      d8 cis f!4 e~ e16 es d f
      h,8 c\turn d16 g, d f es8 h c16 es d f
      es16 c' h d c b a g fis g fis e d8 fis!
      g8 b c es,! f! a b d,
      %% Takt 40 ==================================================
      es8 g a c, d fis g b,
      c2~ c16 es d c b a g fis
      g16 g' es c b g' \tempo 4 = 60 a, \tempo 4 = 48 fis'
      <<
         \new Voice { \stemDown g,8 }
         \new Voice { \stemUp \once \override Stem #'length = #5 \shiftOnn b8 }
         \new Voice { \stemUp \shiftOn d8 }
         \new Voice { \stemUp g8 } >> r r4
   }
}

pedal = {
   \global
   \clef "bass"
   \relative g {
      r2 r8 g g fis
      b4 a~ a8 g4 fis16 a
      b,16 es d es a, d c d g, c b c fis,8 fis'
      g8 b c es, f! a b d,
      %% Takt  5 ==================================================
      es8 g a c, d fis g b,
      c2~ c8 c b a
      g8 c d d, g16 g' f! g es g c, es
      h8 g c c, d16 d' c d b c a b
      g8 d' g g g fis b4
      %% Takt 10 ==================================================
      a8 a, d d d cis f!4~
      f16 f e g cis, a' g a f a d, f b, g' f g
      e16 g c, e a, f' e f d f b, d g, e'! d e
      cis16 e a, cis f, d'' c! d b d g, b e,! g cis,! e
      a,8 cis d e f g a a,
      %% Takt 15 ==================================================
      d,8 g' g fis b4 a~
      a8 g4 fis16 a b, es d es a, d c d
      g,4 r r16 g' f! g es f d es
      c8 b' b a r16 d c d b d g, b
      es,8 g a c,~ c16 d c d b c a b
      %% Takt 20 ==================================================
      g8 g' g fis b4 a~
      a8 g4 fis16 a b,8 b' b a
      d4 c~ c8 b4 a16 c
      d,16 g f! g c, f es f b, es d es a,8 a'
      b a g es r c f f,
      %% Takt 25 ==================================================
      b16 f' es f d f b, d g, d' c d b d g, b
      es,4~ es16 es' d es c d b c a d c d
      g,8 g' g fis b4 as~
      as8 g4 f!16 as! h,16 es d es a,! d c d
      g,16 c h c f,8 as'~ as16 g as f g8 h,!
      %% Takt 30 ==================================================
      c8 es f as, b! d es g,
      as8 c d f, g h c es,
      f2~ f8 f' es d
      c8 f g g, c, c' c h
      es4 d r16 d c d b! c a b
      %% Takt 35 ==================================================
      g8 d' g g g fis b4
      a8 a, d d d cis f!4~
      f16 f es g h,8 g c16 g' d f es8 h!
      c16 es d f es8 c d d, r16 d'' c d
      b16 d g, b es,! c' b c a c f,! a d, b' a b
      %% Takt 40 ==================================================
      g16 b es, g c, a' g a fis16 a d, fis b, g' f g
      es16 g c, es a, c fis, a d,8 fis g a
      b8 c d d, g2
   }
}


\score {
   <<
      \new PianoStaff {
         <<
            \new Staff {
               \right
            }
            \new Staff {
               \left
            }
         >>
      }
      \new Staff {
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
         \new Staff {
            \set Staff.midiInstrument = "recorder"
            \right
         }
         \new Staff {
            \set Staff.midiInstrument = "recorder"
            \transpose g' g'' \right
         }
         \new Staff {
            \set Staff.midiInstrument = "recorder"
            \transpose g' d''' \right
         }

         \new Staff {
            \set Staff.midiInstrument = "recorder"
            \left
         }
         \new Staff {
            \set Staff.midiInstrument = "pan flute"
            \transpose g g' \left
         }

         \new Staff {
            \set Staff.midiInstrument = "pan flute"
            \pedal
         }
         \new Staff {
            \set Staff.midiInstrument = "recorder"
            \transpose g g' \pedal
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

% 09.02.2008: avoid opus overlapping composer
