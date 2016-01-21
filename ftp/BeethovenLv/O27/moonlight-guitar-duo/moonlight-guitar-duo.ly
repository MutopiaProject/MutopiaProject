\version "2.18.2"

% Acknowledgments:
% This arrangement for guitar duo has been adapted from Tárrega's solo arrangement,
% "Claro de Luna", Mutopia-2015/12/03-2074, which was typeset from IMSLP item 293004,
% which was contributed by the Gaylord Music Library at Washington University, St. Louis.
% Thanks also to guitarist Dennis Burns for his many reviews and fingering ideas.

\header {
 title = "Sonata No. 14  “Moonlight”"
 subtitle = "Op. 27 No. 2,  1st Movement"
 subsubtitle = "Arranged for Guitar Duo"
 piece = "Adagio sostenuto"
 composer = "Ludwig van Beethoven"
 arranger = "Arr: F. Tárrega & J. J. Olson"
 style = "Classical"
 date = "1802" % Beethoven d.1827, Tarrega d.1909, Alier d.1938
 source = "Madrid: Ildefonso Alier, n.d. Plate 5754" % via IMSLP293004
 mytagline = \markup{ \column { \vspace #2 \smaller \italic { "Based on F. Tárrega's solo arrangement, \"Claro de Luna\", Mutopia-2015/12/03-2074" } } }

 %            o_
 %       (\___\/_____/)
 %  ~ ~ ~ ~ ~ / ~ ~ ~ ~ ~ ~ ~ 
 maintainer = "Jeffrey Olson"
 maintainerEmail = "gmail's jjocanoe"
 license = "Public Domain"

 mutopiacomposer = "BeethovenLv"
 mutopiatitle = "Sonata No. 14 “Moonlight” (1st Movement: Adagio sostenuto)"
 mutopiadate = "1802"
 mutopiasource = "Madrid: Ildefonso Alier, n.d. Plate 5754"
 mutopiainstrument = "2 Guitars"

 footer = "Mutopia-2016/01/21-2101"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { "Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain " "by the typesetter " \char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}

\paper{
  page-count = #6
  %#(set-paper-size "a4")      %uncomment to test specific paper size
  %#(set-paper-size "letter")  %uncomment to test specific paper size
  indent = \indent + 8\mm
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

% page turn
% ( In this piece, it's really a page shift not a turn.  The six sheets
% are in two stacks, and an individual page is shifted from the top of
% the right stack onto the top of the left stack so that both the shifted
% page and the next page are visible.)
pageTurn = \markup{ \smaller \italic "(page)" }

upperInstrument = \markup{ \center-column{ "Guitar I   " \line \smaller {\circle 6 "= E"} } }
upperVoice = \transpose c c' {
  % within this body, c will show as middle C on a guitar staff
  \fingerDown
  \fingerInStaff
  \stringDown
  \tuplet 3/2 4 { <a-2\4>8\pVI <d'-3> <f'-1>  a d' f'  a d' f'  a d' f' } | %1a
  \hideTupletNumber
  \hideTupletBracket
  \tuplet 3/2 4 { a8 d' f'  a d' f'  a d' f'  a d' f' } | %2a
  \tuplet 3/2 4 { <bes-4\4>8\ppVI <d'> <f'>  bes d' f'  <bes-2>\bpVIII <ees'-3> <g'-4>  bes ees' g' } | %3a
  \tuplet 3/2 4 { <a-2>8\pVI <cis'-1> <g'>  a <d'-3> <f'-1>  a d' <e'-1>\bpV  <g-1> <cis'-2> <e'-1> } | %4a

  \set Score.markFormatter = #format-mark-box-alphabet
  \mark \default
  \tuplet 3/2 4 { <f-4\5>8\pVI <a-2\4> <d'-3>  a d' <f'-1>  a d' f'  a d' f' } | %5a
  \tuplet 3/2 4 { <a-2>8\ppVI <e'-4> <g'-3>  a e' g'  a e' g'  a e' g' } | %6a
  \tuplet 3/2 4 { <a-2>8 <d'-3> <f'-1>  a d' f'  <bes-3> <d'-2> <g'-4>  bes d' g' } | %7a
  \tuplet 3/2 4 { <a-3\4>8\pV <c'-1> <f'-2>  a c' f'  <g-3\4>\bpIII <bes-1> <e'-4>  bes e' <g'-1> } | %8a
  \tuplet 3/2 4 { <a-3\4>8\pV <c'-1> <f'-2>  a c' f'  a c' f'  a c' f' } | %9a

  \mark \default
  \tuplet 3/2 4 { <aes-2>8 <c'> <f'-3>  aes c' f'  aes c' f'  aes c' f' } | %10a
  \tuplet 3/2 4 { <aes>8 <c'> <ges'-4>  aes c' ges'  aes c' ges'  aes c' ges' } | %11a
  \tuplet 3/2 4 { <aes-2>8\bpVI <des'-1> <f'-3>  aes <c'-1>\pV f'  aes <d'-4> f'  <g-1> <d'> <f'> } | %12a
  \tuplet 3/2 4 { <g-2\4>8\pIV <c'-3> <ees'-1>  g c' ees'  <aes-4\4>\bpIII c' <d'-1>  <f-1> c' d' } | %13a
  \tuplet 3/2 4 { <g-3\4>8\pIII <c'-4> <ees'-2>  g c' ees'  g <b-2> <d'-1>  g b d' } | %14a

  \mark \default
  \tuplet 3/2 4 { <c'-3\3>8\ppIII <ees'-2> <g'-1>  c' ees' g'  c' <e'-4> g'  c' e' g' } | %15a
  \tuplet 3/2 4 { <des'-3\3>8\bpIV <f'-4> <aes'-1>  des' f' aes'  des' f' aes'  <b-1> f' aes' } | %16a like Tarrega
  %\tuplet 3/2 4 { <c'-2>8\pIV <f'-4> <aes'-1>  c' f' aes'  c' f' aes'  c' f' aes' } | %16a like Beethoven
  \tuplet 3/2 4 { <c'-3\3>8\pIII <e'-4> <g'-1>  c' e' g'  c' e' g'  c' e' g'  } | %17a
  \tuplet 3/2 4 { <des'-3\3>8\bpIV <f'-4> <aes'-1>  des' f' aes'  des' f' aes'  <b-1> f' aes' } | %18a like Tarrega
  %\tuplet 3/2 4 { <c'-2>8\pIV <f'-4> <aes'-1>  c' f' aes'  c' f' aes'  c' f' aes' } | %18a like Beethoven
  \tuplet 3/2 4 { <c'-3\3>8\pIII <e'-4> <g'-1>  c' e' g'  c'\ppII <ees'-2> <fis'-1>  c' ees' fis'  } | %19a
  \tuplet 3/2 4 { <c'-3\3>8\ppIII <d'-1> <a'-4>  c' d' a'  <bes-1>\bpIII <d'-1> <g'-1>  bes d' g'  } | %20a
  \tuplet 3/2 4 { <aes-3\4>8\pIV <c'-2> <ees'-1>  aes c' ees'  <g-3>\pIII <bes-1> <e'-4>  g bes e'  } | %21a
  \tuplet 3/2 4 { <d-3\5>8 <g-4> <bes-1>  d g bes  d g <a-1>\ppII  <d-4> <fis-3> a  } | %22a

  \mark \default
  \tuplet 3/2 4 { <g-3\4>8\bpIII <bes-1> <d'-1>  bes d' <g'-1>  <d'-2\3>\pVI <g'-3> <bes'-1>  d' g' bes'  } | %23a
  \tuplet 3/2 4 { <d'-1\3>8\pVII <a'-4> <c''-2>  d' a' c''  d' a' c''  d' a' c''  } | %24a
  \tuplet 3/2 4 { <d'-2\3>8\bpVI <g'-3> <bes'-1>  d' g' bes'  <cis'-1> g' bes'  d' g' bes'  } | %25a
  \tuplet 3/2 4 { <e'-4\3>8\ppV <g'-3> <a'-1>  e' g' a'  e' g' a'  e' g' a'  } | %26a
  \tuplet 3/2 4 { <f'-4>8\bpX <a'-4> \once \fingerLeft <d''-4>  f' a' d''  <e'-4>\pVI <g'-3> <bes'-1>  <d'-2> <f'-1> <b'-3>  } | %27a

  \mark \default
  \tuplet 3/2 4 { <cis''-4>8\bpV <cis'!-2\3> <e'-1>  <a'-1> cis' e'  <bes'-4\1>\pIV <cis'-3> <e'-2>  <g'-1>\ppIII cis' e'  } | %28a
  a,1 | %29b
  \tuplet 3/2 4 { r8 <f'-1\3>\bpX <a'-1>  \fingerLeft <d''-1> f' a'  <f''-4>\hiF \fingerDown f' a'  d'' f' a'  } | %30a
  a,1 | %31b
  \rhDown
  \tuplet 3/2 4 { <e-2\P\5>8\pVI <bes-3\I\4> <g-0\M>  <cis'-1\I\3> <bes\P> <e'-0\M>  <cis'-1\P> <g'-3\I\2> <e'-0\M>  <bes'-3\I\2>\pIX <g'-4\P\3> <cis''-1\M>  } | %32a
  a,2 a,_" " | %33b
  \tuplet 3/2 4 { <d'-4\P\4>8\pIX <gis'-1\M\2> <f'-2\I>  <b'-3\M\2>\pX <gis'-4\I> <d''-1\M\1>  <b'-3\I> <f''-1\M>\hiF\pXIII <d''-3\I\2>  <gis''-1\M>\hiGis\pXVI <f''-3\I\2>\hiF <b''-4\M>\hiB  } | %34a
  a,2 a, | %35b
  \tuplet 3/2 4 { <cis''-4\M>8\pVI <g'-3\I\2> <bes'-1\M>  <e'-3\I\2>\pIII <g'-1\M> <cis'-4\P\3>  <e'-0\M> <bes-2\P>\pII <cis'-1\I>  <g-4\P> <bes\I> <e-1\P>  } | %36a
  \rhUp
  \tuplet 3/2 4 { <g-0\I>8 <cis-4\P>\pI <e-2\I>  <bes,-1\P> <cis-4\I> <g,-3\P>  <bes,-1\P> <e-2\I> <g-0\M> }

  \mark \default
  \tuplet 3/2 4 { <d-3\5\P>\pIII <g-4\I> <bes-1\M> } | %37a
  << {
   <cis-2>2 e4 d | %38ay
   <cis-2>2\ppIII ees4 d | %39ay
   <cis-2>2 s | %40ay
  } \\ {
   \mergeDifferentlyHeadedOn
   \hideTupletNumber
   \stringDown
   s2 \tuplet 3/2 4 { <e-4\5>8 <g-3> <bes-1>  <d-2> <g> <bes> } | %38ax
   s2 \tuplet 3/2 4 { <ees-4>8 <g-3> <bes-1>  <d-2> <g> <bes> } | %39ax
   s2 \tuplet 3/2 4 { <d-3>8\bpIII <f-1> <d'-1>  d f d' } | %40ax
  } >>
  \tuplet 3/2 4 { <e-2\5>8\pVI <bes-4> <d'-3>  e bes d'  <e-2> <a-3> <cis'-1>  e a cis' } | %41a

  \mark \default
  \tuplet 3/2 4 { <f-4\5>8\ppVI <a-2> <d'-3>  a d' <f'-1>  a d' f' a d' f' } | %42a
  \tuplet 3/2 4 { <a-2\4>8 <e'-4> <g'-3>  a e' g'  a e' g'  a e' g' } | %43a
  \tuplet 3/2 4 { <a-2>8 <d'-3> <f'-1>   a d' f'   <bes-3> <d'-2> <g'-4>   bes d' g' } | %44a
  \tuplet 3/2 4 { <a-3>8\pV <c'-1> <f'-2>   a c' f'   <g-3\4>\pIII <bes-1> <e'-4>   <c'-1\3>\bpV <e'-1> <bes'-2> } | %45a
  \tuplet 3/2 4 { c'8 <f'-2> <a'-1>  c' f' a'  c' f' a'  c' f' a' } | %46a
  \tuplet 3/2 4 { <c'-1>8\pV <g'-4> <bes'-2>  c' g' bes'  c' g' bes'  c' g' bes' } | %47a
  \tuplet 3/2 4 { <c'-1>8\bpV <f'-2> <a'-1>  c' f' a'  <cis'-2> <g'-4> a'  <d'-3> <f'-2> a' } | %48a
  \tuplet 3/2 4 { <e'-4>8\pV <g'-3> <a'-1>  e' g' a'  <f'-2>\bpX <a'-3> <d''-4>  f' a' d'' } | %49a
  \tuplet 3/2 4 { <ees'-2>8\pVI <g'-3> <bes'-1>  ees' g' bes'  <cis'-2>\pV <g'-4> <a'-1>  cis' g' a' } | %50a

  \mark \default
  \tuplet 3/2 4 { <d'-3>8\pV <f'-2> <a'-1>  d' f' a'  d' <fis'-4> a'  d' fis' a'  } | %51a
  \tuplet 3/2 4 { <ees'-3>8\bpVI <g'-4> <bes'-1>  ees' g' bes'  ees' g' bes'  <cis'-1> g' bes'  } | %52a like Tarrega
  %\tuplet 3/2 4 { <d'-2>8\pVI <g'-4> <bes'-1>  d' g' bes'  d' g' bes'  d' g' bes'  } | %52a like Beethoven
  \tuplet 3/2 4 { <d'-3>8\pV <fis'-4> <a'-1>  d' fis' a'  d' fis' a'  d' fis' a' } | %53a
  \tuplet 3/2 4 { <ees'-3>8\bpVI <g'-4> <bes'-1>  ees' g' bes'  ees' g' bes'  <cis'-1> g' bes'  } | %54a like Tarrega
  %\tuplet 3/2 4 { <d'-2>8\pVI <g'-4> <bes'-1>  d' g' bes'  d' g' bes'  d' g' bes'  } | %54a like Beethoven
  \tuplet 3/2 4 { <d'-3>8\pV <fis'-4> <a'-1>  d' fis' a' }

  \mark \default
  \tuplet 3/2 4 { d' <g'-4> <bes'-2>  d' g' bes' } | %55a
  \tuplet 3/2 4 { <c'-1\3>8\bpV <g'-4> <bes'-2>  c' g' bes'  c' g' bes'  c' <f'-2> <a'-1> } | %56a
  \tuplet 3/2 4 { <bes-1\4>8\pVIII <f'-3> <a'-4>  bes <e'-3> <g'-2>  <a-1>\pVII e' <g'>  <a-2>\pVI <d'-3> <f'-1> } | %57a
  \tuplet 3/2 4 { <g-1>8\bpV <d'-3> <e'-1>  g d' e'  <a-2>\pV <d'-3> <e'-1>  <bes-4> d' e' } | %58a
  \tuplet 3/2 4 { <a-2>8\pVI <d'-3> <f'-1>  a d' f'  <g-1>\bpV <cis'-2> <e'-1>  g cis' e' } | %59a

  \mark \default
  \tuplet 3/2 4 { <f-4\5>8\pVI <a-2> <d'-3>  <a> <d'> <f'-1>  a d' f'  a d' f'  } | %60a
  \tuplet 3/2 4 { <a-2\4>8 <e'-4> <g'-3>   a e' g'   a e' g'   a e' g' } | %61a
  \rhDown
  \fingerLeft
  \tuplet 3/2 4 { <a-2\P\4>8\ppVI <f'-1\M> <d'-3\I>  <a'-1\M\2>\bpX <f'-1\I> <d''-1\M>  <a'\I> <f''-1\M>\hiF\pXIII <d''-3\I>  <a''-4\M>\hiA <f''\I>\hiF <d''\M\2> } | %62a
  << {
   \fingerLeft
   <a,-0>2. <a,-0>8. a,16 | %63bx
   \tuplet 3/2 4 { <a-2\P\4>8 <f'-1\M> <d'-3\I>  <a'-1\M\2>\bpX <f'-1\I> <d''-1\M>  <a'\I> <f''-1\M>\hiF\pXIII <d''-3\I>  <a''-4\M>\hiA <f''\I>\hiF <d''\M\2> } | %64a
   <a,-0>2. <a,-0>8. a,16 | %65bx
  } \\ {
   % Musically these two cis'' belong to Guitar I but are more easily played by Guitar II
   % as an extra note in addition to Guitar II's main (stemUp) voice.  They are also stemUp
   % to avoid collision with ledger lines, causing "ignoring too many clashing note columns",
   % hence the override to silence that warning on these notes.
   \stemUp
   \fingerLeft
   \override NoteColumn.ignore-collision = ##t
   s2. <cis'-1\3>4\bpVI | %63y
   s1 | %64y
   s2. <cis'-2>4\pI | %65y
   \revert NoteColumn.ignore-collision
  } >>

  \mark \default
  \fingerLeft
  \tuplet 3/2 4 { <d'-4 f-3>8\ppI <a-2> d'  <f'-1> d' a  r f a  d' a f } | %66a
  R1 | %67a
  r2 <d'-4 a-2 f-3>\pII | %68a
  <d' a f>2 r | %69a
}

lowerInstrument = \markup{ \center-column{ "Guitar II  " \line \smaller {\circle 6 "= D"} } }
lowerVoice = {
  % within this body, c' will show as middle C on a guitar staff
  \stemUp
  \fingerLeft
  \stringDown
  <d'-4\5>1\pII | %1b
  <c'-2>1 | %2b
  <bes-1>2\pI <g-4>\pII | %3b
  <a-0>2 a | %4b
  <d-0>2. <a'-1 d'-4\5>8.\pII a'16 | %5b
  <a'-1 cis'-3>2.\ppII <a' cis'>8. a'16 | %6b
  <a' d>2 <bes'-2 g-4> | %7b
  <a'-1 c'-2>2 <g'-0 c'-3>4\pI <c''-1 e'-2> | %8b
  <f'-4 f-3>1\ppI | %9b
  <f-3>2. <aes'-1 f'-4>8.\bpI aes'16 | %10b
  <aes'-1 ees'-1>2. <aes' ees'>8. aes'16 | %11b
  <aes'-1 des'-4>4\pI <aes' c'-3> <aes' b-2> <g'-4 b-1>\pII | %12b
  <g' c'-2>2 <aes'-4 f-1>4\bpIII <f'-1 aes-4> | %13b
  <g'-3 g-2>2\pIII <g' g> | %14b
  <c''-4 c'-1>2.\ppIII <c''-1 c'-3>4\pI | %15b
  << {
   \fingerLeft
   <des''-2>2. <b'-0>4 | %16bx
   <c''-1 c'-3>2. <c'' c'>4 | %17bx
   <des''-2>2.\ppI <b'-0>4 | %18bx
  } \\ {
   <c'-3>4 <f'-4> <aes'-1> f' | %16by
   s4 s4^\pageTurn s2| %17by
   <c'-3>4 <f'-4> <aes'-1> f' | %18by
   \stemUp
  } >>
  <c''-1 c'-3>2 <c''-4 a-0>\pIII | %19b
  <c''-4 fis-2>2 <bes'-1 g-3> | %20b
  <aes'-4 c'-1>2\ppIII <g'-3 cis'-2> | %21b
  <d'-0 d-0>2 <d' d> | %22b
  <g-1>2.\pV <d''-4 g'-2\4>8. d''16 | %23b
  <d''-4 fis'-1>2.\pIV <d'' fis'>8. d''16 | %24b
  <d''-4 g'-1>2\pV <cis''-2 e'-3\5>4 <d''-4 d'-1> | %25b
  <e''-2 cis'-1>2.\pIV <e'' cis'>4 | %26b
  <f''-2 d'-1>2\BpV <e''-1 g-1>4 <d''-4 gis-2> | %27b
  << {
   \fingerLeft
   <cis''-3>2\pIV s | %28bx
  } \\ {
   <a-0>1 | %28by
  } >>
  \hideTupletNumber
  \hideTupletBracket
  \tuplet 3/2 4 { r8 <cis''-2\3>\bpV <e''-1>  <a'-3\4> cis'' e''  <bes'!-4> cis'' e''  <g'-1> cis'' e''  } | %29a
  << {
   a1 | %30b
  } \\ {
   s4 s4^\pageTurn s2
  } >>
  \rhUp
  \tuplet 3/2 4 { r8 <f'-4\P\5>\pVI <a'-2\I>  <d''-3\M> f'\P <a'\I>  <f''-1\M> <f'\P> <a'\I>  <d''\M> <f'\P> <a'\I>  } | %31a
  a2 a | %32b
  \rhDown
  \tuplet 3/2 4 { <f'-4\P\5>8\bpVII <d''-3\M> <a'-2\I>  <f''-1\M> <d''\I> <a''-1\M\2>\bpX  <f''-1\I> <d'''-1\M> <a''-1\I>  <f'''-4\M>\hiF <d'''\I> <a''\M>  } | %33a
  a2 a | %34b
  \tuplet 3/2 4 { <g'-0\M>8 <cis''-1\I\4>\pXI <bes'-3\P\5>  <e''-0\M> <cis''-1\P> <g''-3\I\3>  <e''-0\M> <bes''-2\I\2>\pIX <g''\P>  <cis'''-1\I> <bes''\P> <e'''-4\I>  } | %35a
  s1 | %36b
  s1 | %37b
  << {
   \mergeDifferentlyHeadedOn
   \hideTupletNumber
   \tuplet 3/2 4 { r8 <g'-1>\pV <a'-3>  <bes'-4> a' g' } r2 | %38ax
   \tuplet 3/2 4 { r8 <g'>\ppV <a'>  <bes'> a' g' } r2 | %39ax
   \tuplet 3/2 4 { r8 <g'> <a'>  <bes'> a' g' } s2 | %40ax
  } \\ {
   a1 | %38b
   a1 | %39b
   a2 <bes-4\6> | %40b
  } >>
  <g-1>2 <a-3> | %41b
  << {
   s4 s4^\pageTurn s2
  } \\ {
   <d-0>2. <a'-1 d'-4\5>8.\pII a'16 | %42b
  } >>
  <a'-1 cis'-3>2. <a' cis'>8. a'16 | %43b
  <a'-1 d-0>2 <bes'-2 g-4> | %44b
  <a'-1 c'-2>2\ppII <g'-0 c'-3>4\pI <c''-1 e'-2> | %45b
  <f'-4 f-3>2. <c''-1 f'-4>8. c''16 | % 46b
  <c''-1 e'-2>2. <c'' e'>8. c''16 | % 47b
  <c''-1 f'-3>2\ppI <cis''-1 e'-1>4\bpII <d''-2 d'-0>\pII | %48b
  <e''-0 cis'-3>2 <f''-4 d'-0>\pIII | %49b
  <ees''-1 g-2>2\pIV <cis''-3 a-0> | %50b
  <d''-4 d-0>2.\ppIV <d''-1 d'-3\5>4\pIII | %51b
  << {
   \fingerLeft
   <ees''-2>2. <cis''-1>4\pII | %52bx
   <d''-1 d-0>2.\pIII <d'' d'-3>4 | %53bx
   <ees''-2>2.\ppIII <cis''-1>4\pII | %54bx
  } \\ {
   <d'-3>4 <g'-4> <bes'-1> <g'-0> | %52b
   s4 s4^\pageTurn s2 | %53b
   <d'-3>4 <g'-4> <bes'-1> <g'-0> | %54b
   \stemUp
  } >>
  <d''-1 d'-0>2\pIII <d'' g-3>2 | %55b
  <c''-4 e'-1>2.\pII <c'' f'-2>4 | %56b
  <bes'-2 d'-0>4\ppII <bes'-2 e'-1>\bpII <a' cis'-3> <a' d'-4> | %57b
  <g'-0 bes-1>2\pI <a'-1 a-0>4\pII <bes'-2 g-4> | %58b
  <a'-1 a-0>2 <a' a> | %59b
  \fingerLeft
  <d'-0 d-0>2. <a-4\6>8.\pIV a16 | %60b
  <cis'-1 a-4>2. <a>8. a16 | %61b
  <a d>2. <a-0>8.\pXII a16 | %62b
  \tuplet 3/2 4 { <cis'''-3\I\2>8\pXII <e'''-1\M> <bes''-3\I\2>\pIX  <cis'''-1\M> <g''-4\I\3> <bes''-3\M>  <e''-4\I\3>\pVII <g''-3\M> <bes'-2\P\4>~  bes' <a'-1\I\4> <g'-4\P\5> } | %63a
  <a d>2. a8. a16 | %64bx
  \tuplet 3/2 4 { <cis'''-3\I\2>8\pXII <e'''-1\M> <bes''-3\I\2>\pIX  <cis'''-1\M> <g''-4\I\3> <bes''-3\M>  <e''-4\I\3>\pVII <g''-3\M> <bes'-2\P\4>~  bes' <a'-1\I\4> <g'-4\P\5> } | %65a
  d2\ppII d' | %66b
  \fingerDown
  << {
   \hideTupletNumber
   \fingerLeft
   \rhDown
   \tuplet 3/2 4 { <a\P>8 <d'\P> <f'-2\I>  <a'-1\M> <f'\I> <d'\M>  <a\P> <d'\I> <a\P>  <f-2\P> <a\I> <f\P> } | %67b
  } \\ {
   \stemDown
   a2 s | %67by
  } >>
  \fingerLeft
  d2 <d'-0 a-0 d-0> | %68b
  <d' a d>2 r | %69b
}

\score {
  \context StaffGroup <<
    \context Staff = "up" \with { instrumentName = \upperInstrument } <<
      \set Staff.midiInstrument = #"acoustic grand"
      \clef "treble"
      \time 4/4
      \key d \minor
      \context Voice = "1" { \voiceOne \upperVoice }
     >>
    \context Staff = "dn" \with { instrumentName = \lowerInstrument } <<
      \set Staff.midiInstrument = #"acoustic grand"
      \clef "treble"
      \time 4/4
      \key d \minor
      \context Voice = "2" { \voiceTwo \lowerVoice }
     >>
  >>
  \layout {}
  \midi {
    \tempo 4 = 60
    \transposition c % guitar plays octave lower than written
  }
}

