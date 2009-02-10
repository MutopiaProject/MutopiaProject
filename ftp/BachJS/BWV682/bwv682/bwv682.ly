\version "2.12.02"

\header {
 mutopiatitle = "Vater unser im Himmelreich"
 mutopiacomposer = "BachJS"
 mutopiaopus = "BWV 682"
 mutopiainstrument = "Organ"
 source = "Edition Peters 8662"
 style = "Baroque"
 copyright = "Creative Commons Attribution-ShareAlike 3.0"
 maintainer = "Urs Metzger"
 maintainerEmail = "urs@ursmetzger.de"
 lastupdated = "2009/Feb/08"

 title = "Vater unser im Himmelreich"
 subtitle = "a 2 Clav. e Pedale"
 composer = "Johann Sebastian Bach"
 opus="BWV 682"
 footer = "Mutopia-2009/02/10-1625"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2009. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

\paper {
   head-separation = 0.2 \cm
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

halsup      = { \stemUp \tieUp \slurUp \dotsUp }
halsdown    = { \stemDown \tieDown \slurDown \dotsDown }
halsneutral = { \stemNeutral \tieNeutral \slurNeutral \dotsUp }
up          = { \change Staff = "right" \halsdown }
down        = { \change Staff = "left" \halsup }
tup         = { \override TupletNumber #'transparent = ##f }
notup       = { \override TupletNumber #'transparent = ##t }
tu          = { \once \override TupletNumber #'extra-offset = #'( 0 . 0.6 ) }
tuu         = { \once \override TupletNumber #'extra-offset = #'( 0 . 0.3 ) }
td          = { \once \override TupletNumber #'extra-offset = #'( 0 . -0.7 )}

global = {
   \key h \minor
   \time 3/4
   #(set-accidental-style 'default)
   \override Score.MetronomeMark #'transparent = ##t
   #(revert-auto-beam-setting '(end 1 32 3 4) 1 8)
   #(revert-auto-beam-setting '(end 1 32 3 4) 3 8)
   #(revert-auto-beam-setting '(end 1 32 3 4) 5 8)
   #(override-auto-beam-setting '(end 1 24 3 4) 1 8)
   #(override-auto-beam-setting '(end 1 24 3 4) 2 8)
   #(override-auto-beam-setting '(end 1 24 3 4) 3 8)
   #(override-auto-beam-setting '(end 1 24 3 4) 4 8)
   #(override-auto-beam-setting '(end 1 24 3 4) 5 8)
   \set tupletSpannerDuration = #(ly:make-moment 1 8)
   \override TupletBracket #'bracket-visibility = ##f
   \tupletUp
}

sopran = {
   \new Voice \relative h' {
      \global
      \partial 4 \once \override TextScript #'extra-offset = #'( -3.4 . 0 )
         h4^\markup { \normalsize \bold   "Canto fermo in Canone" }
      h8~ h32 c h a g4.\prall( fis16 g)
      a32( fis16.) e32( g16.) fis32( e dis16) c'8~ c16 h a8~
      a16 g( fis e) g4( fis8.\prall e32 fis)
      e8 g32( fis16.) a32( gis16.) h32( ais16.) cis32( h16.) d32( cis16.)
      %% Takt  5 ==================================================
      h32( ais16.) fis'8~ fis h ais a
      gis8 g4 ais,8 h cis
      fis,8 h~ h16 ais h g' \once \override Beam #'positions = #'( 2.6 . 3 ) ais,!8.\prall h16
      h4 r8 d c h
      c32( h a16) c32( h16.) d32( c16.) es32( d16.) fis!32( e16.) g32( fis16.)
      %% Takt 10 ==================================================
      g8 e32( dis16.) dis32( e16.) a,8~ \times 2/3 { a16 h-. c-. c-. h-. a-. }
      \halsdown g8 a~ a32( g16.) fis32( e16.) g32( fis16.) e32( dis16.)
      e8 e\rest e\rest e32( dis16.) fis32( e16.) g32( fis16.)
      g8 fis32( e16.) dis8 fis32( e16.) g32( fis16.) e32( dis!16.)
      e8 e\rest \times 2/3 { e16\rest h'-. cis-. dis-. cis-. h-. } \slurUp e32( dis16.) \tieUp e8~
      %% Takt 15 ==================================================
      \halsup e32( dis16.) fis32( e16.) \times 2/3 { \tu fis16^. g^. fis^. \tu e^. dis!^. cis^. } h4~
      h4~ h32( a16.) c32( h16.) d!32( cis16.) e32( dis16.)
      \halsneutral e8.\mordent fis16 \appoggiatura e16 \times 2/3 { dis16-. cis!-. h-. h-. cis-. d-. } d4~
      d32( a16.) gis32( d'16.) c!32( h16.) a32( gis!16.) \times 2/3 { a16-. a-. h-. \stemUp c!-. h-. a-. } \stemNeutral
      a32( fis16.) gis8\mordent r f' e es
      %% Takt 20 ==================================================
      d4~ \times 2/3 { d16 c-. h-. h-. c-. d-. } c8 gis
      a4~ a16 gis a fis gis8.\prall a16
      a4 r a
      a8~ a32 c h a g!4.\prallprall ( fis16 g)
      a32( fis16.) e32( g16.) fis32( e dis16) c'8~ c16 h a8~
      %% Takt 25 ==================================================
      a16 g fis e \slurDown g4( fis8.\prall e32 fis) \slurNeutral
      e8 g32( fis16.) a32( g16.) h32( a16.) cis!32( h16.) d!32( cis16.)
      \halsup cis32( d16.) e32( d16.) fis32( e16.) g32( fis16.) g32( fis16.) e32( dis16.)
      \times 2/3 { \tu e16^. fis^. g^. \tu g^. fis^. e^. } h'8 e,4 es8
      \halsdown d!8 e,!32( d16.) fis32( e16.) g32( fis16.) a32( g16.) h32( a16.)
      %% Takt 30 ==================================================
      \halsup \times 2/3 { \tu h16^. a^. h^. \notup c^. h^. a^. h^. e^. dis^. e^. fis^. g~ g fis^. e^. fis^. g^. a~ }
      a32 g fis16 g8~ g fis~ \times 2/3 { \tup \tu fis16 e^. dis^. \tu dis^. e^. fis
      \halsneutral e16-. e,-. fis-. g-. fis-. e~ }e16 dis'8 e16 \times 2/3 { a,16-. e'-. fis-. g-. fis-. e-. }
      dis32( cis h16) a32( g16.) h32( a16.) c32( h16.) dis!32( cis16.) e32( dis16.)
      e8( f) r d! c h
      %% Takt 35 ==================================================
      c32( h a16) g!32( fis!16.) a32( g16.) b32( a16.) cis32( h16.) d32( cis16.)
      d8( es) r c h a
      \halsdown h32( a g16) d32( cis!16.) e32( dis16.) fis32( e16.) gis32( fis32 e16) h'32( ais16.)
      h32( a! g!16) fis32( e16.) g32( fis16.) c'8 h dis!
      e4~ e16 h8 ais16 \times 2/3 { \tupletDown h16^. cis!^. d!^. \td e^. fis^. e^. }
      %% Takt 40 ==================================================
      d8 cis~ cis16 c8 h16 a! fis dis'8
      g,8\rest e' dis d cis! c
      \times 2/3 { \td h16_. ais_. h_. \td cis!_. h_. ais_. } h8 fis~ \times 2/3 { \td fis16 fis_. e_. \td fis_. gis_. a_. }
      h4~ \times 2/3 { \td h16 h_. a_. \td g!_. fis_. e_. } fis32( e16.) g32( fis16.)
      a8 c4 h8 \halsneutral \times 2/3 { \tupletUp \tu fis'16-. g-. a-. \tu a-. g-. fis-. }
      %% Takt 45 ==================================================
      g32( fis e16) c'8~ c8. h32 a h4~
      \times 2/3 { \tu h16 a-. gis-. \tu gis-. a-. h-. } e,8 f e32( d16.) c32( h16.)
      c32( h a16) e'32( dis16.) dis32( e16.) a,8~ \times 2/3 { a16 h-. c!-. c-. h-. a }
      g!8 a~ \slurDashed a32( g16.) \slurSolid fis32( e16.) g32( fis16.) e32( dis16.)
      \times 2/3 { e16-. fis-. g-. g-. fis-. e-. } a2~
      %% Takt 50 ==================================================
      \times 2/3 { a16 h-. c-. c-. h-. a-. } h2~
      \times 2/3 { h16 cis!-. d-. d-. cis-. h } h32( ais16.) cis32( h16.) h8 e~
      \halsdown \times 2/3 { \tupletDown \td e16 d_. cis_. \td cis_. d_. e_. } d4~ d8 cis~
      \times 2/3 { \td cis16 h_. ais_. \td h_. cis_. d_. } fis,8 e\rest \times 2/3 { \once \override TupletNumber #'extra-offset = #'( 0 . -0.4 ) e16\rest e_. fis_. \td g_. fis_. e_. }
      fis8 e\rest e\rest g!~ g16 fis8 e16
      %% Takt 55 ==================================================
      d4~ d32 cis16. e32( d16.) \times 2/3 { \td e16_. g_. fis_. \td e_. d_. cis_. }
      d8 e32( d16.) fis32( e16.) g32( fis16.) a!32( gis!16.) h32( ais16.)
      \halsneutral h8 e~ \times 2/3 { \tupletUp \tu e16 d-. cis-. \tu cis-. d-. e-. } \appoggiatura e16 d8. cis16
      ais'8( h~) \times 2/3 { \tu h16 a-. gis-. \tu gis-. a-. h-. } a32( gis16.) a8~
      \times 2/3 { \tu a16 g!-. fis-. \tu fis-. g-. a-. } h,8 e32( dis16.) dis32( e16.) a8
      %% Takt 60 ==================================================
      a8~ a32 c h a g4.\prallprall ( fis16 g)
      a32( fis16.) e32( g16.) fis32( e dis16) c'8~ c16 h a8~
      a16 g fis e g4( fis8.)\prallprall e32 fis
      e8 e,~ \times 2/3 { e16 fis-. g-. a-. h-. c-. } d8 d,~
      \halsdown \times 2/3 { \tupletDown \td d16 h_. cis!_. \notup d_. e_. fis_. g_. d_. e_. fis_. g_. a_. } h8 a~
      %% Takt 65 ==================================================
      a8 a d,16 e8 fis16 e fis8 g16
      fis8 h ais a gis16 g8 a16
      h8 d, \times 2/3 { \tup \td e16\rest d_. e_. \td fis_. e_. d_. } g16 fis8 e16
      a8 d, \times 2/3 { \td g16\rest a_. h_. \td c_. h_. a_. } fis'16 e8 dis16
      \halsup e4 \times 2/3 { \tupletUp \tu h16\rest h^. a^. \tu g^. a^. h^. } e,16 e'8 d!16
      %% Takt 70 ==================================================
      \halsneutral \times 2/3 { e-. d-. c-. c-. d-. e-. } a,4~ \times 2/3 { \once \override TupletNumber #'extra-offset = #'( 0 . 0.3 ) a16 a'-. g-. fis-. e-. d-. }
      c32( h16.) a32( g16.) f32( e16.) d32( cis!16.) e32( d16.) f!32( e16.)
      f32( a d16) r8 r fis!32( e16.) gis32( fis16.) a32( gis16.)
      a32( c,16.) h32( a16.) g32( fis16.) e32( dis16.) fis32( e16.) g32( fis16.)
      g32( h e16) r8 r gis32( fis16.) ais32( gis16.) h32( ais16.)
      %% Takt 75 ==================================================
      \times 2/3 { \tu h16-. a!-. g!-. fis-. e-. d-. } cis!16( h8) f'16~ f e8 d16
      c32( h a16) r8 \times 2/3 { r16 c!-. d-. \tu e-. fis!-. g-. } a8 fis\prall
      g8 e32( dis16.) dis32( e16.) a,8~ \times 2/3 { a16-. h-. c-. c-. h-. a }
      g8 e'~ e16 dis8 e16 \times 2/3 { fis16 e dis~ dis cis! h~
      \halsdown \notup h16 a g~ g fis e c' h a~ a g fis~ } fis8 e\rest
      %% Takt 80 ==================================================
      \halsup a'8\rest e dis a'~ \times 2/3 { \tup \tu a16 g^. fis^. \tu e^. fis^. dis!^. }
      e16 fis g8~ \times 2/3 { \tu g16 g^. fis^. \tu e^. dis^. cis!^. } h4~
      h8 e4 e8 d!4~
      d8 d32( c16.) e32( d16.) f32( e16.) gis32( fis16.) a32( gis16.)
      \halsneutral a8( b) r d,32( cis!16.) e32( d16.) f32( e16.)
      %% Takt 85 ==================================================
      f32( e d16) c32( h!16.) d32( c16.) es32( d16.) fis!32( e16.) g32( fis16.)
      g8( as) r c,32( h16.) d32( c16.) e32( d16.)
      e4~ \times 2/3 { e16 fis-. g-. a-. h-. c-. } dis,16 e8 c16
      c32( h16.) g'8~ g8. fis32 e fis4~
      \times 2/3 { \tu fis16 g-. a-. \tu a-. g-. fis-. } e8. dis32 e fis e dis16 e8~
      %% Takt 90 ==================================================
      \times 2/3 { e16 d!-. c-. h-. a-. g-. fis-. e-. c'-. \td h-. ais-. g'-. } \appoggiatura e8 dis8.\prall e16
      e2^\fermata
    }
}

alt = {
   \new Voice \relative h' {
      \global
      \partial 4 s4
      s2. * 9
      %% Takt 10 ==================================================
      s2.
      \halsup f'4\rest f\rest h,
      h2 g4
      a2 h4
      g2.
      %% Takt 15 ==================================================
      \halsdown fis2.
      e2 c4\rest
      s2.
      s2.
      s2.
      %% Takt 20 ==================================================
      s2. * 5
      %% Takt 25 ==================================================
      s2.
      s2.
      e4\rest e\rest h'
      h2 a4
      \halsup d2 h4
      %% Takt 30 ==================================================
      \halsdown g2 a4
      h2 g4\rest
      s2.
      s2.
      s2.
      %% Takt 35 ==================================================
      s2.
      s2.
      \halsup f'4\rest d\rest h8 cis!
      d!4. dis8 e fis
      g2.
      %% Takt 40 ==================================================
      fis2.
      \once \override Tie #'staff-position = #4.5 e2.~
      e4 dis2
      e2 f4\rest
      s2.
      %% Takt 45 ==================================================
      s2. * 5
      %% Takt 50 ==================================================
      s2.
      s2.
      c'4\rest a4\rest e
      fis2 e4
      d4 cis2
      %% Takt 55 ==================================================
      h2 ais4
      h2 f'4\rest
      s2.
      s2.
      s2.
      %% Takt 60 ==================================================
      s2.
      s2.
      s2.
      s2.
      f4\rest f\rest e
      %% Takt 65 ==================================================
      d2 cis4
      d2 h4
      h2.
      a2.
      \halsdown g2 f,4\rest
      %% Takt 70 ==================================================
      s2. * 5
      %% Takt 75 ==================================================
      s2.
      s2.
      s2.
      s2.
      \halsup a''4\rest a\rest h,
      %% Takt 80 ==================================================
      \halsdown c2 h8. a16
      g4 a2
      g4 fis2
      e2 e4\rest
    }
}

tenor = {
   \new Voice \relative e' {
      \global
      \partial 4 r4
      R2.
      R2.
      R2.
      r4 r4 e
      %% Takt  5 ==================================================
      e8~ e32 g fis e d4.\prallprall ( cis16 d)
      e32( cis16.) h32( d16.) cis32( h ais16) g'8~ g16 fis e8~
      e16 d( cis h) \slurDown d4( cis8.\prall h32 cis) \slurNeutral
      h8 d32( cis16.) e32( d16.) f32( e16.) gis32( fis16.) a32( gis16.)
      a4 r8 c, h a
      %% Takt 10 ==================================================
      h32( a g16) g'8~ g8. fis32 e fis4~
      \times 2/3 { fis16 e-. dis-. dis-. e-. fis-. } h,8 c h32( a16.) g32( fis16.)
      g8  e32( dis16.) fis32( e16.) g32( fis16.) g8 h
      \halsup e32( e,16.) a32( g16.) h32( a16.) c8 h8 r
      \times 2/3 { h'16\rest e,^. fis^. \tu g^. fis^. e^. } h'8  g\rest g\rest h,32( a16.)
      %% Takt 15 ==================================================
      c32( h16.) dis32( cis16.) e32( dis16.) fis8~ \times 2/3 { \tu fis16 g^. a^. \tu a^. g^. fis^. }
      g32( fis16.) e32( dis16.) e4. h8
      \times 2/3 { \tu c16^. h^. a^. \tu a^. h^. c^. } h4~ \times 2/3 { \tu h16 a^. h^. \tu c!^. h^. a^. }
      h4 d\rest e
      \halsneutral e8~ e32 f e d c4.\prall( h16 c)
      %% Takt 20 ==================================================
      d32( h16.) a32( c16.) h32( a gis16) f'8~ f16 e d8~
      d16 c( h a) \stemUp c4( \stemNeutral h8.\prall a32 h)
      a8 c32( h16.) d32( cis16.) e32( dis16.) fis32( e16.) g!32( fis16.)
      e32( dis16.) h'8~ h e dis d
      cis!8 c4 dis,8 e fis
      %% Takt 25 ==================================================
      \halsup h,8 e~ e16 dis e c' dis,!8.\prall e16
      e8 g\rest g\rest g fis e
      fis8 g32( fis16.) a32( g16.) h32( a16.) h32( a16.) g32( fis16.)
      e4~ \times 2/3 { \tu e16 fis^. g^. \notup g^. fis^. e^. fis^. fis^. g^. a^. g^. fis^. }
      g8 g\rest g\rest e32( d16.) fis32( e16.) g32( fis16.)
      %% Takt 30 ==================================================
      \halsneutral g8 e dis d cis! c
      h8 e32( dis16.) fis32( e16.) g32( fis16.) a32( g16.) h32( a16.)
      h8 h, a g a a'~
      a8 dis, r a' g fis
      g32( fis e16) d!32( c16.) e32( d16.) f32( e16.) gis32( fis16.) a32( gis16.)
      %% Takt 35 ==================================================
      a8( b) r g! fis e
      fis32( e d16) c32( h16.) d32( c16.) es32( d16.) fis!32( e16.) g32( fis16.)
      g8 h ais a gis g
      fis8 r h32( a g16) fis32( e16.) g32( fis16.) a32( g16.)
      \halsup \times 2/3 { \tup \tu h16^. a^. g^. \tu g^. a^. h^. } e,4. cis'!8~
      %% Takt 40 ==================================================
      \times 2/3 { \tu cis16 h^. ais^. \tu ais^. h^. cis^. } fis,8 h\rest d16\rest c8 h16
      c4. h8 \noBeam a h\rest
      d4\rest \tupletDown \times 2/3 { \td r16 fis,,-. g-. a-. g-. fis-. } \tieDown h4~
      \halsdown \times 2/3 { \td h16 e,_. fis_. \td gis_. a_. h_. } c4. h8
      c32(h a16) g!32( fis16.) a32( g16.) h32( a16.) c!8 h
      %% Takt 45 ==================================================
      a8\rest a'32( gis16.) gis32( a16.) d,!8~ \times 2/3 { d16 d-. e-. f-. e-. d-. }
      \halsneutral c8 d~ \slurDashed d32( c16.) \slurSolid h32( a16.) c32( h16.) a32( gis16.)
      a8 g'!~ g8.[ fis32 e] fis4~
      \tupletUp \times 2/3 { fis16 e-. dis-. dis-. e-. fis-. } h,8 c h32( a16.) g32( fis16.)
      e8[ \times 2/3 { e'16-. fis-. g-.] } g32( fis e16) d!32( cis!16.) e32( d16.) fis32( e16.)
      %% Takt 50 ==================================================
      g32( fis16.) \times 2/3 { fis16-. g-. a-. } a32( g fis 16) e32( dis16.) fis32( e16.) g32( fis16.)
      \halsdown a32( g16.) \tupletDown \times 2/3 { \td fis16_. e_. d!_.} d32( cis16.) e32( d16.) \times 2/3 { \td d16_. cis_. h_. \td h_. cis_. d_. }
      cis4 \times 2/3 { h16-. fis'-. g-. \td a!-. g-. fis-. } \halsup h16 a8 g16
      fis8 g\rest \tupletUp \times 2/3 { h16\rest fis^. g^. \tu a^. g^. fis^. } h8 ais
      \times 2/3 { \tu h16^. fis^. e^. \tu d^. e^. fis^. } gis16 cis,8 d16 e8 g\rest
      %% Takt 55 ==================================================
      \times 2/3 { h16\rest d,^. e^. \tu fis^. e^. d^. } g!8 e cis[ \clef "treble" fis']
      \halsneutral fis8~ fis32 g fis e d4.\prallprall( cis16 d)
      e32( cis16.) h32( d16.) cis32( h ais16) g'!8~ g16 fis e8~
      e16 d cis h d4( cis8.\prall) h32 cis
      h8 e,32( dis16.) fis32( e16.) g32( fis16.) \times 2/3 { a16-. g-. fis-. fis-. g-. a-. }
      %% Takt 60 ==================================================
      e32( dis16.) h'8 ~ h e dis d
      cis!8 c4 dis,8 e fis
      \clef "alto" h,8 e~ e16 dis e c' dis,8 d~
      d16 cis! d h' cis,8 c~ c16 h c a'
      h,4~ \times 2/3 { h16 h-. cis!-. \notup d-. e-. fis-. g-. fis-. e-. e-. fis-. g~
      %% Takt 65 ==================================================
      g16 fis-. e-. d-. e-. fis-. } h,8 h'~ \times 2/3 { \tup h16 a,-. h-. \notup cis-.d-.e-.
      \halsdown d16-. fis-. e-. d-. cis-. h-. } fis'16 fis,8 h16~ h e, f8\rest
      \tupletDown \times 2/3 { \tup f16\rest h_. a_. \td g_. a_. h_. } d,8 d\rest d4\rest
      \times 2/3 { \td f16\rest a_. g_. \td fis_. g_. a_. } d,8 d\rest d4\rest
      \halsup \tupletUp \times 2/3 { h''16\rest e,^. fis^. \tu g^. fis^. e^. } h'16 e,8 fis16 g4~
      %% Takt 70 ==================================================
      g4~ \times 2/3 { \tu g16 fis^. e^. \tu e^. fis^. g^. } fis8.\prallprall g16
      g4 \halsneutral h8\rest h32( a16.) cis!32( h16.) d32( cis16.)
      d32( f,16.) e32( d16.) c32( h16.) a32( gis16.) h32( a16.) c!32( h16.)
      c32( e a16) r8 r cis!32( h16.) dis32( cis16.) e32( dis16.)
      e32( g,16.) fis32( e16.) d!32( cis16.) h32( ais16.) cis32( h16.) d32( cis16.)
      %% Takt 75 ==================================================
      d8 r \times 2/3 { r16 d-. e-. \once \override TupletNumber #'extra-offset = #'( 0.3 . 0.1 ) fis-. gis-. a-. } h8 gis!\prall
      \times 2/3 { \tu a16-. g!-. f-. e-. d-. c-. } h16 a8 es'16~ es d8 c!16
      \halsup h32( a g16) g'8~ g8. fis!32 e fis4
      \times 2/3 { \tu e16^.  g^. fis^. \tu e^. dis^. e^. } a4~ a16 g fis8~
      fis8 e dis e \times 2/3 { \tu fis16^. h,^. cis!^. \tu dis^. e^. fis^.
      %% Takt 80 ==================================================
      g16 fis e~ e d! c~ c h a~ a c e } dis8 h~
      h16 dis8 e16 a, e'8 fis32 g \times 2/3 { \tu fis16^. a^. g^. \tu fis^. e^. fis^.
      \halsneutral \tuu g16-. h-. a-. \notup g-. fis-. e-. c' h a~ a g fis~ fis g a h fis d }
      h8 r r a'32( gis16.) h32( a16.) c32( h16.)
      c32( h a16) g!32( fis16.) a32( g16.) b32( a16.) cis!32( h16.) d32( cis16.)
      %% Takt 85 ==================================================
      d8( es) r g,32( fis!16.) a32( g16.) h32( a16.)
      h32( a g16) f32( e16.) g32( f16.) as32( g16.) h!32( a16.) c32( h16.)
      \times 2/3 { \tup c16-. e,-. fis!-. \tuu g-. a-. h-. } c,4~ \times 2/3 { c16 h-. a-. \tuu g-. fis-. e-. }
      fis'8 e32( dis16.) dis32( e16.) a,8~ \times 2/3 { a16 h-. c-. c-. h-. a-. }
      g8 h'~ h32 a gis16 a8~ \times 2/3 { a16 g-. fis-. g-. fis-. e }
      %% Takt 90 ==================================================
      g8~ g32 fis g16 \times 2/3 { \tuu a16-. g-. fis-. \tempo 4 = 36 g-. e-. \tempo 4 = 30 ais, } \halsup h16 fis' \tempo 4 = 26 a!8~
      a8. \tempo 4 = 20 fis16 \tempo 4 = 12 \appoggiatura fis8 gis4^\fermata
    }
}

bass = {
   \new Voice \relative h {
      \global
      \halsdown
      \partial 4 s4
      s2. * 9
      %% Takt 10 ==================================================
      s2.
      s2.
      s2.
      \halsdown h,4\rest d\rest h'
      h2 g4
      %% Takt 15 ==================================================
      a2 h4
      g2.
      fis2.
      e2 f4\rest
      s2.
      %% Takt 20 ==================================================
      s2. * 5
      %% Takt 25 ==================================================
      d4\rest d\rest h'
      h2 a4
      d2 h4
      g2 a4
      h2 a4\rest
      %% Takt 30 ==================================================
      s2. * 5
      %% Takt 35 ==================================================
      s2.
      s2.
      s2.
      s2.
      f4\rest f\rest h8 cis!
      %% Takt 40 ==================================================
      d4. dis8 e fis
      g2.
      fis2.
      \halsup e2.~
      e4 dis2
      %% Takt 45 ==================================================
      e2 h'4\rest
      s2.
      s2.
      s2.
      s2.
      %% Takt 50 ==================================================
      s2.
      e4\rest h\rest e,
      fis2 \halsdown e4
      d4 cis2
      h2 ais4
      %% Takt 55 ==================================================
      h2 d,4\rest
      s2.
      s2.
      s2.
      s2.
      %% Takt 60 ==================================================
      s2. * 5
      %% Takt 65 ==================================================
      s2.
      \halsup d''4\rest d\rest e,
      d2 cis4
      d2 h4
      \halsdown h2.
      %% Takt 70 ==================================================
      a2.
      g2 d4\rest
      s2.
      s2.
      s2.
      %% Takt 75 ==================================================
      s2.
      s2.
      d4\rest d\rest h'
      c2 h8. a16
      g4 a2
      %% Takt 80 ==================================================
      g4 fis2
      e2 f4\rest
      s2.
      s2.
      s2.
      %% Takt 85 ==================================================
      s2. * 5
      %% Takt 90 ==================================================
      s2 h4~
      h2_\fermata
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
   \clef "alto"
   <<
      \tenor
      \bass
   >>
}

pedal = {
   \global
   \clef "bass"
   \relative e {
      \partial 4 r8 e
      dis h r e h d
      cis! a' r dis, e fis
      h, c h a h fis
      g dis e fis g! e
      %% Takt  5 ==================================================
      fis ais h d fis h,
      r e ais, cis d e
      fis g fis e fis fis,
      h h' gis e r e,
      a a' fis d r d,
      %% Takt 10 ==================================================
      g h c cis d! dis
      e fis g a h h,
      e, e' dis h e d
      cis fis r e dis h
      e e, r g' c h
      %% Takt 15 ==================================================
      a g fis a dis, h
      e g, c h a g
      a fis h a gis fis
      gis e a h c a
      e' e, r a' gis g
      %% Takt 20 ==================================================
      fis f4 gis,8 a h
      c d e e, e' d
      c e a h c a
      h dis, e g h e,
      r a dis, fis g a
      %% Takt 25 ==================================================
      h c h a h fis
      g dis e e, r g'
      fis d! h d g, h
      e, e' dis d cis! c
      h c h a g fis
      %% Takt 30 ==================================================
      e e' r e fis a
      dis, h cis! dis e fis
      g e c' h c4
      h8 fis dis h r h
      e h gis e r e'
      %% Takt 35 ==================================================
      a e cis! a r a
      d a fis d r d'
      g, g' cis,! dis e e,
      h' h' r a g fis
      e d! cis! c h ais
      %% Takt 40 ==================================================
      h r r4 r8 h'~
      h8 e,32( dis16.) fis32( e16.) g32( fis16.) a32( g16.) h32( ais16.)
      h8 h, h' c h a!
      gis e a h a g
      fis e fis h a h
      %% Takt 45 ==================================================
      e, e, f fis g! gis
      a h c d e e,
      a h c cis d! dis
      e fis g a h h,
      c cis r a h cis
      %% Takt 50 ==================================================
      d dis r h cis! dis!
      e fis g fis g gis
      a! ais h fis g! a
      d, h' ais a gis g
      r fis eis e fis g!
      %% Takt 55 ==================================================
      r d e cis fis fis,
      h4 r8 h fis fis'
      g! gis r ais h cis
      fis, g! r eis fis cis
      dis a'! g fis e! c'
      %% Takt 60 ==================================================
      h dis, e g, h e,
      r8 a' dis, fis g a
      h c h a h fis
      gis e a e fis d
      g! fis e d4 cis8
      %% Takt 65 ==================================================
      d fis g gis a ais
      h h, r h e fis
      g g, g' fis e cis
      fis fis, fis' e dis h
      e e, e' d! c h
      %% Takt 70 ==================================================
      c a d c d d,
      g h d g f e
      d f a d c h
      a, c e a g! fis!
      e, g h e d! cis!
      %% Takt 75 ==================================================
      h d fis a gis e
      a, c e g! fis! d
      g, h c cis d! dis
      e a fis e dis h
      e e, r e'4 dis8
      %% Takt 80 ==================================================
      e c a fis h h'
      c h, c cis d dis
      e g a fis h a
      gis h gis e r e,
      a e' cis! a r a
      %% Takt 85 ==================================================
      d a' fis! d r d,
      g d' h! g r g
      c h a g fis e
      dis h' c cis d! dis
      e d! cis! c h ais
      %% Takt 90 ==================================================
      h2.
      e,2_\fermata
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
            \set Staff.midiInstrument = "oboe"
            \left
         }
%{
         \new Staff {
            \set Staff.midiInstrument = "recorder"
            \transpose g g' \left
         }

%}
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
         tempoWholesPerMinute = #(ly:make-moment 40 4)
      }
   }
}
