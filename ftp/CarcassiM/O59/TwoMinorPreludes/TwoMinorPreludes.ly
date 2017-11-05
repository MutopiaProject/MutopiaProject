\version "2.18.2"

\header {
 title = "Two Minor Preludes"
 subtitle = "From “Méthode complète pour Guitare”, Op. 59"
 composer = "Matteo Carcassi" % b.1792 d.1853
 arranger = "Ed.: G. C. Santisteban" % b.1866 d.1919
 style = "Classical"
 date = "1836"
 source = "Bryn Mawr: Oliver Ditson Company, 1906."
 moreInfo = "These two lovely little exercises from Carcassi's method book are an excellent performance pair for the beginning guitarist, and a good vehicle for exploring the expressive power of various tempos and dynamics."
 mytagline = ""

 %            o_
 %       (\___\/_____/)
 %  ~ ~ ~ ~ ~ / ~ ~ ~ ~ ~ ~ ~
 maintainer = "Jeffrey Olson"
 maintainerEmail = "gmail's jjocanoe"
 license = "Public Domain"

 mutopiacomposer = "CarcassiM"
 mutopiatitle = "Two Minor Preludes from Méthode complète pour Guitare"
 mutopiaopus = "Op. 59"
 mutopiadate = "1836"
 mutopiasource = "Bryn Mawr: Oliver Ditson Company, 1906."
 mutopiainstrument = "Guitar"

 footer = "Mutopia-2017/11/05-2204"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white "ǀ" \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {"ǀ" "ǀ"}}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " "by " \maintainer " — " \footer}\concat {\concat {\abs-fontsize #8 { "Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "Public Domain" " by the typesetter " " — free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white "ǀ" }}}
 tagline = ##f
}

\paper {
  %#(set-paper-size "a4")      %uncomment to test specific paper size
  %#(set-paper-size "letter")  %uncomment to test specific paper size
  %page-count = 9
  indent = 0.0
  top-margin = 8\mm
  bottom-margin = 8\mm
  ragged-last-bottom = ##f
  print-first-page-number = ##t
  evenHeaderMarkup = \oddHeaderMarkup % so all page numbers to right
  oddFooterMarkup = \markup { \column {
      \fill-line { \on-the-fly #first-page \column { \vspace #2 \fromproperty #'header:copyright } }
      \fill-line { \on-the-fly #last-page \fromproperty #'header:mytagline }
    }
  }
  evenFooterMarkup = \oddFooterMarkup
}

% suppress local file system path in pdf
\pointAndClickOff

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
C = \rightHandFinger #5

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

marksLeft = \override Score.RehearsalMark #'self-alignment-X = #LEFT
marksRight = \override Score.RehearsalMark #'self-alignment-X = #RIGHT

% standard options
stdOpts = { \fingerLeft \rhRight \stringDown }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
upperTwo = \transpose c c' {
  \voiceOne
  \stdOpts
  <a,\P>16\f\pI <a-3\I> <c'-1\M> <a\I>    c' a a, a    <f-4> a c' a    c' a f a  |
  d16 <a-3> b a    b a d a    <e-2>\> <gis-1> b gis    b gis e gis  |
  a,16\< <a-2> c' a    <e'\A> <a\I> <c'\M> <a\I>\!    <g,-3> g b g    <f'-1> g b g  |
  <c-4>16 g <c'-1> g    e' g c' g    <b,-2> <gis-1>\> <d'-4>\rit gis    e' gis d' gis\!  |
  a,16\< <a-3> <c'-1> a    <f-4> a c' a    d a b a    <e-2> <gis-1> b gis\!  |
  a,16 a c' a    e' a c' a    e, <gis-1> b gis    e' gis b gis  |
  a,16 a c' a\dim    e' a c' a    e, gis <d'-4> gis\rit    e' gis d' gis  |
  <a,\P>16 <e-2\P> <a-3\I> e    <c'-1\M> a <e'\A> c'    a4 r4 |
}
lowerTwo = \transpose c c' {
  \voiceTwo
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  a,4. a,8 f4. f8 |
  d4. d8 e4. e8 |
  a,2 g, |
  c2 b, |
  a,4 f d e |
  a,2 e, |
  a,2 e, |
  a,2 a,4 r4 |
}
preludeTwo = \context Staff = "S" <<
  \key a \minor
  \clef "treble"
  \context Voice = "up" \upperTwo
  \context Voice = "dn" \lowerTwo
>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
upperFour = \transpose c c' {
  \voiceOne
  \stdOpts
  \marksLeft
  %\mark \markup { \musicglyph #"scripts.umarcato" \tiny \italic { "= use rest stroke for emphasis" } }
  <e,\P>16\pI <g\I> <b\M> <g'-4\A>-> <g\I> <b\M>    e, g b e'-> g b  |
  e,16 <a-2> <c'-1> <fis'-3>-> a c'    e, a c' e'-> a c'  |
  e,16\pII <fis-3> <a-1> <dis'-4>-> fis a    e, <a-1> b <fis'-2>-> a b  |
  e,16\pI g b e' g b    <e-3> g b\acl e' g b  |
  d16 <gis-1>\crc b <f'-2> gis b    d gis b e' gis b  |
  <c-4>16 <a-3> <c'-1> e' a c'    a, a c' <fis'-4> a c'  |
  <b,-2>16 g\rit b e' g b    b, <a-3>\dim b <fis'-4> a b  |
  e, g b\dol e' g b e8. \headHarmonic e''8.\fermata |
}
lowerFour = \transpose c c' {
  \voiceTwo
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  e,4. e, |
  e,4. e, |
  e,4. e, |
  e,4. e-> |
  d4.-> d-> |
  c4.-> a,-> |
  b,4.-> b, |
  e,4. e4 s8 |
}
preludeFour = \context Staff = "S" <<
  \key e \minor
  \clef "treble"
  \time 6/8
  \context Voice = "up" \upperFour
  \context Voice = "dn" \lowerFour
>>


\score {
  \header { piece = \markup { \bold "Prelude 2 in A Minor" } }
  \preludeTwo
  \layout { }
  \midi { }
}

\score {
  \header { piece = \markup { \bold "Prelude 4 in E Minor" } }
  \preludeFour
  \layout { }
  \midi { }
}
