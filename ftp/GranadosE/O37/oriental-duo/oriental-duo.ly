\version "2.18.2"

\header {
 title = "Danzas Españolas No. 2, Oriental"
 subtitle = \markup { \smaller "Arranged for Guitar Duo" }
 composer = "Enrique Granados" % d.1916
 arranger = "Arr: Dennis Burns"
 style = "Romantic"
 date = "1890"
 source = "Barcelona: Casa Dostesio, n.d. (IMSLP01200)"
 mytagline = ##f

 %            o_
 %       (\___\/_____/)
 %  ~ ~ ~ ~ ~ / ~ ~ ~ ~ ~ ~ ~
 maintainer = "Jeffrey Olson & Dennis Burns"
 maintainerEmail = "gmail's jjocanoe & boldersounds.com's dennis"
 license = "Creative Commons Attribution-ShareAlike 4.0"

 mutopiacomposer = "GranadosE"
 mutopiatitle = "Danzas Españolas No. 2, Oriental"
 mutopiaopus = "Op. 37"
 mutopiadate = "1890"
 mutopiasource = "Barcelona: Casa Dostesio, n.d."
 mutopiainstrument = "2 Guitars"

 footer = "Mutopia-2017/10/27-2200"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white "ǀ" \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {"ǀ" "ǀ"}}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " ©" 2017 ""by " \maintainer " — " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License" " — free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white "ǀ" }}}
 tagline = ##f
}

\paper{
  %#(set-paper-size "a4")      %uncomment to test specific paper size
  %#(set-paper-size "letter")  %uncomment to test specific paper size
  indent = \indent + 8\mm
  top-margin = 8\mm
  bottom-margin = 8\mm
  ragged-last-bottom = ##f
  print-first-page-number = ##t
  evenHeaderMarkup = \oddHeaderMarkup % so all page numbers to right
  oddFooterMarkup = \markup { \column {
      \fill-line { \on-the-fly #first-page \column { \vspace #3 \fromproperty #'header:copyright } }
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

% suppress non-barre guitar neck position indicators
pI    = ^\markup { \null }
pII   = ^\markup { \null }
pIII  = ^\markup { \null }
pIV   = ^\markup { \null }
pV    = ^\markup { \null }
pVI   = ^\markup { \null }
pVII  = ^\markup { \null }
pVIII = ^\markup { \null }
pIX   = ^\markup { \null }
pX    = ^\markup { \null }
pXI   = ^\markup { \null }
pXII  = ^\markup { \null }
pXIII = ^\markup { \null }
pXVI  = ^\markup { \null }
ppI    = ^\markup { \null }
ppII   = ^\markup { \null }
ppIII  = ^\markup { \null }
ppIV   = ^\markup { \null }
ppV    = ^\markup { \null }
ppVI   = ^\markup { \null }
ppVII  = ^\markup { \null }
ppVIII = ^\markup { \null }
ppIX   = ^\markup { \null }
ppX    = ^\markup { \null }
ppXI   = ^\markup { \null }
ppXII  = ^\markup { \null }
ppXIII = ^\markup { \null }

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
headHarmonic = \override Voice.NoteHead.style = #'harmonic
headRevert = \revert Voice.NoteHead.style

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

% from snippets + dashed line
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
noStrings = \stopTextSpan

% let ring (laissez vibrer ties)
lvib = \markup { \smaller \italic "laissez vibrer ..." }
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

% DS marks
segno = \markup {\musicglyph #"scripts.segno" }
setMarksRight = \override Score.RehearsalMark #'self-alignment-X = #RIGHT
markFine = \mark \markup { \smaller \italic "Fine" }
markDsFine = \mark \markup { \smaller \italic "D.S. al Fine" }
markDsNoRep = \mark \markup { \smaller \italic "D.S. al Fine senza ripetizioni" }

% expressive marks
dol = \markup { \italic "dolce" }
fin = \markup { \italic "fine" }
arh = \markup { \italic "art. har." }
lea = \markup { \huge "Lento assai" }
adt = \markup { \huge "Andante" }
psf = \markup { \italic \concat { "poco s" \larger \bold "f" } }
prd = \markup { \italic "poco rit. e dim." }
pcr = \markup { \italic "poco cresc." }
dim = \markup { \italic "dim." }
rit = \markup { \italic "rit." }
red = \markup { \italic "rit. e dim." }
rup = \markup { \italic "rit. un poco" }
atm = \markup { \italic "a tempo" }
una = \markup { \italic "una corda" }
gl = \glissando

\markup { \vspace #1 } % vertical space before first system

upperInstrument = \markup{ "Guitar I   " }
upperVoice = \transpose c c' {
  % within this body, c will show as middle C on a guitar staff
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  \fingerLeft
  \stringRight
  \markBox
  \time 3/4
  \tempo 4=80
  \mark "Andante"
  s2. | %1
  s2. | %2
  \repeat volta 2 {
    \onTwoStrings "1" "2"
    \set glissandoMap = #'((0 . 0))
    <e''-1 c''-2>4(\pXII\gl^\segno_\dol\startTextSpan
    \set glissandoMap = #'()
    <c'' a'-3>\pVIII\gl
    <e'' c''-2>~\pXII | %3
    <e'' c''>4\gl <d'' b'-3>\pX\gl <c'' a'>\pVIII\gl | %4
    <d'' b'>\pX)\gl <d'' b'>8(\gl
    \set glissandoMap = #'((0 . 0))
    <c'' a'>\pVIII\gl <b' g'-2>4\pVII)\stopTextSpan | %5
    #(define afterGraceFraction (cons 15 16))
    << {
      r4 \afterGrace <g'-1>2\pIII\startTrillSpan( { <f'-4\2>16\stopTrillSpan g') } | %6
       } \\ {
      \fingerLeft
      r4 <b-0>2
    } >>
    \ap { <c'-1\3>16\pV }
    \set glissandoMap = #'((1 . 1))
    <a'-2 f'-3>4\gl\startTextSpan
    \set glissandoMap = #'((0 . 0))
    <c''-1 a'-3>\pVIII(\gl
    \set glissandoMap = #'()
    <b' g'-2>\pVII\gl | %7
    <a' f'>4\pV)\gl
    \set glissandoMap = #'((0 . 0))
    <b' g'>\pVII\stopTextSpan(\gl
    \set glissandoMap = #'((1 . 1))
    <g'\1 b-2\3>\pIII\gl | %8
    <e'-3 c'-2>2.)\pIV~ | %9
    <e' c'>2. | %10
  }

  \mrk
  \onTwoStrings "2" "3"
  <d'-1 b-2>8\pIII\startTextSpan( <e'-4 c'-3> <d' b> <e' c'>
  \set glissandoMap = #'((1 . 1))
  <f'-1 d'-2>4\pVI)\gl | %11
  <gis'-3 e'>4\pVIII\stopTextSpan(\gl_\psf <b'-4\1 d'-2\3>2\pVI\gl^> | %12
  <e'-3 c'-2\3>2.)~\pIV | %13
  <e' c'>2.\> | %14
  <d' b>8\startTextSpan\pIII_(\! <e' c'> <d' b> <e' c'> <f' d'>4\pVI) | %15
  <gis' e'>4\stopTextSpan\pVIII_(_\psf <b' d'>2\pVI | %16
  <e' c'>2.\pIV)~ | %17
  <e' c'>2.\> | %18

  \mrk
  \onTwoStrings "1" "2"
  \set glissandoMap = #'((0 . 0))
  <e''-1 c''-2>4\startTextSpan(\pXII\gl\!\pp
  \set glissandoMap = #'()
  <c'' a'-3>\pVIII\gl
  <e'' c''-2>~\pXII | %19
  <e'' c''>4\gl <d'' b'-3>\pX\gl <c'' a'>\pVIII\gl | %20
  <d'' b'>\pX)\gl <d'' b'>8(\gl
  \set glissandoMap = #'((0 . 0))
  <c'' a'>\pVIII\gl <b' g'-2>4\stopTextSpan\pVII) | %21
  << {
    r4 \afterGrace <g'-1>2\<\startTrillSpan( { <f'-4\2>16\stopTrillSpan g') } | %22
     } \\ {
       \fingerLeft
       r4 <b-0>2
  } >>
  \set glissandoMap = #'((0 . 0))
  <a'-1 f'-2>4\startTextSpan\pV\gl\!
  <c'' a'-3>\pVIII(\gl
  \set glissandoMap = #'()
  <b' g'-2>\pVII\gl | %23
  <a' f'>4\pV)\gl
  \set glissandoMap = #'((0 . 0))
  <b' g'>\stopTextSpan\pVII(\gl
  \set glissandoMap = #'((1 . 1))
  <g' b-2>\pIII\gl | %24
  <e'-3 c'-2\3>2.)\pIV~_\prd | %25
  <e' c'>2. | %26

  \mrk
  <b'-1>4\pVII(\pp b'8 c'' b' c'' | %27
  <a'-1>4) a'8( <f'-2\2> <e'-1\2>4) | %28
  b'4\pVII(_\dol b'8 c'' b' c'' | %29
  a'2.\pV) | %30

  <d-3 g,>2.(\BpIII_\pcr | %31
  <c'-4 f d-3>)( | %32
  <b,-1 e,>2.)\pII | %33
  <d b, e,>2.(\pp\> | %34
  <e-1 c-2 a,-4>2.)\! | %35
  \bar "||"

  \mrk
  \onTwoStrings "2" "3"
  \set glissandoMap = #'()
  <e'-1 c'-2>4\startTextSpan(\pV\gl\p <c' a>\pI\gl_\dol <e' c'>~\pV | %36
  <e' c'>4\gl
  <d' b>\pIII\gl <c' a>\pI\gl | %37
  <d' b>)\pIII <d' b>8(\gl
  \set glissandoMap = #'((0 . 0))
  <c' a>\stopTextSpan\pI
  \onTwoStrings "3" "4" <b-2 g-3>4~\startTextSpan)\pIII | %38
  << {
    <b g>4\stopTextSpan \afterGrace <g'-1>2\pIII\startTrillSpan( { <f'-4\2>16\stopTrillSpan g') } | %39
     } \\ {
       \fingerLeft
       r4 <b-0>2
  } >>
  \onTwoStrings "2" "3"
  <a-1 f-2>4\startTextSpan\pII\gl( <c' a-3>4\pV\gl
  \set glissandoMap = #'()
  <b g-2>\pIV\gl | %40
  <a f>4)\gl
  \set glissandoMap = #'((0 . 0))
  <b g>\stopTextSpan(\pIV
  \onOneString "3" <g-2 b,-4\6>\startTextSpan\gl_\rit | %41
  <e-2 c-3\5>2.)~\stopTextSpan\pI_\dim | %42
  <e c>2. | %43

  \mrk
  << { \headHarmonic
       a4^\arh( c' b | %44
       a4) b( g | %45
       e2.\fe) | %46
       \markFine
       e'2.\fe\pp | %47
       \headRevert
     } \\ {
       d2.~_\rit | %44
       d2. | %45
       c2. | %46
       e2. | %47
  } >>
  \bar "|."

  \time 6/8
  \tempo 8=90
  \mrk
  s2.^\lea\p | %48
  \stemDown
  <c''-2>4\pVII c''8^>~ c''8([ \ap { <b'-1>32 <c''-2> <d''-4> } c''8 b'] | %49
  <g'-2\2>4) \ap { <f'-2>16\pV } <g'-2>8^>~ g'4.\pVII | %50
  <f'-2\2>8\pV( <a'-1\1> \ap { <g'-2>16\pII } <a'-2>8^>~ a'\pIV[ \ap { <gis'-1>32 <a'-2> <b'-4> } a'8 gis'!] | %51
  <e'-2\2>4) e'8^>~ e'4. | %52
  <e''-4\1 e'-1\3>4.^>\pIX\f~ <e'' e'>4_\dim
  \stringUp<fis'-4\2>32\p([ \onOneString "1" <gis'-1>\startTextSpan <a'-2> <b'-4>] | %53
  a'2.)\stopTextSpan | %54
  \stringRight

  \mrk
  <e''-2>4\pXI e''8^>~ e''8([ \ap { <dis''-1>32 <e''-2> <fis''-4> } e''8 dis''] | %55
  <b'-2\2>4) \ap { <a'-2>16\pIX } <b'-2>8^>~ b'4.\pXI | %56
  <c''-1\1>4\pVIII c''8^>~ c''32 c''( dis'' c'' dis''8[ b'\pVII] | %57
  <d''>4 cis''8 a'32\pV) a'^\rup c'' b' c''8([ b'] | %58
  <gis'>4)\pIV <e'\2>8^>(~ e'4
  \stringUp<fis'-4\2>32\p[ \onOneString "1" <gis'-1>\startTextSpan <a'-2> <b'-4>] | %59
  a'2.)_\atm\stopTextSpan | %60
  \stringRight

  \mrk
  << {
    <a,-0>16(\pVIII <e'-3> <c''-2 a'-4> e' <c'' a'> e') <c'' a'>( e' <c''> <f'-3> <d''-4> <d'-1>) | %61
    <a,-0>16(\bpVII <e'-3> <b'-1 g'-2> e' <b' g'> e') <b' g'>( <d'-1> <b' g'> <e'-3> <b' g'> <c'-4>) | %62
    <a,-0>16(\pIV <d'-4> <a'-2 f'-3> d' <a' f'> d') <a' f'>( <c'-1> <a' f'> <d'-4> <a' f'> <b-1>) | %63
    <a,-0>16(\ppIV <c'-2> <a'-4 e'-3> c' <a' e'> c') <a' e'>( <b-1> <a' e'> <c'-2> <a' e'>\pII <a-1>) | %64
    <e,>16(\pVIII <e'-2> <c''-1 a'-3> e' <d''-4 gis'-3>_\red e') <d'' fis'-1>( e' <d'' gis'-3> <e'> <d''> <e'>) | %65
    <a,>16( <e'-2> <c''-1 a'-3> e' <c'' a'> e') <c'' a'>( e' <c'' a'> e' <c'' a'> e') | %66
  } \\ {
    a,4. s16 e'8 f'8 d'16 | %61
    a,4. s16 d'8 e'8 c'16 | %62
    a,4. s16 c'8 d'8 <b>16 | %63
    a,4. s16 b8 c'8 a16 | %64
    e,2. | %65
    a,2. | %66
  } >>
  \bar "||"

  \time 3/4
  \tempo 4=80
  \mrk
  <a-3\4>8(\pV^\adt\p <b-0>_\lvib <c'-1\3> <e'-0> c' b) | %67
  a8\P( b\M c'\I e'\A c'\I b\M) | %68
  \setMarksRight
  \markDsNoRep
  \bar"|."
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
  \stringUp
  \time 3/4
  <a-3\4>8(\pV_\lvib <b-0\2> <c'-1\3> <e'-0\1> c' b) | %1
  a8\P( b\M c'\I e'\A c'\I b\M) | %2
  a8(\ppV b c' e' c' b) | %3
  a8( b a b c' e') | %4
  <a-3>8( <b-0> <d'-4> <g'-1>\ppIII <d'-4> <b-0>) | %5
  a8( b d' g' d'
  \onOneString "4" <g-3>)\startTextSpan | %6
  <f-2>8(\pII\stopTextSpan
  \onOneString "3" <g-0>\startTextSpan <a-1> <c'-4>\stopTextSpan <d'-1\2>\pIII <e'-0>) | %7
  <f'-4\2>8( <g'-1\1> f' g' <f-2\4> <g-0>) | %8
  a8(\pV b c' e' c' b) | %9
  a8( b c' e' c' b) | %10

  <g-0>8\pI( <f-3\4> g f <d-0> <c-3> | %11
  <b,-2>8 <a,-0> gis, <f,-1> <d-0> <c-2>\pII) | %12
  <b,-1>8( <a,-0> <b,-1> <c-2> <e-1>\bpII <a-1> | %13
  <b-0>8 <c'-3\3>\pIII <d'-1\2> c' <b-0> <c'>) | %14
  g8\pI( f g f d c | %15
  b,8 a, gis, f, <d-0>\pII c) | %16
  b,8( a, b, c e\bpII a | %17
  <b-0>8 <c'\3>\pIII <d'\2> c' b c') | %18

  a8( b c' e' c' b) | %19
  a8( b a b c' e') | %20
  a8( b d' g'\ppIII d' b) | %21
  a8( b d' g' d'
  \onOneString "4" <g-3>)\startTextSpan | %6
  <f-2>8(\pII\stopTextSpan
  \onOneString "3" <g-0>\startTextSpan <a-1> <c'-4>\stopTextSpan <d'-1\2>\pIII <e'-0>) | %7
  <f'-4\2>8( <g'-1\1> f' g' <f-2\4> <g-0>) | %24
  \stringRight
  a8(\pV b c' e' c' b) | %25
  a8( b c' e' c' b) | %26
  \onTwoStrings "3" "4"
  <d'-4 gis-2 e,>2.\pIV(\startTextSpan | %27
  <c'-4 e-1 a,>2.\pII) | %38
  <d'-4 gis-2 e,>2.\pIV( | %29
  <c'-4 e-1 a,>2.\pII)\stopTextSpan | %30

  \onOneString "4"
  <b-3>4\startTextSpan(\pVII b8 <c'-4> b c' | %31
  <a-1>4) a8( b a b | %32
  <gis-1>4\pVI \ap { <a-2>8 } gis8\stopTextSpan
  \onOneString "5" <fis-4>\startTextSpan <e-2>4)\stopTextSpan | %33
  \onOneString "4"
  <b-3>4\startTextSpan\pVII( b8 c' b c' %34
  <a-1>2.)\stopTextSpan | %35

  a,8\pI( b, c e c b,) | %36
  a,8( b, a, b, c e) | %37
  a,8( b, d g d b,) | %38
  a,8( b, d g d <g,>) | %39
  <f,>8( <g,> <a,> <c> <d> <e>) | %40
  <f>8( <g> f g <f,> <g,>) | %41
  a,8( b, a, b, a, g,) | %42
  f,8( g, f, g, f, e,) | %43

  << { \headHarmonic
       f4_\arh( a g | %44
       f4) g( b, | %45
       \headRevert
       a,2.\fe) | %46
       \headHarmonic
       c'2.\fe | %47
       \headRevert
     } \\ {
       s2. | %44
       s2. | %45
       a,2. | %46
       a,2. | %47
  } >>


  \time 6/8
  << {
    \fingerLeft
    a,16\pI( e <c' a> e <c' a> e <c' a> e <c' a> e <c' a> e) | %48
    a,16( e <c' a> e <c' a> e) <c' a>( e <c'> f <d'> d) | %49
    a,16( e <b g> e <b g> e) <b g>( d <b g> e <b g> c) | %50
    <a,-0>16(\pII <d-4> <a-1 f-2> d <a f> d) <a f>( <c-3> <a f> <d-4> <a f>\bpII b,) | %51
    <a,-4>16(\BpII <c-2> <a-1 e-1> c <a e> c) <a e>( <b,-1> <a e> <c> <a e> a,) | %52
    a,16\pI( e <d' a> e <d' gis> e <d' f> e <d' gis> e <d'> e) | %53
    a,16( e <c' a> e <c' a> e <c' a> e <c' a> e <c' a> e) | %54
    a,16( e <c' a> e <c' a> e) <c' a>( e <e' c'> g <c' a> fis) | %55
    a,16\BpIV( dis <b fis> dis <b fis> dis) <b fis>( dis <b fis> cis <b fis> dis) | %56
    a,16(\pI e <c' a> e <c' a> e) <e' c'>( g <c' a> fis <dis' a> dis) | %57
    <a,-0>16(\pII f <d' a> f <e' a> e) <e' a>( e <dis' fis> e <dis' a> e) | %58
    e,16(\pII e <d' b> e <d' a> e <d' gis>\pI e <d' gis> e <d'> e) | %59
    a,16( e <c' a> e <c' a> e <c' a>^\dim e <c' a> e <c' a> e) | %60
  } \\ {
    a,2. | %48
    a,4. s16 e8 f8 d16 | %49
    a,4. s16 d8 e8 c16 | %50
    a,4. s16 c8 d8 <b,-1>16 | %51
    a,4. s16 b,8 c8 a,16 | %52
    a,2. | %53
    a,2. | %54
    a,4. s16 e8 g8 fis16 | %55
    a,4. s16 dis8 cis8 dis16 | %56
    a,4. s16 g8 fis8 dis16 | %57
    a,4. s16 e8 e8 e16 | %58
    e,2. | %59
    a,2. | %60
  } \\ {
  } \\ {
    s2. * 12 | %48-59
    \onOneString "4"
    s4. s4 s16 \once \hideNotes e\gl\startTextSpan | % use voice 4 to start glissando
  } >>

  << {
  } \\ {
    s2. %61
    \onOneString "5"
    <g-2>4\startTextSpan
  } \\ {
  } \\ {
    \fingerLeft
    \stringRight
    <c'-2>4\pIX % use voice 4 to complete glissando
    c'8^>~ c'8([ \ap { \stemUp <b-1>32 <c'-2> <d'-4> \stemDown } c'8 b]\stopTextSpan | %61
    \once \hideNotes g4) % and to terminate the slur
  } >>
   \ap { <f-2>16\pVII } <g-2>8^>~ g4.\pIX | %62
  <f-2>8\stopTextSpan\pVII(
  \onOneString "4"
  <a-1>\startTextSpan \ap { <g-2>16\pIV } <a-2>8^>~ a\pVI[
  \ap { \stemUp <gis-1>32 <a-2> <b-4> \stemDown } a8 gis!\gl] | %63
  <e-1>4) e8^>~ e4.\stopTextSpan | %64
  <e'-4\3 e-1\5>4.^>\f\pII~ <e' e>4
  \stringUp <fis-3\5>32\p\pVI([
  \onOneString "4" <gis-1>\startTextSpan <a-2> <b-4>] | %65
  a2.)\stopTextSpan | %66

  \override MultiMeasureRest.staff-position = #0
  R | %67
  R | %68
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
  \layout { \set Score.tempoHideNote = ##t }
  \midi {
    \transposition c % guitar plays octave lower than written
    \context {
      \Voice
      \remove "Dynamic_performer"
    }
  }
}
