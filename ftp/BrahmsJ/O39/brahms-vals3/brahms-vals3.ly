\version "2.18"

\header {
  title = "Vals no. 3"
  composer = "J. Brahms (1833-1897)"
  opus = "Op. 39"
  mutopiatitle = "Vals no. 3"
  mutopiacomposer = "BrahmsJ"
  mutopiaopus = "O 39"
  mutopiainstrument = "Guitar"
  source = "Transcribed"
  style = "Romantic"
  copyright = "Public Domain"
  maintainer = "P. Bozzo"
  maintainerEmail = "bozzo@mclink.it"
  lastupdated = "2002/Sep/09"
  
 footer = "Mutopia-2014/01/10-264"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \abs-fontsize #10 \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 MutopiaProject \abs-fontsize #8 .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \abs-fontsize #10 \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 LilyPond \abs-fontsize #8 .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \abs-fontsize #8 \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}


SoloXguitarAVoiceA = \relative c' {
  \clef "G_8"
  \time 3/4
  \set Staff.midiInstrument = "acoustic guitar (nylon)"
  \set Timing.beamExceptions = #'()
  \set Timing.beatStructure = #'(1 1 1)
  \voiceOne
  \repeat "volta" 2 {
    \override TextSpanner.dash-fraction = #0.0
    \override TextSpanner.bound-details.left.text = "C5 "
    a'4.\startTextSpan e8-1 e-1 (   f)-2 | e4.-1 a,8-4 a-4 e'-1 |   %4
    a4. e8 e (   f)\stopTextSpan | e4.-0 a,8 a d |   % 6
    \override TextSpanner.bound-details.left.text = "C3 "
    a'4.-4\startTextSpan g8 c, g'\stopTextSpan |
    g4.-4 f8-1 b,-0 f'-1 |	 % 8
    e4.-0 d8 c-2 c'-4 |
  }
  \alternative {
    {
      g4 < b, d > < b d gis! >
    }
    {
      \override NoteColumn.ignore-collision = ##t 
      g'?2 a4
      \revert NoteColumn.ignore-collision
    }
  }
  
  \repeat "volta" 2 {
    g4. f8 e e'-4 | d4.-2 b8-2 g-3 f-1 |   % 13
    e4.-0
    \override TextSpanner.bound-details.left.text = "C5 "
    d8\startTextSpan c c'-4\stopTextSpan |
    b4.-3 g8 e d |% 15
    \set fingeringOrientations = #'(up)
    c e  c' b-4 r < c,-3 a'-4 > |
    r d a' < a, f' > r < b d > |   % 17
    r e c'-4 < c, e-1 > b'-4 < d,-1 e-3 > |
  }
  \alternative {
    {
      r8 \stemDown c e c' (  b  a) |
      \override NoteColumn.ignore-collision = ##t 
      \stemUp g2 a4
      \revert NoteColumn.ignore-collision
    }
    {
      r4 < c, e a >\fermata r
    }
  }
}
SoloXguitarAVoiceB = \relative c {
  \repeat "volta" 2 {
    \voiceTwo
    a4 < a' c > < a c > a, < e' a > r
    a, < a' c > < a c > d, < f a > r
    c < c' e > r b,_2 < f'_3 g > < f g > d < g b > fis!_1
  }
  \alternative {
    {
      g,4. f8 e e'
    }
    {
      \stemUp %% Produces a warning but looks better.
      < g, b' d >4. a8 g f
      \stemDown
    }
  }
  \repeat "volta" 2 {
    e4 < e' g b > r g < g b > g
    c, < e g > < e g > e, < g' b > < g b >
    a,4. b8 a4 a'4. f8 d4 c2 d4
  }
  \alternative {
    {
      \stemUp %% Ditto.
      a2 r4 < g b' d >4. a8 g f
      \stemDown
    }
    {
      a2.\fermata
      \bar "|."
    }
  }
}

SoloXguitarA = <<
  \set Staff.instrumentName = "Solo guitar"
  \context Voice="SoloXguitarAVoiceA" \SoloXguitarAVoiceA
  \context Voice="SoloXguitarAVoiceB" \SoloXguitarAVoiceB
>>

\score {
  <<
    \set Score.skipBars = ##t
    \context Staff="Solo guitar" \SoloXguitarA
  >>
  \layout {
  }
}
\score {
  <<
    \applyMusic #unfold-repeats \SoloXguitarAVoiceA
    \applyMusic #unfold-repeats \SoloXguitarAVoiceB
  >>  
  \midi {
    \tempo 4 = 120
  }  
}
