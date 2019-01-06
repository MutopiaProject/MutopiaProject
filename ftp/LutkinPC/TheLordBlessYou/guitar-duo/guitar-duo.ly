\version "2.18.2"

\header {
 title = "The Lord Bless You and Keep You"
 subtitle = \markup { \smaller "In Memory of John Paul Goodman (1943-2018)" }
 subsubtitle = \markup { \smaller "For Guitar Duo Plus Optional Voice Duos" }
 composer = "Peter C. Lutkin"
 arranger = "Ed.: J. J. Olson"
 date = "1900"
 source = "Chicago: Clayton F. Summy Company" % IMSLP525535
 style = "Hymn"
 mytagline = ##f

 %            o_
 %       (\___\/_____/)
 %  ~ ~ ~ ~ ~ / ~ ~ ~ ~ ~ ~ ~
 maintainer = "Jeffrey Olson"
 maintainerEmail = "gmail's jjocanoe"
 license = "Public Domain"

 mutopiacomposer = "LutkinPC"
 mutopiatitle = "The Lord Bless You and Keep You"
 mutopiadate = "1900"
 mutopiasource = "Chicago: Clayton F. Summy Company" % IMSLP525535
 mutopiainstrument = "2 guitars and 2 optional voices"
 moreInfo = "In memory of John Paul Goodman (1943-2018), a widely beloved choir director in Colorado who always used this song as a farewell and godspeed, most poignantly whenever a fellow choir member passed away.  This edition allows two guitars to play all the notes in Lutkin's original version for SATB choir.  Reduced vocal parts are also provided in case the two guitarists also choose to sing as a duet (either tenor-bass, soprano-alto or soprano-bass). The LilyPond source file also contains snippets to (a) color any nearly out of range notes and (b) adjust formatting in response to paper size.  An <a href='http://www.mutopiaproject.org/cgibin/piece-info.cgi?id=2239'>arrangement for brass quartet</a> is also available."

 comptitle = \markup { \concat { \composer ": " \title } }
 footer = "Mutopia-2018/12/06-2235"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white "ǀ" \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {"ǀ" "ǀ"}}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " "by " \maintainer " — " \footer}\concat {\concat {\abs-fontsize #8 { "Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "Public Domain" " by the typesetter " " — free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white "ǀ" }}}
 tagline = ##f
 myfoot = \markup{ \override #'(font-name . "DejaVu Sans,sans-serif") \column { \vspace #2 \abs-fontsize #8 \fill-line { \line { \footer } \line { \comptitle } \line { \arranger } } } }
}


\paper{
  page-count = #6
  %#(set-paper-size "a4")      %uncomment to test specific paper size
  %#(set-paper-size "letter")  %uncomment to test specific paper size
  indent = \indent + 8\mm
  top-margin = 8\mm
  bottom-margin = 8\mm
  ragged-last-bottom = ##f
  print-first-page-number = ##f
  evenHeaderMarkup = \oddHeaderMarkup % so all page numbers to right
  oddFooterMarkup = \markup { \column {
      \fill-line { \on-the-fly #first-page \column { \vspace #2 \fromproperty #'header:copyright } }
      \fill-line { \on-the-fly #not-first-page \fromproperty #'header:myfoot }
    }
  }
  evenFooterMarkup = \oddFooterMarkup
}
% guitar neck position indicators
pI    = ^\markup { "I" }
pII   = ^\markup { "II" }
pIII  = ^\markup { "III" }
pIV   = ^\markup { "IV" }
pV    = ^\markup { "V" }
pVI   = ^\markup { "VI" }
pVII  = ^\markup { "VII" }
pVIII = ^\markup { "VIII" }
pIX   = ^\markup { "IX" }
pX    = ^\markup { "X" }
pXI   = ^\markup { "XI" }
pXII  = ^\markup { "XII" }
pXIII = ^\markup { "XIII" }
pXIV  = ^\markup { "XIV" }
pETC  = ^\markup { "..." }

% parenthetic position reminders
ppI    = ^\markup { "(I)" }
ppII   = ^\markup { "(II)" }
ppIII  = ^\markup { "(III)" }
ppIV   = ^\markup { "(IV)" }
ppV    = ^\markup { "(V)" }
ppVI   = ^\markup { "(VI)" }
ppVII  = ^\markup { "(VII)" }
ppVIII = ^\markup { "(VIII)" }
ppIX   = ^\markup { "(IX)" }
ppX    = ^\markup { "(X)" }
ppXI   = ^\markup { "(XI)" }
ppXII  = ^\markup { "(XII)" }
ppXIII = ^\markup { "(XIII)" }

% large barre
BpI    = ^\markup { "B_I" }
BpII   = ^\markup { "B_II" }
BpIII  = ^\markup { "B_III" }
BpIV   = ^\markup { "B_IV" }
BpV    = ^\markup { "B_V" }
BpVI   = ^\markup { "B_VI" }
BpVII  = ^\markup { "B_VII" }
BpVIII = ^\markup { "B_VIII" }
BpIX   = ^\markup { "B_IX" }
BpX    = ^\markup { "B_X" }
BpXI   = ^\markup { "B_XI" }
BpXII  = ^\markup { "B_XII" }

% small barre
bpI    = ^\markup { "b_I" }
bpII   = ^\markup { "b_II" }
bpIII  = ^\markup { "b_III" }
bpIV   = ^\markup { "b_IV" }
bpV    = ^\markup { "b_V" }
bpVI   = ^\markup { "b_VI" }
bpVII  = ^\markup { "b_VII" }
bpVIII = ^\markup { "b_VIII" }
bpIX   = ^\markup { "b_IX" }
bpX    = ^\markup { "b_X" }
bpXI   = ^\markup { "b_XI" }
bpXII  = ^\markup { "b_XII" }
bpXIII = ^\markup { "b_XIII" }

% left hand fingering locations
fingerLeft   = \set fingeringOrientations = #'(left)
fingerRight  = \set fingeringOrientations = #'(right)
fingerUp     = \set fingeringOrientations = #'(up)
fingerDown   = \set fingeringOrientations = #'(down)
fingerUpDown = \set fingeringOrientations = #'(up down)
fingerStaff  = \override Fingering.staff-padding = #'()
fingerRevert = \revert Fingering.staff-padding

% abbreviation to tweak a fingering location
% e.g. <cis'-\fngXY #'(0 . 0.5)-1>
fngXY = #(define-scheme-function (parser location xy fng) (number-pair? string-or-music?) #{
     \tweak extra-offset #xy #fng
#})

% right hand fingers
P = \rightHandFinger #1
I = \rightHandFinger #2
M = \rightHandFinger #3
A = \rightHandFinger #4

% right hand fingering locations
rhUp    = \set strokeFingerOrientations = #'(up)
rhDown  = \set strokeFingerOrientations = #'(down)
rhLeft  = \set strokeFingerOrientations = #'(left)
rhRight = \set strokeFingerOrientations = #'(right)

% abbreviation to tweak right hand finger location
% e.g. <c'-3 -\rhXY #'(0 . -.2) \P e'-4 -\strXY #'(0 . .2) \2>1
rhXY = #(define-scheme-function (parser location xy str) (number-pair? string-or-music?) #{
     \tweak StrokeFinger.extra-offset #xy #str
#})

% string number locations
stringUp    = \set stringNumberOrientations = #'(up)
stringDown  = \set stringNumberOrientations = #'(down)
stringLeft  = \set stringNumberOrientations = #'(left)
stringRight = \set stringNumberOrientations = #'(right)

% abbreviation to tweak sting number location
% e.g. <c'-3 -\strXY #'(0 . -.2) \3 e'-4 -\strXY #'(0 . .2) \2>1
strXY = #(define-scheme-function (parser location xy str) (number-pair? string-or-music?) #{
     \tweak StringNumber.extra-offset #xy #str
#})

% string-number spanners (from snippets + dashed line)
% use before \startTexSpan and \stopTextSpan
onOneString =
#(define-music-function (parser location strA) (string?)
   #{
     \override TextSpanner.direction = #UP
     \override TextSpanner.style = #'dashed-line
     \override TextSpanner.dash-fraction = #.5
     \override TextSpanner.dash-period = #2.0
     \override TextSpanner.font-size = #-5
     \override TextSpanner.bound-details.left.stencil-align-dir-y = #CENTER
     \override TextSpanner.bound-details.left.text =
       \markup  { \circle \number #strA }
   #})
onTwoStrings =
#(define-music-function (parser location strA strB) (string? string?)
   #{
     \override TextSpanner.direction = #UP
     \override TextSpanner.style = #'dashed-line
     \override TextSpanner.dash-fraction = #.5
     \override TextSpanner.dash-period = #2.0
     \override TextSpanner.font-size = #-5
     \override TextSpanner.bound-details.left.stencil-align-dir-y = #CENTER
     \override TextSpanner.bound-details.left.text =
       \markup \concat { \circle \number #strA \circle \number #strB }
   #})
onThreeStrings =
#(define-music-function (parser location strA strB strC) (string? string? string?)
   #{
     \override TextSpanner.direction = #UP
     \override TextSpanner.style = #'dashed-line
     \override TextSpanner.dash-fraction = #.5
     \override TextSpanner.dash-period = #2.0
     \override TextSpanner.font-size = #-5
     \override TextSpanner.bound-details.left.stencil-align-dir-y = #CENTER
     \override TextSpanner.bound-details.left.text =
       \markup \concat { \circle \number #strA \circle \number #strB \circle \number #strC }
   #})

% harmonics
headHarmonic = \override Staff.NoteHead.style = #'harmonic
headRevert = \revert Staff.NoteHead.style

% high notes
hiE   = ^\markup{ \smaller E}
hiF   = ^\markup{ \smaller F}
hiFis = ^\markup{ \smaller \concat{ F \super \sharp }}
hiG   = ^\markup{ \smaller G}
hiGis = ^\markup{ \smaller \concat{ G \super \sharp }}
hiAes = ^\markup{ \smaller \concat{ A \super \flat }}
hiA   = ^\markup{ \smaller A}
hiBes = ^\markup{ \smaller \concat{ B \super \flat }}
hiB   = ^\markup{ \smaller B}


% function to color notes that are near or out of range
#(define (color-pitch-range grob max-pitch hi-pitch lo-pitch min-pitch)
  (let ((pitch (ly:event-property (event-cause grob) 'pitch) ))
    (if pitch
      (if (ly:pitch<? max-pitch pitch) (x11-color 'red)
        (if (ly:pitch<? pitch min-pitch) (x11-color 'blue)
          (if (ly:pitch<? hi-pitch pitch) (x11-color 'orange)
            (if (ly:pitch<? pitch lo-pitch) (x11-color 'green)
) ) ) ) ) ) )

% pitch limits for standard clasical guitar
% absolute max and min attainable (b''' and d)
% comfortably attainable hi and lo (e''' and e)

#(define (guitar-score-range grob) ; for std scores written +8va high
   (let ((max-pitch (ly:make-pitch  2 6 NATURAL) )  ; B6
         (hi-pitch  (ly:make-pitch  2 2 NATURAL) )  ; E6
         (lo-pitch  (ly:make-pitch -1 2 NATURAL) )  ; E3
         (min-pitch (ly:make-pitch -1 1 NATURAL) )) ; D3
     (color-pitch-range grob max-pitch hi-pitch lo-pitch min-pitch)))

#(define (guitar-pitch-range grob) ; for actual pitch scores
   (let ((max-pitch (ly:make-pitch  1 6 NATURAL) )  ; B5
         (hi-pitch  (ly:make-pitch  1 2 NATURAL) )  ; E5
         (lo-pitch  (ly:make-pitch -2 2 NATURAL) )  ; E2
         (min-pitch (ly:make-pitch -2 1 NATURAL) )) ; D2
     (color-pitch-range grob max-pitch hi-pitch lo-pitch min-pitch)))

% pitch limits for typical (non-pro) church choirs
#(define (soprano-pitch-range grob)
   (let ((max-pitch (ly:make-pitch  1 6 NATURAL) )  ; B5
         (hi-pitch  (ly:make-pitch  1 4 NATURAL) )  ; G5
         (lo-pitch  (ly:make-pitch  0 0 NATURAL) )  ; C4
         (min-pitch (ly:make-pitch -1 6 FLAT   ) )) ; Bb3
     (color-pitch-range grob max-pitch hi-pitch lo-pitch min-pitch)))

#(define (alto-pitch-range grob)
   (let ((max-pitch (ly:make-pitch  1 2 NATURAL) )  ; E5
         (hi-pitch  (ly:make-pitch  1 0 NATURAL) )  ; C5
         (lo-pitch  (ly:make-pitch -1 4 NATURAL) )  ; G3
         (min-pitch (ly:make-pitch -1 3 NATURAL) )) ; F3
     (color-pitch-range grob max-pitch hi-pitch lo-pitch min-pitch)))

#(define (tenor-pitch-range grob)
   (let ((max-pitch (ly:make-pitch  0 5 NATURAL) )  ; A4
         (hi-pitch  (ly:make-pitch  0 4 NATURAL) )  ; G4
         (lo-pitch  (ly:make-pitch -1 0 NATURAL) )  ; C3
         (min-pitch (ly:make-pitch -2 6 FLAT   ) )) ; Bb2
     (color-pitch-range grob max-pitch hi-pitch lo-pitch min-pitch)))

#(define (baritone-pitch-range grob)
   (let ((max-pitch (ly:make-pitch  0 3 NATURAL) )  ; F4
         (hi-pitch  (ly:make-pitch  0 2 NATURAL) )  ; E4
         (lo-pitch  (ly:make-pitch -2 5 NATURAL) )  ; A2
         (min-pitch (ly:make-pitch -2 4 NATURAL) )) ; G2
     (color-pitch-range grob max-pitch hi-pitch lo-pitch min-pitch)))

#(define (bass-pitch-range grob)
   (let ((max-pitch (ly:make-pitch  0 2 NATURAL) )  ; E4
         (hi-pitch  (ly:make-pitch  0 0 NATURAL) )  ; C4
         (lo-pitch  (ly:make-pitch -2 3 NATURAL) )  ; F2
         (min-pitch (ly:make-pitch -2 1 NATURAL) )) ; D2
     (color-pitch-range grob max-pitch hi-pitch lo-pitch min-pitch)))

% tempo/dynamics
acl = _\markup { \smaller \italic "accel." }
rit = _\markup { \smaller \italic "rit." }
dim = _\markup { \smaller \italic "dim." }
crc = _\markup { \smaller \italic "cresc." }
dol = ^\markup { \center-align \smaller \italic "dolce" }
dcf = _\markup { \smaller \italic "D.C." }
fin = _\markup { \smaller \italic "Fin" }

global = {
  \key c \major
  \time 4/4
  \tempo 4=66
  \fingerLeft
}

%{ % (this initial version had guitars following original SATB voices)

soprano = \transpose c c' {
  \global
  \partial 4 { g'4\pIII } | %0
  g'2 e'4 c'8 c' | %1
  d'4 f' e'4. g'8 | %2
  g'4 e'8 g' c''8.\bpV b'16 a'8 e' | %3
  <g'-3>4\pII fis' g' r | %4

  r8 e'\pI f' e' <a'-4>4\pIII r | %5
  r8 g'\pVII a' g' c''\bpVIII r r g' | %6
  g'8 e' g' c'' e''8. c''16 g'8 e' | %7
  <g'-1>4 <f'-1>\pVI e'\bpV e'8 a' | %8
  a'2~ a'8 g' e' <g'-1>\bpVIII | %9
  c''4. c''8 c''4 <a'-4> | %10
  r4 r8 <a'-4>\pIII <g'-1>4. c'8 | %11
  \onTwoStrings "2" "3"
  a'8 g' r4 g' <f'-3>\startTextSpan | %12
  <e'-3>2 <d'-1> | %13

  c'4\stopTextSpan r r2 | %14
  s1 | %15
  r4 <b'-1> <e''-4>\pIX <d''-2> | %16
  <c''-4>4 <e''-2>\pXI <g''-4>\pXII <f''!-2> | %17
  <e''-4>4\pVIII d'' c'' <b'-1>\pVII | %18
  <a'-4>2. <b'-1>8 a' | %19
  <g'-3>2.\pVI <a'-4>8 <g'-3> | %20
  <f'-1>4 <d'-1>\pIII g' a' | %21
  g'1\bpIII | %22
  g'1\pI | %23
  \headHarmonic g''1 | %24
  \bar "|."

}

alto = \transpose c c' {
  \global
  \partial 4 { c'4 } | %0
  c'2 c'4 c'8 c' | %1
  c'4 b c'4. e'8 | %2
  e'4 c'8 e' e'8. e'16 e'8 e' | %3
  <d'-2>2 d'4 r | %4

  r8 cis' cis' cis' <d'-1>4 r | %5
  r8 d' d' d' c' g' g' f' | %6
  e'8 c' e'4 e'8. e'16 e'8 c' | %7
  <e'-2>4 <d'-2> c' r | %8
  r4 <c'-1>8 <d'-3> <e'-1> e' r4 | %9
  r4 <f'-3>8 g' <a'-4>4 <f'-3> | %10
  r4 r8 <c'-3>8 c'4. c'8 | %11
  c'8 c' r4 <cis'-4> <d'-4> | %12
  <c'!-2>2 <b-2> | %13

  c'4\pI r r2 | %14
  r4\pVII <c'-4> <f'-4> <e'-3> | %15
  <d'-1>2\bpVII <e'-1>~ | %16
  e'4 <fis'-1> <g'-1>2 | %17
  g'4 gis' a' <e'-3>~ | %18
  e'4 <f'-3>8 <e'-2> <d'-1>2~\bpVII | %19
  d'4 <e'-4>8 <d'-2> <cis'-1>2 | %20
  <d'-2>4 <b-2> c'2~ | %21
  c'4 d'8 c' b2 | %22
  c'1 | %23
  c'1\ppp | %24
  \bar "|."
  \pageBreak
}

tenor = \transpose c c' {
  \global
  \partial 4 { e4\pI } | %0
  e2 g4 e8 e | %1
  <a-2>4 g g4. c'8 | %2
  c'4 <g-0>8 g <a-3>8. <gis-1>16 <a-1>8\pII a | %3
  <b-1>4\pIV <a-4> b r | %4

  r8 <a-1> a a a4 r | %5
  r8 b c' b c' g <a-3> b | %6
  c'4 c' c'8. c'16 c'8 c' | %7
  c'4 b c' r | %8
  r4 a8 b c' c' r4 | %9
  r4 c'8 bes a4 c' | %10
  r4 r8 c' bes4. bes8 | %11
  bes8 bes r4 <a-1> <a-1> | %12
  g2. <f-4>4 | %13

  <e-2>4 g c' b | %14
  <a-2>4 a <d'-4> <c'-1> | %15
  b2 g4 a8 b | %16
  c'2 b4 <c'-1>8 <d'-1>\pIII | %17
  <e'-0>2. <b-0>4 | %18
  <c'-1>4\pI <d'-4>8 c' b2~ | %19
  b4 c'8 b <a-3>2 | %20
  <a-3>4 <aes-1> <g-0> <fis-2> | %21
  <f!-1>2 <f-1> | %22
  <e-2>1\pI | %23
  <c' g e c>1\arpeggio | %24
  \bar "|."

}

bass = \transpose c c' {
  \global
  \partial 4 { c4 } | %0
  c2 c4 c8 c | %1
  <f,-1>4 <g,-3> <c-4>4. c8 | %2
  c4 <c-4>8 c a,8. <b,-2>16 <c-2>8 c | %3
  <d-2>2 <g-4>8 g g g | %4

  <g-4>2\pII <f-3>8 f f f | %5
  f2\pI <e-2>8 e d4 | %6
  <c-4>8 c' g e c8. g16 g8 g | %7
  g4 <gis-2> <a-2> r | %8
  r4 f8 f e e r4 | %9
  r4 d8 e f4 f | %10
  r4 r8 f8 e4. e8 | %11
  f8 e r4 <e-2>4 d | %12
  <g,-3>2 g, | %13

  <c-3>4 r c d8 <e-2> | %14
  <f-3>2 d4 <e-2>8 f | %15
  g2 e4 f8 g | %16
  a2 g4 <a-2>8 <b-2> | %17
  <c'-4>4 <b-3> <a-1> <g-0> | %18
  <f-3>2. g8 f | %19
  e2. <f-4>8 e | %20
  d4 <f-4> <e-2> <es-4> | %21
  <d-3>2 <g,-2> | %22
  <c-3>1 | %23
  s1\dol\ppp | %24
  \bar "|."

}

\score {
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup{ "Guitar I   " }
    } {
      %\override Staff.NoteHead.color = #guitar-score-range
      <<
        \new Voice = "soprano" { \voiceOne \soprano }
        \new Voice = "alto" { \voiceTwo \alto }
      >>
    }
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup{ "Guitar II  " }
    } {
      %\override Staff.NoteHead.color = #guitar-score-range
      <<
        \new Voice = "tenor" { \voiceOne \tenor }
        \new Voice = "bass" { \voiceTwo \bass }
      >>
    }
  >>
  \layout { }
  \midi { }
}

%}

% Guitar I will play two voices: upperA (~soprano) and upper B (~alto)
upperA = \transpose c c' {
  \global
  \partial 4 { g'4\pIII } | %0
  g'2^\markup { \fromproperty #'paper:page-count } e'4 c'8 c' | %1
  d'4 f' e'4. g'8 | %2
  g'4 e'8 g' c''8.\bpV b'16 a'8 e' | %3
  <g'-3>4\pII fis' g' r | %4

  r8 e'\pI f' e' <a'-4>4\pIII r | %5
  r8 g'\pVII a' g' c''\bpVIII r r g' | %6
  g'8 e' g' c'' e''8. c''16 g'8 e' | %7
  <g'-1>4 <f'-1>\pVI e'\bpV e'8 a' | %8
  a'2~ a'8 g' e' <g'-1>\bpVIII | %9
  c''4. c''8 c''4 <a'-4>~ | %10
  a'4 r8 <a'-4>\pIII <g'-1>4. c'8 | %11            MOD
  \onTwoStrings "2" "3"
  a'8 g'~ g' r g'4 <f'-3>\startTextSpan | %12    MOD
  <e'-3>2 <d'-1> | %13

  c'4\stopTextSpan r r2 | %14
  s1 | %15
  r4 <b'-1> <e''-4>\pIX <d''-2> | %16
  <c''-4>4 <e''-2>\pXI <g''-4>\pXII <f''!-2> | %17
  <e''-4>4\pVIII d'' c'' <b'-1>\pVII | %18
  <a'-4>2. <b'-1>8 a' | %19
  <g'-3>2.\pVI <a'-4>8 <g'-3> | %20
  <f'-1>4 <d'-1>\pIII g' a' | %21
  g'1\bpIII | %22
  g'1\pI | %23
  g''1 | %24
  \bar "|."

}

upperB = \transpose c c' {
  \global
  \partial 4 { c'4 } | %0
  c'2 c'4 c'8 c' | %1
  c'4 b c'4. e'8 | %2
  e'4 c'8 e' e'8. e'16 e'8 e' | %3
  <d'-2>2 d'4 r | %4

  r8 cis' cis' cis' <d'-1>4 r | %5
  r8 d' d' d' c' g' g' f' | %6
  e'8 c' e'4 e'8. e'16 e'8 c' | %7
  <e'-2>4 <d'-2> c' r | %8
  r4 <c'-1>8 <d'-3> <e'-1> e' r4 | %9
  r4 <f'-3>8 g' <a'-4>4 <f'-3>~ | %10
  f'4 r8 <c'-3>8 c'4. c'8 | %11                   MOD
  c'8 c'~ c' r <cis'-4>4 <d'-4> | %12            MOD
  <c'!-2>2 <b-2> | %13

  c'4\pI g c' b | %14                            MOD
  <a-2>4 <c'-4>\pVII <f'-4> <e'-3> | %15        MOD
  <d'-1>2\bpVII <e'-1>~ | %16
  e'4 <fis'-1> <g'-1>2 | %17
  g'4 gis' a' <e'-3>~ | %18
  e'4 <f'-3>8 <e'-2> <d'-1>2~\bpVII | %19
  d'4 <e'-4>8 <d'-2> <cis'-1>2 | %20
  <d'-2>4 <b-2> c'2~ | %21
  c'4 d'8 c' b2 | %22
  c'1 | %23
  c''1\ppp | %24
  \bar "|."
  \pageBreak
}

% Upper voice of voice duo uses upperV (~soprano) ajusted for octave
upperV = {
  \global
  \partial 4 { g'4 } | %0
  g'2 e'4 c'8 c' | %1
  d'4 f' e'4. g'8 | %2
  g'4 e'8 g' c''8. b'16 a'8 e' | %3
  <g'>4 fis' g' r | %4

  r8 e' f' e' <a'>4 r | %5
  r8 g' a' g' c'' r r g' | %6
  g'8 e' g' c'' e''8. c''16 g'8 e' | %7
  <g'>4 <f'> e' e'8 a' | %8
  a'2~ a'8 g' e' <g'> | %9
  c''4. c''8 c''4 <a'> | %10
  r4 r8 <a'> <g'>4. c'8 | %11
  a'8 g' r4 g' <f'> | %12
  <e'>2 <d'> | %13

  c'4 g' c'' b' | %14                            MOD
  <a'>4 <c''> <f''> <e''> | %15                   MOD +OCT
  <d''>4 <b'> <e''> <d''> | %16                  +OCT
  <c''>4 <e''> <g''> <f''!> | %17
  <e''>4 d'' c'' <b'> | %18
  <a'>4 f'8 e' d'4 <b'>8 a' | %19
  <g'>4 e'8 d' cis'4 <a'>8 <g'> | %20
  <f'>4 <d'> g' a' | %21
  g'2 d''8 c'' b'4 | %22                      MOD
  c''1 | %23
  c''1 | %24
  \bar "|."
}

% when upperV is a soprano
upperVS = \transpose c c {
  \clef "treble"
  \upperV
}

% when upperV is a tenor
upperVT = \transpose c c, {
  \clef "bass"
  \upperV
}

% when a guitar plays upperV as Lead I
upperVG = \transpose c c {
  \clef "treble"
  \upperV
}


% Guitar II will play two voices: lowerC (~tenor) and lowerD (~bass)
lowerC = \transpose c c' {
  \global
  \partial 4 { e4\pI } | %0
  e2 g4 e8 e | %1
  <a-2>4 g g4. c'8 | %2
  c'4 <g-0>8 g <a-3>8. <gis-1>16 <a-1>8\pII a | %3
  <b-1>4\pIV <a-4> b r | %4

  r8 <a-1> a a a4 r | %5
  r8 b c' b c' g <a-3> b | %6
  c'4 c' c'8. c'16 c'8 c' | %7
  c'4 b c' r | %8
  r4 a8 b c' c' r4 | %9
  r4 c'8 bes a4 c'~ | %10
  c'4 r8 c' bes4. bes8 | %11                    MOD
  bes8 bes~ bes r <a-1>4 <a-1> | %12            MOD
  g2. <f-4>4 | %13

  <e-2>4 s2. | %14                              MOD
  s4 a <d'-4> <c'-1> | %15                      MOD
  b2 g4 a8 b | %16
  c'2 b4 <c'-1>8 <d'-1>\pIII | %17
  <e'-0>2. <b-0>4 | %18
  <c'-1>4\pI <d'-4>8 c' b2~ | %19               MOD
  b4 c'8 b <a-3>2 | %20                         MOD
  <a-3>4 <aes-1> <g-0> <fis-2> | %21
  <f!-1>2 <f-1> | %22
  <e-2>1\pI | %23
  <c' g e c>1\arpeggio | %24
  \bar "|."
}

lowerD = \transpose c c' {
  \global
  \partial 4 { c4 } | %0
  c2 c4 c8 c | %1
  <f,-1>4 <g,-3> <c-4>4. c8 | %2
  c4 <c-4>8 c a,8. <b,-2>16 <c-2>8 c | %3
  <d-2>2 <g-4>8 g g g | %4

  <g-4>2\pII <f-3>8 f f f | %5
  f2\pI <e-2>8 e d4 | %6
  <c-4>8 c' g e c8. g16 g8 g | %7
  g4 <gis-2> <a-2> r | %8
  r4 f8 f e e r4 | %9
  r4 d8 e f4 f~ | %10
  f4 r8 f8 e4. e8 | %11                       MOD
  f8 e~ e r <e-2>4 d | %12                    MOD
  <g,-3>2 g, | %13

  <c-3>4 r c d8 <e-2> | %14
  <f-3>2 d4 <e-2>8 f | %15
  g2 e4 f8 g | %16
  a2 g4 <a-2>8 <b-2> | %17
  <c'-4>4 <b-3> <a-1> <g-0> | %18
  <f-3>2. g8 f | %19
  e2. <f-4>8 e | %20
  d4 <f-4> <e-2> <es-4> | %21
  <d-3>2 <g,-2> | %22
  <c-3>1 | %23
  s1\dol\ppp | %24
  \bar "|."
}

% Lower voice of voice duo uses lowerV (~bass) ajusted for octave
lowerV = {
  \global
  \partial 4 { c4 } | %0
  c2 c4 c8 c | %1
  <f,>4 <g,> <c>4. c8 | %2
  c4 <c>8 c a,8. <b,>16 <c>8 c | %3
  <d>2 <g>8 g g g | %4

  <g>2 <f>8 f f f | %5
  f2 <e>8 e d4 | %6
  <c>8 g, c e c8. <g, g>16 <g, g>8 <g, g> | %7         MOD c' g  to  g, c
  <g, g>4 <gis, gis> <a, a> r | %8
  r4 f8 f e e r4 | %9
  r4 d8 e f4 f | %10
  r4 r8 f8 e4. e8 | %11
  f8 e r4 <e>4 d | %12
  <g,>2 g, | %13

  <c>4 r c d8 <e> | %14
  <f>2 d4 <e>8 f | %15
  g2 e4 f8 g | %16
  a2 g4 <a>8 <b> | %17
  <c'>4 <b> <a> <g> | %18
  <f>4 d8 c b,4 g8 f | %19               MOD
  e4 c8 b, a,4 <f>8 e | %20              MOD
  d4 <b,> <e> <es> | %21                 MOD
  <d>2 <g,> | %22
  <c>1 | %23
  c1 | %24
  \bar "|."
}

% when lowerV is an alto
lowerVA = \transpose c c' {
  \clef "treble"
  \lowerV
}

% when lowerV is a bass
lowerVB = \transpose c c {
  \clef "bass"
  \lowerV
}

% when a guitar plays lowerV as Lead II
lowerVG = \transpose c c' {
  \clef "treble"
  \lowerV
}

% a tempo track to control midi of guitar duo
tempO = {
  \partial 4 { \tempo 4=75 s4 } | %0
  \tempo 4=75 s4  \tempo 4=74 s4  \tempo 4=73 s4  \tempo 4=73 s4 %1
  \tempo 4=72 s4  \tempo 4=70 s4  \tempo 4=65 s4  \tempo 4=70 s4 %2
  \tempo 4=69 s4  \tempo 4=71 s4  \tempo 4=72 s4  \tempo 4=72 s4 %3
  \tempo 4=72 s4  \tempo 4=72 s4  \tempo 4=71 s4  \tempo 4=69 s4 %4
  \tempo 4=68 s4  \tempo 4=68 s4  \tempo 4=66 s4  \tempo 4=66 s4 %5
  \tempo 4=66 s4  \tempo 4=65 s4  \tempo 4=65 s4  \tempo 4=65 s4 %6
  \tempo 4=67 s4  \tempo 4=69 s4  \tempo 4=65 s4  \tempo 4=64 s4 %7
  \tempo 4=63 s4  \tempo 4=62 s4  \tempo 4=62 s4  \tempo 4=61 s4 %8
  \tempo 4=61 s4  \tempo 4=62 s4  \tempo 4=67 s4  \tempo 4=69 s4 %9
  \tempo 4=62 s4  \tempo 4=61 s4  \tempo 4=60 s4  \tempo 4=61 s4 %10
  \tempo 4=61 s4  \tempo 4=63 s4  \tempo 4=62 s4  \tempo 4=63 s4 %11
  \tempo 4=63 s4  \tempo 4=63 s4  \tempo 4=62 s4  \tempo 4=62 s4 %12
  \tempo 4=62 s4  \tempo 4=63 s4  \tempo 4=63 s4  \tempo 4=64 s4 %13
  \tempo 4=64 s4  \tempo 4=65 s4  \tempo 4=65 s4  \tempo 4=66 s4 %14
  \tempo 4=68 s4  \tempo 4=68 s4  \tempo 4=69 s4  \tempo 4=70 s4 %15
  \tempo 4=71 s4  \tempo 4=71 s4  \tempo 4=72 s4  \tempo 4=72 s4 %16
  \tempo 4=74 s4  \tempo 4=73 s4  \tempo 4=73 s4  \tempo 4=73 s4 %17
  \tempo 4=73 s4  \tempo 4=71 s4  \tempo 4=70 s4  \tempo 4=69 s4 %18
  \tempo 4=66 s4  \tempo 4=65 s4  \tempo 4=65 s4  \tempo 4=65 s4 %19
  \tempo 4=62 s4  \tempo 4=62 s4  \tempo 4=62 s4  \tempo 4=63 s4 %20
  \tempo 4=62 s4  \tempo 4=62 s4  \tempo 4=60 s4  \tempo 4=60 s4 %21
  \tempo 4=52 s4  \tempo 4=55 s4  \tempo 4=56 s4  \tempo 4=56 s4 %22
  \tempo 4=56 s4  \tempo 4=57 s4  \tempo 4=59 s4  \tempo 4=60 s4 %23
  \tempo 4=62 s4  \tempo 4=62 s4  \tempo 4=62 s4 %24
}

% layout control for guitar duo on letter paper
pageLetter = {
  \partial 4 { s4 } | %0
  s1 %1
  s1 %2
  s1 %3
  s1 %4
  s1 %5
  \break
  s1 %6
  s1 %7
  s1 %8
  s1 %9
  s1 %10
  s1 %11
  \break
  s1 %12
  s1 %13
  s1 %14
  s1 %15
  s1 %16
  s1 %17
  \break
  s1 %18
  s1 %19
  s1 %20
  s1 %21
  s1 %22
  s1 %23
  s1 %24
}

% layout control for guitar duo on A4 (non-letter) paper
pageElse = {
  \partial 4 { s4 } | %0
  s1 %1
  s1 %2
  s1 %3
  \break
  s1 %4
  s1 %5
  s1 %6
  s1 %7
  \break
  s1 %8
  s1 %9
  s1 %10
  s1 %11
  s1 %12
  \break
  s1 %13
  s1 %14
  s1 %15
  s1 %16
  s1 %17
  s1 %18
  \break
  s1 %19
  s1 %20
  s1 %21
  s1 %22
  s1 %23
  s1 %24
}

% function to choose between 2 music expressions depending on paper size
% (from Thomas Morley on lilypond-user email list)
ifLetter =
#(define-music-function (parser location musL musE) (ly:music? ly:music?)
    (if (equal? (ly:output-def-lookup $defaultpaper 'papersizename) "letter")
        musL musE))

% score for guitar duo layout (without midi tempo controls)
\score {
  \new ChoirStaff <<
    \new Staff \with {
      instrumentName = \markup{ "Guitar I   " }
    } {
      \set Staff.tempoHideNote = ##t
      %\override Staff.NoteHead.color = #guitar-score-range
      <<
        \new Voice = "upperA" { \voiceOne \upperA }
        \new Voice = "upperB" { \voiceTwo \upperB }
        \new Voice = "pageX" { \voiceThree \ifLetter \pageLetter \pageElse }
      >>
    }
    \new Staff \with {
      instrumentName = \markup{ "Guitar II  " }
    } {
      %\override Staff.NoteHead.color = #guitar-score-range
      <<
        \new Voice = "lowerC" { \voiceOne \lowerC }
        \new Voice = "lowerD" { \voiceTwo \lowerD }
      >>
    }
  >>
  \layout { }
}

% score for guitar duo midi with variable tempo controls
\score {
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "acoustic guitar (nylon)"
    } {
      \set Staff.tempoHideNote = ##t
      %\override Staff.NoteHead.color = #guitar-score-range
      <<
        \new Voice = "upperA" { \voiceOne \upperA }
        \new Voice = "upperB" { \voiceTwo \upperB }
        \new Voice = "tempO" { \voiceThree \tempO }
      >>
    }
    \new Staff \with {
      midiInstrument = "acoustic guitar (nylon)"
    } {
      %\override Staff.NoteHead.color = #guitar-score-range
      <<
        \new Voice = "lowerC" { \voiceOne \lowerC }
        \new Voice = "lowerD" { \voiceTwo \lowerD }
      >>
    }
  >>
  \midi {
    \transposition c % guitar plays octave lower than written
  }
}



\pageBreak

% lyrics for upper voice
upperVlyrics = \lyricmode {
  The %|
  Lord bless you and %|
  keep _ you, the %|
  Lord lift his coun -- te -- nance up -- %|
  on __ _ you %|
  and give you peace %|
  and give you peace the %|
  Lord _ make his face to shine up -- %|
  on __ _ you and be %|
  gra -- cious un -- to %|
  you, be gra -- cious, %|
  the Lord be %|
  gra -- cious gra -- cious %|
  un -- to %|
  you. A __ _ _ %|
  men, A __ _ _ %|
  men, A __ _ _ %|
  men, A __ _ _ %|
  _ _ _ _ %|
  men, A __ _ men, A __ _ %|
  men, A __ _ men, A __ _ %|
  _ _ men, _ %|
  A __ _ _ _ %|
  men. %|
  mmm %|
}

% score for Tenor - Guitar I part
\score {
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup{ "Tenor  " }
    } <<
      \override Staff.NoteHead.color = #tenor-pitch-range
      \new Voice = "upperV" \with { \consists "Ambitus_engraver" } { \voiceOne \upperVT }
      \new Lyrics \lyricsto "upperV" { \upperVlyrics }
    >>
    \new Staff \with {
      midiInstrument = "acoustic guitar (nylon)"
      instrumentName = \markup{ "Guitar I   " }
    } {
      \override Staff.NoteHead.color = #guitar-score-range
      \transposition c % guitar plays octave lower than written
      <<
        \new Voice = "upperA" { \voiceOne \upperA }
        \new Voice = "upperB" { \voiceTwo \upperB }
      >>
    }
  >>
  \layout { %\context { \Voice \consists "Ambitus_engraver" }
  }
  \midi {
  }
}

\pageBreak


% lyrics for lower voice
lowerVlyrics = \lyricmode {
  The %|
  Lord bless you and %|
  keep _ you, the %|
  Lord lift his coun -- te -- nance up -- %|
  on you and give you %|
  peace __ _ and give you %|
  peace __ _ the Lord %|
  make _ his _ face to shine up -- %|
  on __ _ you  %|
  and be gra -- cious %|
  and be gra -- cious %|
  the Lord be %|
  gra -- cious gra -- cious %|
  un -- to %|
  you. A __ _ _ %|
  men, A __ _ _ %|
  men, A __ _ _ %|
  men, A __ _ _ %|
  _ _ _ _ %|
  men, A __ _ men, A __ _ %|
  men, A __ _ men, A __ _ %|
  _ _ _ _ %|
  men, A -- %|
  men. %|
  mmm %|
}

% score for Bass - Guitar II part
\score {
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup{ "Bass   " }
    } <<
      \override Staff.NoteHead.color = #bass-pitch-range
      \new Voice = "lowerV" \with { \consists "Ambitus_engraver" } { \voiceOne \lowerVB }
      \new Lyrics \lyricsto "lowerV" { \lowerVlyrics }
    >>
    \new Staff \with {
      midiInstrument = "acoustic guitar (nylon)"
      instrumentName = \markup{ "Guitar II  " }
    } {
      \override Staff.NoteHead.color = #guitar-score-range
      \transposition c % guitar plays octave lower than written
      <<
        \new Voice = "lowerC" { \voiceOne \lowerC }
        \new Voice = "lowerD" { \voiceTwo \lowerD }
      >>
    }
  >>
  \layout { %\context { \Voice \consists "Ambitus_engraver" }
  }
  \midi {
    %\transposition c % guitar plays octave lower than written
  }
}

\pageBreak


% score for Soprano - Guitar I part
\score {
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup{ "Soprano" }
    } <<
      \override Staff.NoteHead.color = #soprano-pitch-range
      \new Voice = "upperVS" \with { \consists "Ambitus_engraver" } { \voiceOne \upperVS }
      \new Lyrics \lyricsto "upperVS" { \upperVlyrics }
    >>
    \new Staff \with {
      midiInstrument = "acoustic guitar (nylon)"
      instrumentName = \markup{ "Guitar I   " }
    } {
      \override Staff.NoteHead.color = #guitar-score-range
      \transposition c % guitar plays octave lower than written
      <<
        \new Voice = "upperA" { \voiceOne \upperA }
        \new Voice = "upperB" { \voiceTwo \upperB }
      >>
    }
  >>
  \layout { %\context { \Voice \consists "Ambitus_engraver" }
  }
  \midi {
  }
}

\pageBreak


% score for Alto - Guitar II part
\score {
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup{ "Alto   " }
    } <<
      \override Staff.NoteHead.color = #alto-pitch-range
      \new Voice = "lowerVA" \with { \consists "Ambitus_engraver" } { \voiceOne \lowerVA }
      \new Lyrics \lyricsto "lowerVA" { \lowerVlyrics }
    >>
    \new Staff \with {
      midiInstrument = "acoustic guitar (nylon)"
      instrumentName = \markup{ "Guitar II  " }
    } {
      \override Staff.NoteHead.color = #guitar-score-range
      \transposition c % guitar plays octave lower than written
      <<
        \new Voice = "lowerC" { \voiceOne \lowerC }
        \new Voice = "lowerD" { \voiceTwo \lowerD }
      >>
    }
  >>
  \layout { %\context { \Voice \consists "Ambitus_engraver" }
  }
  \midi {
  }
}

\pageBreak


% score for guitars to lead voices
\score {
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "acoustic grand"
      instrumentName = \markup{ "Lead I " }
    } <<
      \override Staff.NoteHead.color = #guitar-score-range
      \new Voice = "upperV" \with { \consists "Ambitus_engraver" } { \voiceOne \upperVG }
      \new Lyrics \lyricsto "upperV" { \upperVlyrics }
    >>
    \new Staff \with {
      midiInstrument = "acoustic grand"
      instrumentName = \markup{ "Lead II" }
    } <<
      \override Staff.NoteHead.color = #guitar-score-range
      \new Voice = "lowerV" \with { \consists "Ambitus_engraver" } { \voiceOne \lowerVG }
      \new Lyrics \lyricsto "lowerV" { \lowerVlyrics }
    >>
  >>
  \layout { %\context { \Voice \consists "Ambitus_engraver" }
  }
  \midi {
    \transposition c % guitar plays octave lower than written
  }
}

\pageBreak

% simple demo of automatic highlighting of out-of-range notes
% for different instruments/voices without modifying music code
bassnotes = {
  \cadenzaOn
  c,4^"C2"  d,  e,  f,  g,  a,  b,  \bar "|" % C2 octave
  \noBreak
  c^"C3"   d   e   f   g   a   b   \bar "|" % C3 octave
  \noBreak
  c'_"C4"  \bar "|." % C4 octave
}

treblenotes = {
  \cadenzaOn
  c'_"C4"  d'  e'  f'  g'  a'  b'  \bar "|" % C4 octave
  \noBreak
  c''_"C5" d'' e'' f'' g'' a'' b'' \bar "|" % C5 octave
  \noBreak
  c'''_"C6"   \bar "|." % C6 octave
}

%{
\score {
  \new ChoirStaff <<
    \new Staff \with {
      instrumentName = \markup{ "Guitar actual" }
    } {
      \override Staff.NoteHead.color = #guitar-pitch-range
      \clef "treble" \treblenotes
    }
    \new Staff \with {
      instrumentName = \markup{ "Guitar actual" }
    } {
      \override Staff.NoteHead.color = #guitar-pitch-range
      \clef "bass" \bassnotes
    }
  >>
  \layout { }
}

\score {
  \new ChoirStaff <<
    \new Staff \with {
      instrumentName = \markup{ "Soprano range" }
    } {
      \override Staff.NoteHead.color = #soprano-pitch-range
      \clef "treble" \treblenotes
    }
    \new Staff \with {
      instrumentName = \markup{ "Soprano range" }
    } {
      \override Staff.NoteHead.color = #soprano-pitch-range
      \clef "bass" \bassnotes
    }
  >>
  \layout { }
}

\score {
  \new ChoirStaff <<
    \new Staff \with {
      instrumentName = \markup{ "Alto range" }
    } {
      \override Staff.NoteHead.color = #alto-pitch-range
      \clef "treble" \treblenotes
    }
    \new Staff \with {
      instrumentName = \markup{ "Alto range" }
    } {
      \override Staff.NoteHead.color = #alto-pitch-range
      \clef "bass" \bassnotes
    }
  >>
  \layout { }
}

\score {
  \new ChoirStaff <<
    \new Staff \with {
      instrumentName = \markup{ "Tenor range" }
    } {
      \override Staff.NoteHead.color = #tenor-pitch-range
      \clef "treble" \treblenotes
    }
    \new Staff \with {
      instrumentName = \markup{ "Tenor range" }
    } {
      \override Staff.NoteHead.color = #tenor-pitch-range
      \clef "bass" \bassnotes
    }
  >>
  \layout { }
}

\score {
  \new ChoirStaff <<
    \new Staff \with {
      instrumentName = \markup{ "Bass range" }
    } {
      \override Staff.NoteHead.color = #bass-pitch-range
      \clef "treble" \treblenotes
    }
    \new Staff \with {
      instrumentName = \markup{ "Bass range" }
    } {
      \override Staff.NoteHead.color = #bass-pitch-range
      \clef "bass" \bassnotes
    }
  >>
  \layout { }
}
%}
