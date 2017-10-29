\version "2.18.2"

\header {
 title = "Recuerdos de la Luna"
 subtitle = \markup { \center-column { { "Un arreglo sencillo de “Recuerdos de la Alhambra” por Francisco Tárrega" } { "en homenaje a “Claro de Luna” por Beethoven" } } }
 %composer = "Arreglo:  Jeffrey Olson"
 %arranger = "Dedos:  Dennis Burns"
 composer = ##f
 arranger = \markup { \abs-fontsize #10 \right-column { { "Arreglo:  Jeffrey Olson" } { "Dedos:  Dennis Burns" } } }
 myfoot = ##f
 style = "Romantic"
 date = "1802,1896,2017" % (by Beethoven, Tárrega, Olson)
 mutopiadate = "1896"
 source = "Madrid: Orfeo Tracio, n.d. (ca.1920). Plate 1102" % via IMSLP24052
 mutopiasource = "Madrid: Orfeo Tracio, n.d. (ca.1920). Plate 1102"
 moreInfo = "This simple arrangement combines Tárrega's “Recuerdos de la Alhambra” with the triplets of Beethoven's “Moonlight Sonata”.  It was originally developed as one of many sight reading exercises in “Chromatic Fretboard Exercises” to be playable in a single fixed position (either VII or IX), but it sounds best with the indicated fingering by Dennis Burns which allows each triplet arpeggio to ring freely."

 %            o_
 %       (\___\/_____/)
 %  ~ ~ ~ ~ ~ / ~ ~ ~ ~ ~ ~ ~
 maintainer = "Jeffrey Olson & Dennis Burns"
 maintainerEmail = "gmail's jjocanoe & boldersounds.com's dennis"
 license = "Public Domain"

 mutopiacomposer = "OlsonJJ"
 mutopiatitle = "Recuerdos de la Luna"
 mutopiainstrument = "Guitar"

 footer = "Mutopia-2017/10/29-2201"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white "ǀ" \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {"ǀ" "ǀ"}}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " "by " \maintainer " — " \footer}\concat {\concat {\abs-fontsize #8 { "Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "Public Domain" " by the typesetter " " — free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white "ǀ" }}}
 tagline = ##f
}

\paper{
  page-count = #2
  %#(set-paper-size "a4")      %uncomment to test specific paper size
  %#(set-paper-size "letter")  %uncomment to test specific paper size
  % add space between composer/opus markup and first staff
  markup-system-spacing #'padding = #3
  top-margin = 12\mm
  bottom-margin = 12\mm
  ragged-last-bottom = ##f
  print-first-page-number = ##f
  oddFooterMarkup = \markup { \column {
      \fill-line { \on-the-fly #first-page \column { \vspace #2 \fromproperty #'header:copyright } }
      \fill-line { \on-the-fly #last-page \fromproperty #'header:myfoot }
    }
  }
  evenFooterMarkup = \oddFooterMarkup
  evenHeaderMarkup = \oddHeaderMarkup % so all page numbers to right
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

% string number locations
stringUp    = \set stringNumberOrientations = #'(up)
stringDown  = \set stringNumberOrientations = #'(down)
stringLeft  = \set stringNumberOrientations = #'(left)
stringRight = \set stringNumberOrientations = #'(right)

% tuplet controls
hideTupletNumber = \override TupletNumber.stencil = ##f
hideTupletBracket = \override TupletBracket.bracket-visibility = ##f

% dynamics
cres = _\markup{ \italic "cresc." }
decres = _\markup{ \italic "decresc." }
dotSpan = \override DynamicTextSpanner.style = #'dotted-line

% let ring (laissez vibrer ties)
lvib = \markup { \smaller \italic "laissez vibrer ..." }

upperVoice = \transpose c c' {
  \time 3/4
  \key a \minor
  \fingerLeft
  \stringDown
  \tuplet 3/2 4 { <e'-0>8\pI_\lvib <a-3> <c'-2>   <e'> <c'> <a>   <d'-2>\pII <b-3> <e-1> } | %1
  \hideTupletNumber
  \hideTupletBracket
  \tuplet 3/2 4 { <c'-2>8\pI <e-4> <a-3>   <c'> <a> <e>   <d'-2>\pII <b-3> <e-1> } | %2
  \tuplet 3/2 4 { <e'-0>8\pI <e-2> <a-3>   <e'> <c'-1> <a>   <e'> <c'> <a> } | %3
  \tuplet 3/2 4 { <e'>8 <a> <c'>   <e'> <c'> <a>   <f'-1> <d'-4> <g-0> } | %4
  \tuplet 3/2 4 { <g'-1>8\pIII <c'-3> <e'-4>   <g'> <e'> <g-0>   <f'-1>\pI <d'-4> <g> } | %5
  \tuplet 3/2 4 { <e'>8 <g> <c'-1>   <e'> <c'> <g>   <f'-1> <d'-4> <g> } | %6
  \tuplet 3/2 4 { <g'-1>8\pIII <g-2> <c'-3>   <g'> <e'-4> <g>   <g'> <e'> <g> } | %7
  \tuplet 3/2 4 { <g'>8 <g> <c'>   <g'> <e'> <g>   <g'> <e'> <g-0> } | %8
  \tuplet 3/2 4 { <c''-1>8\pVIII <c'-2> <f'-3>   <c''> <a'-4> <c'>   <b'-3>\pV <g'-4> <c'-1> } | %9
  \tuplet 3/2 4 { <a'-1>8\bpV <c'-1> <f'-2>   <a'> <f'> <c'>   <b'-4> <d'-3> <f'> } | %10
  \tuplet 3/2 4 { <a'-1>8 <b'-4> <a'-2>   <gis'-1>\bpIV <b-1> <e'-2>   <gis'> <e'> <b> } | %11
  \tuplet 3/2 4 { <gis'-1>8 <d'-4> <e'-2>   <gis'> <e'> <d'>   <gis'> <e'> <d'> } | %12
  \tuplet 3/2 4 { <bes'-4>8 <cis'-3> <e'-2>   <bes'> <e'> <cis'>   <a'-1> <e'> <cis'> } | %13
  \tuplet 3/2 4 { <g'-2>8\bpII <a-1> <cis'-\fngXY #'(0 . 0.5)-1>   <g'> <e'-4> <a>   <a'-2>\pIV <f'-3> <a-4\4> } | %14
  \tuplet 3/2 4 { <g'-1>8\pIII <a'-4> <g'-2>   <f'-1>\pI <a-2> <d'-4>   <f'> <d'> <a> } | %15
  \tuplet 3/2 4 { <f'>8 <a> <d'>   <f'> <d'> <a>   <f'> <d'> <a> } | %16
  \tuplet 3/2 4 { <e'-0>8\pV <a-3\4> <b-0>   <e'> <b> <a>   <d'-4\3> <b> <a> } | %17
  \tuplet 3/2 4 { <c'-1>8\pI <f-3> <a-2>   <c'> <a> <f>   <d'-4> <a> <f> } | %18
  \tuplet 3/2 4 { <c'-1>8 <d'-4> <c'-1>   <b-0> <e-2> <gis-1>   <b> <gis> <e> } | %19
  \tuplet 3/2 4 { <b>8 <e> <gis>   <b> <gis> <e>   <b> <gis> <e> } \bar "||" %20

  \key a \major
  \tuplet 3/2 4 { <e'-0>8 <a-1> <cis'-2>   <e'> <cis'> <a>   <d'-2>\pII <b-3> <e-1> } | %21
  \tuplet 3/2 4 { <cis'-1>8\bpII <e-1> <a-1>   <cis'> <a> <e>   <d'-2> <b-3> <e-1> } | %22
  \tuplet 3/2 4 { <e'-0>8\pI <e-1> <a-2>   <e'> <cis'-3> <a>   <e'> <cis'> <a> } | %23
  \tuplet 3/2 4 { <e'>8 <a> <cis'>   <e'> <cis'> <a>   <e'> <cis'> <a> } | %24
  \tuplet 3/2 4 { <fis'-1>8\bpVII <a-1> <d'-1>   <fis'> <d'> <a>   <fis'> <d'> <a> } | %25
  \tuplet 3/2 4 { <d''-1>8\bpX <fis'-2> <a'-1>   <d''> <b'-3> <fis'>   <fis'-1>\bpVII <b-3> <d'-1> } | %26
  \tuplet 3/2 4 { <fis'-1>8 <gis'-4> <fis'-2>   <e'-1>\pV <a-3> <cis'-2>   <e'> <cis'> <a> } | %27
  \tuplet 3/2 4 { <e'>8 <a> <cis'>   <e'> <cis'> <a>   <e'> <cis'> <a> } | %28
  \tuplet 3/2 4 { <a'-1>8\bpV <a-3> <cis'-2>   <a'> <fis'-4> <cis'>   <a'> <fis'> <cis'> } | %29
  \tuplet 3/2 4 { <gis'-1>8\bpIV  <gis-3> <bis-\fngXY #'(0 . 0.5)-2>   <gis'> <bis> <gis>   <dis'-1> <gis> <bis> } | %30
  \tuplet 3/2 4 { <fis'-4>8\pV <gis-2> <cis'-3>   <e'-1> <gis> <cis'>   <e'> <cis'> <gis> } | %31
  \tuplet 3/2 4 { <e'>8 <gis> <cis'>   <e'> <cis'> <gis>   <e'> <cis'> <gis> } | %32
  \tuplet 3/2 4 { <d'-2>8\pIII <f!-1> <b-3>   <d'> <b> <f>   <d'> <b> <e-1> } | %33
  \tuplet 3/2 4 { <cis'-1>8\bpII <e-1> <a-1>   <cis'> <a> <e>   <b-0>\pI <d-0> <gis-1> } | %34
  \tuplet 3/2 4 { <b-0>8 <cis'-3> <b-0>  <a-2> <e-1> <a>   <fis-4> <a> <gis-1>  } | %35
  % omitted original measures 36 (first ending) and 37 (second ending)
  \tuplet 3/2 4 { <a-1>8\bpII <cis-4> <e-1>   <a> <e> <cis>   <a> <e> <cis> } \bar "||" %38
  \tuplet 3/2 4 { <a>8 <d-4> <f!-2>   <a> <f> <d>   <a> <f> <d> } | %39
  \tuplet 3/2 4 { <b-0>8\pI <f!-3> <a-2>   <c'!-1> <f> <a>   <d'-4> <f> <a> } | %40
  \tuplet 3/2 4 { <e'-1>8\pV <a-3> <cis'-2>   <e'> <cis'> <a>   <e'> <cis'> <a> } | %41
  \tuplet 3/2 4 { <e'>8 <a> <cis'>   <e'> <cis'> <a>   <e'> <cis'> <a> } | %42
  \tuplet 3/2 4 { <e'>8 <e-3\5> <gis-2\4>   <e'> <gis> <e>   <e'> <gis> <e> } | %43
  \tuplet 3/2 4 { <d'-1>\pIII <d-3> <fis-2>   <cis'-1>\bpII <e-1> <a-1>   <b-0> <d-0> <gis-1> } | %44
  \tuplet 3/2 4 { <a-1>8\bpII <cis-3> <e-1>   <a> <e> <eis-2>   <a> <fis-3> <eis-2> } | %45
  \tuplet 3/2 4 { <a>8\bpII <cis> <e!>   <a> <e> <cis>   <a> <e> <cis> } | %46
  \tuplet 3/2 4 { <a>8 <d> <f!>   <a> <f> <d>   <a> <f> <d> } | %47
  \tuplet 3/2 4 { <b>8\pI <f!> <a>   <c'!> <f> <a>   <d'> <f> <a> } | %48
  \tuplet 3/2 4 { <e'-0>8 <a-2> <cis'-3>   <e'> <cis'> <a>   <e'> <cis'> <a> } | %49
  \tuplet 3/2 4 { <e'>8 <a> <cis'>   <e'> <cis'> <a>   <e'> <cis'> <a> } | %50
  \tuplet 3/2 4 { <gis'-4>8 <e-2> <gis-1>   <gis'> <e> <gis>   <gis'> <e> <gis> } | %51
  \tuplet 3/2 4 { <fis'-3>8 <e-2> <gis-1>   <e'-0> <e> <cis'-3>   <d'-3>\bpII <e-1> <b-4> } | %52
  \tuplet 3/2 4 { <a-1>8 <e-1> <cis'-1>   <a> <e> <cis'>   <a> <e> <fis-3> } | %53
  \tuplet 3/2 4 { <a-1>8 <e-1> <cis'-1>   <a> <e> <cis'>   <e> <bis-4> <cis'> } | %54
  \tuplet 3/2 4 { <a-1>8 <e-1> <cis'-1>   <a> <e> <cis'>   <e> <bis-3> <cis'> } | %55
  <a'-4>2. | %56
  <cis'-1 e-1>2. | %57
  <a-1 a,-0>2. \bar "|." %58
}

\score {
  <<
    \new Staff = "guitar"
    <<
      \clef "treble"
      \mergeDifferentlyHeadedOn
      \mergeDifferentlyDottedOn
      \context Voice = "upperVoice" \upperVoice
    >>
  >>
  \layout {
    \set Score.tempoHideNote = ##t
  }
}
\score {
  <<
    \set Staff.midiInstrument = #"acoustic guitar (nylon)"
    \clef "treble"
    \context Voice = "upperVoice" \upperVoice
  >>
  \midi {
    \tempo 4 = 64
    \transposition c % guitar plays octave lower than written
    \context{
      \Voice
      \remove "Dynamic_performer"
    }
  }
}
