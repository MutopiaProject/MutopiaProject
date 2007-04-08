\version "2.8.1"

\header {
 mutopiatitle = "Passacaglia"
 mutopiacomposer = "BachJS"
 mutopiaopus = "BWV 582"
 mutopiainstrument = "Organ"
 date = ""
 source = "8656, C. F. Peters, Leipzig"
 style = "Baroque"
 copyright = "Public Domain"
 maintainer = "Urs Metzger"
 maintainerEmail = "urs@ursmetzger.de"
 lastupdated = "2006/Apr/08"

 title = "Passacaglia"
 composer = "Johann Sebastian Bach"
 opus = "BWV 582"
 footer = "Mutopia-2006/04/21-741"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\include "deutsch.ly"

#(set-default-paper-size "a4" 'landscape)
#(set-global-staff-size 18)
#(define set-script-property (lambda (script property value)
   (append! (cdr (assoc script default-script-alist))
      (list (cons property value)))))
#(set-script-property "prall" 'avoid-slur 'outside)

adjustSlash = { \once \override TextScript #'extra-offset = #'( -2 . 5 ) }
halsdown = { \stemDown \tieDown \slurDown }
halsneutral = { \stemNeutral \tieNeutral \slurNeutral }
halsup = { \stemUp \tieUp \slurUp}
hideBrackets = { \override TupletBracket #'bracket-visibility = ##f }
hideTripletNumber = { \set tupletNumberFormatFunction = #'() }
mmrestdown = { \once \override MultiMeasureRest #'staff-position = #-2 }
mmrestdownn = { \once \override MultiMeasureRest #'staff-position = #-4 }
mmrestup = { \once \override MultiMeasureRest #'staff-position = #4 }
mmrestupp = { \once \override MultiMeasureRest #'staff-position = #6 }
mmrestuppp = { \once \override MultiMeasureRest #'staff-position = #8 }
mmrestupppp = { \once \override MultiMeasureRest #'staff-position = #10 }
noflag = { \once \override Stem #'flag-style = #'no-flag }
restdownnn = { \once \override MultiMeasureRest #'extra-offset = #'( 0.0 . -3.0 ) }
restright = { \once \override Rest #'extra-offset = #'( 4.0 . 0.0 ) }
scriptdown = { \once \override Script #'extra-offset = #'(0 . -1.3) }
scriptdownn = { \once \override Script #'extra-offset = #'(0 . -2.3) }
scriptdownnn = { \once \override Script #'extra-offset = #'(0 . -3.3) }
scriptup = { \once \override Script #'extra-offset = #'(0 . 1.3) }
showBrackets = { \override TupletBracket #'bracket-visibility = ##t }
showTripletNumber = { \set tupletNumberFormatFunction = #denominator-tuplet-formatter }
staffdown = { \change Staff = "left" \halsup }
staffup = { \change Staff = "right" \halsdown }
std = { \change Staff = "left" }
stu = { \change Staff = "right" }

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

global = {
   \key c \minor
   \time 3/4
   #(set-accidental-style 'default)
   \set tupletSpannerDuration = #(ly:make-moment 1 8)
   \override TupletBracket  #'bracket-visibility = #'if-no-beam
}

sopran = {
   \new Voice \relative c'' {
      \global
      \halsup
      \partial 4 f4\rest
      \mmrestup R2.
      \mmrestup R2.
      \mmrestup R2.
      \mmrestup R2.
      %% Takt  5 ======================================================
      \mmrestup R2.
      \mmrestup R2.
      \mmrestup R2.
      f4\rest f4\rest f8\rest c~                                  % V 1
      c8. d16 h4 f'8\rest es~
      %% Takt 10 ======================================================
      es8. f16 d4 f8\rest d~
      d8. es16 c4 f8\rest c~
      c8. d16 h4 f'8\rest as~
      as8. b!16 g4 f8\rest f~
      f8. g16 es4 f8\rest es~
      %% Takt 15 ======================================================
      es8. f16 d4 f8\rest d~
      d8. es16 c4 f8\rest c~                                      % V 2
      c8. d16 h4 f'8\rest b,~
      b8. c16 as4 f'8\rest g,~
      g8. as16 f4 f'8\rest  as,~
      %% Takt 20 ======================================================
      as8 g g4\mordent f'8\rest f,~
      f8. g16 es4 r8 d~
      d8. es16 c4 r8 c~
      c8. d16 h4.\prall h8
      c8 g' c d es f                                              % V 3
      %% Takt 25 ======================================================
      d2 g4~
      g4 f es~
      es8 g f es d c
      h4 as'\rest as8\rest as
      g8 f es4 as8\rest as
      %% Takt 30 ======================================================
      g8 f es4 as8\rest as
      g8 f es d c h
      c4 f\rest d8\rest g,16 a                                    % V 4
      h8 h16 c d8 c16 d es4~
      es4. d16 c h4
      %% Takt 35 ======================================================
      c8\rest c16 d es8 f16 g as8 d,16 c
      h4 a'8\rest g16 a h8 a16 h
      c8 g16 f g8 es d8[ c16 d]
      es8 c16 h c8 g as[ as']
      g8 c,16 h c8 es,16 d d8.\prall c16
      %% Takt 40 ======================================================
      c8 g''16 g, c8 d16 es es4                                    % V5
      d8 a'8\rest a\rest d,16 h es4~
      es8 es16 c f4~ f8 es16 g
      c,8 c'16 c, f8 g16 as as8.\prall g32 as
      g8 d16 d, g8 a16 h! h4\prall
      %% Takt 45 ======================================================
      c8 g'16 g, c8 d es[ d16( f)]
      es8 c'16 c, f8 g as f~
      f8 g16 d es8. f16 d8.\prall es16
      c4 f4\rest f16\rest a, h c                                  % V 6
      h4 f'4\rest a16\rest es f g
      %% Takt 50 ======================================================
      as!4 f4\rest a16\rest g a h
      c4 f,4\rest a16\rest d, es f
      h,4 d4\rest d16\rest es, f g
      es4 f'4\rest d16\rest h c d
      es4 f4\rest a16\rest h, c d
      %% Takt 55 ======================================================
      es16 g f es d2
      c16 c b! as! g as g f es8 r                                 % V 7
      as'16\rest g f es d es d es c4~
      c16 b' as g f es d c h4
      c16 f es d c b! as g as4
      %% Takt 60 ======================================================
      g16 g' f es d es d es f4~
      f16 es d c h a h c d4~
      d16 f es d c8. b16 as4~
      as16 as g f es32[ f g16 f g32 as] d,8.\prall es16
      c4 f'\rest f\rest                                           % V 8
      %% Takt 65 ======================================================
      f4\rest f16\rest d es f g f es d
      c16 des c b as f' g as h,4
      f'16\rest c d! es f g f es d a' h c
      h16 c h a g8 f16 es f4~
      f16 as g f es g f es d4~
      %% Takt 70 ======================================================
      d16 f es d c es d c des es des c
      h16 c d8~ d16 es d c~ c8 h
      c4 f\rest f\rest                                            % V 9
      f16\rest g, h g d'4 es~
      es4 f16\rest des f des~ des4~
      %% Takt 75 ======================================================
      des4 c d
      h4 as'\rest as\rest
      as4\rest as16\rest c, es c f d f d
      es4 as16\rest c, es c f d f d
      es4 as16\rest c, es c f d f d
      %% Takt 80 ======================================================
      es16 c' b! as g f es d c es d c                            % V 10
      h16 c h a g f es d c b''! as! g
      as16 b as g f es d c h d c h
      c16 d c b! as g f es d es d c
      h16 c h a g a h c h d c h
      %% Takt 85 ======================================================
      c16 d es f g a h c d f es d
      es16 g c b! as! g f es d es d c
      h16 c d es d c h! a g as g f
      es16 f g as g f es d c'4                                   % V 11
      g'2 es4
      %% Takt 90 ======================================================
      f2 g4
      as2 f4
      g2 d4
      es2 h4
      c2 f,4
      %% Takt 95 ======================================================
      g2.
      c,2 \adjustSlash c'4_"//"                                  % V 12
      g'2 es4
      f2 g4
      as4. g8 f4
      %% Takt 100 =====================================================
      g2 d4
      es2 h4
      c2 f,4
      g2.
      c,2 d'4\rest                                              % V 13
      %% Takt 105 =====================================================
      d4\rest c16( es d c) g'4
      c,16 e( d c) f4. e!8
      f16( as g f) c'4~ c16 es,!( d c)
      h4 c d
      g,8 c~ c16 c h a g8 f
      %% Takt 110 =====================================================
      es8 as!~ as16 g c b! as f'(g as)
      h,4 c16 es d c g'4~
      g16 h a g c8 c, r16 g' es c                                % V 14
      h8 g as'16\rest h, d g as\rest g es c
      as'8 f f16\rest as, c f f\rest g es h
      %% Takt 115 =====================================================
      c8 as, as''16\rest c, es as as\rest as f d
      h8 g as'16\rest h, d g as\rest as f b,
      g'8 es f16\rest g, b es f\rest f d g,
      es'8 c d16\rest es, g c b\rest as f d
      es8\mordent c r16 c es g h, d f h,
      %% Takt 120 =====================================================
      es8 s h'8\rest g16 c h'8\rest g16 c                        % V 15
      s4 f,8\rest d16 g f8\rest g16 c
      s4 d,8\rest c16 f f8\rest g16 h
      s4 f8\rest es16 as f8\rest as16 c
      s4 d,8\rest d16 g f8\rest f16 h
      %% Takt 125 =====================================================
      s4 d,8\rest c16 es d8\rest d16 f
      s4 h,8\rest g16 c h8\rest as16 f'
      s4 f8\rest es16 g h,16\rest d f h
      s4 a8\rest g16 c f,8\rest c                                % V 16
      a'8\rest d,4.~ d8 c
      %% Takt 130 =====================================================
      a'8\rest c,4.~ c8 \shiftOn <h f> \shiftOff
      a'8\rest es4.~ es8 <c d>
      a'8\rest d,4.~ d8 <h f'>
      a'8\rest g4.~ <d g>8 <d f>
      a'8\rest g4.~ g8 <f d>
      %% Takt 135 =====================================================
      a8\rest g4.~ <d g>8 <d f!>
      a'8\rest g4.~ \times 2/3 { \showTripletNumber \tupletUp \triolen g16 f! es es d c % V 17
      c16 h a a h c h c d d es f es f g g as! b!
      \hideTripletNumber as16 g f f es d d es f f g as } h,4\prall
      \times 2/3 { \triolen c'16 b! as as g f f es d d es f f g a a h c }
      %% Takt 140 =====================================================
      h8.*10/9 [ a16*2/3] h8 c\rest c,,\rest \stemDown \shiftOff h
      \times 2/3 { \shiftOff \triolen c16 d es es f g g a h h c d d es f \stemUp es f d
      es8*3/2 g16 f es es d c \stemNeutral c' b as as g f f es d
      d16 c h h c d d es f f g as } h,!8.*10/9\prall c16*2/3
      c8 \times 2/3 { \triolen g16 f es es[ d c] } \duolen c8 \stemUp c'4~ % V 18
      %% Takt 145 =====================================================
      c8 h16 a h8 c16 d es4~
      es8 d16 c d8 es16 f h,4~
      h8 c16 h c8 d16 es f4~
      f8 es16 d es8 f16 g d4~
      d8 c16 h c8 d16 es f4~
      %% Takt 150 =====================================================
      f8 es16 d es8 f16 g as4~
      as8 g16 f g8 f16 es es8 d16 c                              % V 19
      c4~ c8 c'16 h c8 c,~
      c4~ c16 d c h c4~
      c16 d c h c4~ c16 d c h
      %% Takt 155 =====================================================
      c4~ c16 d c h c4~
      c16 d c h c8 h16 a h4~
      h16 d c h c8. es16 d f es d
      es4~ es16 g f es as4
      d,4~ d16 es d c~ c d c h
      %% Takt 160 =====================================================
      c4 d\rest d8\rest es~                                      % V 20
      es16 f es d es4~ es16 f es d
      es4~ es16 f es d es4~
      es16 f es d es4~ es16 f es d
      es4~ es16 g f es d8 as'
      %% Takt 165 =====================================================
      g4~ g16 as g f g4~
      g16 as g f es4~ es16 f es d
      es4~ es16 f es d es f es d
      c16 d c h c h c d es4 \bar "||"
      \mmrestup R2.                                     % Thema fugatum
      %% Takt 170 =====================================================
      \mmrestup R2.
      \mmrestup R2.
      \mmrestup R2.
      d4\rest d\rest g,
      d'2 b4
      %% Takt 175 =====================================================
      c2 d4
      es2 c4
      d2 a'16\rest g f! g
      es4 a16\rest d, c d h4
      f'16\rest c b! c as c b c f, f' es f
      %% Takt 180 =====================================================
      h,16 d c d g, g' f g es4
      f8\rest es h h c c
      f8\rest as d, d e e
      f8\rest f c c d d
      f8\rest es h h g'16 as f g
      %% Takt 185 =====================================================
      es16 f d es c d b! c a b g a
      fis16 a g b a d c d g, g' f! g
      es16 g es g es f es f d f d f
      c16 es d  f es f es f es f es f
      d16 es d es d es c d b d c es
      %% Takt 190 =====================================================
      d8 g,16 b a c b c a8.\prall g16
      g16 h a c h g' f g es g f as!
      h,16 d c es d es d es c es d es
      c4 b!~ b8 b
      as8[ c f8. es16 d8 c]
      %% Takt 195 =====================================================
      b4 es f
      g16 as b es, es4( d8.)\prall es16
      es16 b' as b g as f g es g f es
      d16 f es g f as g f b es, d es
      c16 es c es c des c des b des b des
      %% Takt 200 =====================================================
      as16 c b des c es d es c f es f
      d16 f es g f b as b g c b c
      as16 c b c as b g as f b as b
      g16 b as b g as f g es f d es
      c8 es as c, b as'
      %% Takt 205 =====================================================
      b,8 d g b, as g'
      as, c f as, g f'
      g, b es g, f es'
      d16 f d f b,8 a16 g f8 g
      a8 d a a b b
      %% Takt 210 =====================================================
      f'8\rest g c, c d d
      f8\rest es b b c c
      f16\rest d c d es4 f
      a16\rest g f g as4 b
      a16\rest c b c f,4 g
      %% Takt 215 =====================================================
      a16\rest as g as d,8 d es es
      a16\rest f es f c8 c d d
      a'16\rest es d es a\rest es d es a\rest es d es
      a16\rest d, c d a'\rest c, b c a'\rest c, b c
      a'16\rest b, a b a'\rest b, a b a'\rest c, b c
      %% Takt 220 =====================================================
      a'16\rest a, g a a'\rest a, g a b c b c
      d4 f16\rest d c d g, g' f! g
      es16 g es g es f es f d es d es
      c16 es d f es g fis a g b a g
      fis16 a g b a8 d, f4\rest
      %% Takt 225 =====================================================
      \mmrestup R2.
      \mmrestup R2.
      \mmrestup R2.
      \mmrestup R2.
      \mmrestup R2.
      %% Takt 230 =====================================================
      \mmrestup R2.
      \mmrestup R2.
      \mmrestup R2.
      \mmrestup R2.
      \mmrestup R2.
      %% Takt 235 =====================================================
      \mmrestup R2.
      \mmrestup R2.
      \mmrestup R2.
      \mmrestup R2.
      \mmrestup R2.
      %% Takt 240 =====================================================
      \mmrestuppp R2.
      \mmrestupp R2.
      \mmrestupp R2.
      \mmrestupp R2.
      \mmrestup R2.
      %% Takt 245 =====================================================
      f4\rest f\rest g,
      d'2 b4
      c2 d4
      es2 c4
      d2~ d16 d c d
      %% Takt 250 =====================================================
      es16 f! d e f g e fis g a d, f
      es!16 f c es d es b d c d a c
      b16 c a h c d es a,! a8.\prall g16
      g16 h a c h d c es d f es d
      es4 a\rest f8\rest e
      %% Takt 255 =====================================================
      f16 as g b as8 b16(\prall as32 b) c16 as g f
      e16 g f as g b as g as4~
      as4 g ges
      f2.~
      f16 f g f e8 f g4~
      %% Takt 260 =====================================================
      g16 g as g f8 g as4~
      as16 as b as g b as c b4~
      b16 c g b as4~ as16 c as c
      fis,2 a16\rest g f g
      es4  f16\rest d c d b4
      %% Takt 265 =====================================================
      f'16\rest a, g a fis4 d'16\rest g, f g
      es4 d h'16\rest d, c d~
      d8 d'\rest f4\rest f\rest
      \mmrestup R2.
      \mmrestup R2.
      %% Takt 270 =====================================================
      \mmrestup R2.
      f4\rest f\rest c
      g'2 es4
      f2 g4
      as2 f4
      %% Takt 275 =====================================================
      g2.~
      g2.~
      g4 f2~
      f4 es2~
      es4 d2~
      %% Takt 280 =====================================================
      d4 c16 es c es d f d f
      h,4\prall f'16\rest g f g es g c, es
      h4 d8\rest h c c
      d4 d8\rest d es es
      d4 d8\rest d g es
      %% Takt 285 =====================================================
      as8\fermata as\rest as\rest h,8 c4~
      c16 es d f es g f as d,8.\prall c16
      c4 a'16\rest c b! c as c f, as
      e4 d8\rest e f f
      g4 f8\rest g as as
      %% Takt 290 =====================================================
      g16 b as b g4. f8~
      f16 f e f h,4~ h16 d h d
      c2.\fermata \bar "|."
    }
}

alt = {
   \new Voice \relative g' {
      \global
      \halsdown
      \partial 4 f4\rest
      \mmrestdown R2.
      \mmrestdown R2.
      \mmrestdown R2.
      \mmrestdown R2.
      %% Takt  5 ======================================================
      \mmrestdown R2.
      \mmrestdown R2.
      \mmrestdown R2.
      f4\rest f\rest g8\rest g~                                   % V 1
      g4 g g8\rest c~
      %% Takt 10 ======================================================
      c4 as g8\rest g~
      g8 f~ f4 g8\rest as~
      as4 g g8\rest h!~
      h4 c g8\rest as~
      as4 g g8\rest as~
      %% Takt 15 ======================================================
      as8 g f4 g8\rest f~
      f8. g16 es4 g8\rest g~                                      % V 2
      g4 g g8\rest g~
      g4 f g8\rest es~
      es4 d g8\rest es~
      %% Takt 20 ======================================================
      es4 d g8\rest h,~
      h4 c \staffdown as8\rest as~
      as8 g~ g4 as8\rest as~
      as4. as8 g8. f16
      es4 \staffup c'\rest c\rest                                 % V 3
      %% Takt 25 ======================================================
      es8\rest d g as b! c
      as4. as8 g f
      es8 c f g as4~
      as8 as g c h!4
      c4. as8 g f
      %% Takt 30 ======================================================
      es8 d c2~
      c8 h c d es f %% TODO: es nach rechts, \shiftOn geht nicht
      es4 c8\rest c16 d es8 es16 f                                % V 4
      g2~ g8 f16 g
      as2~ as8 g16 f
      %% Takt 35 ======================================================
      es4. d16 es f8 as
      g8 g16 a h!8 h16 c d4
      c8 es16 d es8 c g4~
      g4 es8\rest es16 d es8 c16 h
      c8 es16 d es8 c c[ h]
      %% Takt 40 ======================================================
      c4 es4\rest es8\rest g16 fis                                % V 5
      g8 d'16 d, g4 es8\rest g16 es
      as4~ as8 f g4
      es4 es4\rest g8\rest d'16 f
      h,4 g,4\rest c8\rest g'16 f
      %% Takt 45 ======================================================
      g4 es4\rest es8\rest g
      g4 es\rest g8\rest d'16 a
      h4 g8\rest c16 a h!4
      c4 es,16\rest d es f g4~                                    % V 6
      g4 g16\rest g a h c4~
      %% Takt 50 ======================================================
      c4 g16\rest a h c h8 g~
      g4 g16\rest g as! b! c8 as
      g4 c,16\rest a h c d4
      c4 es16\rest d es f g4~
      g4 es16\rest es f g as!4
      %% Takt 55 ======================================================
      g2~ g16 as g f
      es4 c16\rest f es d c es d c                                % V 7
      h4g'16\rest c h a g as g b
      as4 es4\rest es16\rest as g f
      es4 es\rest es16\rest g f es
      %% Takt 60 ======================================================
      d4 g16\rest c h a h4
      c4 es,16\rest g f es f as g f
      es4 es16\rest b'! as! g f8. es16
      d8. d16 c es d c h4
      c4 es\rest es\rest                                          % V 8
      %% Takt 65 ======================================================
      es16\rest d es f g h c d es d c b
      as16 c, d! e f g f es d as' g f
      es16 f es d! c8 es\rest es4\rest
      g16\rest fis g a h a h c d4~
      d16 g, a h c4 es,\rest
      %% Takt 70 ======================================================
      es16\rest h c d es c d es f4~
      f16 as g f es g f es d4
      c16 c es c g'8. f16 \scriptdownnn es4\prall                 % V 9
      d4 es8\rest g4.
      as4 es\rest b'!
      %% Takt 75 ======================================================
      g16\rest es g es as2
      g4 g16\rest g h! g d' h d h
      c4 g16\rest es g es as4
      g4 g16\rest es g es as4
      g4 g16\rest es g es d4
      %% Takt 80 ======================================================
      c4 es\rest g                                               % V 10
      g4 a,\rest g'
      f4 es\rest f
      es c\rest f
      d4 d,\rest d'
      %% Takt 85 ======================================================
      c4 c\rest g'
      g4 es\rest f
      d4 es\rest d
      c4 as\rest f\rest                                          % V 11
      s2.*6
      %% Takt 95 ======================================================
      s2.*2
      g'8\rest g a h c4~                                         % V 12
      c16 des b! c as! b g as f g e g
      f8 g\rest g4\rest g8\rest a
      %% Takt 100 =====================================================
      d16 es c d h c a h g as f g
      es8 g c b as[ g16 f]
      g16 as f g es f d es c8 f~
      f16 g es f d8 h c h
      c2 c16( es d c)                                            % V 13
      %% Takt 105 =====================================================
      g'2 es4
      f4~ f16( as g f) g( b as g)
      as4~ as16( b as g) f4
      g4~ g16 g( f es) d( f es d)
      es4~ es16 es d c h d c h
      %% Takt 110 =====================================================
      c4~ c16 \staffdown b! as g f as g f
      g4~ g16 g f es d f es d
      es4~ es16 f es d s4                                        % V 14
      s2.*7
      %% Takt 120 =====================================================
      \staffup s4 c'16 es h8\rest c'16 es h8\rest                % V 15
      s4 g16 h g8\rest es16 c' h8\rest
      s4 f16 as es8\rest g16 es' g,8\rest
      s4 as16 c g8\rest f16 d' g,8\rest
      s4 g16 h g8\rest d16 d' g,8\rest
      %% Takt 125 =====================================================
      s4 es16 g es8\rest h16 g' es8\rest
      s4 c16 es c8\rest \staffdown f,16 \staffup d' c8\rest
      s4 g'16 c g8\rest s4
      s4 c16 es h8\rest h8\rest \stemUp \shiftOn g \shiftOff     % V 16
      \override Staff.NoteCollision #'merge-differently-dotted = ##t
      \halsdown d'16\rest c d a \halsup h4~ \noflag h8\noBeam \noflag g8
      %% Takt 130 =====================================================
      \halsdown d'16\rest b! c g \halsup as!4 g4*1/2 s8
      \halsdown d'16\rest d es h \halsup c4~ c4*1/2 s8
      \halsdown d16\rest c d a \halsup h4~ h4*1/2 s8
      \halsdown d16\rest fis g d \halsup es4 s4
      \halsdown d16\rest f g d \halsup es4~ es4*1/2 s8
      %% Takt 135 =====================================================
      \halsdown d16\rest f g d \halsup es4 s4
      \halsdown d16\rest f g d \halsup es4~ \shiftOn es8 s       % V 17
      s2.*3
      %% Takt 140 =====================================================
      s2.*4
      s2 g,4~                                                    % V 18
      %% Takt 145 =====================================================
      g2 h8\rest c
      \appoggiatura b!16 as!2 e8\rest \halsdown g
      f8 es16 d es8 f16 g as4
      g2 g8\rest f
      g4. f16 g as4~
      %% Takt 150 =====================================================
      as8 g16 f g8 as16 b! c8 d
      h4 c4. h!8
      c8 g4 g16 f es8 g~                                         % V 19
      g2 g4
      as2 g4~
      %% Takt 155 =====================================================
      g2 as4
      g2~ g16 as g f
      g4~ g16 as g f g4~
      g16 as g f g4~ g16 as g f~
      f16 as g f es4 f~
      %% Takt 160 =====================================================
      f16 as g f es f es d c8 es\rest                            % V 20
      g4\rest c16 d c h c4~
      c16 d c h c4~ c16 d c h
      c4~ c16 d c h c4~
      c16 d c h c es d c h!8 h
      %% Takt 165 =====================================================
      c16 d c h c4 d16 f es d
      c4~ c16 d c b! as4
      g16 as g f g8. as16 g as g f
      es f es d es d es f g4 \bar "||"
      \halsdown g2^\markup { \italic "Thema fugatum" } es4 % Thema fugatum
      %% Takt 170 =====================================================
      f2 g4
      as2 f4
      g4. f8 es16 g f es
      d4~ d16 d e fis g4
      g8\rest b fis fis g g
      %% Takt 175 =====================================================
      es8\rest es' a, a h h
      g8\rest c g g a a
      es8\rest b' fis fis g g
      g16\rest c b c as4 es16\rest g f g
      es4 f8 c d4~
      %% Takt 180 =====================================================
      d8 a h4 c16 f es f
      g8 g\rest es16\rest g f g c, c' b! c
      as16 c as c as b as b g b g b
      f16 as g b as b as b as b as b
      g as g as g as f g es f d es
      %% Takt 185 =====================================================
      c16 g' f g es f d es c d b c
      \staffdown a8 b c a b \staffup g'
      g4 c g
      g4 b f~
      f8 g a4 g8 fis
      %% Takt 190 =====================================================
      g16 f! e g fis8 g4 fis8
      g4 c,\rest \staffdown c
      \staffup g'2 es4
      f2 g4
      as2 f4
      %% Takt 195 =====================================================
      g2 f4~
      f8 es16 g f as g b as c b as
      g4 g16\rest b as b g4
      g8\rest g d d es es
      es8\rest c' f, f g g
      %% Takt 200 =====================================================
      c,8\rest as' es es f f
      g8\rest g d d es es
      g8\rest f c c d d
      es8 b es4 es\rest
      \mmrestdownn R2.
      %% Takt 205 =====================================================
      \mmrestdownn R2.
      \mmrestdownn R2.
      \mmrestdownn R2.
      es4\rest c\rest b
      f'2 d4
      %% Takt 210 =====================================================
      es2 f4
      g2 es4
      f4 g16\rest as g as f b as b
      g4 b16\rest des c des b es des es
      c4 b16\rest b as b g c b c
      %% Takt 215 =====================================================
      as8 c h[ h c c]
      g16\rest d' c d a8 a h h
      g16\rest c b! c g\rest c b c g\rest c b c
      g16\rest b a b g\rest a g a g\rest a g a
      g16\rest g fis g g\rest g fis g g\rest a! g a
      %% Takt 220 =====================================================
      g16\rest fis e fis g\rest fis e fis g4~
      g8 b fis fis g g
      g8\rest es' a, a b b
      es,8\rest c' g g a a
      g8\rest b fis16 a g b a c b a
      %% Takt 225 =====================================================
      b2~ b16 c g b
      a2~ a16 b fis a
      g2~ g16 a e g
      fis16 a fis a d, fis d fis g8 f!
      es2~ es16 g f es
      %% Takt 230 =====================================================
      d16 f es g f g f as! d,4~
      d4 c~ c16 es d f
      h,16 d c es d es c d es f d e
      f16 as g b as c, as' g f es! d c
      h16 d c es d f es d c c' b! c
      %% Takt 235 =====================================================
      as16 c as c as b as b g b g b
      f16 as g b as b g as b c as b
      g16 g f g r as g as r f es f
      r16 g as g r f es f r d c d
      es8 f g a b! c
      %% Takt 240 =====================================================
      d8 es f g as! b
      c8\noBeam d,, es f g as
      b8 c d es f g
      as8\noBeam b,, c d es! f
      g4. g8 a16 b g a
      %% Takt 245 =====================================================
      fis16 g e fis d2~
      d16 a' g b a c b a g8 d
      g4 f f
      es8 f g b a g
      fis16 a g b a8 fis g4~
      %% Takt 250 =====================================================
      g8 g a4 g~
      g8 f4 es d8~
      d8 d es4 d8 c
      h8 c d4~ d8 g
      g4 c4. c8
      %% Takt 255 =====================================================
      c4 h\rest h16\rest c b as
      g8 as e e f f
      b8\rest des g, g a a
      g8\rest b f f g g
      as8 b16 as g4. g8
      %% Takt 260 =====================================================
      c4. des8 e,4
      f8 b4 c8 des4~
      des8 b c2~
      c16 d! b c a c b a g4
      g16\rest a g a fis4 e16\rest g f g
      %% Takt 265 =====================================================
      es4 c16\rest d c d b4
      c4 a16\rest c b c a4
      h16 d c es d f es g f as! g f
      es16 g f as g b as c b des c b
      <<
         \new Voice {
            as2.~
      %% Takt 270 =====================================================
            as2.
         }
         \new Voice {
            s2.\startTrillSpan
            s2 s8. s16\stopTrillSpan
         }
      >>
      g4~ g16 b as g f4~
      f8 es h h c c
      g'8\rest as d, d e e
      g8\rest f c c d d
      %% Takt 275 =====================================================
      es8. f16 g8 a16 h c es d f
      h,4 c4. b8
      as2.
      g2.
      f2.
      %% Takt 280 =====================================================
      es2 f4~
      f16 g f g h,8 d c c
      d16 g f g d8 d es es
      f16 g f g d8 g g g
      g16 g f g d8 g g g
      %% Takt 285 =====================================================
      \scriptdownn f8\fermata g\rest g\rest g g16 as f g
      as4 g4. f8
      e16 g f as g8 c c c
      c16 c b c g8 g as as
      b16 c b c g8 c c c
      %% Takt 290 =====================================================
      c16 des c des b4. as8~
      as16_\markup { \italic Adagio } as g as d, f e f d f d f
      e2.
   }
}

altzwei = {
   \new Voice \relative es' {
      \global
      \partial 4 s4
      s2.*127
      s2 es8\rest \shiftOnn es \shiftOff \halsup
      c4\rest es8\rest g~\noBeam \stemDown g4*1/2 es4*1/2 % hide the beam
      %% Takt 130 ===========================================
      \stemUp c4\rest es8\rest f \stemDown es4*1/2 s8
      \stemUp c4\rest g'8\rest as~ \stemDown as4*1/2 s8
      \stemUp c,4\rest es8\rest g s4
      c,4\rest h'8\rest c8\noBeam g s
      c,4\rest h'8\rest c~\noBeam \stemDown c4*1/2 s8
      %% Takt 135 ===========================================
      \stemUp c,4\rest h'8\rest \tieDown c~\noBeam \stemDown <g c>8 <g h!>
      \stemUp c,4\rest h'8\rest c~\noBeam \stemDown <c g>8~ \times 2/3 { g16 f! es }
      s2.*31
      s4 s8. \stemUp \shiftOn h'!16 c4 \bar "||"
   }
}

tenor = {
   \new Voice \relative es' {
      \global
      \partial 4 r4
      R2.*7
      r4 r4 r8 \clef treble es~                                   % V 1
      es8 d8~ d4 r8 g~
      %% Takt 10 ======================================================
      g8 f~ f4 r8 h,8~
      h4 c r8 es~
      es8 d~ d4 r8 f~
      f8 es~ es4 r8 d~
      d8 c~ c4 r8 c~
      %% Takt 15 ======================================================
      c4~ c8. d16 h4
      c8 g~ g4 r8 es'~                                            % V 2
      es8 d~ d4r8 des~
      des8 c~ c4 r8 h~
      h8 c~ c4 r8 c~
      %% Takt 20 ======================================================
      c8. d!16 h4 r8 \clef bass as~
      as8 g~ g4 b,8\rest \halsdown f'~
      f4 es b8\rest es~
      es8 d~ d f es8. d16
      es4 s2                                                      % V 3
      %% Takt 25 ======================================================
      s2.*5
      %% Takt 30 ======================================================
      s2.
      \staffup \stemUp \shiftOn \override Stem #'details #'beamed-lengths = #'( 4 )
      b''8\rest as g f es d
      \revert Stem #'beamed-lengths
      c4 s2                                                       % V 4
      s2.*55
      s2 c16 es d c                                              % V 11
      \halsdown h16 c h \staffdown a g f es d c \staffup b''! as! g
      %% Takt 90 ======================================================
      as16 b as g f es d c h d c h
      c16 d c b! \staffdown as! g f es d es d c
      h16 c h a g a h c h d c h
      c16 d es f g a h c \staffup d f es d
      es16 g c b! as! g f es d es d c
      %% Takt 95 ======================================================
      h16 c d es d c h! a \staffdown \stemNeutral g as! g f
      es16 f g as g f es d c es d c                              % V 12
      h8 g r g' as! b!
      c2 des8 c~
      c16 des b c as8 c f16 g es f
      %% Takt 100 =====================================================
      d!4~ d16 es c d h c a h
      c16 d b! c as! b g as f g es d
      c8 r r es f16 g es f
      d16 es c d h8 d es f
      g16 as f g es f d es c8 r                                  % V 13
      %% Takt 105 =====================================================
      g'16( h a g) c4~ c16 des c b
      as4. des8 b c
      f4 r as,
      g16( as g f) es8 d16 c h4\prall
      c16 es d c g'4. g,8
      %% Takt 110 =====================================================
      as!16 c b! as \halsdown es'8 e f4~
      f16 f es d es4 h
      c2~ c8 c,
      r16 g''h \stu d g es\rest es8\rest \std es,16 g c \stu es  % V 14
      \std r16 f, as \stu c f c\rest c8\rest \std g16 h \stu es g
      %% Takt 115 =====================================================
      \std r16 as, c \stu es as es\rest es8\rest \std f,16 as d \stu f
      \std r16 g, h d \stu g es\rest es8\rest \std d,16 f b d
      r16 es, g b \stu es c\rest c8\rest \std h,16 d g h
      r16 c, es g \stu c as\rest as8\rest \std f,16 c' d f
      r16 g, c es g r r8 g,16 h d g
      %% Takt 120 =====================================================
      \stu c8 \staffdown es,16[ g] s2                            % V 15
      a8\rest h16 d s2
      a8\rest as16 c s2
      a8\rest c16 es s2
      a,8\rest h16 d s2
      %% Takt 125 =====================================================
      a8\rest g16 c s2
      a8\rest es16 g s2
      a8\rest c16 es s2
      c8\rest \stu es16 g s4 g,8\rest \halsdown c
      d,4\rest a'16\rest fis' g d es8 c                           % V 16
      %% Takt 130 =====================================================
      d,4\rest a'16\rest e' f! c~ c8 <d g>
      d,4\rest c'16\rest g' as es f8 <f as>
      d,4\rest a'16\rest fis' g d~ <d f>8 <d f>
      d,4\rest es'16\rest h' c fis, g8 <d g>
      d,4\rest es'16\rest h' c g as!8 <as c>
      %% Takt 135 =====================================================
      d,,4\rest es'16\rest h' c fis, s4
      d,4\rest es'16\rest h' c fis, s4                           % V 17
      \times 2/3 { \triolen \showTripletNumber \tupletDown
         es16 d c c \staffdown h a
            \once \override TupletBracket #'staff-padding = #-3 g a h
            \once \override TupletBracket #'staff-padding = #-3 h c d \staffup c d es es f g
      \hideTripletNumber f16 g as as g f f es d d es f f g as } g16. f32
      es8[ \times 2/3 { \triolen c'16 b! as] as g f f es d d es f f g as!
      %% Takt 140 =====================================================
      g16 a h h c d d es f f g as as g f \shiftOff f es d }
      g4 g4\rest h,,8\rest g'~
      \times 2/3 { \triolen g16 f es es d c c \staffdown b! as as g f f es d d c h
      \stemNeutral h16 a g g a h h c d d es f f g as! g as f
      es16 f d c8*3/2 g16 f es es d c } \duolen c4               % V 18
      %% Takt 145 =====================================================
      s2.*15
      %% Takt 160 =====================================================
      s2.                                                        % V 20
      h'''4\rest es,16 f es d es4~
      es16 f es d es4~ es16 f es d
      c8. f16 es f es d es4~
      es16 f es d es es f g as8 f
      %% Takt 165 =====================================================
      es16 f es d es4 f16 as! g f
      \clef bass \halsup es16 f es d c4~ c16 d c h
      c4~ c16 d c h c d c h
      c4~ c16 as g f << \new Voice { \stemUp c'4 }
                        \new Voice { \stemUp \shiftOn g4 }
                        \new Voice { \stemUp \shiftOnn es4 } >>
      \clef treble \halsneutral r8 es'( h) h c c        % Thema fugatum
      %% Takt 170 =====================================================
      r8 as'( d,) d e e
      r8 f( c) c d d
      r8 es( h) h c c~
      c16 \clef bass c b! a b4~ b16 b a g
      fis16 d g c, d d' c d g, g' f! g
      %% Takt 175 =====================================================
      es16 g es g es f es f d f d f
      c16 es d  f es f es f es f es f
      d16 es d es d es c d h8 h
      c8 c f, f g g
      as8 g f4~ f8 f
      %% Takt 180 =====================================================
      g4. g4 c8
      h16 d c es d8 g,4 c8~
      c4 f b,
      c4 f8 es d c
      h8 c d4 g,~
      %% Takt 185 =====================================================
      g4 r g
      d'2 b4
      c2 d4
      es2 c4
      d4. d4 a8
      %% Takt 190 =====================================================
      d8 c4 d a8
      h8 c d g, c as!
      g8 es' h h c c
      \clef treble r8 as' d, d e e
      r8 f c c d d
      %% Takt 195 =====================================================
      r8 es b b c c
      d8 b r4 r
      r4 r \clef bass es,4
      b'2 g4
      as2 b4
      %% Takt 200 =====================================================
      c2 as4
      b2 c4
      f,2 b4
      es,4. es8 f g
      as16 c as c f, as f as d, f d f
      %% Takt 205 =====================================================
      g16 b g b es, g es g c, es c es
      f16 as f as d, f d f b, d b d
      es16 g es g c, es c es a, c a c
      b4~ b16 d c es d f es g
      f16 g f es d f es f b, b' a b
      %% Takt 210 =====================================================
      g16 b g b g as! g as f as f as
      es16 g f as g b es, g c, es d c
      b8 b' c c d d
      es8 es, f f g g
      as8\noBeam \clef treble as' d, d e e
      %% Takt 215 =====================================================
      f4 r16 g f g es! as g as
      d,4 r16 f es f d g f g
      c,4 a' f
      b,4 c d
      es4 d c
      %% Takt 220 =====================================================
      d4 c \clef bass b16 a g a
      b16 d c es d4 d~
      d8 g, c4 fis,
      g4 \clef treble c8 d es4
      d2.~
      %% Takt 225 =====================================================
      d16 f! es g f g es f g8 c,~
      c16 es d f es f d es f8 b,~
      b16 d c es d es c d es8 \clef bass a,~
      a8 c b a g16 b g b
      c16 es c es a, c b d c8 f,~
      %% Takt 230 =====================================================
      f8 g as4~ as16 g d f
      es16 g f as g as f g as4
      d,8 r r4 r
      r4 r c
      g'2 es4
      %% Takt 235 =====================================================
      f2 g4
      as2 f4
      g16 b as b r c b c r d c d
      r16 es f es r d c d r h a h
      c8 r r4 r8 \clef treble f
      %% Takt 240 =====================================================
      b,16 d c es d f es g f as! g b
      as8 r r4 r8 d,
      g,16 b a c b d c es d f e g
      f8 r r \clef bass b,~ b16 c b as!
      g16 b as c b4 c16 d b c
      %% Takt 245 =====================================================
      a16 b g a fis4 g16 a fis g
      a8 b fis fis g g
      r8 es' a, a h h
      r8 c g g a a
      b8. a32 g a16 d c d b8 h
      %% Takt 250 =====================================================
      c4. d4 b8~
      b8 a4 g fis8
      g4~ g16 b! a g fis8. g16
      g4. a8 h4
      \clef treble c16 es d f es g f as! g b as g
      %% Takt 255 =====================================================
      as8 e f16 as g b as8 r
      r4 r16 c,b c f, f' es! f
      des f des f des es des es c es c es
      b16 des c es des es des es des es des es
      c2.~
      %% Takt 260 =====================================================
      c16 e f g as8 g16 f c'4
      b8 f g4~ g16 g as g
      f2 es!4~
      es8 d16 es c es d c b4
      \clef bass r16 c b c a b a b g4
      %% Takt 265 =====================================================
      r16 c b c a b a b g4
      r16 a g a fis8 g4 fis8
      g4 r r
      c,16 es d f es g f as g b as g
      <<
         \new Voice {
            f2.~
      %% Takt 270 =====================================================
            f2.
         }
         \new Voice {
            s2.\startTrillSpan
            s2 s8. s16\stopTrillSpan
         }
      >>
      f16 f es d es8 es'~ es16 es d c
      h16 d c es d4 r16 es d es
      c4 b! b
      c4 \clef treble f16 g f es d8 c~
      %% Takt 275 =====================================================
      c16 h c8~ c16 h c d es g f es
      d4 g8 g es es
      c4 f8 f d d
      h4 es8 es c c \clef bass
      a4 d8 d h h
      %% Takt 280 =====================================================
      g4 c8 c as! as
      d,4 r8 g g g
      g4 r8 g g g
      g4 r8 h c c
      h4 r8 h c es
      %% Takt 285 =====================================================
      des8\fermata r r \clef treble d es4
      c2 h4
      c8 d e g f f
      g4 r8 c, c c
      c4 r8 e f f
      %% Takt 290 =====================================================
      e4 d'16\rest e, d! e~ e8 f
      f'4\rest \clef bass c,4\rest e8\rest c16\rest \stemUp h
      << \new Voice { \stemUp c2. }
         \new Voice { \stemUp \shiftOn g2. } >>
  }
}

bass = {
   \new Voice \relative g {
      \global
      \partial 4 s4
      s2.*23
      s4 r8 g   c d                                               % V 3
      %% Takt 25 ======================================================
      h4. c8 des es
      c8 f d! c h4
      c8 b! as c f es
      d4. es8 f4
      es8 f g4 d
      %% Takt 30 ======================================================
      r8 as g f es d
      es8 f g as g4~
      g8 c,16 d es8 es16 f g8 c                                   % V 4
      d8 g,16 a h8 a16 h c4~
      c8 d16 es f8 f16 es d4
      %% Takt 35 ======================================================
      c4 r4 r8 f16 es
      d8 h16 c d8 d16 es f4
      g4 r8 g16 f g8 g,
      c8 es16 d es8 c16 h c8 es,16 d
      es4 r8 g16 f g8 d
      %% Takt 40 ======================================================
      es4 r8 g'16 g, c4                                           % V 5
      h4 r8 h16 g c4~
      c4 r8 d16 a h4
      c4 \clef treble r8 c'16 c, f4
      d4 \clef bass r8 d16 d, g8 d'
      %% Takt 45 ======================================================
      c4 r8 g'16 g, c8 h16( d)
      c4 \clef treble r8 c'16 c, f8. es16
      d4 r4 r8 g16 d
      es16 g, a h c8. d16 es4                                     % V 6
      r16 d es f g2
      %% Takt 50 ======================================================
      r16 c, d es f8. es16 d8 f
      es16 c d es f8. g16 as8 f
      \clef bass d16 d, es f g8. a16 h!4
      r16 g a h c4 d
      r16 g, a h c2~
      %% Takt 55 ======================================================
      c4~ c16 c h a h4
      c4 r r16 g f es                                             % V 7
      d4 r \clef treble r16 f' es d
      c4 r16 g' f es d f es d
      c4 r16 g' f es d es d c
      %% Takt 60 ======================================================
      h4 r r16 as'! g f
      g4 r \clef bass d16 c h a
      g4 r r16 es' d c
      h4 r r16 as g f
      es16 c b! as g f es d c es'' d c                            % V 8
      %% Takt 65 ======================================================
      h4~ h16 c h a g es f g
      as!8. b!16 c4 r16 g a h
      c16 des c b! as c d es f g f es
      d4~ d16 es d c h c h a
      g4 \clef treble r16 c d es f as! g f
      %% Takt 70 ======================================================
      es4 \clef bass r16 es, f g as4
      g8 a16 h c c, d es f as! g f
      es8 c r16 g' h g c4\mordent                                 % V 9
      h4 r16 g h g c4
      r16 c es c f2
      %% Takt 75 ======================================================
      r4 r16 c es c f4
      d16 g, h g d' h d h f'4
      g16 g, h g c4 r
      r16 g h g c4 r
      r16 g h g c4~ c8. h16
      %% Takt 80 ======================================================
      c4 r es                                                    % V 10
      d4 r c
      c4 r g'
      c,4 r as
      g4 r f
      %% Takt 85 ======================================================
      g4 r g
      c4 r as
      g4 r h
      g4 r r                                                     % V 11
      s2.
      %% Takt 90 ======================================================
      s2.*30
      %% Takt 120 =====================================================
      \stemDown c,,16 c' g8\rest s2                              % V 15
      g16 g' d8\rest s2
      f,16 f' h,8\rest s2
      as16 as' d,8\rest s2
      g,16 g' d8\rest s2
      %% Takt 125 =====================================================
      es,16 es' h8\rest s2
      c,16 c' g8\rest s2
      g16 g' d8\rest s4 g16 r16 r8
      c,16 c' s4. r8 g                                           % V 16
      r4 r4 r8 g
      %% Takt 130 =====================================================
      r4 r4 r8 g
      r4 r4 r8 d'
      r4 r4 r8 g,
      r4 r4 r8 g
      r4 r4 r8 d'
      %% Takt 135 =====================================================
      r4 r4 r8 d
      r4 r4 c8 r                                                 % V 17
      s2.*3
      %% Takt 140 =====================================================
      s2.*4
      s2 \staffup es4~                                           % V 18
      %% Takt 145 =====================================================
      es8 d16 c d8 es16 f g4~
      g8 f16 es f8 g16 as \std \tieNeutral d,4~
      d8 c~ c4 r8 d
      \appoggiatura c16 h8 c16 h c8 d16 es h!4~
      h8 c16 d es4 r8 d
      %% Takt 150 =====================================================
      c4. d16 e f4~
      f8 es!16 d es8 d16 c g'8 f~
      f8 es16 d es8 es16 d c8 es~                                % V 19
      es16 f es d es4~ es16 f es d
      es4~ es16 f es d es4~
      %% Takt 155 =====================================================
      es16 f es d es4~ es16 f es d
      es4~ es16 es d c d4~
      d16 f es d c4 d~
      d4 c2
      h4 c d8 g,~
      %% Takt 160 =====================================================
      g4~ g16 as g f es8 \clef treble \halsdown c'~              % V 20
      c16 d c h c4~ c16 d c h
      c4~ c16 d c h c4~
      c16 d c h c4~ c16 d c h
      c4~ c16 c d es f8 f,
      %% Takt 165 =====================================================
      c'4~ c16 c h a d4
      g,4~ g16 b! as g f4
      es16 f es d es8. f16 g f g as
      g4~ g16 f es d c4 \bar "||"
      s2.
      %% Takt 170 =====================================================
      s2.*120
      %% Takt 290 =====================================================
      a'4\rest c\rest c
      g'4\rest d,16\rest as' g as~as4
      c,2._\fermata
   }
}

right = {
   \clef treble
   <<
      \sopran
      \alt
      \altzwei
   >>
}

left = {
   \clef bass
   <<
      \tenor
      \bass
   >>
}

pedal = {
   \new Voice  \relative c {
      \global
      \clef bass
      \partial 4 c4
      g'2 es4
      f2 g4
      as2 f4
      g2 d4
      %% Takt 5 =======================================================
      es2 h4
      c2 f,4
      g2.
      c,2 \adjustSlash c'4_"//"                                   % V 1
      g'2 es4
      %% Takt 10 ======================================================
      f2 g4
      as2 f4
      g2 d4
      es2 h4
      c2 f,4
      %% Takt 15 ======================================================
      g2.
      c,2 \adjustSlash c'4_"//"                                   % V 2
      g'2 es4
      f2 g4
      as2 f4
      %% Takt 20 ======================================================
      g2 d4
      es2 h4
      c2 f,4
      g2.
      c,2 \adjustSlash c'4_"//"                                   % V 3
      %% Takt 25 ======================================================
      g'2 es4
      f2 g4
      as2 f4
      g2 d4
      es2 h4
      %% Takt 30 ======================================================
      c2 f,4
      g2.
      c,2 \adjustSlash c'4_"//"                                   % V 4
      g'2 es4
      f2 g4
      %% Takt 35 ======================================================
      as2 f4
      g2 d4
      es2 h4
      c2 f,4
      g2.
      %% Takt 40 ======================================================
      c,2 \adjustSlash r8_"//" c''16 c,                           % V 5
      g'4 r r8 es16 c
      f4 r r8 g16 es
      as!4 r r8 f16 d
      g4 r r8 g16 d
      %% Takt 45 ======================================================
      es4 r r8 g16 h,
      c4 r r8 f16 f,
      g2.
      c,2 \adjustSlash c'4_"//"                                   % V 6
      g'2 es4
      %% Takt 50 ======================================================
      f2 g4
      as2 f4
      g2 d4
      es2 h4
      c2 f,4
      %% Takt 55 ======================================================
      g2.
      c,2 \adjustSlash c'4_"//"                                   % V 7
      g'2 es4
      f2 g4
      as2 f4
      %% Takt 60 ======================================================
      g2 d4
      es2 h4
      c2 f,4
      g2.
      c,2 \adjustSlash c'4_"//"                                   % V 8
      %% Takt 65 ======================================================
      g'2 es4
      f2 g4
      as2 f4
      g2 d4
      es2 h4
      %% Takt 70 ======================================================
      c2 f,4
      g2.
      c,4 r \adjustSlash r16_"//" c' es c                         % V 9
      g'4 r4 r16 es g es
      f4 r r16 g b g
      %% Takt 75 ======================================================
      as4 r r16 f as f
      g4 r r16 d f d
      es4 r r16 h d h
      c4 r r16 f, as f
      g4 r r16 g f g
      %% Takt 80 ======================================================
      c,4 r \adjustSlash c'4_"//"                                % V 10
      g'4 r es
      f4 r g
      as4 r f
      g4  r d
      %% Takt 85 ======================================================
      es4 r h
      c4 r f,
      g4 r g
      c,4 r \adjustSlash r_"//"                                  % V 11
      R2.
      %% Takt 90 ======================================================
      R2.*5
      %% Takt 95 ======================================================
      R2.
      r4 r r8 as''                                               % V 12
      g16 as f g es f d es c d b! c
      as4. as8 b c
      f, c' f16 g es f d! es c d
      %% Takt 100 =====================================================
      h16 c a h g2
      c4. c,8 d4
      es8 g c16 d b! c a4
      h8 c g16 as f g es f d f
      es16 f d es c4 r                                           % V 13
      %% Takt 105 =====================================================
      R2.*23
      r4 r4 c'                                                   % V 16
      g'2 es4
      %% Takt 130 =====================================================
      f2 g4
      as2 f4
      g2 d4
      es2 h4
      c2 f,4
      %% Takt 135 =====================================================
      g2.
      c,2 \adjustSlash c'4_"//"                                  % V 17
      g'2 es4
      f2 g4
      as2 f4
      %% Takt 140 =====================================================
      g2 d4
      es2 h4
      c2 f,4
      g2.
      c,2 r8 c'                                                  % V 18
      %% Takt 145 =====================================================
      g'2 r8 es
      f2 r8 g
      as2 r8 f
      g2 r8 d
      es2 r8 h
      %% Takt 150 =====================================================
      c2 r8 f,
      g2 r8 g
      c,2 \adjustSlash c'4_"//"                                  % V 19
      g'2 es4
      f2 g4
      %% Takt 155 =====================================================
      as2 f4
      g2 d4
      es2 h4
      c2 f,4
      g2.
      %% Takt 160 =====================================================
      c,2 \adjustSlash c'4_"//"                                  % V 20
      g'2 es4
      f2 g4
      as2 f4
      g2 d4
      %% Takt 165 =====================================================
      es2 h4
      c2 f,4
      g2.
      c,2. \bar "||"
      R2.
      %% Takt 170 =====================================================
      R2.*10
      %% Takt 180 =====================================================
      r4 r c'
      g'2 es4
      f2 g4
      as2 f4
      g4. d8 es h
      %% Takt 185 =====================================================
      c4. d8 es c
      d8 b fis fis g g
      r8 es' a, a h h
      r8 c g g a a
      r8 b fis fis g a
      %% Takt 190 =====================================================
      b8 c a g d' d,
      g2 r4
      r4 r16 g' f g c, c' b! c
      as16 c as c as b as b g b g b
      f16 as g b as b as b as b as b
      %% Takt 195 =====================================================
      g as g as g as g b as b as c
      b4 b,2
      es,4 r r
      R2.*2
      %% Takt 200 =====================================================
      R2.*20
      %% Takt 220 =====================================================
      r4 r g
      d'2 b4
      c2 d4
      es2 c4
      d4. e8 fis d
      %% Takt 225 =====================================================
      g8 g d d es! es
      f8 f c c d d
      es8 es b b c c
      d4. d8 es d
      c4 f a,
      %% Takt 230 =====================================================
      b2 h4
      c8 as! es es f f
      g8 a h g c b
      as!8 c f, f' as, f'
      g,8 es' h h c c
      %% Takt 235 =====================================================
      r8 as' d, d e e
      r8 f c c d d
      es!4 as b
      es,4 f g
      c,16 es d f es g f a g b! a c
      %% Takt 240 =====================================================
      b8 r r4 r8 es,
      as,16 c b d c es d f es g f as
      g8 r r4 r8 c,
      f,16 as g b as c b d c es d f
      es4~ es16 f d es c4
      %% Takt 245 =====================================================
      d4~ d16 es c d b4
      fis8 g d16 d' c d g, g' f! g
      es16 g es g es f es f d f d f
      c16 es d f es f es f es f es f
      d8 e fis d g g,
      %% Takt 250 =====================================================
      c8 b! a d b g
      c8 f b, es a, d
      g, f'! es c d d,
      g4 r r8 g'
      c,4. d8 e c
      %% Takt 255 =====================================================
      f2 f,4
      c'2 as4
      b2 c4
      des2 b4
      c4~ c16 e d f e g e g
      %% Takt 260 =====================================================
      as,4~ as16 c b des c des c des
      d,!4 e~ e16 e' d e
      f,4~ f16 f' e f c4
      d2 r16 es d es
      c4 d r16 es d es
      %% Takt 265 =====================================================
      c4 d r16 es d es
      c4 d d,
      g8 a h c d h
      c4 r r8 c
      f16 as g b as c g b f as es g
      %% Takt 270 =====================================================
      d16 f es g f as es g d f c es
      h4 c as
      g4 r16 g' f g c, c' b! c
      as16 c as c as b as b g b g b
      f16 as g b as b as b as b as b
      %% Takt 275 =====================================================
      g2.~
      g16 h g h es, g es g c, es c es
      f16 as f as d, f d f h, d h d
      es16 g es g c, es c es a, c a c
      d16 f d f h, d h d g, h g h
      %% Takt 280 =====================================================
      c16 es c es as, c as c f, as f as
      g4 r16 g h g c g es' c
      g'4 r16 g f g es g c, es
      h4 r16 g' f g es g c, es
      g,4 r16 g' f g es g c, es
      %% Takt 285 =====================================================
      f,8\fermata r r f' es c
      f4 g g,
      c,4 r16 c' e c f c as' f
      c'4 r16 c b c as c f, as
      e4 r16 c' b c as c f, as
      %% Takt 290 =====================================================
      c,4 r16 c b c as c f, as
      << \new Voice { c,2.~
                      c2._\fermata }
         \new Voice { a''4\rest a\rest f
                      g2. }
      >>
   }
}

\score {
   <<
      \new PianoStaff %{
      \with {
      \override VerticalAlignment #'forced-distance = #9
      }
      %}
      {
         \set PianoStaff.instrument = \markup { \large "Manual." }
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
         \set Staff.instrument = \markup { \large "Pedal." \hspace #1.8 }
         \context Voice = pedal \pedal
      }
   >>

   \layout{
   }
}

\score {
   <<
      \new Staff = right {
         \set Staff.midiInstrument = "pan flute"
         \right
      }
      \new Staff {
         \set Staff.midiInstrument = "recorder"
         \transpose c c' \right
      }

      \new Staff = left {
         \set Staff.midiInstrument = "pan flute"
         \context Voice = left \left
      }
      \new Staff {
         \set Staff.midiInstrument = "recorder"
         \transpose c c' \left
      }

      \new Staff {
         \set Staff.midiInstrument = "pan flute"
         \pedal
      }
      \new Staff {
         \set Staff.midiInstrument = "recorder"
         \transpose c c, \pedal
      }
      \new Staff {
         \set Staff.midiInstrument = "recorder"
         \transpose c c' \pedal
      }
      \new Staff { % tempo staff
         \partial 4 s4
         s2.*167
         s4 \tempo 4 = 66 s4 \tempo 4 = 50 s4
         \tempo 4 = 72 s2.*115
         s2 s8 \tempo 4 = 64 s8
         \tempo 8 = 30 s8 \tempo 4 = 72 s8 s2
         s2.*4
         s4 \tempo 4 = 68 s2
         \tempo 4 = 44 s2 s8. \tempo 4 = 32 s16
         s2.
      }
   >>
   \midi{ \tempo 4 = 72 }
}
