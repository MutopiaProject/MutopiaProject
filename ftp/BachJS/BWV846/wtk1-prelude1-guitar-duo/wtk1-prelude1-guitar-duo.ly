\version "2.18.2"

% Acknowledgment:  Thanks to Shay Rojansky, Han-Wen Nienhuys,
% Tobias Erbsland and Javier Ruiz-Alma for creating and maintaining
% the original piano version (Mutopia-2011/09/12-5) from which
% this version for guitar duo was adapted.  A copy of Bach's
% manuscript is available on IMSLP #330042.

\header{
 title = "Das Wohltemperierte Klavier I - Praeludium 1"
 subtitle = \markup { "Three Transcriptions for Guitar Duo" }
 composer = "Johann Sebastian Bach (1685-1750)"
 opus = "BWV 846"
 style = "Baroque"
 date = "1722"
 source = "D B Mus. ms. Bach P 202 (Berlin, Staatsbibliothek)" % IMSLP #330042
 moreInfo = "Three guitar duo transciptions, for Fidelity, Felicity and Facility, respectively.  The first is the most accurate, though more difficult.  The third has easy fingerings for beginners, while the second is the happy medium."

 %            o_
 %       (\___\/_____/)
 %  ~ ~ ~ ~ ~ / ~ ~ ~ ~ ~ ~ ~
 maintainer = "Jeffrey Olson"
 maintainerEmail = "gmail's jjocanoe"
 license = "Public Domain"

 mutopiacomposer = "BachJS"
 mutopiatitle = "Das Wohltemperierte Klavier I, Praeludium I"
 mutopiaopus = "BWV 846"
 mutopiadate = "1722"
 mutopiasource = "D B Mus. ms. Bach P 202 (Berlin, Staatsbibliothek)"
 mutopiainstrument = "2 Guitars"

 footer = "Mutopia-2017/11/06-2206"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white "ǀ" \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {"ǀ" "ǀ"}}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " "by " \maintainer " — " \footer}\concat {\concat {\abs-fontsize #8 { "Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "Public Domain" " by the typesetter " " — free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white "ǀ" }}}
 tagline = ##f
 mytagline = \markup{ \column { \vspace #1 \smaller \italic { \concat { "Fingerings and mnemonics by " \maintainer ", " \footer } } } }
}

\paper{
  page-count = #3
  %#(set-paper-size "a4")      %uncomment to test specific paper size
  %#(set-paper-size "letter")  %uncomment to test specific paper size
  indent = \indent + 7\mm
  top-margin = 8\mm
  bottom-margin = 8\mm
  ragged-last-bottom = ##f
  print-first-page-number = ##f
  evenHeaderMarkup = \oddHeaderMarkup % so all page numbers to right
  oddFooterMarkup = \markup { \column {
      \fill-line { \on-the-fly #first-page \column { \combine \null \vspace #1 \fromproperty #'header:copyright } }
      \fill-line { \on-the-fly #last-page \fromproperty #'header:mytagline }
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

% abbreviation to tweak sting number location
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

% standard rehearsal marks
markBox = \set Score.markFormatter = #format-mark-box-alphabet
mrk = \mark \default

% fret-diagram-interface values used in multiple voices (define here once).
% These values produce a small horizontal dot diagram without labels.
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

% let ring (laissez vibrer ties)
lv = \laissezVibrer
lvText = _\markup { \smaller \italic "laissez vibrer" }
lvDown = \override LaissezVibrerTie.direction = #DOWN
lvExtent = #(define-music-function (parser location further) (number?) #{
     % from lilypond-user Nick Payne
     \override LaissezVibrerTie.X-extent = #'(0 . 0)
     \override LaissezVibrerTie.details.note-head-gap = #(/ further -2)
     \override LaissezVibrerTie.extra-offset = #(cons (/ further 2) 0)
#})

% rest rest abbreviation for upperVoice
rr = {b,16\rest b,\rest}
fr = #(define-music-function (parser location frets) (string?) #{
     {b,16\rest^\markup{\fret-diagram-terse #frets } b,\rest}
#})



%\pointAndClickOff

upperInstrument = \markup{ "Guitar I   " }
upperVoice = {
  \transpose c c'' {
    \stemDown
    \fingerLeft
    \setFretDiagramProperties

    % "demo: short round trip"
    \fr #"x;x;x;12-1;13-4;12-2;"  <g-1>\pXII[ <c'-4>]   <e'-2>[ g c' e']
    \rr   g[ c']   e'[ g c' e'] | %1a
    \fr #"x;x;x;14-1;15-4;13-2;"   <a-1>\pXIV[ <d'-4>]   <f'-2>[ a d' f']
    \rr a[ d']   f'[ a d' f'] | %2a
    \fr #"x;x;x;12-1;15-4;13-2;"   <g-1>\pXII[ <d'-4>]   <f'-2>[ g d' f']
    \rr g[ d']   f'[ g d' f'] | %3a
    \fr #"x;x;x;12-1;13-3;12-2;"  <g-1>[ <c'-3>]   <e'-2>[ g c' e']
    \rr g[ c']   e'[ g c' e'] | %4a

    % "high: octaves A and G"
    \fr #"x;x;x;14-1;17-4;17-4;"   <a-1>\pXIV[ <e'-4>]   <a'-4>[ a e' a']
    \rr a[ e']   a'[ a e' a'] | %5a
    \fr #"x;x;x;11-2;10-1;10-1;"   <fis-2>\bpX[ <a-1>]   <d'-1>[ fis a d']
    \rr fis[ a]   d'[ fis a d'] | %6a
    \fr #"x;x;x;12-1;15-4;15-4;"   <g-1>\pXII[ <d'-4>]   <g'-4>[ g d' g']
    \rr g[ d']   g'[ g d' g'] | %7a

    % "shift: 3 hanging Cs"
    \fr #"x;x;x;9-2;8-1;8-1;"   <e-2>\bpVIII[ <g-1>]   <c'-1>[ e g c']
    \rr e[ g]   c'[ e g c'] | %8a
    \fr #"x;x;x;9-2;8-1;8-1;"   e[ g]   c'[ e g c']
    \rr e[ g]   c'[ e g c'] | %9a
    \fr #"x;x;x;7-1;7-1;8-2;"   <d-1>\bpVII[ <fis-1>]   <c'-2>[ d fis c']
    \rr d[ fis]   c'[ d fis c'] | %10a

    % "G resolve and lift"
    \fr #"x;x;x;7-1;8-2;7-1;"   <d-1>\bpVII[ <g-2>]   <b-1>[ d g b]
    \rr d[ g]   b[ d g b] | %11a
    \fr #"x;x;x;9-3;8-2;9-4;"   <e-3>\pVII[ <g-2>]   <cis'-4>[ e g cis']
    \rr e[ g]   cis'[ e g cis'] | %12a

    % "mid: octaves D and C"
    \fr #"x;x;x;7-1;10-4;10-4;"   <d-1>\pVII[ <a-4>]   <d'-4>[ d a d']
    \rr d[ a]   d'[ d a d'] | %13a
    \fr #"x;x;x;7-2;6-1;7-3;"   <d-2>\pVI[ <f-1>]   <b-3>[ d f b]
    \rr d[ f]   b[ d f b] | %14a
    \fr #"x;x;x;5-1;8-4;8-4;"   <c-1>\pV[ <g-4>]   <c'-4>[ c g c']
    \rr c[ g]   c'[ c g c'] | %15a

    % "shift: 3 hangings Fs"
    \stemUp
    \fr #"x;x;7-3;5-1;6-2;x;"   <a,-3>\pV[ <c-1>]   <f-2>[ a, c f]
    \rr a,[ c]   f[ a, c f] | %16a
    \fr #"x;x;7-3;5-1;6-2;x;"   a,[ c]   f[ a, c f]
    \rr a,[ c]   f[ a, c f] | %17a
    \fr #"x;x;5-2;4-1;6-4;x;"   <g,-2>\pIV[ <b,-1>]   <f-4>[ g, b, f]
    \rr g,[ b,]   f[ g, b, f] | %18a

    % "C resolve and lift"
    \fr #"x;x;5-1;5-1;5-1;x;"   <g,-1>\bpV[ <c-1>]   <e-1>[ g, c e]
    \rr g,[ c]   e[ g, c e] | %19a
    \fr #"x;x;8-4;5-1;5-1;x;"   <bes,-4>\bpV[ <c-1>]   <e-1>[ bes, c e]
    \rr bes,[ c]   e[ bes, c e] | %20a

    % "deep F"
    \fr #"x;x;7-4;5-1;5-1;x;"   <a,-4>\bpV[ <c-1>]   <e-1>[ a, c e]
    \rr a,[ c]   e[ a, c e] | %21a

    % "tighten until it hurts"
    \fr #"x;x;7-4;5-2;4-1;x;"   <a,-4>\pIV[ <c-2>]   <ees-1>[ a, c ees]
    \rr a,[ c]   ees[ a, c ees] | %22a
    \rhDown
    \fr #"x;x;10-4;7-1;o;x;"   <b,-0\M>\pVII[ <c-4\P>]   <d-1\I>[ <b,\M> <c\P> <d\I>]
    \rr b,[ c]   d[ b, c d] | %23a

    % "relax to G C"
    \fr #"x;x;5-3;4-2;3-1;x;"   <g,-3>\pIII[ <b,-2>]   <d-1>[ g, b, d]
    \rr g,[ b,]   d[ g, b, d] | %24a
    \fr #"x;x;5-1;5-1;5-1;x;"   <g,-1>\bpV[ <c-1>]   <e-1>[ g, c e]
    \rr g,[ c]   e[ g, c e] | %25a

    % "DFs on C B"
    \fr #"x;x;5-1;5-1;6-4;x;"   <g,-1>\bpV[ <c-1>]   <f-4>[ g, c f]
    \rr g,[ c]   f[ g, c f] | %26a
    \fr #"x;x;5-2;4-1;6-4;x;"   <g,-2>\pIV[ <b,-1>]   <f-4>[ g, b, f]
    \rr g,[ b,]   f[ g, b, f] | %27a

    % "hope rises briefly"
    \fr #"x;x;7-3;5-1;7-4;x;"   <a,-3>\pV[ <c-1>]   <fis-4>[ a, c fis]
    \rr a,[ c]   fis[ a, c fis] | %28a
    \fr #"x;x;5-1;5-1;8-4;x;"   <g,-1>\bpV[ <c-1>]   <g-4>[ g, c g]
    \rr g,[ c]   g[ g, c g] | %29a

    % "but DFs return"
    \fr #"x;x;5-1;5-1;6-4;x;"   <g,-1>\bpV[ <c-1>]   <f-4>[ g, c f]
    \rr g,[ c]   f[ g, c f] | %30a
    \fr #"x;x;5-2;4-1;6-4;x;"   <g,-2>\pIV[ <b,-1>]   <f-4>[ g, b, f]
    \rr g,[ b,]   f[ g, b, f] | %31a

    % "deep C change"
    \fr #"x;x;5-3;3-1;5-4;x;"   <g,-3>\pIII[ <bes,-1>]   <e-4>[ g, bes, e]
    \rr g,[ bes,]   e[ g, bes, e] | %32a

    % "home stretch F then G"
    \rhDown
    b,16\rest\pV^\markup{ \fret-diagram #"5-8;4-o;4-7;3-5;2-6;" } b,\rest
    <f,-4\P>[ <a,-3\I>]   <c-1\M>[ <f-2\A> <c\M> <a,\I>]
    <c\M>[ <a,\I> <f,\P> <a,\I>]   <f,\P>[ <d,-0\I> <f,\P> <d,\I>] | %33a
    \stemDown
    b,16\rest\pX^\markup{\fret-diagram #"3-12-2;2-12-3;1-10-1;1-13-4;" } b,\rest
    <g-2\P>[ <b-3\I>]   <d'-1\M>[ <f'-4\A> <d'\M> <b\I>]
    <d'\M>[ <b\I> <g\P> <b\I>]   <d-1\P>\pVII[^\markup{ \fret-diagram #"3-7;3-9;3-10;" } <f-4\I> <e-3\P> <d-1\I>] | %34a

    <c-3 e-2 g-1 c'-1>1\bpVIII\fermata\arpeggio ^\markup { \fret-diagram-terse #"x;x;10-3;9-2;8-1;8-1;" } | %35a
  }
}

lowerInstrument = \markup{ "Guitar II  " }
lowerVoice = {
  \transpose c c' {
    \markBox
    \stemUp
    \fingerLeft
    \lvDown
    \lvExtent #5

    % "demo: short round trip"
    \mrk
    <c'-3>16\lv\lvText\pIII <e'-4>\lv s s s s s s     c'\lv e'\lv s s s s s s | %1b
    <c'-3>\lv <d'-1>\lv s s s s s s     c'\lv d'\lv s s s s s s | %2b
    <b-2>\lv\ppIII <d'-1>\lv s s s s s s     b\lv d'\lv s s s s s s | %3b
    <c'-3>\lv <e'-4>\lv s s s s s s     c'\lv e'\lv s s s s s s | %4b

    % "high: octaves A and G"
    \mrk
    <c'-3>\lv\ppIII <e'-4>\lv s s s s s s     c'\lv e'\lv s s s s s s | %5b
    <c'-3>\lv <d'-1>\lv s s s s s s     c'\lv d'\lv s s s s s s | %6b
    <b-4>\lv\ppIII <d'-1>\lv s s s s s s     b\lv d'\lv s s s s s s | %7b

    % "shift: 3 hanging Cs"
    <b-4>\lv\pI <c'-1>\lv s s s s s s     b\lv c'\lv s s s s s s | %8b
    <a-2>\lv\ppI <c'-1>\lv s s s s s s     a\lv c'\lv s s s s s s | %9b
    <d-0>\lv <a-2>\lv s s s s s s     d\lv a\lv s s s s s s | %10b

    % "G resolve and lift"
    <g-3>\lv\pIII <b-2>\lv s s s s s s     g\lv b\lv s s s s s s | %11b
    <g-3>\lv <bes-1>\lv s s s s s s     g\lv bes\lv s s s s s s | %12b

    % "mid: octaves D and C"
    \mrk
    <f-3>\lv\pI <a-2>\lv s s s s s s     f\lv a\lv s s s s s s | %13b
    <f-3>\lv <aes-1>\lv s s s s s s     f\lv aes\lv s s s s s s | %14b
    <e-1>\lv\pII <g-0>\lv s s s s s s     e\lv g\lv s s s s s s | %15b

    % "shift: 3 hangings Fs"
    \stringDown
    <e-4\5>\lv\pIII <f-1\4>\lv s s s s s s     e\lv f\lv s s s s s s | %16b
    <d-3>\lv\ppIII <f-1>\lv s s s s s s     d\lv f\lv s s s s s s | %17b
    <g,-1>\lv <d-3>\lv s s s s s s     g,\lv d\lv s s s s s s | %18b

    % "C resolve and lift"
    <c-3>\lv\pI <e-2>\lv s s s s s s     c\lv e\lv s s s s s s | %19b
    <c-3>\lv <g-0>\lv s s s s s s     c\lv g\lv s s s s s s | %20b

    % "deep F"
    \mrk
    <f,-1>\lv\ppI <f-3>\lv s s s s s s     f,\lv f\lv s s s s s s | %21b

    % "tighten until it hurts"
    <fis,-1>\lv\pII <c-2>\lv s s s s s s     fis,\lv c\lv s s s s s s | %22b
    <aes,-4>\lv\ppII <f-3>\lv s s s s s s     aes,\lv f\lv s s s s s s | %23b

    % "relax to G C"
    <g,-2>\lv <f-3>\lv s s s s s s     g,\lv f\lv s s s s s s | %24b
    <g,-2>\lv\ppII <e-1>\lv s s s s s s     g,\lv e\lv s s s s s s | %25b

    % "DFs on C B"
    \mrk
    <g,-2>\lv <d-0>\lv s s s s s s     g,\lv d\lv s s s s s s | %26b
    <g,-3>\lv\pI <d-0>\lv s s s s s s     g,\lv d\lv s s s s s s | %27b

    % "hope rises briefly"
    <g,-3>\lv <ees-1>\lv s s s s s s     g,\lv ees\lv s s s s s s | %28b
    <g,-3>\lv\ppI <e!-2>\lv s s s s s s     g,\lv e!\lv s s s s s s | %29b

    % "but DFs return"
    <g,-3>\lv <d-0>\lv s s s s s s     g,\lv d\lv s s s s s s | %30b
    <g,-3>\lv\ppI <d-0>\lv s s s s s s     g,\lv d\lv s s s s s s | %31b

    % "deep C change"
    \mrk
    <g,-3>\lv <c-4>\lv s s s s s s     g,\lv c\lv s s s s s s | %32b

    % home stretch F then G"
    <f,-1>16\lv\ppI <c-4>\lv s2.. | %33b
    <g,-3>16\lv <b,-2>\lv s2.. | %34b
    <c-3 e-2 c'-1>1\arpeggio_\fermata \bar "|."  %35b
  }
}


\bookpart {
  \score {
    \context StaffGroup <<
      \set StaffGroup.connectArpeggios = ##t
      \context Staff = "upper" \with { instrumentName = \upperInstrument } <<
        \set Staff.midiInstrument = #"acoustic guitar (nylon)"
        \clef "treble"
        \context Voice = "1" { \voiceOne \upperVoice }
       >>
      \context Staff = "lower" \with { instrumentName = \lowerInstrument } <<
        \set Staff.midiInstrument = #"acoustic guitar (nylon)"
        \clef "treble"
        \context Voice = "2" { \voiceTwo \lowerVoice }
       >>
    >>
    \layout {}
    \midi {
      \tempo 4 = 60
      \transposition c % guitar plays octave lower than written
    }
  }
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

uprVoice = {
  \transpose c c'' {
    \setFretDiagramProperties
    \fingerLeft
    \stringRight

    % "demo: short round trip"
    <g-1 c'-4 e'-2>1\pXII ^\markup { \fret-diagram-terse #"x;x;x;12-1;13-4;12-2;" } | %1a
    <a-1 d'-4 f'-2>1\pXIV ^\markup { \fret-diagram-terse #"x;x;x;14-1;15-4;13-2;" } | %2a
    <g-1 d'-4 f'-2>1\pXII ^\markup { \fret-diagram-terse #"x;x;x;12-1;15-4;13-2;" } | %3a
    <g-1 c'-3 e'-2>1\pXII ^\markup { \fret-diagram-terse #"x;x;x;12-1;13-3;12-2;" } | %4a

    % "high: octaves A and G"
    <a-1 e'-4 a'-4>1\pXIV ^\markup { \fret-diagram-terse #"x;x;x;14-1;17-4;17-4;" } | %5a
    <fis-2 a-1 d'-1>1\bpX ^\markup { \fret-diagram-terse #"x;x;x;11-2;10-1;10-1;" } | %6a
    <g-1 d'-4 g'-4>1\pXII ^\markup { \fret-diagram-terse #"x;x;x;12-1;15-4;15-4;" } | %7a

    % "shift: 3 hanging Cs"
    <e-2 g-1 c'-1>1\bpVIII ^\markup { \fret-diagram-terse #"x;x;x;9-2;8-1;8-1;" } | %8a
    <e g c'>1 | %9a
    <d-1 fis-1 c'-2>1\bpVII ^\markup { \fret-diagram-terse #"x;x;x;7-1;7-1;8-2;" } | %10a

    % "G resolve and lift"
    <d-1 g-2 b-1>1\bpVII ^\markup { \fret-diagram-terse #"x;x;x;7-1;8-2;7-1;" } | %11a
    <e-3 g-2 cis'-4>1\pVII ^\markup { \fret-diagram-terse #"x;x;x;9-3;8-2;9-4;" } | %12a

    % "mid: octaves D and C"
    <d-1 a-4 d'-4>1\pVII ^\markup { \fret-diagram-terse #"x;x;x;7-1;10-4;10-4;" } | %13a
    <d-2 f-1 b-3>1\pVI ^\markup { \fret-diagram-terse #"x;x;x;7-2;6-1;7-3;" } | %14a
    <c-1 g-4 c'-4>1\pV ^\markup { \fret-diagram-terse #"x;x;x;5-1;8-4;8-4;" } | %15a


    % "shift: 3 hangings Fs"
    <a,-3 -\strXY #'(0 . -.4) \4 c-1\3 f-2\2>1\pV ^\markup { \fret-diagram-terse #"x;x;7-3;5-1;6-2;x;" } | %16a
    <a, c f>1 | %17a
    <g,-2 b,-1 f-4>1\pIV ^\markup { \fret-diagram-terse #"x;x;5-2;4-1;6-4;x;" } | %18a

    % "C resolve and lift"
    <g,-1 c-1 e-1>1\bpV ^\markup { \fret-diagram-terse #"x;x;5-1;5-1;5-1;x;" } | %19a
    <bes,-4 c-1 e-1>1\bpV ^\markup { \fret-diagram-terse #"x;x;8-4;5-1;5-1;x;" } | %20a

    % "deep F"
    <a,-\fngXY #'(0 . 0.2)-4 c-\fngXY #'(0 . 0.2)-1 e-1>1\bpV ^\markup { \fret-diagram-terse #"x;x;7-4;5-1;5-1;x;" } | %21a

    % "tighten until it hurts"
    <a,-4 c-2 ees-1>1\pIV ^\markup { \fret-diagram-terse #"x;x;7-4;5-2;4-1;x;" } | %22a
    <b,-0 c-4 d-1>\pVII _\markup { \teeny \italic "m p i" }
    ^\markup { \fret-diagram-terse #"x;x;10-4;7-1;o;x;" } | %23a

    % "relax to G C"
    <g,-3 b,-2 d-1>1\pIII ^\markup { \fret-diagram-terse #"x;x;5-3;4-2;3-1;x;" } | %24a
    <g,-1 c-1 e-1>1\bpV ^\markup { \fret-diagram-terse #"x;x;5-1;5-1;5-1;x;" } | %25a

    % "DFs on C B"
    <g,-1 c-1 f-4>1\bpV ^\markup { \fret-diagram-terse #"x;x;5-1;5-1;6-4;x;" } | %26a
    <g,-2 b,-1 f-4>1\pIV ^\markup { \fret-diagram-terse #"x;x;5-2;4-1;6-4;x;" } | %27a

    % "hope rises briefly"
    <a,-3 c-1 fis-4>1\pV ^\markup { \fret-diagram-terse #"x;x;7-3;5-1;7-4;x;" } | %28a
    <g,-1 c-1 g-4>1\bpV ^\markup { \fret-diagram-terse #"x;x;5-1;5-1;8-4;x;" } | %29a

    % "but DFs return"
    <g,-1 c-1 f-4>1\bpV ^\markup { \fret-diagram-terse #"x;x;5-1;5-1;6-4;x;" } | %30a
    <g,-2 b,-1 f-4>1\pIV ^\markup { \fret-diagram-terse #"x;x;5-2;4-1;6-4;x;" } | %31a

    % "deep C change"
    <g,-3 bes,-1 e-4>1\pIII ^\markup { \fret-diagram-terse #"x;x;5-3;3-1;5-4;x;" } | %32a

    % home stretch F then G"
    \rhDown
    b,16\rest\pV^\markup{ \fret-diagram #"5-8;4-o;4-7;3-5;2-6;" } b,\rest
    <f,-4\P>[ <a,-3\I>]   <c-1\M>[ <f-2\A> <c\M> <a,\I>]
    <c\M>[ <a,\I> <f,\P> <a,\I>]   <f,\P>[ <d,-0\I> <f,\P> <d,\I>] | %33a
    \stemDown
    b,16\rest\pX^\markup{\fret-diagram #"3-12-2;2-12-3;1-10-1;1-13-4;" } b,\rest
    <g-2\P>[ <b-3\I>]   <d'-1\M>[ <f'-4\A> <d'\M> <b\I>]
    <d'\M>[ <b\I> <g\P> <b\I>]   <d-1\P>\pVII[^\markup{ \fret-diagram #"3-7;3-9;3-10;" } <f-4\I> <e-3\P> <d-1\I>] | %34a

    <c-3 e-2 g-1 c'-1>1\bpVIII\fermata\arpeggio ^\markup { \fret-diagram-terse #"x;x;10-3;9-2;8-1;8-1;" } | %35a
  }
}

% abbreviations for mnemonic text
mn = #(define-scheme-function (parser location text) (string?) #{
     \markup { \italic #text }
#})
mns = \markup { \with-color #white I }

lorVoice = {
  \transpose c c' {
    \fingerLeft
    \stringRight
    \markBox

    \mrk
    <c'-3 -\strXY #'(0 . -.2) \3 e'-4 -\strXY #'(0 . .2) \2>1\pIII ^\mn "demo: short round trip" | %1b
    <c'-3 d'-1>1 | %2b
    <b-2 d'-1>1 | %3b
    <c'-3 e'-4>1 \bar "||" %4b

    \mrk
    <c'-3 e'-4>1 ^\mns ^\mn "high: octaves A and G" | %5b
    <c'-3 d'-1>1 | %6b
    <b-4 d'-1>1 \bar "||" %7b

    <b-4 c'-1>1\pI ^\mn "shift: 3 hanging C's" | %8b
    <a-2 c'-1>1 | %9b
    <d\4-0 a\3-2>1 \bar "||" %10b

    <g-3 b-2>1\pIII ^\mn "G resolve and lift" | %11b
    <g-3 bes-1>1 \bar "||" %12b

    \mrk
    <f-3 a-2>1\pI ^\mn "mid: octaves D and C" | %13b
    <f-3 aes-1>1 | %14b
    <e-1 g-0>1\pII \bar "||" %15b

    %<e-4\5 f-1 -\tweak StringNumber.extra-offset #'( 1.6 . 0 ) \4>1_\markup{ \teeny \italic "(stretch)" } \pIII ^\mn "shift: 3 hanging F's" | %16b
    <e-4\5 f-1 -\strXY #'( 1.6 . 0 ) \4>1_\markup{ \teeny \italic "(stretch)" } \pIII ^\mn "shift: 3 hanging F's" | %16b
    <d-3 -\strXY #'(0 . -.25) \5 f-1 -\strXY #'(0 . .25) \4>1 | %17b
    <g,\6-1 d\5-3>1 \bar "||" %18b

    <c-3 e-2>1\pI ^\mn "C resolve and lift" | %19b
    <c-3 g-0>1 \bar "||" %20b

    \mrk
    \phrasingSlurDashed % hint to keep finger 3 down
    <f,-1 f-3>1^\( ^\mns ^\mn "deep F" \bar "||" %21b

    <fis,-1 c-2>1\pII ^\mn "until it hurts" ^\mn "tighten" | %22b
    <aes,-4 f-3>1\) \bar "||" %23b

    <g,-2 f-3>1 ^\mns ^\mn "relax to G C" | %24b
    <g,-2 e-1>1 \bar "||" %25b

    \mrk
    <g,-2 d-0>1 ^\mns ^\mn "DFs on C B" | %26b
    <g,-3 d-0>1\pI \bar "||" %27b

    <g,-3 ees-1>1 ^\mns ^\mn "hope rises briefly" | %28b
    <g,-3 e!-2>1 \bar "||" %29b

    <g,-3 d-0>1 ^\mns ^\mn "but DFs return" | \noBreak %30b
    <g,-3 d-0>1 \bar "||" %31b

    \mrk
    <g,-3 c-4>1 ^\mn "change" ^\mn "deep C" \bar "||" %32b

    %<f,-1 c-4>1 ^\mn "home stretch F then G" | %33b
    %<g,-3 b,-2>1 \bar "||" %34b
    <<
      {
        \set fingeringOrientations = #'(left)
        r16 <c-4>8. ~ c4 ^\mn "home stretch F then G" ~ c2 | %33b
        r16 <b,-2>8. ~ b,4 ~ b,2 \bar "||" %34b
      } \\ {
        \set fingeringOrientations = #'(left)
        <f,-1>1 | %33b
        <g,-3> | %34b
      }
    >>
    <c-3 e-2 c'-1>1\arpeggio_\fermata \bar "|."  %35b
  }
}

\bookpart {
  \header{
   subtitle = \markup { "Précis of Transcription No. 1 of 3 for Fidelity" }
   %mytagline = \markup{ \column { \vspace #1 \smaller \italic { \concat { "Fingerings and mnemonics by J. J. Olson, " Book.footer } } } }
  }
  \paper {
    page-count = 1
    indent = 0.0
    oddFooterMarkup = \markup {
      \fill-line { \fromproperty #'header:mytagline }
    }
    evenFooterMarkup = \oddFooterMarkup
  }
  \score {
    \context StaffGroup <<
      \set StaffGroup.connectArpeggios = ##t
      \context Staff = "upr" <<
        \clef "treble"
        \context Voice = "1" { \voiceOne \uprVoice }
       >>
      \context Staff = "lor" <<
        \clef "treble"
        \context Voice = "2" { \voiceTwo \lorVoice }
       >>
    >>
    \layout {}
  }
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

uprVoice = {
  \transpose c c'' {
    \setFretDiagramProperties
    \fingerLeft
    \stringRight

    % lower first 15 bars for ez version
    \transpose c c, {

      % "demo: short round trip"
      <g-1 c'-1 e'-1>1\bpV ^\markup { \fret-diagram-terse #"x;x;5;5;5;x;" } | %1a
      <a-3 d'-4 f'-2>1\pV ^\markup { \fret-diagram-terse #"x;x;7;7;6;x;" } | %2a
      <g-1 d'-4 f'-2>1\pV ^\markup { \fret-diagram-terse #"x;x;5;7;6;x;" } | %3a
      <g-1 c'-1 e'-1>1\bpV ^\markup { \fret-diagram-terse #"x;x;5;5;5;x;" } | %4a

      % "high: octaves A and G"
      <a-3 e'-1 a'-1>1 ^\markup { \fret-diagram-terse #"x;x;7;x;5;5;" } | %5a
      <fis-3 a-1 d'-2>1\pII ^\markup { \fret-diagram-terse #"x;x;4;2;3;x;" } | %6a
      <g-3 d'-1 g'-1>1\pIII ^\markup { \fret-diagram-terse #"x;x;5;x;3;3;" } | %7a

      % "shift: 3 hanging Cs"
      <e-3\5 g-1 c'-1>1\bpV ^\markup { \fret-diagram-terse #"x;7;5;5;x;x;" } | %8a
      <e g c'>1 | %9a
      <d-3 fis-2 c'-4>1\pIII ^\markup { \fret-diagram-terse #"x;5;4;5;x;x;" } | %10a

      % "G resolve and lift"
      <d-3 g-4 b-2>1\pIII ^\markup { \fret-diagram-terse #"x;5;5;4;x;x;" } | %11a
      <e-3 g-1 cis'-2>1\pV ^\markup { \fret-diagram-terse #"x;7;5;6;x;x;" } | %12a

      % "mid: octaves D and C"
      <d-1 a-3 d'-4>1\pV ^\markup { \fret-diagram-terse #"x;5;7;7;x;x;" } | %13a
      <d-3 f-1 b-2>1\pIII ^\markup { \fret-diagram-terse #"x;5;3;4;x;x;" } | %14a
      <c-1 g-3 c'-4>1\pIII ^\markup { \fret-diagram-terse #"x;3;5;5;x;x;" } | %15a
    }


    % "shift: 3 hangings Fs"
    <a,-3 -\strXY #'(0 . -.4) \4 c-1\3 f-2\2>1\pV ^\markup { \fret-diagram-terse #"x;x;7-3;5-1;6-2;x;" } | %16a
    <a, c f>1 | %17a
    <g,-2 b,-1 f-4>1\pIV ^\markup { \fret-diagram-terse #"x;x;5-2;4-1;6-4;x;" } | %18a

    % "C resolve and lift"
    <g,-1 c-1 e-1>1\bpV ^\markup { \fret-diagram-terse #"x;x;5-1;5-1;5-1;x;" } | %19a
    <bes,-4 c-1 e-1>1\bpV ^\markup { \fret-diagram-terse #"x;x;8-4;5-1;5-1;x;" } | %20a

    % "deep F"
    <a,-4 c-1 e-1>1\bpV ^\markup { \fret-diagram-terse #"x;x;7-4;5-1;5-1;x;" } | %21a

    % "tighten until it hurts"
    <a,-4 c-2 ees-1>1\pIV ^\markup { \fret-diagram-terse #"x;x;7-4;5-2;4-1;x;" } | %22a
    <b,-0 c-4 d-1>\pVII _\markup { \teeny \italic "m p i" }
    ^\markup { \fret-diagram-terse #"x;x;10-4;7-1;o;x;" } | %23a

    % "relax to G C"
    <g,-3 b,-2 d-1>1\pIII ^\markup { \fret-diagram-terse #"x;x;5-3;4-2;3-1;x;" } | %24a
    <g,-1 c-1 e-1>1\bpV ^\markup { \fret-diagram-terse #"x;x;5-1;5-1;5-1;x;" } | %25a

    % "DFs on C B"
    <g,-1 c-1 f-4>1\bpV ^\markup { \fret-diagram-terse #"x;x;5-1;5-1;6-4;x;" } | %26a
    <g,-2 b,-1 f-4>1\pIV ^\markup { \fret-diagram-terse #"x;x;5-2;4-1;6-4;x;" } | %27a

    % "hope rises briefly"
    <a,-3 c-1 fis-4>1\pV ^\markup { \fret-diagram-terse #"x;x;7-3;5-1;7-4;x;" } | %28a
    <g,-1 c-1 g-4>1\bpV ^\markup { \fret-diagram-terse #"x;x;5-1;5-1;8-4;x;" } | %29a

    % "but DFs return"
    <g,-1 c-1 f-4>1\bpV ^\markup { \fret-diagram-terse #"x;x;5-1;5-1;6-4;x;" } | %30a
    <g,-2 b,-1 f-4>1\pIV ^\markup { \fret-diagram-terse #"x;x;5-2;4-1;6-4;x;" } | %31a

    % "deep C change"
    <g,-3 bes,-1 e-4>1\pIII ^\markup { \fret-diagram-terse #"x;x;5-3;3-1;5-4;x;" } | %32a

    % home stretch F then G"
    \rhDown
    b,16\rest\bpI^\markup{\fret-diagram #"4-3-3;3-2-2;2-1-1;1-1-1;" } b,\rest
    <f,-3\P>[ <a,-2\I>]   <c-1\M>[ <f-1\A> <c\M> <a,\I>]
    <c\M>[ <a,-1\I>\pII ^\markup { \fret-diagram-terse #"x;5;3;2;x;x;" } <f,-2\P> <a,\M>]   <f,\I>[ <d,-4\P> <f,\I> <d,\P>] | %33a

    % lower this bar for ez version
    \transpose c c, {
      b,16\rest\pII^\markup{\fret-diagram-terse #"x;x;5;4;3;1;" } b,\rest
      <g-4\P>[ <b-3\I>]   <d'-2\M>[ <f'-1\A> <d'\M> <b\I>]
      <d'\M>[ <b\I> <g\P> <b\I>]   <d-0\P>\pI[^\markup{\fret-diagram #"4-o;4-2;4-3;" } <f-3\I> <e-2\P> <d-0\I>] | %34a

      <c-3 e-2 g-0 c'-1>1\fermata\arpeggio ^\markup { \fret-diagram-terse #"x;3;2;o;1;x;" } | %35a
    }
  }
}

lorVoice = {
  \transpose c c' {
    \fingerLeft
    \stringRight
    \markBox

    % lower first 15 bars for ez version
    \transpose c c, {

      \mrk
      <c'-4 -\strXY #'(0 . -.3) \6 e'-3 -\strXY #'(0 . .2) \5>1\pV ^\mn "demo: short round trip" | %1b
      <c'-4 d'-1>1 | %2b
      <b-3 d'-1>1 | %3b
      <c'-4 e'-3>1 \bar "||" %4b

      \mrk
      <c'-4 e'-3>1 ^\mns ^\mn "high: octaves A and G" | %5b
      <c'-4 d'-1>1 | %6b
      <b-4 d'-1>1 \bar "||" %7b

      <b-4 c'-1>1\pIII ^\mn "shift: 3 hanging C's" | %8b
      <a-3 c'-1>1 | %9b
      <fis-1 a-0>1\pII \bar "||" %10b

      <g-3 b-2>1\pI ^\mn "G resolve and lift" | %11b
      <g-3 bes-1>1 \bar "||" %12b

      \mrk
      <f-1 a-0>1 ^\mns ^\mn "mid: octaves D and C" | %13b
      <f-1 -\strXY #'(0 . -.3) \6 aes-4 -\strXY #'(0 . .3) \6>1 | %14b
      <e-0 -\strXY #'(0 . -.3) \6 g-1 -\strXY #'(0 . .3) \6>1\pIII \bar "||" %15b
    }

    %<e-4\5 f-1 -\tweak StringNumber.extra-offset #'( 1.6 . 0 ) \4>1_\markup{ \teeny \italic "(stretch)" } \pIII ^\mn "shift: 3 hanging F's" | %16b
    <e-4\5 f-1 -\strXY #'( 1.6 . 0 ) \4>1_\markup{ \teeny \italic "(stretch)" } \pIII ^\mn "shift: 3 hanging F's" | %16b
    <d-3 -\strXY #'(0 . -.3) \5 f-1 -\strXY #'(0 . .3) \4>1 | %17b
    <g,\6-1 d\5-3>1 \bar "||" %18b

    <c-3 e-2>1\pI ^\mn "C resolve and lift" | %19b
    <c-3 g-0>1 \bar "||" %20b

    \mrk
    \phrasingSlurDashed % hint to keep finger 3 down
    <f,-1 f-3>1^\( ^\mns ^\mn "deep F" \bar "||" %21b

    <fis,-1 c-2>1\pII ^\mn "until it hurts" ^\mn "tighten" | %22b
    <aes,-4 f-3>1\) \bar "||" %23b

    <g,-2 f-3>1 ^\mns ^\mn "relax to G C" | %24b
    <g,-2 e-1>1 \bar "||" %25b

    \mrk
    <g,-2 d-0>1 ^\mns ^\mn "DFs on C B" | %26b
    <g,-3 d-0>1\pI \bar "||" %27b

    <g,-3 ees-1>1 ^\mns ^\mn "hope rises briefly" | %28b
    <g,-3 e!-2>1 \bar "||" %29b

    <g,-3 d-0>1 ^\mns ^\mn "but DFs return" | \noBreak %30b
    <g,-3 d-0>1 \bar "||" %31b

    \mrk
    <g,-3 c-4>1 ^\mn "change" ^\mn "deep C" \bar "||" %32b

    %<f,-1 c-4>1 ^\mn "home stretch F then G" | %33b
    %<g,-3 b,-2>1 \bar "||" %34b
    <<
      {
        \set fingeringOrientations = #'(left)
        r16 <c-4>8. ~ c4 ^\mn "home stretch F then G" ~ c2 | %33b
        r16 <b,-2>8. ~ b,4 ~ b,2 \bar "||" %34b
      } \\ {
        \set fingeringOrientations = #'(left)
        <f,-1>1 | %33b
        <g,-3> | %34b
      }
    >>
    <c-4>1\arpeggio_\fermata \bar "|."  %35b
  }
}

\bookpart {
  \header{
   subtitle = \markup { "Précis of Transcription No. 2 of 3 for Felicity" }
   %mytagline = \markup{ \column { \vspace #1 \smaller \italic { \concat { "Fingerings and mnemonics by J. J. Olson, " Book.footer } } } }
  }
  \paper {
    page-count = 1
    indent = 0.0
    oddFooterMarkup = \markup {
      \fill-line { \fromproperty #'header:mytagline }
    }
    evenFooterMarkup = \oddFooterMarkup
  }
  \score {
    \context StaffGroup <<
      \set StaffGroup.connectArpeggios = ##t
      \context Staff = "upr" <<
        \clef "treble"
        \context Voice = "1" { \voiceOne \uprVoice }
       >>
      \context Staff = "lor" <<
        \clef "treble"
        \context Voice = "2" { \voiceTwo \lorVoice }
       >>
    >>
    \layout {}
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

upVoice = {
  \transpose c c'' {
    \setFretDiagramProperties
    \fingerLeft
    \stringRight

    % lower first 15 bars for ez version
    \transpose c c, {

      % "demo: short round trip"
      <g-0 -\strXY #'(0 . -.2) \3 c'-1\2 e'-0 -\strXY #'(0 . .6) \1>1\pI ^\markup { \fret-diagram-terse #"x;x;x;o;1;o;" } | %1a
      <a-2 d'-4 f'-1>1^\mns ^\markup { \fret-diagram-terse #"x;x;x;2;3;1;" } | %2a
      <g-0 d'-4 f'-1>1^\mns ^\markup { \fret-diagram-terse #"x;x;x;o;3;1;" } | %3a
      <g-0 c'-1 e'-0>1^\mns ^\markup { \fret-diagram-terse #"x;x;x;o;1;o;" } | %4a

      % "high: octaves A and G"
      <a-1 e'-4 a'-4>1\pII ^\markup { \fret-diagram-terse #"x;x;x;2;5;5;" } | %5a
      <fis-3 -\strXY #'(0 . -.65) \4 a-1\3 d'-2 -\strXY #'(0 . .2) \2>1^\mns ^\markup { \fret-diagram-terse #"x;x;4;2;3;x;" } | %6a
      <g-0\3 d'-2\2 g'-3 -\strXY #'(0 . .2) \1>1^\mns ^\markup { \fret-diagram-terse #"x;x;x;o;3;3;" } | %7a

      % "shift: 3 hanging Cs"
      <e-2 -\strXY #'(0 . -.65) \4 g-0\3 c'-1 -\strXY #'(0 . .2) \2>1\pI ^\markup { \fret-diagram-terse #"x;x;2;o;1;x;" } | %8a
      <e g c'>1 | %9a
      <d-3 -\strXY #'(0 . -.2) \5 fis-2 -\strXY #'(0 . .5) \4 c'-4 -\strXY #'(0 . .2) \2>1\pIII ^\markup { \fret-diagram-terse #"x;5;4;5;x;x;" } | %10a

      % "G resolve and lift"
      <d-0 -\strXY #'(0 . -.2) \4 g-0\3 b-0 -\strXY #'(0 . .65) \2>1\pI ^\markup { \fret-diagram-terse #"x;x;o;o;o;x;" } | %11a
      <e-2 g-0 cis'-3>1^\mns ^\markup { \fret-diagram-terse #"x;x;2;o;2;x;" } | %12a

      % "mid: octaves D and C"
      <d-0 a-2 d'-4>1^\mns ^\markup { \fret-diagram-terse #"x;x;o;2;3;x;" } | %13a
      <d-3 -\strXY #'(0 . -.65) \5 f-1\4 b-0 -\strXY #'(0 . .2) \2>1\pIII ^\markup { \fret-diagram-terse #"x;5;3;x;o;x;" } | %14a
      <c-3\5 g-0\3 c'-1 -\strXY #'(0 . .2) \2>1\pI ^\markup { \fret-diagram-terse #"x;3;x;o;1;x;" } | %15a
    }


    % "shift: 3 hangings Fs"
    <a,-2 -\strXY #'(0 . -.65) \3 c-1\2 f-1 -\strXY #'(0 . .2) \1>1\bpI ^\markup { \fret-diagram-terse #"x;x;x;2;1;1;" } | %16a
    <a, c f>1 | %17a
    <g,-0 b,-0 f-1>1\pI ^\markup { \fret-diagram-terse #"x;x;x;o;o;1;" } | %18a

    % "C resolve and lift"
    <g,-0 c-1 e-0>1^\mns ^\markup { \fret-diagram-terse #"x;x;x;o;1;o;" } | %19a
    <bes,-4 c-1 e-0>1^\mns ^\markup { \fret-diagram-terse #"x;x;x;3;1;o;" } | %20a

    % "deep F"
    <a,-2 c-1 e-0>1^\mns ^\markup { \fret-diagram-terse #"x;x;x;2;1;o;" } | %21a

    % "tighten until it hurts"
    <a,-2 -\strXY #'(0 . -.65) \3 c-1\2 ees-4 -\strXY #'(0 . .65) \2>1^\mns ^\markup { \fret-diagram #"3-2;2-1;2-4;" } | %22a
    <b,-0 -\strXY #'(0 . -1) \2 c-1\2 d-4 -\strXY #'(0 . 1) \2>^\mns ^\markup { \fret-diagram #"2-o;2-1;2-3;" } | %23a

    % "relax to G C"
    <g,-0 -\strXY #'(0 . -.65) \3 b,-0\2 d-4 -\strXY #'(0 . .65) \2>1^\mns ^\markup { \fret-diagram #"3-o;2-o;2-3;" } | %24a
    <g,-0 -\strXY #'(0 . -.2) \3 c-1\2 e-0 -\strXY #'(0 . .65) \1>1^\mns ^\markup { \fret-diagram-terse #"x;x;x;o;1;o;" } | %25a

    % "DFs on C B"
    <g,-0 c-1 f-1>1\bpI ^\markup { \fret-diagram-terse #"x;x;x;o;1;1;" } | %26a
    <g,-0 b,-0 f-1>1\pI ^\markup { \fret-diagram-terse #"x;x;x;o;o;1;" } | %27a

    % "hope rises briefly"
    <a,-2 c-1 fis-3>1^\mns ^\markup { \fret-diagram-terse #"x;x;x;2;1;2;" } | %28a
    <g,-0 c-1 g-4>1^\mns ^\markup { \fret-diagram-terse #"x;x;x;o;1;3;" } | %29a

    % "but DFs return"
    <g,-0 c-1 f-1>1\bpI ^\markup { \fret-diagram-terse #"x;x;x;o;1;1;" } | %30a
    <g,-0 b,-0 f-1>1\pI ^\markup { \fret-diagram-terse #"x;x;x;o;o;1;" } | %31a

    % "deep C change"
    <g,-3 -\strXY #'(0 . -.7) \4 bes,-1\3 e-0 -\strXY #'(0 . .2) \1>1\pIII ^\markup { \fret-diagram-terse #"x;x;5;3;x;o;" } | %32a

    % home stretch F then G"
    \rhDown
    b,16\rest^\mns^\markup{\fret-diagram #"4-o;4-3-3;3-2-2;2-1-1;1-1-1;" } b,\rest
    <f,-3\P>\bpI[ <a,-2\I>]   <c-1\M>[ <f-1\A> <c\M> <a,\I>]
    <c\M>[ <a,\I> <f,\P> <a,\I>]   <f,-3\P>[ <d,-0\I> <f,\P> <d,\I>] | %33a

    % lower this bar for ez version
    \transpose c c, {
      b,16\rest\pI^\markup{\fret-diagram #"3-o;2-o;2-3;1-1;" } b,\rest
      <g-0\P>[ <b-0\I>]   <d'-3\P>[ <f'-1\I> <d'\P> <b\I>]
      <d'\P>[ <b\I> <g\P> <b\I>]   <d-0\P>^\mns[ ^\markup{\fret-diagram #"4-o;4-2;4-3;" }
      <f-3\I> <e-2\P> <d-0\I>] | %34a

      <e-2 g-0 c'-1>1\fermata\arpeggio^\markup { \fret-diagram-terse #"x;x;2;o;1;x;" } | %35a
    }
  }
}

loVoice = {
  \transpose c c' {
    \fingerLeft
    \stringRight
    \markBox

    % lower first 15 bars for ez version
    \transpose c c, {

      \mrk
      <c'-3  e'-2 >1\pI ^\mn "demo: short round trip" | %1b
      <c'-3 d'-0>1 | %2b
      <b-2 d'-0>1 | %3b
      <c'-3 e'-2>1 \bar "||" %4b

      \mrk
      <c'-3 e'-2>1 ^\mns ^\mn "high: octaves A and G" | %5b
      <c'-3 d'-0>1 | %6b
      <b-2 d'-0>1 \bar "||" %7b

      <b-2 c'-3>1^\mns ^\mn "shift: 3 hanging C's" | %8b
      <a-0 c'-3>1 | %9b
      <fis-2 a-0>1^\mns \bar "||" %10b

      <g-3 b-2>1^\mns ^\mn "G resolve and lift" | %11b
      <g-3 bes-1>1 \bar "||" %12b

      \mrk
      <f-1 a-0>1 ^\mns ^\mn "mid: octaves D and C" | %13b
      <f-1 aes-4>1 | %14b
      <e-0 g-3>1^\mns \bar "||" %15b
    }

    <e-2 f-3>1 ^\mns ^\mn "shift: 3 hanging F's" | %16b
    <d-0 f-4>1 | %17b
    <g,-3 d-0>1 \bar "||" %18b

    <c-3 e-2>1^\mns ^\mn "C resolve and lift" | %19b
    <c-3 g-0>1 \bar "||" %20b

    \mrk
    \phrasingSlurDashed % hint to keep finger 3 down
    <f,-1 f-3>1^\( ^\mns ^\mn "deep F" \bar "||" %21b

    <fis,-1 c-2>1\pII ^\mn "until it hurts" ^\mn "tighten" | %22b
    <aes,-4 f-3>1\) \bar "||" %23b

    <g,-2 f-3>1 ^\mns ^\mn "relax to G C" | %24b
    <g,-2 e-1>1 \bar "||" %25b

    \mrk
    <g,-2 d-0>1 ^\mns ^\mn "DFs on C B" | %26b
    <g,-3 d-0>1\pI \bar "||" %27b

    <g,-3 ees-1>1 ^\mns ^\mn "hope rises briefly" | %28b
    <g,-3 e!-2>1 \bar "||" %29b

    <g,-3 d-0>1 ^\mns ^\mn "but DFs return" | \noBreak %30b
    <g,-3 d-0>1 \bar "||" %31b

    \mrk
    <g,-3 c-4>1 ^\mn "change" ^\mn "deep C" \bar "||" %32b

    %<f,-1 c-4>1 ^\mn "home stretch F then G" | %33b
    %<g,-3 b,-2>1 \bar "||" %34b
    <<
      {
        \set fingeringOrientations = #'(left)
        r16 <c-4>8. ~ c4 ^\mn "home stretch F then G" ~ c2 | %33b
        r16 <b,-2>8. ~ b,4 ~ b,2 \bar "||" %34b
      } \\ {
        \set fingeringOrientations = #'(left)
        <f,-1>1 | %33b
        <g,-3> | %34b
      }
    >>
    <c-4>1\arpeggio_\fermata \bar "|."  %35b
  }
}

\bookpart {
  \header{
   subtitle = \markup { "Précis of Transcription No. 3 of 3 for Facility" }
   %mytagline = \markup{ \column { \vspace #1 \smaller \italic { \concat { "Fingerings and mnemonics by J. J. Olson, " Book.footer } } } }
  }
  \paper {
    page-count = 1
    indent = 0.0
    oddFooterMarkup = \markup {
      \fill-line { \fromproperty #'header:mytagline }
    }
    evenFooterMarkup = \oddFooterMarkup
  }
  \score {
    \context StaffGroup <<
      \set StaffGroup.connectArpeggios = ##t
      \context Staff = "upr" <<
        \clef "treble"
        \context Voice = "1" { \voiceOne \upVoice }
       >>
      \context Staff = "lor" <<
        \clef "treble"
        \context Voice = "2" { \voiceTwo \loVoice }
       >>
    >>
    \layout {}
  }
}
