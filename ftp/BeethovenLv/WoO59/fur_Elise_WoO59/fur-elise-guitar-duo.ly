\version "2.18.0"

 \header {
  title = "Für Elise"
  subtitle = "Clavierstuck in A Minor - WoO 59"
  subtitle = "Copy(12) 10/6/15  Fingering suggestions from Dennis Burns"
  composer = "Ludwig van Beethoven"
  mutopiatitle = "Für Elise"
  mutopiacomposer = "BeethovenLv"
  mutopiaopus = "WoO 59"
  mutopiainstrument = "Piano"
  date = "1810"
  source = "Breitkopf & Härtel"
  style = "Classical"
  copyright = "Public Domain"
  maintainer = "Stelios Samelis"

 footer = "Mutopia-2012/12/23-931"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

\paper{
  page-count = #5
  %#(set-paper-size "a4")      %uncomment to test specific paper size
  #(set-paper-size "letter")  %uncomment to test specific paper size
  top-margin = 8\mm
  bottom-margin = 8\mm
  ragged-last-bottom = ##t
  print-first-page-number = ##t
  evenHeaderMarkup = \oddHeaderMarkup %force pages to have same header (i.e. page number to right)
}

%jjo guitar neck position indicators
pI = ^\markup { "I" }
pII = ^\markup { "II" }
pIII = ^\markup { "III" }
pIV = ^\markup { "IV" }
pV = ^\markup { "V" }
pVI = ^\markup { "VI" }
pVII = ^\markup { "VII" }
pVIII = ^\markup { "VIII" }
pIX = ^\markup { "IX" }
pX = ^\markup { "X" }
pXI = ^\markup { "XI" }
pXII = ^\markup { "XII" }
pXIII = ^\markup { "XIII" }
%jjo parenthetic position reminder
ppI = ^\markup { "(I)" }
ppII = ^\markup { "(II)" }
ppIII = ^\markup { "(III)" }
ppIV = ^\markup { "(IV)" }
ppV = ^\markup { "(V)" }
ppVI = ^\markup { "(VI)" }
ppVII = ^\markup { "(VII)" }
ppVIII = ^\markup { "(VIII)" }
ppIX = ^\markup { "(IX)" }
ppX = ^\markup { "(X)" }
ppXI = ^\markup { "(XI)" }
ppXII = ^\markup { "(XII)" }
%jjo full bar
BpI = ^\markup { "B_I" }
BpII = ^\markup { "B_II" }
BpIII = ^\markup { "B_III" }
BpIV = ^\markup { "B_IV" }
BpV = ^\markup { "B_V" }
BpVI = ^\markup { "B_VI" }
BpVII = ^\markup { "B_VII" }
BpVIII = ^\markup { "B_VIII" }
BpIX = ^\markup { "B_IX" }
BpX = ^\markup { "B_X" }
BpXI = ^\markup { "B_XI" }
BpXII = ^\markup { "B_XII" }
%jjo partial bar
bpI = ^\markup { "b_I" }
bpII = ^\markup { "b_II" }
bpIII = ^\markup { "b_III" }
bpIV = ^\markup { "b_IV" }
bpV = ^\markup { "b_V" }
bpVI = ^\markup { "b_VI" }
bpVII = ^\markup { "b_VII" }
bpVIII = ^\markup { "b_VIII" }
bpIX = ^\markup { "b_IX" }
bpX = ^\markup { "b_X" }
bpXI = ^\markup { "b_XI" }
bpXII = ^\markup { "b_XII" }

fingerLeft = \set fingeringOrientations = #'(left)
fingerRight = \set fingeringOrientations = #'(right)
fingerUp = \set fingeringOrientations = #'(up)
fingerDown = \set fingeringOrientations = #'(down)
fingerUpDown = \set fingeringOrientations = #'(up down)

P = \rightHandFinger #1
I = \rightHandFinger #2
M = \rightHandFinger #3
A = \rightHandFinger #4

rhUp = \set strokeFingerOrientations = #'(up)
rhDown = \set strokeFingerOrientations = #'(down)
rhLeft = \set strokeFingerOrientations = #'(left)
rhRight = \set strokeFingerOrientations = #'(right)

headHarmonic = \override Staff.NoteHead.style = #'harmonic
headRevert = \revert Staff.NoteHead.style

\score {

 \new PianoStaff
 \transpose c c' %jjo guitar engraves an octave higher than it sounds 
 <<
 \new Staff = "up" \with { instrumentName = #"Guitar I " } {
 \clef treble
 \key a \minor
 \time 3/8
 \override Score.MetronomeMark.transparent = ##t
 \tempo 4 = 48

 \repeat volta 2 {
  \partial 8 <e''-4>16\pp\pX <dis''-2> |
  e'' dis'' e'' <b'-3_\2> <d''-1> <c''-4> | %1
  <a'-1>8 r16 <c'-2_\4>\pIX <e'-1> <a'-3> | %2
  <b'-4>8 r16 <e'-1>\bpIX <gis'-1> <b'-4> | %3
  <c''-4>8 r16 <e'-1_\3> <e''-4>\pX <dis''-2> | %4
  e'' dis'' e'' <b'-3> <d''-1> <c''-4> | %5
  <a'-1>8 r16 <c'-2>\pIX <e'-1> <a'-3>\pX | %6
  <b'-4>8 r16 <e'-1> <c''-4>\pX <b'-3> %7
 }
 \alternative { 
  { <a'-1>4 }
  { <a'-1>8 \bar "" r16 <b'-3_\2>
    \set Timing.measurePosition = #(ly:make-moment -1/8)
    <c''-4>16 <d''-1_\1> } %8
 }

 \repeat volta 2 {
  <e''-3>8. <g'-2_\3>16[ <f''-4> <e''-3>] | %9
  <d''-1>8. <f'-2>16[ <e''-4> <d''-3>] | %10
  <c''-1>8. <e'-3>16[ <d''-4> <c''-2>] | %11
  <b'-1>8 r16 <e'-1_\3>[ <e''-4>] r | %12
  r16 e''[ \headHarmonic e''' ] r r \headRevert dis'' | %13
  e''8 r16 <dis''-2>\pX e'' dis'' | %14
  e''16 dis'' e'' b' d'' c'' | %15
  a'8 r16 c'\pIX e' a' | %16
  b'8 r16 e'\bpIX gis' b' | %17
  c''8 r16 e' e''\pX dis'' | %18
  e'' dis'' e'' b' d'' c'' | %19
  a'8 r16 c'\pIX e' a' | %20
  b'8 r16 e' c''\pX b'  %21
 } 
 \alternative { 
  { a'8 r16 b'[ c'' d''] } %22
  { a'8 r16 <e-2 c'-1>\pI[ <f c'> <e g c'>] } %23
 }
 
 \transpose c' c {
  \grace { <f'-3>16[ <a'-2>] } <c''-1>4 <f''-2>16.\pV <e''-1>32 | %24
  e''8([ <d''-3>]) <bes''-2>16. <a''-1>32 | %25
  a''16( <g''-4> <f''-2> <e''-1> <d''-3> <c''-1>) | %26
  <bes'-4>8\ppV[ <a'-3>] \appoggiatura bes'32 a'32[ g' a' bes'] | %27
  <c''-1>4 <d''-1_\3>16\pVII[ <dis''-2>] | %28
  <e''-3>8. e''16[ <f''-4> <a'-1>] | %29
  \rhUp
  <c''-4>4 <d''-1>16. <b'-3>32 | %30
  % original tempo (with 32nds in upper part)
  <c''-4>32[ <g''-2> <g'-4> g''] <a'-1>[ g'' <b'-3> g''] <c''-4>[ g'' <d''-1> g''] | %31
  <e''-3>32[ <g''-2> <c'''-2> <b''-1>] <a''-4>[ <g''-2> <f''-4> <e''-3>] <d''-1>[ <g''-2> <f''-4> <d''-1>] %32
  <c''\P>32[ <g''\M> <g'\P> <g''\M>] <a'\P>[ <g''\M> <b'\P> <g''\M>] <c''\P>[ <g''\M> <d''\P> <g''\M>] | %33
  <e''\P>32[ <g''\I> <c'''\M> <b''\I>] <a''\M>[ <g''\I> <f''\M> <e''\I>] <d''\M>[ <g''\I> <f''\M> <d''\I>] | %34
  <e''-3\M>32[ <f''-4\I> <e''-3\M> <dis''-1\I>\pVIII] <e''-3\M>[ <b'-2\I> <e''\M> <dis''\I>] <e''\M>[ <b'\I> <e''\M> <dis''\I>] | %35
  % half tempo (with 16ths in upper part)
  %<c''-4>16[ <g''-2> <g'-4> g''] <a'-1>[ g'' <b'-3> g''] <c''-4>[ g'' <d''-1> g''] | %31
  %<e''-3>16[ <g''-2> <c'''-2> <b''-1>] <a''-4>[ <g''-2> <f''-4> <e''-3>] <d''-1>[ <g''-2> <f''-4> <d''-1>] %32
  %<c''\P>16[ <g''\M> <g'\P> <g''\M>] <a'\P>[ <g''\M> <b'\P> <g''\M>] <c''\P>[ <g''\M> <d''\P> <g''\M>] | %33
  %<e''\P>16[ <g''\I> <c'''\M> <b''\I>] <a''\M>[ <g''\I> <f''\M> <e''\I>] <d''\M>[ <g''\I> <f''\M> <d''\I>] | %34
  %<e''-3\M>16[ <f''-4\I> <e''-3\M> <dis''-1\I>\pVIII] <e''-3\M>[ <b'-2\I> <e''\M> <dis''\I>] <e''\M>[ <b'\I> <e''\M> <dis''\I>] | %35
  <e''\M>8.
 }

 <b'-3_\2\I>16\pX[ <e''-4\M> <dis''-2\I>] | %36
 <e''-4\M>8. b'16([ e''^"(1)"]) dis''( | %37
 e''16^"(2)") dis''([ e''^"(3)"]) dis''([ e''^"(4)"]) dis''( | %38
 e''16^"(5)") dis'' e''^"(6)" b' d'' c'' | %39
 a'8 r16 c' e' a' | %40
 b'8 r16 e' gis' b' | %41
 c''8 r16 e' e'' dis'' | %42
 e''16 dis'' e'' b' d'' c'' | %43
 a'8 r16 c' e' a' | %44
 b'8 r16 e' c'' b' | %45
 a'8 r16 b'16 c'' d'' | %46
 e''8. g'16[ f'' e''] | %47
 d''8. f'16[ e'' d''] | %48
 c''8. e'16[ d'' c''] | %49
 b'8 r16 e'[ e''] r | %50
 r16 e''[ \headHarmonic e''' ] r r \headRevert dis''( | %51
 e''16) r r dis''[ e'' dis''] | %52
 e''16 dis'' e'' b' d'' c'' | %53
 a'8 r16 c' e' a' | %54
 b'8 r16 e' gis' b' | %55
 c''8 r16 e' e'' dis'' | %56
 e''16 dis'' e'' b' d'' c'' | %57
 a'8 r16 c' e' a' | %58
 b'8 r16 e' c'' b' | %59

 a'8 r r | %60
 %jjo lower notes of chords moved to lower voice (61-64, 69)
 \fingerLeft
 <g'-4 bes'-3 cis''-1>4.\pIX | %61
 <f'-2 a'-3 d''-1>4\bpX <cis''-3 e''-1>16\pXII[ <d''-3 f''-1>\pXIII] | %62
 <d'' f''>4 <d'' f''>8 | %63
 <c''!-2 e''-1>4.\pXII | %64
 <f'-3 d''-4>4\pVIII <e'-2 c''-1>16[ <d'-3 b'-4>\pV] | %65
 <c'-1 fis'-4 a'-1>4\bpV <c' a'>8 | %66
 <c' a'>8[ <e' c''-4> <d'-3 b'-4>] | %67
 %jjo reinforce low A from lower voice
 <a,-0 c' a'>4. | %68
 <g'-4 bes'-3 cis''-1>4.\pIX | %69
 <f'-2 a'-3 d''-1>4\bpX <cis''-3 e''-1>16\pXII[ <d''-3 f''-1>] | %70
 <d'' f''>4\pXIII <d'' f''>8 | %71
 <d'' f''>4. | %72
 <g'-2_\3 ees''-1>4\pXI <f'-3 d''-4>16\pVIII[ <ees'-3 c''-4>\pVI] | %73
 <d'-3 f'-1 bes'-1>4\bpVI <d' f'-2 a'-1>8\pV | %74
 <d' f' gis'-1>4\pIV <d' f' gis'>8 | %75
 <c'-1 e'!-1 a'-1>4\bpV r8 | %76
 <gis-2 e' b'-4>8 r r | %77
 \tupletSpan 8

 a,8 r <a c' e'>        %78
 \fingerUp
 \tuplet 3/2 { <a-1>16\pVII[ <c'-4> <e'-3>] <a'-3>\pXII[ <c''-2> <e''-1>] <d''-4>[ <c''-2> <b'-1>] }            %79
 <a' c'' e''>8 r r %80
 \tuplet 3/2 {<bes''-4>16[ <a''-4> <gis''-4>] <g''-4>\pXII [ <fis''-3> <f''-2>] <e''-1>[ <dis''-4>\pVIII <d''-3>] }            %81
 \transpose c' c {
 \tuplet 3/2 { <cis'''-2>16[ <c'''-1> <b''-5_\2>] <bes''-4>[ <a''-3> <gis''-2>] <g''-1>[ <fis''-4_\3> <f''-3>] }           %82

 <e''-2>16 <dis''-1> <e''-4>\pVII <b'-3_\4> <d''-1> <c''-4> | %83
 \rhDown
 <a'-1>8 r16 <c'-2\I>\bpVII <e'-1\M> <a'-1\I> | %84
 <b'-3\M>8\ppVII r16 <e'-1\I> <gis'-4\M>\pVIII <b'-2\I> | %85
 <c''-3\M>8 r16 <e'-1\I>\pVII <e''-4\M> <dis''-2\I> | %86
 <e''-4\M> <dis''-2\I> <e''-4\M> <b'-3\I> <d''-1\M> <c''-4\I> | %87
 <a'-1\M>8 r16 <c'-2\I>\bpVII <e'-1\M> <a'-1\I> | %88
 <b'-3\M>8\ppVII r16 <e'-1\I> <c''-4\M> <b'-3\I> | %89
 <a'-1\M>8 r16 <b'-3\I>16 <c''-4\M> <d''-1\I> | %90
 <e''-2\M>8.\pVIII <g'-3\I>16[ <f''-4\M> <e''-2\I>] | %91
 <d''-1\M>8.\pVII <f'-2\I>16[ <e''-3\M> <d''-1\I>] | %92
 <c''-4\M>8. <e'-1\I>16\bpVII[ <d''-1\M> <c''-4\I>] | %93
 <b'-3\M>8 
 }
 r16 e'[ e''] r | %94
 r16 e''[ \headHarmonic e''' ] r r \headRevert dis''( | %95
 e'') r r dis''[ e'' dis''] | %96
 e'' dis'' e'' b' d'' c'' | %97
 a'8 r16 c' e' a' | %98
 b'8 r16 e' gis' b' | %99
 c''8 r16 e' e'' dis'' | %100
 e'' dis'' e'' b' d'' c'' | %101
 a'8 r16 c' e' a' | %102
 b'8 r16 e' c'' b' | %103
 <a' c'>8 r s \bar "|." \pageBreak %104


 \set Score.currentBarNumber = #78
 \tupletSpan 8
 \fingerLeft
 \tuplet 3/2 { <a,-0>16(^"Variation 1 (use air frets)" [ <c-4>) <e-2>] <a-3>[ <c'-1> <e'-0>] <d'-4>[ <c'-1> <b-0>] } | %78
 <a,-0>8 r a, | %79
 \fingerUp
 \tuplet 3/2 { <a'-3>16\pXII[ <c''-2> <e''-1>] 
 \ottava #1 \set Staff.ottavation = \markup 8va
 <a''-1>[ \headHarmonic <c'''-1> <e'''-1>] <d'''-1>[ <c'''-1> \headRevert <b''-1>] } | %80
 \tuplet 3/2 {<bes''-4>16[ <a''-4> <gis''-4>] <g''-4>\pXII [ <fis''-3> <f''-2>] <e''-1>[ <dis''-4>\pVIII <d''-3>] } \ottava #0 %81
 
 \set Score.currentBarNumber = #78
 \tupletSpan 8
 \fingerLeft
 \tuplet 3/2 { <a,-0>16(^"Variation 2 (use octave harmonics)" [ <c-4>) <e-2>] <a-3>[ <c'-1> <e'-0>] <d'-4>[ <c'-1> <b-0>] } | %78
 <a,-0>8 r a, | %79
 \fingerUp
 \tuplet 3/2 { <a'-3>16\pXII[ <c''-2> <e''-1>] 
 \ottava #1 \set Staff.ottavation = \markup 8va
 \headHarmonic a''[ c''' e'''] <d'''-4>[ <c'''-2> <b''-1>] \headRevert \ottava #0 } | %80
 r8 r \tuplet 3/2 { r16[ <dis''-4>\pVIII <d''-3>] } %81

 \set Score.currentBarNumber = #78
 \tupletSpan 8
 <a,-0>8^"Variation 3 (fit under ceiling)" r <a c' e'>        %78
 \fingerUp
 \tuplet 3/2 { <a-1>16\pVII[ <c'-4> <e'-3>] <a'-3>\pXII[ <c''-2> <e''-1>] <d''-4>[ <c''-2> <b'-1>] } %79
 <a'c'' e''>8 r a, | %80
 \ottava #1 \set Staff.ottavation = \markup 8va
 \tuplet 3/2 {<bes''-4>16[ <a''-4> <gis''-4>] <g''-4>\pXII [ <fis''-3> <f''-2>] <e''-1>[ <dis''-4>\pVIII <d''-3>] } %81
 \ottava #0

 \set Score.currentBarNumber = #78
 \tupletSpan 8
 a,8^"Variation 4 (replicate pattern for continuity)" r <a c' e'>        %78
 \fingerUp
 \tuplet 3/2 { a16[ c' e'] a[ c' e'] d'[ c' b] }            %79
 <a c' e'>8 r <a c' e'>  %80
 \ottava #1 \set Staff.ottavation = \markup 8va
 \tuplet 3/2 {<bes''-4>16[ <a''-4> <gis''-4>] <g''-4>\pXII [ <fis''-3> <f''-2>] <e''-1>[ <dis''-4>\pVIII <d''-3>] } %81
 \ottava #0

}

 \new Staff = "down" \with { instrumentName = #"Guitar II " } {
 \clef treble
 \key a \minor
 \time 3/8
 \set Score.markFormatter = #format-mark-box-alphabet
 \mark \default
   
 \repeat volta 2 {
  \partial 8 r8\pp | R4. | %1
  <a,-0>16\pI <e-2> <a-3> r16 r8 | %2
  <e,-0>16 <e-2> <gis-1> r r8 | %3
  a,16 e a r r8 | R4. | %4,5
  a,16 e a r r8 | %6
  e,16 e gis r r8  | %7
 }
 \alternative {
  { a,16 e a r }
  { a,16[ e \bar "" a16] r
    \set Timing.measurePosition = #(ly:make-moment -1/8) r8 } %8
  }

 \mark \default
 \repeat volta 2 {
  <c-1>16\pIII <g-3> <c'-4> r r8 | %9
  <g,-1>16 <g-3> <b-2> r r8 | %10
  a,16\pI e a r r8 | %11
  e,16 e e' r r e[ | %12
  e'16] r r dis'[ e'] r | %13
  r16 dis'[ e'] r r8 | R4. | %14,15
  a,16 e a r16 r8 | %16
  e,16 e gis r r8 | %17
  a,16 e a r r8 | R4. | %18,19
  a,16 e a r r8 | %20
  e,16 e gis r r8 | %21
 }
 \alternative {
  { a,16 e a r r8 } %22
  %old { <a,-0>16[ <e-2> <a-3>] <bes,-1>[ <a,-0> <g,-4>] } %23
  { <a,-0>16[ <e-2> <a-3>] <bes-4>[ <a-3> <g-0>] } %23
 }

 %old \mark \default
 %old \fingerLeft
 %old \transpose c' c {
  %old <f-1>16\ppI <a-0> <c'-4> a c' a | %24
  %old <f-1> <bes-2> <d'-0> bes d' bes | %25
  %old <f-1>\bpI <e'-2> <f-1 bes-1> e' <f bes> e' | %26
  %old <f-1>16 <a-0> <c'-4> a c' a | %27
  %old f a c' a c' a | %28
  %old <e-0> <a-0> <c'-3> <a-0> <d'-0> <f-1> | %29
  %old <g-3> <e'-2> g e' g <f'-4> | %30
%old  
  %old \mark \default
  %old <c'-3 e'-2>8 r16 <f'-1 g'-0>\pIII[ <e'-1 g'>\pII <d'-4 f'-1 g'>\pIII] | %31
  %old <c'-2 e'-1 g'-0>8\pII \transpose c c' { <f-2 a-1>8[ <g-2 b-1>\pIV] } | %32
  %old <c'-1 c''-4>8\pIII r16 <f' g'>[ <e' g'>\pII <d' f' g'>\pIII] | %33
  %old <c' e' g'>8\pII \transpose c c' { <f a>8[ <g b>\pIV] | %34
  %old <gis-3 b>8 } r r | R4. | %35,36
 %old }
 %old \fingerUp

 \mark \default
 \fingerLeft
 \rhDown
 <f-3\P>16\ppI <a-2\I> <c'-1\M> <a\I> <c'\M> <a\I> | %24
 <f-3\P>\pII <bes-2\I> <d'-4\M> <bes\I> <d'\M> <bes\I> | %25
 <f-3\P> <e-1\I> <bes-2\M> <e\P> <bes\M> <e\P> | %26
 \transpose c' c {
  <f'-2\I>16 <a-0\P> <c'-1\I> <a\P> <c'\I> <a\P> | %27
  f' a c' a c' a | %28
  <e'-1\I> <a-0\P> <c'-2\I> <a-0\P> <d'-0\I> <f-1\P>\pI | %29
  <g-3\P> <e'-1\I>\pII <g\P> <e'\I> <g\P> <f'-4\I> | %30
 
  \mark \default
  % original tempo (with 32nds in upper part)
  <c'-2 e'-1>8 r16 <f'-2 g'-0>[ <e'-1 g'> <d'-4 f'-2 g'>] | %31
  <c'-2 e'-1 g'-0>8\pII \transpose c c' { <f-2 a-1>8[ <g-3 b-2>\pIII] } | %32
  <c'-1 c''-4>8 r16 <f' g'>\pII[ <e' g'> <d' f' g'>] | %33
  <c' e' g'>8 \transpose c c' { <f a>8[ <g b>\pIII] | %34
  <gis-4 b>8 } r r | R4. | %35,36
  % half tempo (with 16ths in upper part)
  %<c'-3 e'-2>4 r8 <f'-1 g'-0>\pIII[ <e'-1 g'>\pII <d'-4 f'-1 g'>\pIII] | %31
  %<c'-2 e'-1 g'-0>4\pII \transpose c c' { <f-2 a-1>8~ <f a>8 <g-2 b-1>4\pIV } | %32
  %<c'-1 c''-4>4\pIII r8 <f' g'>[ <e' g'>\pII <d' f' g'>\pIII] | %33
  %<c' e' g'>4\pII \transpose c c' { <f a>8~ <f a>8 <g b>4\pIV | %34
  %<gis-3 b>4 } r8 R4. | R4. | %35,36
 }
 \fingerUp

 \mark \default
 R4. R4. R4. | %37,38,39
 a,16 e a r16 r8 | %40
 e,16 e gis r r8 | %41
 a,16 e a r r8 | R4. | %42,43
 a,16 e a r r8 | %44
 e,16 e gis r r8 | %45
 a,16 e a r r8 | %46
 c16\pIII g c' r r8 | %47
 g,16 g b r r8 | %48
 a,16\pI e a r r8 | %49
 e,16 e e' r r e([ | %50
 e']) r r dis'([ e']) r | %51
 r dis'([ e']) r r8 | R4. | %52,53
 a,16 e a r16 r8 | %54
 e,16 e gis r r8 | %55
 a,16 e a r r8 R4. | %56,57
 a,16 e a r r8 | %58
 e,16 e gis r r8 | %59

 \mark \default
 a,16 a, a, a, a, a, | %60
 << {
  e'4. | f' | gis'4 gis'8 | a'4. | %61,62,63,64 (moved here from other part)
 } \\ {
 a,16 a, a, a, a, a, | %61
 a,16 a, a, a, a, a, | %62
 a,16 a, a, a, a, a, | %63
 a,16 a, a, a, a, a, | %64
 } >>
 <d a,>16 <d a,> <d a,> <d a,> <d a,> <d a,> | %65
 <dis a,>16 <dis a,> <dis a,> <dis a,> <dis a,> <dis a,> | %66
 <e a,>16 <e a,> <e a,> <e a,> <e gis,> <e gis,> | %67
 <a,>16 a, a, a, a, a, | %68
 << {
  e'4. | f' | %69,70 (moved here from other part)
 } \\ {
  a,16 a, a, a, a, a, | %69
  a,16 a, a, a, a, a, | %70
 } >>
 a,16 a, a, a, a, a, | %71
 bes,16 bes, bes, bes, bes, bes, | %72
 bes,16 bes, bes, bes, bes, bes, | %73
 bes,16 bes, bes, bes, bes, bes, | %74
 \fingerLeft
 <b,!-1>16\pII b, b, b, b, b, | %75
 <c-2 e-1>4 r8 | <b,-1 gis,-3>8 r r | %76,77

 \mark \default
 \tupletSpan 8
 \tuplet 3/2 { <a,-0>16\pI [ <c-4> <e-2>] <a-3>[ <c'-1> <e'-0>] <d'-4>[ <c'-1> <b-0>] } | %78
 <a c' e'>8 r <a' c'' e''>\pXII        %79
 \fingerUp
 \tuplet 3/2 { <a'-3>16[ <c''-2> <e''-1>] a'[ c'' e''] <d''-4>[ <c''-2> <b'-1>] } | %80
 \tuplet 3/2 { <bes'-3>16\pIX[ <a'-2> <gis'-1>] <g'-4_\3> [ <fis'-3> <f'-2>] } <e'-1>8 | %81
 R4. | R4. | %82,83

 \mark \default
 a,16 e a r r8 | %84
 e,16 e gis r r8 | %85
 a,16 e a r r8 | R4. | %86,87
 a,16 e a r r8 | %88
 e,16 e gis r r8 | %89
 a,16 e a r r8 | %90
 c16 g c' r r8 | %91
 g,16 g b r r8 | %92
 a,16 e a r r8  | %93

 \mark \default
 e,16 e( e') r r e([ | %94
 e'16]) r r dis'([ e']) r | %95
 r16 dis'([ e']) r r8 | R4. | %96,97
 a,16 e a r16 r8 | %98
 e,16 e gis r r8 | %99
 a,16 e a r r8 | R4. | %100,101
 a,16  e a r r8 | %102
 e,16  e gis r r8 | %103
 <a, e>8 r s \bar  "|." %104

 \tupletSpan 8
 a,8 r a,        %78
 \fingerUp
 \tuplet 3/2 { <a-1>16\pVII[ <c'-4> <e'-3>] <a'-3>\pXII[ <c''-2> <e''-1>] <d''-4>[ <c''-2> <b'-1>] } %79
 a,8 r a,        %80
 a,8 r4        %81

 \tupletSpan 8
 a,8 r a,        %78
 \fingerUp
 \tuplet 3/2 { <a-1>16\pVII[ <c'-4> <e'-3>] <a'-3>\pXII[ <c''-2> <e''-1>] <d''-4>[ <c''-2> <b'-1>] } %79
 a,8 r a,        %80
 \ottava #1 \set Staff.ottavation = \markup 8va
 \tuplet 3/2 {<bes''-4>16[ <a''-4> <gis''-4>] <g''-4>\pXII [ <fis''-3> <f''-2>] <e''-1>[ r r ] } %81
 \ottava #0

 \fingerLeft
 \tupletSpan 8
 \tuplet 3/2 { <a,-0>16(\pI [ <c-4>) <e-2>] <a-3>[ <c'-1> <e'-0>] <d'-4>[ <c'-1> <b-0>] } | %78
 <a c' e'>8 r <a' c'' e''> | %79
 \fingerUp
 \tuplet 3/2 { <a'-3>16\pXII[ <c''-2> <e''-1>] a'[ c'' e''] <d''-4>[ <c''-2> <b'-1>] } | %80
 a,8 r4 | %81

 \fingerLeft
 \tupletSpan 8
 \tuplet 3/2 { <a,-4>16 [ <c-2> <e-1>] a,[ c e] <d-4>[ <c-2> <b,-1>] } | %78
 <a,-0>8 r a, | %79
 \fingerUp
 \tuplet 3/2 { <a'-3>16\pXII[ <c''-2> <e''-1>] a'[ c'' e''] <d''-4>[ <c''-2> <b'-1>] } | %80
 \tuplet 3/2 { <bes'-3>16\pIX[ <a'-2> <gis'-1>] <g'-4_\3> [ <fis'-3> <f'-2>] } <e'-1>8 | %81

}
>>

 \layout { }

 \midi {
  \transposition c %jjo guitar plays octave lower than written
 }

}
