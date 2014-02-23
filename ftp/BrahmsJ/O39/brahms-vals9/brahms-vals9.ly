\version "2.18"

\header {
  title = "Vals no. 9"
  composer = "J. Brahms (1833-1897)"
  opus = "Op. 39"
  mutopiatitle = "Vals no. 9"
  mutopiacomposer = "BrahmsJ"
  mutopiaopus = "O 39"
  mutopiainstrument = "Guitar"
  source = "Transcribed"
  style = "Romantic"
  copyright = "Public Domain"
  maintainer = "P. Bozzo"
  maintainerEmail = "bozzo@mclink.it"
  lastupdated = "2002/Sep/13"

 footer = "Mutopia-2014/01/10-265"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \abs-fontsize #10 \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 MutopiaProject \abs-fontsize #8 .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \abs-fontsize #10 \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 LilyPond \abs-fontsize #8 .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \abs-fontsize #8 \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

StaffAVoiceA = \relative c {
  \set Staff.instrumentName = "Solo guitar"
  \set Staff.midiInstrument = "acoustic guitar (nylon)"
  \clef "G_8"
  \key g \major
  \time 3/4
  \partial 4
  \voiceOne e'4\2
  \repeat "volta" 2 {
    b4-0 r g'\2 \glissando |
    dis!-1 r fis^\2 \glissando |   % 4
    b,-0 r b'\2 \glissando  |
    e,-4 r c' |   % 6
    \override TextSpanner.dash-fraction = #0.0
    \override TextSpanner.bound-details.left.text = "C7 "
    dis,!\startTextSpan r b'\stopTextSpan |
    d,!\3 r a'-1 |   % 8
    c, f! b, |
    \set fingeringOrientations = #'(up)
    < gis!-1 b-0 >2 e'4
  }

  \repeat "volta" 2 {
    \override TextSpanner.bound-details.left.text = "C1 "
    c4-2 r g'-4 |
    c,\startTextSpan r f!\stopTextSpan |   % 12
    bes,!-3 r bes'!-4 | a-4 r a-2 ~ |   % 14
    a b,! a'-2 ~ | a b,! a'-4 ~ |   % 16
    \override TextSpanner.bound-details.left.text = "C2 "
    a\startTextSpan dis,!\stopTextSpan b'-4 ~ |
    \override TextSpanner.bound-details.left.text = "C4 "
    b\startTextSpan e,\stopTextSpan e'-4 |   % 18
    c-1 a a | fis r d'!-4 |   % 20
    b-1 r g |
  }
  \alternative {
    {
      e4 r c'-4\glissando | ais!-4 r b |   % 23
      \override TextSpanner.bound-details.left.text = "C4 "
      gis!\startTextSpan r a\stopTextSpan |
      fis g! e |   % 25
      < b dis! >2 e4
    }
    {
      e4 r g-1
    }
  }
  ais,!4-2 r fis'-4 | a,!-3 r e' |   % 29
  \override TextSpanner.bound-details.left.text = "C7 "
  g,\startTextSpan c'-2 fis,-1 |
  < b,, fis' dis'! fis >2.\fermata \stopTextSpan
  \bar "|."
}

StaffAVoiceB = \relative c {
  \voiceTwo
  \partial 4 s4
  \repeat "volta" 2 {
    e,4 < e' g > r a, < a'_4 c_2 > r
    e, < e' g > r c_2 < e_1 a_1 > r
    b_1 < fis'_3 a_1 > r e, < e'_3 gis!_2 > r
    < a, e' > < d a' >2 e,4 e' r
  }
  \repeat "volta" 2 {
    bes!_1 < e_3 g_0 > r a, f'! r
    c_2 e_1 r c_1 < fis!_2 c'_3 > r
    dis!_3 fis r e, s s
    fis < b a' > r gis! b' r
    a, e'' r d,! < a' c > r d, < g b > r
  }
  \alternative {
    {
      c, < g' b > r cis,!_1 < cis'!_3 e_2 > r
      dis,! < fis b > r < e b' > < c ais'! >2 b4 fis' r
    }
    {
      c < g' b > r
    }
  }
  < cis,! g' > e r dis!_1 b_2 r c! <a e''>2 r4 b'2\fermata
}

\score {
  \context Staff="Solo guitar" <<
    \new Voice \StaffAVoiceA
    \new Voice \StaffAVoiceB
  >>
  \layout {
  }
}
\score {
  <<
    \applyMusic #unfold-repeats \StaffAVoiceA
    \applyMusic #unfold-repeats \StaffAVoiceB
  >>
  \midi {
    \tempo 4 = 136
  }
}
