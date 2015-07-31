\version "2.14.2"

\header {
  mutopiatitle = "Six Petites Pièces, No. 1"
  mutopiacomposer = "AguadoD"
  source = "Statens musikbibliotek - The Music Library of Sweden"
  title = "Six Petites Pièces, No. 1"
  composer = "Dionisio Aguado"
  instrument = "Guitar"
  opus = "Op. 4, No. 1"
  style = "Classical"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl at glx.com"
 footer = "Mutopia-2011/09/21-1783"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2011. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\layout {
  indent = 72\pt
  short-indent = 0\mm
}

%%%
%%% First part: MINUET
%%%
mUpperVoice = \relative c'' {
  \voiceOne
  \slurDown
  \repeat volta 2 {
    g~ g8  f16 e f e d c |
    c4 \grace { d16[ c b] } c8. e16 g,4 |
    g8. a16 b8[ c] d e |
    g4 g16( f ) e f  e4 |
    d8. c16 a'4 c,4 |
    b8. d16 g8[ g] fis f |
    f16( e ) c a g4 \grace { a16[ g fis g] } b8. a16 |
    g4 r r |
  }
  \repeat volta 2 {
    \times 2/3 { g'16([ a ) g] } \times 2/3 { f[ e d] } cis2 |
    d16[ d32( cis ) d16 e] f[ f32 e f16 g] a4 |
    \times 2/3 { f16([ g ) f] } \times 2/3 { e[ d c] } b2 |
    c16[ c32( b ) c16 d] e[ e32( d ) e16 f] g4 |
    c,8..[ e64 g] c4 < gis d b > |
    < a c, >2 < a ees c >4 |
    < g e >8[ \acciaccatura { a8 } <g e >16 <dis fis>16] < g e >8[ < e c >8] < d fis >8[ < b g >8] |
    < f b >4 < e c' > r |
  }
}
	      
mLowerVoice = \relative c {
  \voiceTwo
  \repeat volta 2 {
    c2 d4 |
    e2. |
    f4. e8 d[ c] |
    b2 c4 |
    fis2. |
    g4. g,8 a[ b] |
    c a d2 |
    g,4 r r |
  }
  \repeat volta 2 {
    r4 r8 bes a[ g] |
    f2 r4 |
    r4 r8 aes g[ f] |
    e2. |
    c'2 e4 |
    f2 fis4 |
    g2 g,4 |
    c2 r4 |
  }
}

%%%
%%% Second part: VALSE
%%%
vUpperVoice = \relative c' {
  \voiceOne
  \repeat volta 2 {
    g8 e' d |
    c8. b16 c8 |
    g8 <d' f> <c e> |
    <b d>8. <ais cis>16 <b d>8 |
    <e g> <dis fis> <d f> |
    e8.[ g16] c8 |
    g, <d' f> <c e> |
    <b d>4. |
  }
  \repeat volta 2 {
    cis4 e8 |
    <a, d>8.[ <a e'>16] <f' a,>8 |
    b,4 d8 |
    <c g>8.[ <g d'>16] <e' g,>8 |
    e a fis |
    <d g>8.[ <d f>16] <e c>8 |
    <a, d> f' <f, g b> |
    <e g c>4. |
  }
  \repeat volta 2 {
    <e' g>8 <e g>8 <e g>8 |
    <e c'>4 <e c'>8 |
    << { c'16. b32 a8 b } \\ { \shiftOn \stemDown f4 f8 } >> |
    <e c'>4 <e g>8  |
    g8 a <cis, e> |
    f8. g16 a8 |
    g8 <f d a> <e c a> |
    <d b>4 r8 |
  }
  <b d>8 <b d> <b d> |
  <c ees>8. d16 ees8 |
  fis8 fis fis |
  <b, d g>8. fis'16 g8 |
  <f b>8 <f b> <f b> |
  c'8. b16 c8 |
  d8 d e |
  f4\fermata s8 |
  <e, g>8 <e g> <e g> |
  <e c'>4 <e c'>8 |
  << { c'16. b32 a8 b } \\ { \shiftOn \stemDown f4 f8 } >> |
  <e c'>4 <e g>8 |
  bes'8 a e |
  g f d |
  c[ \grace { d16[ c b c] } e8. d16] |
  <c e,>4. |
  \bar "|."
}

vLowerVoice = \relative c {
  \voiceTwo
  \repeat volta 2 {
    r8 <g' c,> <f b,> |
    <<  { \stemDown c4. } \\ { g'8\rest <g e>8 <g e> } >> |
    r8 b, c |
    g' g g |
    g a b |
    c4. |
    b,4 c8 |
    g'4. |
  }
  \repeat volta 2 {
    bes8 a <g a> |
    f8.[ e16] d8 |
    aes' g <f g> |
    e8.[ d16] c8 |
    c'4 <c d>8 |
    b8.[ gis16] a8 |
    f4 g,8 |
    c4. |
  }
  \repeat volta 2 {
    c8 c c |
    c c c |
    c c c |
    c c c |
    << \stemDown { \shiftOn e'4 } \\ { c,4 a8 } >> |
    << \stemDown { \shiftOn d'4 } \\ { d,4. } >> |
    <c' e,>8 f, fis |
    g8 g8 g8 |
  }
  g4. |
  g8 g g |
  <g c ees>4. |
  g8 g g |
  <g d'>4. |
  << { \shiftOn \stemDown <c e>4. } \\ { g8 g g } >> |
  << { \shiftOn \stemUp b8 b c } \\ { g8 g g } >> |
  <g b d>4. |
  c,8 c c |
  c c c |
  c c c |
  c c c |
  <cis e'>4 <cis a'>8 |
  <d a'>4 <f a>8 |
  g4 <f g,>8 |
  c4. |
}

%%%
%%% SYSTEMS
%%%
\score {
  <<
    \new Staff = "minuet"
    <<
      \set Staff.instrumentName = #"MINUET."
      \clef "treble_8"
      \time 3/4
      \mergeDifferentlyHeadedOn
      \context Voice = "mUpperVoice" \mUpperVoice
      \context Voice = "mLowerVoice" \mLowerVoice
    >>
  >>
  \layout {}
}

\score {
  <<
    \new Staff = "valse"
    <<
      \set Staff.instrumentName = #"VALSE."
      \clef "treble_8"
      \time 3/8
      \mergeDifferentlyHeadedOn
      \mergeDifferentlyDottedOn
      \context Voice = "vUpperVoice" \vUpperVoice
      \context Voice = "vLowerVoice" \vLowerVoice
    >>
  >>
  \layout {}
}

%%%
%%% MIDI
%%%
\score {
  \unfoldRepeats {
    <<
      \time 3/4
      \set Staff.midiInstrument = #"acoustic guitar (nylon)"
      \context Voice = "mUpperVoice" \mUpperVoice
      \context Voice = "mLowerVoice" \mLowerVoice
    >>
  }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 100 4)
    }
  }
}

\score {
  \unfoldRepeats {
    <<
      \time 3/8
      \set Staff.midiInstrument = #"acoustic guitar (nylon)"
      \vUpperVoice
      \vLowerVoice
   >>
  }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 100 4)
    }
  }
}
