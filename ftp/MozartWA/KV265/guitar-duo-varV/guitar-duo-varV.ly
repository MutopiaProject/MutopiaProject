\version "2.18.2"

\header {
 title = "Ah Vous Dirai-Je Maman Var. V"
 subtitle = \markup { \smaller "One Scherzo For Two Guitars" }
 composer = "Wolfgang Amadeus Mozart"
 arranger = "Ed.: J. J. Olson"
 date = "1785"
 source = "Paris: Porro, n.d. Plate 79." % see IMSLP104399
 style = "Romantic"
 mytagline = ##f

 %            o_
 %       (\___\/_____/)
 %  ~ ~ ~ ~ ~ / ~ ~ ~ ~ ~ ~ ~
 maintainer = "Jeffrey Olson"
 maintainerEmail = "gmail's jjocanoe"
 license = "Public Domain"

 mutopiacomposer = "MozartWA"
 mutopiatitle = "Ah Vous Dirai-Je Maman Var. V"
 mutopiadate = "1785"
 mutopiasource = "Paris: Porro, n.d. Plate 79."
 mutopiainstrument = "2 Guitars"
 moreInfo = "This little piece is a delight to play as a duet, but it is only one variation among many.  The <a href='http://www.mutopiaproject.org/cgibin/piece-info.cgi?id=2236'>complete set of Mozart's 12 variations</a> on <i>Ah Vous Dirai-Je Maman</i> for guitar duo is also available on Mutopia and includes detailed annotations for the players on each variation, including this one."

 footer = "Mutopia-2018/12/07-2238"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white "ǀ" \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {"ǀ" "ǀ"}}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " "by " \maintainer " — " \footer}\concat {\concat {\abs-fontsize #8 { "Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "Public Domain" " by the typesetter " " — free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white "ǀ" }}}
 tagline = ##f
}

\paper{
  %page-count = #1
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


\score {
  \header { piece = \markup { \bold "Accelerando" } }
  \varV
  \layout { }
}


\score {
  {
    \varV
  }
  \midi {
    \transposition c % guitar plays octave lower than writtenn
    \context{
      \Voice
      \remove "Dynamic_performer"
    }
  }
}


