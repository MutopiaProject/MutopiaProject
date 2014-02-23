\version "2.18.0"

\header {
   title = "Etude in A minor"
   composer = "Johann Kaspar Mertz(1806-1856)"
   instrument = "Guitar"
   enteredby = "Emre Akbas"
   piece = "Allegro"

   % mutopia headers
   mutopiacomposer = "MertzJK"

   style = "Classical"
   copyright = "Public Domain"
   maintainer = "Emre Akbas"
   maintainerEmail = "emreakbas@yahoo.com"
   lastupdated = "2001/Aug/29"

 footer = "Mutopia-2014/01/09-111"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \abs-fontsize #10 \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 MutopiaProject \abs-fontsize #8 .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \abs-fontsize #10 \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 LilyPond \abs-fontsize #8 .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \abs-fontsize #8 \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

\layout {
  \context {
    \Voice
    \override StringNumber #'stencil = ##f
    \override StrokeFinger #'avoid-slur = #'around
    \override StrokeFinger #'add-stem-support = ##t
  }
  \context {
    \Staff
    \override Fingering #'staff-padding = #'()
    \override Fingering #'add-stem-support = ##t
    \mergeDifferentlyDottedOn
    \mergeDifferentlyHeadedOn
  }
  \context {
    \Dynamics
    \override DynamicTextSpanner #'style = #'none
  }
}

#(define RH rightHandFinger)

upper = \relative c' {
  \voiceOne
  \set strokeFingerOrientations = #'(up)
  <a,\RH #1 >16[ <a'-\RH #2 > <c-\RH #3 > <e-\RH #4 > ]  <e-\RH #3 >[ <e-\RH #2 > <e-\RH #3 > <e-\RH #2 >] <e-\RH #3 >4^> e,,8 <e'' b gis-1> |
  a,,16[ a' c e]  <f-\RH #3 >[( e) <e-\RH #3 > <e-\RH #2 > ] <e-\RH #3 >4^> e,,8 <e'' b gis> |
  a,,16[ a' c e] <a-4>4  d,,16[ a' b f'] f4  |
%  \break
  <e,-2>16[ <gis-1> b e]  <f-1>[ ( e) b e]  gis,[ e' e, e']  d,[ e' b, e']
  a,,16[ a' c e]  e[ e e e] e4^> e,,8 <e'' b gis> |
  a,,16[ a' c e]  f[ ( e) e e] e4^> <fis,,-3>8 <e'' c a-4> |
%  \break
  g,,16[ \< g' c e]  e[ e e e]  g2\! |
  <c,,-\RH #1 >16[ <g'-\RH #2 > <c-\RH #3 > <e-\RH #4 > ]  <g,-\RH #2 >[ <c-\RH #3 > <e,-\RH #1 > <g-\RH #2 > ] <c,-\RH #1 >4 r4 |
  e,16[ gis' b e]  e[ e e e] e8 b c a |
%  \break
  e,16[ gis' b e]  e[ e e e] e8^> b c a |
  e,16[ gis' b e]  e8[ <e c a>^>]  e[ <e b gis-1>^>]  e[ <e c a>^>] |
  <gis, b e>8[ <dis-\RH #1 >16 <e'-\RH #3 > ]  <e,-\RH #3 >16[ <e'-\RH #3 > <dis,-\RH #1 > <e'-\RH #3 >]  e,[ e' d, e']  c,[ e' b, e'] |
%  \break %13
  a,,16[ a' c e]  e[ e e e] e4^> e,,8 <e'' b gis> |
  a,,16[ a' c e]  e[ e e e] e4^> d,8 <b' f'> |
  e,,16[ a' c e] e4 <e'-4-\RH #3 > <gis,-4> |
  a <e b> a, r4^\fermata 
  \bar "|."
}

lower = \relative c {
  \voiceTwo
  a2\p e''8 a,, e4 |
  a2 e''8 a,, e4 |
  a4 a''8 \once\stemUp a,, d4 f'8 d, | 
  e4 r8 b' gis e d b |
  a2 e''8 a,, e4 |
  a2 e''8 a,, fis4 |
  <g-3>2 r8  <f'-3\RH #1 >16[ <g-\RH #2 >]  <e-\RH #1 >[ <g-\RH #2 > <d-\RH #1 > <g-\RH #2 >] |
  c,2 c4 r4 |
  e,2\p r8  e[\f e e] |
                                % 10
  e2\p r8  e[\f e e] |
  e4. e8 r8 e8 r8 e8 |
  e8 dis' e dis e d c b |
                                % 13
  a2 e''8 a,, e4 |
  a2 e''8 a,, d4 |
  e,4  e''8[ \once\stemUp e,, ]  e'''[ \once\stemUp e,,,]  d''[ e,,] |
  c''[ a,]  gis'[ e,] a4 r4
}


\score {
  <<
    \new Staff = "Guitar"
    <<
      \set Staff.midiInstrument = #"acoustic guitar (nylon)"
      \time 4/4
      \key a \minor
      \clef "treble_8"
      \context Voice = "upperVoice" \upper
      \context Voice = "lowerVoice" \lower
    >>
  >>
  \layout { }
  \midi {
    \tempo 4 = 76
  }
}
