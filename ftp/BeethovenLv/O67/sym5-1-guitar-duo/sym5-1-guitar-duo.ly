\version "2.18.2"

% Acknowledgments:
% This arrangement for guitar duo has been adapted from Liszt's
% arrangement for piano solo, available from IMSLP as item 01056.
% Thanks to guitarist Dennis Burns for his review and suggestions.

\header {
 title = "Symphony No. 5 - Movement 1"
 subtitle = \markup { \smaller "Arranged for Guitar Duo" }
 piece = "Allegro con brio"
 opus = "Op. 67"
 composer = "Ludvig van Beethoven"
 arranger = "Arr: F. Liszt & J. J. Olson"
 style = "Classical"
 date = "1804-1808"
 source = "Leipzig: Breitkopf & Härtel, n.d.(1865). Plates 10668–10672"
 mytagline = ##f

 %            o_
 %       (\___\/_____/)
 %  ~ ~ ~ ~ ~ / ~ ~ ~ ~ ~ ~ ~
 maintainer = "Jeffrey Olson"
 maintainerEmail = "gmail's jjocanoe"
 license = "Public Domain"

 mutopiacomposer = "BeethovenLv"
 mutopiatitle = "Symphony No. 5 - Movement 1"
 mutopiadate = "1804-1808"
 mutopiasource = "Leipzig: Breitkopf & Härtel, n.d.(1865). Plates 10668–10672"
 mutopiainstrument = "2 Guitars"

 footer = "Mutopia-2017/10/31-2202"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white "ǀ" \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {"ǀ" "ǀ"}}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " "by " \maintainer " — " \footer}\concat {\concat {\abs-fontsize #8 { "Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "Public Domain" " by the typesetter " " — free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white "ǀ" }}}
 tagline = ##f
}

\paper{
  page-count = #14
  %#(set-paper-size "a4")      %uncomment to test specific paper size
  %#(set-paper-size "letter")  %uncomment to test specific paper size
  indent = \indent + 8\mm
  top-margin = 8\mm
  bottom-margin = 8\mm
  ragged-last-bottom = ##f
  print-first-page-number = ##f
  evenHeaderMarkup = \oddHeaderMarkup % so all page numbers to right
  oddFooterMarkup = \markup { \column {
      \fill-line { \on-the-fly #first-page \column { \vspace #1 \fromproperty #'header:copyright } }
      \fill-line { \on-the-fly #last-page \fromproperty #'header:mytagline }
    }
  }
  evenFooterMarkup = \oddFooterMarkup
}

% suppress local file system path in pdf
\pointAndClickOff


% pitch limits for standard clasical guitar
% absolute max and min attainable (b''' and d)
#(define max-pitch (ly:make-pitch 2 6 NATURAL) )
#(define min-pitch (ly:make-pitch -1 1 NATURAL) )
% comfortably attainable hi and lo (e''' and e)
#(define hi-pitch (ly:make-pitch 2 2 NATURAL) )
#(define lo-pitch (ly:make-pitch -1 2 NATURAL) )

% function to color notes that are near or out of range
#(define (color-pitch-range grob)
  (let ((pitch (ly:event-property (event-cause grob) 'pitch) ))
    (if pitch
      (if (ly:pitch<? max-pitch pitch) (x11-color 'red)
        (if (ly:pitch<? pitch min-pitch) (x11-color 'blue)
          (if (ly:pitch<? hi-pitch pitch) (x11-color 'orange)
            (if (ly:pitch<? pitch lo-pitch) (x11-color 'green)
) ) ) ) ) ) )

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
pXV   = ^\markup { "XV" }
pXVI  = ^\markup { "XVI" }
pETC  = ^\markup { "..." }
pZ    = ^\markup { "Z" }

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
bpXIV  = ^\markup { "b_XIV" }

% left hand fingering locations
fingerLeft   = \set fingeringOrientations = #'(left)
fingerRight  = \set fingeringOrientations = #'(right)
fingerUp     = \set fingeringOrientations = #'(up)
fingerDown   = \set fingeringOrientations = #'(down)
fingerUpDown = \set fingeringOrientations = #'(up down)
fingerStaff  = \override Fingering.staff-padding = #'()
fingerRevert = \revert Fingering.staff-padding

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

% tuplets
hideTupletNumber = \override TupletNumber.stencil = ##f
unhideTupletNumber = \revert TupletNumber.stencil
hideTupletBracket = \override TupletBracket.bracket-visibility = ##f
unhideTupletBracket = \revert TupletBracket.bracket-visibility

% stems
longStem = \override Stem.details.beamed-lengths = #'(5)
shortStem = \override Stem.details.beamed-lengths = #'(3)
revertStemLength = \revert Stem.details.beamed-lengths

% let ring (laissez vibrer ties)
lv = \laissezVibrer
lvDown = \override LaissezVibrerTie.direction = #DOWN
lvExtent = #(define-music-function (parser location further) (number?) #{
     % from lilypond-user Nick Payne
     \override LaissezVibrerTie.X-extent = #'(0 . 0)
     \override LaissezVibrerTie.details.note-head-gap = #(/ further -2)
     \override LaissezVibrerTie.extra-offset = #(cons (/ further 2) 0)
#})

% standard rehearsal marks
markBox = \set Score.markFormatter = #format-mark-box-alphabet
mrk = \mark \default


global = {
  \key d \minor
  \numericTimeSignature
  \time 2/4
  \markBox
  \fingerLeft
  \fingerStaff
  \stringRight
}

upperInstrument = \markup{ \center-column{ "Guitar I   " \line \smaller {\circle 6 "= E"} } }
rightOne = \transpose c c' {
  % within this body, c will show as middle C on a guitar staff
  \global
  b8\rest\ff <a-1>\pII[ <a> <a>] | %1
  <f-2>2\fermata | %2
  b8\rest <g-4>[ <g> <g>] | %3
  <e-1>2~ | %4
  <e>2\fermata | %5
  b8\rest <a-2>\pI\p[ a a] | %6
  <f-3>2 %7
  f'8\rest <f'-1>[ f' f'] | %8
  <d'-4>2~ | %9
  d'8 a[ a a] | %10
  <e-1>2\pII %11
  f'8\rest <g'-4>[ g' g'] | %12
  <e'-0>2~ | %13
  e'8 a'\bpV[ a' <g'-4>] | %14
  <f'-2>2( | %15
  <e'-1>8)[ a' a' g'] | %16
  <f'-3>2( | %17
  <e'-3>8\pIII) <a'-4 e'>[ <a' e'> <g'-1 e'>] | %18
  <f'-1 d'-3>4\pI\f b\rest | %19
  <d' gis-1>4 b\rest | %20
  <a'-4>2\bpII\fermata | %21
  b8\rest <bes-2>8\pII\ff[ <bes> <bes>] | %22
  <g-4>2~ | %23
  <g>2\fermata | %24

  \mrk
  b8\rest <bes-4>8\pI\p[ bes bes] | %25
  <g-0>2~ | %26
  g2~ | %27
  g2( | %28
  f8) <bes-4>[ bes bes] | %29
  <g-0>2~ | %30
  g2~ | %31
  g2( | %32
  <f-2>8) <a-1 f>\bpII[ <d' a f> <d' a f>] | %33
  \tieDown
  <d' bes-2 e-1>2~( | %34
  <cis' bes e>8) <cis'-1 bes-2 g-4>\pII[ <e'-0 bes g> <e' bes g>] | %35
  <e'-0 a-1 f-2>2~( | %36

  \mrk
  <d'-3 a f>8)[ <d' a f> <d' a f> <f'-4>\pIII] | %37
  <f'-4>8\bpIII([ <e'-3>) <e' bes g> <g'-1>] | %38
  <g'-4>8\bpV([ <fis'-3>) <fis' c' a> <a'-1>] | %39
  <a'-3>8\bpIII([ <g'-1>) <g' d' bes> <bes'-4>] | %40
  <bes'-2>8\bpV([ <a'-1>) <a'fis' c'> <c''-4>] | %41
  <c''-4>8\pVI([ <bes'-1>) <bes' g' d'> <d''-2>\pIX] | %42
  <d''-2>\bpIX([ <cis''-1>) <cis'' bes' e'> \fingerRight <e''-4>] \fingerLeft | %43
  <d''-1 a'-1 f'-1>8\bpX\f <f''-1 d''-3 a'-2>[ <f'' d'' a'>\pXIII\rfz <f'' d'' a'>] | %44
  <d''-1 a'-1 f'-1>8\bpX <a'-1 f'-2 d'-4>[ <a' f' d'>\pV <a' f' d'>] | %45
  <f'-2 d'-4 a-3>8 <d'-3 a-1 f-2>\pII[ <a f d-4> <a f d>] | %46
  <f d>8 <d-4 a,-3>\pIII[ <d a,> <d a,>] | %47
  <cis-2 g,-1>8 <g''-4 cis''-2 a'-3>\pXII\rfz[ <e''-1 cis'' a'> <e'' cis'' a'>] | %48
  <cis'' a'>8 <a'-1 e'-1 cis'-4>\bpV[ <g'-1 e'-3 cis'>\pIII <g' e'cis'>] | %49
  <e' cis'>8 <cis'-3 g-0 e-1>\pII[ <a-2 e> <g-0 e cis-4>] | %50
  <e cis>8 <cis>[ <d-4>\pIII <d>] | %51
  <d-4 aes,-2>8\ff <f''-4 aes'-1 f'-2>\pIX\rfz[ <f'' aes' f'> <f'' aes' f'>] | %52
  <d''-1 f'-1 d'-3>8\bpX <b'-1 d'-1 b-3>[ <b' d' b>\bpVII <b' d' b>] | %53
  <aes'-1 b-1 aes-3>8\bpIV <f'-1 aes-1 f-3>[ <f' aes f>\bpI <f' aes f>] | %54
  <d'-1 f-1 d-3>8\bpIII <b-0 aes-1 f-3 b,-2>[ <b aes f b,>\pI <b aes f b,>] | %55
  <b aes f b,>4\sf b\rest | %56
  R2 | %57
  <c'-1 g c-3>4\sf b\rest | %58

  \mrk
  b8\rest <c'-4>\pIII\ff[ c' c'] | %59
  <f-1>2 | %60
  <g-4>2 | %61
  <c-3>2\pI | %62
  <c'-1>4\bpI\p( <f'-1> | %63
  <e'-3>4\pIII <f'-4> | %64
  <g'-4>4\pII <d'-3>) | %65
  <d'-4>4\pI( <c'-1>) | %66
  c'4( f' | %67
  e'4 f' | %68
  g'4 d') | %69
  d'4( c') | %70
  <c''-4\1 c'-1\3>4\pV( <f'' f'>\pX | %71
  <e'' e'>4\pIX <f'' f'>\pX | %72
  <g'' g'>4\pXII <d'' d'>\pVII | %73
  <d'' d'>4 <c'' c'>\pV) | %74
  <c'-1>4\pI( <d'-4> | %75
  <ees'-4>4\pII <d'-2>) | %76
  <c'-1>4\pI( <d'-3> | %77
  <c'-1>4 <bes-4>) | %78
  <ees'-2>4\pIII( <f'-4> | %79
  <g'-4>4\bpI <f'-1>) | %80
  <ees'-1>4\pIV( <f'-3> | %81
  <ees'-2>4\bpIII <d'-1>) | %82
  <f'-4\2 f-1\4>4\pIII( <g' g>\pV | %83
  <aes' aes>4\pVI <g' g>\pV | %84
  <f' f>4 <g' g>) | %85
  <aes' aes>4( <g' g> | %86
  <f' f> <g' g>) | %87
  <aes' aes>4( <g' g> | %88
  <f' f>4 <g' g> | %89
  <aes' aes>4 <g' g> | %90
  <f' f>4 <g' g> | %91

  % ossia
  %<aes' aes>4 <g'-1 f'-4 b-2 g-3>\pIII | %92
  %<aes'-1 f'-4 b-1 aes-3>4\bpIV <b'-1 aes'-4 f'-3 b-2>\pVII) | %93
  %
  %\mrk
  %<c''-1 bes'!-3 g'-4 c'-2>2\pVIII\ff~ | %94
  %<c'' bes' g' c'>8[ <d''-1\1 d'-3\4>\pX <c'' c'>\pETC <bes' bes>] | %95

  <aes' aes>4 <g'-1 d'-1 b-2 f-1>\bpIII | %92
  <aes'-3 d'-1 b-2 f-1>4 <b'-3 f'-1 d'-2 aes-1>\bpVI) | %93

  \mrk
  <c''-1 g'-1 e'-2 bes-1>2\bpVIII\ff~ | %94
  <c'' g' e' bes>8[ <d''-1\1 d'-3\4>\pX <c'' c'>\pETC <bes' bes>] | %95
  <bes' bes>8([ <a' a>) <g' g> <f' f>\pETC] | %96
  <f'-1 c'-1 bes-4 f-3>8\pI([ <e' e-2>) <d'-4 d> <e' e>] | %97
  <g'-4 g>8\bpI([ <f'-1 f-3>) <c'-1> <a-2>] | %98
  <e' e-2>8([ <d'-4 d>) <bes-3> g] | %99
  <d'-4 d>8([ <c'-1 c-3>) <a-2> <f-4>] | %100
  b8\rest <b'-1\1 b-3\4>\pVII([ <c'' c'> <b' b>\pETC] | %101
  <c''-1 bes'-2 g'-4 c'-3>8\ff[ <b' b> <c'' bes' g' c'> <b' b>]) | %102
  <c'' c'>8[ <d'' d'> <c'' c'> <bes'! bes!>] | %103
  <bes' bes>8([ <a' a>) <g' g> <f' f>\pETC] | %104
  <f' f>8\pI([ <e' e-2>) <d'-4 d> <e' e>] | %105
  <g' g>8\bpI([ <f' f>)] c'[ a] | %106
  e'8\pI([ d') bes g] | %107
  d'8([ c') a f] | %108
  b8\rest <c'' e' c'>\pVIII[ <c'' e' c'> <c'' e' c'>] | %109

  \mrk
  r8 <a''-4\1 a'-1\3>\pXIV\ff[ <a'' a'> <a'' a'>] | %110
  <f'' f'>8\pX <c''-4\2 c'-1\4>[ <c'' c'> <c'' c'>] | %111
  <a' a>8\pVII <f'-4\3 f-1\5>[ <f' f>\pVIII <f' f>] | %112
  r8 <g'-1 e'-2 g-3>[ <g' e' g> <g' e' g>] | %113
  r8 <a''\1 a'\3>[ <a'' a'> <a'' a'>] | %114
  <f'' f'>8\pX <c''\2 c'\4>[ <c'' c'> <c'' c'>] | %115
  <a' a>8\pVII <f'\3 f\5>[ <f' f>\pVIII <f' f>] | %116
  r8 <c''-1 g'-1 e'-2>\bpVIII[ <c'' g' e'> <c'' g' e'>] | %117
  <c'' a'-4 f'-3>4 b\rest | %118
  r8 <c'' g' e'>[ <c'' g' e'> <c'' g' e'>] | %119
  <c'' a' f'>4 b\rest | %120
  r8 <e''-1 c''-2 g'-1 e'-3>\bpXII[ <e'' c'' g' e'> <e'' c'' g' e'>] | %121
  <f''-1 c''-1 a'-2 f'-3>4\bpXIII b\rest | %122
  R2 | %123
  R2 \bar ":|." %124

  \mrk
  b8\rest <c'-1 c-3>\pI\ff[ <c' c> <c' c>] | %125
  <a-2 a,-0>2~ | %126
  <a a,>2~ | %127
  <a a,>2\fermata | %128
  s2 | %129
  r8 <ees'-2>[ ees' ees'] | %130
  r8 <bes'-4>[ bes' bes'] | %131
  <g'-1>2~ | %132
  g'4 s | %133
  r8 <ees'-2>[ ees' ees'] | %134
  r8 <c''-2>[ c'' c''] | %135
  <a'-4>2~ | %136
  a'8[ <d''-4>\pVIII d'' <c''-1>] | %137
  <bes'-4>2 | %138
  <a'-3>8[ d'' d'' c''] | %139
  bes'2 | %140
  a'8[ <d''-4>\pVII d'' <c''-3>] | %141
  <bes'-2>8\pV[ bes' bes' <a'-1>] | %142
  <g'-4>8[ g' g' <f'-2>] | %143
  <e'-1>8[ e' e' <d'-3>] | %144
  <cis'-2>2\p | %145
  b8\rest <f'-2>[ f' <g'-4>] | %146
  s2 | %147
  b8\rest f'[ f' g'] | %148
  s2 * 4 | %149-152
  <e'' e'>8\bpIX <e''-4 gis'-1 e'-1>[ <e'' gis' e'> <d''-2 b'-4 e'>] | %153
  <c''-2 a'-4 e'-3>2\pVII | %154
  <b'-1 gis'-4 e'-3>8 <e'' gis' e'>\bpIX[ <e'' gis' e'> <d'' b' e'>] | %155
  <c'' a' e'>2\pVII | %156

  \mrk
  <b'-1 gis'-4 e'-3>2\pp | %157
  <c''-2 a'-4 e'-3>8 s4. | %158
  r8 \fingerDown <a'-4>[ <b'-1> <c''-2>] \fingerLeft | %159
  <d''-4 gis'-3 d'-1>4 s | %160
  r8 \fingerDown <gis'-3>[ <b'-1> <c''-2>] \fingerLeft | %161
  <d''-4 gis' d'>4 s | %162
  r8 \fingerDown <b'-1>[ <c''-2> <d''-2>]\pIX \fingerLeft | %163
  <e''-4 a'-2 e'-1>4 s | %164
  r8 <a'-3>[ <c''-1> <d''-3>] | %165
  <e'' a' e'>4\pIX s | %166
  s2 * 13 | %167-179

  \mrk
  s8 e''[ e'' e''] | %180
  <a'-4>2\pII | %181
  <b'-4>2\pIV | %182
  <e'-0 e-2>2\pI | %183
  s2 * 7 | %184-190
  <a'-1 a-3>2\bpV | %191
  s2 * 5 | %192-196

  s2 * 32 | %197-228

  s2 * 12 | %229-240
  <e bes,>8 b\rest b4\rest | %241
  s2 * 8 | %242-249
  <a-1 f-2 a,-0>2\fermata | %250
  s2 | %251
  <a e a,>2~\bpII | %252
  <a e a,>2\fermata | %253

  \mrk
  g8\rest <a-2>\pI\p[ a a] | %254
  e'8\rest <bes-4>[ bes bes] | %255
  <a-2>8 <f'-1>[ f' f'] | %256
  <d'-4>4 r | %257
  g8\rest <a-2>[ a a] | %258
  e'8\rest <bes-4>[ bes bes] | %259
  <a-2>8 <g'-4>[ g' g'] | %260
  <e'-0>2~ | %261
  e'8 <a'-1>\BpV[ a' <g'-4>] | %262
  <f'-2>2 | %263
  <e'-1>8[ <a'-1> a' <g'-4>] | %264
  <f'-2>2 | %265
  e'8 <a'-1>[ a' <g'-2>\pVII] | %266
  s2 | %267
  <d'-4 gis-2 d-1>4 r | %268
  \set Timing.timing = ##f
  a''2\pXIV\fermata
  \ottava #1
  \grace { g''4 f'' e''2 f''16[ e'' d'' e''] g''4 f'' e''\fermata }
  \ottava #0
  \set Timing.timing = ##t s2 | %269

  \mrk
  b8\rest <bes-4>8\pI\p[ bes bes] | %270
  <g-0>2~ | %271
  g2~ | %272
  g2( | %273
  f8) <bes-4>[ bes bes] | %274
  <g-0>2~ | %275
  g2~ | %276
  g8 <cis'-3 g-0 e-2>\pI[ <cis' g e> <cis' g e>] | %277
  <d'-3 a-1 f-2>8\pII <a-1 f>[ <d' a f> <d' a f>] | %278
  \tieDown
  <d' bes-2 e-1>2\pII~( | %279
  <cis' bes e>8) <cis'-1 bes-2 g-4>[ <cis' bes g> <e'-0 bes g>] | %280
  <e'-0 a-1 f-2>2~( | %281

  \mrk
  <d'-3 a f>8)[ <d' a f> <d' a f> <f'-4>\pIII] | %282
  <f'-4>8\bpIII([ <e'-3>) <e' bes g> <g'-1>] | %283
  <g'-4>8\bpV([ <fis'-3>) <fis' c' a> <a'-1>] | %284
  <a'-3>8\bpIII([ <g'-1>) <g' d' bes> <bes'-4>] | %285
  <bes'-2>8\bpV([ <a'-1>) <a'fis' c'> <c''-4>] | %286
  <c''-4>8\pVI([ <bes'-1>) <bes' g' d'> <d''-2>\pIX] | %287
  <d''-2>\bpIX([ <cis''-1>) <cis'' bes' e'> <e''-4>] | %288
  <d''-1 a'-1 f'-1>8\bpX\ff <f''-1 d''-3 a'-2>[ <f'' d'' a'>\pXIII\rfz <f'' d'' a'>] | %289
  <d''-1 a'-1 f'-1>8\bpX <a'-1 f'-2 d'-4>[ <a' f' d'>\pV <a' f' d'>] | %290
  <f'-2 d'-4 a-3>8 <d'-3 a-1 f-2>\pII[ <a f d-4> <a f d>] | %291
  <f d>8 <d-4 a,-3>\pIII[ <d a,> <d a,>] | %292
  <cis-2 g,-1>8\sf <g''-4 cis''-2 a'-3>\pXII\rfz[ <e''-1 cis'' a'> <e'' cis'' a'>] | %293
  <cis'' a'>8 <a'-1 e'-1 cis'-4>\bpV[ <g'-1 e'-3 cis'>\pIII <g' e'cis'>] | %294
  <e' cis'>8 <cis'-3 g-0 e-1>\pII[ <a-2 e> <g-0 e cis-4>] | %295
  <e cis>8 <cis>[ <d-4>\pIII <d>] | %296
  <d-4 aes,-2>8\ff <f''-4\1 f'-1\3>\pX[ <f'' f'> <f'' f'>] | %297
  <d''-4 d'-1>8\pVII <b'-1\1 b-3\4>[ <b' b> <b' b>] | %298
  <gis'-1 gis-3>8\pIV <f'-1\2 f-3\5>\pVI[ <f' f> <f' f>] | %299
  <d'-1 d-3>8\pIII <b-0 b,-2>\pI[ <b b,> <b b,>] | %300
  <gis-1 f-4 b,-2>4\sf b\rest | %301
  <a-3 e-2 a,-0>4\sf b\rest | %302

  \mrk
  b8\rest <a-4>\pV[\ff a a] | %303
  <d-1>2 | %304
  <e-4>2 | %305
  R2 | %306
  <a-1>4\pVII <d'-2> | %307
  <cis'-2>4\pV <d'-4> | %308
  <e'-4>4\pIV <b-2> | %309
  <b-2>4\pII <a-1> | %310
  <a'-1>4\bpX <d''-1> | %311
  <cis''-3>4\pVIII <d''-4> | %312
  <e''-4>4\pXI <b'-3> | %313
  <b'-4>4\pV <a'-1> | %314
  <a>4\pVII <d'> | %315
  <cis'>4\pV <d'> | %316
  e'4\pIV b | %317
  b4\pII a | %318
  a'4\bpX d'' | %319
  cis''4\pVIII d'' | %320
  e''4\pXI b' | %321
  b'4\pV a' | %322
  <c'!-1>4\pI( <d'-4> | %323
  <ees'-4>4\pII <d'-2>) | %324
  <c'-1>4\pI( <d'-3> | %325
  <c'-1>4\pI <b-0>) | %326
  <d'-1>4\pIII( <e'-4> | %327
  <f'-4>4\pIV <e'-2>) | %328
  <d'-1>4\pIII( <e'-3> | %329
  <d'-2>4\bpII <cis'-1>) | %330
  s2 * 15 | %331-345


  \mrk
  s2 * 7 | %346-352
  s8 <gis'-1\1 gis-3\4>[\pIV <a' a>\pETC <gis' gis>] | %353
  <a' g'-4 a>8[ <gis' gis> <a' a> <gis' gis>] | %354
  <a' a>8[ <b' b> <a' a> <g' g>] | %355
  <g' g>8[( <fis' fis>) <e'-2\2 e-4\5>\pV <d' d>]\pETC | %356
  <d' d>8[( <cis' cis>) <b-0 b,-1> <cis' cis>] | %357
  <e' e>8[( <d'-2 d-4>) <a-1> <fis-3>] | %358
  <cis' cis>8[( <b-0 b,-1>)\pII <g-0> <e-2>] | %359
  <b b,>8[( <a-2 a,-0>) <fis-4> <d-0>] | %360
  b8\rest <a'-4 cis'-1 a-1>\bpII[ <a' cis' a> <a' cis' a>] | %361

  \mrk
  r8 <fis''-1\1 fis'-3\4>[\pXIV <fis'' fis'>\pETC <fis'' fis'>] | %362
  <d'' d'>8 <a' a>[ <a' a> <a' a>] | %363
  <fis'-1 fis-4>8\pII <d'-3 d-0>[ <d' d> <d' d>] | %364
  <a-2>2 | %365
  <fis'-1 d'-2 a-1 fis-3>2 | %366
  s2 * 2 | %367-368
  <a'-1\1 a-3\4>2\pV | %369
  s2 * 4 | %370-373

  \mrk
  s8 <d'>[ d' d'] | %374
  <d'>8 s4. | %375
  s8 <d'>[ d' d'] | %376
  <d'>8 s4. | %377
  s8 <d'>[ d' d'] | %378
  <d'>8 s4. | %379
  s8 <d'>[ d' d'] | %380
  <d'>8 s4. | %381
  s2 * 5 | %382-386
  R2 * 3 | %387-389

  \mrk
  s2 | %390
  s2 * 7 | %391-397
  R2 * 2 | %398-399

  \mrk
  <cis'-1\2 cis-3\5>8[\pII <d' d>\pETC <e' e> <f' f>] | %400
  <g'-1\1 g-3\4>8[ <a' a>\pETC <bes' bes> <a' a>] | %401
  <bes' bes>8[ <a'-1>\pV <bes'-2> a'] | %402
  R2 | %403
  s2 * 11 | %404-414
  <g-3\5>8\pVIII <a'-4\2> <f-1> a' | %415
  <e-1>8\pVII a' <f-1> a' | %416
  g8 a' f a' | %417
  g8 a' <d'-1>\bpVII a' | %418
  <d'-1>8[ <bes'-4> <a'-4> <d''-4>] | %419
  <bes'-1\1>8[\pVI <d''-4> <g'-3\2> <cis''-4>] | %420
  <g'-2>8[\pVII <d''-4> <g'-3>\pVI <cis''>] | %421
  <g'-2>8[\pVII d'' <a'-2>\pIX <e''-4>] | %422

  \mrk
  \slurUp
  <f'-1 d'-2 f-3>4(\pVI <d' d-0>) | %423
  <e'-1 e-3>4_.\pV <f'-1 f-3>_.\pVI | %424
  <d'-3>2 | %425
  <f'-2 d'-3 f-4>4_.\pV <g'-4 d'-3 g-1>_. | %426
  <d'-3>2 | %427
  s2 | %428
  <d'-3>2 | %429
  s2 | %430
  <cis''-1 cis'-3>4(\bpIX <a'-2 a-4>) | %431
  s2 * 3 | %432-434
  s4 <e'-1 e-3>^.\pV | %435
  <f'-1 d'-2 bes-4 f-3>4^.\pVI s | %436
  s2 | %437
  s4 a^. | %438

  \mrk
  s2 | %439
  s2 | %440
  s2 | %441
  <f-1\5>4^.\pVIII <g-3>^. | %442
  <a-4>4(^^ <f-1>) | %443
  s2 | %444
  s2 | %445
  <cis'-1\4>4^.\pXI <d'-2>^. | %446
  <e'-4>4(^^ <cis'-1>) | %447
  s2 | %448
  s2 | %449
  <cis'\4>4^.\pXI <d'>^. | %450
  <e'>4^^( <cis'>) | %451
  s2 | %452
  s2 | %453
  s2 * 2 | %454-455
  <bes-1\3 g-4 d-3>4^^\pIII( <a-1 f-2 d-3>) | %456
  s2 * 3 | %457-459
  s2 | %460
  <f'-1 f-3>4\pI( <e'-0 c'-1> | %461
  <d'-4 d-0>4 <c'-1 a-2> | %462
  <bes-4 bes,-1>4 <a-2 f-3>) | %463
  <d'-3>2 | %464
  <bes-1 g-4>4^^\pIII( <a-1 f-2>\pII) | %465
  s2 * 3 | %466-468

  \mrk
  s2 | %469
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TOP UP
  r8 <a' e'-1 cis'-2 a>[ <a' e' cis' a> <a' e' cis' a>] | %470
  s2 | %471
  <e'-1 cis'-2>4\pV <f' d'>\pETC | %472
  <g' e'>4 <e' cis'> | %473
  <f' d'>4 <g' e'> | %474
  r8 a,[ a, a,] | %475
  a,8 s4. | %476
  s2 * 2 | %477-478
  s2 | %479
  s2 | %480
  s2 | %481
  s2 | %482

  \mrk
  b8\rest <a-2>\pVI\pp[ a a] | %483
  e'8\rest <bes-4>[ bes bes] | %484
  e'8\rest <f'-1>[ f' f'] | %485
  << { <d'-3>2~\> | <a'-1 d'>4\! s | } \\
     \\ { cis''4\rest <bes'-1>( | s4) s | } >> %486-487
  e'8\rest bes[ bes bes] | %488
  e'8\rest f'[ f' f'] | %489
  << { d'2 | \stemDown a'8 \stemUp s4. | } \\
     \\ { cis''4\rest bes'( | s4) s | } >> %490-491
  s2 * 9 | %492-500
  <cis'-1 a-1 e-1 cis-4>4\arpeggio\bpII b\rest | %501
  <d'-3 a f-2>4\arpeggio b\rest | %502

  \bar "|."
}

rightTwo = \transpose c c' {
  % within this body, c will show as middle C on a guitar staff
  \global
%%{
  s2 * 6 | %1-6
  <f>2~ | %7
  <f>2~ | %8
  <f>2~ | %9
  <f>2 | %10
  <e>2~ | %11
  <e>2~ | %12
  <e>2~ | %13
  <e>2 | %14
  s2 * 6 | %15-20
  <cis' a>4 b\rest_\fermata | %21
  s2 * 3 | %22-24

  s2 * 2 | %25-26
  r8 <bes,-1>[ bes, bes,] | %27
  <a,-0>2( | %28
  <d>8) s4. | %29
  s2 | %30
  r8 <bes,-1>[ bes, bes,] | %31
  <a,-0>2( | %32
  <d-4>8) s4. | %33
  s2 * 3 | %34-36

  s2 | %37
  <bes-1 g-2>4\sf s | %38
  <c'-1 a-2>4\sf s | %39
  <d'-1 bes-1>4\sf s | %40
  <fis'-3 c'-1>4\sf s | %41
  <g'-3 d'-2>4\sf s | %42
  <bes'-3 e'-1>4\sf s | %43
  s2 * 15 | %44-58

  s2 * 4 | %59-62
  <a-2 f-4>2( | %63
  <bes-1 g-2>2) | %64
  <bes-2 e-1>2( | %65
  <a-2 f-3>2) | %66
  <a f>2( | %67
  <bes g>2) | %68
  <bes e>2( | %69
  <a f>2) | %70
  s2 * 4 | %71-74
  <a-2 f-3>2 | %75
  <a-1 fis-3>2 | %76
  <a-2 fis-4>2 | %77
  <g-0 d-0>2 | %78
  <bes-1 g-3>2 | %79
  <c'-1 a-2>2 | %80
  <c'-2 a-4>2 | %81
  <bes-1 f-1>2 | %82
  s2 * 19 | %83-101
  s2 | %<bes' g'>2 | %102
  s2 * 3 | %103-105
  s4 f | %106
  e4 d | %107
  d4 c | %108
  s2 | %109
  s2 | %<f' c' a f>2 | %110
  s2 * 2 | %111-112
  <c'-4>2 | %113
  <a'-1>8\pXIV s4. | %<a' f' c' a>2 | %114
  s2 * 2 | %115-116
  <c'-3>2 | %117
  s2 * 7 | %118-124

  s2 * 4 | %125-128
  b8\rest <d'-1>\bpIII\p[ d' d'] | %129
  \tieDown <bes-1>2~ \tieUp | %130
  <d' bes>2~ | %131
  <d' bes>2~ | %132
  <d' bes>8 <d'-1>\bpVII[ d' d'] | %133
  \tieDown <a-1>2~ \tieUp | %134
  <d' a>2~ | %135
  <d' a>2~ | %136
  <d' a>2 | %137
  s2 * 8 | %138-145
  s8 <d'-3> d'4 | %146
  <a'-1 cis'-2 a-3>2 | %147
  s8 d' d'4 | %148
  <a' e' cis' a>2\bpV | %149
  \slurUp
  <a'-1 f'-2 d'-4 a-3>2\pV( | %150
  <b'-4\1 b-1\3>4\pIV <c'' c'>\pV | %151
  <d'' d'>\pVII <dis'' dis'>\pVIII) | %152
  \slurDown
  e,2 | %153
  a,2 | %154
  e,2 | %155
  a,2 | %156
  e,2 | %157
  << \\ {s8 <a-1>[ a <b-2>]} \\ \\ {a,2} >> | %158
  <c'-3>4 s | %159
  e8\rest <gis-1>\pVI[ <b-3>\pVII <c'-4>] | %160
  <d'-1>4\bpVII g\rest | %161
  e8\rest gis\pVI[ b\pVII c'] | %162
  <d'-1>4\bpVII g\rest | %163
  e8\rest <a-1>\pVII[ <c'-3> <d'-1>] | %164
  <e'-2>4\pVIII b\rest | %165
  g8\rest a\pVII[ c' d'] | %166
  e'8 <c''-1 a'-4 c'-3>\pVIII[ <d'' b' d'> < e'' c''-2 e'>\pETC] | %167
  %ossia
  %<f''-3 b'-1 gis'-2 f'-4>8\pXII\f <f'' b' gis' f'>[ <f'' b' gis' f'> <f'' b' gis' f'>] | %168
  <f''-4 b'-2 gis'-3 d'-1>8\pXII\f <f'' b' gis' d'>[ <f'' b' gis' d'> <f'' b' gis' d'>] | %168
  <f'' b' gis' d'>8[ <f'' b' gis' d'> <f'' b' gis' d'> <f'' b' gis' d'>] | %169
  <f'' b' gis' d'>8[ <f'' b' gis' d'> <f'' b' gis' d'> <f'' b' gis' d'>] | %170
  <f'' b' gis' d'>4 b\rest | %171
  %ossia
  %b8\rest <fis''-3 c''-1 a'-2 fis'-4>\pXIII[ <fis'' c'' a' fis'> <fis'' c'' a' fis'>] | %172
  b8\rest <fis''-4 c''-2 a'-3 dis'-1>\pXIII[ <fis'' c'' a' dis'> <fis'' c'' a' dis'>] | %172
  <fis'' c'' a' dis'>8[ <fis'' c'' a' dis'> <fis'' c'' a' dis'> <fis'' c'' a' dis'>] | %173
  <fis'' c'' a' dis'>8[ <fis'' c'' a' dis'> <fis'' c'' a' dis'> <fis'' c'' a' dis'>] | %174
  <fis'' c'' a' dis'>4 b\rest | %175
  b8\rest <e''-1 c''-2 a'-4 e'-3>\pXII[ <e'' c'' a' e'> <e'' c'' a' e'>] | %176
  <e'' c'' a' e'>4 b\rest | %177
  b4\rest <dis''-1 c''-3 a'-4 dis'-2>8\pXI[ <dis'' c'' a' dis'>] | %178
  <dis'' c'' a' dis'>4 <e''-4 b'-4 e'-1>8\pIX[ <e'' b' e'>] | %179
  <e'' b' e'>8\ff e'[ e' e'] | %180
  <a-1>2 | %181
  <b-1>2 | %182
  r4 <gis-1 e>8[ <gis e>] | %183
  <gis e>4 <b gis e>8[ <b gis e>] | %184
  <b gis e>4 <d'-4 gis e>8[ <d' gis e>] | %185
  <e' d' gis e>4 <gis'-4 gis-1>8[ <gis' gis>] | %186
  <b'-4 b-1>4\pIV <e''-4 gis'-1 e'-1>8\bpIX[ <e'' gis' e'>] | %187
  <cis''-1 a'-2 cis'-3>8\pIX <a''-4 a'-1>\pXIV[ <a'' a'> <a'' a'>] | %188
  <d''-4 d'-1>2\pVII | %189
  <e''-4 e'-1>2\pIX | %190
  c4\rest <cis'-2 a>8[ <cis' a>] | %191
  <cis' a>4 <e'-1 cis' a>8[ <e' cis' a>] | %192
  <e' cis' a>4 <a'-1 cis' a>8[ <a' cis' a>] | %193
  <a' cis' a>4 <cis''-1 a'-2 e'-1>8\bpIX[ <cis'' a' e'>] | %194
  <e''-4 a' e'>4 <a''-4 cis''-1 a'-1>8\bpXIV[ <a'' cis'' a'>] | %195

  \mrk
  <fis''-1\1 d''-2 fis'-3\4>8\ff <d''-1 d'-3>8\pX[ <d'' d'> <d'' d'>] | %196
  <g'-1 g-3>2\pIII | %197
  <a'-1 a-3>2\pV | %198
  R2 *2 | %199-200
  <g'-4 d'-3 bes-2 bes,-1>2\pI | %201
  <a'-4 ees'-2 c'-3 c-1>2\pIII | %202
  R2 * 2 | %203-204
  <g'-4 d'-3 bes-2 bes,-1>2\pI | %205
  <aes'-3 ees'-2 aes-4 c-1>2\pIII | %206
  R2 * 2 | %207-208
  <b'-4 f'-2 d'-3 d-1>2\pV | %209
  <c''-4 g'-4 ees'-4 ees-1>2\pVI | %210
  R2 | %211
  <des'' aes' f' des'>2 | %212
  R2 | %213
  <ees'' bes' g' ees'> | %214
  R2 | %215
  <ees''-1 ces''-2 aes'-4 ees'-3>2\pXI\p | %216
  R2 | %217
  <ees'' ces'' aes' ees'>2 | %218
  R2 | %219
  <ees'' ces'' aes' ees'>2 | %220
  R2 | %221
  <e''-1 b'-1 gis'-2 e'-3>2\pXII\pp | %222
  R2 | %223
  <e'' b' gis' e'>2 | %224
  R2 | %225
  <e'' b' gis' e'>2 | %226
  R2 | %227
  <e'' b' gis' e'>2 | %228

  \mrk
  s8 <e''-1 e'-3>\pXII\ff[ <e'' e'> <e'' e'>] | %229
  <e''-1 cis''-4 e'-3>2 | %230
  <e''-1 d''-4 e'-3>2 | %231
  <e''-2 b'-1 e'-4>2~ | %232
  <e'' b' e'>2 | %233
  <e''-4 bes'!-3 e'-1 des'-2>2\pIX\pp | %234
  R2 | %235
  <e'' bes' e' des'>2 | %236
  R2 | %237
  <e'' bes' e' des'>2 | %238
  R2 | %239
  <e'' bes' e' des'>2 | %240
  s2 | %241
  b8\rest <bes'-4 bes-1>\bpVIII\ff[ <bes' bes> <bes' bes>] | %242
  <g'-1 g-3>2~ | %243
  <g' g>8 <bes''-4 bes'-1>\pXV[ <bes'' bes'> <bes'' bes'>]  | %244
  <g''-4 g'-1>2\pXII~ | %245
  <g'' g'>8 <bes' bes>\bpVIII[ <bes' bes> <bes' bes>] | %246
  <g' g>8 <bes'' bes'>\pXV[ <bes'' bes'> <bes'' bes'>]  | %247
  <g'' g'>8\pXII <bes'-4 bes-1>\pIII[ <bes' bes> <bes' bes>] | %248
  <g'-2 g-0>8\pII <a'-4 a-1>\fff[ <a' a> <a' a>] | %249
  s2 | %250
  b8\rest <a'-1 g'-4 a-3 g-0>\pV[ <a' g' a g> <a' g' a g>] | %251
  s2 * 2 | %252-253
%}
  s2 | %254
  \tieDown
  <f-3>2~ | %255
  <a f>2 | %256
  <a-2 f-3>4 r | %257
  s2 | %258
  <e-1>2~ | %259
  <a e>2 | %260
  <a-2 e-1>2~ | %261
  <a e>2 | %262
  e8\rest <f-4>[ f <g-1>] | % 263
  <a-3>2~ | %264
  a8 <f-4>[ f <g-1>] | %265
  <a-3>8[ <cis'-2> <d'-3> <e'-3>] | %266
  <f'-2 a-3>4\pV r | %267
  s2 | %268
  \set Timing.timing = ##f
  <e,>4 r\fermata | %269
  \set Timing.timing = ##t s2 | %269

  s2 * 2 | %270-271
  r8 <bes,-1>[ bes, bes,] | %272
  <a,-0>2( | %273
  <d>8) s4. | %274
  s2 | %275
  r8 <bes,-1>[ bes, bes,] | %276
  <a,-0>2 | %277
  s2 * 4 | %278-281

  s2 | %282
  <bes-1 g-2>4\sf s | %283
  <c'-1 a-2>4\sf s | %284
  <d'-1 bes-1>4\sf s | %285
  <fis'-3 c'-1>4\sf s | %286
  <g'-3 d'-2>4\sf s | %287
  <bes'-3 e'-1>4\sf s | %288
  s2 * 14 | %289-302


  s2 * 4 | %303-306
  <fis-4>2(\p | %307
  <g-1>2) | %308
  <g-3 cis-1>2( | %309
  <fis-3 d-4>2) | %310
  <fis'-2 d'-3>2( | %311
  <g'-1 e'-2>2) | %312
  <g'-2 cis'-1\4>2 | %313
  <fis'-3 d'-2>2 | %314
  <fis>2( | %315
  <g>2) | %316
  <g cis>2( | %317
  <fis d>2) | %318
  <fis' d'>2 | %319
  <g' e'>2 | %320
  <g' cis'>2( | %321
  <fis' d'>2) | %322
  <a>2 | %323
  <a-1 fis-3>2 | %324
  <a-2 fis-4>2 | %325
  <g-0 d-0>2 | %326
  <b-2 g-3>2 | %327
  <b-1 gis-3>2 | %328
  <b-2 gis-4>2 | %329
  <a-1 e-1>2 | %330

  \mrk
  \slurUp
  <g'-1\1 g-3\4>4\pIII( <a' a>\pETC | %331
  <bes' bes>4 <a' a> | %332
  <g' g>4 <a' a>) | %333
  <bes' bes>4( <a' a> | %334
  <g' g>4 <a' a>) | %335
  <bes' bes>4( <a' a> | %336
  <g' g>4 <a' a>) | %337
  <bes' bes>4( <a' a> | %338
  <gis' gis>4\pIV <a' a>\pETC) | %339
  <b' b>4 <a' a> | %340
  <gis' gis>4 <a' a> | %341
  <b''-4\1 b'-1\3>4\pXVI <a'' a'>\pETC | %342
  <gis'' gis'>4 <a'' a'> | %343
  <gis'' gis'>4 <a'' a'> | %344
  <gis'' gis'>4 <a'' a'> | %345
  <a''-4 cis''-2 g'!-1>2~\pXII\ff | %346

  <a'' cis'' g'>8[ <b''-4\1 b'-1\3>\pXVI <a'' a'>\pETC <g'' g'>] | %347
  <g'' g'>8([ <fis'' fis'>) <e'' e'> <d'' d'>] | %348
  <d'' g'-2 d'>8\pVII([ <cis'' cis'>) <b' b> <cis'' cis'>] | %349
  <e''-1\1 e'-3\4>8\pXII([ <d'' d'>)\bpX <a'-1> <fis'-2>] | %350
  <cis'' cis'>8([\pIX <b' b>)\pVIII <g'-2> <e'-4>] | %351
  <b' b>8[( <a' a>)\pV <fis'-4> <d'-2>] | %352
  <a-3 a,-0>8 s4. | %353
  \slurDown
  %ossia
  %<g' e'>2~ | %354
  %<g' e'>4 s | %355
  s2 *2 | %354-355
  s2 * 6 | %356-361

  <d'-2 a-1 fis-3 d-4>2 | %362
  s2 * 2 | %363-364
  d8\rest <e'-0 cis'-3 a-2 e-1>[ <e' cis' a e> <e' cis' a e>] | %365
  e''8\rest <fis''-1>[\pXIV <fis''> <fis''>] | %366
  <d''-2>8 <a''-4\1 a'-1\3>[ <a'' a'>\pETC <a'' a'>] | %367
  <fis'' fis'>8\pXI <d'' d'>[\pVII <d'' d'> <d'' d'>] | %368
  d8\rest <a'-1 e'-1 cis'-2 a-3>[\BpV <a' e' cis' a> <a' e' cis' a>] %369
  <a'-1 fis'-4 d'-3 a-2>4 b\rest | %370
  b8\rest <a' e' cis' a>[ <a' e' cis' a> <a' e' cis' a>] | %371
  <a' fis' d' a>4 b\rest | %372
  b8\rest <cis''-1 a'-2 e'-1 cis'-3>[\bpIX <cis''a'e'cis'> <cis''a'e'cis'>] | %373

  <d''-1 a'-1 fis'-2 d'-3>2\bpX | %374
  s8 <d''-1 fis'-2 d'-3>[\pX <d'' fis'd'> <d'' fis'd'>] | %375
  <d'' g'-4 d'>2 | %376
  s8 <d'' g' d'>[ <d'' g' d'> <d'' g' d'>] | %377
  <d'' a'-1 d'>2\bpX | %378
  s8 <d'' a'd'>[ <d'' a'd'> <d'' a'd'>] | %379
  <d'' bes'-2 d'>2 | %380
  s8 <d'' bes' d'>[ <d'' bes' d'> <d'' bes' d'>] | %381
  <ees''-1 bes'-1 ees'-3>8\BpXI <ees'' bes' g'-2 ees'-4>[ <ees'' bes' g' ees'> <ees'' bes' g' ees'>] | %382
  <ees'' bes' g' ees'>8 <ees'' bes' g' ees' bes-3 ees-1>[ <ees'' bes' g' ees' bes ees> <ees'' bes' g' ees' bes ees>] | %383
  <ees'' bes' g' ees' bes ees>8[ <ees'' bes' g' ees' bes ees> <ees'' bes' g' ees' bes ees> <ees'' bes' g' ees' bes ees>] | %384
  <ees'' bes' g' ees' bes ees>8[\rfz <ees'' bes' g' ees' bes ees> <ees'' bes' g' ees' bes ees> <ees'' bes' g' ees' bes ees>] | %385
  <ees'' bes' g' ees' bes ees>4 b\rest | %386
  s2 * 3 | %387-389

  b8\rest <f''-4\1 f'-1\3>[\fff <f'' f'> <f'' f'>] | %390
  <f'' f'>8 <f''-4\1 b'-2\2 gis'-3\3 d'-1\4>[ <f'' b' gis' d'> <f'' b' gis' d'>] | %391
  <f'' b' gis' d'>8 <f'' b' gis' d'>[ <f'' b' gis' d'> <f'' b' gis' d'>] | %392
  <f'' b' gis' d'>8 <f'' b' gis' d'>[ <f'' b' gis' d'> <f'' b' gis' d'>] | %393
  <f'' b' gis' d'>8 <f'' b' gis' d'>[ <f'' b' gis' d'> <f'' b' gis' d'>] | %394
  <f'' b' gis' d'>4 b\rest | %395
  b8\rest <d''-4\1 d'-1\3>[\pVII <d'' d'> <d'' d'>] | %396
  <f''-4 f'-1>4\pX b\rest | %397
  s2 * 6 | %398-403

  <cis''-4\1 cis'-1\3>8[\pVI <d'' d'>\pETC <e'' e'> <f'' f'>] | %404
  <g'' g'>8[ <a'' a'> <bes'' bes'> <a'' a'>] | %405
  <bes'' bes'>8[ <a'' a'> <bes'' bes'> <a'' a'>] | %406
  <bes'' bes'>8[ <a'' a'> <\parenthesize c''' c''> <bes'' bes'>] | %407
  <a'' a'>8[ <g'' g'> <bes'' bes'> <a'' a'>] | %408
  <g'' g'>8[ <f'' f'> <a'' a'> <g'' g'>] | %409
  <f'' f'>8[ <e'' e'> <g'' g'> <f'' f'>] | %410
  <e'' e'>8[ <d'' d'> <f'' f'> <e'' e'>] | %411
  <d'' d'>8[ <c'' c'> <e'' e'> <d'' d'>] | %412
  <c'' c'>8[ <bes' bes> <d'' d'> <c'' c'>]\pV | %413
  <bes'-1\1 bes-3\4>8[\pVI <a' a>\pETC <c'' c'> <bes' bes>] | %414
  g4-> f_> | %415
  e4_> f_> | %416
  <g-3>4_> <f-1>_> | %417
  <g-3>4_> <a-1>_> | %418
  <bes-2>4_>\pVII <d'-1>_> | %419
  <d'-2>4_> <cis'-1>_> | %420
  <d'-1>4 <cis'-3> | %421
  d'4 <e'-1> | %422

  s2 * 2 | %423-424
  \slurUp
  <g'-4 g-1>4(\BpV <e'-1 e-2>) | %425
  s2 | %426
  <a'-1 a-2>4( <f'-1 f-4>) | %427
  <g'-4 d'-3 g-1>4^. <a'-1 d'-3 a-2>^. | %428
  <bes'-2 bes-4>4( <g'-4 g-1>) | %429
  <a'-1 d'-3 a-2>4^. <b'-1 d'-1 b-3>^.\bpVII | %430
  <e'>2 | %431
  <b'-1 b-4>4^.\pVII <cis''-1 cis'-4>^.\pIX | %432
  <d''-1 f'-1 d'-4>4(\pX <a'-1 a-3>) | %433
  <bes'-1 f'-1 d'-2 bes-4>4^.\bpVI <f'-1 f-3>^. | %434
  <g'-1 d'-1 bes-1 g-3>4^.\bpIII s | %435
  s4 <g'-4 g-1>^.\pV | %436
  <a'-1 e'-1 d'-4 a-3>4^.\bpV <gis'-1 gis-3>^.\pIV | %437
  <a'-1 e'-1 cis'-2 a-3>4^.\bpV s | %438

  <d''-4\1 d'-1\3>2^^\pVII | %439
  <e'' e'>4^.\pETC <f'' f'>^. | %440
  <g'' g'>4(^^ <e'' e'>)\pIX | %441
  s2 | %442
  s2 | %443
  <g''-4\1 g'-1\3>4^.\pXII <a'' a'>^.\pETC | %444
  <bes'' bes'>4(^^ <g'' g'>) | %445
  <a,-0>4 <a,> | %446
  <a,>2 | %447
  <d''-1 b'-4 d'-3\4>4^.\pX <e'' cis'' e'>^.\pETC | %448
  <f'' d'' f'>4(^^ <d''-4\2 a'-2\3>) | %449
  <a,>4 <a,> | %450
  <a,>2 | %451
  <d'' b' d'>4^.\pX <e'' cis'' e'>^.\pETC | %452
  <f'' d'' f'>4( <e'' c''!-2 e'> | %453
  <d'' bes'-2 d'>4 <c'' a'-4 c'> | %454
  <bes' g'-4 bes>4 <a' f'-2 a>\pV) | %455
  s2 | %456
  <bes'-1 g'-4 d'-2 bes-3>4^^\pVI( <a'-1 f'-2 d'-4 a-3>) | %457
  <bes''-4 d''-2 bes'-1>^^\pXV( <a''-4 f''-2 a'-1>\pXIV) | %458
  b4\rest <a'-1 f'-2 d'-4 a-3>^^^.\bpV | %459
  b4\rest <a' e'-1 cis'-2 a>^^^. | %460
  s2 * 3 | %461-463
  <bes'-1 g'-4>4^^\pVI( <a'-1 f'-2>\pV) | %464
  <d-3>2 | %465
  <bes''-4 d''-2 bes'-1>4^^\pXV( <a''-4 d''-2 a'-1>\pXIV) | %466
  b4\rest <a'' d'' a'>^^^. | %467
  b4\rest <a''-4 cis''-1 a'-1>^^^.\bpXIV | %468

  <d''-1 f'-1\3 d'-3\4>8^.\pX <a'-1 a-3>\pV\rfz[ <a' a> <a' a>] | %469
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TOP DOWN
  <a' a>2 | %470
  <a' e' cis' a>2 | %471
  r8 <a,-0>[ a, a,] | %472
  r8 a,[ a, a,] | %473
  r8 a,[ a, a,] | %474
  <a'-1 f'-2 d'-4 a-3>2\pV\< | %475
  s8 <a a,>[ <a a,> <a a,>] | %476
  <a a,>8 <a' a>[ <a' a> <a' a>]\! | %477
  <a' a>8\fff[ <a' a> <a' a> <a' a>] | %478
  <a'-1 f'-2 a-3>2\fermata | %479
  b8\rest <a' g'-4 a>[ <a' g' a> <a' g' a>] | %480
  <a' e'-1 a>2~ | %481
  <a' e' a>2\fermata | %482
  s2 | %483

  \tieDown
  <f-3>2~ | %484
  <a f>2~ | %485
  a2~ | %486
  a8 a[ a a] | %487
  f2~ | %488
  <a f>2~ | %489
  a2 | %490
  s8 <e'-0 cis'-4 a-2 e-3>\pI\ff[ <e' cis' a e> <e' cis' a e>] | %491
  <f'-1 d'-4 a-2 f-3>4^. b\rest | %492
  b8\rest <e' cis' a e>[ <e' cis' a e> <e' cis' a e>] | %493
  <f' d' a f>4^. b\rest | %494
  b8\rest <e' cis' a e>[ <e' cis' a e> <e' cis' a e>] | %495
  <f' d' a f>4^. <a'-1 e'-1 cis'-2 a-3>^.\bpV | %496
  <a' f'-2 d'-4 a>4^. <a' e' cis' a>^. | %497
  <a' f' d' a>4^. <a' e' cis' a>^. | %498
  <a' f' d' a>4^. <a' e' cis' a>^. | %499
  <a' f' d' a>4^. b\rest | %500
  s2 | %501
  s2 | %502


}

lowerInstrument = \markup{ \center-column{ "Guitar II  " \line \smaller {\circle 6 "= D"} } }
leftOne = \transpose c' c' {
  \transpose c c' {
  % within this body, c will show as middle C on a guitar staff
  \global
%%{
  b8\rest <a,-0>\pII[ <a,> <a,>] | %1
  <f,-2>2\fermata | %2
  b8\rest <g,-4>[ <g,> <g,>] | %3
  <e,-1>2~ | %4
  <e,>2\fermata | %5
  R | %6
  b8\rest <bes-2>[ bes bes] | %7
  <a-1>2~ | %8
  <a>2~ | %9
  <a>2 | %10
  b8\rest <bes-2>[ bes bes] | %1
  <a>2~ | %12
  <a>2~ | %13
  <a>2 | %14
  b8\rest <f-1>[ f <g-4>] | %15
  <a-4>2~\pIV | %16
  a8[ f f g] | %17
  a8\pIV <a cis>[ <a cis> <a cis>] %18
  <a-4 d-1>4\pV b\rest | %19
  <d-1 bes,-4>4 b\rest | %20
  <cis-1 a,-4>4\pIV b\rest\fermata | %21
  b8\rest <bes,-4>8\pV[ <bes,> <bes,>] | %22
  <g,-1>2~ | %23
  <g,>2\fermata | %24

  R | %25
  b8\rest <e-4>\pIV[ e e] | %26
  <cis-1>2~ | %27
  cis2 | %28
  s2 | %29
  b8\rest <e-4>[ e e] | %30
  <cis-1>2~ | %31
  cis2 | %32
  s2 | %33
  b8\rest <d,>[ <d,> <d,>] | %34
  <d,>4 d\rest | %35
  b8\rest <d,>[ <d,> <d,>] | %36

  d,4 <d-0 a,-0 f,-1>8\pIII( d,) | %37
  d,4 <cis-1 g,-2>8\pIV( d,) | %38
  d,4 <c!-1 a,-4>8\pIII( d,) | %39
  d,4 <bes,-1 g,-4>8\pI( d,) | %40
  d,4 <a,-0 fis,-3>8( d,) | %41
  d,4 <bes,-1 g,-4>8( d,) | %42
  d,4 <cis-1 g,-2>8\pIV( d,) | %43
  d,8 <f'-1 d'-4 a-2>\pI[ <f' d' a> <f' d' a>] | %44
  <d' a f-3>8 <a d-0>[ <a d> <a d>] | %45
  <f-3 a,-0>8 <d-0 a,-0>[ <a,-0 f,-3> <a, f,>] | %46
  <a, d,>8 <a, f,>[ <a, f,> <a, f,>] | %47
  <a, e,-1>8 <g'-4 cis'-2 a-1>\pII[ <e'-0 cis' a> <e' cis' a>] | %48
  <cis'-3 a-2>8 <a e-1 cis-4>[ <g-0 e cis> <g e cis>] | %49
  <e cis-3>8 <cis g,-4>[ <a,-0 e,-1> <g,-4>] | %50
  <a,-0>8 <g,-4> <f,-2> f, | %51
  <b,-1 f,>8 <aes-1 f-4>\pVI[ <aes f> <aes f>] | %52
  <f-1 d-4>8\pIII <d-0 b,-1>\pII[ <d b,> <d b,>] | %53
  <b,>8 <aes,-4>\pIII[ <aes,> <aes,>] | %54
  <f,-1>8 <d,-0>[ <d,> <d,>] | %55
  <d,>4 b,\rest | %56
  R2 | %57
  <c-2 e,-1>4\pII b,\rest | %58

  R2 | %59
  R2 | %60
  R2 | %61
  R2 | %62
  <c-2>2\pIII~ | %63
  c2 | %64
  b,8\rest <c-2>[ <c> <c>] | %65
  <f,-1>4 b,\rest | %66
  <c-1 a,-4>2( | %67
  <c g,-3>2) | %68
  b,8\rest <c-2>[ <c> <c>] | %69
  <f,-1>4 b,\rest | %70
  <a-1 f-3 c-2>2\pII( | %71
  <bes-1 g-4 c-1>2\bpIII) | %72
  <e-2>2\pI( | %73
  <a-2 f-4>2) | %74
  R2 * 2 | %75-76
  b,8\rest <d,-0>\pII[ <d,> <d,>] | %77
  <g,-4>4 b,\rest | %78
  R2 * 2 | %79-80
  b,8\rest <f,-3>\pI[ <f,> <f,>] | %81
  <bes,-1>4 b,\rest | %82
  <d'-4 bes,-1>2 | %83
  <d'-4 f-3>2\pII~ | %84
  <d' f>2 | %85
  <c'-4 f-1>2\bpIII~ | %86
  <c' f>2 | %87
  <b-3 f-1>2\pIII~ | %88
  <b f>2 | %89
  <b f>2~ | %90
  <b f>2 | %91
  <b-0 f-4>2\pI~ | %92
  <b f>4 <b-0 aes-1 f-4 b,-2> | %93
  <c'-1 g-0 e-2 c-3>2~ | %94
  <c' g e c>4 <e-2 c-3> | %95
  <f-4 c>4 b,\rest | %96
  <g-0 c>4 b,\rest | %97
  <a-2 c>4 b,\rest | %98
  <g bes,-1>4 b,\rest | %99
  <f-4 a,>4 b,\rest | %100
  <c-3 e,-2>4 b,\rest | %101
  <e-2 c-3>4 <g-0 e> | %102
  <e c>4 <g e> | %103
  <f-4 c>4 <a-2 f> | %104
  <g c>4 <bes-4 e-2> | %105
  <a-2 c-3>4 a,8[ <c-4>] | %106
  <f,-3>8[ <bes,-1> f, bes,] | %107
  f,8[ a, f, a,] | %108
  <c-3 e,-2>4 s | %109
  r8 a[ a a] | %110
  f8 <c-3>[ c c] | %111
  a,8 <f,-3>[ f, f,] | %112
  r8 <c>[ <c> <c>] | %113
  r8 a[ a a] | %114
  f8 c[ c c] | %115
  a,8 <f,-3>[ f, f,] | %116
  b8\rest <c'-1 g e-2 c>[ <c'g e c> <c'g e c>] | %117
  <c' a-2 f-4 c>4 b\rest | %118
  b8\rest <c'g e c>[ <c'g e c> <c'g e c>] | %119
  <c' a f c>4 b\rest | %120
  b8\rest <c' g e c>[ <c' g e c> <c' g e c>] | %121
  <f'-1 c'-1 a-2 f-3>4\bpI b\rest | %122
  R2 | %123
  R2 \bar ":|." %124

  R2 | %125
  d8\rest <ees ees,>\bpI[ <ees ees,> <ees ees,>] | %126
  <d-0 d,-0>2~ | %127
  <d d,>2\fermata | %128
  R2 | %129
  <d-3>2\pIV~ | %130
  d2~ | %131
  d8 <ees-4>[ ees ees] | %132
  d2 | %133
  d2~ | %134
  d2~ | %135
  d8 ees[ ees ees] | %136
  d2 | %137
  <bes-1>8\pIII bes[ bes <c'-4>] | %138
  \tieDown <d'-2>2\pII \tieUp | %139
  bes8\pIII bes[ bes c'] | %140
  d'2\pII | %141
  s2 * 7 | %142-148
  r8 <a-1>[ a <g-4>] | %149
  <f-1>\pIII[ f f <e-1>]\pII | %150
  s2 * 3 | %151-153
  r8 <a-2 c-3>[ <a c> \fingerRight <b-0 d-0>] \fingerLeft | %154
  <gis-1 e-2>2~ | %155
  e8[ <a c> <a c> <b d>] | %156
  <gis-1 e-2>8\pI e[ e \fingerDown <d-4>\pII] | %157
  <c-2>8[ c c b,] | %158
  <a,-0>8[ a, a, <g,-4>] | %159
  <f,-2>8[ f, f, <e,-1>] | %160
  <d,-0>8 <d-4>[ d <c-2>] | %161
  <b,-1>8[ b, b, <a,-0>] | %162
  <gis,-4>8\pIII[ gis, gis, <f,-2>\pII] | %163
  \fingerLeft
  <e,-1>[ e, e, d,] | %164
  <e,-1>8\bpII <e-1>[ e <d-4>] | %165
  <c-2>8[ c c <b,-1>] | %166
  <a,-0>8[ <g,-4> <f,-2> <e,-1>] | %167
  d,8\pZ <d,-0 b,-3 f-4 gis-2>[ <d, b, f gis> <d, b, f gis>] | %168
  <d, b, f gis>8[ <d, b, f gis> <d, b, f gis> <d, b, f gis>] | %169
  <d, b, f gis>8[ <d, b, f gis> <d, b, f gis> <d, b, f gis>] | %170
  <d, b, f gis>4 d\rest | %171
  d8\rest <dis,-1 c-3 fis-4 a-2>\pI[ <dis, c fis a> <dis, c fis a>] | %172
  <dis, c fis a>8[ <dis, c fis a> <dis, c fis a> <dis, c fis a>] | %173
  <dis, c fis a>8[ <dis, c fis a> <dis, c fis a> <dis, c fis a>] | %174
  <dis, c fis a>4 d\rest | %175
  d8\rest <e, c-2 e a>\BpII[ <e, c e a> <e, c e a>] | %176
  <e, c e a>4 d\rest | %177
  d4\rest <a-2 dis-1 c-3 fis,-4>8\pI[ <a dis c fis,>8] | %178
  <a dis c fis,>4 <b-0 gis-1 e-3 e,-2>8[ <b gis e e,>] | %179
  <b gis e e,>8 s4. | %180
  s2 * 2 | %181-182
  <e,-2>2 | %183
  <gis d-0>4 <gis d> | %184
  <e b,>4\bpII <e b,> | %185
  <d-0 gis,-4>4\pIII <d gis,> | %186
  <b, e,>4\bpII <e b,>8[ <e b,>] %187
  <a-1 e cis-4>8 s4. | %188
  s2 * 2 | %189-190
  <a,-0>2 | %191
  <cis'-1 g-4>4\bpII <cis' g> | %192
  <a-1 e-1>4 <a e> | %193
  <g-4 cis-3>4 <g cis> | %194
  <e-1 a,-0>4\pII <a,-0 e,-2>8[ <a, e,>] | %195
  <d-0 a,-0 fis,-4>8 s4. | %196

  s2 * 2 | %197-198
  <fis-4 a,-0 d,-0>2 | %199
  <g-0 d-0 bes,-1 g,-4>2 | %200
  s2 * 2 | %201-202
  <fis a, d,>2 | %203
  <g d bes, g,>2 | %204
  R2 * 2 | %205-206
  <aes-1 ees-1 c-3 aes,-4>2\bpI | %207
  <b-0 f-1 d-3 b,-4>2\pIII | %208
  R2 * 2 | %209-210
  <c'-2 g-0 ees-1 c-4>2\pI | %211
  R2 | % 212
  <des'-2 aes-1 f-3 des-4>2 | %213
  R2 | %214
  <ees'-2 bes-1 g-3 ees-4>2\pIII | %215
  R2 | %216
  <ees'-1 ces'-1 aes-4 ees-3>2\bpIV | %217
  R2 | %218
  <ees' ces' aes ees>2 | %219
  R2 | %220
  <ees' ces' aes ees>2 | %221
  R2 | %222
  <e'-2 b-1 gis-3 e-4>2\pIV | %223
  R2 | %224
  <e' b gis e>2 | %225
  R2 | %226
  <e' b gis e>2 | %227
  R2 | %228

  <e' b gis e>8 s4. | %229
  s2 * 4 | %230-233
  R2 | %234
  <bes-1 g-4 des-2 g,-3>2\pIII | %235
  R2 | %236
  <bes g des g,>2 | %237
  R2 | %238
  <bes g des g,>2 | %239
  R2 | %240
  <bes g des g,>8 <bes,-4>8\pV\ff[ bes, bes,] | %241
  <g,-1>2~ | %242
  <g,>8 s4. | %243
  <g-1 g,-1>2~ | %244
  <g g,>8 s4. | %243
  <g-1 g,-1>8 <bes bes,>[ <bes bes,> <bes bes,>] | %246
  <g g,>8 <bes bes,>[ <bes bes,> <bes bes,>] | %247
  <g g,>8 <bes bes,>[ <bes bes,> <bes bes,>] | %248
  <g g,>8 <a-4 a,-4>\pIV[ <a a,> <a a,>] | %249
  \repeat tremolo 8 { <f-2 a,-0 f,-1>32\pIII\fermata <f a, f,> } | %250
  d8\rest <a-1 g-4 a,-0 g,-3>\pII[ <a g a, g,> <a g a, g,>] | %251
  \repeat tremolo 8 { <e-2 a,-0 e,-1>32 <e a, e,> } | %252
  \repeat tremolo 8 { <e a, e,>32\fermata <e a, e,> } | %253

%}
  R2 | %254
  <d d,>2~ | %255
  <d d,>2~ | %256
  \slurUp
  <d d,>4 <d d,>( | %257
  <f f,>4\bpIII <d d,>) | %258
  <cis-3 e,-1>2\pII~ | %259
  <cis e,>2~ | %260
  <cis e,>4 <a,-0 e,-1>( | %261
  <cis-3 e,-1>4 <a,-0 e,-1>) | %262
  <a, d,>2 | %263
  <cis-1 e,-4>2\pIV | %264
  <d-0 a,-0>2\pIII | %265

  << {  } \\ {  } >> | %265
  s2 * 3 | %266-268
  \set Timing.timing = ##f
  <a'-1 cis'-2 a-3 a,-0>4\bpV r\fermata
  \set Timing.timing = ##t s2 | %269

  R | %270
  b8\rest <e-4>\pIV[ e e] | %271
  <cis-1>2~ | %272
  cis2 | %273
  s2 | %274
  b8\rest <e-4>[ e e] | %275
  <cis-1>2~ | %276
  cis2 | %277
  s2 | %278
  b8\rest <d,>[ <d,> <d,>] | %279
  <d,>4 d\rest | %280
  b8\rest <d,>[ <d,> <d,>] | %281

  d,4 <d-0 a,-0 f,-1>8\pIII( d,) | %282
  d,4 <cis-1 g,-2>8\pIV( d,) | %283
  d,4 <c!-1 a,-4>8\pIII( d,) | %284
  d,4 <bes,-1 g,-4>8\pI( d,) | %285
  d,4 <a,-0 fis,-3>8( d,) | %286
  d,4 <bes,-1 g,-4>8( d,) | %287
  d,4 <cis-1 g,-2>8\pIV( d,) | %288
  d,8 <f'-1 d'-4 a-2>\pI[ <f' d' a> <f' d' a>] | %289
  <d' a f-3>8 <a d-0>[ <a d> <a d>] | %290
  <f-3 a,-0>8 <d-0 a,-0>[ <a,-0 f,-3> <a, f,>] | %291
  <a, d,>8 <a, f,>[ <a, f,> <a, f,>] | %292
  <a, e,-1>8 <g'-4 cis'-2 a-1>\pII[ <e'-0 cis' a> <e' cis' a>] | %293
  <cis'-3 a-2>8 <a e-1 cis-4>[ <g-0 e cis> <g e cis>] | %294
  <e cis-3>8 <cis g,-4>[ <a,-0 e,-1> <g,-4>] | %295
  <a,-0>8 <g,-4> <f,-2> f, | %296
  <b,-1 f,>8 <f-3>[ <f> <f>] | %297
  <d-4>8\pIII <b,-1>\pII[ <b,> <b,>] | %298
  <gis,-4>8\pIII <f,-1>[ <f,> <f,>] | %299
  <d,-0>8 <f,-1>[ <f,> <f,>] | %300
  <d-3 gis,-4>4 b,\rest | %301
  <cis-1 a,-4>4\pIV b,\rest | %302

  s2 * 6 | %303-308
  b8\rest <a,>[\p a, a,] | %309
  <d,>4 b\rest | %310
  s2 * 4 | %311-314
  <d-0 a,-0>2( | %315
  <e-2 a,>2) | %316
  b8\rest <a,>[\p a, a,] | %317
  <d,>4 b\rest | %318
  s2 * 4 | %319-322
  <d-0 a,-0>2( | %323
  <ees!-2 a,>2)\pI | %324
  b8\rest <d,>\pII[ d, d,] | %325
  <g,-4>4 b\rest | %326
  <b,-1>2~ | %327
  b,2 | %328
  b8\rest <e,-1>[ e, e,] | %329

  <a,-0>4 b\rest | %330
  <bes,!-1>2~\pI | %331
  <bes,>2 | %332
  s2 | %333
  <cis-4>2 | %334
  s2 | %335
  <e-2>2 | %336
  s2 | %337
  b8\rest <e,-1>\pII[ e, e,] | %338
  <e,>4 b\rest | %339
  s2 * 2 | %340-341
  <b-4>4\pI( <a-3> | %342
  <gis-1>4 a) | %343
  <gis,-4>4\pII( <a,-0>) | %344
  gis,4( a,) | %345
  %\repeat tremolo 8 { <a-0 e-1>32 <e'-2> } | %346
  <e-2 a,-0 e,-1>2~\arpeggio | %346

  <e a, e,>8 b\rest <a-4 cis-1>4\pIV | %347
  <a-4 d-1>4\pV b\rest | %348
  <a-4 e-3>4 b\rest | %349
  s4 <a-1 fis-3 d-4> | %350
  s4 <g-0 d-0 b,-1> | %351
  s4 <fis-1 d-2> | %352
  <e-1 cis-3>8\pII b\rest b4\rest | %353
  <e-1 a,-0>4 <e cis-3> | %354
  <e a,>4 <e cis> | %355
  <d-2 a,-4>4\pIV <fis-1 d> | %356
  <e-4 a,-3>4 <g-1 e> | %357
  <fis-2 a,-0>4 <fis,-1>8[ <a,-0>] | %358
  <e,-1>8[\pII <g,-4> e, g,] | %359
  <d,-0>8[ <fis,-3> d, fis,] | %360
  <a,-0 e,-1>4 <g-0 e-2 a,-0> | %361

  b8\rest <fis-4>[ fis fis] | %362
  s2 | %363
  s8 d,[ d, d,] | %364
  <a,>2 | %365
  s8 <fis'-1 fis-4>[ <fis' fis> <fis' fis>] | %366
  <d'-2 d-0>8 <a-1 a,-0>[ <a a,> <a a,>] | %367
  s2 | %368
  <a,>2 | %369
  <d-0 a,-0 fis,-1>4\pIV b\rest | %370
  b8\rest <a,>[ <a,> <a,>] | %371
  <d a, fis,>4 b\rest | %372
  b8\rest <cis-1 a,-4>[ <cis a,> <cis a,>] | %373

  b8\rest <d>[ d d] | %374
  <d>8 s4. | %375
  s8 <d>[ d d] | %376
  <d>8 s4. | %377
  s8 <d>[ d d] | %378
  <d>8 s4. | %379
  s8 <d>[ d d] | %380
  <d>8 s4. | %381
  <g es-2 bes,>8\fff <g es bes,>[ <g es bes,> <g es bes,>] | %382
  <g es bes,>8 <g-0 es-3 bes,-2 es,-1>[\pI <g es bes, es,> <g es bes, es,>] | %383
  <g es bes, es,>8[ <g es bes, es,> <g es bes, es,> <g es bes, es,>] | %384
  <g es bes, es,>8[ <g es bes, es,> <g es bes, es,> <g es bes, es,>] | %385
  <g es bes, es,>4 b\rest | %386
  b8\rest <g-1>[\p g g] | %387
  <bes-4>4 b\rest | %388
  s2 | %389

  d8\rest <gis'-4 d'-3 gis-1>[\pI <gis' d' gis> <gis' d' gis>] | %390
  <gis' d' gis>8 <gis'-4 b-0 gis-1 d-0 b,-2 f,-3>[ <gis' b gis d b, f,> <gis' b gis d b, f,>] | %391
  <gis' b gis d b, f,>8 <gis' b gis d b, f,>[ <gis' b gis d b, f,> <gis' b gis d b, f,>] | %392
  <gis' b gis d b, f,>8 <gis' b gis d b, f,>[ <gis' b gis d b, f,> <gis' b gis d b, f,>] | %393
  <gis' b gis d b, f,>8 <gis' b gis d b, f,>[ <gis' b gis d b, f,> <gis' b gis d b, f,>] | %394
  <gis' b gis d b, f,>4 d\rest | %395
  s2 * 23 | %396-418
  <g bes g,>4\pIII-. <fis a fis,>\pII-. | %419
  <g bes g,>4\pIII-. <a-3 cis'-4 a,-0>\pZ-. | %420
  s2 * 2 | %421-422

  <d'-3 f'-1 d-0>2~ | %423
  <d>2 | %424
  <d-0 bes,-1>2~ | %425
  <d bes,>2 | %426
  <d-0 a,-0>2~ | %427
  <d a,>2 | %428
  <d-0 g,-4>2\pIII | %429
  <f-2 d-4 f,-1>2 | %430
  <e-2 cis-4 e,-1>2\pII | %431
  %ossia
  %<g-0 e-2 a,-0>2 | %432
  <g-0 e-1 a,-0 g,-4>2 | %432
  <f-2 d-4 f,-1>4_.\pIII d\rest | %433
  <d-0 bes,-1 d,-0>4_.\pI d\rest | %434
  <g-4 d-3 g,-2>4_.\pIV d\rest | %435
  <e-1 d-4 e,-1>4_.\BpII d\rest | %436
  <a-1 e-1 d-4>4_. d\rest | %437
  <a-1 e-1 cis-4>4_. s | %438
  <d-0 d,-0>2-^ | %439
  s2 * 2  | %440-441
  <d-0>4^.\pIII <d>^. | %442
  <d>2^^ | %443
  s2 * 2 | %444-445
  <a-4>4^.\pIV <a>^. | %446
  <a>2^^ | %447
  s2 * 2 | %448-449
  <a>4^. <a>^. | %450
  <a>2^^ | %451
  s2 * 4 | %452-455
  <bes,-1 d,-0>4^^( <a,-0 d,>) | %456
  <d-0 bes,-1>4^^( <d a,-0>) | %457
  <bes-1 g-3>4^^\pIII( <a-1 f-2 d-4>\pII) | %458
  <f d>4_. d\rest | %459
  <e-1 cis-3>4_.\pII d\rest | %460
  <d-3 d,-0>4\pIII( <c-1 a,-4> | %461
  <bes,-1>4\pI <a,-0 f,-3> | %462
  <g,-3>4\pIII <f,-1>) | %463
  <bes-1 g-3>4^^( <a-1 d-0>\pII) | %464
  <bes,-1>4^^\pI( <a,-0>) | %465
  <g,-4>4^^\pIII( <f,-1>) | %466
  <f-1 d-4 f,-1>4_.\bpIII b\rest | %467
  <e-1 cis-4 e,-1>4_.\bpII b\rest | %468
  <d-0 d,-0>8_. <a-2 a,-0>\pI[ <a a,> <a a,>] | %469
  <a a,>2 | %470
  s2 | %471
  <g-0 e-1>4 <f-2 d-4> | %472
  <e-1 cis-3>4 <g-0 e-1> | %473
  <f-2 d-4>4 <e-1 cis-3> | %474
  s2 | %475
  b8\rest <a-1>[ <a> <a>] | %476
  <a>8 <a a,-0>[ <a a,> <a a,>] | %477
  <a a,>8[ <a a,> <a a,> <a a,>] | %478
  \arpeggioArrowUp
  <f-3 a,-0 f,-2>2\arpeggio\fermata | %479
  d8\rest <g-3 g,-2>\pIV[ <g g,> <g g,>] | %480
  <e-3 a,-0 e,-2>2~\arpeggio\pI | %481
  <e a, e,>2\fermata | %482

  R2 | %483
  \tieDown
  <a,-0 d,-0>2~ | %484
  <a, d,>2~ | %485
  <a, d,>2 | %486
  s2 | %487
  <a, d,>2~ | %488
  <a, d,>2~ | %489
  <a, d,>2 | %490
  s8 <a-2 e-1 a,-0>\pII[ <a e a,> <a e a,>] | %491
  s2 | %492
  d8\rest <a e a,>[ <a e a,> <a e a,>] | %493
  s2 | %494
  d8\rest <a e a,>[ <a e a,> <a e a,>] | %495
  s4 <a e a,>-. | %496
  s4 <a e a,>-. | %497
  s4 <a e a,>-. | %498
  <f-4 a,-0 f,-3>4-. <e-2 a,-0 e,-1>-. | %499
  <d-0 a,-0 d,-0>4-. d\rest | %500
  <e-2 a,-0 e,-1>4\arpeggio d\rest | %501
  <d-0 a,-0 d,-0>4\arpeggio d\rest %502

  % above, c will show as middle C on a guitar staff
  } %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% END TRANSPOSE C C' %%% BTM UP
  % below, c' will show as middle C on a guitar staff




}

leftTwo = \transpose c' c' {
  \transpose c c' {
  % within this body, c will show as middle C on a guitar staff
  \global
%%{
  s2 * 6 | %1-6
  <d-4>2~ | %7
  d2~ | %8
  d2~ | %9
  d2 | %10
  <cis-3>2~ | %11
  cis2~ | %12
  cis2~ | %13
  cis2 | %14
  <d-3>2\pIII | %15
  <cis-1>2 | %16
  <d-3>2\pIII | %17
  cis8 s4. | %18
  s2 * 6 | %19-24

  s2 * 3 | %25-27
  f,8\rest <a,-4>[ <a,> <a,>] | %28
  <d-2>8 b\rest b4\rest | %29
  s2 *2 | %30-31
  f,8\rest <a,-0>[ <a,> <a,>] | %32
  <d-0 d,-0>8 b\rest b4\rest | %33
  s2 * 3 | %34-36

  s2 * 22 | %37-58
  s2 * 14 | %59-72
  <bes,-1>8 <c-3>[ c c] | %73
  s2 * 10 | %74-83
  b,8\rest <b,-1>[ <b,> <b,>] | %84
  <b,>4 b,\rest | %85
  b,8\rest <c-1>[ <c> <c>] | %86
  <c>4 d\rest | %87
  b,8\rest <des-2>[ <des> <des>] | %88
  <des>4 d\rest | %89
  b,8\rest <d!-4>[ <d> <d>] | %90
  <d>4 b,\rest | %91
  b,8\rest <d,>[ <d,> <d,>] | %92
  <d,>2 | %93
  %s2 | %94
  %s4 <e c e,> | %95
  %<f c f,>4 d\rest | %96
  %<g c g,>4 d\rest | %97
  %<a f c a,>4 d\rest | %98
  %<bes g f bes,>4 d\rest | %99
  %<a f c>4 d\rest | %100
  %<c' g e c>8 d\rest d4\rest | %101
  s2 * 15 | %94-108
  s4 <bes,-1 e,> | %109
  <f'-1 c'-1 a-2 f-4 f,-3>2\bpI | %110
  s2 * 2 | %111-112
  <c-3>2 | %113
  <f' c' a f f,>2 | %114
  s2 * 2 | %115-116
  <c-3>2 | %117
  s2 * 7 | %118-124

  s2 * 5 | %125-129
  <g,-2>2~ | %130
  g,2~ | %131
  g,2 | %132
  g,2 | %133
  <fis,-1>2~ | %134
  fis,2~ | %135
  fis,2 | %136
  fis,2 | %137
  <d-0 g,-3>2 | %138
  <a-1 d-0 fis,-3>2 | %139
  <d g,>2 | %140
  <a d fis,>2 | %141
  <bes-1 g,-3>4\pIII <d-4>( | %142
  <e-1>4\pII <f-2> | %143
  <g-4>4 <gis-1>\pI | %144
  <a-2>8) <a a,-0>[ <a a,> <g e-1>\pII] | %145
  \slurUp
  <f-2 d-4>2( | %146
  <e-1 a,-0>8) <a-2 a,>[ <a a,> <g e>] | %147
  <f d>2( | %148
  <e a,>8) s4. | %149
  \slurDown
  <d-3>4 s | %150

  %ossia
  %<d-4>8 <f-2 d>[ <f d> <e-1 c-3>] | %151
  %<d-0 b,-1>[ <d b,> <d b,> <c-1 a,-4>\pIII] | %152
  %<b,-1 gis,-4>2\pII %153
  %s2 * 4 | %154-157

  <d-0>8\pI <d'-4 f-3>[ <d' f> <c'-1 e-2>] | %151
  <b-3 d-4>\pII[ <b d> <b d> <a-1 c-2>] | %152
  <gis-1 b,-2>2\pI %153
  s2 * 4 | %154-157
  s2 * 10 | %158-167
  s2 * 12 | %168-179
  s8 e[ e e] | %180
  <a,-0>2 | %181
  <b,-3>2 | %182
  s2 * 5 | %183-187
  s8 a[ a a] | %188
  <d-4>2\pII | %189
  <e-1>2 | %190
  s2 * 5 | %191-195
  s8 d[ d d] | %196

  <d-0 bes,-1>2\pI | %197
  <ees-1 c-3>2 | %198
  s2 * 30 | %199-228

  s8 <e' e>[ <e' e> <e' e>] | %229
  <cis'-2 e-1>2\pII | %230
  <d'-3 e>2 | %231
  <b-4 e>2~ | %232
  <b e>2 | %233
  s2 * 9 | %234-242
  s8 <bes-4 bes,-4>[ <bes bes,> <bes bes,>] | %243
  s2 | %244
  s8 <bes-4 bes,-4>[ <bes bes,> <bes bes,>] | %245
  s2 * 8 | %246-253
%}

  s2 * 4 | %254-257
  s2 | %<f f,>4\bpIII <d d,>) | %258
  s2 * 3 | %259-261
  s2 | % <cis-3 e,-1>4 s | %262
  s2 * 2 | %263-264
  s8 f,[ f, g,] | %265
  <cis-1 a,-4>8\pIV <cis a,>[ <d b,>\pII <e cis>] | %266
  <f-1 d-4>4\pIII r | %267
  <bes,-1 d,-0>4\pI r | %268
  %s2 | %269
  \set Timing.timing = ##f s2 | %269
  \set Timing.timing = ##t s2 | %269

  s2 * 3 | %270-272
  f,8\rest <a,-4>[ <a,> <a,>] | %273
  <d-2>8 b\rest b4\rest | %274
  s2 *2 | %275-276
  f,8\rest <a,-0>[ <a,> <a,>] | %277
  <d-0 d,-0>8 b\rest b4\rest | %278
  s2 * 3 | %279-281

  s2 * 21 | %282-302

  R2 | %303
  R2 | %304
  R2 | %305
  <a,-0>2\pII | %306
  \slurUp
  <d-0 a,>2( | %307
  <e-1 a,>2) | %308
  s2 * 2 | %309-310
  <a-1 fis-3 a,-0>2~( | %311
  <g-0 e-1 a,>2) | %312
  b8\rest a,[ a, a,] | %313
  d4 b\rest | %314
  <fis,-4>2 | %315
  <e,-1>2 | %316
  s2 * 2 | %317-318
  <a fis a,>2~( | %319
  <g e a,>2) | %320
  b8\rest a,[ a, a,] | %321
  d4 b\rest | %322
  <fis,-4>2 | %323
  <ees,-1>2 | %324
  s2 * 2 | %325-326
  <g,-4>2 | %327
  <f,-2>2 | %328
  s2 * 3 | %329-331
  r8 <bes,>[ bes, bes,] | %332
  <bes,>4 b\rest | %333
  r8 <cis>[ cis cis] | %334
  <cis>4 b\rest | %335
  r8 <e>[ e e] | %336
  <e>4 b\rest | %337
  s2 * 2 | %338-339
  b8\rest <e>[ e e] | %340
  <e e,>4 b\rest | %341
  s4 <e-2> | %342
  s4 e | %343
  s4 <e,-1> | %344
  s4 e, | %345

  s2 * 4 | %346-349
  <fis,-2>4\pII s | %350
  <g,-4>4 s | %351
  <a,-4>4\pIV s | %352
  s2 * 9 | %353-361

  <d-0 a,-0 fis,-3>2 | %362
  <d-0>8 <a,-0>[ a, a,] | %363
  <fis,-3>8 s4. | %364
  r8 <a,>[ <a,> <a,>] | %365
  <d a, fis,-3>2 | %366
  s2 | %367
  <fis-4 fis,-3>8 <d d,>[ <d d,> <d d,>] | %368
  b8\rest <a,>[ <a,> <a,>] | %369
  s2 * 4 | %370-373

  <d-2 fis,-1>2 | %374
  s8 <a-4 d fis,>[ <a d fis,> <a d fis,>] | %375
  <bes-4 d-1 g,-1>2\bpV | %376
  s8 <bes d g,>[ <bes d g,> <bes d g,>] | %377
  <fis-1 d-2 a,-4>2\pIV | %378
  s8 <fis d a,>[ <fis d a,> <fis d a,>] | %379
  <g-1 d-1 bes,-4>2\bpV | %380
  s8 <g d bes,>[ <g d bes,> <g d bes,>] | %381
  s2 * 5 | %382-386
  s8 <g,-1>[\bpV g, g,] | %387
  <bes,-4>4 s | %388
  R2 | %389
  s2 * 6 | %390-395
  b8\rest <d-0>[ d d] | %396
  <f-4>4 b\rest | %397
  b8\rest <a-2 a,-0>[ <a a,> <a a,>] | %398
  <f-4 a,-0 f,-3>2 | %399

  <g-4 g,-3>2\pIII | %400
  <e-1 cis-3 e,-1>2~\BpII | %401
  <e cis e,>8 <a'-4 a-1>[ <a' a> <a' a>] | %402
  <f'-1 a-2 f-3>2\pI | %403
  <g'-4 g-0>2 | %404
  <e'-0 cis'-2 bes-3 e-1>2~\pII | %405
  <e' cis' bes g e>8 <a'-4 a-1>[ <a' a> <a' a>] | %406
  <f'-1 f-3>4\pI-. <g'-4 g-0>-. | %407
  <e'-0 e-2>4-. <f'-1 f-3>-. | %408
  <d'-4 d-0>4-. <e'-0 e-2>-. | %409
  <c'-1 c-3>4-. <d'-4 d-0>-. | %410
  <bes-3 d'-4 bes,-1>4-. <c'-1 e'-0 c-3>-. | %411
  <a-2 c'-1 a,-0>4-. <bes-3 d'-4 bes,-1>-. | %412
  <g-4 bes-1 g,-3>4\pIII-. <a-4 c'-1 a,-3>\pV-. | %413
  <f-4 a-2 f,-3>4\pI-. <g-4 bes-1 g,-3>\pIII-. | %414
  <e-2 g-0 e,-1>4\pII-. <d-4 f-1 d,-0>\pIII-. | %415
  <cis-4 e-1 e,-1>4\bpII-. <d f d,>\pIII-. | %416
  <e g e,>4\pII-. <d f d,>\pIII-. | %417
  <e g e,>4\pII-. <fis-4 a-1 fis,-3>-. | %418
  s2 * 2 | %419-420
  <bes-3 d'-4 bes,-1>4\pI-. <a cis' a,>\pZ-. | %421
  <bes d' bes,>4\pI-. <cis'-2 e'-0 cis-4>-. | %422

  r8 <d,-0>[ <d,> <d,>] | %423
  <d,>4 r4 | %424
  r8 <d,>[ <d,> <d,>] | %425
  <d,>4 r4 | %426
  r8 <d,>[ <d,> <d,>] | %427
  <d,>4 r | %428
  r8 <d,>[ <d,> <d,>] | %429
  s2 |%<d a,>4 cis\rest | %430
  r8 <a,>[ <a,> <a,>] | %431
  s2 * 6 | %432-437
  s4 <a,-0>-. | %438

  s2 | %439
  <d''-4 d'-1>4_.\pVII <d'' d'>_. | %440
  <d'' d'>2_^ | %441
  <f,-1>4_. <g,-3>_. | %442
  \slurDown
  <a,-4>4( <f,-1>) | %443
  <d'' d'>4_.\pVII <d'' d'>_. | %444
  <d'' d'>2_^ | %445
  <cis-1>4_. <d-2>_. | %446
  <e-3>4( <cis-1>) | %447
  <a-4 a,-0>4_. <a a,>_. | %448
  <a a,>2_^ | %449
  <cis>4_. <d>_. | %450
  <e>4( <cis>) | %451
  <a'-1 a-4>4_.\pV <a' a>_. | %452
  \slurUp
  <a' a>2_^( | %453
  <f'-1 f-3>4\pI <f' f> | %454
  <d'-4 d-0>4 <d' d>) | %455
  s2 * 13 | %456-468

  s2 | %469
  r8 <g-0 e-1 a,-0>\pII[ <g e a,> <g e a,>] | %470
  <g e a,>2 | %471
  s2 | %472
  s2 | %473
  s2 %474
  <f-2 d-4>2 | %475
  s2 * 10 | %476-485
  b4\rest <d-4\5>( | %486
  <a,-0>4) b\rest | %487
  s2 * 2 | %488-489
  b4\rest d( | %490
  a,8) s4. | %491

  <d'-4 a-2 d-0>4-. d\rest | %492
  s2 | %493
  <d' a d>4-. d\rest | %494
  s2 | %495
  <d' a d>4-. s | %496
  <d' a d>4-. s | %497
  <d' a d>4-. s | %498
  s2 * 4 | %499-502

  % above, c will show as middle C on a guitar staff
  } %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% END TRANSPOSE C C' %%% BTM DOWN
  % below, c' will show as middle C on a guitar staff


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% BTM DOWN
}


\score {
  \context StaffGroup <<
    \context Staff = "up" \with { instrumentName = \upperInstrument } <<
      \set Staff.midiInstrument = #"acoustic grand"
      %\override Staff.NoteHead.color = #color-pitch-range
      << \rightOne \\ \rightTwo >>
    >>
    \context Staff = "dn" \with { instrumentName = \lowerInstrument } <<
      \set Staff.midiInstrument = #"acoustic grand"
      %\override Staff.NoteHead.color = #color-pitch-range
      << \leftOne \\ \leftTwo >>
     >>
  >>
  \layout {}
  \midi {
    \tempo 4 = 100
    \transposition c % guitar plays octave lower than written
  }
}
