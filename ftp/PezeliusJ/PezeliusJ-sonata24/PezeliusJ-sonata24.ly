%edited with lilypondbeans
\version "2.16.1"
\header {
    title = "Sonata 24"
    composer = "Johannes Pezelius"
    copyright = "Public Domain"
    mutopiacomposer = "PezeliusJ"
    mutopiainstrument = "Brass Ensemble"
    source = "Frommann, Leipzig 1670"
    style = "Baroque"
    copyright = "Public Domain"
    maintainer = "U. Weigelt"
    moreInfo = "edited by U. Weigelt"
    %arranger = \markup { \tiny "edited by U.Weigelt"}

 footer = "Mutopia-2013/03/23-1648"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \abs-fontsize #10 \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 MutopiaProject \abs-fontsize #8 .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \abs-fontsize #10 \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 LilyPond \abs-fontsize #8 .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \abs-fontsize #8 \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

\paper {
    %#(set-paper-size "a4")
}

PartPOneVoiceOne =  \relative c'' {
    \clef "treble" \key es \major
    \stemUp
    \repeat volta 2 {
          \set Staff.instrumentName = "Trumpet 1/2"
        \time 2/2 c4 d4 es4 r8 es8  | % 2
        es8.  es16  d8.  c16 bes4 r4 | % 3
        r4 r8 es8  d8  es8  bes8  c8  | % 4
        bes8  c16 d16  es8 es8  es4 es8. d16  | % 5
        es4 r8 es8 es4 es8. d16  | % 6
        es8  es8  es8  d8 es2 | % 7
        r1 r1 | % 9
        r2 r4 r8 es8  | \barNumberCheck #10
        d8  es8  bes8  c8  bes8  c16
        d16  es8 d16  c16  | % 11
        bes8  bes8 c4 bes4 r8 bes8  | % 12
        bes8  bes8 c4 bes4 r8 es8  | % 13
        es4 c4 d4 r8 d8  | % 14
        d4 es4 f4 r8 a,!8  | % 15
        a2 g4 r8 es'8  | % 16
        d8  es8  bes8  c8  bes8  c16 d16  es8 as,8 | % 17
        g8.  f16 g4 g8 a16 b16  c8 c8 | % 18
        c4. b8 c2 }
    | % 19
    \repeat volta 2 {
        es16  es16 es16 es16  d8  d8 r2 | \barNumberCheck #20
        as16  as16 as16 as16  g8  g8 f4 es4 | % 21
        bes'16  c16 d16 es16  f8  f,8 r2 | % 22
        c'16  d16 es16 f16  g8 bes,8 bes8.  a16 bes4 | % 23
        bes4 r8 bes8 bes4 r8 bes8  | % 24
        bes4. a8 bes2 | % 25
        R1 | % 26
        g'16  g16 g16 g16  f8  f8  es16  es16 es16 es16  d8  d8
        | % 27
        c16  c16 c16 c16  bes8  bes8
        as8.  as16  g8 g8 | % 28
        f8  g8 f4 es4 r8 g'8  | % 29
        g4 f4 es4 r8 es8  | \barNumberCheck #30
        es4 e4 f4 r8 f8  | % 31
        d4 es4 d2 | % 32
        c16  d16 es16 f16  g8  g,8  as16
        bes16 c16 d16  es8  es,8  | % 33
        as16  bes16 c16 d16  es8 es8  d4 c4 | % 34
        d4 es8 d8 d2 | % 35
        c1 }
}

PartPTwoVoiceOne =  \relative g' {
    \clef "treble" \key es \major
    \stemDown
    \repeat volta 2 {
    %    \set Staff.instrumentName = "Trumpet 2"
        \time 2/2 g4 \f g4 g4 r8 c8  | % 2
        c8.  c16  bes8.  as16 g4 r8 g8 \mf | % 3
        f8  g8  d8  g16 as16  bes8  g16 as16  bes8 es,8 | % 4
        es8  es16 f16  g8  bes8 c4 f,4 | % 5
        g4 r8 bes8 c4 f,4 | % 6
        g8  bes8  c8  f,8 g2 | % 7
        r1 r1 | % 9
        r4 r8 g8  \mf f8  g8  d8  es16 f16  | \barNumberCheck #10
        g8  g8  g8 es8 es8  es8  g8
        as8  | % 11
        bes8  g8  g8.  f16 g4 r8 g8  | % 12
        g8  g8  g8.  f16 g4 r8 bes8  | % 13
        bes4 as8. g16 f4 r8 bes8  | % 14
        bes4 a8. g16 f4 r8 g8 \p | % 15
        g4. fis8 g4 r8 g8  | % 16
        g8  g8  g8  es8  es8  es8  es8 c8 | % 17
        es8.  f16 es4 d8. d16  es8 es8 | % 18
        d2 e2 }
    | % 19
    \repeat volta 2 {
        c'16 \mf  c16 c16 c16  bes8  bes8 r2 | \barNumberCheck #20
        f16  f16 f16 f16  es8  es8  es8.  d16 es4 | % 21
        g16  as16 bes16 c16  d8  d,8 r2 | % 22
        as'16  bes16 c16 d16  es8 es,8  es4 d4 | % 23
        f4 r8 f8 g4 r8 g8  | % 24
        c,2 d2 | % 25
        R1 | % 26
        es'16  es16 es16 es16  d8  d8  c16  c16 c16 c16  bes8
        bes8  | % 27
        as16  as16 as16 as16  g8  g8
        f8.  f16  es8 es8 | % 28
        d8  es8 es8. d16 es4 r8 bes'8  | % 29
        bes4 b4 c4 r8 c8  | \barNumberCheck #30
        c4 bes4 as4 r8 c8  | % 31
        b4 c4 c4. b8  | % 32
        c4 r4 r2 | % 33
        f,16  g16 as16 bes16  c8 c8 c8.  b16 c4 | % 34
        b4 c4 c4. b8  | % 35
        c1 }
}

PartPThreeVoiceOne =  \relative es' {
    \clef bass \key es \major
    \repeat volta 2 {
        \set Staff.instrumentName = "Trambone 1"

        \time 2/2 es4 \f d4 c4 r8 c8  | % 2
        es4 f4 bes,4 r8 bes8 \mf  | % 3
        bes8  bes8  bes8  g8  d'8  c8  bes8 as8 | % 4
        bes8  as8  bes8  es8 c4 bes4 | % 5
        bes4 r8 es8 c4 bes4 | % 6
        bes8  es8  c8  bes8 bes2 | % 7
        bes4 \f bes4 bes4 r8 bes8  | % 8
        es8.  es16  d8.  c16 bes4 r4 | % 9
        r4 r8 bes8  \mf bes8  bes8  bes8  g8  | \barNumberCheck #10
        d'8  c8  bes8 as8 bes8  as8
        bes8  f'8  | % 11
        d8  es8 c4 d4 r8 d8  | % 12
        d8  es8 c4 d4 r8 es8  | % 13
        es4 es4 d4 r8 d8  | % 14
        d4 c8. bes16 a4 r8 es'8 \p  | % 15
        d2 b4 r8 c8  | % 16
        d8  c8  bes8  as8  bes8  as8  bes8 f'8 | % 17
        bes,8.  d16 es4 b4 g8 c8  | % 18
        d2 c2 }
    | % 19
    \repeat volta 2 {
        c,16 \mf d16 es16 f16  g8  g,8  c'16  c16 c16 c16  bes8  bes8
        | \barNumberCheck #20
        R1 | % 21
        r2 es,16 f16 g16 as16  bes8  bes,8  | % 22
        c'16  c16 c16 c16  bes8 bes8  c4 d4 | % 23
        d4 r8 d8 \p bes4 r8 es8  | % 24
        c2 bes2 | % 25
        d16 \f d16 d16 d16  c8  c8  bes16  bes16 bes16 bes16  a8  a8
        | % 26
        es16  f16 g16 as16  bes8  bes,8  r2 | % 27
        r2 as'8. as16  bes8  c8  | % 28
        d8  bes8 bes4 bes4 r8 bes8  | % 29
        bes4 d4 es4 r8 c8  | \barNumberCheck #30
        as4 bes4 c4 r8 as8  | % 31
        g4 g4 g4 d'4 | % 32
        es16  es16 es16 es16  d16  d16
        d16 d16  c16  c16 c16 c16  bes16  bes16 bes16 bes16  | % 33
        as16  as16 as16 as16  g8 c8  d4 es4 | % 34
        d4 c4 d2 | % 35
        e1 }
}

PartPFourVoiceOne =  \relative g {
    \set Staff.instrumentName = "Tra.2/Tuba"%"Trambone 2"
    \clef bass \key es \major  \stemUp
    \repeat volta 2 {
        \time 2/2 g4 g4 g4 r8 g8  | % 2
        c4 f,4 g4 r4 | % 3
        r2 r4 r8 es8  | % 4
        es8  es8 es8 es8 es4 bes'4 | % 5
        g4 r8 g8 es4 bes'4 | % 6
        g8  g8  es8  bes'8 g2 | % 7
        g4 f4 g4 r8 g8  | % 8
        g8.  g16  f8.  es16 d4 r8 g8  | % 9
        f8  g8  f8  g16 as16  bes8  g8  f8 es8 | \barNumberCheck #10
        g8  es8  es8  c8  es8  es8  es8
        c8 | % 11
        g'8  g8 as4 d,4 r8 g8  | % 12
        g8  g8 as4 d,4 r8 g8  | % 13
        bes4 c4 f,4 r8 f8  | % 14
        f4 a4 d,4 r8 g8  | % 15
        d2 d4 r8 es8  | % 16
        g8  es8  es8  c8  es8  es8  g8 as8 | % 17
        bes8.  f16 c'4 d4 g,4 | % 18
        g2 g2 }
    | % 19
    \repeat volta 2 {
        r2 as16 as16 as16 as16  g8  g8  | \barNumberCheck #20
        f16  g16 as16 bes16  c16  d16 es8 bes4 es,4 | % 21
        r2 g16 as16 bes16 c16  d8  d,8  | % 22
        es16  es16 es16 es16  es8 es8  es4 bes'4 | % 23
        bes4 r8 bes8 \p g4 r8 g8  | % 24
        f2 f2 | % 25
        bes16  \f bes16 bes16 bes16  a8  a8  g16  g16 g16 g16  f8  f8
        | % 26
        r2 c16  d16 es16 f16  g8 g,8  | % 27
        c16  d16 es16 f16  g8  c,8  c8.
        c16  g'8 es8 | % 28
        bes'8  g8 bes4 g4 r8 g8  | % 29
        es4 f4 g4 r8 as8  | \barNumberCheck #30
        es4 g4 as4 r8 f8  | % 31
        f4 es4 g2 | % 32
        g16  g16 g16 g16  g16  g16 g16 g16
        es16  es16 es16 es16  es16  es16 es16 es16  | % 33
        f16   f16 f16 f16  g8 g8  g4 g4 | % 34
        g4 g4 g2 | % 35
        g1 }
}

PartPFourVoiceTwo =  \relative c {
  %  \set Staff.instrumentName = "Tuba"
    \clef bass \key es \major \stemDown
    \repeat volta 2 {
        \time 2/2 c4 b4 c4 r8 c8  | % 2
        c4 d4 es4 r8 es8  | % 3
        d8  es8  bes8  c8  bes8  c8  g8 as8 | % 4
        g8  as8  <es es'>8   g8 as4 bes4 | % 5
        <es, es'>4 r8 g8 as4 bes4 | % 6
        <es, es'>8   g8  as8  bes8 <es, es'>2 | % 7
        es'4 d4 es4 r8 es8  | % 8
        <es, es'>4 f4 g4 r8 g'8  | % 9
        f8  g8  d8  es8  d8  es8  bes8 c8 | \barNumberCheck #10
        bes8  c8  g8  as8  g8  as8
        <es es'>8 f8 | % 11
        g8  <es es'>8 as4 g4 r8 g8  | % 12
        g8  <es es'>8 as4 g4 r8 g8  | % 13
        g4 as4 bes4 r8 bes8  | % 14
        bes4 c4 d4 r8 c8  | % 15
        d2 g,4 r8 c8  | % 16
        bes8  c8  g8  as8  g8  as8  <es es'>8 <f f'>8 | % 17
        <es es'>8.   <d d'>16 <c c'>4 g'4 <es es'>8 <c c'>8   | % 18
        g'2 <c, c'>2 }
    | % 19
    \repeat volta 2 {
        r2 as'16 bes16 c16 d16  es8  <es, es'>8   | \barNumberCheck #20
        R1 | % 21
        es'16  es16 es16 es16  d8  d8  c16  c16 c16 c16  bes8
        bes8  | % 22
        as16  as16 as16 as16  g8 g8  c4 bes4 | % 23
        d4 r8 d8 es4 r8 es8  | % 24
        f2 bes,2 | % 25
        bes16  c16 d16 es16  f8  f,8  g16  a16 bes16 c16  f8  <f,
        f'>8   | % 26
        r1
        as16  bes16 c16 d16  es8  <es,
        es'>8   f8.  f16  g8 as8 | % 28
        bes8  <es, es'>8 bes'4 <es, es'>4 r8 es'8  | % 29
        es4 d4 c4 r8 as8  | \barNumberCheck #30
        as4 g4 f4 r8 f8  | % 31
        g4 <c c,>4 g2 | % 32
        c16  c16 c16 c16  bes16  bes16
        bes16 bes16  as16  as16 as16 as16  g16  g16 g16 g16  | % 33
        f16   f16 f'16 f16   <es es,>8 <c c,>8  g4 c4 | % 34
        g4 <c c,>4 g'2 | % 35
        <c, c,>1 }
}

\score{
    % The score definition
    \context StaffGroup{
        <<

        \context Staff = "Sopran" <<
        \PartPOneVoiceOne \\
        \PartPTwoVoiceOne
        >>
        \context Staff = "Tenor" <<
        \PartPThreeVoiceOne
        >>
        \context Staff  = "Bass"<<
        \PartPFourVoiceOne \\
        \PartPFourVoiceTwo
        >>
        >>
    }
    \layout { }
    \midi {
        \tempo 4 = 100
    }
}
