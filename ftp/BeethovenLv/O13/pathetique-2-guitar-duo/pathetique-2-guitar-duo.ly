\version "2.18.2"

% Acknowledgments:
% This arrangement for guitar duo has been adapted from the piano edition that
% was typeset by Chris Sawer and Javier Ruiz-Alma (Mutopia-2011/10/25-295).
% Thanks also to guitarist Dennis Burns for his fingering ideas and review.

\header {
 title = "Sonata No. 8 \"Pathétique\""
 subtitle = "2nd Movement - Op. 13"
 subsubtitle = "Arranged for Guitar Duo"
 piece = "Adagio cantabile"
 composer = "Ludwig van Beethoven"
 arranger = "Arr: J. J. Olson"
 style = "Classical"
 date = "1798"
 source = "Berners, 1908 (edited by A. Winterberger); Peters, 1910"

 %            o_
 %       (\___\/_____/)
 %  ~ ~ ~ ~ ~ / ~ ~ ~ ~ ~ ~ ~ 
 maintainer = "Jeffrey Olson"
 maintainerEmail = "gmail's jjocanoe"
 license = "Public Domain"

 mutopiacomposer = "BeethovenLv"
 mutopiaopus = "Op. 13"
 mutopiatitle = "Sonata No. 8 “Pathétique” (2nd Movement: Adagio cantabile)"
 mutopiainstrument = "2 Guitars"

 footer = "Mutopia-2015/11/09-2064"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

\paper{
  page-count = #6
  %#(set-paper-size "a4")      %uncomment to test specific paper size
  %#(set-paper-size "letter")  %uncomment to test specific paper size
  top-margin = 8\mm
  bottom-margin = 8\mm
  ragged-last-bottom = ##t
  print-first-page-number = ##t
  evenHeaderMarkup = \oddHeaderMarkup %force pages to have same header (i.e. page number to right)
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

% left hand fingering locations
fingerLeft   = \set fingeringOrientations = #'(left)
fingerRight  = \set fingeringOrientations = #'(left) % intentional
fingerUp     = \set fingeringOrientations = #'(up)
fingerDown   = \set fingeringOrientations = #'(down)
fingerUpDown = \set fingeringOrientations = #'(up down)

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

% fret-diagram-interface values used in multiple voices (define here once).
% these values produce a small horizontal dot diagram without labels.
my-finger-code = #'none % dots instead of finger numbers
my-font-mag = #'0.01 % tiny to suppress position label
my-orientation = #'landscape
my-mute-string = #'"" % suppress unused string labels
my-dot-radius = #'0.4
my-xo-mag = #'0.7
my-diag-size = #'0.75
my-diag-thickness = #'0.5

% function to set fret-diagram properties from variables named above
setFretDiagramProperties = #(define-music-function (parser location) () #{
 \override Voice.TextScript.fret-diagram-details.finger-code = \my-finger-code
 \override Voice.TextScript.fret-diagram-details.fret-label-font-mag = \my-font-mag
 \override Voice.TextScript.fret-diagram-details.orientation = \my-orientation
 \override Voice.TextScript.fret-diagram-details.mute-string = \my-mute-string
 \override Voice.TextScript.fret-diagram-details.dot-radius = \my-dot-radius
 \override Voice.TextScript.fret-diagram-details.xo-font-magnification = \my-xo-mag
 \override Voice.TextScript.size = \my-diag-size
 \override Voice.TextScript.thickness = \my-diag-thickness
#} )

% other shortcuts
hideTempo = \set Score.tempoHideNote = ##t
lengthenStems = \override Stem.details.beamed-lengths = #'(5)
revertStemLengths = \revert Stem.details.beamed-lengths
tinyTurn = ^\markup{ \halign #-1 \tiny \musicglyph #"scripts.turn" }

% guitar is written an octave higher than it sounds (transpose c c').
% this arrangement is also lowered half step to fit guitar (transpose c' b).
% so net guitar transposition is "transpose c b" from original piano score

topmain = \transpose c b { \relative c' {

 \key as \major % (becomes key g \major after transpose)
 \time 2/4
 \tempo 4=30 \hideTempo
 \fingerRight
 \clef treble
 \stemUp

 % define fret diagram same way for this voice
 \setFretDiagramProperties
 
\set Score.markFormatter = #format-mark-box-alphabet
\mark \default
 <c-0>4\pII <bes-1> | %1a
 es4.-2 <des-1>8 | %2a
 <c-0>[ <es-2>\pII <as-2>  <bes-4>] | %3a
 es,4.-2\ppII e8-4 | %4a
 <f-4>4 <bes,>8. \lengthenStems <c-0>32(\pI  <des-1>) \revertStemLengths | %5a
 <es-3>4 <a,-1> | %6a
 <des-1> <c-3>16^.\pII <bes-1>^. <as-4>^.  <g-3>^. | %7a
 \break
 <bes-1 g-3>4\ppII  as8-0 \clef treble s | %8a

\mark \default
 <c'-1>4\BpVII <bes-4> | %9a
 <es^4>4. <des^2>8 | %10a
 <c-1>\bpVII[ <es-4>\pVII <as-4>\hiG\bpXII
    _\markup { \fret-diagram-terse #"x;x;x;12;12;15;" }
    <bes-4>\hiA\pXII] 
    _\markup { \fret-diagram-terse #"x;x;x;12;14;17;" } | %11a
 <es,^1>4.\bpX  <e^3>8 | %12a
 <f-4>4\ppX \lengthenStems <bes,>8. <c-1>32(\pVII  <des-2>) \revertStemLengths | %13a

\pageBreak

 <es-4>4\ppVII <a,-3> | %14a
 <des-4 bes,,-0>\bpV <c-3>16^. <bes-1>^. <as-4>^.  <g-3>^. | %15a
 <bes-4>4\pIII  <as^1>8 b16.\rest <c,^0>32 | %16a
 \stemNeutral

\mark \default
 <c'-1>4~\pXII c16 <as'-3>\hiG <g-2>\hiFis  <f-1>\hiE | %17a
 <c'-4>4\hiB ~ c16 <as-4>\hiG <g-3>\hiFis  <f-1>\hiE | %18a
 <c-2>4 ~ c16 <as'-4>\hiG <g-3>\hiFis  <f-1>\hiE | %19a
 <es-2>8\pIX  <d-1>~  d8[\tinyTurn <f^4>16.\hiE  <es-2>32] | %20a
 <es-2>4 \fingerUp <f,_\3-4>8.\tinyTurn\pVI  <as-3>32  <c-2>] | %21a
 \grace {\stemUp \scaleDurations #' (1 . 6) {b16[_(^1 c^2 d_)^4] } \stemNeutral}
    <c-2>32 <bes!_\2-1>^" "^" "^" "^" "\pX <g'_\1-4>16~\hiFis g <f-4>32\hiE\pIX
    <es-2> <d!-1>[ <c_\2-4> <bes-2> <a-1> <c-4> <bes-2> <as_\3-4>  <f-1>] | %22a
 <es-1>8\pVII b'16\rest \fingerRight \stemUp <bes,-1>\pII <g-3> <bes-1> <g-3> <es-4> | %23a

\mark \default
 \fingerDown
 <es-4>16(_\markup{\vspace #.5 \italic "cresc."}  <d-3>) <d-4>\pI(  <c-2>)
    <c-2>(  <b-1>)_\markup{\italic "(m.s.)"} <b-1>(  <bes-0>) | %24a
 \fingerRight
 <bes-0 es-0>8 aes'\rest aes\rest <bes-1>16.\pII  <es-2>32 | %25a

\pageBreak

 \fingerDown
 <es-2>16\ppII(  <d-1>) <d-1>(  <c-0>) <c-3>(  <b-2>) <b-2>(  <bes-1>)| %26a
 \fingerLeft
 <bes-1 g-3 es-4>2~ | %27a
 <bes g es> | %28a
 \fingerRight

\mark \default
 <c-0>4\ppII <bes-1> | %29a
 <es-2>4.  <des-1>8 | %30a
 <c-0>[ <es-2>\pII <as-2>  <bes-4>] | %31a
 \fingerUp <es,-2>4.\ppII <e-4>8 | %32a
 \fingerRight
 <f-4>4 bes,8. <c-0>32(\pI  <des-1>) | %33a
 <es-3>4 <a,-1> | %34a
 <des-1>\ppI <c-3>16^.\pII <bes-1>^. <as-4>^.  <g-3>^. | %35a
 <bes-1 g-3>4  <as^0>8\noBeam \clef treble <es'^2> | %36a

\mark \default
 \key as \minor
 <as-1>\bpIII[ <ces-4> <bes-3> <as-1>] | %37a

\pageBreak

 <g-1>\bpVII  <des'-2> r4\pIII | %38a
 <as-1>8\bpIII[ <ces-4> <bes-3> <as-1>] | %39a
 <as-3>\bpII  <g-1> s4 | %40a
 <as-1>8\bpIII[ <ces-4> <bes-3> <as-1>] | %41a
  
 <ges-1>\BpVI~\sf \tuplet 3/2 {  ges16 [ <ees-2>-. <ces-3>-.] }
    <ces'-1>8~\sf \tuplet 3/2 {  ces16[ <aes-4>-. <fes-3>-.] } | %42a
 \hideTupletNumber \hideTupletBracket
 <fes'-4>8\BpVIII~\sf \tuplet 3/2 {  fes16[ <des-1>-. <bes-3>-.] }
    <ces-4>8\ppVIII-.\noBeam <ees,-1 ces-3 ges-2>\pVII-.
    _\markup { \fret-diagram-terse #"x;8;8;7;x;x;" } | %43a
 \tuplet 3/2 { <fes-2  ces-1 aes-3>16\pIII[\fp <ces aes>
    _\markup { \fret-diagram-terse #"x;x;5;3;4;x;" }
    <ces aes>] <ces aes>[ <ces aes> <ces aes>]
    <ces aes>[_\markup{\vspace #.5 \italic "decresc."} <ces aes>
    <ces aes>] <ces aes>[ <ces aes> <ces aes>] } | %44a

\mark \default
 <fes-2>8[ <aes-1> <ges-4>  <fes-2>] | %45a
 <ees-1>\bpIII  <beses'-2> r4 | %46a
 <fes-2>8\bpIII[ <aes-1> <fes-2>  <ees-1>] | %47a
 <d^1>4.\pXI d8 | %48a
 d4. d8 | %49a

\pageBreak

 <des!^1>4.\pX <des^1>8 | %50a

\mark \default
 \key as \major
 <c-0>4\pII <bes-1> | %51a
 <es^2>4.  <des^1>8\pI | %52a
 <c-0>\ppI[ <es-2>\pII <as-2>  <bes-4>] | %53a
 <es,^2>4. <e-4>8 | %54a
 <f-4>4 bes,8. <c-0>32\pI  <des-1> | %55a
 <es-3>4\ppI <a,-1> | %56a
 <des-1> \tuplet 3/2 {  <des-4>16\pIII[  <c-4>\pII <bes-1>-.]  <bes-1>[  <as-4> <g-3>-.] } | %57a
 <bes-1 g-3>4  <as^0>8 \clef treble s | %58a

\mark \default
 <c'-1>4\BpVII <bes-4> | %59a
 <es^4>4.\pVII  <des^2>8 | %60a
 <c-1>\bpVII[ <es-4>\pVII <as-4>\hiG\bpXII
    _\markup { \fret-diagram-terse #"x;x;x;12;12;15;" }
    <bes-4>\hiA\pXII] 
    _\markup { \fret-diagram-terse #"x;x;x;12;14;17;" } | %61a

\pageBreak

 <es,^1>4.\bpX <e^3>8 | %62a
 <f-4>4 <bes,-3>8.\pVII <c-1>32  <des-2> | %63a
 <es-4>4 <a,-3> | %64a
 <des-4>\bpV \tuplet 3/2 {<des-4>16[ <c-3> <bes-1>-.]  bes[  <as-4> <g-3>-.] } | %65a
 \stemNeutral
 \slurNeutral
 \tieNeutral
 <as-1  c,-2>8\pIII b\rest b\rest <es,^1>16.  <e^2>32 | %66a

\mark \default
 <f-4>8\pII~_\< \tuplet 3/2 {  f16[  <es-2> <des-4>-.]  <c-3>[-._\!
    <bes-1>-._\>  <as-4>-.] }  <g-3>32[ <des'-4> <bes-1>  <g-3>]_\! | %67a
 <as-4>16.[\tinyTurn\ppII <c-3>32^]  <es,-4>8 r <es''-4 es,_\3-1>16.\pVII <e e,>32^"..." | %68a
 <f f,>8~ \tuplet 3/2 { <f f,>16[ <es! es,!> <des des,>-.]
    <c c,>\pIV[-. <bes bes,_\4>-.\pVII <as as,>-.] <g g,>\pIV[ <des' des,_\3>\pV <g, g,_\4>\pIV] } | %69a
 <as-4 as,-1>8\pV b\rest \grace{ \fingerLeft \override Flag.stroke-style = #"grace"
    {\stemUp <es-4>8\pVII_(_\markup{\dynamic rf} \stemNeutral} \revert Flag.stroke-style }
    \fingerUp
    \tuplet 3/2 {<des-2>16)[ <c-1>  <des-2>]} \tuplet 3/2{ <f-4>\pVIII[  <es-2> <des-1>-.] } | %70a
 \fingerRight
 <c-1>8\pVII b\rest \stemUp \grace { \override Flag.stroke-style = #"grace" c8^4\pV( \revert Flag.stroke-style }
    \fingerRight
    \tuplet 3/2 { <bes-1>16)[_\markup{ \dynamic rf} <a-1>  <bes-1>]  <des-4>[  <c-3> <bes-1>_.] } | %71a
 s4 \grace { \override Flag.stroke-style = #"grace" c,8^4\pII( \revert Flag.stroke-style }
    \fingerRight
    \tuplet 3/2 { <bes-1>16)[_\markup{\dynamic rf} <a-1>  <bes-1>]  <des-4>[  <c-3> <bes-1>_.] } | %72a
 <as!-4>16 \pp d,\rest \fingerLeft <as'-1 es-1 c-3>\pV d,\rest <as'-0 c,-1 as-2>4^\markup{" "}^\fermata\pII \bar "|."  %73a
 }
}

topsecondary =  \transpose c b { \relative c' {
 \stemDown
 \fingerRight

 % define fret diagram same way for this voice
 \setFretDiagramProperties

 <as-0>16_\markup{\circle 6 "= E"} <es-4> as es <g-3> <es-4> g es | %1b
 <as-0> <es-0> as es <bes'-1> <es,> <bes'-2>\pI es, | %2b
 <as-0> <es-0> <bes'-1> es, <c'-0> <as-0> <d-1> <as-0> | %3b
 <g-3> <bes-1> g bes g bes g bes | %4b
 <g-3> <bes-1> g bes g <es-4> g <es-0> | %5b
 <as-0> <es-0> as es es <c-2> es c | %6b
 <f-2> <des-3> f des <des-2> des des des | %7b
 <des-2> <es-4> des  es

 \hideTupletBracket
 \unhideTupletNumber
 \tuplet 3/2 { <c-1>[^. <es-0>^. <as-0>^.] }
    \tuplet 3/2 { \hideTupletNumber
    <c-0>[-. <es-1>-.\pVII <as-2>-.] } | %8b
 <c,-3>16 <es-1> c es <bes-1> es bes es | %9b
 <es-1> <as-2> es as es <bes'-4> es, bes' | %10b
 <es,-1> <as-2> <es-1> <bes'-4> <as-1> <c-1> <as-1> <d-2> | %11b
 <g,-2> <bes-1> g bes g bes g bes | %12b
 <g-2> <bes-1> g bes g <es-3> g <es-1> | %13b
 <as-2> <es-1> as es es <c-2> es c | %14b
 <f-1> <des-1> f des des des des des | %15b
 <des-3> <es-1> des es <c-2>8 s | %16b
 s2*9     %17b - 25b

 s4_\markup{\vspace #.5 \italic "cresc."} s | %26b
 s2 | %27b
 s2 | %28b
 <as-0>16 \p <es-4> as es <g-3> <es-4> g  es | %29b
 <as-0> <es-0> as es <bes'-1> <es,> <bes'-2>\pI es, | %30b
 <as-0> <es-0> <bes'-1> es, <c'-0> <as-0> <d-1> <as-0> | %31b
 <g-3> <bes-1> g bes g bes g bes | %32b
 <g-3> <bes-1> g bes g <es-4> g <es-0> | %33b
 <as-0> <es-0> as es es <c-2> es c | %34b
 <f-2> <des-3> f des <des-2> des des des | %35b
 <des-2> <es-4> des es <c-1>8 r | %36b
 \unhideTupletNumber
 \tuplet 3/2 { <es'-1  ces-1>16[\pp <es ces> <es ces>]} 
    \tuplet 3/2 {<es ces>[ <es ces> <es ces>]}
    \tuplet 3/2 {<es ces>[ <es ces> <es ces>]}
    \tuplet 3/2 { <es ces>[ <es ces> <es ces>]} | %37b
 \hideTupletNumber
 \tuplet 3/2 {
 <es-1>[ <es> <es>] <es>[ <es> <es>]
    <es-1 des-3>[ <es des> <es des>] <es des>[ <es des> <es des>] | %38b
 <es-1 ces-1>[ <es ces> <es ces>] <es ces>[ <es ces> <es ces>]
    <es ces>[ <es ces> <es ces>] <es ces>[ <es ces> <es ces>] | %39b
 <es-2 bes-1>[ <es bes> <es bes>] <es bes>[ <es bes> <es bes>]
    <es bes g-3>[ <es bes g> <es bes g>] <es bes g>[ <es bes g> <es bes g>] | %40b
 <es-1 ces-1>[ <es ces> <es ces>] <es ces>[_\markup{\vspace #.5 \italic "cresc."} <es ces> <es ces>]
    <es ces>[ <es ces> <es ces>] <es ces>[ <es ces> <es ces>] | %41b
 }
 \hideTupletNumber
 \tuplet 3/2 {
    <ces,-1>[ <ces>
    _\markup { \fret-diagram-terse #"6;x;8;7;6;x;" }
    <ces>] <ces>[ <ces> <ces>] <ces>[ <ces>
    _\markup { \fret-diagram-terse #"6;x;x;8;8;6;" }
    <ces>] <ces>[ <ces> <ces>] | %42b
 <ges'-1>[ <ges>
    _\markup { \fret-diagram #"5-8;2-10;1-8;1-11;" }
    <ges>] <ges>[ <ges> <ges>] <ces-1>[ <ces> <ces>] } s8 | %43b
 s2 | %44b
 \tuplet 3/2 {
  <ces-1  aes-3>16[\pp <ces aes>
     _\markup { \fret-diagram-terse #"x;x;5;3;4;x;" }
     <ces aes>] <ces aes>[ <ces aes> <ces aes>]
     <ces aes>[ <ces aes> <ces aes>] <ces aes>[ <ces aes> <ces aes>] | %45b
  <ces-1 beses-4>[
     _\markup { \fret-diagram-terse #"x;x;6;3;3;x;" } 
     <ces beses> <ces beses>] <ces beses>[ <ces beses> <ces beses>]
     <ces beses>[ <ces beses> <ces beses>] <ces beses>[ <ces beses> <ces beses>] | %46b
  <ces-1 aes-3>[
     _\markup { \fret-diagram-terse #"x;x;5;3;4;x;" } 
     <ces aes> <ces aes>] <ces aes>[ <ces aes> <ces aes>]
     <ces aes>[ <ces aes> <ces aes>] <ces aes>[ <ces aes> <ces aes>] | %47b
  \fingerLeft
  <ces-3 as-0>[
     _\markup { \fret-diagram-terse #"x;13;11;o;x;x;" } 
  \fingerRight
     <ces as> <ces as>] <ces as>[ <ces as> <ces as>]
     <ces as>[ <ces as> <ces as>] <ces as>[ <ces as> <ces as>] | %48b
  <ces as>[
     _\markup { \fret-diagram-terse #"x;13;11;o;x;x;" } 
     <ces as> <ces as>] <ces as>[ <ces as> <ces as>]
     <ces as>[ <ces as> <ces as>] <ces as>[ <ces as> <ces as>] | %49b
  
  <bes-3 as-0>[
    _\markup { \fret-diagram-terse #"x;12;10;o;x;x;" } 
    _\markup{\vspace #.8 \italic "cresc."} <bes as> <bes as>]
    <bes as>[ <bes as> <bes as>] <bes-2 g-4>\pI[
    _\markup { \fret-diagram-terse #"x;x;4;2;1;x;" } 
    <bes g> <bes g>] <bes g>[ <bes g> <bes g>] | %50b
  <c,-1>[\p  <es-4>_. es_.]  <as-0>[  es_. es_.]  <g-3>[  es_. es_.]  g[  es_. es_.] | %51b
  <as-0>[  <es-0>_. es_.]  as[  es_. es_.]  <bes'-1>[  <es,>_. es_.] 
     \once \override Fingering.staff-padding = #'() <bes'-2>[  <es,>_. es_.] | %52b
  <as-0>[  <es-0>_. es_.]  <bes'-1>[  es,_. es_.]  <c'-0>[  as_. as_.]  <d-1>[  as_. as_.] | %53b
  <g-3>[  <bes-1>_. bes_.]  g[  bes_. bes_.]  g[  bes_. bes_.]  <g-3>[  bes_. bes_.] | %54b
  <g-3>[  <bes-1> bes]  g[  bes bes]  g[  <es-4> es]  g[  <es-0> <es>] | %55b
  <as-0>[  <es-0> es]  as[  es es]  es[  <c-2> c]  es[  c c] | %56b
  <f-2>[  <des-3> des]  f[  des des]  <g-2>[  <des-2> des]  des[  des des] | %57b
  <des-2>[  <es-4> es]  des[  es es]  <c-1>[^. <es-0>^. <as-0>^.] <c-0>[-. <es_\3-1>-.\pVII <as_\2-2>-.] | %58b
  <c,-3>[  <es-1> es]  c[  es es]  <bes-1>[  <es-1> es]  bes[  es es] | %59b
  <es-1>[  <as-2> as]  es[  as as]  es[  <bes'-4> bes]  <es,-1>[  <bes'-4> bes] | %60b
  <es,-1>[  <as-2> as]  <es-1>[  <bes'-4> bes]  <as-1>[  <c-1> c]  <as-1>[  <d-2> d] | %61b
  <g,-2>[  <bes-1> bes]  g[  bes bes]  g[  bes bes]  g[  bes bes] | %62b
  <g-2>[  <bes-1> bes]  g[  bes bes]  <g-4>[  <es-3> es]  g[  es <es-1>] | %63b
  <as-2>[  <es-1> es]  as[  es es]  es[  <c-2> c]  es[  c c] | %64b
  <f-1>[  <des-1> des]  f[  des des]  <g-3>[  des des]  des[ des des] | %65b
 }
 s2*5         %66b - %70b
 s4 <g-3>4 | %71b
 <as!-4>8 b\rest <g,-3>4 | %72b
 }
}


bottom = \transpose c b { \relative c {
 \hideTupletNumber
 \hideTupletBracket
 \key as \major
 \time 2/4
 \clef treble
 \fingerRight

 % define fret diagram same way for this voice
 \setFretDiagramProperties

 <as-4>4\pII_\markup{\circle 6 "= D"} <des-2> | %1c
 <c-1>  <g-3> | %2c
 <as-4>8[ <g-3> <f-1>  <f'-1>] | %3c
 <es-4>4\ppII <es,-0> | %4c
 <des'-2> <des> | %5c
 <c-1>\bpII <f,-1> | %6c
 <bes-0>  <es,-0> | %7c
 <as-3>8\pIII <g-2> <as-3> r | %8c
 << {
  \fingerRight
  <as'-4>16 <es-0> as es <g-3>\pII es g es | %9cx
  <as-4> es as es <g-4> <es-0> g es | %10cx
  <as-4>\pIII <es-0> <g-4>\pII <es-0> <f-1>\bpII <as,-4> f' as, | %11cx
 } \\ {
  \fingerDown 
  <as-3>4 <des-2> | %9cy
  <c-1>  <g-3> | %10cy
  \fingerRight
  <as-3>8[ <g-3> <f-1> f] | %11cy
 } >>
 <es-0>16\ppII <g-3> <bes-0> <es-4> <g-3> <bes-1> g  bes | %12c
 <des,-2> <g,-3> <bes-0> <des-2> <g-3> <bes-1> g  des | %13c
 << {
  \fingerRight
  <c-1>16\ppII <es-0> c es <c-1>\bpII <f-1> c f | %14cx
  <des-2>\ppII <f-1> des f <bes,-0> <es-0> bes es | %15cx
  r\pIV <es-3> <g-1> es <as-4>8 r | %16cx
 } \\ {
 \fingerRight
  c,4 <f,-1> | %14cy
  s  <es-0> | %15cy
  <as-2>4. r8 | %16cy
 } >>
 \fingerLeft
 r16 c'\ppIV c c c c c c | %17c
 <c-1 g-1 e-3>\bpIV
    _\markup { \fret-diagram-terse #"x;6;4;4;x;x;" }
    <c g e> <c g e> <c g e> <c-1 as-2 f-4>
    _\markup { \fret-diagram-terse #"x;7;5;4;x;x;" }
    <c as f> <c as f> <c as f> | %18c
 <e-3 bes-1 g-2>\pII
    _\markup { \fret-diagram-terse #"x;x;4;2;4;x;" }
    <e bes g> <e bes g> <e bes g> <f-3 c-1 as-2>\pIV
    _\markup { \fret-diagram-terse #"x;x;5;4;5;x;" }
    <f c as> <f c as> <f c as> \clef treble | %19c
 <as-3 f-4 bes,-1>\pVII
    _\markup { \fret-diagram-terse #"x;x;7;9;8;x;" }
    <as f bes,> <as f bes,> <as f bes,> <as f b,-2>
    _\markup { \fret-diagram-terse #"x;x;8;9;8;x;" }
    <as f b,> <as d,-1 b>\ppVI
    _\markup { \fret-diagram-terse #"x;x;8;6;8;x;" }
    <as d, b> | %20c
 <g-1 es-1 c-3>\bpVII
    _\markup { \fret-diagram-terse #"x;x;9;7;7;x;" }
    <g es c> <g es c> <g es c> <es-1 as,-4>
    _\markup { \fret-diagram-terse #"x;10;x;7;x;x;" }
    <es as,> <es as,> <es as,> | %21c
 r <g-1 es-1 bes-1>\pVII
    _\markup { \fret-diagram-terse #"x;x;7;7;7;x;" }
    <g es bes> <g es bes> r <as,-2 d,-1 bes-4>\pIV
    _\markup { \fret-diagram-terse #"7;4;5;x;x;x;" }
    <as d, bes> <as d, bes> | %22c
 <g-1 es-2>8\ppIV
    _\markup { \fret-diagram-terse #"x;5;4;x;x;x;" }
    r r4 | %23c

 << {
  \fingerLeft
  <as-0 f-1>8[ <as f> <as f> <as f d-3>] | %24cx
 } \\ {
  \fingerLeft
  <bes,-0>2\pII | %24cy
 } >>
 <es,-0 g'-1>8\pIV r16 <bes'-4> <g-1> bes g  <es-0> | %25c
 <bes'-0 as'-0 f-2>4\pI <d-4 as'-0 f-2> | %26c
 \stemUp
 \fingerDown
 <f-2>16(_\p  <fes-1>)^\< <fes-1>(  <es-0>) <es-3>\pIII(  <d-2>) <d-2>(  <es-3>)^\! | %27c
 <es-3>(  <fes-4>)^\> <fes-4>(  <es-3>) <es-4>(_\markup{\dynamic "pp"}\pII  <d-3>) <d-3>(  <des-2>)^\! | %28c
 \stemNeutral
 \fingerRight
 <c-1>4\ppII <des-2> | %29c
 <c-1>  <g-3> | %30c
 <as-4>8[ <g-3> <f-1>  <f'-1>] | %31c
 <es-4>4\ppII <es,-0> | %32c
 <des'-2>  <des> | %33c
 <c-1>\bpII <f,-1> | %34c
 <bes-0>\ppII  <es,-0> | %35c
 <as-4>8 <g-3> <as-4> r | %36c
 \key as \minor
 <as'-0 as,-4>4 r | %37c
 << {
  \fingerRight
  \hideTupletNumber
  \tuplet 3/2 {<des-1>16\bpI[ des des]} \tuplet 3/2 {des16[ des <des-1>]}
  s4
 } \\ {
  \fingerRight
  <bes-2>8~  \hideTupletNumber
  \tuplet 3/2 {bes16[ bes <a-1>]} \fingerRight \tuplet 3/2 {<bes-2 des>[-. <bes-2>-.  <as-0>-.]}
  \tuplet 3/2 {<g-4>[-. <f-2>-. <es-0>-.]} | %38c
 } >>
 \fingerRight <as-4>8\pII r r4 | %39c
 \fingerDown
 <es-4>8~ \tuplet 3/2 {  <es>16[ <es-0>\pI <d-4>]   <es>[-. <fes-1>-.  es-.]  <des-3>[-. <ces-1>-.  <bes-0>-.] } | %40c
 \fingerRight
 <as-3>8\pIII r r4 | %41c
 \tuplet 3/2 {
  <ges'-1 es-3 beses-4>16\ppIII
     _\markup { \fret-diagram-terse #"6;5;3;x;x;x;" }
     [ <ges es beses> <ges es beses>] <ges es beses>[ <ges es beses> <ges es beses>]
     <aes-2 fes-3 aes,-1>\pV
     _\markup { \fret-diagram-terse #"5;6;5;x;x;x;" }
     [ <aes fes aes,> <aes fes aes,>] <aes fes aes,>[ <aes fes aes,> <aes fes aes,>] | %42c
  <bes-2 fes-1 des-3>\pI
     _\markup { \fret-diagram-terse #"x;3;1;2;x;x;" }
     [ <bes fes des> <bes fes des>] <bes fes des>[ <bes fes des> <bes fes des>]
     <aes-0 fes-2 ces-1>
     _\markup { \fret-diagram-terse #"x;1;1;o;x;x;" }
     [ <aes fes ces> <aes fes ces>] 
 }
 << { 
  <beses-1>8\bpI
 } \\ {
  % define fret diagram same way for this voice
  \setFretDiagramProperties
  \fingerRight
  \hideTupletNumber
  \tuplet 3/2 { <ces,-1 ges-3>16
   _\markup { \fret-diagram-terse #"3;1;x;1;x;x;" }
   [ <ces ges> <ces ges>] }
 } >> | %43c
 
 <fes-2 fes,-1>8\pI r r4 | %44c
 <fes-2 fes,-1> r | %45c
 \fingerDown
 <ges-3>8~ \tuplet 3/2 {  ges16[ ges^3 <f-2>]   ges[-. ges-2-.  <fes-1>-.]  <ees-0>[-. <des-3>-.  <ces-1>-.\bpI] } | %46c
 <fes-1>8\ppI r r4 | %47c
 \tuplet 3/2 { r16 <f,-1>\pII[-. <as-4>-.]  <ces-1>\pI[-. <d-4>-. <f-1>-.\pII] } <as-4>8 r | %48c
 \tuplet 3/2 { r16  <f,-1>\pII[-. <as-4>-.]  <ces-1>\pI[-. <d-4>-. <f-1>-.\pII] } <as-4>8 r | %49c

 \fingerDown
 \hideTupletNumber
 \hideTupletBracket
 \tuplet 3/2 { r16  <fes,-1>\pI[ <as-4>\pII] } <bes-0>8
 \tuplet 3/2 { r16  <es,-0>[ <g-3>] }
 << {
  \fingerLeft
  \hideTupletNumber
  \hideTupletBracket
  \tuplet 3/2 { <es'-0>16 es es }
 } \\ {
  <bes>8
 } >> | %50c

 \key as \major
 \fingerRight
 <as-4>4\ppII <des-2> | %51c
 <c-1>  <g-3> | %52c
 <as-4>8\ppII[ <g-3> <f-1>  <f'-1>] | %53c
 <es-4>4 <es,-0> | %54c
 <des'-2>  <des> | %55c
 <c-1>\bpII <f,-1> | %56c
 <bes-0>  <es,-0> | %57 c
 <as-3>8\pIII <g-2> <as-3> r | %58c
 << {
  \fingerRight
  \tuplet 3/2 {
    \hideTupletBracket
    \hideTupletNumber
    <as'-4>16\ppIII[(  <es-0>) es]  as[(  es) es]  <g-3>\pII[(  <es-0>) es]  g[(  es) es] | %59cx
    <as-4>[(  <es-0>) es]  as[(  es) es]  <g-4>[(  es) es]  g[(  es) es] | %60cx
    <as-4>\pIII[(  <es-0>) es]  <g-4>\pII[(  <es-0>) es]  <f-1>[(  <as,-4>) as]  f'[(  as,) as] | %61cx
  }
 } \\ {
  \fingerRight
  <as-3>4 <des-2> | %59cy
  <c-1> <g-3> | %60cy
  <as-3>8[ <g-3>  <f-1> f] | % 61cy
 } >>
 \fingerDown
 \tuplet 3/2 {  <es'-0>16\ppII[-. <g,-3>-. <bes-0>-.]  <es-4>[-. <g-3>-. <bes-1>-.] } <es-2>4 | %62c
 \tuplet 3/2 {  <des,-2>16[-. <g,-3>-. <bes-0>-.]  <des-2>[-. <g-3>-. <bes-1>-.] } <des-4>4 | %63c
 \fingerRight
 <c-3> <f,-1> | %64c
 <bes,-0>\ppII  { \tuplet 3/2 { 
 \hideTupletBracket
 \hideTupletNumber
 <bes-0 es,-0>16[  <es-4> <es-4>]  <es,-0>[  <es'-0> <es-0>] } } | %65c
 \hideTupletNumber
 \tuplet 3/2 {
  <as,-4>16[ <es'-0>-.^\markup{\vspace #-.3 \halign #0.7 \dynamic "pp"}  es-.]
     es[-. es-.  es-.]  es[ es es]  es[ es es] | %66c
  \fingerLeft
  <es-0 des-2>
     _\markup { \fret-diagram-terse #"x;3;o;x;x;x;" }
     [ <es des> <es des>] <es des>[ <es des> <es des>]
     <es des>[ <es des> <es des>] <es des>[ <es des> <es des>] | %67c
  <es-0 c-1 as-4>\ppII
     _\markup { \fret-diagram-terse #"5;2;o;x;x;x;" }
     [ es-.  es-.] \stemNeutral es[-. es-.  es-.]  es[ es es]  es[ es es] | %68c
  <es-0 des-2 es,-0>
     _\markup { \fret-diagram-terse #"o;3;o;x;x;x;" }
     [^\< <es des es,> <es des es,>] <es des es,>[ <es des es,> <es des es,>]_\!
     <es des es,>
     [^\> <es des es,> <es des es,>] <es des es,>[ <es des es,> <es des es,>]\! | %69c
 }
 <es-0 c-1 as-4>8 r \clef treble <g'-1 es-2>4 \hideTupletNumber| %70c
 \fingerLeft
 <as-1 as,-3>8\pIII r <des,-4 es,-3>4 | %71c
 <c-2 as-3>8 r <des,-2 es,-0>4\pII | %72c
 <c-1 as-4>16 r <es-0 as,-4> r \fingerLeft <c-1 as-4>4_\markup{" "}_\fermata \bar "|." %73
 }
}

\score {
    \context PianoStaff <<
        \context Staff = "up" \with { instrumentName = #"Guitar I   " } <<
            \set Staff.midiInstrument = #"acoustic grand"
            \context Voice = VA { \voiceOne \topmain }
            \context Voice = VB { \voiceTwo \topsecondary }
        >>
    \context Staff = "down" \with { instrumentName = #"Guitar II  " } <<
            \set Staff.midiInstrument = #"acoustic grand"
            \bottom
        >>
    >>
    \layout{}
    \midi {  
        \transposition c % guitar plays octave lower than written
        \context{
            \Voice
            \remove "Dynamic_performer"
        }
    }
}
