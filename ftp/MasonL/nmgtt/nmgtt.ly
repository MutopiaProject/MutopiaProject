\version "2.10.25"

\header {
  title = "Nearer My God to Thee"
  mutopiatitle = "Nearer My God to Thee"
  composer = "Lowell Mason (1792-1872)"
  mutopiacomposer = "MasonL"
  mutopiainstrument = "Voice (SATB)"
  date = "1856"
  source = "Cleveland: S. Brainard's Sons, 1883. Plate 15707-5"
  style = "Hymn"
  enteredby = "Ross Uber"
  maintainer = "Ross Uber"
  maintainerEmail = "ross@uber.name"
  copyright = "Public Domain"
 footer = "Mutopia-2007/09/11-1034"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

global= {
       \time 4/4
       \key g \major
     }
     
     Soprano = \new Voice { \relative c''{
       \set Staff.instrumentName = "Soprano "

       b2 a4. g8 g4. e8 e2 d g4 b a2. r4 b2 a4. g8 g4. e8 e2 d4 g fis a g2. r4 d'2 e4. d8 d4 b d2 d e4. d8 d4 b a2 b a4. g8 g4. e8 e2 d4 g fis a g1

     \bar "|." }}

     Alto = \new Voice { \relative c'{
       \set Staff.instrumentName = "Alto "

       <b d g>2 <c d fis>4. <b e>8 <g c e>4. <g c>8 <g c>2 <g b>2 <g d'>4 <d' g> <d fis>2. r4 <b d g>2 <c d fis>4. <b e>8 <g c e>4. <g c>8 <g c>2 <g b>4 <b d> <a d> <c d> <b d>2. r4 <d g>2 <e g>4. <d g>8 <d g>4 <b g'> <d g>2 <d g b> <e g c>4. <d g b>8 <d a>4 <d g> <d fis>2 <b d g> <c d fis>4. <b e>8 <g c e>4. <g c>8 <g c>2 <g b>4 <b d> <a d> <c d fis> <b d>1

     \bar "|." }}

     Tenor = \new Voice { \relative c{
       \set Staff.instrumentName = "Tenor "
       \clef bass

       <d g>2 d4. e8 c4. c8 c2 g b4 g d'2. r4 <d g>2 d4. e8 c4. c8 c2 d4 d d d <d g>2. r4 b'2 c4. b8 b4 g b2 g g4. g8 fis4 g d8 c a d <d g>2 d4. e8 c4. c8 c2 d4 d d d <d g>1

     \bar "|." }}

     Bass = \new Voice { \relative c{
       \set Staff.instrumentName = "Bass "
       \clef bass

       g2 d4. e8 c4. c8 c2 g b4 g d'2. r4 g2 d4. e8 c4. c8 c2 d4 d d d g2. r4 g'2 g4. g8 g4 g g2 g, c4. g8 fis4 g d'8 c a d g,2 d4. e8 c4. c8 c2 d4 d d d g1

     \bar "|." }}

     \score {
        \new StaffGroup <<
           \new Staff << \global \Soprano >>
           \new Staff << \global \Alto >>
           \new Staff << \global \Tenor >>
           \new Staff << \global \Bass >>
        >>
     \layout {
        \context {
          \Score
          \override SpacingSpanner #'spacing-increment = #3
        }
      }
        \midi { }
     }
