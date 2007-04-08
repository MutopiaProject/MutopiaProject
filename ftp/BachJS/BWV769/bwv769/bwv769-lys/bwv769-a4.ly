\version "2.8.1"
\include "deutsch.ly"
\header {
   mutopiatitle = "Vom Himmel hoch, da komm ich her"
   mutopiacomposer = "BachJS"
   mutopiaopus = "BWV 769"
   mutopiainstrument = "Organ"
   date = ""
   source = "C. F. Peters, Leipzig"
   style = "Baroque"
   copyright = "Public Domain"
   maintainer = "Urs Metzger"
   maintainerEmail = "urs@ursmetzger.de"
   lastupdated = "2006/May/10"

   title = \markup {
      \center-align {
         \fontsize #0 "Einige canonische Veränderungen"
         \fontsize #-2 "über das Weihnachtslied:"
         \fontsize #-1 "Vom Himmel hoch da komm' ich her"
      }
   }
   composer = \markup {
      \column {
         \right-align "Johann Sebastian Bach"
         \right-align "BWV 769"
      }
   }
 footer = "Mutopia-2006/05/20-768"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

% Settings for A4 paper format
#(set-default-paper-size "a4" 'landscape)
tiecontrolpoints = { \once\override Tie #'control-points = #'( ( 1 . -2 ) ( 5 . 3 ) ( 44 . 5.5 ) ( 46.5 . -2 ) ) }

% Settings for Letter paper format
%{
#(set-default-paper-size "letter" 'landscape)
tiecontrolpoints = { \once\override Tie #'control-points = #'( ( 1 . -2 ) ( 5 . 3 ) ( 41 . 5.5 ) ( 43.2 . -2 ) ) }
%}

#(set-global-staff-size 18)
#(define set-script-property (lambda (script property value)
   (append! (cdr (assoc script default-script-alist))
      (list (cons property value)))))
#(set-script-property "mordent"    'avoid-slur 'outside)
#(set-script-property "prall"      'avoid-slur 'outside)
#(set-script-property "prallprall" 'avoid-slur 'outside)
#(set-script-property "prallprall" 'avoid-slur 'outside)

halsdown = { \stemDown \tieDown \slurDown }
halsneutral = { \stemNeutral \tieNeutral \slurNeutral }
halsup = { \stemUp \tieUp \slurUp}mmrestdown = { \once \override MultiMeasureRest #'staff-position = #-2 }
mmrestup = { \once \override MultiMeasureRest #'staff-position = #4 }
staffdown = { \change Staff = "left" \halsup }
staffup = { \change Staff = "right" \halsdown }
textscriptdow = { \once \override TextScript #'extra-offset = #'(0 . -0.5) }

globalone = {
   \key c \major
   #(set-accidental-style 'default)
}

rightone = {
   \new Voice \relative c'' {
      \globalone
      \time 12/8
      \clef treble
      r16 c h a g f e a g f e d c8 e g c16 e g c, h f'
      e4\prall d8 r16 c h a g f e8 c e g16 g' f e d c
      d16 h c e fis8~ fis16 g a c, h a d8 fis! g r16 c, h a g f!
      e8 d16 e f8~ f16 g f e d e c8 d16 e f g a g f g a h
      %% Takt  5 ==================================================
      c8 a f~ f16 e f g a f d c d e c d h8 d g~
      g16 a g f e d e f e d c h c g a h c d e d c d e f
      g16 f e g c a h g c d e f g8 e h~ h16 a g h dis e
      e16 cis d!8 r r16 a gis a e' dis e f! e d! c! h c d c h a gis!
      a8 e d c16 h c d h c a8 a'16 f g! e f g f d e cis
      %% Takt 10 ==================================================
      d8 d' c! h16 a h d a d gis,8 e r \clef bass r16 e, fis gis a h
      c16 h a h c d \clef treble e d c d e f! g!8 g' g, r16 a g f e d
      e16 f e d c8~ c16 h c d e fis g8. fis16 g a h c d8 g,
      r16 c h a g f! e a g f e d c8 e g c16 e g c, h f'
      e4\prall d8 r16 c, d e f d e g f g a f g8 d' d,
      %% Takt 15 ==================================================
      r16 d'( c h a h c d) e4~ e16 f g d e h c d e f g e
      a8 a, r r16 e f a c h c e d f e d e g f a g f
      g16 e d f e d e c h d c h c a g f e d e f e d c h
      c8 c'4~ c16 g e c \clef bass g e c8 r r r4.\fermata \bar "|."
   }
}

leftone = {
   \new Voice \relative c' {
      \globalone
      \time 12/8
      \clef bass
      r4. r16 c h a g f e a g f e d c8 e g
      \clef treble c16 e g c, h f' e4\prall d8 \clef bass r16 c h a g f e8 c e
      \clef treble g16 g' fis e d c d h c e fis!8~ fis16 g a c, h a d8 fis! g
      \clef bass r16 c, h a g f! e8 d16 e f8~ f16 g f e d e c8 d16 e f g
      %% Takt  5 ==================================================
      a16 g f g a h c8 a f~ f16 e f g a f d c d e c d
      h8 d g~ g16 a g f e d e f e d c h c g a h c d
      e16 d c d e f g f e g c a \clef treble h g c d e f g8 e h~
      h16 a g h dis e e cis d!8 r r16 a gis a e' dis e f! e d! c! h
      \clef bass c d c h a gis a8 e d c16 h c d h c a8 a'16 f g! e
      %% Takt 10 ==================================================
      f16 g f d e c! d8 d' c h16 a h d a d gis,8 e r
      r16 e, fis gis a h c h a h c d e d c d e f! g!8 g' g,
      r16 a g f e d e f e d c8~ c16 h c d e fis g8. fis16 g a
      h16 c d8 g, r16 c h a g f! e a g f e d c8 e g
      \clef treble c16 e g c, h f' e4\prall d8 \clef bass r16 c, d e f d e g fis g a fis
      %% Takt 15 ==================================================
      g8 d' d, \clef treble r16 d'( c h a h c d) e4~ e16 f g d e h
      c16 d e f g e a8 a, r \clef bass r16 e f a c h \clef treble c e d f e d
      e16 g f a g f g e d f e d e c h d c h \clef bass c a g f e d
      e16 f e d c h c8 c'4~ c16 g e c g e c8 r r
   }
}

pedalone = {
   \new Voice \relative c' {
      \globalone
      \override TupletBracket #'bracket-visibility = ##f
      \set tupletNumberFormatFunction = #'()
      \override Staff.TimeSignature #'stencil = #ly:text-interface::print
      \override Staff.TimeSignature #'text = \markup { \musicglyph #"timesig.C44" }
      \time 12/8
      \clef bass
      \times 3/2 {
         R1
         r2 c
         h4 a h g
         a4 h c2
         %% Takt  5 ==================================================
         R1
         r2 c
         c4 g g e
         g4 f e2
         R1
         %% Takt 10 ==================================================
         r2 e
         a4 a g h
         c4 a g2
         R1
         r2 c
         %% Takt 15 ==================================================
         h4 a g a8. g16
         f8. e16 d4 \override Tie #'staff-position = #'-2.2 c2~
         c1~
         c1_\fermata
      }
   }
}

globaltwo = {
   \key c \major
   \time 4/4
   #(set-accidental-style 'default)
}

righttwo = {
   \new Voice \relative c'' {
      \globaltwo
      \clef treble
      r8 c h a h a16 g a( c) h( d)
      c8 h16 a h8 c d c16 h c( e) d( f)
      e8 d c\prall h c16 d e c a' a, h c
      d16 e fis d g fis g a d,4 r8 f!~
      %% Takt  5 ==================================================
      f16 e d c h a g fis g8 h e g~
      g16 f! e d c e f a d, g f e d c d f
      e4~ e16 d e g c, d e c f e f a
      d,8 f g,[g'16 f] e f d f e h' a g
      fis g e g fis g a8~ a16 g fis e d c h a
      %% Takt 10 ==================================================
      g8 d' d g, g16 f! e f g c g f
      e16 d c d e8 e'~ e d16 c d e c d
      e16 h e8~ e16 f d e c h a h cis d e cis
      d16 e f e d e c! d h a g a h c a h
      c2~ c16 h a g f e d c
      %% Takt 15 ==================================================
      d4 r8 d'~ d16 c h a g f! e d
      e16 g a h c8 c, r c'~ c16 h8 a16
      h8 a16 g a c h d c8 h16 a h d c e
      d h c d g,8 r r a16 h c d e fis
      g16 e fis g a h a g fis4~ fis16 g e fis
      %% Takt 20 ==================================================
      g16 a f! g e8 e,~ e16 f d e f g a h
      c16 h c8 r16 e d c h c d e f8 h,
      c8 e g,16 a b g a g f g a h c a
      h16 c d e f g a h c2\fermata
   }
}

lefttwo = {
   \new Voice \relative f' {
      \globaltwo
      \clef treble
      r2 r8 f e d
      e8 d16 c d( f) e( g) f8 e16 d e8 f
      g8 f16 e fis( a) gis( h) a8 g! fis\prall e
      fis16 g a fis d' d, e fis g a h g c h c d
      %% Takt  5 ==================================================
      g,4 r8 h~ h16 a g f! e d c h
      c8 e a c~ c16 h a g f a h d
      g,16 c b a g f g b a4~ a16 g a c
      f,16 g a f h a h d g,8 h c,[c'16 h]
      a16 h g h a e' d c h c a c h c d8~
      %% Takt 10 ==================================================
      d16 c h a g f e d c8 g' g c,
      \clef bass c16 h a h c f c h a16 g f g a8 \clef treble a'~
      a8 gis16 fis gis a fis gis a e a8~ a16 b g a
      f!16 e d e f g a fis g a h a g a f! g
      e d c d e f d e f2~
      %% Takt 15 ==================================================
      f16 e d c \clef bass h a g fis g4 r8 g'~
      g16 f! e d c h a g a c d e f8 f,
      \clef treble r f'~ f16 e8 d16 e8 d16 c d f e g
      f8 e16 d e g f a g e f g c,8 r
      r d16 e fis g a h c a h c d e d c
      %% Takt 20 ==================================================
      h4~ h16 c a h c d h c a8 a,~
      a16 h g a h c d e f16 e f8 r16 a g f
      e16 f g a b8 e, f  a c,16 d e c
      d c h c d e f d e2\fermata
   }
}

pedaltwo = {
   \new Voice \relative c' {
      \globaltwo
      \clef bass
      R1
      R1
      r2 c~
      c4 h2 a4
      %% Takt  5 ==================================================
      h2 g
      a2 h
      c2 r
      r2 c
      c2 g
      %% Takt 10 ==================================================
      g2 e
      g2 f
      e2 r
      r2 e
      a2 a
      %% Takt 15 ==================================================
      g2 h
      c2 a
      g2 r2
      r2 c
      h2 a
      %% Takt 20 ==================================================
      g2 a
      f4 e d2
      \override Tie #'staff-position = #'-2.2 c1~
      c1_\fermata \bar "|."
   }
}

globalthree = {
   \key c \major
   \time 4/4
   #(set-accidental-style 'default)
}

sopranthree = {
   \new Voice \relative c'' {
      \stemUp
      \mmrestup R1
      \mmrestup R1
      \mmrestup R1
      d2\rest c
      %% Takt  5 ==================================================
      h2 a
      h2 g
      a2 h
      c2 f\rest
      \mmrestup R1
      %% Takt 10 ==================================================
      d2\rest c
      c2 g
      g4. f8 e4. f8
      g2 f
      e2 d'\rest
      %% Takt 15 ==================================================
      \mmrestup R1
      d2\rest e,
      a2 a
      g2 h
      c4 h a2
      %% Takt 20 ==================================================
      g2 h\rest
      \mmrestup R1
      f'2\rest c
      h2 a \break
      g2 a
      %% Takt 25 ==================================================
      f4 e d2
      \tiecontrolpoints
      c1~
      c1_\fermata
   }
}

altthree = {
   \new Voice \relative e' {
      \stemDown
      e4_\prallprall^\markup { \italic "Cantabile" } f16( e d c) g'4~ g16 f e d
      e32[ d c16 c'8] e,\rest d~ d16 g b8~ b16 a \appoggiatura b a g
      f32([ g a16) a8] r16 g a h! c8 c, \appoggiatura d16 c16 h c8
      c16 a'8.~ a8 g16_\prall f e4 e8\rest \tieDown a8~
      %% Takt  5 ==================================================
      a16 fis e_\prall d g fis g d e8. f32 g f16 e d c
      d16 f g a g f e d e f g e c b \appoggiatura c b a
      a16 g' f8~ f16 e \appoggiatura f e d d f g a~ a g \appoggiatura a g f
      e16 d c d e fis g a \appoggiatura c h a g8 g\rest g_\turn
      \tieUp \appoggiatura g16 c4~ c16[ d32 c h c a16] \appoggiatura a16 g4~ g16[ a32 g f g e16]
      %% Takt 10 ==================================================
      d16 f8 e16 \appoggiatura e f8._\mordent g16 \tieDown \appoggiatura f e8 e\rest g16\rest c h a
      % avoid slurs clashing into each other in bar 13
      \overrideProperty #"PianoStaff.NonMusicalPaperColumn" #'line-break-system-details #'((fixed-alignment-extra-space . 3)) \break
      g16 f a g f32[( e d16) e32( d c16]) h16 d g8~ g16[ f e32 f d16]
      c8. d32 e d16 c d8~ d16 g, c h c e8 d16
      d16 f8 e16 \appoggiatura f e d \appoggiatura e d c c h \appoggiatura c h a \slurDown gis( a) a( h)
      h16 a32 gis a16 h \appoggiatura d c h c8~ c16 a' g fis e d e fis
      %% Takt 15 ==================================================
      g8 g, c4\rest d~ d16 g fis e
      d32[_\prallprall c d16 g8]~ g16 a g f! e d8 c16 \appoggiatura d c b \appoggiatura c b a
      a4 e'16\rest g f e d c \appoggiatura d c h! a h h c
      c16 h8 c32 d c[ h c16 g8] c16\rest d e fis g e fis g
      \appoggiatura h16 a g a8~ a16 g dis e e( dis e) g fis c! h a
      %% Takt 20 ==================================================
      h16( c) c( d) d e e f! f4~ f16 e \appoggiatura f e d
      c16 d e fis g gis8 a16~ a gis!8 a16~ a h8 c16
      c4~ c16 h a g! a4~ a16[ g fis32 g a16]
      a16 g8.~ g16[ f! e32 f g16] g f \appoggiatura g f e \appoggiatura f e d d g
      g8 c,16 d c( b) \appoggiatura c b( a) a g' f e d c h c
      %% Takt 25 ==================================================
      \appoggiatura c16 d4~ d16 c \appoggiatura d c b a[ h32 a h16 c] h8._\prallprall c16
      c4~ c16( d) d( e) e f f g g a \appoggiatura a b8~
      \stemUp b16 a g a g f e f \appoggiatura f g2\mordent\fermata
   }
}

rightthree = {
   \globalthree
   \clef treble
   <<
      \sopranthree
      \altthree
   >>
}

leftthree = {
   \new Voice \relative h' {
      \globalthree
      \clef treble
      r2 r8 h a g
      a fis g a h g f e
      f d e f g e d c
      d8 h c d e c h a
      %% Takt  5 ==================================================
      h8 g a h c d r f~
      f8 e16 d e8 g c, r r e~
      e8 d16 c d8 f h, e16 d e8 g~
      g8 fis r d g, g' f e
      f d e f g e d c
      %% Takt 10 ==================================================
      d8 h c d e f g4~
      g8 f16 e d8 c d h e4~
      e8 d16 c d8 h g4 a
      h8 d c h \clef bass a d, d'4~
      d8 c16 h a8 g! fis d g r
      %% Takt 15 ==================================================
      r8 h a g a fis g a
      h8 c16 h a8 h \clef treble c d e d16 cis
      d8 e f4~ f8 e16 d c!8 d
      e8 f g f16 e d8 c d h
      fis' fis, r c'~ c cis d dis
      %% Takt 20 ==================================================
      e4 r8 \clef bass e, d! d' c h
      c8 a h c d h a gis
      a8 d, r4 \clef treble r8 fis' e dis
      e8 cis d! e f! d c h
      c8 r r e~ e d16 c d8 f
      %% Takt 25 ==================================================
      h,8 c16 d e8 g~ g f16 e f8 d
      e8 c f f, b a g g'
      f8[ e] d\prall c16 d e2_\fermata
   }
}

pedalthree = {
   \new Voice \relative c' {
      \globalthree
      \clef bass
      r8 c h a h g a h
      c8 a g fis g e f g
      a f e d e c d e
      f8 d c h c a h c
      %% Takt  5 ==================================================
      d8 e r g~ g f!16 e f8 a
      d,8 r r f~ f e16 d e8 g
      c,8 f16 e f8 a~ a g r e
      a,8 a' g fis g e f g
      a f e d e c d e
      %% Takt 10 ==================================================
      f8 g a4~ a8 g16 f e8 d
      e8 c f4~ f8 e16 d e8 c
      a4 h c8 e d c
      h8 e, e'4~ e8 d16 c h8 a
      gis8 e a r r c h a
      %% Takt 15 ==================================================
      h8 g a h c d16 c h8 c
      d8 e f! e16 d e8 f g4~
      g8 f16 e d8 e f g a g16 f
      e8 d e c g' g, r d'~
      d8 dis e eis fis4 r8 fis,
      %% Takt 20 ==================================================
      e8 e' d!  c d h c d
      e8 c h a h e, r4
      r8 g'! fis e fis d e fis
      g8 e d cis d r r f!~
      f e16 d e8 g c, d16 e f8 a~
      %% Takt 25 ==================================================
      a8 g16 f g8 e f d g g,
      c8 b a a' g f e d16 e
      f4 f, c2_\fermata \bar "|."
   }
}

globalfour = {
   \key c \major
   \time 4/4
   #(set-accidental-style 'default)
}

sopranfour = {
   \new Voice \relative c' {
      \globalfour
      #(revert-auto-beam-setting '(end 1 32 4 4) 1 8)
      #(revert-auto-beam-setting '(end 1 32 4 4) 3 8)
      #(revert-auto-beam-setting '(end 1 32 4 4) 5 8)
      #(revert-auto-beam-setting '(end 1 32 4 4) 7 8)
      r8 c e a~ a g4 fis16 e
      fis32 g a h c4 h16\prall a h g \appoggiatura f e4 d16 c
      d8 r r16 d e fis g d g8~ g16 a32 g f16 e
      d16 c d e d f e d c e fis g a e a8~
      %% Takt  5 ==================================================
      a16 d, e fis g d g8~ g16 fis!32 e fis16 d g d a'8~
      a16 g a fis g d f e f32 e d16 h'8~ h16 g c e,
      f16 g a g f e d c d c h c d e f d
      e16 f g f e d c h c h a h c e d c
      h16 c d8~ d16 c h a h32 a g a h8~ h16 g a h
      %% Takt 10 ==================================================
      \appoggiatura d16 c h c8~ c16 a d c h c d e fis gis a h
      c32 d c h c8~ c16 h32 a d16 c h32 c h a h16 h~ h d8 cis16
      d4~ d16 c! h a g f!32 e f8~ f16 e d c
      d16 f e d c d e8~ e16 a, h! c d e f a,
      h16 g'8 f16~ f g32 f e d c h a16 d8 c16~ c16 f32 g f e d c
      %% Takt 15 ==================================================
      h16 c8 d16~ d \clef bass h g h c, g' a h \clef treble c d e f
      e16 d c d e f g a g f e fis g a h c
      d16 c32 h a8~ a16( h32 c) h16( c32 d) gis,16 a32 h a8 r16 g f e
      d16 c h c d e f g a g a h c h32 a d16 d
      g,32 a g fis g8~ g16 f e d e32 d c h c8~ c16 a h c
      %% Takt 20 ==================================================
      d16 g, g'8~ g16 fis a gis a a, e'8~ e32c' h a g16 f
      \appoggiatura f8 e4~ e32 a g f e16 d c e g c h32( a g16) a32 g fis16
      g4~ g32 d e fis g a h c d cis d e f! e d f e16 g,8 f32 e
      f16 b a g f e d c! h! d f a~ a g8 f16~
      f32 d' c h c16 g a d e f h,\prall a g8 r16 c32 h c16 a
      %% Takt 25 ==================================================
      \appoggiatura g16 f e d a'~ a g8 f16 g32 f e16 \appoggiatura g f32 e d16 c16 d32 e f g a h
      c32 h a16 f'8~ f16 e d c h32 d c16~ c32 e d16~ d32 f e8 f16
      f,16 e \appoggiatura f e d c e'8 d32 c d c h a g8~ g16 f' e d
      e16( fis32 g) fis16( g32 a) g8~ g32 f e d e16 a, d cis d e \appoggiatura e f8~
      f32( e d f e d c h a c h a g f e f) f4.\prallprall( e16 f)
      %% Takt 30 ==================================================
      e4~ e32 \clef bass c h a g f e d c4 \clef treble r16 c'' h a
      h16 g a h c8 r32 f g a g b a g a d, c h c h a g fis a h c
      h32 a g8.~ g32 g c8 c16~ c32 h e8 e16~ e32 d g8 g16~
      g32 f e d e16 gis a32 e d c d16 h' c16 a, a32\prall gis a16 d4~
      d16 c32 h a gis fis e c'4~ c16 c, e a~ a g!8 f!32 e
      %% Takt 35 ==================================================
      f16 d32 f a16 d~ d c8 h32 a h g a h c d e16~ e d8 c32 h
      c32 h c d e f g16~ g f8 e32 d e f e d e16 fis fis8.\trill g16
      g4~ g32 f! e d e g e h c a h c d a d e \appoggiatura e8 f4~
      f8~ f32 g f d e f e c d e d h c g c d e8~ e16 d d(\prall c)
      c16(\prall h) h(\prall a) h( cis) cis( d)~ d32 e( d cis d16) e f32 e d16 \appoggiatura d e8~
      %% Takt 40 ==================================================
      e32 f e d e c! e f g a g f g8~ g32 a g f g8~ g32 a g f g8~
      g32 a g f g f e d e f e d e d c h! c4~ c16 d32 e f g a h
      c1\fermata
   }
}

altfour = {
   \new Voice \relative g {
      \globalfour
      \halsup
      f2\rest c'8\rest g c e
      d8.\trill c16 d4. c16 h a4~
      a8 e'\rest g4\rest g8\rest d16 e d8 c
      g'8 h,16 a h8 g4 a16 h e,8 fis16 g
      %% Takt  5 ==================================================
      fis8 g16 a h8 a16 g c2
      h8 c\rest e\rest d16 c h8[ d] g, c\rest
      a8\rest e f4~ f8 g16 a g8 f
      g4 d'\rest c2\rest
      e8\rest fis, g d'~ d fis,16 g32 a g8 e'
      %% Takt 10 ==================================================
      a,8. g16 a8 fis! g16 a h8 g'16\rest d c h
      a8 e' fis a, g2
      a8 d16 e fis d g8 d c16 h c8 g
      a8 h c8. b16 a8 g f a
      f8 d g4~ g16 f g8 a4~
      %% Takt 15 ==================================================
      a16 g a8 h d g, f e g~
      g8 e a g16 f e8 c' h a
      g8 a\rest h4\rest a8\rest e d c
      d4 a'8\rest g d4 a'8\rest g~
      g8. f!16 e f g8~ g fis16 e fis4
      %% Takt 20 ==================================================
      a16\rest d, e g h16( a) e'\rest d c8 h16 c32 d c8 d
      \clef treble c8 h'\rest h\rest g16 f e4 fis8 h\rest
      h16\rest e, d c d8 h'\rest h\rest d16\rest f,! g b a8~
      a16 g f e d e f8~ f a d, c
      \clef bass d8 g, c\rest a g c f, a~
      %% Takt 25 ==================================================
      a8 h c h c16\rest g8 f16 g4
      f8 c d e f c'\rest c\rest c,
      d8 h' a4 \once \override Tie #'staff-position = #'4 g2~
      g16 c, d8 e4~ e8 a~ a16 g f e
      d8 g e16( g h c) h8 d, g a\rest
      %% Takt 30 ==================================================
      d,8\rest h c d e16 a g f g8 d'
      g,8 f~ f16 e a8\rest c4\rest e16\rest e d c
      d16 h c d e8 d~ d c f! e
      \clef treble a4~ a8[ gis32 f! e d] e4 h'16\rest gis! a h
      \clef bass e,4~ e16 c d e a,4 c8\rest cis
      %% Takt 35 ==================================================
      d8 f,4 e8 f g a e'~
      e8 h c g'~ g16 e a8~ a16 g a8
      g8 d h e~ e d c[\prallprall h16 c]
      h8 d, c f e c d e
      f8 d c'\rest b~ b a c h
      %% Takt 40 ==================================================
      c8 c\rest c\rest c32\rest g! a h c16( e) d( f) e( c) d( h)
      c16( a) b8~ b16 g as8 g16 c h a g8 f
      g1\fermata
   }
}

tenorfour = {
   \new Voice \relative c {
      \globalfour
      \halsdown
      a4\rest c e a~
      a4 g2 fis8 e
      fis16 g a h c2 h8 a
      h8 g e2 d8 c
      %% Takt  5 ==================================================
      d4 h\rest h8\rest d e fis!
      g8 d g4~ g8 a16 g f!8 e
      d8 c d e d f e d
      c8 e fis g a e a4~
      a8 d, e fis! g d g4~
      %% Takt 10 ==================================================
      g8 fis16 e fis8 d g d a'4~
      a8 g a fis g d f e
      f16 e d8 h'4~ h8 g c e,
      f8 g a g f e d c
      d8 c h c d e f d
      %% Takt 15 ==================================================
      e8 f g f e d c h
      c8 h a h c e d c
      h8 c d4~ d8 c h a
      h16 a g a h4~ h8 g a h
      c8 h c4~ c8 a d c
      %% Takt 20 ==================================================
      h8 c d e fis gis a h
      c16 d c h c4~ c8 h16 a d8 c
      h16 c h a h8 h~ h d4 cis8
      d2~ d8 c! h! a
      g8 f16 e f4~ f8 e d c
      %% Takt 25 ==================================================
      d8 f e d c d e4~
      e8 a, h c d e f a,
      h8 g'4 f8~ f g16 f e d c h
      a8 d4 c8~ c f16 g f e d c!
      h8 c4 d8~ d8 h g h
      %% Takt 30 ==================================================
      c,8 g' a h c d e f
      e8 d c d e f g a
      g8 f! e fis g a h c
      d8 c16 h a4~ a8 h16 c h8 c16 d
      gis,8 a16 h a4 d,8\rest g! f! e
      %% Takt 35 ==================================================
      d8 c! h c d e f g
      a8 g a h c h16 a d8 d
      g,16 a g fis g4~ g8 f! e d
      e16 d c h c4~ c8 a h c
      d8 g, g'4~ g8 fis a gis
      %% Takt 40 ==================================================
      a8 a, e'4~ e16 c' h a g8 f
      e2~ e16 a! g f e8 d
      <c e>1
   }
}

leftfour = {
   \clef bass
   <<
      \altfour
      \tenorfour
   >>
}

pedalfour = {
   \new Voice \relative c' {
      \globalfour
      \clef bass
      R1
      R1
      R1
      r2 c
      %% Takt  5 ==================================================
      h2 a
      h2 g
      a2 h
      c2 r
      R1
      %% Takt 10 ==================================================
      R1*5
      %% Takt 15 ==================================================
      r2 c
      c2 g
      g4. f8 e4. f8
      g2 f
      e2 r
      %% Takt 20 ==================================================
      R1*5
      %% Takt 25 ==================================================
      r2 e
      a2 a
      g4 a h2
      c4 h a2
      g2 r
      %% Takt 30 ==================================================
      R1*5
      %% Takt 35 ==================================================
      R1
      r2 c
      h2 a
      g2 a4. g8
      f4. e8 d2
      %% Takt 40 ==================================================
      c1~
      c1~
      c1_\fermata \bar "|."
   }
}

globalfive = {
   \key c \major
   \time 4/4
   #(set-accidental-style 'default)
}

sopranfive = {
   \new Voice \relative c'' {
      \globalfive
      \textscriptdow r4_\markup{ \small "1) alla Sesta" } c h a
      h4 g a h
      c2 r
      r4 c c g
      %% Takt  5 ==================================================
      g4 e8 f g4 f
      e2 r
      r4 e a a
      g4. a8 \appoggiatura a8 h2
      c4. h8 a2\prallmordent
      %% Takt 10 ==================================================
      g2 r
      r4 c h a
      g4 a8 g f e d4\prallprall
      c2 r
      r4 e f g
      %% Takt 15 ==================================================
      f8 g a4 g f
      e2 r
      r4 e e a
      a8 h c h a4 h\turn
      c2 r
      %% Takt 20 ==================================================
      r4 c g g
      a4. g8 f2\prallmordent
      e4. fis8 g2\prallmordent
      a2 r
      r4 e f! g
      %% Takt 25 ==================================================
      a4 g8 a h c d4\prallmordent
      e2 r
      s1*13
      %% Takt 40 ==================================================
      \halsup d2\rest d4\rest c
      h4 a h g
      a4 h c d\rest
      d2\rest d4\rest c
      c4 g g e8 f!
      %% Takt 45 ==================================================
      g4. f8 e4 r
      h'2\rest h4\rest e,
      a4 a g2~
      g8 a h4 c8 h a4
      g4 d'\rest d2\rest
      %% Takt 50 ==================================================
      d4\rest c h a
      g4. a16 g f8 e d4
      c4 h'\rest h2\rest
      <<
         \new Voice \relative f'' {
            \halsup
            f16\rest d c h c a h c d8 e f4
            e4 a\rest a16\rest d, e f e a g f
            e4. f8 g c h! a
            \override Stem #'details #'beamed-lengths = #'( 4.3 ) g8 a16 g f e d8 \shiftOff c2\fermata
         }
         \new Voice \relative g' {
            \halsdown
            g2\rest g16\rest a h c h d c h
            \revert Stem #'details c8 c h a h g a h
            \stemUp \shiftOn c4. d8 e a g f
            e8 f16 e d c h!8 \stemDown \shiftOff c2
         }
      >>
   }
}

sopranfivesolo = {
   \new Voice \relative c'' {
      \globalfive
      s1*26
      r4 r8 g~^\markup { \italic "forte" } g a16 h c d e fis
      g16 a g f! e d c h a c h a g f e d
      e16 f e d c e a c, h a' g h, a g' fis a,
      %% Takt 30 ==================================================
      g16 f'! e d e d c d e fis g a h a g a
      h16 d e f! g a g f e fis g a h c h a
      g16 e d c h c d a g c h a g fis e dis
      e16 fis g a h c d! h c h a h c d e fis
      g16 d h f'! e c g a h g h c d f, e d
      %% Takt 35 ==================================================
      c16 h c d e fis g a h d c h a g fis! e
      d16 e' d c h a gis fis gis e fis gis a h c a
      d16 h c d e fis g! a h a g f! e d c h
      a16 h c g f c' h f e c' g e c c' b c
      a d b g fis a c fis, g d h! d g,8 r
   }
}

altfive = {
   \new Voice \relative e' {
      \globalfive
      R1
      r4 e f g
      f4 a g f
      e2 r
      %% Takt  5 ==================================================
      r4 e e a
      a4 c8 h a4 h
      c2 r
      r4 c g g
      a4. g8 \appoggiatura g8 f2
      %% Takt 10 ==================================================
      e4. f8 g2\upmordent
      a2 r
      r4 e f g
      a4 g8 a h c d4\prallup
      e2 r
      %% Takt 15 ==================================================
      \clef bass r4_\markup{ \small "2) alla Terza" } c, h a
      h8 a g4 a h
      c2 r
      r4 c c g
      g8 f e f g4 f\turn
      %% Takt 20 ==================================================
      e2 r
      r4 e a a
      g4. a8 h2\prallmordent
      c4. b8 a2\upmordent
      g2 r
      %% Takt 25 ==================================================
      r4 c h! a
      g 4 a8 g f e d4
      c2 r
      \halsup g'4\rest \clef treble h'8\rest e,4 f g8~
      g8 a g fis~ fis h e, d~
      %% Takt 30 ==================================================
      d8 g d'4\rest h2\rest
      h2\rest h8\rest e,16 fis g8 a
      h8 e4 a,8 h g c4
      h8 e, d'4\rest h2\rest
      h2\rest h8\rest f4 g8~
      %% Takt 35 ==================================================
      g8 g4 fis8 g fis e a~
      a8 e fis h~ h e d4
      h2\rest d4\rest d8\rest e,
      f!8 g h\rest f g b a16 fis g8
      d'4 c8 es d4 s
      %% Takt 40 ==================================================
      \staffup \dotsDown g,2\rest d4\rest e8\rest a~
      a8 g4 fis8 c\rest d4 c8
      c8\rest f!~ f16 e d8 c g' d4\rest
      g2\rest d4\rest e8\rest a~
      a8 g16 fis e c h a g8 d'~ d16 c d8~
      %% Takt 45 ==================================================
      d8 c h4 c c\rest
      c8\rest a g d'~ d8 c4 b8
      a8 h!4 c8 d e f h,
      c4 c8\rest fis g4. fis8~
      fis8 e d4\rest g2\rest
      %% Takt 50 ==================================================
      d4\rest e8\rest a~ a g4 f!16 e
      d8 e16 d c4~ c4. h8
      c16 d c h c a h c d8. g16 c,8. a'16
      h,8 f'! e4 \set followVoice = ##t \staffdown d8 c d4
      e4 e\rest e\rest e4
      %% Takt 55 ==================================================
      \staffup a4  a g8 a h!4
      c8.b16 a8. as16 \once \override NoteHead #'extra-offset = #'(0.7 . 0)
                      \once \override Stem #'extra-offset = #'(0.7 . 0) g2
   }
}

tenorfive = {
   \new Voice \relative c' {
      s1*54
      %% Takt 55 ==================================================
      \halsup e16\rest h c d c e d c b8 a d4
      e8 c f4~ f8 e16 d e4^\fermata
   }
}

tenorfivesolo = {
   \new Voice \relative g, {
      \globalfive
      \halsdown
      s1*27
      g4\rest h' c d
      c4 e d c
      %% Takt 30 ==================================================
      h4 d\rest e2\rest
      d4\rest h h e
      e4 g8 fis e4. fis8
      g4 d\rest e2\rest
      e4\rest g d d
      %% Takt 35 ==================================================
      e2~ e8 d c4
      h8 c d4 e d\rest
      e2\rest d4\rest h
      c4 d e4. d16 e
      fis8 g a4 h! \halsneutral  r16 f!^\markup { \italic "forte" } g a
      %% Takt 40 ==================================================
      g16 e d c h d e f e c h a g c d e
      fis,16 d' g, h e c a fis' g d g, f' e g c b
      f16 b a e d g f d e g f e \clef bass d c! h a
      g16 f e d c h a h c h c d e c a fis'
      g16 fis g a h e, d c h g a h c a g f!
      %% Takt 45 ==================================================
      e16 d e f g f e d c g' c d e g f e
      f16 e d c h d c h c d e d c b a g
      f16 c' d e f g f e d c h! a h f' e d
      c16 c' h a g fis e dis e fis g a h cis dis h
      \clef treble e16 fis g a g f e d! e a h c h a g fis
      %% Takt 50 ==================================================
      g16 \clef bass g, a h a g fis e d h e d c a d e
      f!16 d g f e c f g a g f e f d g f
      e8 fis16 g a4~ a16 \textscriptdow g_\markup{ \small "diminuzione" } fis! e fis d e fis
      g8 d' c h a g f! e16 f
      g4 r
   }
}

bassfive = {
   \new Voice \relative c' {
      \globalfive
      \halsdown
      s1*53
      s8 s4._\markup{ \small "alla stretta" } r8 c c g
      %% Takt 55 ==================================================
      g8 e16 f g8 f e16 g f e f d e f
      g8 f16 g a8 f g2_\fermata
   }
}

rightfive = {
   \clef treble
   <<
      \sopranfive
      \sopranfivesolo
   >>
}

leftfive = {
   \clef treble
   <<
      \altfive
      \tenorfive
      \tenorfivesolo
      \bassfive
   >>
}

pedalfive = {
   \new Voice \relative c {
      \globalfive
      \clef bass
      r8 c e c g' h, c d
      g,8 g' c b a f4 e8
      a,8 a' g f e c' d, h'
      c,8 d e c a h c a
      %% Takt  5 ==================================================
      h8 g c h a a'4 h8
      c8 h a g f e d g
      e8 c r c f e d c
      h8 e, e'4~ e8 f e d
      c a h c d a d, d'~
      %% Takt 10 ==================================================
      d8 g, c d e c' c, b'
      f8 g a f d e f d
      h!8  g c b a f'4 e8
      f8 d e f g e f g
      c,8 c'4 b8 a g f e
      %% Takt 15 ==================================================
      d8 e f f,~ f8 e4 d8
      g8 f e c' f, d' g, f'
      e8 d c h a g' f e
      d8 d, a' g f f' e d
      e d c d e c' d, h'
      %% Takt 20 ==================================================
      c,8 h a h c d e c
      f8 f, c'4~ c8 e, d h'~
      h d, c c' h e e, g'~
      g8 fis g4~ g8 cis d f,
      e8 d' c! c, d c' b e,
      %% Takt 25 ==================================================
      f8 d e f g e f b~
      b8 g c b a g f g
      a8 h! c4_\markup{ \small "3) alla Seconda" } h a
      h4 g a h
      c4 r r2
      %% Takt 30 ==================================================
      r4 c c g
      g4 e8 f g4. f!8
      e4 r r2
      r4 e a a
      g2~ g8 a h4
      %% Takt 35 ==================================================
      c8 h a4 g r
      r2 r4 c
      h4 a g4. a16 g
      f8 e d4 c r
      r2 r4 h_\markup{ \small "4) alla Nona" }
      %% Takt 40 ==================================================
      c4 d c e
      d4 c h r
      r2 r4 h!
      h4 e e g8 fis
      e4. fis8 g4 r
      %% Takt 45 ==================================================
      r2 r4 g
      d4 d  e2~
      e8 d c4 h8 c d4
      e4 r r2
      r4 h c d
      %% Takt 50 ==================================================
      e4. d16 e fis8 g a4
      h4 r r2
      r4 c, h a
      g4 a8 g f e d4
      c1~
      %% Takt 55 ==================================================
      c1~
      << { c1_\fermata }
         { s2 s4 s4_\markup { \italic "Fine." } } >> \bar "|."
   }
}

% Variation 1 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\score {
   <<
      \new PianoStaff
      {
         \set PianoStaff.instrument = \markup { \large "Manual." }
         <<
            \new Staff { \rightone }
            \new Staff { \leftone }
         >>
      }
      \new Staff {
         \set Staff.instrument = \markup { \large "Pedal." \hspace #1.8 }
         \pedalone
      }
   >>
   \header {
      piece = \markup {
         \hspace #15.5 \column {
            \large "VAR. I. a 2 Clav. e Ped."
            \large "In Canone all'Ottava"
         }
      }
   }
   \layout { }


}

\score {
    <<
      \new Staff { \set Staff.midiInstrument = "pan flute"                 \rightone }
      \new Staff { \set Staff.midiInstrument = "recorder"  \transpose c c' \rightone }

      \new Staff { \set Staff.midiInstrument = "pan flute"                 \leftone  }
      \new Staff { \set Staff.midiInstrument = "recorder" \transpose c c'  \leftone  }

      \new Staff { \set Staff.midiInstrument = "bassoon"                   \pedalone }
   >>
   \midi { \tempo 8 = 148 }
}

% Variation 2 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\score {
   <<
      \new PianoStaff {
         <<
            \new Staff { \righttwo }
            \new Staff { \lefttwo }
         >>
      }
      \new Staff { \pedaltwo }
   >>
   \header {
      piece = \markup {
         \hspace #10 \column {
            \large "VAR. II. a 2 Clav. e Ped."
            \large "Alio modo in Canone alla Quinta"
         }
      }
   }
   \layout {
      indent = 1.2 \cm
   }
}

\score {
   <<
      \new Staff { \set Staff.midiInstrument = "pan flute"                 \righttwo }
      \new Staff { \set Staff.midiInstrument = "recorder"  \transpose c c' \righttwo }

      \new Staff { \set Staff.midiInstrument = "pan flute"                 \lefttwo  }
      \new Staff { \set Staff.midiInstrument = "recorder"  \transpose c c' \lefttwo  }

      \new Staff { \set Staff.midiInstrument = "bassoon"                   \pedaltwo }
   >>
   \midi { \tempo 4 = 68 }
}

% Variation 3 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\score {
   <<
      \new PianoStaff {
         <<
            \new Staff { \rightthree }
            \new Staff { \leftthree }
         >>
      }
      \new Staff { \pedalthree }
   >>
   \header {
      piece = \markup {
         \hspace #10 \column {
            \large "VAR. III. a 2 Clav. e Ped."
            \large "In Canone alla Settima"
         }
      }
   }
   \layout {
      indent = 1.2 \cm
   }
}

\score {
   <<
      \new Staff { \set Staff.midiInstrument = "oboe"                       \sopranthree }
      \new Staff { \set Staff.midiInstrument = "recorder"  \transpose c c'  \sopranthree }

      \new Staff { \set Staff.midiInstrument = "pan flute"                  \altthree }
      \new Staff { \set Staff.midiInstrument = "recorder"  \transpose c c'' \altthree }

      \new Staff { \set Staff.midiInstrument = "pan flute"                  \leftthree }
      \new Staff { \set Staff.midiInstrument = "recorder"  \transpose c c'  \leftthree }

      \new Staff { \set Staff.midiInstrument = "pan flute"                  \pedalthree }
      \new Staff { \set Staff.midiInstrument = "flute"     \transpose c c,  \pedalthree }
   >>
   \midi { \tempo 4 = 44 }
}

% Variation 4 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\score {
   <<
      \new PianoStaff {
         <<
            \new Staff { \sopranfour }
            \new Staff { \leftfour }
         >>
      }
      \new Staff { \pedalfour }
   >>
   \header {
      piece = \markup {
         \hspace #10 \column {
            \large "VAR. IV. a 2 Clav. e Ped."
            \large "In Canone all'Ottava per augmentationem"
         }
      }
   }
   \layout {
      indent = 1.2 \cm
   }
}

\score {
   <<
      \new Staff { \set Staff.midiInstrument = "pan flute"                  \sopranfour }
      \new Staff { \set Staff.midiInstrument = "recorder"  \transpose c c'' \sopranfour }

      \new Staff { \set Staff.midiInstrument = "pan flute"                  \altfour }
      \new Staff { \set Staff.midiInstrument = "recorder"  \transpose c c'  \altfour }

      \new Staff { \set Staff.midiInstrument = "pan flute"                  \tenorfour }
      \new Staff { \set Staff.midiInstrument = "recorder"  \transpose c c'  \tenorfour }

      \new Staff { \set Staff.midiInstrument = "bassoon"                    \pedalfour }
      \new Staff { \set Staff.midiInstrument = "flute"     \transpose c c'  \pedalfour }
   >>
   \midi { \tempo 4 = 50 }
}

% Variation 5 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\score {
   <<
      \new PianoStaff {
         <<
            \new Staff = "right" { \rightfive }
            \new Staff = "left"  { \leftfive }
         >>
      }
      \new Staff { \pedalfive }
   >>
   \header {
      piece = \markup {
         \hspace #10 \column {
            \large "VAR. V. a 2 Clav. e Ped."
            \line {
               \large "L'altra sorte del Canone al rovescio: 1)"
               \normalsize "alla Sesta,"
               \large "2)"
               \normalsize"alla Terza,"
               \large "3)"
               \normalsize"alla Seconda, e"
               \large "4)"
               \normalsize"alla Nona."
            }
         }
      }
   }
   \layout {
      indent = 1.2 \cm
   }
}

\score {
   <<
      \new Staff { \set Staff.midiInstrument = "pan flute"                  \sopranfive }
      \new Staff { \set Staff.midiInstrument = "recorder"  \transpose c c'  \sopranfive }

      \new Staff { \set Staff.midiInstrument = "pan flute"                  \sopranfivesolo }
      \new Staff { \set Staff.midiInstrument = "flute"     \transpose c c'  \sopranfivesolo }
      \new Staff { \set Staff.midiInstrument = "recorder"  \transpose c e'' \sopranfivesolo }

      \new Staff { \set Staff.midiInstrument = "pan flute"                  \altfive }
      \new Staff { \set Staff.midiInstrument = "recorder"  \transpose c c'  \altfive }

      \new Staff { \set Staff.midiInstrument = "pan flute"                  \tenorfive }
      \new Staff { \set Staff.midiInstrument = "recorder"  \transpose c c'  \tenorfive }

      \new Staff { \set Staff.midiInstrument = "pan flute"                  \tenorfivesolo }
      \new Staff { \set Staff.midiInstrument = "recorder"  \transpose c c'  \tenorfivesolo }
      \new Staff { \set Staff.midiInstrument = "recorder"  \transpose c c'' \tenorfivesolo }

      \new Staff { \set Staff.midiInstrument = "pan flute"                  \bassfive }
      \new Staff { \set Staff.midiInstrument = "recorder"  \transpose c c'  \bassfive }

      \new Staff { \set Staff.midiInstrument = "pan flute"                  \pedalfive }
      \new Staff { \set Staff.midiInstrument = "recorder"  \transpose c c,  \pedalfive }
      \new Staff { \set Staff.midiInstrument = "recorder"  \transpose c c'  \pedalfive }
   >>
   \midi { \tempo 4 = 72 }
}
