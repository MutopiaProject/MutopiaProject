\version "2.18.2"

\header {
 title = "Preludes in Progressive Keys"
 subtitle = "From “Méthode complète pour Guitare”, Op. 59"
 composer = "Matteo Carcassi" % b.1792 d.1853
 arranger = "Ed.: G. C. Santisteban" % b.1866 d.1919
 style = "Classical"
 date = "1836"
 source = "Bryn Mawr: Oliver Ditson Company, 1906."
 moreInfo = "This is the full set from Carcassi's original 1836 method book, as edited (and improved) by Santisteban in the 1906 edition."
 mytagline = ""

 %            o_
 %       (\___\/_____/)
 %  ~ ~ ~ ~ ~ / ~ ~ ~ ~ ~ ~ ~
 maintainer = "Jeffrey Olson"
 maintainerEmail = "gmail's jjocanoe"
 license = "Public Domain"

 mutopiacomposer = "CarcassiM"
 mutopiatitle = "Preludes in Progressive Keys from Méthode complète pour Guitare"
 mutopiaopus = "Op. 59"
 mutopiadate = "1836"
 mutopiasource = "Bryn Mawr: Oliver Ditson Company, 1906."
 mutopiainstrument = "Guitar"

 footer = "Mutopia-2017/12/30-2209"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white "ǀ" \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {"ǀ" "ǀ"}}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " "by " \maintainer " — " \footer}\concat {\concat {\abs-fontsize #8 { "Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "Public Domain" " by the typesetter " " — free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white "ǀ" }}}
 tagline = ##f
}

\paper {
  %#(set-paper-size "a4")      %uncomment to test specific paper size
  %#(set-paper-size "letter")  %uncomment to test specific paper size
  indent = 0.0
  top-margin = 8\mm
  bottom-margin = 8\mm
  ragged-last-bottom = ##f
  print-first-page-number = ##f
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
upperOne = \transpose c c' {
  \voiceOne
  \stdOpts
  <c-3\p>8\pI\f <g\I> <c'-1\M> <e'\A>  <e-2> g c' e' |
  a,8 <a-2> <c'> e'  <c-3> a c' e' |
  d8 a <d'-4> <f'-1>  <f-3> a d' f' |
  <g,-3>8 g b f'  <b,-2> g <d'-4> f' |
  <c-3>8 g <c'-1> e'  a, g <cis'-3> e' |
  d8 <a-2> <d'-4> <f'-1>  <f-3> a d' f' |
  <g,-3>8 g <c'-1> e'  g, g b <f'-1> |
  <e' c' g>2 r2 |
}
lowerOne = \transpose c c' {
  \voiceTwo
  \mergeDifferentlyHeadedOn
  c2 e |
  a,2 c |
  d2 f |
  g,2 b, |
  c2 a, |
  d2 f |
  g,2 g, |
  c2 r2 |
}
preludeOne = \context Staff = "S" <<
  \key c \major
  \clef "treble"
  \context Voice = "up" \upperOne
  \context Voice = "dn" \lowerOne
>>

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
upperThree = \transpose c c' {
  \voiceOne
  \stdOpts
  <g,-3\P>16\pI <b\I> <g'-4\M> <b\I>    <g\P> b g' b    <e-2> b g' b    g b g' b  |
  <c-3>16 <c'-1> e' c'    g c' e' c'    a, c ' e' c'    <a-2> c' e' c'  |
  d16 c' <fis'-3> c'    <a-2> c' fis' c'    <dis-1> b fis' b    a b fis' b  |
  <e-2>16 b <g'-4> b    g b g' b    <c-3> <c'-1> g' c'    <a-2> c' g' c'  |
  d16 b g' b    g b g' b    d <c'-1> <fis'-3> c'    <a-2> c' fis' c'  |
  <g,-3>16 b <g'-4> b    <b,-2> b g' b    d b g' b    b, b g' b |
  g,2 r2 |
}
lowerThree = \transpose c c' {
  \voiceTwo
  \mergeDifferentlyHeadedOn
  g,4 g e g |
  c4 g a, a |
  d4 a dis a |
  e4 g c a |
  d4 g d a |
  g,4 b, d b, |
  g,2 r2 |
}
preludeThree = \context Staff = "S" <<
  \key g \major
  \clef "treble"
  \context Voice = "up" \upperThree
  \context Voice = "dn" \lowerThree
>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
upperFour = \transpose c c' {
  \voiceOne
  \stdOpts
  \marksLeft
  %\mark \markup { \musicglyph #"scripts.umarcato" \tiny \italic { "= use rest stroke for emphasis" } }
  <e,\P>16\pI <g\I> <b\M> <g'-4\A>-> <g\I> <b\M>    e, g b e'-> g b  |
  e,16 <a-2> <c'-1> <fis'-3>-> a c'    e, a c' e'-> a c'  |
  e,16 <fis-3> <a-1> <dis'-4>-> fis a    e, <a-1> b <fis'-2>-> a b  |
  e,16 g b e' g b    <e-3> g b\acl e' g b  |
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
upperFive = \transpose c c' {
  \voiceOne
  \stdOpts
  <d\P>16\pI <a-2\I> <d'-4\M> <a\I>    <fis'-3\A> <a\I> <d'\M> <a\I>    <dis-1> a b a    fis' a b a  |
  <e-1>16 g b g    <g'-3> g b g    a, <a-1>\bpII <cis'-1> a    <g'-2> a cis' a  |
  a,16\pII <a-1> <cis'-2> a    e' a cis' a    d a <d'-3> a    <fis'-2> a d' a  |
  d16\pI <a-2> <c'-1> a    <fis'-3> a c' a    <g,-2>\pII g b g    <g'-3> g b g  |
  e,16\pI <gis-1> <d'-4> gis    e' gis d' gis    <e-2> gis d' gis    e' gis d' gis  |
  a,16\pII <a-1> <cis'-2> a    e' a cis' a    a, <a-1>\bpII <cis'-1> a    <g'-2> a cis' a  |
  d16\bpII <a-1> <d'-2> a    <fis'-1>\dim a d'\rit a    <fis-3> a d' a    fis' a d' a  |
  d16 a d' a    fis' a d' a    d4 r4 |
}
lowerFive = \transpose c c' {
  \voiceTwo
  \mergeDifferentlyHeadedOn
  d2 dis |
  e2 a, |
  a,2 d |
  d2 g, |
  e,2 e |
  a,2 a, |
  d2 fis |
  d2 d4 r4 |
}
preludeFive = \context Staff = "S" <<
  \key d \major
  \clef "treble"
  \time 4/4
  \context Voice = "up" \upperFive
  \context Voice = "dn" \lowerFive
>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
upperSix = \transpose c c' {
  \voiceOne
  \stdOpts
  \tuplet 3/2 4 { <b,\P>8\BpII <fis-3\P> <b-4\I>    <d'-2\M> <b\I> <fis\P>    <fis'\A> <d'\M> <b\I>  } |
  \hideTupletNumber
  \tuplet 3/2 4 { b,8 fis b    d' b fis    fis' d' b  } |
  \tuplet 3/2 4 { e,8\pIII <g-3> <b-2>    <e'-4> b g    <g'-1> e' b  } |
  \tuplet 3/2 4 { e,8 g b    e' b g    g' e' b  } |
  \tuplet 3/2 4 { fis,8\BpII <fis-3> <ais-2>    cis' ais fis    fis' cis' ais  } |
  \tuplet 3/2 4 { fis,8 fis ais    cis' ais fis    fis' cis' ais  } |
  \tuplet 3/2 4 { b,8 <fis-3> <b-4>    <d'-2> b fis    fis' d' b  } |
  \tuplet 3/2 4 { b,8 fis b    d' b fis    fis' d' b  } |
  \tuplet 3/2 4 { g,8\BpIII <g-3> <b-2>    d' b g    g' d' b  } |
  \tuplet 3/2 4 { g,8 g b    d' b g    g' d' b  } |
  \tuplet 3/2 4 { e,8\pI <e-2> g    <c'-1> g e    <g'-4> c' g  } |
  \tuplet 3/2 4 { e,8 e g    c' g e    g' c' g  } |
  \tuplet 3/2 4 { fis,8\BpII <fis-3> <b-4>    <d'-2> b fis    fis' d' b  } |
  \tuplet 3/2 4 { fis,8 <fis-3> <ais-2>    cis' ais fis    fis' cis' ais  } |
  \tuplet 3/2 4 { b,8 <fis-3> <b-4>    <d'-2> b d'    fis' d' b  } |
  \tuplet 3/2 4 { d'8 b fis }    b,4 r4  |
}
lowerSix = \transpose c c' {
  \voiceTwo
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  b,2 s4 |
  b,2 s4 |
  e,2 s4 |
  e,2 s4 |
  fis,2 s4 |
  fis,2 s4 |
  b,2 s4 |
  b,2 s4 |
  g,2 s4 |
  g,2 s4 |
  e,2 s4 |
  e,2 s4 |
  fis,2 s4 |
  fis,2 s4 |
  b,2.~ |
  b,4 b,4 r4 |
}
preludeSix = \context Staff = "S" <<
  \key b \minor
  \clef "treble"
  \time 3/4
  \context Voice = "up" \upperSix
  \context Voice = "dn" \lowerSix
>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
upperSeven = \transpose c c' {
  \voiceOne
  \stdOpts
  <a,\P>16\pI <a-2\I> <cis'-3\M> <a\I> <cis'\M> <a\I>    <a,\P> <a\I> <cis'\M> <a\I> <e'\M> <a\I>  |
  d16 <a-2> b a b a    d a b a <fis'-3> a  |
  <dis-1>16 <a-2> b a b a    dis a b a <fis'-3> a  |
  <e-2>16 <gis-1> b gis b gis    e gis b gis e' gis  |
  a,16\bpII a cis' a cis' a    a, a cis' a <g'-2> a  |
  d16\bpII a <d'-2> a <fis'> a    dis\bpI <a-2> c' a <fis'-3> a  |
  <e-1>16\pII <a-2> <cis'!-3> a e' a    e,\pI <gis-2> b gis e' gis  |
  <a-\M>16 <a\I> <cis'-3\M> <cis'\I> <e'\M> <e'\I> <a'-4 cis'-1>4 r8 |
}
lowerSeven = \transpose c c' {
  \voiceTwo
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  a,4. a, |
  d4. d |
  dis4. dis |
  e4. e |
  a,4. a, |
  d4. dis |
  e4. e, |
  a,4. a,4 r8 |
  \pageBreak
}
preludeSeven = \context Staff = "S" <<
  \key a \major
  \clef "treble"
  \time 6/8
  \context Voice = "up" \upperSeven
  \context Voice = "dn" \lowerSeven
>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
upperEight = \transpose c c' {
  \voiceOne
  \stdOpts
  <fis-3\P>16\bpII <a\I> <cis'\M> <a\I>    <fis'\A> a cis' a    fis a cis' fis'  |
  d16 a <d'-2> a    fis' a d' a    d a d' fis'  |
  <b,-1>\pII <b-3> <d'-2> b    <gis'-4> b d' b    b, b d' gis'  |
  cis16\bpIV <gis-3> b gis    <eis'-4> gis b gis    cis gis b eis'  |
  <fis-3>16\bpII a cis' a    fis' a cis' a    fis a cis' fis'  |
  d16\pI <a-2> <bis-1> a    <fis'-3> a bis a    d a bis fis'  |
  cis16\bpIV <gis-3> b! gis    <fis'-4> gis b gis    cis gis b fis'  |
  cis16 <gis-3> b gis    <eis'-4> gis b gis    cis gis b eis'  |
  <fis-3>16\bpII a cis' a    fis' a cis' a    <cis-3> a cis' fis'  |
  <a,-0>16 a cis' fis'    <cis-3> a cis' fis'    <a,-0> a cis' fis'  |
  r4 <fis' cis' a>2 |
}
lowerEight = \transpose c c' {
  \voiceTwo
  \stdOpts
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  fis2 fis4 |
  d2 d4 |
  b,2 b,4 |
  cis2 cis4 |
  fis2 fis4 |
  d2 d4 |
  cis2 cis4 |
  cis2 cis4 |
  fis2 cis4 |
  a,4 cis a, |
  <fis,-2>2. |
}
preludeEight = \context Staff = "S" <<
  \key fis \minor
  \clef "treble"
  \time 3/4
  \context Voice = "up" \upperEight
  \context Voice = "dn" \lowerEight
>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
upperNine = \transpose c c' {
  \voiceOne
  \stdOpts
  e,16\bpIV <b\I> <e'-2\M> <b\I>    <gis'\A> <b\I> <e'\M> <b\I>    e,16 b e' b    gis' b e' b  |
  cis16\BpIV <cis'-3> <e'-2> cis'    gis' cis' e' cis'   cis16 cis' e' cis'    gis' cis' e' cis'  |
  <fis-1>16\pIV <cis'-3> <fis'-4> cis'    <a'-2> cis' fis' cis'   fis16 cis' fis' cis'    a' cis' fis' cis'  |
  fis16\bpIV b dis' b    <a'-2> b dis' b    b,\BpII <b-3> <dis'-4> b    fis' b dis' b  |
  e,16\bpIV b <e'-2> b    gis' b e' b   e,16 b e' b    gis' b e' b  |
  a,16\bpII a cis' a    fis' a cis' a    <ais,-1>\pI g <cis'-3> g    e' g cis' g  |
  <b,-2>16\ppI <gis!-1> b gis    e' gis b gis    b,\bpII <fis-3> a fis    <dis'-4> fis a fis  |
  <e,\P>16\pI <b,-2\P> <e-3\P> <gis-1\I>    <b-0\M> <e'-0\I> <gis'-1\M>\pIV <b'-4\I>  \stringRight  <e'-0\M gis-3\4\I>2  |
}
lowerNine = \transpose c c' {
  \voiceTwo
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  e,2 e, |
  cis2 cis |
  fis2 fis |
  fis2 b, |
  e,2 e, |
  a,2 ais, |
  b,2 b, |
  e,2 e, |
}
preludeNine = \context Staff = "S" <<
  \key e \major
  \clef "treble"
  \time 4/4
  \context Voice = "up" \upperNine
  \context Voice = "dn" \lowerNine
>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
upperTen = \transpose c c' {
  \voiceOne
  \stdOpts
  <cis-1>8[\pIV <gis-3> <cis'-4> <e'-2> cis' gis]    <cis\P>8[ <gis\I> <cis'\M> <e'\A> <cis'\M> <gis\I>]  |
  dis8[\bpI gis bis <fis'-2> bis gis]    dis8[ gis bis fis' bis gis]  |
  <eis-1>8[\pIII <b-3> <d'-2> <gis'-4> d' b]    eis8[ b d' gis' d' b]  |
  <fis-3>8[\bpII a cis' <a'-4> cis' a]    fis8[ a cis' a' cis' a]  |
  fis8[\bpIV <bis-2> dis' gis' dis' bis]    fis8[ bis dis' gis' dis' bis]  |
  <e-2>8[\pI <gis-1> <cis'-3> <gis'-4> cis' gis]    e8[ gis cis' gis' cis' gis]  |
  <dis-1>8[\ppI <a-2> <cis'-3> <fis'-4> cis' a]    dis8[ a cis' fis' cis' a]  |
  <gis,-1>8[\pIV <gis-3> <cis'-4> <e'-2> cis' gis]    fis,[\BpII <fis-3> a <dis'-4> a fis]  |
  e,8[\pI <e-2> <gis-1> <cis'-3> gis e]    <gis,-4>[\bpI dis gis bis gis dis]  |
  <cis-4>8[\pI <e-2> <gis-1\3> <cis'-1\3>\pVI <e'-4>\bpIX <gis'-4>]    \acciaccatura gis'8 \stemDown <cis''-4>2 r4 |
}
lowerTen = \transpose c c' {
  \voiceTwo
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  cis2. cis |
  dis2. dis |
  eis2. eis |
  fis2. fis |
  fis2. fis |
  e2. e |
  dis2. dis |
  gis,2. fis, |
  e,2. gis, |
  s2. s |
}
preludeTen = \context Staff = "S" <<
  \key cis \minor
  \clef "treble"
  \time 12/8
  \context Voice = "up" \upperTen
  \context Voice = "dn" \lowerTen
>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
upperEleven = \transpose c c' {
  \voiceOne
  \stdOpts
  <f-3>16[\bpI <a-2> c' f' c' a]    <f\P>[ <a\I> <c'\M> <f'\A> <c'\M> <a\I>]  |
  <c-3>16[\pI g <c'-1> e' c' g]    c[ g c' e' c' g]  |
  <e-2>16[ <bes-3> <c'-1> <g'-4> c' bes]    e[ bes c' g' c' bes]  |
  <f-3>16[\bpI <a-2> c' f' c' a]    f[ a c' f' c' a]  |
  e16[\bpII a cis' <g'-2> cis' a]    a,[ a cis' g' cis' a]  |
  d16[\pI <a-2> <d'-4> <f'-1> d' a]    <bes,-1>[ <bes-4>\bpIII <d'-4> <g'-4> d' bes]  |
  <c-3>16[\bpI <a-2> c' f' c' a]    <c-3>[\pI <bes-4> <c'-1> e' c' bes]  |
  <f-3>16[\bpI <a-2> c' f' c' a]    f4 r8 |
}
lowerEleven = \transpose c c' {
  \voiceTwo
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  f4. f |
  c4. c |
  e4. e |
  f4. f |
  e4. a, |
  d4. bes, |
  c4. c |
  f4. f4 r8 |
}
preludeEleven = \context Staff = "S" <<
  \key f \major
  \clef "treble"
  \time 6/8
  \context Voice = "up" \upperEleven
  \context Voice = "dn" \lowerEleven
>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
upperTwelve = \transpose c c' {
  \voiceOne
  \stdOpts
  <d\P>16\pI <a-2\I> <d'-4\M> <a\I>    <f'-1\A> <a\I> <d'\M> <a\I>    d <bes-3> <cis'-2> bes    <g'-4> bes cis' bes  |
  d16 <a-2> <d'-4> a    <f'-1> a d' a    d <d'-4> <f-3> d'    d d' <c-3> d' |
  <b,-2>16\ppI <gis-1> <d'-4> gis    e' gis d' gis    e, gis d' gis    e' gis d' gis  |
  a,16 <a-2> <cis'-3> a    e' a cis' a    a, <a-2> <b,-1> a    <cis-4> a a, a  |
  d16\ppI <a-2> <d'-4> a    <f'-1> a d' a    d <bes-3> <cis'-2> bes    <g'-4> bes cis' bes  |
  d16 a d' a    f' a d' a    d <d'-4> <f-3> d'    <e-2> d' d d' |
  <c-3>16\ppI <bes-4> <c'-1> bes    e' bes c' bes    <e-2> <bes-3> <c'-1> bes    <g'-4> bes c' bes  |
  <f-3>16\BpI <a-2> c' a    f' a c' a    f, a c' a    f' a c' a  |
  e,16 a\bpII cis' a    <g'-3> a cis' a    a,\pI <a-2> <b,-1> a    <cis-4> a a, a  |
  d16 <a-2> <d'-4> a    <f'-1> a d' a    bes,\BpI gis <d'-4> gis    f' gis d' gis  |
  a,16\pI <a-2> <d'-4> a    <f'-1> a d' a    a, <a-2> <cis'-3> a    e' a cis' a  |
  d16 <a-2> <d'-4> <f'-1>    d\pV <d'-3> <f'-2> <a'-1>    <d'' a' f'>4\bpX r4 |
}
lowerTwelve = \transpose c c' {
  \voiceTwo
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  d2 d |
  d2 d8 f d  c |
  b,2 e, |
  a,2 a,8 b, cis a, |
  d2 d |
  d2 d8 f e d |
  c2 e |
  f2 f, |
  e,2 a,8 b, cis a, |
  d2 bes, |
  a,2 a, |
  d4 d d r4 |
}
preludeTwelve = \context Staff = "S" <<
  \key d \minor
  \clef "treble"
  \time 4/4
  \context Voice = "up" \upperTwelve
  \context Voice = "dn" \lowerTwelve
>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
upperThirteen = \transpose c c' {
  \voiceOne
  \stdOpts
  <bes,-1>8[\pI <f-2> <bes-3> <d'-4> bes f]    d[ bes d' <f'-1> d' bes]  |
  c8[\bpIII <g-3> bes <e'-4> bes g]    c8[ g bes e' bes g]  |
  <f,-1>8[\pI <f-3> <a-2> <ees'!-4> a f]    f,8[ f a ees' a f]  |
  <fis,-1>8[\pII d a <d'-4> a d]    fis,8[ d a d' a d]  |
  g,8[\BpIII <d-3> <g-4> bes g d]    <g-2>[\bpIII bes d' <bes'-4> d' bes]  |
  <ees-1>8[\pI g <c'-2> <g'-4> c' g]    <e-1>[\pII g <des'-2> g' des' g]  |
  <f-2>8[\pI <bes-3> <d'!-4> <f'-1> d' bes]    <f-1>[\pIII <c'-3> <ees'-2> <a'-4> ees' c']  |
  <bes,\P>8[\BpVI <f-3\P> <bes-4\I> <d'\M> <f'\A> <bes'\C>]    bes,4 r8 r4 r8 |
}
lowerThirteen = \transpose c c' {
  \voiceTwo
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  bes,2. d |
  c2. c |
  f,2. f, |
  fis,2. fis, |
  g,2. g |
  ees2. e |
  f2. f |
  bes,2. bes,4 r8 r4 r8 |
}
preludeThirteen = \context Staff = "S" <<
  \key bes \major
  \clef "treble"
  \time 12/8
  \context Voice = "up" \upperThirteen
  \context Voice = "dn" \lowerThirteen
>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
upperFourteen = \transpose c c' {
  \voiceOne
  \stdOpts
  <g-3>8[\bpIII bes d' g' d' bes]    g[ bes d']    <d-0>[ bes d']  |
  <fis-2>8[\pIII <c'-3> <d'-1> <a'-4> d' c']    fis[ c' d']    <d-0>[ c' d']  |
  <g-3>8[\bpIII bes d' g' d' bes]    <c-1>[\pIII <c'-3> <ees'-2> <a'-4> ees'c']  |
  <cis-2>8[\bpIII bes <e'-4> g' e' bes]    <d-0>[\bpII a <d'-2> fis' d' a]  |
  d8[\pI <aes-1> b <f'-2> b aes]    <c-1>[\pIII <g-3> <c'-4> <ees'-2> c' g]  |
  <a,-0>8[\pII <c'-4> <d'-2> <fis'-1> d' c']    <bes,-1>[\pI <bes-2> <d'-3> <g'-4> d' bes]  |
  <c-1>8[\pIII <c'-3> <a'-4 ees'-2>]    <d-0>[\bpIII bes <g' d'>]    <d-0>[\pI <a-2> <fis'-3 c'-1>]    d[ a <fis' c'>]  |
  <g-3>[\bpIII bes d' g' d' bes] <g,-2>4 r8 r4 r8 |
}
lowerFourteen = \transpose c c' {
  \voiceTwo
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  g2. g4. d |
  fis2. fis4. d |
  g2. c |
  cis2. d |
  d2. c |
  a,2. bes, |
  c4. d d d |
  g2. g,4 r8 r4 r8 |
}
preludeFourteen = \context Staff = "S" <<
  \key g \minor
  \clef "treble"
  \time 12/8
  \context Voice = "up" \upperFourteen
  \context Voice = "dn" \lowerFourteen
>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
upperFifteen = \transpose c c' {
  \voiceOne
  \stdOpts
  <ees-4>16\pIII <g-3> <bes-1> g    <ees'-2>8 <ees' bes g>    g16 bes ees' bes    <bes'-4>8 <bes' ees' bes>  |
  <f-1>16\ppIII <c'-3> <ees'-2> c'    <a'-4>8 <a' ees' c'>    <bes,-1>16\pI <bes-2> <d'-3> bes    <aes'-4>8 <aes' d' bes>  |
  <b,-1>16\pII g <d'-3> d    <g'-4>8 <g' d' g>    <c-1>16\pIII <g-3> <c'-4> g    <ees'-2>8 <ees' c' g>  |
  <aes,-1>16\pIV <aes-3> <c'-2> aes    <f'-4>8 <f' c' aes>    bes,16\bpI <f-3> aes f    <d'-4>8 <d' aes f>  |
  <ees-4>16\pIII <g-3> bes g    <ees'-2> g bes g    ees g bes ees'    ees\bpIII bes ees' g'  |
  <f-1>16\pIII <bes-2> <d'-3> bes    <aes'-4> bes d' bes    <bes,-1>\pI bes d' bes    aes' bes d' bes  |
  <ees-4>16\bpIII bes <ees'-2> bes    g' bes ees' bes    ees <g-3> bes ees'    ees bes ees' g'  |
  <ees' bes g>2 r2 |
}
lowerFifteen = \transpose c c' {
  \voiceTwo
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  ees2 g |
  f2 bes, |
  b,2 c |
  aes,2 bes, |
  ees2 ees4 ees |
  f2 bes, |
  ees2 ees4 ees |
  ees2 r2 |
}
preludeFifteen = \context Staff = "S" <<
  \key ees \major
  \clef "treble"
  \time 4/4
  \context Voice = "up" \upperFifteen
  \context Voice = "dn" \lowerFifteen
>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
upperSixteen = \transpose c c' {
  \voiceOne
  \stdOpts
  <c-1>16\pIII <ees'-2> <c'-4> <g-3>    c g c' ees'    c ees' c' g  |
  <c-3>16\bpI f' <d'-4> aes    c aes d' f'    c f' d' aes  |
  <b,-2>16\pI <f'-1> <d'-4> g    b, g d' f'    g, f' b g  |
  <c-1>16\pIII <ees'-2> <c'-4> <g-3>    c g c' ees'    c ees' c' g  |
  <ees-4>16\bpIII g' <ees'-2> bes    ees bes ees' g'    ees g' ees' bes |
  f,16\BpI f' <d'-4> aes    <f-3> aes d' f'    f f' d' aes  |
  <fis-1>16\pIV <a'-4> <ees'-2> <c'-3>    fis c' ees' a'    fis a' ees' c'  |
  <g-3>16\pIII <g'-1> <ees'-2> <c'-4>    g c' ees' g'    <g,-1> <g-3> <b-2> <f'-4>  |
  <c-1>16\pIII <ees'-2> <c'-4> <g-3>    c c' ees' g'\BpIII    c ees' c' g  |
  <c' ees>2 r4 |
}
lowerSixteen = \transpose c c' {
  \voiceTwo
  \stdOpts
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  c4 c c |
  c4 c c |
  b,4 b, g, |
  c4 c c |
  ees4 ees ees |
  f,4 f f |
  fis4 fis fis |
  g4 g g, |
  c4 c c |
  <c-3>2 r4 |
}
preludeSixteen = \context Staff = "S" <<
  \key c \minor
  \clef "treble"
  \time 3/4
  \context Voice = "up" \upperSixteen
  \context Voice = "dn" \lowerSixteen
>>


\score {
  \header { piece = \markup { \bold "Prelude 1 in C Major" } }
  \preludeOne
  \layout { }
}

\score {
  \header { piece = \markup { \bold "Prelude 2 in A Minor" } }
  \preludeTwo
  \layout { }
}

\score {
  \header { piece = \markup { \bold "Prelude 3 in G Major" } }
  \preludeThree
  \layout { }
}

\score {
  \header { piece = \markup { \bold "Prelude 4 in E Minor" } }
  \preludeFour
  \layout { }
}

\score {
  \header { piece = \markup { \bold "Prelude 5 in D Major" } }
  \preludeFive
  \layout { }
}

\score {
  \header { piece = \markup { \bold "Prelude 6 in B Minor" } }
  \preludeSix
  \layout { }
}

\score {
  \header { piece = \markup { \bold "Prelude 7 in A Major" } }
  \preludeSeven
  \layout { }
}

\score {
  \header { piece = \markup { \bold { Prelude 8 in \concat{ F \super \sharp } Minor } } }
  \preludeEight
  \layout { }
}

\score {
  \header { piece = \markup { \bold "Prelude 9 in E Major" } }
  \preludeNine
  \layout { }
}

\score {
  \header { piece = \markup { \bold { Prelude 10 in \concat{ C \super \sharp } Minor } } }
  \preludeTen
  \layout { }
}

\score {
  \header { piece = \markup { \bold "Prelude 11 in F Major" } }
  \preludeEleven
  \layout { }
}

\score {
  \header { piece = \markup { \bold "Prelude 12 in D Minor" } }
  \preludeTwelve
  \layout { }
}

\score {
  \header { piece = \markup { \bold { Prelude 13 in \concat{ B \super \flat } Major } } }
  \preludeThirteen
  \layout { }
}

\score {
  \header { piece = \markup { \bold "Prelude 14 in G Minor" } }
  \preludeFourteen
  \layout { }
}

\score {
  \header { piece = \markup { \bold { Prelude 15 in \concat{ E \super \flat } Major } } }
  \preludeFifteen
  \layout { }
}

\score {
  \header { piece = \markup { \bold "Prelude 16 in C Minor" } }
  \preludeSixteen
  \layout { }
}


\score {
  {
    \tempo 4=90
    \preludeOne
    s1
    \tempo 4=60
    \preludeTwo
    s1
    \tempo 4=60
    \preludeThree
    s1
    \tempo 4=60
    \preludeFour
    s2.
    \tempo 4=60
    \preludeFive
    s1
    \tempo 4=72
    \preludeSix
    s2.
    \tempo 4=60
    \preludeSeven
    s2.
    \tempo 4=60
    \preludeEight
    s2.
    \tempo 4=60
    \preludeNine
    s1
    \tempo 4=120
    \preludeTen
    s1.
    \tempo 4=60
    \preludeEleven
    s2.
    \tempo 4=60
    \preludeTwelve
    s1
    \tempo 4=120
    \preludeThirteen
    s1.
    \tempo 4=90
    \preludeFourteen
    s1.
    \tempo 4=60
    \preludeFifteen
    s1
    \tempo 4=60
    \preludeSixteen
  }
  \midi {
    \transposition c % guitar plays octave lower than written
  }
}

