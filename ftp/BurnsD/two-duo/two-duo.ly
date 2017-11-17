\version "2.18.2"

% A recording of Dennis Burns playing this song is on track 11
% of the album “A Rose on the Lake”, © 2005 Bolder Sounds.

\header {
 title = "Two"
 subtitle = \markup { \smaller "Arranged for Guitar Duo" }
 composer = "Dennis Burns" % b.1959
 date = "1990"
 source = "Unpublished manuscript dated 10/25/1990 with permission of Dennis Burns"
 moreInfo = "A recording of Dennis Burns playing this song is on track 11 of the album “A Rose on the Lake”, © 2005 Bolder Sounds."
 style = "Romantic"
 mytagline = ##f

 %            o_
 %       (\___\/_____/)
 %  ~ ~ ~ ~ ~ / ~ ~ ~ ~ ~ ~ ~
 maintainer = "Jeffrey Olson & Dennis Burns"
 maintainerEmail = "gmail's jjocanoe & boldersounds.com's dennis"
 license = "Creative Commons Attribution-ShareAlike 4.0"

 mutopiacomposer = "BurnsD"
 mutopiatitle = "Two"
 mutopiadate = "1990"
 mutopiasource = "Unpublished manuscript dated 10/25/1990 with permission of Dennis Burns"
 mutopiainstrument = "2 Guitars"

 footer = "Mutopia-2017/11/05-2205"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white "ǀ" \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {"ǀ" "ǀ"}}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " ©" 2017 ""by " \maintainer " — " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License" " — free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white "ǀ" }}}
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

rit = \markup { \italic "rit." }

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

upperInstrument = \markup{ "Guitar I   " }
upperVoice = \transpose c c' {
  % within this body, c will show as middle C on a guitar staff
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  \fingerLeft
  \stringDown
  \tempo 4 = 52

  \key d \major
  \partial 4. { a'8 d''[ cis''] } | %0
  \repeat volta 2 {
    d''2 r8 a' d''[ cis''] | %1
    d''4 b' a' r8 g' | %2
    a'2 r8 g' fis'8. g'16 | %3
    e'2 r8 a' d''[ cis''] | %4
    d''2 r8 a' b'8.[ g'16] | %5
    a'2 r8 g' fis'8. g'16 | %6
    e'2 r8 a cis'8. e'16 | %7
  }
  \alternative {
    { d'2 r8 a' d''[ cis''] } %8
    { d'2 r8 fis' a'[ cis''] } %8
  }

  \key g \minor
  d''8 g'4 g'8 c'' f'4 f'8| %9
  bes'16 a' g'8~ g'4 a'8 d''4 d''8 | %10
  d'8 a4 a8 c' g4 g8 | %11
  << {
    a8 c'4 bes8 a2
  } \\ {
    s2 a'8\rest f'4 f'8
  } >> | %12
  d'8 f'4 f'8 e' f'4 e'8 | %13
  d'8 f'4 f'8 d' f'4 e'8 | %14
  d'8 a4 f'8 g' a' bes' d''16 c'' | %15
  d''2 r8 f' bes'[ a'] \bar "||" %16
  bes'2 r8 f' bes'[ a'] | %17
  bes'4 g' f' r8 g' | %18
  f'2 r8 ees'8 d'8. ees'16 | %19
  c'2 r8 f' bes'[ a'] | %20
  bes'2 r8 f' g'8.[ ees'16] | %21
  f'2 r8 ees' d'8. ees'16 | %22
  c'2 r8 f8 a8. c'16 | %23
  bes2 r8\fermata \bar "|." %24
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
  \key d \major
  \partial 4. { s4. } | %0
  \repeat volta 2 {
    d8 fis a cis' d'4 fis' | %1
    g'8 fis' e' d' a e' fis' cis' | %2
    d'8 e' fis' a b4. d'8~ | %3
    d'8 cis' a b  cis' d' e' fis' | %4
    g'8 a' b' fis' g'4 e' | %5
    d'8 e' fis' a b4 a | %6
    r8 e g a a,2 | %7
  }
  \alternative {
    { d8 fis a cis' d' r r e } %8
    { d8 fis a cis' d' r r4 } %8
  }

  \key g \minor
  bes2 a | %9
  g4 d' dis'2 | %10
  dis2 d | %11
  cis2 d | %12
  bes2 a | %13
  gis2 g | %14
  f2 ees4 g | %15
  bes8 d f a bes4 d' | %16
  bes,8 d f a bes4 d' | %17
  ees'8 d' c' bes  f c' d' ees' | %18
  bes8 c' d' f g4. bes8~ | %19
  bes8 a f g  a bes c' d' | %20
  ees'8 f' g' a' f'4 c' | %21
  bes8 c' d' f g4 f | %22
  r8 c ees f f,2 | %23
  r8 bes,^\rit d f bes\fermata \bar "|." %24
}


\score {
  \context StaffGroup <<
    \context Staff = "up" \with { instrumentName = \upperInstrument } <<
      \set Staff.midiInstrument = #"acoustic grand"
      \clef "treble"
      \context Voice = "1" { \voiceOne \upperVoice }
     >>
    \context Staff = "dn" \with { instrumentName = \lowerInstrument } <<
      \set Staff.midiInstrument = #"acoustic grand"
      \clef "treble"
      \context Voice = "2" { \voiceTwo \lowerVoice }
     >>
  >>
  \layout { }
  \midi {
    \transposition c % guitar plays octave lower than written
  }
}
