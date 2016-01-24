\version "2.18.2"

% Acknowledgments:
% This arrangement for guitar duo has been adapted from Tárrega's
% original solo composition, IMSLP item 292928 contributed by the
% Gaylord Music Library at Washington University, St. Louis.
% Thanks to guitarist Dennis Burns for his review and suggestions.

\header {
 title = "Lágrima"
 subtitle = \markup { \smaller "Arranged for Guitar Duo" }
 composer = "Francisco Tárrega"
 arranger = "Arr: J. J. Olson"
 style = "Romantic"
 date = "1889-1909" % Tarrega d.1909, Alier d.1938
 source = "Madrid: Ildefonso Alier, n.d. Plate 5230 A"
 mytagline = ##f

 %            o_
 %       (\___\/_____/)
 %  ~ ~ ~ ~ ~ / ~ ~ ~ ~ ~ ~ ~ 
 maintainer = "Jeffrey Olson"
 maintainerEmail = "gmail's jjocanoe"
 license = "Public Domain"

 mutopiacomposer = "TarregaF"
 mutopiatitle = "Lágrima"
 mutopiadate = "1889-1909"
 mutopiasource = "Madrid: Ildefonso Alier, n.d. Plate 5230 A"
 mutopiainstrument = "2 Guitars"

 footer = "Mutopia-2016/01/24-2103"
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

% tuplets
hideTupletNumber = \override TupletNumber.stencil = ##f
unhideTupletNumber = \revert TupletNumber.stencil 
hideTupletBracket = \override TupletBracket.bracket-visibility = ##f

% stems
longStem = \override Stem.details.beamed-lengths = #'(5)
shortStem = \override Stem.details.beamed-lengths = #'(3)
revertStemLength = \revert Stem.details.beamed-lengths

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

  \key e \major
  \mark \markup { \smaller "Andante" }
  << {
   <gis'-1>4\pIV <a'-2> <b'-4> | %1ax
   <fis'-1>2.\pII | %2ax
   gis'4\pIV a' b' | %3ax
  } \\ {
   \fingerLeft
   gis'8[ <b-0>] a'[ b] b'[ b] | %1ay
   s2. | %2ay
   gis'8[ b] a'[ b] b'[ b] | %3ay
  } >>
  <fis'-1>2.\pII | %4a
  <e''-4>4\pIX <dis''-3> <cis''-1> | %5a
  << {
   b'4 s2 | %6ax
   gis'4 s2 | %7ax
  } \\ {
   \fingerLeft
   \stringDown
   <b'-1>8[\pVII <gis'-4>] <cis'-2>\pV[ <e'-1> <fis'-4> <a'-1>] | %6ay
   \tieUp
   <gis'-1>8[\pIV <e'-2>] <cis'-3>[ <fis'-4>~] fis'[ <dis'-4 a-1>]\pII | %7ay
  } >>
  <e'-0 gis-1>2\pI r4^\markup{ \larger \italic "Fine" } | %8a

  \key e \minor
  <g'-2>8\pII\glissando[ <c''-2>\pVII] <b'-1>[ <e'-0>] << { <fis'-1>8\glissando[ <g'>] } \\ { \fingerLeft <dis'-2>4 } >> | %9a
  << {
   <e'-0>2. | %10ax
   r8 <e''-4>(\pVIII r) <c''-1>( r) <a'-4\2>(\pVII | %11ax
  } \\ {
   \fingerLeft
   r8 <c'-4\M>\pII <b-3>[ <a-1>] <g-0>[ <a-1>] | %10ay
   <b-0\I>4 s2 | %11ay
  } >>
  <fis'-1 dis'-3>2) r8 <fis'-1\I>8\pII | %12a
  << {
   <g'-1\M>4\pIII <a'-1>\pV <b'-1>\pVII | %13ax
   \slurDown
   <d''-4>8(\pVII <c''-2>) <b'-1> 
   \stringNumberSpanner "2" \textSpannerDown <a'-4>\startTextSpan  <g'-2> <fis'-1>\stopTextSpan  | %14ax
   <e'-0>4 <fis'-3>\pI b | %15ax
  } \\ {
   \fingerLeft
   g'8[ <b-0>] a'[ b] b'[ b] | %13ay
   s2. | %14ay
   e'8[ <b-0>] fis'[ <c'-1>] <b-0>[ <a-2>] | %15ay
  } >>
  <e'-0 g-0>2 r4 | %16a
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
  \override Score.RehearsalMark #'self-alignment-X = #RIGHT

  \key e \major
  \repeat volta 2 {
  << {
   \fingerLeft
   s2. | %1bx
   <dis-1>8[ <b-0>] <a-3>[ b] <b,-2>[ b] | %2bx
   s2. | %3bx
   dis8[ b] a[ b] b,[ b] | %4bx
   <cis'-4>8 <e'-0> <b-0> e' <a-2> <fis'-3> | %5bx
  } \\ {
   <e-2>4\pI <fis-4> <gis-1> | %1by
   dis2 b,4 | %2by
   e4 fis gis | %3by
   dis2 b,4 | %4by
   cis'4\ppI b a | %5by
  } >>
  <b-0>4 <cis'-1>2\pII | %6b
  \stemUp
  <b-4\I\3>4 <ais-3\M> <b,-1\P>\bpII | %7b
  <e-1\I>4 <e,-0\P> r4 | \break %8b
  }

  \key e \minor
  \set Score.doubleRepeatType = #":|.|:"
  \repeat volta 2 {
  \stringRight <b-4\4 e,-0>2\pVII <a-2\4 b,-1\6>4 | %9b
  \stringDown
  << {
   \fingerLeft
   \stringDown
   r8 \stringNumberSpanner "4" \textSpannerDown <a-4>\pIV\startTextSpan <g-2>[ <fis-1>] <e-4\5>[ <fis-1>] | %10bx
   <g-2 e,>4 <a-4> <fis-1>\stopTextSpan | %11bx
  } \\ {
   e,2. | %10by
   s2. | %11by
  } >>
  %<g-2 e,>4 <a-4> <fis-1>\stopTextSpan | %11b
  << {
   \fingerLeft
   \stringDown
   \slurDown
   r8 <b-1\3> <c'-2>( b) <b-0>4 | %12bx
  } \\ {
   \fingerLeft
   <b,-4\6>2 s4 | %12by
  } >>
  <e-4\5>4\ppIV \stringNumberSpanner "4" \textSpannerDown <fis-1>\startTextSpan <g-3>\stopTextSpan | %13b
  <a,-2\6>2. | %14b
  << {
   \fingerLeft
   \stringDown
   <g,-1\6>8\pIII[ <g-3\4\M>] <a,-2>\pIV[ <a-4\M>] <b,-2>\pVI[ \stringNumberSpanner "5" \textSpannerDown <dis-1\M>\startTextSpan] | %15bx
   \stemUp
   <e-3\I>4\stopTextSpan e, r4 \mark \markup { \smaller \italic "D.S. al Fine" } | %16bx
  } \\ {
   g,4 a, b, | %15by
   s2. | %16by
  } >>
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
      \context Voice = "2" { \voiceTwo \lowerVoice }
     >>
  >>
  \layout {}
  \midi {
    \tempo 4 = 60
    \transposition c % guitar plays octave lower than written
  }
}

