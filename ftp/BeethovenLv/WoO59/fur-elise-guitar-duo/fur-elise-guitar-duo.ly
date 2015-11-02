\version "2.18.2"

% Acknowledgments:
% This arrangement for guitar duo has been adapted from the piano edition that
% was typeset by Stelios Samelis (Mutopia-2012/12/23-931).  Efcharistó, Stelios.
% Thanks also to guitarist Dennis Burns for his proofreading and fingering edits.

\header {
 title = "Für Elise"
 subtitle = "Clavierstuck in A Minor - WoO 59"
 subsubtitle = "Arranged for Guitar Duo"
 composer = "Ludwig van Beethoven"
 arranger = "Arr: J. J. Olson"
 style = "Classical"
 date = "1810"
 source = "Breitkopf & Härtel, 1888"

 %            o_
 %       (\___\/_____/)
 %  ~ ~ ~ ~ ~ / ~ ~ ~ ~ ~ ~ ~ 
 maintainer = "Jeffrey Olson"
 maintainerEmail = "gmail's jjocanoe"
 license = "Public Domain"

 mutopiacomposer = "BeethovenLv"
 mutopiaopus = "WoO 59"
 mutopiatitle = "Für Elise"
 mutopiainstrument = "2 Guitars"

 footer = "Mutopia-2015/11/02-2059"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

\paper{
  page-count = #4
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

% full barre
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

% partial barre
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

\score {
\new PianoStaff
\transpose c c' % guitar shows an octave higher than it sounds 
<<

\new Staff = "up" \with { instrumentName = #"Guitar I " } {
 \set Staff.midiInstrument = #"acoustic grand"
 \clef treble
 \key a \minor
 \time 3/8
 \override Score.MetronomeMark.transparent = ##t
 \tempo 4 = 48

 \repeat volta 2 {
  \partial 8 <e''-4>16\pp\pX <dis''-2> |
  e'' dis'' e'' <b'-3_\2> <d''-1> <c''-4> | %1a
  <a'-1>8 r16 <c'-2_\4>\pIX <e'-1> <a'-3> | %2a
  <b'-4>8 r16 <e'-1>\bpIX <gis'-1> <b'-4> | %3a
  <c''-4>8 r16 <e'-1_\3> <e''-4>\pX <dis''-2> | %4a
  e'' dis'' e'' <b'-3> <d''-1> <c''-4> | %5a
  <a'-1>8\ppX r16 <c'-2>\pIX <e'-1> <a'-3>\pX | %6a
  <b'-4>8 r16 <e'-1> <c''-4>\pX <b'-3> %7a
 }
 \alternative { 
  { <a'-1>4 }
  { <a'-1>8 \bar "" r16 <b'-3_\2>
    \set Timing.measurePosition = #(ly:make-moment -1/8)
    <c''-4>16 <d''-1_\1> } %8a
 }

 \repeat volta 2 {
  <e''-3>8.\ppX <g'-2_\3>16[ <f''-4> <e''-3>] | %9a
  <d''-1>8. <f'-2>16[\pVIII <e''-4> <d''-3>] | %10a
  <c''-1>8. <e'-3>16[\pVII <d''-4> <c''-2>] | %11a
  <b'-1>8 r16 <e'-1_\3>[ <e''-4>] r | %12a
  r16 \headHarmonic e''[ e''' ] r r \headRevert dis''\pX | %13a
  e''8 r16 <dis''-2> e'' dis'' | %14a
  e''16 dis'' e'' b' d'' c'' | %15a
  a'8 r16 c'\pIX e' a' | %16a
  b'8\ppIX r16 e'\bpIX gis' b' | %17a
  c''8 r16 e' e''\pX dis'' | %18a
  e'' dis'' e'' b' d'' c'' | %19a
  a'8 r16 c'\pIX e' a' | %20a
  b'8 r16 e' c''\pX b' | %21a
 } 
 \alternative { 
  { a'8\ppX r16 b'[ c'' d''] } %22a
  { a'8 r16 <e-2 c'-1>\pI[ <f c'> <e g c'>] } %23a
 }
 
 \transpose c' c {
  \grace { <f'-3>16[ <a'-2>] } <c''-1>4 <f''-2>16.\pV <e''-1>32 | %24a
  e''8([ <d''-3>]) <bes''-2>16. <a''-1>32 | %25a
  a''16( <g''-4> <f''-2> <e''-1> <d''-3> <c''-1>) | %26a
  <bes'-4>8\ppV[ <a'-3>] \appoggiatura bes'32 a'32[ g' a' bes'] | %27a
  <c''-1>4 <d''-1_\3>16\pVII[ <dis''-2>] | %28a
  <e''-3>8. e''16[ <f''-4> <a'-1>] | %29a
  \rhUp
  <c''-4>4 <d''-1>16. <b'-3>32 | %30a
  <c''-4>32[ <g''-2> <g'-4> g''] <a'-1>[ g'' <b'-3> g''] <c''-4>[ g'' <d''-1> g''] | %31a
  <e''-3>32[ <g''-2>^"(roll)" <c'''-2> <b''-1>] <a''-4>[ <g''-2> <f''-4> <e''-3>] <d''-1>[ <g''-2> <f''-4> <d''-1>] %32a
  <c''\P>32[ <g''\M> <g'\P> <g''\M>] <a'\P>[ <g''\M> <b'\P> <g''\M>] <c''\P>[ <g''\M> <d''\P> <g''\M>] | %33a
  <e''\P>32[ <g''\I> <c'''\M> <b''\I>] <a''\M>[ <g''\I> <f''\M> <e''\I>] <d''\M>[ <g''\I> <f''\M> <d''\I>] | %34a
  <e''-3\M>32[ <f''-4\I> <e''-3\M> <dis''-1\I>\pVIII] <e''-3\M>[ <b'-2\I> <e''\M> <dis''\I>] <e''\M>[ <b'\I> <e''\M> <dis''\I>] | %35a
  <e''\M>8.
 }

 <b'-3_\2\I>16\pX[ <e''-4\M> <dis''-2\I>] | %36a
 <e''-4\M>8. b'16[ e''^"(1)"] dis'' | %37a
 e''16^"(2)" dis''[ e''^"(3)"] dis''[ e''^"(4)"] dis'' | %38a
 e''16^"(5)" dis'' e''^"(6)" b' d'' c'' | %39a
 a'8 r16 c' e' a' | %40a
 b'8 r16 e' gis' b' | %41a
 c''8\ppX r16 e' e'' dis'' | %42a
 e''16 dis'' e'' b' d'' c'' | %43a
 a'8 r16 c' e' a' | %44a
 b'8 r16 e' c'' b' | %45a
 a'8 r16 b'16 c'' d'' | %46a
 e''8. g'16[ f'' e''] | %47a
 d''8.\ppIX f'16[\pVIII e'' d''] | %48a
 c''8. e'16[\pVII d'' c''] | %49a
 b'8 r16 e'[ e''] r | %50a
 r16 \headHarmonic e''[ e''' ] r r \headRevert dis''\pX | %51a
 e''16 r r dis''[ e'' dis''] | %52a
 e''16 dis'' e'' b' d'' c'' | %53a
 a'8\ppX r16 c'\pIX e' a' | %54a
 b'8 r16 e' gis' b' | %55a
 c''8 r16 e' e''\pX dis'' | %56a
 e''16 dis'' e'' b' d'' c'' | %57a
 a'8 r16 c'\pIX e' a' | %58a
 b'8 r16 e' c''\pX b' | %59a

 a'8\ppX r r | %60a
 % lower notes of chords moved to lower voice (61-64, 69)
 \fingerLeft
 <g'-4 bes'-3 cis''-1>4.\pIX | %61a
 <f'-2 a'-3 d''-1>4\bpX <cis''-3 e''-1>16\pXII[ <d''-3 f''-1>\pXIII] | %62a
 <d'' f''>4 <d'' f''>8 | %63a
 <c''!-2 e''-1>4.\pXII | %64a
 <f'-3 d''-4>4\pVIII <e'-2 c''-1>16[ <d'-2 b'-3>\pV] | %65a
 <c'-1 fis'-4 a'-1>4\bpV <c' a'>8 | %66a
 <c' a'>8[ <e' c''-4> <d'-2 b'-3>] | %67a
 % reinforce low A from lower voice
 <a,-0 c' a'>4. | %68a
 <g'-4 bes'-3 cis''-1>4.\pIX | %69a
 <f'-2 a'-3 d''-1>4\bpX <cis''-3 e''-1>16\pXII[ <d''-3 f''-1>] | %70a
 <d'' f''>4\pXIII <d'' f''>8 | %71a
 <d'' f''>4.\ppXIII | %72a
 <g'-2_\3 ees''-1>4\pXI <f'-3 d''-4>16\pVIII[ <ees'-3 c''-4>\pVI] | %73a
 <d'-3 f'-1 bes'-1>4\bpVI <d' f'-2 a'-1>8\pV | %74a
 <d' f' gis'-1>4\pIV <d' f' gis'>8 | %75a
 <c'-1 e'!-1 a'-1>4\bpV r8 | %76a
 <gis-2 e' b'-4>8 r r | \pageBreak %77a

 \tupletSpan 8
 a,8\pI r <a c' e'> %78a
 \fingerUp
 \tuplet 3/2 { <a-1>16\pVII[ <c'-4> <e'-3>] <a'-3>\pXII[ <c''-2> <e''-1>] <d''-4>[ <c''-2> <b'-1>] } %79a
 <a' c'' e''>8 r r %80a
 \tuplet 3/2 {<bes''-4>16[ <a''-4> <gis''-4>] <g''-4>\pXII [ <fis''-3> <f''-2>] <e''-1>[ <dis''-4>\pVIII <d''-3>] } %81a
 \transpose c' c {
  \tuplet 3/2 { <cis'''-2>16[\ppVIII <c'''-1> <b''-5^\2>] <bes''-4>[ <a''-3> <gis''-2>] <g''-1>[ <fis''-4^\3> <f''-3>] } %82a

  <e''-2>16 <dis''-1> <e''-4>\pVII <b'-3_\4> <d''-1> <c''-4> | %83a
  \rhDown
  <a'-1>8 r16 <c'-2\I>\bpVII <e'-1\M> <a'-1\I> | %84a
  <b'-3\M>8\ppVII r16 <e'-1\I> <gis'-4\M>\pVIII <b'-2\I> | %85a
  <c''-3\M>8 r16 <e'-1\I>\pVII <e''-4\M> <dis''-2\I> | %86a
  <e''-4\M>\ppVII <dis''-2\I> <e''-4\M> <b'-3\I> <d''-1\M> <c''-4\I> | %87a
  <a'-1\M>8 r16 <c'-2\I>\bpVII <e'-1\M> <a'-1\I> | %88a
  <b'-3\M>8\ppVII r16 <e'-1\I> <c''-4\M> <b'-3\I> | %89a
  <a'-1\M>8 r16 <b'-3\I>16 <c''-4\M> <d''-1\I> | %90a
  <e''-2\M>8.\pVIII <g'-3\I>16[ <f''-4\M> <e''-2\I>] | %91a
  <d''-1\M>8.\pVII <f'-2\I>16[ <e''-3\M> <d''-1\I>] | %92a
  <c''-4\M>8.\ppVII <e'-1\I>16\bpVII[ <d''-1\M> <c''-4\I>] | %93a
  <b'-3\M>8 
 }
 r16 e'[ e''] r | %94a
 r16 \headHarmonic e''[ e''' ] r r \headRevert dis''\pX | %95a
 e'' r r dis''[ e'' dis''] | %96a
 e'' dis'' e'' b' d'' c'' | %97a
 a'8 r16 c'\pIX e' a' | %98a
 b'8\ppIX r16 e' gis' b' | %99a
 c''8 r16 e' e''\pX dis'' | %100a
 e'' dis'' e'' b' d'' c'' | %101a
 a'8 r16 c'\pIX e' a' | %102a
 b'8 r16 e' c'' b' | %103a
 <a' c'>8 r \bar "|." %104a
}


\new Staff = "down" \with { instrumentName = #"Guitar II " } {
 \set Staff.midiInstrument = #"acoustic grand"
 \clef treble
 \key a \minor
 \time 3/8
 \set Score.markFormatter = #format-mark-box-alphabet
 \mark \default
   
 \repeat volta 2 {
  \partial 8 r8\pp | R4. | %1b
  <a,-0>16\pI <e-2> <a-3> r16 r8 | %2b
  <e,-0>16 <e-2> <gis-1> r r8 | %3b
  a,16 e a r r8 | R4. | %4,5b
  a,16\ppI e a r r8 | %6b
  e,16 e gis r r8  | %7b
 }
 \alternative {
  { a,16 e a r }
  { a,16[ e \bar "" a16] r
    \set Timing.measurePosition = #(ly:make-moment -1/8) r8 } %8b
  }

 \mark \default
 \repeat volta 2 {
  <c-1>16\pIII <g-3> <c'-4> r r8 | %9b
  <g,-1>16 <g-3> <b-2> r r8 | %10b
  a,16\pI e a r r8 | %11b
  e,16 e e' r r e[ | %12b
  e'16] r r dis'[ e'] r | %13b
  r16 dis'[ e'] r r8 | R4. | %14b,15b
  a,16 e a r16 r8 | %16b
  e,16\ppI e gis r r8 | %17b
  a,16 e a r r8 | R4. | %18b,19b
  a,16 e a r r8 | %20b
  e,16 e gis r  r8 | %21b
 }
 \alternative {
  { a,16\ppI e a r r8 } %22b
  { <a,-0>16[ <e-2> <a-3>] <bes-4>[ <a-3> <g-0>] } %23b
 }

 \mark \default
 \fingerLeft
 \rhDown
 <f-3\P>16\ppI <a-2\I> <c'-1\M> <a\I> <c'\M> <a\I> | %24b
 <f-3\P>\pII <bes-2\I> <d'-4\M> <bes\I> <d'\M> <bes\I> | %25b
 <f-3\P> <e-1\I> <bes-3\M> <e\P> <bes\M> <e\P> | %26b
 \transpose c' c {
  <f'-2\I>16\ppII <a-0\P> <c'-1\I> <a\P> <c'\I> <a\P> | %27b
  f' a c' a c' a | %28b
  <e'-1\I> <a-0\P> <c'-2\I> <a-0\P> <d'-0\I> <f-1\P>\pI | %29b
  <g-3\P> <e'-1\I>\pII <g\P> <e'\I> <g\P> <f'-4\I> | %30b
 
  \mark \default
  <c'-2 e'-1>8 r16 <f'-2 g'-0>[ <e'-1 g'> <d'-4 f'-2 g'>] | %31b
  <c'-2 e'-1 g'-0>8\pII \transpose c c' { <f-2 a-1>8[ <g-3 b-2>\pIII] } | %32b
  <c'-1 c''-4>8 r16 <f' g'>\pII[ <e' g'> <d' f' g'>] | %33b
  <c' e' g'>8 \transpose c c' { <f a>8[ <g b>\pIII] | %34b
  <gis-4 b>8 } r r | R4. | %35b,36b
 }
 \fingerUp

 \mark \default
 R4. R4. R4. | %37b,38b,39b
 a,16\pI e a r16 r8 | %40b
 e,16 e gis r r8 | %41b
 a,16\ppI e a r r8 | R4. | %42b,43b
 a,16 e a r r8 | %44b
 e,16 e gis r r8 | %45b
 a,16 e a r r8 | %46b
 c16\pIII g c' r r8 | %47b
 g,16\ppIII g b r r8 | %48b
 a,16\pI e a r r8 | %49b
 e,16 e e' r r e[ | %50b
 e'] r r dis'[ e'] r | %51b
 r dis'[ e'] r r8 | R4. | %52b,53b
 a,16\ppI e a r16 r8 | %54b
 e,16 e gis r r8 | %55b
 a,16 e a r r8 R4. | %56b,57b
 a,16 e a r r8 | %58b
 e,16 e gis r r8 | %59b

 \mark \default
 a,16\ppI a, a, a, a, a, | %60b
 << {
  e'4. | f' | gis'4 gis'8 | a'4. | %61b-64b (moved here from other part)
 } \\ {
  a,16 a, a, a, a, a, | %61b
  a,16 a, a, a, a, a, | %62b
  a,16 a, a, a, a, a, | %63b
  a,16 a, a, a, a, a, | %64b
 } >>
 <d a,>16 <d a,> <d a,> <d a,> <d a,> <d a,> | %65b
 <dis a,>16\ppI <dis a,> <dis a,> <dis a,> <dis a,> <dis a,> | %66b
 <e a,>16\pII <e a,> <e a,> <e a,> <e gis,> <e gis,> | %67b
 <a,>16\pI a, a, a, a, a, | %68b
 << {
  e'4. | f' | %69b,70b (moved here from other part)
 } \\ {
  a,16 a, a, a, a, a, | %69b
  a,16 a, a, a, a, a, | %70b
 } >>
 a,16 a, a, a, a, a, | %71b
 bes,16\ppI bes, bes, bes, bes, bes, | %72b
 bes,16 bes, bes, bes, bes, bes, | %73b
 bes,16 bes, bes, bes, bes, bes, | %74b
 \fingerLeft
 <b,!-1>16\pII b, b, b, b, b, | %75b
 <c-2 e-1>4 r8 | <b,-1 gis,-3>8 r r | %76b,77b

 \mark \default
 \tupletSpan 8
 \tuplet 3/2 { <a,-0>16\pI [ <c-4> <e-2>] <a-3>[ <c'-1> <e'-0>] <d'-4>[ <c'-1> <b-0>] } | %78b
 <a c' e'>8 r <a' c'' e''>\pXII | %79b
 \fingerUp
 \tuplet 3/2 { <a'-3>16[ <c''-2> <e''-1>] a'[ c'' e''] <d''-4>[ <c''-2> <b'-1>] } | %80b
 \tuplet 3/2 { <bes'-3>16\pIX_\>[ <a'-2> <gis'-1>] <g'-4^\3> [ <fis'-3> <f'-2>] } <e'-1>8_\! | %81b
 R4. | R4. | %82b,83b

 \mark \default
 a,16\pI e a r r8 | %84b
 e,16 e gis r r8 | %85b
 a,16 e a r r8 | R4. | %86b,87b
 a,16\ppI e a r r8 | %88b
 e,16 e gis r r8 | %89b
 a,16 e a r r8 | %90b
 c16\pIII g c' r r8 | %91b
 g,16 g b r r8 | %92b
 a,16\pI e a r r8  | %93b

 \mark \default
 e,16 e e' r r e[ | %94b
 e'16] r r dis'[ e'] r | %95b
 r16 dis'[ e'] r r8 | R4. | %96b,97b
 a,16 e a r16 r8 | %98b
 e,16\ppI e gis r r8 | %99b
 a,16 e a r r8 | R4. | %100b,101b
 a,16  e a r r8 | %102b
 e,16  e gis r r8 | %103b
 <a, e>8 r \bar  "|." %104b
}
>>

 \layout { }

 \midi {
  \transposition c % guitar plays an octave lower than written
 }

}
