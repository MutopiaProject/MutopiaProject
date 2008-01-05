\version "2.10.33"

\header {
 mutopiatitle = "Allein Gott in der Höh' sei Ehr'"
 mutopiacomposer = "BachJS"
 mutopiaopus = "BWV 662"
 mutopiainstrument = "Organ"
 source = "Edition Peters 8661"
 style = "Baroque"
 copyright = "Creative Commons Attribution-ShareAlike 3.0"
 maintainer = "Urs Metzger"
 maintainerEmail = "urs@ursmetzger.de"
 lastupdated = "2008/Jan/05"

 title = "Allein Gott in der Höh' sei Ehr'"
 subtitle = "a 2 Clav. e Pedale"
 composer = "Johann Sebastian Bach"
 opus="BWV 662"
 footer = "Mutopia-2008/01/05-1210"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

global = {
   \key a \major
   \time 4/4
   #(set-accidental-style 'default)
   \override Score.MetronomeMark #'transparent = ##t
   \override Staff.Slur #'height-limit = #2
   #(revert-auto-beam-setting '(end 1 32 4 4) 1 8)
   #(revert-auto-beam-setting '(end 1 32 4 4) 3 8)
   #(revert-auto-beam-setting '(end 1 32 4 4) 5 8)
   #(revert-auto-beam-setting '(end 1 32 4 4) 7 8)
}

\paper {
   after-title-space = 2\cm
   ragged-bottom = ##f
   ragged-last-bottom = ##t
}

#(set-default-paper-size "a4" 'landscape)
#(set-global-staff-size 18)

#(define set-script-property (lambda (script property value)
   (append! (cdr (assoc script default-script-alist))
      (list (cons property value)))))
#(set-script-property "mordent" 'avoid-slur 'outside)
#(set-script-property "downprall" 'avoid-slur 'outside)
#(set-script-property "prall" 'avoid-slur 'outside)

slx = #(define-music-function (parser location appo note)
                              (ly:music? ly:music?)
   #{
      \once \override Stem       #'transparent  = ##t
      \once \override NoteHead   #'transparent  = ##t
      \once \override NoteHead   #'no-ledgers   = ##t
      \once \override Slur       #'extra-offset = #'( -1 . 1.2 )
      \once \override Slur       #'ratio        = #0.3
      \appoggiatura $appo $note
   #})

accidentaldown = { \once \override TextScript #'script-priority = #-100 }
accidentalup   = { \once \override Script #'script-priority = #-100 }
halsup         = { \stemUp \tieUp \slurUp \dotsUp }
halsdown       = { \stemDown \tieDown \slurDown \dotsDown }
halsneutral    = { \stemNeutral \tieNeutral }

sopran = {
   \new Voice \relative a' {
      \global
      \partial 4 \once \override TextScript #'extra-offset = #'( -3.4 . 0 )
                 r4^\markup { \column { \normalsize \bold   "Canto fermo in Soprano"
                                        \normalsize \italic "Adagio" } }
      R1
      \repeat volta 2 {
         R1
         R1
         R1
         %% Takt  5 ==================================================
         R1
         R1
         R1
         R1
         r2 a4~ a32 e fis gis a cis h d64 cis
         %% Takt 10 ==================================================
         cis8~ cis32 d cis d d8.\prallprall cis32 d e4. d32 cis h d64 cis
         cis8.\mordent d16 h8.\downprall a32 h cis2
         r2 cis4.\mordent d16 cis
         cis4\mordent h32 a h cis d cis e d d8 cis h4\trill
         a4~ a32 gis fis gis a16 h32 cis \tupletUp \times 2/3 { \once \override TupletNumber #'extra-offset = #'( 0 . -0.5 )
            d16[ e fis]} \times 2/3 { \once \override TupletNumber #'extra-offset = #'( 0 . -0.5 ) e[ d cis] } h8.\prallprall a32 h
         %% Takt 15 ==================================================
         a1~
         a2. r4
      }
      \alternative {
         {
            R1 \pageBreak
         }
         {
            \set Score.currentBarNumber = #17
            R1
         }
      }
      R1
      R1
      %% Takt 20 ==================================================
      R1
      r2 a
      a16 h32 a gis!16 a h32 cis h cis cis16.\prallprall h64 cis d4 \slx e cis8~ cis32 e d cis
      h16 ais h8~ h16 cis32 d cis h ais!16 h4 r
      R1
      %% Takt 25 ==================================================
      r2 h4~ h8 cis32 h a h
      cis16 a gis32 fis gis a d16 a h32 a gis a e'4~ e16 fis32 e d cis d16
      \slx e cis8. d16 h4\downmordent cis2~
      cis8 r r4 r2
      R1
      %% Takt 30 ==================================================
      r2 a4~ \stemUp a8. cis32 h \stemNeutral
      h8~ h32 a64 gis a32 h cis d cis h a cis h d64 cis d32 fis e d cis e d cis h a gis a h d cis h
      a4~ a32 gis fis e d cis d h64 h' a32 gis fis gis gis8~^\markup { \musicglyph #"scripts.prall" \hspace #-0.4 \musicglyph #"scripts.prall" } gis8.~fis32 gis
      \tieUp a1~
      a1~
      %% Takt 35 ==================================================
      a32 \tieNeutral gis! fis gis a h c h a gis fis e dis c h a fis''16  r r e dis32 fis a gis fis e dis! cis!
      h16 c32 h a h gis!16 a4~\mordent a32 e fis gis a h cis d!64 \fatText h^"    " \slx h gis8.[\downprall a16]
      a1\fermata
      \bar "|."
   }
}

alt = {
   \new Voice \relative e' {
      \global
      \halsup
      \partial 4 g4\rest
      g2\rest g8\rest e fis \slx h gis
      \repeat volta 2 {
         a16 e a4 gis8\turn a e16 d e fis fis\prall e32 fis
         \fatText gis8^"       " \once \override TextScript #'extra-offset = #'( -2.5 . -4.3 ) cis^\markup { \huge \musicglyph #"custodes.mensural.u0" }
            \slx cis a \slx a fis \slx fis dis h'4 a8
         gis4 fis gis8. fis16 gis ais ais\prall gis32 ais
         %% Takt  5 ==================================================
         h16 ais h cis \clef "treble" d!4~ d16 fis e d cis d d\prall cis32 d
         e16 cis h a h cis cis\prall h32 cis d16 h a gis a h h\prall a32 h
         cis8 \once \override TextScript #'extra-offset = #'( -2.5 . -4.2 ) fis^\markup { \huge \musicglyph #"custodes.mensural.u0" }
            \slx fis d \slx d h \slx h gis e'4 d8
         cis8. d16 h8.\downprall a32 h cis8. e16 a,8 d~
         d16 h cis a fis8 gis!\turn a16 e fis8 e8 fis16 gis
         %% Takt 10 ==================================================
         \clef "alto" a16 cis, d e fis4 g8\rest g16\rest e fis gis gis\prall fis32 gis
         a16 gis gis fis eis fis fis gis gis4~ gis16 fis fis eis!
         fis16 gis32 a gis16 a32 h eis,8.\prall fis16 fis cis e dis dis8 eis
         fis 4~ fis16 a gis \slx cis ais h8 a~ a16 fis gis8
         a16 gis fis e d cis fis e fis8 g16\rest e fis d h e
         %% Takt 15 ==================================================
         cis16 a h cis d e e\prall d32 e fis8 g4 fis8
         e16 fis g fis g8 e fis16 gis a gis a4~
      }
      \alternative {
         {
            a8 c\rest h4\rest g8\rest e fis \slx h gis
         }
         {
            \once \override LaissezVibrerTie #'control-points = #'(( -1.8 . 3 ) ( -1.3 . 3.5 ) (-0.3 . 3.5 ) ( 0.2 . 3 ))
            a16\laissezVibrer e fis gis \clef "treble" a cis32 h cis16 e32 d d16 e32 d cis d h16 h a g! fis32 g
         }
      }
      fis16 g32 e fis16 gis a gis h ais h8. cis32 d cis4~
      cis16 fis, h8~ h16 a32 gis! a8~ a16 gis e'4 d8
      %% Takt 20 ==================================================
      \clef "alto" cis8 h16 a h cis cis\prall h32 cis d16 h a gis a h h\prall a32 h
      cis16 a \slx a fis4 e16 d cis h cis e d fis e g
      fis8 fis fis16 e e d d fis h8 g \slx g e
      \slx e cis16 g' fis8 fis e~ e16 cis d h gis!8 ais
      h16 fis' e d e fis
         \once \override TextScript #'extra-offset = #'( 0.4 . -0.4 ) fis^\markup { \teeny \natural }^\prall e32 fis g16 e d cis d e e\prall d32 e
      %% Takt 25 ==================================================
      fis16 \slx h gis! a h gis a \slx cis a32 gis a h e,16 d cis h \override Stem #'details #'beamed-lengths = #'( 3.6 ) a gis a h
      \revert Stem #'details #'beamed-lengths e,8 a' \slx a fis \slx fis d \slx d h gis'4 fis8
      e16 cis' h a gis fis eis \slx a fis gis8 eis! fis16 gis gis a
      a16 h32 a gis16 a32 h eis,8. fis16 fis8 fis gis ais
      <<
         \new Voice {
            \stemUp h8 gis a! h e,16 d e fis e gis fis a
            \once \override NoteColumn #'force-hshift = #-0.5 gis16 fis e gis
         }
         \new Voice {
            \shiftOn \stemUp \once \override Rest #'extra-offset = #'( 1.1 . 0 ) g8\rest e4 d8 cis2
            \stemDown \shiftOff \once \override Stem #'length = #9.5 e,8 f,\rest
         }
      >>
      %% Takt 30 ==================================================
      fis''16 a gis h a8a,16 h \override Stem #'details #'beamed-lengths = #'( 3.6 ) cis8 dis \revert Stem #'details #'beamed-lengths
      e8 gis e[ cis] a fis'4 eis8
      fis2~ fis16 e! d cis h8 e~
      e4 d8 cis d16 cis d e fis g a32 g fis g
      a8. g16 fis4~\prallprall fis16 fis e d e8 dis16 e
      %% Takt 35 ==================================================
      fis4 g\rest e2\rest
      g4\rest g8\rest fis e2~
      e1\fermata
   }
}

tenor = {
   \new Voice \relative a {
      \global
      \halsdown
      \partial 4 a8\rest a16 h
      cis8 fis \slx fis d \slx d h \slx h gis e'4 d8
      \repeat volta 2 {
         cis4 h cis8. h16 cis dis dis cis32 dis
         e4 cis~ cis8 h cis \slx gis' dis!
         e16 h e4 dis8_\turn e8 h16 a h cis
            \once \override Script #'extra-offset = #'(0 . -1.8 )
            \once \override TextScript #'extra-offset = #'( 0.4 . 1.6 ) cis_\markup { \teeny \natural }_\prall h32 cis
         %% Takt  5 ==================================================
         d!16 cis d e fis gis gis_\prall fis32 gis a!8 h4 a8
         gis4 fis~ fis8 e fis gis
         a16 e a4 gis16 fis e d e gis fis a gis h
         a16 e a,4 gis8 a16 e' g8~ g16 e fis d
         e4~ e16 d cis h cis8. d16~ d cis h8
         %% Takt 10 ==================================================
         a4~ a16 fis gis a h a gis8 a h
         cis4 d c16\rest d cis h a8 h
         cis8 d~ d16 cis gis h a4~ a16 gis h a
         a16 cis h \slx e cis d4 c16\rest h cis d e!8. h16
         e8 d16 cis h a8.~ a16 gis a4 gis8
         %% Takt 15 ==================================================
         a8 d,\rest f4\rest a16\rest d cis h a h \slx d h a32 h
         cis8 a h16 cis d cis d4~ d16 cis h a32 h
      }
      \alternative {
         {
            cis8 fis \slx fis d \slx cis h \slx h gis e'4 d8
         }
         {
            cis 8 d16 e fis gis a8~ a g e cis
         }
      }
      a8 fis'4 e8 d16 h g'!8~ g16 g fis32 g e16
      d8. e16 cis8._\prall h32 cis h16 d! cis h a h h_\prall a32 h
      %% Takt 20 ==================================================
      cis16 a gis fis gis a a_\prall gis32 a h16 gis fis e fis gis gis_\prall fis32 gis
      a8 d16 cis h a gis fis e8 cis'4 h8
      a8 d d16 cis cis h h8. fis'16 g e ais,8
      e'8[ d] cis fis,~ fis4~ fis16 e d cis
      d8 fis h4~ h16 cis h a h cis cis h32 cis
      %% Takt 25 ==================================================
      d8 fis d h gis e'4 \once \override Stem #'length = #9 d8
      cis4 f,\rest d16\rest fis' e d cis h a h
      cis8 r r4 r16 d cis h a h h cis
      cis8 d~ d16 d cis h a e'! d cis h cis cis_\prall h32 cis
      d16 gis, fis e fis gis gis fis32 gis a2
      %% Takt 30 ==================================================
      \shiftOn \override Stem #'details #'beamed-lengths = #'( 4.1 ) h16 \shiftOff a gis h \revert Stem #'details #'beamed-lengths a cis h8
         e16 d cis d e gis fis a32 gis
      gis16 fis e d! cis8 e, fis16 cis' fis e d32 cis h cis d16 h
      cis16 a gis a h4~ h h16 d cis h
      a16 h a g fis g a32 g fis g a2~
      a16 a h cis d4~ d16 d cis h cis8 c
      %% Takt 35 ==================================================
      h4 a\rest f2\rest
      a4\rest a8\rest c h a h16 cis d8~
      d32 cis h a gis fis e \fatText d'_"    " \slx e cis8.\prall d32 h \slx a cis2\mordent\fermata
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
      \tenor
   >>
}

pedal = {
   \global
   \clef "bass"
   \relative cis {
      \partial 4 r4
      R1
      \repeat volta 2 {
         r8 cis d e a, a' gis fis
         e4 fis gis a8 h
         cis8 gis, a h e, e' d! cis
         %% Takt  5 ==================================================
         h4 r8 h fis gis a h
         cis8 fis d h gis e'4 d8
         cis4 h cis d8 e
         fis8 cis d e a,2~
         a1
         %% Takt 10 ==================================================
         r8 fis' d h gis cis4 h8
         a8 a' gis fis eis4 fis8 gis
         a8 h cis cis, fis,4 r
         r8 fis' d h gis e'4 d8
         cis8 a' fis d h cis d e
         %% Takt 15 ==================================================
         fis8 g fis e d e fis d
         a'2 a,~
      }
      \alternative {
         {
            a8 r r4 r2
         }
         {
            r4 a h cis
         }
      }
      d4 cis h ais
      h8 h cis dis e e, fis gis
      %% Takt 20 ==================================================
      a!8 d! h gis e cis'4 h8
      a4 gis a h8 cis
      d8 fis, gis! ais h[ d] e8. fis16
      g8 d16 e fis8 fis, h2~
      h8 h' g e cis a'4 g!8
      %% Takt 25 ==================================================
      fis8 d h d e e, fis gis!
      a4 h8 h' gis e fis gis
      a8 fis d h eis, cis'4 h8
      a8 h cis4 fis,8 fis'4 e!8
      d4 cis~ cis8 h cis dis
      %% Takt 30 ==================================================
      e16 h e4 d!8 cis e cis a
      e4 a8 g fis a gis4
      fis8 fis' d h e, e'4 d8
      cis a d e fis e d e
      fis8  e fis16 a gis! h32 a a4~ a16 g fis g32 a
      %% Takt 35 ==================================================
      dis,4 r r2
      r4 r8 dis, e2
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

sopranmidi = {
   \new Voice \relative a' {
      \global
      \partial 4 r4
      R1
      \repeat volta 2 {
         R1
         R1
         R1
         %% Takt  5 ==================================================
         R1
         R1
         R1
         R1
         r2 a4~ a32 e fis gis a cis h d64 cis
         %% Takt 10 ==================================================
         cis8~ cis32 d cis d e \times2/3 { d32 e d } \times 3/5 { e32 d e d e } \times 2/5 { d32 e d cis d } e4. d32 cis h d64 cis |
         \times 2/3 { cis32 h cis~ } cis8 d16 cis32 \times 2/3 { h32 a h } cis64 h cis h cis h \times 2/3 { cis64 h cis h a h } cis2 |
         r2 \times 4/5 { cis32 h cis16.~ } cis4 d16 cis |
         \times 2/3 { cis32 h cis~ } cis8. h32 a h cis d cis e d d8 cis cis16 \times 3/5 { h32 cis h cis h } cis64 h cis h a h |
         a4~ a32 gis fis gis a16 h32 cis \times 2/3 { d16[ e fis]} \times 2/3 { e[ d cis] } \times 2/3 { cis32 h cis } h64 cis h cis h cis h cis \times 4/5 { h cis h a h } |
         %% Takt 15 ==================================================
         a1~ |
         a2. r4 |
      }
      \alternative {
         { R1 }
         { R1 }
      }
      R1
      R1
      %% Takt 20 ==================================================
      R1
      r2 a |
      a16 h32 a gis16 a h32 cis h cis d64 cis d cis d cis h cis d4 d32 cis16.~ cis32 e d cis |
      h16 ais h8~ h16 cis32 d cis h ais16 h4 r |
      R1
      %% Takt 25 ==================================================
      r2 h4~ h8 cis32 h a h |
      cis16 a gis32 fis gis a d16 a h32 a gis a e'4~ e16 fis32 e d cis d16 |
      d16 cis8 d16 \times 2/3 { cis32 h a h cis h } cis64 h cis h \times 2/3 { cis64 h cis h a h } cis2~ |
      cis8 r r4 r2 |
      R1
      %% Takt 30 ==================================================
      r2 a4~ a8. cis32 h |
      h8~ h32 a64 gis a32 h cis d cis h a cis h d64 cis d32 fis e d cis e d cis h a gis a h d cis h |
      a4~ a32 gis fis e d cis d h64 h' a32 gis fis gis
         \times 2/3 { a32 gis fis gis a gis } a64 gis a gis a gis a gis a gis a gis \times 2/3 { a64 gis a gis fis gis } |
      a1~ |
      a1~ |
      %% Takt 35 ==================================================
      a32 \tempo 4 = 32 gis fis gis a h c h a gis fis e dis c h a \tempo 4 = 24 fis''16  r r e \tempo 4 = 32 dis32 fis a gis fis e dis cis |
      h16 c32 h a h gis16 a64 gis a8..~ a32 e fis gis a h cis d64 h^"    " a32 \times 2/3 { gis32 fis gis a64 gis a }  gis16 a16] |
      a1 |
   }
}

altmidi = {
   \new Voice \relative e' {
      \global
      \partial 4 r4
      r2 r8 e fis a32 gis16.
      \repeat volta 2 {
         a16 e a4 \times 4/5 { a32 gis fis gis16 } a8 e16 d e fis gis64 \times 3/5 { fis64 gis fis gis fis } e32 fis |
         gis8 a64 h cis16. h32 a16. gis32 fis16. e32 dis16. h'4 a8 |
         gis4 fis gis8. fis16 gis ais h64 \times 3/5 { ais64 h ais h ais } gis32 ais |
         %% Takt  5 ==================================================
         h16 ais h cis d4~ d16 fis e d cis d e64 \times 3/5 { d64 e d e d } cis32 d |
         e16 cis h a h cis d64 \times 3/5 { cis64 d cis d cis } h32 cis d16 h a gis a h cis64 \times 3/5 { h64 cis h cis h } a32 h |
         cis8 d64 e fis16. e32 d16. cis32 h16. a32 gis16. e'4 d8 |
         cis8. d16 cis32 \times 2/3 { h32 a h } cis64 h cis h cis h \times 2/3 { cis64 h cis h a h } cis8. e16 a,8 d~ |
         d16 h cis a fis8 a32 gis fis gis a16 e fis8 e8 fis16 gis |
         %% Takt 10 ==================================================
         a16 cis, d e fis4 r8 r16 e fis gis a64 \times 3/5 { gis a gis a gis } fis32 gis |
         a16 gis gis fis eis fis fis gis gis4~ gis16 fis fis eis |
         fis16 gis32 a gis16 a32 h \times 2/3 { fis16 eis32 } fis64 eis fis eis64~ eis16 fis16
         fis16 cis e dis dis8 eis |
         fis 4~ fis16 a gis h32 ais h8 a~ a16 fis gis8 |
         a16 gis fis e d cis fis e fis8 g16\rest e fis d h e |
         %% Takt 15 ==================================================
         cis16 a h cis d e fis64 \times 3/5 { e fis e fis e } d32 e fis8 g4 fis8 |
         e16 fis g fis g8 e fis16 gis a gis a4~ |
      }
      \alternative {
         {
            a8 r8 r4 r8 e fis a32 gis16. |
         }
         {
            a16 e fis gis a cis32 h cis16 e32 d d16 e32 d cis d h16 h a g fis32 g |
         }
      }
      fis16 g32 e fis16 gis a gis h ais h8. cis32 d cis4~ |
      cis16 fis, h8~ h16 a32 gis a8~ a16 gis e'4 d8 |
      %% Takt 20 ==================================================
      cis8 h16 a h cis d64 \times 3/5 { cis d cis d cis } h32 cis d16 h a gis a h cis64 \times 3/5 { h cis h cis h } a32 h |
      cis16 a gis32 fis8.. e16 d cis h cis e d fis e g |
      fis8 fis fis16 e e d d fis h8 g fis32 e16. |
      d32 cis g'16 fis8 fis e~ e16 cis d h gis8 ais |
      h16 fis' e d e fis g64 \times 3/5 { fis g fis g fis} e32 fis g16 e d cis d e fis64 \times 3/5 { e fis e fis e } d32 e |
      %% Takt 25 ==================================================
      fis16 a32 gis a16 h gis a32. h64 a32 gis32 a h e,16 d cis h a gis a h |
      e,8 a' gis32 fis16. e32 d16. cis32 h16. gis'4 fis8 |
      e16 cis' h a gis fis eis gis32 fis gis8 eis fis16 gis gis a |
      a16 h32 a gis16 a32 h eis,8. fis16 fis8 fis gis ais |
      <<
         \new Voice {
            h8 gis a h e,16 d e fis e gis fis a |
            gis16 fis e gis
         }
         \new Voice {
            g8\rest e4 d8 cis2 |
            e,8 f,\rest
         }
      >>
      %% Takt 30 ==================================================
      fis''16 a gis h a8a,16 h cis8 dis |
      e8 gis e[ cis] a fis'4 eis8 |
      fis2~ fis16 e d cis h8 e~ |
      e4 d8 cis d16 cis d e fis g a32 g fis g |
      a8. g16 \times 4/5 { g16. fis32. g64~ } g64 \times 2/3 { fis64 g fis g fis g} fis32.~ fis16 fis e d e8 dis16 e |
      %% Takt 35 ==================================================
      fis4 g\rest e2\rest |
      g4\rest g8\rest fis e2~ |
      e1
   }
}

tenormidi = {
   \new Voice \relative a {
      \global
      \partial 4 r8 a16 h
      cis8 fis e32 d16. cis32 h16. a32 gis16. e'4 d8
      \repeat volta 2 {
         cis4 h cis8. h16 cis dis dis cis32 dis
         e4 cis~ cis8 h cis e32 dis16.
         e16 h e4 e32 dis cis dis e8 h16 a h cis d64 \times 3/5 { cis d cis d cis } h32 cis |
         %% Takt  5 ==================================================
         d16 cis d e fis gis a64 \times 3/5 { gis a gis a gis } fis32 gis a8 h4 a8 |
         gis4 fis~ fis8 e fis gis |
         a16 e a4 gis16 fis e d e gis fis a gis h |
         a16 e a,4 gis8 a16 e' g8~ g16 e fis d |
         e4~ e16 d cis h cis8. d16~ d cis h8 |
         %% Takt 10 ==================================================
         a4~ a16 fis gis a h a gis8 a h |
         cis4 d r16 d cis h a8 h |
         cis8 d~ d16 cis gis h a4~ a16 gis h a |
         a16 cis h d32 cis d4 r16 h cis d e8. h16 |
         e8 d16 cis h a8.~ a16 gis a4 gis8 |
         %% Takt 15 ==================================================
         a8 r8 r4 r16 d cis h a h \times 2/3 { cis32 h 16 } a32 h |
         cis8 a h16 cis d cis d4~ d16 cis h a32 h |
      }
      \alternative {
         {
            cis8 fis e32 d16. cis32 h16. a32 gis16. e'4 d8
         }
         {
            cis 8 d16 e fis gis a8~ a g e cis
         }
      }
      a8 fis'4 e8 d16 h g'8~ g16 g fis32 g e16
      d8. e16 \times 2/3 { d16 cis32 d cis d} d64 cis d cis h32 cis h16 d cis h a h cis64 \times 3/5 { h cis h cis h } a32 h
      %% Takt 20 ==================================================
      cis16 a gis fis gis a h64 \times 3/5 { a h a h a } gis32 a h16 gis fis e fis gis a64 \times 3/5 { gis a gis a gis} fis32 gis
      a8 d16 cis h a gis fis e8 cis'4 h8
      a8 d d16 cis cis h h8. fis'16 g e ais,8
      e'8[ d] cis fis,~ fis4~ fis16 e d cis
      d8 fis h4~ h16 cis h a h cis cis h32 cis
      %% Takt 25 ==================================================
      d8 fis d h gis e'4 d8
      cis4 r4 r16 fis e d cis h a h
      cis8 r r4 r16 d cis h a h h cis
      cis8 d~ d16 d cis h a e' d cis h cis d64 \times 3/5 { cis d cis d cis } h32 cis
      d16 gis, fis e fis gis a64 \times 3/5 { gis a gis a gis } fis32 gis a2
      %% Takt 30 ==================================================
      h16 a gis h a cis h8 e16 d cis d e gis fis a32 gis
      gis16 fis e d cis8 e, fis16 cis' fis e d32 cis h cis d16 h
      cis16 a gis a h4~ h h16 d cis h
      a16 h a g fis g a32 g fis g a2~
      a16 a h cis d4~ d16 d cis h cis8 c
      %% Takt 35 ==================================================
      h4 r4 r2
      r4 r8 c h a h16 cis d8~
      d32 cis h a gis fis \tempo 4 = 28 e d' \times 2/3 { d16 cis32 } d64 cis d cis~ cis16~ \times 2/3 { cis32 d h } h16. cis32 h
         \tempo 4=20 cis16.~ \tempo 4=10 cis4 |
   }
}

pedalmidi = {
   \global
   \clef "bass"
   \relative cis {
      \partial 4 r4
      R1
      \repeat volta 2 {
         r8 cis d e a, a' gis fis
         e4 fis gis a8 h
         cis8 gis, a h e, e' d! cis
         %% Takt  5 ==================================================
         h4 r8 h fis gis a h
         cis8 fis d h gis e'4 d8
         cis4 h cis d8 e
         fis8 cis d e a,2~
         a1
         %% Takt 10 ==================================================
         r8 fis' d h gis cis4 h8
         a8 a' gis fis eis4 fis8 gis
         a8 h cis cis, fis,4 r
         r8 fis' d h gis e'4 d8
         cis8 a' fis d h cis d e
         %% Takt 15 ==================================================
         fis8 g fis e d e fis d
         a'2 a,~
      }
      \alternative {
         {
            a8 r r4 r2
         }
         {
            a64 r8... a4 h cis |
         }
      }
      d4 cis h ais
      h8 h cis dis e e, fis gis
      %% Takt 20 ==================================================
      a!8 d! h gis e cis'4 h8
      a4 gis a h8 cis
      d8 fis, gis! ais h[ d] e8. fis16
      g8 d16 e fis8 fis, h2~
      h8 h' g e cis a'4 g!8
      %% Takt 25 ==================================================
      fis8 d h d e e, fis gis!
      a4 h8 h' gis e fis gis
      a8 fis d h eis, cis'4 h8
      a8 h cis4 fis,8 fis'4 e!8
      d4 cis~ cis8 h cis dis
      %% Takt 30 ==================================================
      e16 h e4 d!8 cis e cis a
      e4 a8 g fis a gis4
      fis8 fis' d h e, e'4 d8
      cis a d e fis e d e
      fis8  e fis16 a gis! h32 a a4~ a16 \tempo 4 = 32 g \tempo 4 = 30 fis g32 a
      %% Takt 35 ==================================================
      dis,4 r r2
      r4 r8 dis, e2
      a1_\fermata
   }
}

\score {
   \unfoldRepeats {
      <<
         \new Staff {
            \set Staff.midiInstrument = "pan flute"
            \sopranmidi
         }
         \new Staff {
            \set Staff.midiInstrument = "recorder"
            \transpose g' g'' \sopranmidi
         }
         \new Staff {
            \set Staff.midiInstrument = "recorder"
            \transpose g' d''' \sopranmidi
         }

         \new Staff {
            \set Staff.midiInstrument = "recorder"
            <<
               \altmidi
               \tenormidi
            >>
         }
         \new Staff {
            \set Staff.midiInstrument = "recorder"
            <<
               \transpose g' g'' \altmidi
               \transpose g' g'' \tenormidi
            >>
         }

         \new Staff {
            \set Staff.midiInstrument = "pan flute"
            \pedalmidi
         }
         \new Staff {
            \set Staff.midiInstrument = "recorder"
            \transpose c c, \pedalmidi
         }
      >>
   }
   \midi {
      \context {
         \Score
         tempoWholesPerMinute = #(ly:make-moment 34 4)
      }
   }
}
