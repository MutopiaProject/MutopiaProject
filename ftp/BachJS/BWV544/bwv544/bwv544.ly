\version "2.12.2"
\include "deutsch.ly"

\header {
   mutopiatitle = "Praeludium et Fuga b minor"
   mutopiacomposer = "BachJS"
   mutopiaopus = "BWV 544"
   mutopiainstrument = "Organ"
   date = ""
   source = "Edition Peters 8657"
   style = "Baroque"
   copyright = "Creative Commons Attribution-ShareAlike 3.0"
   maintainer = "Urs Metzger"
   maintainerEmail = "urs@ursmetzger.de"
   lastupdated = "2009/Jan/30"

 footer = "Mutopia-2009/02/08-1624"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2009. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

global = {
   \key h \minor
   \time 6/8
   #(set-accidental-style 'default)
   \set subdivideBeams = ##f
   \override Score.MetronomeMark #'transparent = ##t
   #(revert-auto-beam-setting '(end 1 32 6 8) 1 8)
   #(revert-auto-beam-setting '(end 1 32 6 8) 1 4)
   #(revert-auto-beam-setting '(end 1 32 6 8) 1 2)
   #(revert-auto-beam-setting '(end 1 32 6 8) 5 8)
}

#(set-default-paper-size "a4" 'landscape)
#(set-global-staff-size 18)

\paper {
   head-separation = 0.3 \cm
   foot-separation = 0.1 \cm
   page-top-space = 0 \cm
   between-system-padding = #0.1
   ragged-bottom = ##f
   ragged-last-bottom = ##f
}

diffdot       = { \once \override Staff.NoteCollision #'merge-differently-dotted = ##t }
halsup        = { \stemUp \tieUp \slurUp \dotsUp }
halsdown      = { \stemDown \tieDown \slurDown \dotsDown }
halsneutral   = { \stemNeutral \tieNeutral \slurNeutral \dotsNeutral }
mmrestdown    = { \once \override MultiMeasureRest #'extra-offset = #'( 0 . -1 ) }
up            = { \change Staff = "right" \halsdown }
down          = { \change Staff = "left" \halsup }

sopran = {
   \new Voice \relative h'' {
      \global
      \halsup
      h8~ h32 a g fis g16 e \slurUp \appoggiatura d8 cis8. g'16 fis8
      e8 d h~ h ais r
      \once \override Beam #'positions = #'( 3.5 . 4.5 ) ais( h32) a g fis g16 e' g, fis32 e fis16 cis' e, cis'
      e,16 d32 cis d16 h'8 ais16~ ais32 cis h ais h16 d8 cis16~
      %% Takt  5 ==================================================
      \halsneutral cis32 e d cis d16 fis8 e16~ e32 g fis e fis16 h8 ais16
      h32 a! gis fis gis16 h eis, fis~ \once \override Beam #'positions = #'( -2.6 . -3.9 ) fis32 fis eis! dis eis16 gis! ais, h~
      \once \override Beam #'positions = #'( 3.8 . 3.5 ) h32 h ais gis ais16 cis eis, \tieDown fis~ \stemDown fis4 r8
      \down a,8\rest a16\rest \once \override Beam #'positions = #'( -1 . 2 ) fis32 gis! ais h cis \up \halsup d e g! fis e cis'4~
      \once \override Beam #'positions = #'( 5.4 . 4.5 ) cis32 e d cis fis16 h, \once \override NoteColumn #'force-hshift = #-1 ais e' e8 d d\rest
      %% Takt 10 ==================================================
      r8 r16 h,32 cis dis e fis g a! c h a \once \override Tie #'staff-position = #7 dis4~
      dis32 fis e dis e16 h' \once \override NoteColumn #'force-hshift = #-1 dis, a' a8 g4~
      g8. e16 a g fis4.~
      fis8. d16 g fis \once \override Tie #'staff-position = #7 e4.~
      \once \override Beam #'positions = #'( 4.6 . 4.45 ) e8. e!8 d16~ \once \override Beam #'positions = #'( 4.55 . 4.45 ) d8. d!8 cis16~
      %% Takt 15 ==================================================
      \once \override Beam #'positions = #'( 4.4 . 4.35 ) cis8. cis8 h16~ h8~ h32 h ais! gis! ais8
      \once \override Beam #'positions = #'( 4.2 . 6.1 ) ais8 h32 cis h ais! h cis d e64 fis
      g!16. fis32 e16 d cis h
      h8 d\rest d\rest d4\rest d8\rest
      d16\rest fis,32 gis a!16 h cis d eis, h'8 cis32 d cis h a gis!
      a8^. c^. fis^. g,!16 e'8 fis32 g! fis e d! cis!
      %% Takt 20 ==================================================
      d8^. cis^. h^. cis^. ais^. h\rest
      fis'8^. e^. d^. e^. cis^. d\rest
      \halsneutral r16 d32 e fis16 g a h cis, g'8 a32 h a g fis e
      fis8 f\rest a\rest s4.
      \down a,,32\rest \once \override Beam #'positions = #'( -0.1 . 3.8 ) a gis a h cis \change Staff = "right" d e fis g! a h
          \stemDown \once \override Beam #'positions = #'( -5 . -3.6 ) c a g! a h cis dis e fis g a fis
      %% Takt 25 ==================================================
      g8 f\rest a\rest s4.
      \down c,,32\rest \once \override Beam #'positions = #'( 1 . 4.5 ) h ais h cis \change Staff = "right" d e fis gis a! h cis
          \halsneutral \once \override Beam #'positions = #'( -4.6 . -2.7 ) d h a h cis dis eis fis gis a h gis
      a32 gis fis eis fis e d! cis d16. h32 \appoggiatura a8 gis8. d'16 cis8
      h8 a fis~ fis eis r
      eis8( fis32) e d cis d16 h' d, cis32 h cis16 gis' h, gis'
      %% Takt 30 ==================================================
      h,16 a32 gis a16 fis'8 \tieUp eis16~ eis32 gis fis eis fis16 a8 gis16~
      gis32 h a gis a16 cis8 h16~ h32 d cis h cis16 fis8 eis16
      fis32 e! dis cis dis16 fis his, cis~ \once \override Beam #'positions = #'( 4.8 . 4 ) cis32 cis his! ais his16 dis! eis, fis~
      \once \override Beam #'positions = #'( 3 . 2 ) fis32 fis eis dis eis16 gis his, cis~ \stemDown cis4 r8
      \down r16 cis,32 dis eis fis gis a h cis d! h \change Staff = "right" gis' d cis h eis d cis h gis' d cis h
      %% Takt 35 ==================================================
      \change Staff = "left" \once \override Beam #'positions = #'( 1 . 3 ) a32 gis fis gis a h \change Staff = "right" cis d e fis g! e cis' g fis e ais g fis e cis' g fis e
      \once \override Beam #'positions = #'( 3 . 4.5 ) d32 cis h cis d e fis g a! h c! a fis' c h a dis c h a fis' c h a
      \once \override Beam #'positions = #'( 3.5 . 6 ) gis32 fis e fis gis a h cis! d! e f d h' f e d gis f e d h' f e d
      cis32 h a gis \once \override Tie #'staff-position = #5.5 a4~ a32 cis h a \once \override Tie #'staff-position = #6.1 h4~
      h32 d! cis h \once \override Tie #'staff-position = #7 cis4~ cis32 e! d cis d4~
      %% Takt 40 ==================================================
      d32~ d cis his \once \override Tie #'staff-position = #0.2 \tieDown cis4~ \halsdown cis32 cis his! ais his8 h~
      h32 h ais gis ais8 a~ a32 a gis! fis gis4~
      \once \override Beam #'positions = #'( -5.5 . -6 ) gis8[ fis32] f,\rest a16\rest c8\rest fis4 eis!8
      fis8  r a'^. gis^. cis,^. eis^.
      \halsup fis8^. his,^. cis^. dis f\rest f\rest
      %% Takt 45 ==================================================
      \once \override MultiMeasureRest #'staff-position = #4 R2.
      r16 fis,32 gis a16 h cis d eis, h'8 cis32 d cis h a gis!
      a32 gis a h cis16 d e! fis gis,! d'8 e32 fis e d cis h
      cis8 e a h gis a\rest
      gis8 fis f\rest fis eis f\rest
      %% Takt 50 ==================================================
      fis32 cis his cis fis cis his cis gis' cis, his \tieDown cis~ \stemDown cis8. cis16 fis e!
      d4.~ d8. h16 e d
      cis4. d~
      d8~[ d32 h cis d] e8 \halsup h' a a\rest
      \halsneutral r32 d, e fis h, fis' e d a e' d cis d cis h a gis fis gis d' fis, e fis d'
      %% Takt 55 ==================================================
      e,32 fis gis a h d cis h cis e d cis \halsup a'16 \diffdot a,8 h cis16
      \once \override Stem #'length = #9 d16 f'\rest d8\rest d\rest f,16\rest d~ d32 e d c c d c h
      h32 c h a a h a gis a8~ \once \override Beam #'positions = #'( 6.5 . 4 ) a16 fis'32 g! fis e dis cis h a g fis
      g8~ g32 h cis dis e dis e fis \once \override Beam #'positions = #'( 6 . 6 ) \once \override Tie #'staff-position = #9 g4.~
      \once \override Tie #'staff-position = #9.5 \once \override Dots #'extra-offset = #'( 0.5 . 0 ) g4.~ g32 e dis e fis g a h c8~
      %% Takt 60 ==================================================
      c32 c ais h r h gis a r a fis g r e fis g r g fis e e16[ fis~]
      fis32 a g fis e dis e8 dis16~ \once \override Beam #'positions = #'( 5.6 . 5.6 ) dis32 fis e dis e16 h'8 d,16~
      \once \override Beam #'positions = #'( 5.5 . 4.4 ) d32 f e d e d c h d c h a \once \override Beam #'positions = #'( 6.2 . 5 ) a' g fis e dis16 e8 fis16
      g32 d! cis! h cis16 e ais, h~ h32 h ais! gis ais16 cis dis, e~
      \once \override Beam #'positions = #'( 15 . 13 ) e32 e dis cis dis16 fis \change Staff = "left" ais, h~ h4 s8
      %% Takt 65 ==================================================
      \up \halsneutral r32 e' fis g c, g' fis e h fis' e dis e d c! h a gis a e' gis, fis gis d'
      c32 h a g! f e f c' e, dis e c' dis, e fis g a8~ a32 a g fis
      g8 c h~ h32 a g a a8.\prall g32 a
      \halsup ais4~\prallprall ais16 gis32 ais h16 e8 d!32 c h a g fis
      e16 g' g fis fis \once \override NoteColumn #'force-hshift = #-0.5 e e8 g f\rest
      %% Takt 70 ==================================================
      a16\rest fis fis e e \once \override NoteColumn #'force-hshift = #-0.5 d d8 fis f\rest
      r32 e cis ais g! fis e r32 r8 r32 e' cis ais! fis r32 r16 r32 g! fis e
      d16 s s32 fis gis ais h8 s32 cis d e fis s s s s g! fis e
      ais8^. fis^. h^. gis^. eis^. a\rest
      a16\rest fis32 e! d16 cis h ais! e' ais,8 gis32fis gis ais! h cis
      %% Takt 75 ==================================================
      d8 cis h cis ais h\rest
      r16 h32 a! g16 fis e dis c' dis,8 cis!32 h cis dis! e fis
      g8 e r fis d! r
      e8 cis r d'32\rest fis, eis fis h fis eis fis cis' fis, eis fis
      \once \override Tie #'staff-position = #8 d'4.~ d32 fis e d \once \override Tie #'staff-position = #8.6 e4~
      %% Takt 80 ==================================================
      e32 g! fis e \once \override Tie #'staff-position = #9.7 fis4~ fis32 a! g fis \once \override Tie #'staff-position = #10.5 g4~
      \once \override Beam #'positions = #'( 5.6 . 5.5 ) g8. g8 fis16~ \once \override Beam #'positions = #'( 5.2 . 5.05 ) fis8. fis8 e16~
      \once \override Beam #'positions = #'( 4.65 . 4.6 ) e8. e!8 d16~ \once \override Beam #'positions = #'( 4.6 . 4.5 ) d8. d8 cis16~
      \once \override Beam #'positions = #'( 4.4 . 4.35 ) cis8. cis8 h16~ h8~ h32 h ais! gis! ais8
      ais8 h32 cis h ais! h cis d e64 fis g16. fis32 e16 d cis h
      %% Takt 85 ==================================================
      h8 d\rest d\rest d4\rest d8\rest
      \bar "|."
   }
}

sopranzwei = {
   \new Voice \relative a' {
      s2. * 4
      %% Takt  5 ==================================================
      s2. * 4
      s4 \stemDown \shiftOn ais8 \stemUp h4 s8
      %% Takt 10 ==================================================
      s2.
      s4 \stemDown dis8 s4.
      s2.
      s2.
      s2.
      %% Takt 15 ==================================================
      s2. * 5
      %% Takt 20 ==================================================
      s2. * 5
      %% Takt 25 ==================================================
      % unsichtbare Note, damit das nachfolgende Aufl�sungszeichen frei steht
      s8 s \stemUp \hideNotes cis,32 s16. s4. \unHideNotes
      s2.
      s2.
      s2.
      s2.
      %% Takt 30 ==================================================
      s2.
      s2.
      s2.
      s4. \halsup a'8 gis s
      s2.
      %% Takt 35 ==================================================
      s2. * 5
      %% Takt 40 ==================================================
      <<
         {  a''8\rest c16\rest h,!8 a16~ \once \override Beam #'positions = #'( 6.5 . 6.3 ) a8. a!8 gis!16~
            \once \override Beam #'positions = #'( 5.7 . 5.5 ) gis8. gis!8 fis16~ fis8~[ fis32 fis eis! dis! eis8]
            eis8[ fis32 fis, eis! fis gis a h cis] d16.[ cis32 h16 a gis! fis] } \\
         {  \shiftOn \halsdown c''8\rest d16\rest \once \override Beam #'positions = #'( 0 . -0.2 ) gis,8 fis16~ \halsup fis8. fis8 eis16~
            eis8. eis8 dis16 \tieDown \once \override Tie #'staff-position = #1.2 cis4~ cis32 d! cis h!~
            \halsdown \once \override Beam #'positions = #'( -3 . -3.5 ) h8[ a32] s32 s16 s8 s4. }
      >>
      fis8 s4 s4.
      s2.
      %% Takt 45 ==================================================
      s2. * 5
      %% Takt 50 ==================================================
      \halsup s4. a'4.~
      a8. fis16 h a g!4.~
      g8.~ e16 a g fis4.~
      fis4 e32 g fis \tieDown e~ \stemDown e4 h8\rest
      s2.
      %% Takt 55 ==================================================
      s2.
      s2.
      s2.
      \down \hideNotes e,16 \unHideNotes s16 \up s8 s s32\halsup \diffdot e'16.~ e4~
      e16 e e d d c! s4.
      %% Takt 60 ==================================================
      s2.
      s2.
      s4. s4 \down \shiftOff \once \override Stem #'length = #7.5 c,!8
      \once \override Stem #'length = #7.5 h8 s4 s4.
   }
}

alt = {
   \new Voice \relative d'' {
      \global
      \halsup
      s2. * 4
      %% Takt  5 ==================================================
      s2.
      s2.
      s4. \stemUp d!8 cis s
      s4. \stemDown a,8\rest e'16\rest g fis8
      \stemDown \appoggiatura e8 d4 \once \override NoteColumn #'extra-offset = #'( -4 . 0 ) e8 fis4 e8\rest
      %% Takt 10 ==================================================
      s4. \halsup c8\rest g'16\rest c! h8
      \halsdown a8 g fis e'8. h16 e d!
      cis4.~ cis8. a16 d cis
      h4.~ \halsup \shiftOn h8 ais \once \override Tie #'staff-position = #1.2 cis~
      cis8. cis8 h16~ h8. h8 ais16~
      %% Takt 15 ==================================================
      ais8. ais8 gis16 \halsdown fis4~ fis32 g fis e~
      e8 d e\rest h' h ais!
      fis8 e\rest s s4.
      s2.
      s2.
      %% Takt 20 ==================================================
      s2. * 5
      %% Takt 25 ==================================================
      s2. * 5
      %% Takt 30 ==================================================
      e,8\rest a h cis h\rest eis!
      fis8 c\rest \down gis' a d\rest h
      cis8 d\rest a gis h\rest his,
      cis8 c\rest fis,~ fis eis c'\rest
      s2.
      %% Takt 35 ==================================================
      s2.
      s2.
      s2.
      \up \halsup s8 c32\rest gis'! fis eis \once \override Tie #'staff-position = #-2 fis8~ fis8 c32\rest a' gis! fis gis8~
      gis8 e32\rest h' a gis! \once \override Tie #'staff-position = #-1 a8~ a s4
      %% Takt 40 ==================================================
      s2.
      s2.
      s2.
      s2.
      \halsdown e16\rest cis32 dis e!16 fis gis! a his,16 fis'8 gis!32 a gis fis e dis!
      %% Takt 45 ==================================================
      e8^. g!^. cis^. \halsup d,!16 h8 cis32 d cis \down h a! gis!
      a8 fis h gis cis c\rest
      cis8 \up a' fis d \down h a\rest
      a8 \up a' cis d h h\rest
      cis8 a g\rest h gis g\rest
      %% Takt 50 ==================================================
      a8 e\rest e\rest s4.
      s2.
      s2.
      s2.
      s2.
      %% Takt 55 ==================================================
      s4. h'16\rest a8. g!8
      \halsup \once \override Beam #'positions = #'( 2.6 . 2.6 ) fis16 a a g g fis \halsdown fis8 d fis~
      fis16 dis dis e e h h4.~
      h16 \down h h a a g \up g'32\rest e' d! c h4
      a16 c c h h c c8 h\rest h32\rest e dis! e
      %% Takt 60 ==================================================
      dis8 cis! c h ais a
      g8 g\rest a h g\rest gis
      a8 e\rest fis! dis e\rest dis
      e8 e\rest \halsup g fis c\rest s
      s4. g'!8 fis r
      %% Takt 65 ==================================================
      s2.
      s2.
      s2.
      \halsdown e4.~ e8 e dis
      e16 e' e d! d cis! \halsup \shiftOn \once \override Beam #'positions = #'( 3 . 3.5 ) cis8 cis g\rest
      %% Takt 70 ==================================================
      \halsdown g16\rest d' d cis cis h \halsup \once \override Beam #'positions = #'( 2.8 . 3.2 ) h8 h g\rest
      s2.
      s2.
      \halsdown g16\rest fis32 gis ais16 h cis d eis, h'8 cis32 d cis h ais! gis!
      ais8_. h_. d,_. g!_. cis,_. \down ais_.
      %% Takt 75 ==================================================
      h8 \up e d e cis c\rest
      \down fis,8 dis a' dis, fis f\rest
      e8 cis'! e\rest cis h e\rest
      h8 ais c\rest \up d \down fis, ais!
      \up \halsup \shiftOn e'32\rest cis' h ais h4 gis8 g32\rest d' cis h \once \override Tie #'staff-position = #2 cis8~
      %% Takt 80 ==================================================
      cis8 g32\rest e' d cis \once \override Tie #'staff-position = #2 d8~ d h32\rest fis' e d \once \override Tie #'staff-position = #3.4 e8~
      e8. e8 d16~ \once \override Beam #'positions = #'( 3.6 . 3.5 ) d8. d8 \once \override Tie #'staff-position = #1 cis16~
      cis8. cis8 h16~ h8. h8 \once \override Tie #'staff-position = #1 ais16~
      ais8. ais8 gis16 \tieDown fis4~ fis32 g! fis e!~
      \halsdown e8 d e\rest h' h ais!
      %% Takt 85 ==================================================
      h e,\rest e\rest e4\rest e8\rest
   }
}

tenor = {
   \new Voice \relative d' {
      \global
      \halsdown
      s2.*3
      \up a8\rest d e fis e\rest \down ais
      %% Takt  5 ==================================================
      h d\rest cis d f\rest e
      fis8 f\rest d cis h\rest eis,
      fis h\rest \clef "bass" h,~ h ais a\rest
      s4. c8\rest e16\rest e cis8
      h4 cis8 h4 c8\rest
      %% Takt 10 ==================================================
      s4. \up e,8\rest g16\rest a' fis8
      \down e4 s8 e4.~
      e32 \clef "treble" e fis g s4 s4.
      s4. s8.. \hideNotes \once \override Slur #'extra-offset = #'( 0 . -0.5 ) g32( \up \unHideNotes g8)~
      g32 g fis eis fis4~ fis32 fis eis! dis eis8 e~
      %% Takt 15 ==================================================
      e32 e dis cis dis8 \down d!~ d32 d cis h cis4~
      cis8 h a\rest \down cis d e
      d16 h32 cis d16 \up e fis g \down ais, \up e'8 fis32 g fis e d cis
      d8_. \down cis_. h_. cis_. gis_. \up eis'!_\staccato
      fis16 dis8 e!32 fis e dis! cis! h e8_. cis_. ais'_.
      %% Takt 20 ==================================================
      h8 e, d e cis c\rest
      d' g, fis g e e\rest
      \down a,8 fis d g e cis
      r32 \once \override Beam #'positions = #'( -1.1 . 2 ) d cis d e fis g a h cis \change Staff = "right" d e
          \once \override Beam #'positions = #'( 2.8 . 4.6 ) fis d cis d e fis gis a h cis d h
      cis8 a'\rest c\rest s4.
      %% Takt 25 ==================================================
      \down r32 \once \override Beam #'positions = #'( -1.1 . 2.4 ) e,,, dis e fis g a h cis \change Staff = "right" d! e fis
         \once \override Beam #'positions = #'( 2.8 . 5.0 ) g e d e fis gis! ais h cis d e cis
      d8 h'\rest e\rest s4.
      s2.
      s2.
      s2.
      %% Takt 30 ==================================================
      s2. * 5
      %% Takt 35 ==================================================
      s2. * 5
      %% Takt 40 ==================================================
      s2.
      s2.
      s4. \down d,,8 cis4
      a16 fis32 gis a16 h cis d eis, h'8 cis32 d cis h a gis!
      \halsdown a8 gis fis~ fis his, gis!
      %% Takt 45 ==================================================
      \halsup cis16 ais8 h!32 cis h ais gis fis \halsdown h8_. gis!_. eis'_.
      fis8 d h cis eis d\rest
      fis8 fis' d h gis h,\rest
      h16\rest a32 h cis16 d e fis \halsneutral gis, d'8 e32 fis e d cis h
      a32 h cis8 d32 e d cis h a gis a h8 cis32 d cis h a gis
      %% Takt 50 ==================================================
      fis8 a cis \once \override Beam #'positions = #'( 5.5 . 3 ) fis32 \clef "treble" cis' d e! fis4~
      fis32 fis g! a h4~ h32 h, cis d e4~
      e32 e fis g a4~ a32 h a g fis a g a d, fis e fis
      h,32 d e fis \halsup g8[ h] cis4 d8\rest
      s2.
      %% Takt 55 ==================================================
      s4. f,8\rest fis e
      d16 \up fis fis e e d \down d8 a d
      g16\rest a, a c c fis, fis8 dis! fis
      e16 s s4 s8 \clef "treble" \halsneutral r32 a' g fis e d! c! h
      c32 a gis a h c d e fis gis a h c16 a a g g fis
      %% Takt 60 ==================================================
      fis8 e dis e cis! dis!
      \halsup e8 r fis g h\rest e,
      e8 c\rest c a c\rest \shiftOn \once \override Stem #'length = #5 a
      \once \override Stem #'length = #5 g8 c\rest \up e cis e,\rest \down ais
      h8 a\rest \once \override Tie #'staff-position = #2 e~ e dis a'\rest
      %% Takt 65 ==================================================
      \clef "treble" \halsneutral r32 g' a h e, h' a g dis a' g fis e4.~
      e8 \clef "bass" c h a~ a32 c! h a h8~
      h32 c h a g h a g fis a g fis e8~ e32 dis e g fis e dis e
      s4. \halsup d8\rest fis a!
      h8 s4 s4.
      %% Takt 70 ==================================================
      s2. * 5
      %% Takt 75 ==================================================
      \halsdown d,16\rest h32 cis d16 e fis g ais, e'8 fis32 g fis e d cis
      d8 h c fis, h g\rest
      e'32 fis g8 a32 h a g fis e d! e fis8 g32 a g fis e d
      cis32 d e8 fis32 g fis e d cis h8 d fis
      \halsup h8 \up c32\rest g' fis e! fis e d cis h8 a\rest e'32\rest h' ais! gis!
      %% Takt 80 ==================================================
      ais8 a,\rest e'32\rest cis' h ais! h8 c,8\rest g'32\rest d' cis h
      ais4 \once \override NoteColumn #'force-hshift = #-1 a8~ a32 a gis fis gis8 g~
      g32 g fis eis fis4~ fis32 fis eis! dis! eis8 e~
      e32 e dis cis dis8 \down d!~ d32 d cis h cis4~
      cis8 h c\rest cis d e
      %% Takt 85 ==================================================
      dis8 c\rest c\rest c4\rest c8\rest
   }
}

bass = {
   \new Voice \relative h {
      \global
      r8 h \up h'~ h ais r
      h8~ h32 a! g fis g16 e \stemDown \appoggiatura d8 cis8. g'16 fis8
      \once \override Beam #'positions = #'( 3 . -0.2 ) e8( d) \down \stemDown h~ h ais fis
      h4 cis8 d8 r \clef "treble" \halsdown e
      %% Takt  5 ==================================================
      fis e\rest ais h g\rest cis
      d8 g,\rest h gis c,\rest d!
      cis8 c\rest gis fis4 h,8\rest
      h4\rest h8\rest h\rest d16\rest cis' ais!8
      fis4 g!8 fis4 d8\rest
      %% Takt 10 ==================================================
      d4\rest d8\rest d\rest d16\rest a'! h8
      h4 c8 h4 r8
      s8 \halsneutral a'4~ a32 a, h cis d4~
      d32 d e fis g4~ g32 a g fis e g fis g cis, e d e
      \clef "bass" ais,4 h8 gis4 g8
      %% Takt 15 ==================================================
      fis4 eis8 \halsdown fis4.~
      fis8 h, h\rest g' fis fis
      fis8 r r r4 r8
      \halsneutral \mmrestdown R2.
      \mmrestdown R2.
      %% Takt 20 ==================================================
      r16 h,32 cis d16 e fis g ais, e'8 fis32 g fis e d cis
      h32 cis d e fis16 g a! h cis, g'8 a32 h a g fis e
      \halsdown fis8 d h e cis a
      d,8  g\rest cis h gis' e
      a,8 g\rest g! fis dis' h
      %% Takt 25 ==================================================
      e,8 g\rest d'! cis ais' fis
      h,8 h\rest a! gis eis' cis
      \halsneutral fis,8 fis' fis'~ fis eis r
      fis8~ fis32 e! d cis d16. h32 \appoggiatura a8 gis8. d'16 cis8-.
      h8 a fis~ fis eis cis
      %% Takt 30 ==================================================
      fis4 gis8 a r h
      \halsdown cis8 r \clef "treble" eis fis e\rest gis!
      a8 e\rest fis dis c\rest \clef "bass" a
      gis8 d\rest dis cis4 h8\rest
      s2.
      %% Takt 35 ==================================================
      h4\rest cis'8 ais cis fis,
      fis8 r fis' dis fis h,
      h8 r \up h' gis! h e,~
      e8 c,\rest g'32\rest e'! d cis d8 c,\rest a'32\rest fis' eis dis
      eis8 e,\rest c'32\rest gis'! fis eis! fis8 e32\rest cis' h a h a gis! fis
      %% Takt 40 ==================================================
      eis4 fis8 \down \halsneutral dis4 d8
      cis4 his8 cis4.~
      cis8 fis, r gis a h
      \once \override Stem #'length = #9 cis8 s4 s4.
      s2.
      %% Takt 45 ==================================================
      s2. * 5
      %% Takt 50 ==================================================
      s2.
      s2.
      s2.
      s8 \halsdown g'4 e4 e8\rest
      \halsneutral r32 fis g a d, a' g fis cis g' fis e d4.~
      %% Takt 55 ==================================================
      d8 \clef "bass" e, \tieDown a~ a d a
      \halsdown a8~ a32 g! fis g a fis g a d,8 fis a~
      a16 fis fis e e dis dis8 h dis
      e16 g g fis fis e e8 s4
      s2.
      %% Takt 60 ==================================================
      s2.
      s4 c'8 h c\rest \clef "bass" h
      a8 d,\rest a' fis d\rest fis
      e8 d\rest s s d\rest g!
      fis8 h,\rest cis h4 h8\rest
      %% Takt 65 ==================================================
      s2.
      s2.
      s2.
      s4. c'8\rest c fis,
      \once \override Beam #'positions = #'( -13 . -11.5 ) g!8~ g32 g a h cis! d \up e fis
         \once \override Beam #'positions = #'( 0 . -3 ) g a g fis e d cis \change Staff = "left" h a g fis e
      %% Takt 70 ==================================================
      \once \override Beam #'positions = #'( -15 . -12 ) d8~ d32 fis g a h cis \up d e
         \once \override Beam #'positions = #'( 0 . -3.5 ) fis g fis e d cis \change Staff = "left" h a g fis e d
      cis8 r16 r32 d' cis[ h ais gis] fis8 r32 d'[ cis h] ais!8
      r32 h[ cis d e] s s s \up c32\rest fis[ gis! ais! h] s s s g32\rest h[ cis d e] s s s
      \down s2.
      s2.
      %% Takt 75 ==================================================
      s2.
      s2.
      s2.
      s2.
      \halsdown h,8 s4 s4.
      %% Takt 80 ==================================================
      s2.
      \up \once \override Rest #'extra-offset = #'( 0.6 . 0 ) c32\rest e[ fis g] cis,8 d \down \halsdown h4.
      ais4 h8 gis4 g8
      fis4 eis8 fis4.~
      fis8 h, d\rest g fis fis
      %% Takt 85 ==================================================
      fis8 d\rest d\rest d4\rest d8\rest
   }
}

right = {
   \override Staff.VerticalAxisGroup #'minimum-Y-extent = #'(-2 . 3)
   \clef "treble"
   <<
      \sopran
      \sopranzwei
      \alt
   >>
}

left = {
   \override Staff.VerticalAxisGroup #'minimum-Y-extent = #'(-3 . 2)
   \clef "bass"
   <<
      \tenor
      \bass
   >>
}

pedal = {
   \override Staff.VerticalAxisGroup #'minimum-Y-extent = #'(-3 . 3)
   \global
   \clef "bass"
   \relative h, {
      R2.
      R2.
      R2.
      r8 r16 h h'8~ h8. h,16 h'8~
      %% Takt  5 ==================================================
      h8. h,16 h'8~ h8. h,16 h'8~
      h8. h,16 h'8~ h8. h,16 h'8
      fis8 fis,4~ fis8. fis'16 e! fis32( g!)
      \appoggiatura h,8 ais4.~ ais8. ais'16 fis8
      h8 h,4~ h8. h'16 fis g32( a!)
      %% Takt 10 ==================================================
      \appoggiatura e8 dis4.~ dis8. fis16 h,8
      e4.~ \stemDown e8~ e32 e d! e cis d h cis
      \stemNeutral a8~ a32 a' g a fis g e fis d8~ d32 d cis d h cis a h
      g8~ g32 g' fis g e fis d e cis8~ cis32 e d e ais, cis h cis
      fis,8. fis'16 fis,8~ fis8. fis'16 fis,8~
      %% Takt 15 ==================================================
      fis8. fis'16 fis,8~ fis8. fis'16 fis,8
      g4 r8 e' fis fis,
      h8 r r r4 r8
      R2.
      R2.
      %% Takt 20 ==================================================
      R2.
      R2.
      R2.
      R2.
      R2.
      %% Takt 25 ==================================================
      R2. * 5
      %% Takt 30 ==================================================
      r8 r16 fis fis'8 ~fis8. fis,16 fis'8~
      fis8. fis,16 fis'8~ fis8. fis,16 fis'8~
      fis8. fis,16 fis'8~ fis8. fis,16 fis'8
      cis4.~ cis8. cis'16 gis a32 h
      eis,4.~ eis8 cis eis
      %% Takt 35 ==================================================^
      fis4.~ fis8 fis, ais
      h4.~ h8 h' dis,
      e4.~ e8 e, gis
      a8 fis a h gis h
      cis8 a cis d h gis
      %% Takt 40 ==================================================
      cis8. cis'16 cis,8~ cis8. cis'16 cis,8~
      cis8. cis'16 cis,8~ cis8. cis'16 cis,8
      d4 r8 h8 cis4
      fis,8 r r r4 r8
      R2.
      %% Takt 45 ==================================================
      R2. * 5
      %% Takt 50 ==================================================
      r4 r8 r8 r32 \once \override Beam #'positions = #'( -3.8 . -4.7 ) fis' e fis d e cis d
      h8~ h32 h' a h g a fis g e8~ e32 e d e cis d h cis
      a8~ a32 a' g a fis g e fis d8~ d32 fis e fis h, d cis d
      g,4.~ g8. g'32 fis g16 e
      fis8 g,  a h h' a
      %% Takt 55 ==================================================
      gis8 gis, g fis g a
      d,8 r r r4 r8
      dis8 r r r4 r8
      e8 r r r e g
      a8 r r r fis a
      %% Takt 60 ==================================================
      h4 r8 r4 r8
      r8 r16 e, e'8 ~e8. e,16 e'8~
      e8. e,16 e'8~ e8. e,16 e'8~
      e8. e,16 e'8~ e8. e,16 e'8
      h4.~ h8. a'32 g a16 fis
      %% Takt 65 ==================================================
      g8 a, h c c' h
      a8 a, g fis e' dis
      e8 e, d! c c' r
      fis,8 fis' r g, a h
      e,8 r r a r r
      %% Takt 70 ==================================================
      d,8 r r g r r
      cis8 r h ais r fis
      h8 r a! g!4.
      fis8 r r r4 r8
      R2.
      %% Takt 75 ==================================================
      R2.
      R2.
      R2.
      R2.
      r8 h d e cis e
      %% Takt 80 ==================================================
      fis8 d fis g e cis
      fis8. fis,16 fis'8~ fis8. fis,16 fis'8~
      fis8. fis,16 fis'8~ fis8. fis,16 fis'8
      fis8. fis,16 fis'8~ fis8. fis,16 fis'8
      g,4  r8 e' fis fis,
      %% Takt 85 ==================================================
      h8 r r r4 r8
   }
}

% Fuge ==============================================================================

up       = { \change Staff = "rightFuga" \halsdown }
down     = { \change Staff = "leftFuga" \halsup }

globalFuga = {
   \key h \minor
   \time 4/4
   #(set-accidental-style 'default)
   \set subdivideBeams = ##f
   \override Score.MetronomeMark #'transparent = ##t
   #(revert-auto-beam-setting '(end 1 32 6 8) 1 8)
   #(revert-auto-beam-setting '(end 1 32 6 8) 1 4)
   #(revert-auto-beam-setting '(end 1 32 6 8) 1 2)
   #(revert-auto-beam-setting '(end 1 32 6 8) 5 8)
   \override Staff.VerticalAxisGroup #'minimum-Y-extent = #'(-3 . 3)
}

sopranFuga = {
   \new Voice \relative fis' {
      \globalFuga
      \halsup
      << s1^\markup { \huge \bold "Fuge" }
         \once \override MultiMeasureRest #'staff-position = #4 R1 >>
      \once \override MultiMeasureRest #'staff-position = #4 R1
      \once \override MultiMeasureRest #'staff-position = #4 R1
      \once \override MultiMeasureRest #'staff-position = #4 R1
      %% Takt 5  ==================================================
      \once \override MultiMeasureRest #'staff-position = #4 R1
      \once \override MultiMeasureRest #'staff-position = #4 R1
      \once \override MultiMeasureRest #'staff-position = #6 R1
      \once \override MultiMeasureRest #'staff-position = #4 R1
      R1
      %% Takt 10 ==================================================
      fis8 eis fis gis a gis a h
      cis d cis h a gis! fis fis'~
      fis16 e fis d e4~ e16 d e cis d cis d h
      cis2~ cis16 g' fis e d cis h ais
      h8 h' a g fis f\rest f4\rest
      %% Takt 15 ==================================================
      f2\rest e8 dis e fis
      g8 fis g a h c h a
      g2~ g16 fis g h a h g a
      fis16 g a g fis e d cis d2~
      d4 cis~ cis16 d cis h a gis a h
      %% Takt 20 ==================================================
      cis16 d e fis e a gis fis e4 a~
      a gis a2~
      a16 gis a fis gis4~ gis16 fis gis eis fis4~
      fis8 eis fis4~ fis8 eis! fis gis
      a8 gis fis eis fis2~
      %% Takt 25 ==================================================
      fis4 e!~ e16 d e g fis e d cis
      d2~ d16 d cis h a4~
      a16 h d cis h a gis a fis2~
      fis4 f'16\rest fis e d cis fis e d cis h a gis
      fis16 eis fis gis ais h cis d e cis ais! cis e d e cis
      %% Takt 30 ==================================================
      d16 fis, cis' e, d8 e fis4. e'8
      dis8 e a,! g fis4 h\rest
      R1
      R1
      R1
      %% Takt 35 ==================================================
      e8 dis e fis g fis g a
      h8 c h a gis e fis gis
      a8 a\rest a\rest a h a\rest a\rest h
      h8 a\rest a\rest a a a\rest a\rest gis
      gis8 a\rest a\rest fis gis a\rest a\rest gis
      %% Takt 40 ==================================================
      gis8 a\rest a\rest fis~ fis16 eis fis dis eis cis fis cis
      gis'16 cis, fis cis gis' cis, a' cis, h' a gis fis eis fis gis eis
      h16 d cis h a gis fis gis a8 gis a h
      cis4 f\rest a\rest e!~
      e4 d2 cis4~
      %% Takt 45 ==================================================
      cis8 a d cis h gis cis h
      ais8 fis h a gis e a4~
      a4 g!2 fis4~
      fis16 a g fis e4~ e16 d e fis g a h cis
      d8 cis d e fis e fis g
      %% Takt 50 ==================================================
      a8 h a g fis g a4~
      a8 a g4~ g8 g fis4~
      fis8[ f~] f e16 d cis4~ cis8 e~
      e8 d4 cis8 d f\rest a4\rest
      c16\rest fis, h a g! fis e d e2~
      %% Takt 55 ==================================================
      e4~ e16 e d cis d2~
      d4~ d16 cis d h gis' fis eis gis \diffdot h, d cis8~
      cis4 e!16 d e cis d4 ais!
      h4~ h8. cis16 d8 cis a'4\rest
      h4 c16\rest h ais h fis4 a16\rest fis e fis
      %% Takt 60 ==================================================
      d4 f16\rest d cis d h4~ h16 h eis, d'
      cis2~ cis16 cis h cis a h gis! a
      \once \override Beam #'positions = #'( 2.6 . 3 ) fis16 gis a h cis8 f\rest f2\rest
      \once \override MultiMeasureRest #'staff-position = #4 R1
      R1
      %% Takt 65 ==================================================
      R1
      R1
      R1
      cis8 his cis dis e dis e fis
      gis8 a gis fis eis cis gis'4~
      %% Takt 70 ==================================================
      gis8 cis, fis e! dis h fis'4~
      fis8 h, e d! cis h cis dis
      e8 dis e fis g fis e dis!
      e16 h g h d! c d h c a fis a c h c a
      h16 g e g h a h g a fis dis fis a g a fis
      %% Takt 75 ==================================================
      g16 e g h d! cis d h cis g e g cis d e8~
      e4 d~ d cis~
      cis4 h~ h a
      gis8 a \tieDown h4~ h4 a'8\rest \tieUp h~
      h16 a h gis a8 gis~ gis16 fis gis eis! fis4~
      %% Takt 80 ==================================================
      fis4 e!~ e16 cis ais cis e d e cis
      d16 e fis e d cis h ais h4~ h8. cis16
      d16 cis h cis dis e fis g a2~
      a16 g a fis g8 a h dis, e4~
      e4 dis e8 d4 cis!8~
      %% Takt 85 ==================================================
      cis8 h16 ais h8 cis d cis d e
      fis8 g fis e d2~
      d8 g cis, h ais fis' h,4~
      h16 cis d gis, ais8.\prall h16 h2\fermata
   }
}

altFuga = {
   \new Voice \relative h {
      \globalFuga
      \halsup
      \down h8 ais h cis \up d cis d e
      fis8 g fis e d cis h h'~
      h16 a! h gis a8 h cis eis, fis4~
      fis4 eis fis16 cis dis eis! fis gis! a h
      %% Takt  5 ==================================================
      gis4~ gis16 ais h cis fis,4~ fis16 h ais! h
      e,4~ e16 d e cis d e fis gis ais h cis ais
      h16 cis d h cis d e cis d cis e d cis h ais cis
      fis,4~ fis16 h ais cis h a g! fis e d cis d
      e16 g fis e d cis d cis \down h ais! h cis \up d fis e d
      %% Takt 10 ==================================================
      cis4. d8 cis4. d8
      cis8 a' gis cis,~ cis4 a\rest
      g'!4~ g16 fis g e fis4~ fis16 e fis d
      e16 d cis d e g fis e d8 cis d e
      fis8 e fis g a!2~
      %% Takt 15 ==================================================
      a8 c h a g a h4~
      h4 e2 dis4
      e16 h a h  g a h g e8 cis d e
      fis e\rest e4\rest e2\rest
      \once \override MultiMeasureRest #'staff-position = #-4 R1
      %% Takt 20 ==================================================
      a8 gis a h cis h cis d
      e fis e d cis e d cis
      h4~ h16 a h gis a4~ a16 h cis a
      d16 e! d cis h a gis fis a8 gis a h
      cis2~ cis16 h a gis fis a gis h
      %% Takt 25 ==================================================
      a8 fis16 gis ais8 h cis4 g\rest
      g16\rest cis h a! gis fis eis fis gis4~ gis16 gis fis eis!
      fis4. eis8 fis16 e8 d16~ d cis8 h16
      a4 e'\rest e2\rest
      \once \override MultiMeasureRest #'staff-position = #-2 R1
      %% Takt 30 ==================================================
      \down h8 ais h \up cis d cis d e
      fis8 g! fis e dis h cis dis
      e16 \down h g h \up e d! e cis d \down a fis a \up d cis d \down h
      cis8 h cis a h a h cis
      d16 a fis a d c d h c g e g c h c a
      %% Takt 35 ==================================================
      h16 h'\rest g8\rest e4\rest \up h'16\rest e dis! cis! h a g fis
      e16 dis e fis gis a h c d h gis h d cis d h
      cis16 a e a cis h cis a d h e, h' d cis d h
      cis16 a e a cis h cis a h a h cis h a h gis
      a16 fis cis fis a gis a fis h gis cis, gis' h a h gis
      %% Takt 40 ==================================================
      a16 fis cis fis a gis a fis gis8 e\rest e4\rest
      \once \override MultiMeasureRest #'staff-position = #-4 R1
      e2\rest fis8 eis fis gis!
      a8 gis a h cis d cis h
      ais8 fis h a gis e a g
      %% Takt 45 ==================================================
      fis2~ fis4 e~
      e4 d~ d8 cis fis e
      dis8 h e d cis a d c
      h4~ h16 d cis! h cis8 a\rest a4\rest
      e'4\rest a~ a8 h16 cis d8 e~
      %% Takt 50 ==================================================
      e8 d cis e d e fis4~
      fis4. e16 d cis! d e8~ e d16 cis
      h16 cis d8 gis, h~ h8 b16 a g4
      fis4 e d16 e fis g a h cis a
      d2~ d16 d cis h ais h cis ais
      %% Takt 55 ==================================================
      fis16 gis ais h cis4~ cis16 cis h a gis! a h gis
      eis16 fis gis a h2~ h8. h16
      ais16 cis ais fis~ fis4~ fis16 h fis d e d e cis
      fis8 eis16 fis gis ais h8~ h16 gis ais h cis d e!8~
      e16 d e cis d8 e fis ais, h4~
      %% Takt 60 ==================================================
      h4 ais h16 fis e fis d8 a\rest
      fis'8 eis fis gis a gis a h
      cis d cis h a gis! fis a~
      a16 g! a fis g4~ g16 fis g e fis4~
      fis8 h, e4~ e8 d16 cis d4~
      %% Takt 65 ==================================================
      d16 cis d e d fis e d cis h cis d e4~
      e16 d e fis e g fis e d cis d e fis4~
      fis16 eis fis gis fis a gis fis eis! dis eis fis gis! h a gis
      a16 gis fis e! dis4~ dis16 cis dis e cis4~
      cis16 dis e fis gis4~ gis16 gis fis gis eis8 gis
      %% Takt 70 ==================================================
      cis,16 eis fis gis a h cis a h fis e fis dis!8 fis
      h,16 dis e fis g! a h g a g fis g a h a h
      g16 h a h g h fis h e, h' fis h g a fis g
      e8 c\rest c4\rest e2\rest
      \once \override MultiMeasureRest #'staff-position = #-4 R1
      %% Takt 75 ==================================================
      c2\rest e4\rest cis'~
      cis4 h~ h a~
      a4 gis~ gis fis~
      fis4 e8\rest fis' eis cis dis eis
      fis8 h,8\rest h16\rest fis' eis fis cis4 h16\rest cis h cis
      %% Takt 80 ==================================================
      a4 g16\rest a g! a fis4 e8\rest fis~
      fis4 e\rest e16\rest g! fis e d cis \down h8~
      h8 \up h' a! g fis16 e' dis! cis h a g fis
      e8 h' e a,~ a16 g a fis h8 c
      h16 a g a h4~ h8 ais h fis~
      %% Takt 85 ==================================================
      fis4 e8\rest cis'~ cis16 h cis ais! fis8 g
      fis16 e d e fis4~ fis16 e d e fis g a! fis
      g2 fis4~ fis16 fis g8
      fis2 fis
   }
}

tenorFuga = {
   \new Voice \relative fis {
      \globalFuga
      R1
      R1
      fis8 eis fis gis a gis a h
      cis d cis h a gis fis fis'~
      %% Takt  5 ==================================================
      fis16 e! fis dis e4~ e16 d e cis d4~
      d16 d cis h ais8 fis h16 cis d h \clef "treble" cis d e cis
      d16 e fis gis ais h cis ais h a g fis e4~
      e16 d e cis d8 e fis \clef "bass" ais, h4~
      h ais h16 fis gis ais! h8 fis~
      %% Takt 10 ==================================================
      fis8 gis cis,16 a' gis fis eis fis gis8~ gis16 eis fis gis
      a gis a h cis h a gis fis gis a h cis e! d cis
      h4 r r2
      r2 h8 ais h cis
      d8 cis dis e \clef "treble" fis g fis e
      %% Takt 15 ==================================================
      dis2 e16 \clef "bass" h a h g a fis g
      e16 fis dis fis e g fis a g fis g a fis a g fis
      e8 h' e d! cis! a h cis
      \clef "treble" \halsneutral d8 e fis g a16 g fis e d fis e g
      fis16 e d e fis g e fis d2
      %% Takt 20 ==================================================
      cis8 h cis d e16 d cis h a gis a h
      cis16 h a h cis d e fis e d cis d e fis gis a
      dis,16 eis fis dis eis fis gis eis fis8 cis d a
      \clef "bass" h8 cis d h cis16 h cis d cis h a gis
      fis16 cis gis' cis, a' cis, h' cis, cis'4. d8
      %% Takt 25 ==================================================
      cis16 h a h cis d e fis g!8 ais, h fis'~
      fis16 e d cis h a! gis a h8 eis, fis d'
      cis8 gis cis h a h a gis
      fis8 eis fis gis a gis a h
      cis d cis h ais fis gis ais
      %% Takt 30 ==================================================
      h8 d,\rest d16\rest h' a! g! fis h a g fis e d cis
      h16 ais h cis dis e fis g a! fis dis fis a g a fis
      g8 fis g e fis e fis gis
      a16 e cis e a g! a fis g d h d g fis g e
      fis8 e fis d e d e fis
      %% Takt 35 ==================================================
      g16 c h a g fis e dis e8 r r4
      r8 a d! c h d cis h
      a8 e' a, e' gis, e' gis, e'
      a,8 e' a, e' e, d' eis, cis'
      fis,8 cis' fis, cis' eis, cis' eis, cis'
      %% Takt 40 ==================================================
      fis,8 cis' fis, cis' cis, his cis dis
      eis8 dis eis fis gis a gis fis
      eis8 cis dis eis  fis16 h, cis d cis h a gis
      fis16 cis' dis eis fis eis fis gis a gis a h cis d! e! cis
      fis16 e d cis h cis d h e d cis h a h cis a
      %% Takt 45 ==================================================
      d16 e d cis h a gis fis gis h cis d cis h ais gis!
      fis16 e d cis h a! gis fis e e' a gis! fis gis a fis
      h16 a g! fis e d cis h a g fis e d e fis d
      g8 d' g4~ g8 e a g
      fis16 h a g fis e d cis d d' cis h a g fis e
      %% Takt 50 ==================================================
      fis d g d a' d, h' d, c' d, h' d, c' d, a' d,
      h'16 d, a' d, h' d, g d a' d, g d a' d, fis d
      gis16 a h cis \clef "treble" d e fis gis! a e g fis e d cis h
      \clef "bass" a16 g fis g a8 a, d e d cis
      h8 gis ais h cis d cis h
      %% Takt 55 ==================================================
      ais8 fis gis ais h cis h a
      gis8 a gis fis eis fis gis! eis
      fis8 fis' ais, fis' h, fis' cis fis
      d16 fis gis ais h cis d eis, fis8 gis! ais! fis
      h8 ais h cis \clef "treble" d cis d e
      %% Takt 60 ==================================================
      fis8 g! fis e d cis \clef "bass" h4~
      h16 a! h gis a8 h cis eis, fis4~
      fis4 eis fis16 cis' h cis a8 cis
      fis,8 h e,! h' e, a d, a'
      g!16 fis g a g fis g e fis e fis g fis e fis d
      %% Takt 65 ==================================================
      gis8 a h gis e4~ e16 d' cis h
      ais8 h cis ais fis4~ fis16 e' dis cis
      his8 cis dis4~ dis8 gis, cis4~
      cis4 r16 cis his cis gis4 r16 gis fis gis
      e4 r16 e d! e cis r r8 r4
      %% Takt 70 ==================================================
      R1
      r2 e8 dis e fis
      g8 fis g a h c h a
      g8 h e, gis a c dis, fis
      g!8 h cis,! e fis a h, dis
      %% Takt 75 ==================================================
      e8 h g e a16 a' cis e g fis g e
      fis16 d a d fis e fis d e cis gis cis e d e cis
      d16 h fis h d cis d h cis a e a cis h cis a
      d16 e d cis h a gis fis gis a h d cis h a gis!
      fis8 cis cis'4~ cis8 h cis d
      %% Takt 80 ==================================================
      cis16 h a h cis d e d cis4 r8 cis
      h8 cis d e fis16 e d cis h a! g8
      fis8 r r4 r2
      e'8 r r16 e16 dis e h8 r r16 h a h
      g8 r r16 g fis g \once \override Beam #'positions = #'( 4.7 . 2.9 ) e \clef "treble" e' fis g! fis e fis e
      %% Takt 85 ==================================================
      d16 cis d cis d8 e fis \clef "bass" ais, h4~
      h4 ais h2~
      h16 h cis d e fis d e cis h cis ais h8. cis16
      <<
         \new Voice { \halsup d4 \once \override NoteColumn #'force-hshift = #-1 cis16 d e!8 dis2 \fermata }
         \new Voice { \halsdown s4 \shiftOn cis \halsup h2 }
         \new Voice { \halsdown \shiftOff r16 ais h eis, fis4~ fis2 }
      >>
   }
}

rightFuga = {
   \clef "treble"
   <<
      \sopranFuga
      \altFuga
   >>
}

leftFuga = {
   \clef "bass"
   <<
      \tenorFuga
   >>
}

pedalFuga = {
   \globalFuga
   \clef "bass"
   \relative h, {
      R1 * 4
      %% Takt  5 ==================================================
      R1
      R1
      R1
      h8 ais h cis d cis d e
      fis8 g fis e d cis h4~
      %% Takt 10 ==================================================
      h16 a! h gis a8 h cis eis, fis4~
      fis4 eis fis8 gis a fis
      h8 d cis h ais fis h4~
      h4 ais h2~
      h16 a'! g! a fis g e fis dis fis e fis dis e cis dis
      %% Takt 15 ==================================================
      h16 h' a h g a fis g e g fis g e fis d! e
      c2 h8 a h4
      e,4 r r2
      d'8 cis d e fis e fis g
      a8 h a g fis e fis gis
      %% Takt 20 ==================================================
      a2~ a8 gis fis4
      cis8 d e e, a4 r
      R1
      R1
      fis8 eis fis gis a gis a h
      %% Takt 25 ==================================================
      cis8 d cis h ais fis gis ais
      h8 cis d h eis cis fis h,
      cis8 h cis4 fis,2~
      fis4 r r2
      R1
      %% Takt 30 ==================================================
      R1 * 30
      %% Takt 60 ==================================================
      R1
      fis'4 r16 fis eis fis cis4 r16 cis h cis
      a4 r16 a gis a fis4 r16 fis' e! fis
      dis4 r16 e d e cis4 r16 d cis d
      h4 r16 cis h cis ais4 r16 h a h
      %% Takt 65 ==================================================
      e,8 fis gis e a h a g
      fis8 gis ais fis h cis h a
      gis ais his gis cis dis eis cis
      fis gis a! fis gis his, cis4~
      cis4 h!~ h8 h'~ h16 a h gis
      %% Takt 70 ==================================================
      a4 a,~ a8 a'~ a16 gis a fis
      g!4 g,~ g8 a g fis
      e8 c' h a g a h4
      e,4 r r2
      R1
      %% Takt 75 ==================================================
      r2 r4 r8 a
      d8 cis d h cis h cis a
      h8 a h e, a gis a fis
      h8 cis d4 cis r
      fis,8 eis fis gis a gis a h
      %% Takt 80 ==================================================
      cis8 d cis h ais fis gis ais
      h8 ais h cis d cis d e
      fis8 g! fis e dis h cis dis
      e8 dis e fis g fis g a
      h8 c h a gis fis gis ais
      %% Takt 85 ==================================================
      h4 r16 h ais h fis4 r16 fis e fis
      d4 r16 d cis d h8 cis d h
      e8 e, e'4~ e16 d e cis d8 e
      fis4 fis, h2\fermata
      \bar "|."
   }
}

\bookpart {
   \header {
      title = "Praeludium et Fuga"
      subtitle = "pro Organo pleno"
      composer = "Johann Sebastian Bach"
      opus="BWV 544"
   }

   \score {
      <<
         \new PianoStaff {
            <<
               \context Staff = right {
                  <<
                     \context Voice = right \right
                  >>
               }
               \context Staff = left {
                  <<
                     \context Voice = left \left
                  >>
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
}

\bookpart {
   \header {

   }
   \score {
      <<
         \new PianoStaff {
            <<
               \context Staff = rightFuga {
                  <<
                     \context Voice = right \rightFuga
                  >>
               }
               \context Staff = leftFuga {
                  <<
                     \context Voice = left \leftFuga
                  >>
               }
            >>
         }
         \context Staff = pedalFuga {
            \context Voice = pedal \pedalFuga
         }
      >>

      \layout{
         indent = 1.0\cm
      }
   }
}

% midi
\score {
   <<
      \context Staff = right {
         \set Staff.midiInstrument = "church organ"
         \context Voice = right \right
      }
      \context Staff = left {
         \set Staff.midiInstrument = "church organ"
         \context Voice = left \left
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
         tempoWholesPerMinute = #(ly:make-moment 90 8)
      }
   }
}

\score {
   <<
      \context Staff = rightFuga {
         \set Staff.midiInstrument = "church organ"
         \context Voice = rightFuga \rightFuga
      }
      \context Staff = leftFuga {
         \set Staff.midiInstrument = "church organ"
         \context Voice = leftFuga \leftFuga
      }
      \new Staff {
         \set Staff.midiInstrument = "church organ"
         \pedalFuga
      }
      \new Staff {
         \set Staff.midiInstrument = "tuba"
         \transpose c c, \pedalFuga
      }
   >>

   \midi {
      \context {
         \Score
         tempoWholesPerMinute = #(ly:make-moment 64 4)
      }
   }
}
