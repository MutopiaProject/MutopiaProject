\version "2.18.2"

\header {
 title = "Ah Vous Dirai-Je Maman"
 subtitle = \markup { \smaller "Thirteen Scherzi For Two Guitars" }
 composer = "Wolfgang Amadeus Mozart"
 arranger = "Ed.: J. J. Olson"
 date = "1785"
 source = "Paris: Porro, n.d. Plate 79." % see IMSLP104399
 moreInfo = "<p>The term “scherzo”, originally from the Italian word for “jest” or “joke”, has come to mean any brief, light-hearted piece of music.  The thirteen scherzi in this edition, though not so-named by Mozart, fit both senses of the word, in part because their performance order has been altered here to delay recognition of their theme, now instantly recognized as <i>Twinkle, Twinkle Little Star</i>, in the hope for greater appreciation of the variations before their association with children's music is realized.</p> <p>This lengthy edition contains the complete set of Mozart's twelve variations and his rendition of the theme, all arranged for two guitars, together with detailed annotations containing performance tips, modifications made for guitar and a variety of program suggestions.</p> <p>Alternatively, for the briefest one-page variation that is the most fun to play as a duet, see <a href='http://www.mutopiaproject.org/cgibin/piece-info.cgi?id=2238'>Variation V (Accelerando)</a> available separately on Mutopia.</p>"
 style = "Romantic"
 mytagline = ##f

 %            o_
 %       (\___\/_____/)
 %  ~ ~ ~ ~ ~ / ~ ~ ~ ~ ~ ~ ~
 maintainer = "Jeffrey Olson"
 maintainerEmail = "gmail's jjocanoe"
 license = "Public Domain"

 mutopiacomposer = "MozartWA"
 mutopiatitle = "Ah Vous Dirai-Je Maman"
 mutopiadate = "1785"
 mutopiasource = "Paris: Porro, n.d. Plate 79."
 mutopiainstrument = "2 Guitars"

 comptitle = \markup { \concat { "Mozart: " \title } }
 footer = "Mutopia-2018/12/07-2236"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white "ǀ" \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {"ǀ" "ǀ"}}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " "by " \maintainer " — " \footer}\concat {\concat {\abs-fontsize #8 { "Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "Public Domain" " by the typesetter " " — free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white "ǀ" }}}
 tagline = ##f

 myfoot = \markup{ \override #'(font-name . "DejaVu Sans,sans-serif") \column { \vspace #2 \abs-fontsize #8 \fill-line { \line { \footer } \line { \comptitle } \line { \arranger } } } }
}

\paper{
  page-count = #11
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
pXVI  = ^\markup { "XVI" }

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

% parenthetic small barre
bppI    = ^\markup { "(b_I)" }
bppIII  = ^\markup { "(b_III)" }

% left hand fingering locations
fingerLeft   = \set fingeringOrientations = #'(left)
fingerRight  = \set fingeringOrientations = #'(right)
fingerUp     = \set fingeringOrientations = #'(up)
fingerDown   = \set fingeringOrientations = #'(down)
fingerUpDown = \set fingeringOrientations = #'(up down)
fingerInStaff  = \override Fingering.staff-padding = #'()
fingerOutStaff = \revert Fingering.staff-padding

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

% string number locations
stringUp    = \set stringNumberOrientations = #'(up)
stringDown  = \set stringNumberOrientations = #'(down)
stringLeft  = \set stringNumberOrientations = #'(left)
stringRight = \set stringNumberOrientations = #'(right)

% harmonics
headHarmonic = \override Staff.NoteHead.style = #'harmonic
headRevert = \revert Staff.NoteHead.style

%high notes
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

% harmonics
headHarmonic = \override Staff.NoteHead.style = #'harmonic
headRevert = \revert Staff.NoteHead.style

% tempo/dynamics
acl = _\markup { \smaller \italic "accel." }
rit = _\markup { \smaller \italic "rit." }
dim = _\markup { \smaller \italic "dim." }
crc = _\markup { \smaller \italic "cresc." }
dol = _\markup { \smaller \italic "dolce" }
dcf = _\markup { \smaller \italic "D.C." }
fin = _\markup { \smaller \italic "Fin" }
gls = _\markup { \smaller \italic "glis." }

% stems
longStem = \override Stem.details.beamed-lengths = #'(5)
shortStem = \override Stem.details.beamed-lengths = #'(3)
revertStemLength = \revert Stem.details.beamed-lengths

% beams
nb = \noBeam

% grappoggiaccaturamata
gr =
#(define-music-function (parser location music) (ly:music?)
   #{ \grace { #music } #})
ap =
#(define-music-function (parser location music) (ly:music?)
   #{ \appoggiatura { #music } #})
ac =
#(define-music-function (parser location music) (ly:music?)
   #{ \acciaccatura { #music } #})
fe = \fermata

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


% standard options
stdOpts = {
  \fingerLeft \rhRight \stringDown
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
}

% Staff macros
instrumentI = \markup{ "Guitar I   " }
instrumentII = \markup{ "Guitar II  " }

Stff =
#(define-music-function (parser location instr musexp) (markup? ly:music?)
   #{
     \new Staff \with { instrumentName = #instr } {
       %\override Staff.NoteHead.color = #color-pitch-range
       \set Staff.midiInstrument = #"acoustic grand"
       #musexp
     }
   #})

StffGrp =
#(define-music-function (parser location uprmus lwrmus) (ly:music? ly:music?)
   #{
     \new StaffGroup <<
       \Stff \instrumentI #uprmus
       \Stff \instrumentII #lwrmus
     >>
   #})

  %<< {
  %} \\ {
  %} >>

% for text section headings and paragraph macros
\include "text-macros.ily"
balloon-color = #red    % visible (while adjusting)
%balloon-color = #white  % invisible (for publication)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

themaA = \transpose c c' {
  \stdOpts
  \time 2/4
  \tempo 4=108
  c'4\mf\pIII c' | %1
  g'4 g' | %2
  a'4 a' | %3
  g'4 g' | %4
  f'4 f' | %5
  e'4 e' | %6
  d'4 d'8. e'16 | %7
  c'2 | %8
  \bar "||"
  g'4\p g' | %9
  f'4 f' | %10
  e'4 e' | %11
  d'4 d' | %12
  g'4 g' | %13
  f'4 f' | %14
  e'4\< e'8.\trill f'16 | %15
  << {
    e'4( d')\! | %16a
  } \\ {
    g2 | %16b was an octave lower, in lower part
  } >>
  \bar "||"
  c'4\mf c' | %17
  g'4 g' | %18
  a'4 a' | %19
  g'4 g' | %20
  f'4 f' | %21
  e'4 e' | %22
  d'4 d'8.\trill e'16 | %23
  c'2 | %24
  \bar "|."
}
themaC = \transpose c c' {
  \stdOpts
  <e-2>4\pI <c-3> | %1 e was c,
  e4 c | %2
  f4 c | %3
  e4 c | %4
  d4 b, | %5
  c4 a, | %6
  <f,-1>4 <g,-3> | %7
  <c-4>2 | %8 was c,
  \bar "||"
  <e-2>4 <g,-3> | %9
  d4 g, | %10
  c4 g, | %11
  b,4 g, | %12
  e4 g, | %13
  d4 g, | %14
  c4 c8. d16 | %15
  c4( b,) | %16
  \bar "||"
  <e-2>4 <c-3> | %17
  e4 c | %18
  f4 c | %19
  e4 c | %20
  d4 b, | %21
  c4 a, | %22
  <f,-1>4 <g,-3> | %23
  <c-4>2 | %24
  \bar "|."
}

thema = \StffGrp \themaA \themaC

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

varIA = \transpose c c' {
  \stdOpts
  \time 2/4
  \tempo 4=60
  d'16\pVII\mf c' b c' b c' b c' | %1
  a'16 g' fis' g' fis' g' fis' g' | %2
  gis' a' c'' b' d'' c'' b' a' | %3
  <a'-4>16( <g'!-1>\pVIII) e'' d'' c'' b' a' g' | %4
  <g'-1>16( <f'-1>\pVI) d'' c'' b' a' g' f' | %5
  <f'-1>16( <e'-1>\pV) c'' b' a' g' f' e' | %6
  d'8\bpIII a' g' <b-4> | %7
  c'16\pI g e g c4\fin | %8 raised and adapted from lower part
  \bar "|.|"
  a'16\(\p\pVII g' fis' g' fis' g' a' g'\) | %9
  <g'-2>16\( <f'!-2>\pV e' f' e' f' g' f'\) | %10
  <f'-2>16\( <e'-2>\pIV dis' e' dis' e' f' e'\) | %11
  <e'-2>16\( <d'!-2>\pII cis' d' cis' d' e' d'\) | %12
  a'16\pVII g' fis' <g'-1>\bpVIII e'' c'' <a'> <g'> | %13
  <g'-4>16\pV f'! e' <f'-1>\pVII d'' <b'-2> <g'> <f'> | %14
  <f'-3>16\pIV e' dis' <e'-1>\pV <c''-4> <g'-4> f' e' | %15
  << {
    g'8.\bpIII e'16 d'4\dcf | %16a
  } \\ {
    \fingerLeft
    <g-0>2 | %16b
  } >>
  \bar "|."
}

varIC = \transpose c c' {
  \stdOpts
  \time 2/4
  <e-2>4\(\pI <c-3> | %1 low e was low c,
  e4 c | %2
  f4 c | %3
  <e c>4\) r8. <cis-3>16\pII | %4
  <d-4>4 r8. <b,-1>16 | %5
  <c!-2>4 r8. a,16\pI | %6
  f,4 g, | %7
  c2 | %8
  \bar "|.|"
  <e-1>4(\pII <g,-2>) | %9
  d4( g,) | %10
  c4( g,) | %11
  f4( g,) | %12
  << {
    e2 | %13a
    d2 | %14a
    \fingerLeft
    <c-3>4 b8.\rest c16 | %15a
    \fingerDown
    <e-2>8. <c-3>16 <b,-1>4 | %16a
  } \\ {
    g,2 | %13b
    g,2 | %14b
    \fingerLeft
    <g,-2>4 s | %15b
    s2 | %16b
  } >>
}

varI = \StffGrp \varIA \varIC

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

varIIA = \transpose c c' {
  \stdOpts
  \time 2/4
  \tempo 4=60
  % theme has been obfuscated by octave transposition and selective elision
  <c''-4>4\mf\pV c'' | %1
  <g'-4>2 | %2
  <a'-3>2 | %3
  <g'-1>2\pIII | %4
  <f'-1>2\pI | %5
  <e'-0>2 | %6
  <d'-4>4 <b-0> | %7 <b> was <d' b>
  <c' g>4 s | %8
  \bar "||"
  c'4\p\ppI g' | %9
  f'4 b | %10
  c'8. d'16 e'8. f'16 | %11
  b4 d' | %12
  g'4 c' | %13
  f'4 b | %14
  \break
  e'8. d'16 e'8. f'16 | %15
  e'4( d') | %16
  \bar "||"
  <c' g>4\pI c'8. b32 c' | %17
  <g'-4>4 <c'-1>\bpV | %18
  a'4 a' | %19
  \onThreeStrings "2" "3" "4"
  <g'-2>4\startTextSpan\pVIII <g'-2> | %20
  <fis'-2>4\pVII <f'!-2>\pVI | %21
  <e'-1>4\bpV <e'-1> | %22
  <d'-1>4\pIII\stopTextSpan <b-0>\pI | %23
  <c' g e>2 | %24
  \bar "|."
}

varIIB = \transpose c c' {
  \stdOpts
  \time 2/4
  s2 | %1
  s4 <c'-1>~ | %2
  c'4 <f'-4>~ | %3
  f'4 <e'-4 c'-3>~ | %4
  <e' c'>4 <d'-4 g-0>~ | %5
  <d' g>4 <c'-1 a-2>~ | %6
  <c' a>4 <g-0>8. <f-3>16 | %7
  e4 r | %8
  \bar "||"
  s2 * 7 | %9-15
  g2 | %16
  \bar "||"
  e4\f s | %17
  s2 | %18
  g'4 <f'-2> | %19 untied f'
  \fingerRight
  <f'-4 c'-3>4 <e'-4 bes-1> | %20 untied e'
  <e'-4 a-1>4 <d'-4 aes-1> | %21 untied d'
  <d'-4 g-1>4 <c'-1 a!-4> | %22
  <c'-\fngXY #'(0.2 . 0)-3 \parenthesize a-\fngXY #'(0.5 . 0)-4>4 \fingerLeft <g-0>8. <f-3>16 | %23
  s2 | %24
  \bar "|."
}

varIIC = \transpose c c' {
  \stdOpts
  \time 2/4
  <c-3\P>16\pI\f <c'\M> <b\I> <c'\M> <d'\I> <c'\M> <b\I> <c'\M> | %1
  <e-2>16 c' b c' d' c' b c' | %2
  <f-3>16 c' b c' d' c' b c' | %3
  <c-3>16 c' b c' d' c' b c' | %4
  a,16 <a-3> gis a b,\pII b ais b | %5
  c16\pIII c' b c' a,\pI a gis a | %6
  f,16 f e f g,\pIII g fis g | %7
  <c-1>4 c | %8 first c was c,
  \bar "||"
  % these 8 bars have been lowered an octave
  <g,-3>16\pI\mf e dis e f e dis e | %9
  g,16 d! cis d e d cis d | %10
  g,16 g fis g a g fis g | %11
  g,16 f! e f g f e f | %12
  g,16 e dis e f e dis e | %13
  g,16 d! cis d e d cis d | %14
  g, c! b, c d c b, c | %15
  g,16 b, ais, b, c b, ais, b,\ppI | %16
  \bar "||"
  <c-3>16\f c' b c' d' c' b c' | %17
  e16 c' b c' d' c' b c' | %18
  f16 c' b c' d' c' b c' | %19
  \onTwoStrings "5" "3"
  <c-1>16\pIII\startTextSpan <c'-3> <b-2> c' cis\pIV cis' bis cis' | %20 chgd b to bis
  d16\pV d' cis' d' b,\pII b ais b | %21
  c16\pIII c'! b c' a,\pI a gis a\stopTextSpan | %22
  f, f e f g,\pIII g fis g | %23
  <c-1>2 | %24
  \bar "|."
}

% this voice has been added to advise Guitar II to hold initial notes
varIID = \transpose c c' {
  \stdOpts
  \time 2/4
  c2 | %1
  e2 | %2
  f2 | %3
  c2 | %4
  a,4 b, | %5
  c4 a, | %6
  f,4 g, | %7
  s2 | %8
  \bar "||"
  g,2 | %9
  g,2 | %10
  g,2 | %11
  g,2 | %12
  g,2 | %13
  g,2 | %14
  g,2 | %15
  g,2 | %16
  \bar "||"
  c2 | %17
  e2 | %18
  f2 | %19
  c4 cis | %20
  d4 b, | %21
  c4 a, | %22
  f,4 g, | %23
  s2 | %24
  \bar "|."
}

varII = \StffGrp << \varIIA \\ \varIIB >> << \varIIC \\ \varIID >>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

varIIIA = \transpose c c' {
  \stdOpts
  \time 2/4
  \tempo 4=72
  \tuplet 3/2 4 { c8\f\bpV e g c' e' g' } | %1
  \hideTupletNumber
  \tuplet 3/2 4 { c''8 g' f' e'\trill d' c' } | %2
  \tuplet 3/2 4 { <a'-4>8\pVII gis' a' c'' b' a' } | %3 chgd g' to gis'
  \tuplet 3/2 4 { a'8( fis') <g'!-1>-.\bpVIII g'-. c''-. e''-. } | %4
  \tuplet 3/2 4 { <e''-4>8\gls( <f'-1>)\pVI f'-. f' <b'-2> d'' } | %5
  \tuplet 3/2 4 { <d''-4>8\gls( <e'-1>)\bpV e'-. e' <a'> <c''> } | %6
  \tuplet 3/2 4 { <c''-4>8\gls( <d'-1>)\pIII a'-. <a'-4>( <g'-1>) <b-3>-. } | %7
  \tuplet 3/2 4 { <c'-4>8\pII( <g-0>) e-. } c4\fin | %8 raised from lower part
  \bar "|.|"
  \tuplet 3/2 4 { <g'-2>8\p\pVII( fis') <g'-1>-.\bpVIII e'' c'' g' } | %9
  \tuplet 3/2 4 { <g'-4>8\pV( <e'-1>) <f'!-1>-.\pVI d'' <b'-2> <f'> } | %10
  \tuplet 3/2 4 { <f'-3>8(\pIV dis') <e'-1>-.\pV <c''-4> <g'-4> e' } | %11
  \tuplet 3/2 4 { <e'-4>8\pII( cis') <d'-1>-.\pIII f' d' b } | %12
  \tuplet 3/2 4 { g'8\trill\pVII( fis') g'-.\pVIII e'' <cis''-2> g' } | %13 chgd c'' to cis''
  \tuplet 3/2 4 { g'8\pV( e') f'!-.\pVI d'' b' <f'> } | %14
  \tuplet 3/2 4 { <f'>8(\pIV dis') e'-.\bpV c'' a' <fis'-3> } | %15 chgd e' to fis'
  g'8. e'16 <d'-3>4\dcf | %16
  \bar "|."
}

varIIIC = \transpose c c' {
  \stdOpts
  \time 2/4
  <e,-0>4\pI <c-3> | %1 chgd low c, to e,
  c'2 | %2
  c'2 | %3
  c'2 | %4
  c'4 d'\pIII | %5
  <e'-4>4 c'\pI | %6
  a4 <b g> | %7 b4 was b8. d16
  <c' g e c>2 | %8 revoiced to avoid low c,
  \bar "|.|"
  <e-1>4\pII <c-3> | %9
  <d-0>4 <b,-1> | %10
  c4 e | %11
  <f-4>2 | %12
  e4 <cis-4> | %13
  d4 b, | %14
  c!4 c\bpII | %15
  e8. <c-3>16 b,4 | %16
  \bar "|."
}

varIIID = \transpose c c' {
  \stdOpts
  \time 2/4
  s2 | %1
  <e-2>4 c | %2
  <f-4>4 c | %3
  e4 c | %4
  a4 b | %5
  <c'-3>4 a | %6
  f4 f | %7 second f was f'
  s2 | %8
  \bar "|.|"
  <g,-2>2 | %9
  g,2 | %10
  g,2 | %11
  g,2 | %12
  g,2 | %13
  g,2 | %14
  g,4 fis, | %15 was <a, fis,>
  <g,-2>2 | %16
  \bar "|."
}

varIII = \StffGrp \varIIIA  << \varIIIC \\ \varIIID >>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

varIVA = \transpose c c' {
  \stdOpts
  \time 2/4
  \tempo 4=72
  c'4\pI\f c' | %1
  g'4\pIII g' | %2
  << {
    a'2\pV | %3a
    g'2\pIII | %4a
  } \\ {
  } \\ {
    g'4( f') | %3c
    f'4( e') | %4c
  } >>
  \stringUp
  <f'\2 e'-0>4 <f' d'>\pI | %5
  <e' d'>4 <e' c'> | %6
  <d' c'>4\pIII <d' b> | %7
  <c' g>4\pI b\rest\fin | %8
  \bar "||"
  g'4\p\pV g' | %9
  f'2 | %10
  <e'-0>4~\pIII e'8. <a'-4>16 | %11
  <e'-0>4( \tuplet 3/2 4 { <d'-1>8\pIII) <e'-0> <f'-4> } | %12
  g'4\pV g' | %13
  f'2 | %14
  e'4~\pIII e'8. a'16 | %15
  <e'-0>4\pI( \tuplet 3/2 4 { <d'-3>8) <f'-1>\dcf d' } | %16
  \bar "|."
}

varIVB = \transpose c c' {
  \stdOpts
  \time 2/4
  <g e>4 s | %1
  <e' c'>4 s | %2
  c'2 | %3
  c'2 | %4
  c'4 g | %5
  g4 a | %6
  \parenthesize a4 f | %7 a4 may be tacit for simplicity
  e4 s | %8
  \bar "||"
  <e'-0>4 e' | %9
  \once \fingerRight
  <e'-0>4( d') | %10
  d'4( <c'-3>) | %11
  c'4( <b-2>) | %12
  e'4 e' | %13
  e'4( d')\crc | %14
  d'4( c') | %15
  c'4( <b-4>) | %16
  \bar "|."
}

varIVC = \transpose c c' {
  \stdOpts
  \time 2/4
  \tuplet 3/2 4 { c8\pI e g c' e' c' } | %1
  \hideTupletNumber
  \tuplet 3/2 4 { c8 e g c' e' c' } | %2
  \tuplet 3/2 4 { c8 f a c' f' c' } | %3
  \tuplet 3/2 4 { c8 e g c' e' c' } | %4
  \tuplet 3/2 4 { <a,\6>8-.\pV gis( a) <b,\6>\pVII-. ais( b) } | %5
  \tuplet 3/2 4 { c8-.\pVIII b( c') a,!-.\pV gis( a!) } | %6
  \tuplet 3/2 4 { f,8-.\pI e( f) g,!-.\pIII fis( g!) } | %7
  \tuplet 3/2 4 { c8\pI e g } c'4 | %8
  \bar "||"
  \tuplet 3/2 4 { g,8 c e g c' e' } | %9
  \tuplet 3/2 4 { g'8 fis' g' g a b } | %10
  \tuplet 3/2 4 { c'8 b c' c e f! } | %11
  \tuplet 3/2 4 { g8 fis g } g,4 | %12
  \tuplet 3/2 4 { g,8 c e g c' e' } | %13
  \tuplet 3/2 4 { g'8 fis' g' g a b } | %14
  \tuplet 3/2 4 { c'8 b c' c e f! } | %15
  \tuplet 3/2 4 { g8 fis g } g,4 | %16
  \bar "|."
}

varIV = \StffGrp << \varIVA \\ \varIVB >> \varIVC

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

varVA = \transpose c c' {
  \stdOpts
  \time 2/4
  \tempo 4=84
  c'4-.\pVII r8 c'-. | %1
  g'4-. r8 g'-. | %2
  a'4-. r8 a'-. | %3
  \onTwoStrings "2" "3"
  <g'-3>4-.\pVI r8 <g'-3 e'-4>\startTextSpan | %4
  \tempo 4=92
  r8 \once \fingerRight <f'-1 e'> r <f' d'-3> | %5
  r8 <e' d'>\bpV r <e' c'> | %6
  r8 <d' c'-3>\pIII r <d' b-2> | %7
  c'4\stopTextSpan r | %8
  \tempo 4=100
  \bar "||"
  \onOneString "2"
  <g'-4>4\startTextSpan r8 <g'-4>( | %9
  <fis'-4>4) r8 <f'!-3>( | %10
  <e'-3>4) r8 <ees'-2>( | %11
  \stringUp
  <d'-2>4)\stopTextSpan r8 <g-1\4> | %12
  \tempo 4=108
  <g'-4>4\startTextSpan r8 <g'-4>16( <fis'-4>) | %13
  <f'!-3>4 r8 <f'-3>16( <e'-3>) | %14
  <ees'-2>4 r8 <fis'-2>16( <g'-2>)\stopTextSpan | %15
  <d'-1>4 r8 <f'!-2>16(\pV <d'-3>) | %16
  \tempo 4=116
  \bar "||"
  <c'-1>4 r8 c'16\bpV( e') | %17
  g'4 r8 g'16( e') | %18
  a'4 r8 a'16( <c''-4>) | %19
  <g'-4>4 r8 <e'-1>16(\pV\startTextSpan <g'-4>) | %20
  \tempo 4=124
  r8 <g'-4>16( <fis'-4>) r8 <d'-1>16(\pIII <f'!-\fngXY #'(0.1 . 0.5)-4>) | %21
  r8 <f'-4>16( <e'-4>)\stopTextSpan \onOneString "1"  r8 <g'-1>16(\startTextSpan <e'-0>\stopTextSpan) | %22
  \onOneString "2"
  r8 <cis'-1>16(\pII\startTextSpan <d'-1>) r8 <f'-4>16( <d'-1>)\stopTextSpan | %23
  \onOneString "3"
  r8 <b-2>16(\startTextSpan <c'!-2>)\stopTextSpan r4 | %24
  \bar "|."
}

varVC = \transpose c c' {
  \stdOpts
  \time 2/4
  r8 <c-2>-.\pII e4-. | %1
  r8 e-. c4-. | %2
  r8 <f-3>-. c4-. | %3
  r8 e c4 | %4
  <d-4>8 r <b,-1> r | %5
  <c-2>8 r <a,-4> r | %6
  <f,-1>8\pI r <g,-3> r | %7
  r8 <g-4>\pIII <c-1>4 | %8 g c was c c,
  \bar "||"
  r8 <e-1>\pII <g,-2>4 | %9
  r8 <d-4> g,4 | %10
  r8 <c-3> g,4 | %11
  r8 <b,-1> g,4 | %12
  r8 e g,4 | %13
  r8 d g,4 | %14
  r8 c g,4 | %15
  r8 b, g,4 | %16
  \bar "||"
  r8 <e,-0>16\pII <g,-2> <c-3>4 | %17 e, g, c was c, e, g,
  r8 <c-3>16 <e-1> <g-0>4 | %18
  r8 <f-3>16 <a-1> <c-2>4 | %19
  r8 <e-1>16 <g-0> <c-2>4 | %20
  \onOneString "5"
  <d-4>8\startTextSpan r <b,-1> r | %21
  <c-2>8\stopTextSpan
  \onOneString "6"
  r <e,-0>\pI\startTextSpan r | %22
  <f,-1>8 r <g,-3> r | %23
  <c-1>8\stopTextSpan\BpVIII r <c''\1> r | %24 c'' was c,
  \bar "|."
}

varV = \StffGrp \varVA \varVC

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

varVIA = \transpose c c' {
  \stdOpts
  \time 2/4
  \tempo 4=60
  <c' g e>8-.\p\bpV r <c' g e>-. r | %1
  <g' e' c'>8-.\pIII r <g' e' c'>-. r | %2
  <a' g' c'>8\pV\crc r <a' f' c'> r | %3
  <g'-2 f'-4 >8\pVII r <g' e'-4> r | %4
  \once \fingerRight
  <f'-1 e' a-2>8\pVI r <f'-2 d'-3 g-1>\pV r | %5
  <e' d'-3 g>8\bpV r <e' c' a-3>\f r | %6
  \onThreeStrings "3" "4" "5"
  <d' a f-2>8\bpVII\startTextSpan r <b-2 f-1 d-3>\pIII r | %7
  <c' g e-3>4\bpV\stopTextSpan r\fin | %8
  \bar "||"
  g16\p\pIV fis g fis g fis g fis | %9
  g16 fis g fis g a b g | %10
  c'16 b c' d' e'\pV d' e' fis' | %11
  g'16\crc fis' g' fis' g' fis' g' fis' | %12
  g'16 fis' g' fis' g' fis' g' fis' | %13
  g'16 fis' g' fis' g' a' b' g' | %14
  c'16\f\pIV b c' d' e'\pV d' e' fis' | %15 lowered octave
  g'16\> a' f'! g' e' f' d'\dcf e'\bpV\! | %16 lowered octave
  \bar "|."
}

varVIC = \transpose c c' {
  \stdOpts
  \time 2/4
  c16\pI\f b, c b, c b, c b, | %1
  c16 b, c b, c d e c | %2
  f16 e f e f g a b | %3
  c'16 b c' b c' d' e' c' | %4
  d'16 cis' d' c' b a b g | %5
  c'16 b c' b a gis a g | %6
  f16 e f d g fis g <g,-3> | %7
  <c-4>16 g, e, g, c4 | %8 raised final C an octave
  \bar "||"
  <e g,>4\pII\p <e g,> | %9
  <f d g,>4\bpIII <f d g,> | %10
  <e c g,>4\pII <e c g,> | %11
  <d b, g,>4 <d b, g,> | %12
  <g e g,>4 <g e g,> | %13
  <f d g,>4\pIII <f d g,> | %14
  <e c g,>4\pII <e c g,> | %15
  <d b, g,>4 r | %16
  \bar "|."
}

varVI = \StffGrp \varVIA \varVIC

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

varVIIA = \transpose c c' {
  \stdOpts
  \time 2/4
  \tempo 4=60
  c8\f\pVII d16 e f g a b | %1
  c'16 d' e' f' g' a' b' c'' | %2
  b'16 a' gis' a' d'' c'' b' a' | %3
  \fingerUp
  a'16 g'! fis' g' r <g'-1\2>\pVIII e'' g' | %4
  \onTwoStrings "3" "1"
  r16 <f'!-3>\startTextSpan e'' f' r f' <d''-4> f' | %5
  r16 <e'-3> d'' e' r e' <c''-2> e' | %6
  r16 <d'-1> c'' d' r d' <b'-2> d' | %7
  <c''-4 c'-1>4\fin\stopTextSpan r | %8 was <c'' e' g'>
  \bar "|.|"
  g'16\p\bpVIII c'' e'' d'' c'' b' a' g' | %9
  f'16\>\pVII e' d' c' b a g f\! | %10
  e8 e'-.\< f'-. fis'-. | %11
  g'8.\> e'16 d'8\! r | %12
  g'16\mf\bpVIII c'' e'' d'' c'' b' a' g' | %13
  f'!16\>\pVII e' d' c' b a g f\! | %14
  e8 e'-.\< f'-. fis'-. | %15
  g'8.\> e'16 d'8\!\dcf r | %16
  \bar "|."
}

varVIIC = \transpose c c' {
  \stdOpts
  \time 2/4
  g,4\bpIII c | %1
  <e-1>4(\pVII c) | %2
  f4( c) | %3
  \onTwoStrings "4" "6"
  e4 <c'-4 c-2>\startTextSpan | %4
  <a-4 a,-1>4 <b b,> | %5
  <gis gis,>4 <a a,> | %6
  <f f,>4 <g! g,!>\stopTextSpan | %7 chgd e! to g!
  <c-2 e-1 g>4\pII r %8 was <c c,>
  \bar "|.|"
  <e g,-2>2\ppII | %9
  <d g,> | %10
  <c g,> | %11
  <b, g,> | %12
  <e g,>2 | %13
  <d g,> | %14
  <c g,> | %15
  <b, g,> | %16
  \bar "|."
}

varVII = \StffGrp \varVIIA \varVIIC

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%{ this earlier version used overlapping ties per original
varVIIIA = \transpose c c' {
  \stdOpts
  \time 2/4
  \key c \minor
  c'8 d' ees' f' | %1
  g'4 s | %2
  aes'2 | %3
  g'2 | %4
  <f' g>2 | %5
  ees'2 | %6
  d'2 | %7
  c'2 | %8
  \bar "||"
  r8 g' aes' g' | %9
  fis'4 f' | %10
  e'4 ees'~ | %11
  ees'4 d'~ | %12
  d'4 c'~ | %13
  c'4 b | %14
  c'8 c' d' ees' | %15
  g'8 f' ees'-. d'-. | %16
  \bar "||"
  c'8-. d'-. ees'-. f'-. | %17
  fis'8( g'16) r fis'8( g'16) r | %18
  aes'2 | %19
  g'2 | %20
  <f' g>2 | %21
  ees'2 | %22
  d'2 | %23
  c'2 | %24
  \bar "|."
}

varVIIIB = \transpose c c' {
  \stdOpts
  \time 2/4
  \key c \minor
  s2 | %1
  s4 g' | %2
  s4 f'~ | %3
  f'4 ees'~ | %4
  ees'4 d'~ | %5
  <d' g>4 c'~ | %6
  c'4 b! | %7
  s2 | %8
  \bar "||"
  g2 | %9
  a4( b | %10
  c'8\noBeam) g( aes! g | %11
  fis4) f | %12
  e4 ees | %13
  ees aes! | %14
  g2 | %15
  g2 | %16
  \bar "||"
  s2 | %17
  s2 | %18
  s4 f'~ | %19
  f'4 ees'~ | %20
  ees'4 d'~ | %21
  <d' g>4 c'~ | %22
  c'4 b! | %23
  s2 | %24
  \bar "|."
}
%}

varVIIIA = \transpose c c' {
  \stdOpts
  \time 2/4
  \tempo 4=68
  \key c \minor
  c'8\pIII d' ees' f' | %1
  g'4 s | %2
  aes'4\( s | %3 was overlapping half notes in each voice, m2-m8
  g'4 s | %4
  f'4 \once \stemDown d' | %5
  ees'4 s | %6
  d'4 s | %7
  <c'-4>2\) | %8
  \bar "||"
  r8 g' aes' g' | %9
  <fis'-4>4\pV <f'-4>\pIV | %10
  e'4\bpV ees'\bpIV | %11  ees' was tied across bar line
  s4 d'\bpIII | %12 d' was tied across bar line
  s4 c'\bpI | %13 c' was tied across bar line, was <c'a>
  s4 b | %14
  c'8\pIII c' d' ees' | %15
  g'8 f' ees'-. d'-. | %16
  \bar "||"
  c'8-. d'-. ees'-. f'-. | %17
  fis'8(\pII g'16) r fis'8( g'16) r | %18
  <aes'-2>4\pIII\( s | %19
  g'4 s | %20
  f'4 \once \stemDown d' | %21
  ees'4 s | %22
  d'4 s | %23
  c'2\) | %24
  \bar "|."
}

varVIIIB = \transpose c c' {
  \stdOpts
  \time 2/4
  \key c \minor
  s2 | %1
  s4 g' | %2 was overlapping half notes in each voice, m2-m8
  s4 f' | %3
  s4 ees' | %4
  <g-0>2 | %5
  <g-0>4 c' | %6
  s4 b! | %7
  s2 | %8
  \bar "||"
  <g-3>2 | %9
  <a-3>4( <b-1> | %10
  c'8\noBeam) g( aes! g | %11
  fis4) f | %12
  e4\pII ees | %13
  ees aes | %14
  g2 | %15
  g2 | %16
  \bar "||"
  s2 | %17
  s2 | %18
  s4 f' | %19
  s4 ees' | %20
  <g-0>2 | %21
  <g-0>4 c' | %22
  s4 b! | %23
  s2 | %24
  \bar "|."
}

varVIIIC = \transpose c c' {
  \stdOpts
  \time 2/4
  \key c \minor
  R2 | %1
  R2 | %2
  f8\pIII g aes bes | %3
  c'4 c' | %4
  g,8 a,! b,! g,\bpIII | %5
  c8 g, <aes,!-2> <es-4> | %6 was es,
  f8 <d-3> <g-4> g, | %7 was octave lower
  c2 | %8 was octave lower
  \bar "||"
  <g,-2>2\pII | %9 omitted lower octave
  g,2 | %10 omitted lower octave
  g,2 | %11
  a,4( b, | %12
  <c-3>8\noBeam) <g,-2>( aes,! g, | %13 omitted lower octave
  fis,4) f!\pI | %14 omitted lower octave
  e4 es | %15 omitted lower octave
  d4 <g,-3> | %16 omitted lower octave
  \bar "||"
  c4 r | %17 omitted lower octave
  R2 | %18
  f8\pIII g aes bes | %19
  b8 c'16 r b8 c'16 r | %20
  g,8 a,! b,! g,\bpIII | %21
  c8 g, aes,! es | %22
  f8 d g g, | %23
  c2 | %24
  \bar "|."
}

varVIII = \StffGrp << \varVIIIA \\ \varVIIIB >>  \varVIIIC

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

varviiiA = \transpose c c' {
  \stdOpts
  \time 2/4
  \key a \minor
  a'8 b' c'' d'' | %1
  e''4 s | %2
  f''2 | %3
  e''2 | %4
  <d'' e'>2 | %5
  c''2 | %6
  b'2 | %7
  a'2 | %8
  \bar "||"
  r8 e'' f'' e'' | %9
  dis''4 d'' | %10
  cis''4 c''~ | %11
  c''4 b'~ | %12
  b'4 a'~ | %13
  a'4 gis' | %14
  a'8 a' b' c'' | %15
  e''8 d'' c''-. b'-. | %16
  \bar "||"
  a'8-. b'-. c''-. d''-. | %17
  dis''8( e''16) r dis''8( e''16) r | %18
  f''2 | %19
  e''2 | %20
  <d'' e'>2 | %21
  c''2 | %22
  b'2 | %23
  a'2 | %24
  \bar "|."
}

varviiiB = \transpose c c' {
  \stdOpts
  \time 2/4
  \key a \minor
  s2 | %1
  s4 e''~ | %2
  e''4 d''~ | %3
  d''4 c''~ | %4
  c''4 b'~ | %5
  <b' e'>4 a'~ | %6
  a'4 gis'! | %7
  s2 | %8
  \bar "||"
  e'2 | %9
  fis'4 gis' | %10
  a'8 e' f'! e' | %11
  dis'4 d' | %12
  cis'4 c' | %13
  c' f'! | %14
  e'2 | %15
  e'2 | %16
  \bar "||"
  s2 | %17
  s2 | %18
  e''4 d''~ | %19
  d''4 c''~ | %20
  c''4 b'~ | %21
  <b' e'>4 a'~ | %22
  a'4 gis'! | %23
  s2 | %24
  \bar "|."
}

varviiiC = \transpose c c' {
  \stdOpts
  \time 2/4
  \key a \minor
  R2 | %1
  R2 | %2
  d'8 e' f' g' | %3
  a'4 a' | %4
  e8 fis! gis! e | %5
  a8 e f! c | %6
  d8 b, e e, | %7
  a,2 | %8
  \bar "||"
  e2 | %9
  e2 | %10
  e2 | %11
  << {
    fis4 gis | %12a
  } \\ {
    e2 | %12b
  } >>
  a8 e f! e | %13
  dis4 d | %14
  cis4 c | %15
  b,4 e, | %16
  \bar "||"
  R2 | %17
  R2 | %18
  d'8 e' f' g' | %19
  gis'8 a'16 r gis'8 a'16 r | %20
  e8 fis! gis! e | %21
  a8 e f! c | %22
  d8 b, e e, | %23
  a,2 | %24
  \bar "|."
}

varviii = \StffGrp << \varviiiA \\ \varviiiB >>  \varviiiC

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

varIXA = \transpose c c' {
  \stdOpts
  \time 2/4
  \tempo 4=120
  s2\p | %1
  s2 | %2
  <a'-1>2 | %3
  <g'-1>2\pIII | %4
  <f'-1>2\pI | %5
  <e'-\fngXY #'(1.0 . 1.2)-0>4. c'8 | %6
  c'8(\f b a b | %7
  c'4) b\rest | %8
  \bar "||"
  g'4-.\p g'-. | %9
  f'4-. f'-. | %10
  e'4 e'8. f'16 | %11
  e'4 d' | %12
  c'4 c'~ | %13
  c'8 b a b | %14
  c'8-.\<\pV c' d' e' | %15
  f'8-. g'-. a'-. b'-. | %16
  c''4-.\!\f c''-.\p | %17
  g'4-. g'-. | %18
  a'4-. a'-. | %19
  g'4-. e'8.( g'16 | %20
  f'4-.)\pIII d'8.( f'16 | %21
  e'4-.) c'-.\pI | %22
  c'8(\f b a b | %23
  c'4 ) b\rest | %24
  \bar "|."
}

varIXB = \transpose c c' {
  \stdOpts
  \time 2/4
  c'4-.\pV c'-. | %1
  g'4-. g'~ | %2
  g'4 <f'-4>~ | %3
  f'4 <e'-4>~ | %4
  e'4 <d'-4>~ | %5
  d'4 <c'-1>8 r | %6
  d4 f | %7 was <d f>2
  e4 s | %8
  \bar "||"
  s2 * 4 | %9-12
  g2 | %13
  g2 | %14
  g2 | %15
  g4 r | %16
  s2 | %17
  s2 | %18
  f'4 f' | %19
  c'4 c' | %20
  b4 b | %21
  c'4 <g e> | %22
  d4 f | %23 was <d f>2
  <g e>4 s | %24
  \bar "|."
}

varIXC = \transpose c c' {
  \stdOpts
  \time 2/4
  \bar "||"
  R2 | %1
  R2 | %2
  f4-.\pIII f-. | %3
  c'4-. c'-. | %4
  g4-. g-. | %5 was g,
  c4-. c-. | %6
  g,4-. g,-. | %7 was <g,, g,,,>
  c4 r | %8 was c,
  \bar "||"
  R2 | %9
  R2 | %10
  <c' g>4-.\pIII <c' g>-. | %11
  <b f>4-. <b f>-. | %12
  <g e>4-.\pV <g e>-. | %13 was <e g,>
  <f d>4-.\pIII <f d>-. | %14 was <d f,>
  <e g,>4-.\pII <e g,>-. | %15
  <d f,>4-.\pI <d f,>-. | %16
  <c e,>4-. r | %17
  R2 *3 | %18-20
  g4-.\bpIII g-. | %21
  c4-. c-. | %22
  g,4-. g,-. | %23 was <g, g,,>
  c4 r | %24 was <c c,>
  \bar "|."
}

varIX = \StffGrp << \varIXA \\ \varIXB >> \varIXC

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

varXA = \transpose c c' {
  \stdOpts
  \time 4/4
  \tempo 2=42
  r8\pp <e-3>\bpV( c' e) r e( g e) | %1
  r8 <e-1>\pVII( <c'-4> e) r e( c' e) | %2
  r8 <f-2>( c' f) r f( c' f) | %3
  r8 e( c' e) r\p bes\bpVIII( <g' e'-2> bes) | %4
  r8 a\bpVII( <fis' d'> a) r aes\bpVI( <f' d'-2> aes) | %5
  r8 g\bpV( <e' c'> g) r <a!-4>\pIV( <ees'-1 c'-\fngXY #'(1.0 . -0.2)-2> a) | %6
  r8 <g-3>\pIII(\rit <d'-1 c'-4> g) r f!\bpIII( <d' b-2> f | %7
  <c'-4 e-1>2\pII) r\fin | %8
  \bar "||"
  r8 <e-3>\pV( <c'-1> e) r e( c' e) | %9
  r8 <d-2>\pIV( <c'-3> d) r d( <b-1> d) | %10
  r8 <c-1>\pIII( <c'-3> c) r <g-2>\pIV( <ees' c'-3> g) | %11
  r8 <a-4>\pIII( <d' c'-3> a) r <aes-4>( <d' b-2> aes) | %12
  r8 g\bpV( <e'! c'> g) r g( <g' cis'> g) | %13
  r8 a\bpVII( <fis' d'> a) r aes\bpVI( <f'! d'-2> aes) | %14
  r8 g\bpV( <e' c'!> g) r a!\pIV( <ees' c'> a | %15
  <d'-1 b-2>8\pIII\> <c'-3> <b-2> <a-4>\pV <g-1> <f-4> <e-3>\dcf <d-1>\!) | %16
  \bar "|."
}

varXC = \transpose c c' {
  \stdOpts
  \time 4/4
  c2\pIII c'( | %1
  g'2 g' | %2
  a'2 a' | %3
  g'2) <cis-2>( | %4
  <d-4>2\pII b, | %5
  c!2) fis,( | %6
  g,2) <g,-2>( | %7
  <g-4>2) <c-2> | %8 was c c,
  \bar "||"
  g,2 g'\pI( | %9
  fis'2 f' | %10
  e'2) g,( | %11
  fis,2 f, | %12
  e,2) <ees-4>\pIII( | %13 raised 13-16 an octave
  d2 <b,-1>\pII | %14
  c2 fis, | %15
  g,2) r | %16
  \bar "|."
}

varX = \StffGrp \varXA \varXC

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

varXIA = \transpose c c' {
  \stdOpts
  \time 4/4
  \tempo 4=64
  c'4.\p\bpV g8 e'4. c'8 | %1
  <g'-4>4 g'2 g'4 | %2
  <a' g' c'>4\fp <a' f'-2 c'>2 <a' f'-4 c'>4 | %3
  <g' f' c'-3>4\fp\pIII <g' e'-4 c'>2 <g'-1 e'-2 c'-3>4\pVIII | %4
  %g'8 <f'-3> f'4 r8 \ac{e''8} d''8 \ac{c''8} b'8 \ac{a'8} g'8 | %5
  \onOneString "2"
  g'8 <f'-3> f'4 r8 <d''-4>8\pVII <b'-1>8 <g'-4>8\startTextSpan | %5 (removed acciaccatura)
  %f'8. dis'16 e'4 r8 \ac{a'} g' \ac{f'} e' \ac{d'!} c' | %6
  <f'-3>8.\pIV <dis'-1>16 <e'-3>4\stopTextSpan r8 <g'-1>\pIII <e'-0> <c'-1>\pI | %6 (removed acciaccatura)
  b8. a16\fe \ac{g'8} f'( e'16 d' c'4) b | %7
  <d'-4 g f-3>2( <c' g e>4)\fin r | %8 omitted b from first chord
  \bar "|.|"
  g'4.(\p\pVII a'16 b') c''8-. b'-. a'-. g'-. | %9
  g'8 f'16 r e'8 d'16 r c'4 b8 r | %10
  %c'4. \gr{d'16 c' b c'} d'8 e'4. \gr{f'16 e' d' e'} f'8 | %11
  c'4. d'8 e'4. f'8 | %11 (removed turns)
  e'4.( f'16 e' d'8) e'-. f'-. fis'-. | %12
  <g'-1>4.\pVIII( a'16 b' c'' d'' e'' d'' c'' b' a' g') | %13
  \onOneString "1"
  g'16( f') f''(\startTextSpan e'') e''(\crc d'') d''( c'') c''( b') b'( a') a'( g') g'( f') | %14
  <e'-0>8.\stopTextSpan <c''-1>16\pVIII c''4~\fe\f c''16( d''\> e'' d'' c''8. fis'16\pVII\! | %15
  <a'-4>2 <g'-2>4) \tuplet 3/2 { r16\fe a'\p\BpV g' } \tuplet 3/2 { f'16 e' d'\dcf } | %16
  \bar "|."
}

varXIC = \transpose c c' {
  \stdOpts
  \time 4/4
  R1 | %1
  <c-3>4.\pII <g,-2>8 <e-1>4. c8 | %2
  <f-4>4. c8 <a-1>4. f8 | %3 raised octave
  c4. g,8 e4. c8 | %4 raised octave
  <f-4 a,-0>4\pI r <g d b,-2> r | %5 (removed c)
  <g e c>4 r <c' g e> r | %6 raised octave
  << {
    \fingerLeft
    d2 <e-2>4 d | %7a
  } \\ {
    \fingerLeft
    <f,-1>2 <g,-3> | %7b
  } >>
  <c-4>4 g, c r | %8 final c instead of c,
  \bar "|.|"
  <g,-2>8\pII <e-1 c-3> <e c> <e c> g,8 <e c> <e c> <e c> | %9
  <g,-1>8\bpIII <f d-4> <f d> <f d> g,8 <f d> <f d> <f d> | %10
  <g-0 e-2>4.\pI <g b,-1>8 <g c-3>4. <d-0 f,-1>8 | %11
  <c-4 g,-3>2( <b,-2 g,>4) r | %12
  <g,-2>8\pII <g e-1> <g e> <g e> g,8 <g e> <g e> <g e> | %13
  <g,-1>8\bpIII <f-1 d-4> <f d> <f d> <g,-2>8\pII <d b,-1> <d b,> <d b,> | %14
  <c-3 e-1>4 <fis-2 c-1 a,-3>2\fe\pIII r4 | %15
  <c-3 g,-2>2\pII( <b,-1 g,>4) r\fe | %16
  \bar "|."
}

varXI = \StffGrp \varXIA \varXIC

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

varXIIA = \transpose c c' {
  \stdOpts
  \time 3/4
  \tempo 4=72
  <c' g e-3>4\f\bpV r <c'-2>8.\trill\pIV( <b-1>32 <c'-1>\pV | %1
  <g'-4>4) r c'8.\trill\pIV( b32 c'\bpV | %2
  <a' g'-4 c'>4\bpV <a' f'-2 c'> < a' f' c'> | %3
  <g'-2 e'-3>4)\pVII r <g'-2>8.\trill( fis'32 g' | %4
  fis'4) r <f'!-2>8.\trill\pV( e'32 f' | %5
  e'4) r <c'-2>8.\trill\pIV( b32 c' | %6
  <d'-4>4 <f'-3>) <b-2 f-1 d-3>\pIII( | %7
  \bar "||"
  <c'\coda g e-3>4\bpV) r r | %8
  \fingerUp
  <a'-1>16\p\pX <g'-3> <fis'-2> g' fis' g' fis' g' fis' g' fis' g' | %9
  <g'-1>16\pVIII <f'!-3> <e'-2> f' e' f' e' f' e' f' e' f' | %10
  <f'-3>16\ppVIII <e'-2> <dis'-1> e' dis' e' dis' e' dis' e' dis' e' | %11
  <e'-4>16\pVI <d'!-2> <cis'-1> d' cis' d' cis' d' cis' d' cis' d' | %12
  <a'-1>16\pX <g'-3> <fis'-2> g' fis' g' fis' g' <e''-4> g' e'' g' | %13
  <g'-1>16\pVIII <f'!-3> <e'-2> f' e' f' e' f' <d''-4> f' d'' f' | %14
  <f'-3>16\ppVIII <e'-2> <dis'-1> e' dis' e' dis' e' <c''-1> e' c'' e' | %15
  <e'-4>16\pVI <d'!-2> <cis'-1> d' cis' d' cis' d' <g'-3> <b-4> g' b\dcf | %16
  \bar "|."
  \break
  \fingerLeft
  <c' g e>4\coda^\markup{\larger "Coda"} r <g'-2>8.\trill\pVII( fis'32 g' | %17
  fis'4) r <f'!-2>8.\trill\pV( e'32 f' | %18
  e'4) r <c'-2>8.\trill\pIV( b32 c' | %19
  d'4) r <b-2 f-1 d-3>\pVIII( | %20
  \fingerUp
  <c'-4>16) <g-3> <a-1>\pVII b c' d' e' f' g' a' b' <c''-2> | %21
  <g'-1>16 <a'-4> <f'-4> <g'-1> e' f' d' e' c' d' b d' | %22
  <c'-4>16 <g-3>\p <a-1> b c' d' e' f' g' a' b' c'' | %23
  g'16 a' f' g' e' f' d' e' c' d' b d' | %24
  c'4 r16\crc \onOneString "6" c\startTextSpan b, c\stopTextSpan r \onOneString "5" e\pVI\startTextSpan dis e | %25
  r16 g\pVII fis g r e\pVI dis e r g\pVII fis g\stopTextSpan | %26
  r16 \onOneString "4" c'\startTextSpan b c'\stopTextSpan r \onOneString "3" e'\startTextSpan dis' e'\stopTextSpan r \onOneString "2" <g'-2>\bpVII\startTextSpan <fis'-1> <g'-1>\bpVIII\stopTextSpan | %27
  <c'' g' e' c'>2\ff r4 | %28
  \bar "|."
}

varXIIC = \transpose c c' {
  \stdOpts
  \time 3/4
  <g,-3>16  <c-4>\pI b, c d c b, c d c b, c | %1 g, was c,
  <e,-0>16 <c-3> b, c d c b, c d c b, c | %2
  <f,-1>16 <c-3> b, c d c b, c d c b, c | %3
  <c-1>16\pIII <c'-4> <b-3> c' <d'-2> c' b c' <cis-1>\pIV <cis'-4> <bis-3> cis' | %4 chgd b to bis
  <d-1>16\pV <d'-4> <cis'-3> d' <e'-2> d' cis' d' <b,-1>\pII <b-4> <ais-3> b | %5 chgd a to ais
  <c-1>16\pIII <c'-4> <b-3> c' <d'-2> c' b c' <a,-0>\pI <a-3> <gis-2> a | %6
  <f,-1>16 <f-3> <e-2> f <g!-0> f e f <g,-1>\pIII <g-3> <fis-2> g | %7
  \fingerDown
  <c-1>16\coda <d-0> <e-2>\pI <f-3> g a b c' c4 | %8
  \bar "||"
  <g,-3>16\ppI <e-2> <dis-1> e dis e dis e dis e dis e | %9
  <g,-1>16\pIII <d!-3> <cis-2> d cis d cis d cis d cis d | %10
  <g,-2>16\pII <c!-3> <b,-1> c b, c b, c b, c b, c | %11
  <g,-2>16\ppII <f-3> <e-1> f e f e f e f e f | %12
  <g,-3>16\pI e dis e dis e dis e g, e g, e | %13
  <g,-1>16\pIII d! cis d cis d cis d g, d g, d | %14
  <g,-2>16\pII c! b, c b, c b, c g, c g, c | %15
  <g,-2>16\ppII f e f e f e f g, f g, f | %16
  \bar "|."
  <e,-0>16\coda <e-2>\pI <dis-1> e <f-3> e dis e <ees-1> <ees'-4> <d'-3> ees' | %17 chgd d to dis
  <d-0>16 <d'-2>\pII <cis'-1> d' <e'!-4> d' cis' d' <b,-1> <b-4> <ais-3> b | %18 chgd a to ais
  <c!-1>16\pIII <c'!-4> <b-3> c' <d'-2> c' b c' <a,-0>\pI <a-3> <gis-2> a | %19
  <f,-1>16 <f-3> <e-2> f <g!-0> f e f <g,-1>\pIII <g-3> <fis-2> g | %20
  \once \fingerLeft <c-2 e-1>4\pII r r | %21
  << {
    <e-1>8( <d-0> <c-3> <f-4> e d | %22a
    e4) s s | %23a
    e8( d c f e d | %24a
    <e c>4) e, e, | %25 first e, was c,
  } \\ {
      \fingerLeft
      <g,-2>2. | %22b
      c4 r r | %23b
      g,2. | %24b
      s2. | %25b
  } >>
  g,4 e, <g,-2> | %26
  <c-3>4\pI <e e,> <g g,> | %27
  <c' g e c>2 r4 | %28
  \bar "|."
}

varXII = \StffGrp \varXIIA \varXIIC

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

varQA = \transpose c c' {
  \stdOpts
  \time 2/4
  \bar "|."
}

varQC = \transpose c c' {
  \stdOpts
  \time 2/4
  \bar "|."
}

varQ = \StffGrp \varQA \varQC


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\score {
  \header { piece = \markup { \bold "1. Preludio (Var. I)" } }
  \varI
  \layout { }
}

\pageBreak

\score {
  \header { piece = \markup { \bold "2. Grazioso (Var. VII)" } }
  \varVII
  \layout { }
}

\score {
  \header { piece = \markup { \bold "3. Fuga Minore (Var. VIII)" } }
  \varVIII
  \layout { }
}

\score {
  \header { piece = \markup { \bold "4. Arioso (Var. III)" } }
  \varIII
  \layout { }
}

\pageBreak

\score {
  \header { piece = \markup { \bold "5. Andante (Var. II)" } }
  \varII
  \layout { }
}

\pageBreak

\score {
  \header { piece = \markup { \bold "6. Adagio (Var. XI)" } }
  \varXI
  \layout { }
}

\pageBreak

\score {
  \header { piece = \markup { \bold "7. Legato (Var. VI)" } }
  \varVI
  \layout { }
}

\pageBreak

\score {
  \header { piece = \markup { \bold "8. Accelerando (Var. V)" } }
  \varV
  \layout { }
}

\score {
  \header { piece = \markup { \bold "9. Allegro (Thema)" } }
  \thema
  \layout { }
}


\score {
  \header { piece = \markup { \bold "10. Moderato (Var. IV)" } }
  \varIV
  \layout { }
}

\score {
  \header { piece = \markup { \bold "11. Fuga Maggiore (Var. IX)" } }
  \varIX
  \layout { }
}

\score {
  \header { piece = \markup { \bold "12. Placido (Var. X)" } }
  \varX
  \layout { }
}


\score {
  \header { piece = \markup { \bold "13. Finale (Var. XII)" } }
  \varXII
  \layout { }
}


\score {
  {
    \varI
    s1
    \varVII
    s1
    \varVIII
    s1
    \varIII
    s1
    \varII
    s1
    \varXI
    s1
    \varVI
    s1
    \varV
    s1
    \thema
    s1
    \varIV
    s1
    \varIX
    s1
    \varX
    s1
    \varXII
    s1
  }
  \midi {
    \transposition c % guitar plays octave lower than writtenn
    \context{
      \Voice
      \remove "Dynamic_performer"
    }
  }
}


\bookpart {
  \header {
    title = "Annotations"
    subtitle = ##f
    composer = ##f
    arranger = ##f
  }
  \paper {
    page-count = #10
    top-margin = \top-margin-default + 8\mm
    left-margin = \left-margin-default + 4\mm
    right-margin = \right-margin-default + 4\mm
    ragged-bottom = ##t
    ragged-last-bottom = ##t
  }

  \markuplist {
   \override-lines #'(hdg-absfontsize . 11)
   \override-lines #'(par-absfontsize . 11)
   \override-lines #'(hdg-vspace . 1.0)
   \override-lines #'(par-vspace . 0.5)
   \override-lines #'(bull-vspace . 0) {

    \heading "Thirteen Scherzi"
    \paragraph {
      The term “scherzo”, originally from the Italian word for
      “jest” or “joke”, has come to mean any brief, light-hearted
      piece of music.  The thirteen scherzi in this edition,
      though not so-named by Mozart, have come to fit both
      senses of the word, due to the theme of these variations
      and the new order in which they are here presented.
    }
    \heading "An Exceedingly Popular Theme"
    \paragraph {
      The theme on which Mozart based these twelve variations
      was an eighteenth century French children's song
      that was later adapted as the melody for three nineteenth
      century English nursery rhymes (“Baa Baa Black Sheep”,
      “Twinkle Twinkle Little Star” and “The A.B.C. Song”).
      By now in the twenty-first century, the theme is instantly
      recognized as “Twinkle Twinkle Little Star” and there is
      even a popular misconception that Mozart composed it.
    }
    \heading "Delaying Recognition"
    \paragraph {
      Because of the theme's current familiarity,
      the order of presentation in this edition
      has been purposely modified to delay its recognition, in the hope
      this will allow greater appreciation of the variations before
      their association with children's music is realized.
      In this respect, guitarists may be reminded of Benjamin
      Britten's “Nocturnal After John Dowland” (Op. 70, 1963) in which
      Dowland's original theme, instead of being first,
      is presented after all of Britten's variations.
      In that work, the variations could be portraying thoughts
      one needs to clear from the mind in order to appreciate
      the theme. Here, it is the theme that needs to be
      cleared in order to appreciate the variations.
    }
    \heading "The New Order"
    \paragraph {
      In this edition, placement of the theme relative to the variations
      is not so extreme as Britten's example.  Of Mozart's
      twelve variations, the last demands to be last (listen to it)
      and is retained as a Finale, while the first is
      sufficiently distinct from the theme to remain at the beginning
      as a Prelude, with other distinctive (i.e. less recognizable)
      variations following it.
      The theme winds up being number nine of the
      thirteen, with the most clearly recognizable variations
      presented after the theme has been revealed
      (numbers ten through twelve).
      This presentation order enables a performance program in which the audience
      is challenged to identify the theme before it becomes obvious.
    }
    \heading "Tempos, Titles and Times"
    \paragraph {
      Mozart provided few descriptive annotations for these
      variations, most of which had no tempo indications
      and were titled only by Roman numerals, e.g. “Var. VIII”.
      In this edition, tempos suitable for intermediate guitarists
      have been assigned numerically and descriptive titles have
      been added, based where available on the few annotations
      (e.g. “Fuga Minore”) present in early
      editions.  The original Roman numeral
      designations have been retained parenthetically, so, for
      example, Mozart's “Var. VIII” is now titled as
      “3. Fuga Minore (Var. VIII)” and is followed by
      “4. Arioso (Var. III)”.
    }
    \paragraph {
      Durations of the individual variations,
      when played at the assigned tempos, are indicated in the section headings
      below. These durations include \italic { D.C. al Fine } returns.
      Note that all of Mozart's ubiquitous repeats have been replaced by simple
      double bars for brevity, so they do not figure in the quoted
      durations.  Total playing time amounts to 11 minutes and 11 seconds.
      Allowing 10 seconds between pieces increases the performance time to about
      13 minutes, if all 13 pieces are performed.
    }
    \heading "Modifications for Guitar"
    \paragraph {
      The relative simplicity of the original piano score allows
      it to be played on two guitars with little modification, even
      in the original key, save for some challenging trills, ornaments and ties
      that can be adjusted by the performers to suit their abilities.
    }
    \paragraph {
      An exception is dealing with the more limited range
      of the guitar compared to the piano.  Mozart frequently opened
      and closed with a low C (two octaves below middle C) and
      occasionally doubled the bass line in octaves, necessitating
      transposition, omission or substitution on guitar.  Fortunately
      Mozart often left more than an octave between upper and lower
      parts, allowing some room to adjust octaves of particular sections.
      See the list below for details of how this was handled
      for each variation.
    }
    \paragraph {
      Bear in mind that the guitar is an octave transposing instrument,
      so where the guitar score looks identical to the piano, the guitar
      will sound an octave below the piano. In listing modifications
      below for each variation, octave modifications are with regard
      to the score, not the sound.  In roughly half of the variations,
      the lower score is listed as being “raised”, making it closer to
      the upper part, but in terms of sound it is the upper part
      that has been lowered in pitch.  In the other cases, where the score has not
      been changed for either part, the intervals are the same but the
      overall pitch is lower by an octave.
    }
    \paragraph {
      In each of the numbered sections below describing a particular variation,
      the final paragraph lists changes to specific measures (e.g. M1-8:
      for measures 1 though 8) relative to the original piano score.
    }
    \heading "Typographic Corrections"
    \paragraph {
      Mozart's original manuscript and subsequent engravings
      contain several typographic errors which have been corrected in this
      guitar edition.  Most of these involve restoring a missing
      sharp accidental, and one other is an obvious wrong note in a series
      of octave chords.  These corrections are included in
      the list of modifications for each variation where they are
      distinguished by the word “corrected”.  The affected pieces are
      “2. Grazioso (Var. VII)”, “4. Arioso (Var. III)”,
      “5. Andante (Var. II)” and “13. Finale (Var. XII)”.
    }
    \heading "Guitar Notation"
    \paragraph {
      Roman numerals above the staff indicate
      hand positions on the fretboard and
      remain in effect until the next such indication. A barre is
      indicated by prefixing the Roman numeral with a small “b_” for
      a small barre or a large “B_” for a large barre at that position.
    }
    \paragraph {
      Circled numbers indicate strings and may pertain to an isolated
      note or an extended passage, the latter being indicated by a
      dashed line spanning the passage.  Both usages can be seen
      in measures 4 through 8 of “2. Grazioso (Var. VII)”.
    }
    \paragraph {
      In most cases, dynamic markings only appear between the two
      staves and apply to both upper and lower parts. When they
      differ, a second marking will appear below the lower staff,
      as in “7. Legato (Var. VI)”.
    }

    \section-segno

    \heading "1. Preludio (Var. I)   0:48"
    \paragraph {
      Generally, expressive marks are from the original piano
      version, rather than explicit instructions for guitar slurs.
      In this piece, the guitarist may choose to slur pairs for convenience
      even where none is marked, such as in the first two measures (e.g.
      articulating the Bs and slurring the Cs in the B-C B-C B-C sequence).
      The fingering in this piece also encourages an unorthodox slide
      where a slur is desired and a position change is needed (e.g.
      on finger 1 in measures 5 and 6, and finger 2 in measures 10
      through 12).
    }
    \paragraph {
      M1: low C to E.  M8: altered ending to avoid low C.
      M16: moved half note G up an octave.
    }
    \heading "2. Grazioso (Var. VII)   0:48"
    \paragraph {
      For Guitar I this is a straightforward
      C major scale exercise in seventh position,
      but don't rush or measure 8 may surprise you;
      be graceful. Guitar II could do the whole
      piece in first position, but the octave sequence has more consistent
      tone when kept on strings 4 and 6 as indicated.  Be careful to
      lift before moving to avoid string squeaks.
    }
    \paragraph {
      M1-8: lower part raised an octave.
      M1: low C octave chord half note to G C quarter notes.
      M7: 2nd chord top note corrected from E natural to G natural.
      M8: revoiced chord to avoid low C.
    }
    \heading "3. Fuga Minore (Var. VIII)   0:43"
    \paragraph {
      Notice the C minor key signature; this is the only variation
      that is not in C major.  If it doesn't sound minor you're missing
      the flats.  The theme is well disguised by the minor;
      no twinkle here.
    }
    \paragraph {
      M2-8: two voices of upper part should overlap like half notes
      but were simplified to quarter notes for guitar (sustain where
      possible).  M7-8: lower part raised to stay in guitar range.
      M11-13: descending E\flat D C quarter notes should be extended
      across bar lines but were simplified for guitar.
      M9,10,13-17 omitted lower octave of lower part.
    }
    \heading "4. Arioso (Var. III)   0:41"
    \paragraph {
      In this piece the triplets should be slurred only where
      indicated, and that requires more detailed explanation.
      The first three “slurs” are marked \italic{“glis.”} but
      are neither true glissandi nor slurs since they start on
      one string and end on another.  The intent is to slide
      finger 4 down a fret or two at the end of the first note
      as you're stretching finger 1 down the neck to reach the next note.
      But don't overdo it; the effect should be a slight fall in pitch
      at the end of note rather than a real glissando.
      It's a way for the guitarist to blur two notes together that are
      a bit too far apart to play simultaneously.
    }
    \paragraph {
      The slurs in the second half of this piece are
      standard descending slurs to finger 1 on the same string,
      but then finger 1 immediately moves up a fret to an articulated
      staccato note in a new position.  You should not hear a slide
      during that motion.  It is merely a position change
      in preparation for a subsequent high note.
    }
    \paragraph {
      M1-8: lower part raised an octave.
      M1: low C to E.
      M3: 2nd eighth corrected from G to G\sharp.
      M7: changed dotted eighth B sixteenth D to B quarter in lower part.
      M8: raised moving part an octave to avoid low C.
      M13-15: multiple editors disagree on interesting last two notes of
      each of these measures.
      M15: omitted low A in second chord of lower part.
    }
    \heading "5. Andante (Var. II)   0:47"
    \paragraph {
      This is the first variation in which the audience may easily
      recognize the theme, so
      Guitar 1 should allow Guitar II to dominate during the first
      eight bars and perhaps even the second, but both parts should
      proudly celebrate the chord progression in the last eight bars.
      At the end of that progression, Guitar I may choose to omit
      the final A (enclosed by parentheses) if the stretch is
      uncomfortable.
      Because Guitar II needs to play loudly, all the notes should
      be articulated, not slurred, e.g. as suggested in the first
      measure.
    }
    \paragraph {
      M1-24: initial notes of lower part extended to provide
      a separate bass voice.
      M1-8,17-24: lower part raised an octave.
      M2-16: upper part theme has been obfuscated by omission or
      octave transposition of selected notes, and by reduction of
      volume relative to the lower part.
      M19-21: cross-measure ties on F E and D in the chord sequence
      in the upper part
      were omitted in favor of repeating those notes in the following
      chords for emphasis, since a guitar does not sustain as well as
      a piano.
      M20: 7th sixteenth corrected from B to B\sharp.
    }
    \heading "6. Adagio (Var. XI)   1:30"
    \paragraph {
      This one could be called the “Happy Birthday” variation
      as it shares a five note sequence (“... happy
      \italic { birth-day dear Name Here} ...”) in measures 6 and 7
      with the high point of that later well known nineteenth century tune.
      Guitar I might playfully exaggerate that comparison
      (e.g. with a slight fermata over the A sixteenth note) to lead
      the audience further astray from the real theme.
    }
    \paragraph {
      Curiously, this variation also has elements Mozart used several
      years later in the famous Andante movement of Concerto No. 21
      in C Major (K.467).  Compare measures 1 and 6 of this variation to
      measures 2 and 7 of that movement. The presence of the IV chord
      elsewhere in this variation, and its corresponding absence in
      the Andante, overpowers these small similarities, however.
    }
    \paragraph {
      Overall this is a straightforward piece, with the exception
      of the last two bars before the \italic D.C., where the rhythm
      twice pauses and resumes suddenly.  The final descending cadence is such
      a strong lead in, Guitar I may be surprised to be playing alone
      upon return to the first measure.  Have faith; Guitar II will
      soon pick up the echo.
    }
    \paragraph {
      M1-16: changed time signature from 2/4 to 4/4 to emphasize slow tempo.
      M5-6: omitted grace notes in upper part before last three notes, for simplicity
      and to enhance recognition of Happy Birthday.
      M5: omitted C from first chord in lower part for guitar fingering.
      M6: raised octave of second chord in lower part.
      M8: omitted B from first chord in upper part for guitar fingering.
      M8: raised octave of final C in lower part.
      M11: omitted turns before D and F in upper part for simplicity.
    }
    \heading "7. Legato (Var. VI)   0:48"
    \paragraph {
      Despite the theme being out in the open at the start of this
      piece, Guitar I can make it less obvious by keeping the
      opening chords very light and brief, as though whispering the
      hint while Guitar II is distracting the audience's attention.
      Interesting dissonances in the second four bars provide
      added distraction, especially since the lower part has been
      raised an octave to play nearly on top of the upper part.
    }
    \paragraph {
      This piece is legato (Mozart's annotation) in the sense that
      the sixteenth notes should be smooth, steady and evenly articulated.
      But it is not ligado; slurring some notes would defeat
      the overall steadiness implied by legato, so guitar slurs are
      not appropriate here.
    }
    \paragraph {
      Finally, the peculiarity of starting the first chord in a
      small barre at fifth position, as opposed to a familiar fingering
      in first position, is intended to provide continuity across
      the \italic{ D.C. al Fine}, i.e. upon returning to measure 1
      from measure 16 where Guitar I was already in a small barre
      at fifth position.
    }
    \paragraph {
      M1-16: raised lower part an octave.
      M1-8: made lower part forte to distract slightly from theme.
      M8: raised final C another octave.
      M8-14: raised octave in upper part.
    }
    \heading "8. Accelerando (Var. V)   0:28"
    \paragraph {
      Play this piece for fun!  With the melody split between both parts
      and the rhythm changing every four bars, it is particularly enjoyable to play
      as a duet.  And, though Mozart did not resort to this cheap parlor
      trick, accelerating the tempo makes it even more fun.
      Dare your partner to keep up.
    }
    \paragraph {
      Mozart marked the first four bars as staccatissimo, so both guitars
      should damp these notes immediately with the right hand.  In the remainder of
      the piece, the indicated fingerings avoid open strings, so notes
      can be shortened to their indicated durations merely by releasing
      tension on the left hand finger. Exceptions are made when
      Guitar II hits the sixteenths, in the interest of speed.
    }
    \paragraph {
      Slurs are exactly where Mozart indicated, but their implementation
      on the guitar varies. In measures 9-15, it is convenient to use
      same-finger slides.  In measures 20-24, standard slurs
      tend to alternate with slides. In measures 16 and 17, the slurs
      are compromised in favor of easy fingering.
    }
    \paragraph {
      Guitar II has three critical spots to watch.  Two are rhythm
      changes, at measures 5 and 21, where you switch to the downbeat.
      The last is in measure 24 where you jump to a large barre in
      eighth position in order to play the final two C notes.
      Alternatively, Guitar I could play the final high C, though
      that would be out of rhythm for that part.
    }
    \paragraph {
      M1-4: original staccatissimo has been marked as the more familiar staccato.
      M8: changed C low C in lower part to G C.
      M17: changed low C E G in lower part to E G C.
      M24: changed final low C to high C.
    }
    \heading "9. Allegro (Thema)   0:27"
    \paragraph {
      Apart from substituting for a couple of low C notes, this is
      exactly Mozart's arrangement of the original theme.  Both
      upper and lower parts can be played simply in single positions,
      though some may find the first trill easier in fifth position.
    }
    \paragraph {
      M1,9: leading E was low C in lower part.
      M8,16: final C was low C in lower part.
    }
    \heading "10. Moderato (Var. IV)   0:41"
    \paragraph {
      This piece was damaged by severe transposition to bring it into
      comfortable guitar range, and is only included for completeness.
      No individual notes were changed, however the upper
      and lower parts are now much closer together than in
      the original piano version, causing noticeable collisions in
      measures 3, 4, 9 and 14.  In the first two cases, the last
      quarter note in the upper part is immediately repeated by
      the middle note of a triplet in the lower part, which sounds
      like a rhythm error unless Guitar I plays that quarter note
      more softly.  In the other two cases, Mozart's original
      E F dissonance in the upper part is compounded by the lower part
      into an E F F\sharp G dissonance.  Eliminating these blemishes
      would require other alterations that could be considered
      a different kind of damage. Such decisions are left to the
      performer.
    }
    \paragraph {
      M1-8: raised lower part two octaves.
      M7: the parenthetic A may be omitted for easier fingering.
      M9-16: raised lower part one octave.
    }
    \heading "11. Fuga Maggiore (Var. IX)   0:24"
    \paragraph {
      Tip toe delicately through this playful little piece,
      then burst out in surprise at the forte at the end of the phrase.
      The trick is reversed in the second section after it
      gradually crescendoes, then suddenly quiets.
    }
    \paragraph {
      M5: lower part raised an octave.
      M7,23: in upper part, D F half note chord simplified to D F quarter notes.
      M7,23: in lower part, out of range low G and very low G raised to G.
      M8,24: low C raised to C.
      M13,14: chords inverted to leave room to descend further.
    }
    \heading "12. Placido (Var. X)   0:69"
    \paragraph {
      The original piano version, with its dramatic changes from
      the initial
      soft high notes to deep forte octave chords beginning
      with the low C\sharp in measure 4, evokes a sturm-und-drang sense of
      wide-ranging powerful emotions.
      Such deep dramatic octaves are outside the range of a guitar,
      both in scale and dynamics, so this rendition plays instead
      to a guitar's strength for tender reflection.
      Think quiet, calm, pensive, wistful, poignant remembrances,
      of both childhood simplicities (the soft high notes) and
      complex retrospection (the \concat { C \sharp} et seq.).
      Be calm, placid and slow.
      Evoke peace.  But for the deep octaves, these are the original notes,
      transformed only by tempo, dynamics and attitude.
      This placid calm also provides a good contrast before the finale.
    }
    \paragraph {
      M4-8,11-15: omit out of range octave doubling from lower part.
    }
    \heading "13. Finale (Var. XII)   1:57"
    \paragraph {
      Prepare yourselves for a vigorous workout.  This piece is
      in 3/4 but it's no waltz; just more sixteenth notes
      per measure, resulting in the longest performance time of
      all these variations.
    }
    \paragraph {
      This piece also differs from the others in that it has a coda.
      The original piano version, including repeats, had the form
      A A B A' B A' C, where A' was identical to A but with the lower part
      raised an octave. The A section is below guitar range, so this
      edition is shortened to the form A' B A' C where C is the coda.
      Section A' is measures 1 through 7, B is 8 through 16 ending
      in a \italic D.C. back to the start (A'). The second time through,
      you jump after measure 7 all the way to the coda at measure 17
      and end with measure 28 (24 plus a 4 measure flourish).
      Notice that the upper part has the same chord at all three
      critical junctions, i.e. measures 1, 8 and 17, which may lead
      Guitar II to worry you've missed the jump.  Obviously both
      players need to be alert.
    }
    \paragraph {
      The suggested fingerings enable strong trills at the discretion
      of Guitar I: either a fully extended trill, a single flip or no trill
      at all.  In some cases the trills are followed by a slide to the
      next note or into a barre, to better reach following notes.
      Slurring is appropriate in section B (measures 9-16) in the
      same manner described in the first piece, but Guitar II should
      articulate all notes in the other sections.
    }
    \paragraph {
      M4: a C at the bottom of the chord in the upper part was removed to avoid
      interference with the same C in the lower part.
      M4: 11th sixteenth corrected from B to B\sharp.
      M5: 11th sixteenth corrected from A to A\sharp.
      M4-8: the lower part was raised an octave to stay in range.
      M17-21: beginning with the E\flat, the lower part
      was raised an octave.
      M17: 3rd and 7th sixteenths corrected from D to D\sharp.
      M18: 11th sixteenth corrected from A to \concat { A \sharp}.
      M25-27: in the piano version, the bass line was doubled
      an octave below, largely out of guitar range.
      M27: this part of the bass line is raised an octave.
    }

    \section-segno

    \heading "So Many Choices"
    \paragraph {
      Considering that attention spans of audiences and performers
      (present company excluded) do not appear to be as long as in
      Mozart's time, performers will likely be picking and choosing
      which of these thirteen scherzi to include in any given
      performance.  Even if the performance order of the selected pieces
      is not altered, that's still a large number of performance choices
      (2**13 - 1 = 8191 to be exact).  The intent of the following
      sections is to share some subjective observations that may influence
      your performance decisions.
    }
    \heading "Dispense With Difficulty"
    \paragraph {
      These scherzi are not show pieces to demonstrate technical prowess.
      Too often solo performers choose only the most difficult pieces they
      can master and distain simpler pieces as beneath their dignity.
      But these are simple pieces, intended for intermediate guitarists,
      and they're not solos.  This isn't about you.  Your selections
      should be about what the audience will enjoy hearing and
      seeing how the two of you enjoy playing together.
      Choose wisely.
    }
    \heading "Final Pieces"
    \paragraph {
      Every performance has a final piece, even if it's also the first.
      If you want to end on a high note, these two
      pieces stand out from the rest with their rousing climaxes
      that will invite applause:
    }
    \bullet #16 \cirb { 8. Accelerando (Var. V)   0:28 }
    \bullet #16 \cirb { 13. Finale (Var. XII)   1:57 }
    \continue-paragraph {
      If you have but one piece to play, choose the Accelerando.
      It's a microcosm of the delayed recognition idea,
      teasing the audience's recognition of the all-too-popular
      theme by ending before full recognition has time to develop.
      The Finale, in contrast, works
      best as a culmination of the other variations, from which
      it echoes multiple motifs but without much hint of the theme.
      It's also overall the fastest yet longest of the thirteen.
      Both of these pieces are well-balanced between upper
      and lower parts.
    }
    \heading "Character Pieces"
    \paragraph {
      Each of these gems has it's own kind of brilliance that
      adds interest and variety, whether in an extended program
      or as a standalone piece.  Upper and lower parts are
      balanced and essential in all of these pieces.
    }
    \bullet #16 \cirb { 3. Fuga Minore (Var. VIII)   0:43 }
    \bullet #16 \cirb { 5. Andante (Var. II)   0:47 }
    \bullet #16 \cirb { 6. Adagio (Var. XI)   1:30 }
    \bullet #16 \cirb { 7. Legato (Var. VI)   0:48 }
    \bullet #16 \cirb { 12. Placido (Var. X)   0:69 }
    \continue-paragraph {
      The measured Fuga Minore is literally in a key by itself.
      The Andante has a two-voice bass line, echoed later by the Finale,
      plus a novel chord progression at the end of the upper part.
      The Adagio begins as a fugue, momentarily matches Happy Birthday,
      soars high on the neck and includes two dramatic pauses.
      The Legato is marked by a continuously undulating run,
      initially in the lower part and then in the upper.
      The Placido, though it starts with the childish theme,
      matures quickly into a wistful chord study,
      capable of evoking complex retrospective emotions.
    }
    \heading "Interstitial Pieces"
    \paragraph {
      These fit in well between the more dominant character pieces
      without revealing  much of the theme.
      They tend to be light and airy, easier to play, and with more
      emphasis on the upper part.
    }
    \bullet #16 \cirb { 1. Preludio (Var. I)   0:48 }
    \bullet #16 \cirb { 2. Grazioso (Var. VII)   0:48 }
    \bullet #16 \cirb { 4. Arioso (Var. III)   0:41 }
    \continue-paragraph {
      The Preludio introduces a continuous sixteenth note pattern
      that appears in other variations and is quoted almost verbatim
      in the Finale, establishing those two as bookends for all the others.
      The Grazioso begins like a simple scale exercise and then
      develops into a graceful pas de deux between the alternating high
      notes of the upper part and the strong leading octaves of the lower
      part.  The Arioso is noted for its lyrical run of triplets,
      almost like an operatic aria, and for the disagreement between
      editors regarding some of the spicier notes in the last
      four bars.
    }
    \heading "Theme Pieces"
    \paragraph {
      One of these is the actual theme and the other a closely matched
      variation. Both are delightfully childlike and very short;
      the shortest of all the thirteen pieces.  Both are also well-balanced
      between parts.
    }
    \bullet #16 \cirb { 9. Allegro (Thema)   0:27 }
    \bullet #16 \cirb { 11. Fuga Maggiore (Var. IX)   0:24 }
    \continue-paragraph {
      As simple as the Allegro is, Mozart nevertheless was able
      to suggest some implicit diminished and minor chords in his
      arrangement, if you mentally combine isolated notes appearing
      in the same measure.
      The Fuga Maggiore, in utter contrast to the Fuga Minore,
      is as playful as a child's game, with sudden changes between
      quiet tip toeing and boisterous stomping about.
    }
    \heading "Other Similarities"
    \paragraph {
      When selecting pieces for a performance program, there are
      other similarities among pieces that you may wish to consider,
      whether to exhibit them as motifs or avoid them as redundancies.
    }
    \paragraph {
      Structural similarities are expected but vary in degree.
      At the level of four-bar segments, the original theme has the
      form A B C C A B.  Only two variations share that simple
      structure: the Grazioso and the Moderato, which arguably
      makes them somewhat less interesting.
    }
    \paragraph {
      Melodic similarities are shared by several variations.
      The high undulating sixteenths in the second half of the Preludio
      appear again in the Finale and even in the triplets of the Arioso.
      The Finale also reuses the low undulating sixteenths first
      introduced in the second half of the Andante.
    }
    \paragraph {
      Another melodic similarity in four of the variations is
      a sequence of descending interleaved thirds beginning in measure 3.
      This appears in the Andante, Moderato, Fuga Maggiore
      and even the Fuga Minore.
    }
    \paragraph {
      Harmonic variations add interest to several pieces in different ways.
      If you like diminished chord progressions, consider especially the
      Placido and the Andante, and to a lesser degree the Fuga Minore and
      the Finale.
    }
    \paragraph {
      Rhythmic similarities are another way to re-evaluate a performance
      program.  Extended runs of sixteenth notes are the most prevalent
      pattern, appearing in the Preludio, Grazioso, Andante, Legato and
      Finale. Triplets characterize the Arioso and Moderato, while
      simple quarter notes are only in the Allegro and Fuga Maggiore.
      The Finale also has other patterns in addition to the
      sixteenths, while the Fuga Minore, Adagio, Accelerando
      and Placido have their own patterns.
    }

    \section-segno

    %\balloony #5


    \heading "Performance Programs"
    \paragraph {
      Several sample programs are suggested below that address
      varying goals, including brevity. The times listed are
      just the net playing time, so add more if you plan to
      talk about individual pieces.
    }

    \paragraph {
      As mentioned before, if you play only one, let it be
      the Accelerando, for the briefest of all programs:
    }
    \bullet #8 \dotb { \bold 0:28 }
    \bullet #16 \cirb { 8. Accelerando (Var. V)   0:28 }

    \paragraph {
      You can almost accomplish a guess-the-theme program with
      three pieces.  The first two establish the variety and
      the third gives the answer:
    }
    \bullet #8 \dotb { \bold 1:59 }
    \bullet #16 \cirb { 1. Preludio (Var. I)   0:48 }
    \bullet #16 \cirb { 3. Fuga Minore (Var. VIII)   0:43 }
    \bullet #16 \cirb { 8. Accelerando (Var. V)   0:28 }

    \paragraph {
      Adding two more pieces enhances the guess-the-theme program
      with a hint (the Andante) and a false lead (the Adagio's
      Happy Birthday):
    }
    \bullet #8 \dotb { \bold 4:16 }
    \bullet #16 \cirb { 1. Preludio (Var. I)   0:48 }
    \bullet #16 \cirb { 3. Fuga Minore (Var. VIII)   0:43 }
    \bullet #16 \cirb { 5. Andante (Var. II)   0:47 }
    \bullet #16 \cirb { 6. Adagio (Var. XI)   1:30 }
    \bullet #16 \cirb { 8. Accelerando (Var. V)   0:28 }

    \paragraph {
      The following set makes a nice trailer for the above program,
      or it might be used alone if you're not concerned about
      hiding the theme:
    }
    \bullet #8 \dotb { \bold 3:30 }
    \bullet #16 \cirb { 11. Fuga Maggiore (Var. IX)   0:24 }
    \bullet #16 \cirb { 12. Placido (Var. X)   0:69 }
    \bullet #16 \cirb { 13. Finale (Var. XII)   1:57 }

    \paragraph {
      For an extended guess-the-theme program that prolongs
      the question and celebrates the answer, combine the two
      programs above and add more variety (the Arioso),
      a good hint (the Legato) and the overt answer (the Allegro theme):
    }
    \bullet #8 \dotb { \bold 9:42 }
    \bullet #16 \cirb { 1. Preludio (Var. I)   0:48 }
    \bullet #16 \cirb { 3. Fuga Minore (Var. VIII)   0:43 }
    \bullet #16 \cirb { 4. Arioso (Var. III)   0:41 }
    \bullet #16 \cirb { 5. Andante (Var. II)   0:47 }
    \bullet #16 \cirb { 6. Adagio (Var. XI)   1:30 }
    \bullet #16 \cirb { 7. Legato (Var. VI)   0:48 }
    \bullet #16 \cirb { 8. Accelerando (Var. V)   0:28 }
    \bullet #16 \cirb { 9. Allegro (Thema)   0:27 }
    \bullet #16 \cirb { 11. Fuga Maggiore (Var. IX)   0:24 }
    \bullet #16 \cirb { 12. Placido (Var. X)   0:69 }
    \bullet #16 \cirb { 13. Finale (Var. XII)   1:57 }

    %\balloony #1

    \paragraph {
      Alternatively, you can emphasize
      the theme  up front by starting with the Allegro and
      celebrating it with the Fuga Maggiore and Accelerando,
      then add some variety that still references the theme
      by inserting the Legato and Placido.
    }
    \bullet #8 \dotb { \bold 3:16 }
    \bullet #16 \cirb { 9. Allegro (Thema)   0:27 }
    \bullet #16 \cirb { 7. Legato (Var. VI)   0:48 }
    \bullet #16 \cirb { 11. Fuga Maggiore (Var. IX)   0:24 }
    \bullet #16 \cirb { 12. Placido (Var. X)   0:69 }
    \bullet #16 \cirb { 8. Accelerando (Var. V)   0:28 }

    \paragraph {
      Finally, here is the program in the original order Mozart intended.
      It starts by pairing the related but complementary Preludio
      and Andante, with their undulating sixteenths in the upper
      and lower parts respectively, both of which are repeated
      in the Finale.  Notably, this order also nicely juxtaposes the Fuga
      Minore and Fuga Maggiore to emphasize their contrast,
      like night and day.
    }
    \bullet #8 \dotb { \bold 11:11 }
    \bullet #16 \cirb { Thema "    " 9. Allegro   0:27 }
    \bullet #16 \cirb { Var. I "      " 1. Preludio   0:48 }
    \bullet #16 \cirb { Var. II "     " 5. Andante   0:47 }
    \bullet #16 \cirb { Var. III "    " 4. Arioso   0:41 }
    \bullet #16 \cirb { Var. IV "    " 10. Moderato   0:41 }
    \bullet #16 \cirb { Var. V "      " 8. Accelerando   0:28 }
    \bullet #16 \cirb { Var. VI "     " 7. Legato   0:48 }
    \bullet #16 \cirb { Var. VII "   " 2. Grazioso   0:48 }
    \bullet #16 \cirb { Var. VIII "  " 3. Fuga Minore   0:43 }
    \bullet #16 \cirb { Var. IX "     " 11. Fuga Maggiore   0:24 }
    \bullet #16 \cirb { Var. X "      " 12. Placido   0:69 }
    \bullet #16 \cirb { Var. XI "     " 6. Adagio   1:30 }
    \bullet #16 \cirb { Var. XII "   " 13. Finale   1:57 }


    \section-coda

    \heading "Acknowledgements"
    \paragraph {
      This edition for guitar was based primarily on the piano
      edition published by Porro, Paris (n.d.), which is freely
      available in the public domain as part of the International
      Music Score Library Project, piece number IMSLP104399.
      Additional public domain editions, including even a manuscript,
      are available on IMSLP and were consulted in several instances.
      Without IMSLP, this guitar edition may never have been
      initiated.
    }
    \paragraph {
      References in these annotations to Benjamin Britten's work
      come from multiple public concerts by Nicolò Spera,
      Director, Ritter Family Classical Guitar Program,
      and Assistant Professor of Guitar in the College of Music
      at the University of Colorado, Boulder.  He has freely
      shared his love and understanding of Britten's work
      with the community through his illuminating explanations
      and captivating performances.
    }
    \paragraph {
      The greatest acknowledgement, however, is to guitarist
      Dennis Burns, my mentor and playing partner, for his
      frequent reviews of both guitar parts over several
      months while this edition was being developed.
      His wide-ranging musical experience and technical insights
      are responsible for innumerable improvements that are
      greatly appreciated.
    }
  }
 }
}
