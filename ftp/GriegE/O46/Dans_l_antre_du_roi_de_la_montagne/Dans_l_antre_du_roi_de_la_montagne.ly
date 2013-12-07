\version "2.16.1"

\header {
  title = "In the Hall of the Mountain King"
  subtitle = "In der Halle des Bergkönigs"
  subsubtitle = "(From “Peer Gynt” Suite I)"
  instrument = "Piano"
  composer = "Edvard Grieg"
  arranger = "Edvard Grieg"
  opus = "op. 46, no. 4"
  mutopiacomposer = "GriegE"
  mutopiaopus = "Op. 46, No. 4"
  mutopiainstrument = "Piano"
  date= "1874"
  source = "The University Society, 1918"
  style = "Classical"
  copyright = "Public Domain"
  maintainer = "Coyau"
  moreInfo = "scan: http://imslp.org/wiki/Special:ReverseLookup/581"
  %tagline = ##f

 footer = "Mutopia-2013/12/07-1888"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \abs-fontsize #10 \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 MutopiaProject \abs-fontsize #8 .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \abs-fontsize #10 \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 LilyPond \abs-fontsize #8 .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \abs-fontsize #8 \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

global = {
  \key b \minor
  \time 4/4
  \tempo "Alla marcia molto marcato" 4=138
}

rightOne = \relative c'' {
  \global
  \clef bass
  \stemNeutral
  <fis,, fis'>1\p\fermata->
  b,,8-.\pp cis-._\markup {\italic {e sempre staccato}} d-. e-. fis-.-> d-. fis4-.
  eis8-.-> cis-. eis4-. e8-.-> c-. e4-.
  b8-. cis-. d-. e-. fis-.-> d-. fis-. b-.
  a-. fis-. d-. fis-. a2->
  \break
  b8-. cis-. d-. e-. fis-.-> d-. fis4-.
  eis8-.-> cis-. eis4-. e8-.-> c-. e4-.
  b8-. cis-. d-. e-. fis-.-> d-. fis-. b-.
  a-. fis-. d-. fis-. <a, a'>2->
  \break
  fis8-. gis-. ais-. b-. cis-.-> ais-. cis4-.
  d8-.-> ais-. d4-. cis8-.-> ais-. cis4-.
  fis,8-. gis-. ais-. b-. cis-.-> ais-. cis4-.
  d8-.-> ais-. d4-. cis2->
  \break
  fis8-. gis-. ais-. b-. cis-.-> ais-. cis4-.
  d8-.-> ais-. d4-. cis8-.-> ais-. cis4-.
  fis,8-. gis-. ais-. b-. cis-.-> ais-. cis4-.
  d8-.-> ais-. d4-. <cis, cis'>2->
  \break
  b,8\pp-. cis-. d-. e-. fis-.-> d-. fis4-.
  eis8-.-> cis-. eis4-. e8-.-> c-. e4-.
  b8-. cis-. d-. e-. fis-.-> d-. fis-. b-.
  a-. fis-. d-. fis-. a2->
  \pageBreak
  b8-. cis-. d-. e-. fis-.-> d-. fis4-.
  eis8-.-> cis-. eis4-. e8-.-> c-. e4-.
  b8-. cis-. d-. e-. fis-.-> d-. fis-. b-.
  a-. fis-. d-. fis-. <a, a'>2->
  \break
  \clef treble
  b'8-. cis-. <fis, d'>-. e'-. fis-.-> d-. <fis, fis'>4-.
  eis'8-.-> cis-. <eis, eis'>4-. e'8-.->  c-. <e, e'>4-.
  b'8-. cis-. <fis, d'>-. e'-. fis-. d-. fis-. b-.
  a8-. fis-. <a, d>-. fis'-. a2->
  \break
  \stemUp
  b8-. cis-. d-. e-. fis-.-> d-. fis4-.
  eis8-.-> cis-. eis4-. e8-.-> c-. e4-.
  b8-. cis-. d-. e-. fis-. d-. fis-. b-.
  a-. fis-. d-. fis-. a2->
  \break
  fis,8-.\cresc gis-. ais-. b-. cis-.-> ais-. cis4
  d8-.-> ais-. d4 cis8-.-> ais-. cis4
  fis,8-. gis-. ais-. b-. cis-.-> ais-. cis4
  d8-.-> ais-. d4 cis2->
  \break
  \stemNeutral
  fis8-. gis-. <fis ais>-. b-. cis-.-> ais-. <fis ais cis>4-.
  d'8-.-> ais-. < fis ais d>4-. cis'8-.-> ais-. <fis ais cis>4-.
  fis8-. gis-. <fis ais>-. b-. cis-.-> ais-. <fis ais cis>4-.
  d'8-.-> ais-. <fis ais d>4-. \stemUp cis'2
  \pageBreak
  \stemNeutral
  b,,8-.\mf cis-.\cresc <fis, d'>-. e'-. fis-.-> d-. <fis, fis'>4-.
  eis'8-.-> cis-. <fis, eis'>4-. e'8-.-> c-. <fis, eis'>4-.
  b8-. cis-. <fis, d'>-. e'-. fis-. d-. <b fis'>-. b'-.
  \break
  a-. fis-. <a, e'>-. fis'-. \stemUp a2->
  b8-. cis-. d-. e-. fis-.-> d-. fis4
  eis8-.-> cis-. eis4-. e8-. c-. e4
  \break
  b8-. cis-. d-. e-. fis-. d-. fis-. b-.
  fis-. d-. fis-. b-. b,2->
  \tempo "Più vivo" 4=154
  \ottava #1
  b'8-.->\ff cis-. d-. e-. fis-> d-. fis4-.
  eis8-.-> cis-. eis4-. e8-.-> c-. e4-.
  \break
  b8-. cis-. d-. e-. fis-. d-. fis-. b-.
  a-. fis-. d-. fis-. a2->
  b,8-> cis-. d-. e-. fis-> d-. fis4-.
  eis8-> cis-. eis4-. e8-> c-. e4-.
  \break
  b8-. cis-. d-. e-. fis-. d-. fis-. b-.
  a-. fis-. d-. fis-. a2->
  fis8-._\markup {\italic { sempre stretto sin al fine } } gis-. ais-. b-. cis-> ais-. cis4->
  <d, fis d'>8-> ais'-. <d, fis d'>4->
  \stemNeutral
  <cis fis cis'>8-> ais'-. <cis, fis cis'>4->
  \break
  \stemNeutral
  fis8-. <fis g>-. <fis ais>-. <fis b>-. <cis fis cis'>8-> <cis fis ais>-. <cis fis cis'>4->
  <d fis d'>8-> <d fis ais>-. <d fis d'>4-> <cis fis cis'>2->
  \stemUp
  fis8-. gis-. ais-. b-. cis-> ais-. cis4->
  \stemNeutral
  <dis, fis dis'>8 ais'-. <dis, fis dis'>4-> <cis fis cis'>8-> ais'-. <cis, fis cis'>4->
  \pageBreak
  fis8-. <fis g>-. <fis ais>-. <fis b>-. <cis fis cis'>8-> <cis fis ais>-. <cis fis cis'>4->
  <d fis d'>8-> <d fis ais>-. <d fis d'>4-> <cis fis cis'>2->
  \stemUp
  b8-. cis-. d-. e-. fis-> d-. fis4->
  eis8-> cis-. eis4-. e8-> c-. e4-.
  \break
  b8-. cis-. d-. e-. fis-. b,-. fis'-. b-.
  a-. fis-. d-. fis-. a2->
  \stemNeutral
  b,8-. <b cis>-. <b d>-. <b e>-. <b fis'>-> <b d>-. <b d fis>4-.
  <b eis>8-> <b cis>-. <b cis eis>4-. <b e>8-> <b c>-. <b c e>4-.
  \break
  b8-. <b cis>-. <b d>-. <b e>-. <b fis'>-. <b d>-.  <b fis'>-. <b b'>-.
  <b fis'>-. <b d>-.  <b fis'>-. <b b'>-. b2->
  r4 \appoggiatura { gis'16[ a ais] } <d, b'>4-.\sfz r2
  r4 \appoggiatura { gis16[ a ais] } <d, b'>4\sfz-.\ottava #0 r2
  \break
  b,8-. cis-. d-. e-. fis-. d-. fis-. b-.
  ais-. fis-. ais-. cis-. b2->
  r4 \ottava #1 \appoggiatura { gis'16[ a ais] } <d, b'>4-.\sfz r2
  r4 \appoggiatura { gis16[ a ais] } <d, b'>4\sfz-. r2
  b8-. cis-. d-. e-. fis-. d-. fis-. b-.
  \break
  ais-. fis-. ais-. cis-. b2->
  r4 \appoggiatura { gis16[ a ais] } <d, b'>4-.\sfz r2
  r4 \appoggiatura { gis16[ a ais] } <d, b'>4\sfz-. r2
  r4 \appoggiatura { gis16[ a ais] } <d, b'>4\pp \appoggiatura { gis16[ a ais] } <d, b'>4 \appoggiatura { gis16[ a ais] } <d, b'>4
  \appoggiatura { gis16[ a ais] } <d, b'>4\cresc \appoggiatura { gis16[ a ais] } <d, b'>4 \appoggiatura { gis16[ a ais] } <d, b'>4 \appoggiatura { gis16[ a ais] } <d, b'>4 \ottava #0
  r1
  r1
  r4\ff \ottava #1 \appoggiatura { gis16[ a ais] } <d, b'>4\ottava#0 r2 \bar "|."
}

rightTwo = \relative c'' {
  \global
  \stemDown
  s1*28
  s2 r4 <a, d>4

  r4 fis' r fis
  r fis r fis
  r fis r2
  r4 a r <a d>

  r fis r < fis ais>
  r <fis ais> r <fis ais>
  r fis r <fis ais>
  r <fis ais> r <fis ais>

  s1*3
  s2 r4 <fis' ais>

  s1*3

  s2 r4 <a,, e'>
  r fis' r fis
  r fis r fis

  s2 r4 <b d>
  r <b d> s2
  b'2 b
  b b

  b b
  <a d> <a d>
  b b
  b b

  b b
  <a d> <a d>
  fis' <cis fis>4 <cis fis>
  s1

  s1*2
  fis2 <cis fis>4 < cis fis>
  s1

  s1*2
  b2 b
  b b

  b2 b
  <a d> <a d>
  s1*2

  s1*17
}

left = \relative c' {
  \global
  r1\fermata
  b,,,4-.\pp fis'-. b,-. fis'-.
  b,4-. fis'-. b,-. fis'-.
  b,4-. fis'-. b,-. fis'-.
  d4-. a'-. d,-. a'-.

  b,4-. fis'-. b,-. fis'-.
  b,4-. fis'-. b,-. fis'-.
  b,4-. fis'-. b,-. fis'-.
  d4-. a'-. d,-. a'-.

  fis cis' fis, cis'
  d, ais' fis cis'
  fis, cis' fis, cis'
  d, ais' fis cis'

  fis, cis' fis, cis'
  d, ais' fis cis'
  fis, cis' fis, cis'
  d, ais' fis cis'

  b,4-. fis'-. b,-. fis'-.
  b,4-. fis'-. b,-. fis'-.
  b,4-. fis'-. b,-. fis'-.
  d4-. a'-. d,-. a'-.

  b,4-. fis'-. b,-. fis'-.
  b,4-. fis'-. b,-. fis'-.
  b,4-.  b'-. a-. g-.
  fis4-. e-. cis-. b-.

  \set Staff.pedalSustainStyle = #'mixed
  b\sustainOn <fis'' d'>16(\sustainOff eis fis8) b,4-.\sustainOn <fis' d'>16( eis fis8)
  b,4-.\sustainOff\sustainOn <fis' cis'>16(\sustainOff eis fis8) b,4-.\sustainOn <fis' c'>16( eis fis8)
  b,4-.\sustainOff\sustainOn <fis' d'>16(\sustainOff eis fis8) b,4-.\sustainOn <fis' d'>16( eis fis8)
  d4-.\sustainOff\sustainOn <a' fis'>16(\sustainOff gis a8) d,4-.\sustainOn <a' fis'>16( gis a8)

  b,4-.\sustainOff\sustainOn <fis' d'>16(\sustainOff eis fis8) b,4-.\sustainOn <fis' d'>16( eis fis8)
  b,4-.\sustainOff\sustainOn < fis' cis'>16(\sustainOff eis fis8) b,4-.\sustainOn <fis' d'>16( eis fis8)
  b,4-.\sustainOff\sustainOn < fis' d'>16(\sustainOff eis fis8) b,4-.\sustainOn < fis' d'>16( eis fis8)
  d4-.\sustainOff\sustainOn <a' fis'>16(\sustainOff gis a8) d,4-.\sustainOn <a' fis'>16( gis a8)

  fis4-.\sustainOff\sustainOn <cis' ais'>16(\sustainOff bis cis8) fis,4-.\sustainOn <cis' ais'>16( bis cis8)
  d,4-.->\sustainOff\sustainOn <d' ais'>16(\sustainOff cis d8) fis,4-.\sustainOn <cis' ais'>16( bis cis8)
  fis,4-.\sustainOff\sustainOn <cis' ais'>16( bis cis8)  fis,4-.\sustainOn <cis' ais'>16( bis cis8)
  d,4-.->\sustainOff\sustainOn <d' ais'>16(\sustainOff cis d8) fis,4-.\sustainOn <cis' ais'>16( bis cis8)

  fis,4-.\sustainOff\sustainOn <cis' ais'>16(\sustainOff bis cis8) fis,4-.\sustainOn <cis' ais'>16( bis cis8)
  d,4-.->\sustainOff\sustainOn <d' ais'>16(\sustainOff cis d8) fis,4-.\sustainOn <cis' ais'>16( bis cis8)
  fis,4-.\sustainOff\sustainOn <cis' ais'>16( bis cis8)  fis,4-.\sustainOn <cis' ais'>16( bis cis8)
  d,4-.->\sustainOff\sustainOn <d' ais'>16(\sustainOff cis d8) fis,4-.\sustainOn <cis' ais'>16( bis cis8)

  \times 2/3 { b,8[\sustainOff\sustainOn eis fis } \times 2/3 { d' eis, fis] } \times 2/3 { b,8[\sustainOff\sustainOn eis fis } \times 2/3 { d' eis, fis] }
  \times 2/3 { b,8[\sustainOff\sustainOn eis fis } \times 2/3 { cis' eis, fis] } \times 2/3 { b,8[\sustainOff\sustainOn eis fis } \times 2/3 { c' eis, fis] }
  \times 2/3 { b,8[\sustainOff\sustainOn eis fis } \times 2/3 { d' eis, fis] } \times 2/3 { b,8[\sustainOff\sustainOn eis fis } \times 2/3 { d' eis, fis] }

  \times 2/3 { d8[\sustainOff\sustainOn gis a } \times 2/3 { fis' gis, a] } \times 2/3 { d,8[\sustainOff\sustainOn gis a } \times 2/3 { fis' gis, a] }
  \times 2/3 { b,8[\sustainOff\sustainOn eis fis } \times 2/3 { d' eis, fis] } \times 2/3 { b,8[\sustainOff\sustainOn eis fis } \times 2/3 { d' eis, fis] }
  \times 2/3 { b,8[\sustainOff\sustainOn eis fis } \times 2/3 { d' eis, fis] } \times 2/3 { b,8[\sustainOff\sustainOn eis fis } \times 2/3 { d' eis, fis] }

  \times 2/3 { b,8\sustainOff\sustainOn eis fis } <b b'>4-.\sustainOff <a b a'>-. <g b g'>-.
  <fis b fis'> <e b' e>-> <d b' d>-> <cis b' cis>->
  <b b'>8->\sustainOn a'-. g-. fis-. <b, b'>8->\sustainOff\sustainOn a'-. g-. fis-.
  <b, b'>8->\sustainOff\sustainOn a'-. g-. fis-. <b, b'>8->\sustainOff\sustainOn a'-. g-. fis-.

  <b, b'>8->\sustainOff\sustainOn a'-. g-. fis-. <b, b'>8->\sustainOff\sustainOn a'-. g-. fis-.
  <d d'>8->\sustainOff\sustainOn cis'-. b-. a-. <d, d'>8->\sustainOff\sustainOn cis'-. b-. a-.
  <b, b'>8->\sustainOff\sustainOn a'-. g-. fis-. <b, b'>8->\sustainOff\sustainOn a'-. g-. fis-.
  <b, b'>8->\sustainOff\sustainOn a'-. g-. fis-. <b, b'>8->\sustainOff\sustainOn a'-. g-. fis-.

  <b, b'>8->\sustainOff\sustainOn a'-. g-. fis-. <b, b'>8->\sustainOff\sustainOn a'-. g-. fis-.
  <b, b'>8->\sustainOff\sustainOn a'-. g-. fis-. <b, b'>8->\sustainOff\sustainOn a'-. g-. fis-.
  <fis fis'>8->\sustainOff\sustainOn e'-. d-. cis-. <fis, fis'>8->\sustainOff\sustainOn e'-. d-. cis-.
  <d, d'>8->\sustainOff\sustainOn cis'-. d-. e-. <fis, fis'>8->\sustainOff\sustainOn e'-. d-. cis-.

  <fis, fis'>8->\sustainOff\sustainOn e'-. d-. cis-. <fis, fis'>8->\sustainOff\sustainOn e'-. d-. cis-.
  <d, d'>8->\sustainOff\sustainOn cis'-. d-. e-. <fis, fis'>8->\sustainOff\sustainOn e'-. d-. cis-.
  <fis, fis'>8->\sustainOff\sustainOn eis'-. dis-. cis-. <fis, fis'>8->\sustainOff\sustainOn eis'-. dis-. cis-.
  <dis, dis'>8->\sustainOff\sustainOn cis'-. dis-. eis-. <fis, fis'>8->\sustainOff\sustainOn eis'-. dis-. cis-.

  <fis, fis'>8->\sustainOff\sustainOn eis'-. dis-. cis-. <fis, fis'>8->\sustainOff\sustainOn eis'-. dis-. cis-.
  <dis, dis'>8->\sustainOff\sustainOn cis'-. dis-. eis-. <fis, fis'>8->\sustainOff\sustainOn eis'-. dis-. cis-.
  <b, b'>8->\sustainOff\sustainOn a'-. g-. fis-. <b, b'>8->\sustainOff\sustainOn a'-. g-. fis-.
  <b, b'>8->\sustainOff\sustainOn a'-. g-. fis-. <b, b'>8->\sustainOff\sustainOn a'-. g-. fis-.

  <b, b'>8->\sustainOff\sustainOn a'-. g-. fis-. <b, b'>8->\sustainOff\sustainOn a'-. g-. fis-.
  <d d'>8->\sustainOff\sustainOn cis'-. a-. g-. <d d'>8->\sustainOff\sustainOn cis'-. a-. g-.
  <b, b'>8->\sustainOff\sustainOn a'-. g-. fis-. <b, b'>8->\sustainOff\sustainOn a'-. g-. fis-.
  <b, b'>8->\sustainOff\sustainOn a'-. g-. fis-. <b, b'>8->\sustainOff\sustainOn a'-. g-. fis-.

  <b, b'>8->\sustainOff\sustainOn a'-. g-. fis-. <b, b'>8->\sustainOff\sustainOn a'-. g-. fis-.
  <b, b'>8->\sustainOff\sustainOn a'-. g-. fis-. <b, b'>8->\sustainOff\sustainOn a'-. g-. fis-.
  <b b,>4->\sustainOff\sustainOn <d eis gis b>-.\sustainOff r2
  <b b,>4->\sustainOn <d eis gis b>-.\sustainOff r2

  <g, g'>4->\sustainOn <d' g b> <fis, fis'>->\sustainOff\sustainOn <d' fis b>
  <fis, fis,>->\sustainOff\sustainOn <cis' fis ais> <b b,>->\sustainOff\sustainOn <d fis b>
  <b b,>4->\sustainOff\sustainOn <d eis gis b>-.\sustainOff r2
  <b b,>4->\sustainOn <d eis gis b>-.\sustainOff r2
  <g g,>4->\sustainOn <d g b> <fis fis,>->\sustainOff\sustainOn <d fis b>

  <fis, fis,>->\sustainOff\sustainOn <cis' fis ais> <b b,>->\sustainOff\sustainOn <d fis b>
  <b b,>4->\sustainOff\sustainOn <d eis gis b>-.\sustainOff r2
  <b b,>4->\sustainOn <d eis gis b>-.\sustainOff r2
  <b b,>4->\sustainOn <d eis gis b>-.\sustainOff <d eis gis b>-. <d eis gis b>-.


  \set Staff.pedalSustainStyle = #'text
  <d eis gis b>-. <d eis gis b>-. <d eis gis b>-. <d eis gis b>-.
  r2 \repeat tremolo 4 {b,16\sustainOn b'}
  \repeat tremolo 4 {b,16\< b'} \repeat tremolo 4 {b,16 b'\!}
  <b, b,>4\ff <b' d fis b>-.\sustainOff r2
}

\score {
  \new PianoStaff \with {
    instrumentName = "Piano"
  } <<
    \new Staff = "right" \with {
      printPartCombineTexts = ##f
    } {
      \partcombine \rightOne \rightTwo
    }
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } { \clef bass \left }
  >>
  \layout { }
}

\include "articulate.ly"
\score {
  \unfoldRepeats \articulate
  \new PianoStaff \with {
    instrumentName = "Piano"
  } <<
    \new Staff = "right" \with {
      printPartCombineTexts = ##f
    } {
      \partcombine \rightOne \rightTwo
    }
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } { \clef bass \left }
  >>
  \midi { }
}
