\version "2.18.2"

% Acknowledgments:
% This arrangement for guitar duo has been adapted from Tárrega's
% original solo composition, a copy of which was in the Boije
% collection and became available as IMSLP item 44649.  Thanks to
% guitarist Dennis Burns for his review and suggestions.

\header {
 title = "Adelita"
 subtitle = \markup { \smaller "Arranged for Guitar Duo" }
 composer = "Francisco Tárrega"
 arranger = "Arr: J. J. Olson"
 style = "Romantic"
 date = "n.d."
 source = "Valencia: Antich y Tena, n.d. Plate A.y.T. 361"
 mytagline = ##f

 %            o_
 %       (\___\/_____/)
 %  ~ ~ ~ ~ ~ / ~ ~ ~ ~ ~ ~ ~ 
 maintainer = "Jeffrey Olson"
 maintainerEmail = "gmail's jjocanoe"
 license = "Public Domain"

 mutopiacomposer = "TarregaF"
 mutopiatitle = "Adelita"
 mutopiadate = "n.d."
 mutopiasource = "Valencia: Antich y Tena, n.d. Plate A.y.T. 361"
 mutopiainstrument = "2 Guitars"

 footer = "Mutopia-2016/01/24-2102"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { "Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain " "by the typesetter " \char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}

\paper{
  page-count = #1
  %#(set-paper-size "a4")      %uncomment to test specific paper size
  %#(set-paper-size "letter")  %uncomment to test specific paper size
  indent = \indent + 8\mm
  top-margin = 8\mm
  bottom-margin = 8\mm
  ragged-last-bottom = ##f
  print-first-page-number = ##t
  evenHeaderMarkup = \oddHeaderMarkup % so all page numbers to right
  oddFooterMarkup = \markup { \column {
      \fill-line { \on-the-fly #first-page \column { \vspace #1 \fromproperty #'header:copyright } } 
      \fill-line { \on-the-fly #last-page \fromproperty #'header:mytagline }
    }
  }
  evenFooterMarkup = \oddFooterMarkup
}

% suppress local file system path in pdf
#(ly:set-option 'point-and-click #f)

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

hideTupletNumber = \override TupletNumber.stencil = ##f
unhideTupletNumber = \revert TupletNumber.stencil 
hideTupletBracket = \override TupletBracket.bracket-visibility = ##f

% stems
longStem = \override Stem.details.beamed-lengths = #'(5)
shortStem = \override Stem.details.beamed-lengths = #'(3)
revertStemLength = \revert Stem.details.beamed-lengths

% DS marks
marksRight = \override Score.RehearsalMark #'self-alignment-X = #RIGHT
markFine = \mark \markup { \smaller \italic "Fine" }
markDsFine = \mark \markup { \smaller \italic "D.S. al Fine" }

% from snippets + dashed line
stringNumberSpanner =
#(define-music-function (parser location StringNumber) (string?)
  #{
    \override TextSpanner.style = #'dashed-line
    \override TextSpanner.font-size = #-5
    \override TextSpanner.bound-details.left.stencil-align-dir-y = #CENTER
    \override TextSpanner.bound-details.left.text = \markup { \circle \number #StringNumber }
  #})

upperInstrument = \markup{ "Guitar I   " }
upperVoice = \transpose c c' {
  % within this body, c will show as middle C on a guitar staff
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  \fingerLeft
  \stringDown
  \slurDown

  \key e \minor
  \mark \markup { \smaller "Lento" }
  <e''-2>8\p\pXI( <dis''-1>) <b'-2\2>2-> | %1a
  <d''-4>8\pVII( <c''-2>) <fis'-1\2>2-> | %2a
  <c''-2>8( <b'-1>) <dis'-2\3>4-> <g'-3\2> | \break %3a
  \acciaccatura { <fis'-1>16\ppVII <g'-2> } <fis'-1>8->[ <e'-4\3>\pVI] <b-0>\<[ <e'-0>] <g'-3>[ <b'-2>]\glissando \slashedGrace e''8\! | %4a
  <e''-2>8( <dis''-1>) <b'-2\2>2 | %5a
  <d''-4>8\pVII\p( <c''-2>) <fis'-1\2>2 | %6a
  <c''-2>8( <b'-1>) <dis'-2\3>4 <g'-3>\glissando \slashedGrace e'8 | %7a
  <e'-3>2\pIII r4^\markup{ \larger \italic "Fine" } | \break %8a

  \key e \major
  <gis'-1>4.\pIV\f <b'-4>8 <e'-2 cis'-3>[ <fis'-4>] | %9a
  gis'4.\pIV b'8 <e' cis'>[ fis'] | %10a
  <gis'-1 e'-2 b-1>8\bpIV[ <b'-4>]\glissando \slashedGrace e''8 <e''-4>\pIX[ <dis''-3>] \acciaccatura { <dis''-3>16 <e''-4> } <dis''-3>8->[ <cis''-1>] | %11a
  \acciaccatura { <cis''-1>16 <dis''-3> } <cis''-1>8->[ 
  \stringNumberSpanner "2" \textSpannerDown <b'-4>\startTextSpan]\> <a'-2>[ <fis'-2>] <dis'-2>[ <b-0>\stopTextSpan]\! | %12a
  <gis-1>4.\pI <b-4>8 <e-2>[ <fis-4>] | %13a
  <gis-1>8\<[ <b-4\3>]\glissando \slashedGrace gis'8 <gis'-4\3>\pX[ <dis'-1>\pVIII]\! \acciaccatura { <e'-2>16\f\> <fis'-4> } <e'-2>8.\fermata[ <ais-1>16\pIII]\! | %14a
  <b-2>8.[ <cis'-4>16]\p <b-2>4 <dis'-4 a-1>\pII | %15a
  <e'-0 b-0 gis-1>2\pI r4 | %16a
}

middleVoice = \transpose c c' {
  % within this body, c will show as middle C on a guitar staff
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  \fingerLeft
  \stringDown

  \key e \minor
  e,2 <g'-1 e'-4>4 | %1b
  a,2 <e'-4 c'-3>4 | %2b
  b,2 <dis'-4 a-1>4 | %3b
  s2. | %4b
  e,2 <g' e'>4 | %5b
  a,2 <e' c'>4 | %6b
  b,2 <dis' a>4 | %7b
  <b-0 g-0>2 r4 | %8b

  \key e \major
  r4 <e'-2 b-1 gis-3>\pIV r | %9b
  r4 <e' b gis> r | %10b
  s2. | %11b
  s2. | %12b
  r4 <e'-2 b-1>\pIV <e'-2 cis'-3> | %13b
  s2. | %14b
  s2. | %15b
  s2. | %16b
}

  %<< {
  %} \\ {
  %} >>

lowerInstrument = \markup{ "Guitar II  " }
lowerVoice = \transpose c c' {
  % within this body, c will show as middle C on a guitar staff
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  \fingerLeft
  \stringDown
  \marksRight

  \key e \minor
  \repeat volta 2 {
   e,2.\pIII | %1c
   <a,-0>2. | %2c
   <b,-1>2.\BpII | %3c
   e,2. | %4c
   e,2.\pIII | %5c
   a,2. | %6c
   b,2\BpII r4 | %7c
   r4 e, r | %8c
  }

  \key e \major
  \set Score.doubleRepeatType = #":|.|:"
  \repeat volta 2 {
   e,2 <a,-0>4 | %9c
   e,2 a,4 | %10c
   \stringRight
   e,2 <e'-4\2 fis-2\4>4\pIII | %11c
   <dis'-4 a-1 b,-1>2\BpII r4 | %12c
   e,2 <a,-0>4 | %13c
   e,2 <ais-3 c-2>4\pII | %14c
   <b,-2>8.\pI <a-3>16 <gis-1>4 <fis-4 b,-2> | %15c
   <e-3>4 e, r \markDsFine | %16c
  }
}

\score {
  \context StaffGroup <<
    \context Staff = "up" \with { instrumentName = \upperInstrument } <<
      \set Staff.midiInstrument = #"acoustic grand"
      \clef "treble"
      \time 3/4
      \context Voice = "1" { \voiceOne \upperVoice }
     >>
    \context Staff = "dn" \with { instrumentName = \lowerInstrument } <<
      \set Staff.midiInstrument = #"acoustic grand"
      \clef "treble"
      \time 3/4
      \context Voice = "3" { \voiceThree \middleVoice }
      \context Voice = "2" { \voiceTwo \lowerVoice }
     >>
  >>
  \layout {}
  \midi {
    \tempo 4 = 60
    \transposition c % guitar plays octave lower than written
  }
}

