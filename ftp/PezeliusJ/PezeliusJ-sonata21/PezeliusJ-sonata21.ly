%edited with lilypondbeans
\version "2.16.1"
\header {
    title = "Sonata 21"
    composer = "Johannes Pezelius"
    copyright = "Public Domain"
    mutopiacomposer = "PezeliusJ"
    mutopiainstrument = "Brass Ensemble"
    source = "Frommann, Leipzig 1670"
    style = "Baroque"
    copyright = "Public Domain"
    maintainer = "U. Weigelt"
    moreInfo = "edited by U. Weigelt"
   % arranger = \markup { \tiny "edited by U.Weigelt"}

 footer = "Mutopia-2013/03/23-1649"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \abs-fontsize #10 \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 MutopiaProject \abs-fontsize #8 .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \abs-fontsize #10 \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 LilyPond \abs-fontsize #8 .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \abs-fontsize #8 \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

\paper {
    %#(set-paper-size "a4")
}

PartPOneVoiceOne =  \relative c'' {
    \stemUp
    \repeat volta 2 {
    \clef treble \key e \minor \time 3/2
        | % 1
        b2. -\markup{ \italic {Adagio} } ( a4 ) g2 | % 2
        r4 fis4 g2 g2 | % 3
        r4 b4 e2. fis4 | % 4
        dis2. ( cis4 ) b2 | % 5
        d4 ( c8[ d8] e4 ) e4 fis4 ( b,4 ) | % 6
        a4 ( g4 ) g2. fis4 | % 7
        g1. | % 8
        r1. r r r r r | % 14
        fis4 ( e8[ fis8] g4 ) g4 a4 ( d,4 ) | % 15
        e4. e8 b'4 ( a4 ) g4 ( a4 ) | % 16
        g2 g2. fis4 | % 17
        g1. | % 18
        r1. | % 19
        e4 ( d8[ e8] fis4 ) fis4 g2 | \barNumberCheck #20
        a4 ( g8[ a8] b4 ) b4 c4 ( d4 ) | % 21
        b4 d4 d2. cis4 | % 22
        d2 r2 r2 | % 23
        c4. c8 g'4 fis4 e4 ( fis8[ e8]  | % 24
        d2 ) r2 r4 e4 | % 25
        d2. c4 b4 a4 | % 26
        g2 fis1 | % 27
        e1. }
    | % 28
    \repeat volta 2 {
        b'2 b2. a4 | % 29
        a2. a4 a2 | \barNumberCheck #30
        a2 a2. g4 | % 31
        g2. g4 g2 | % 32
        g2 g2. fis4 | % 33
        fis2. fis4 b2 | % 34
        a2 a1 | % 35
        g1. | % 36
        r1. | % 37
        fis4 ( g4 ) a4 -. b4 -. c4 -.
        d4 -. | % 38
        e2 e2. e4 | % 39
        d2 d2. d4 | \barNumberCheck #40
        c2 c2. c4 | % 41
        b1 r2 | % 42
        r1. r | % 44
        r1. | % 45
        e,4 ( fis4 ) g4 -. a4 -. b4 -. c4 -. | % 46
        d2. c4 b2 | % 47
        e2 e1 | % 48
        dis1. | % 49
        dis2. dis4 e2 | \barNumberCheck #50
        e2 e2. dis4 | % 51
        e1. | % 52
        r1. | % 53
        r1. r | % 55
        d,4 ( e4 ) fis4 -. g4 -. a4 -. b4 -. | % 56
        c2 c2. c4 | % 57
        b2 a2. g4 | % 58
        fis1 r2 | % 59
        b1 r2 | \barNumberCheck #60
        g2. a4 b2 | % 61
        a4 g4 fis1 | % 62
        e1. }
}

PartPTwoVoiceOne =  \relative as' {
    \stemDown
    \clef treble \key e \minor \time 3/2
    \repeat volta 2 {
        g2. ( fis4 ) e2 | % 2
        r4 fis4 e2 g2 | % 3
        r4 b4 b2. a4 | % 4
        b2. ( a4 ) b2 | % 5
        r1. r r | % 8
        g4 ( fis8[ g8] a4 ) a4 b4 ( e,4
        ) | % 9
        fis4 ( e4 ) e2. dis4 | \barNumberCheck #10
        e1. | % 11
        r1. r r r | % 15
        e'4. e8 d4 ( c4 ) b4 ( c4 ) | % 16
        b2 a1 | % 17
        b1. | % 18
        d4 ( c8[ d8] e4 ) e4 fis4 fis4 | % 19
        g2 r2 r2 | \barNumberCheck #20
        d,2 g4 ( fis4 ) e4 ( fis4 ) | % 21
        e2 e1 | % 22
        d4. d8 a'4 g4 fis4 ( g8[ fis8] )
        | % 23
        e2 r2 r2 | % 24
        b'4 ( a8[ b8] c4 ) c4 d4 ( g,4 ) | % 25
        fis2. fis4 fis2 | % 26
        e2 e2. dis4 | % 27
        e1. }
    | % 28
    \repeat volta 2 {
        g2 g2. g4 | % 29
        fis2. fis4 fis2 | \barNumberCheck #30
        fis2 fis2. fis4 | % 31
        e2. e4 e2 | % 32
        e2 e2. e4 | % 33
        d2. d4 g2 | % 34
        g2 g2. fis4 | % 35
        g1. | % 36
        b,4 ( c4 ) d4 -. e4 -. fis4 -. g4 -. | % 37
        a1. | % 38
        g2 g2. g4 | % 39
        fis2 fis2. fis4 | \barNumberCheck #40
        e2 e2. e4 | % 41
        d1 r2 | % 42
        a'2 e2. fis4 | % 43
        g4 ( a4 ) b4 -. c4 -. d4 -. e4 -. | % 44
        fis2 fis2. fis4 | % 45
        e1 r2 | % 46
        fis,2. fis4 g2 | % 47
        b2 b2. a4 | % 48
        b1. | % 49
        fis2. fis4 g2 | \barNumberCheck #50
        g2 fis1 | % 51
        e1. | % 52
        r1. | % 53
        r1. | % 54
        e4 ( fis4 ) g4 -. a4 -. b4 -. c4 -. | % 55
        d2 r2 r2 | % 56
        c,4 ( d4 ) e4 -. fis4 -. g4 -. a4 -. | % 57
        e2 fis2. g4 | % 58
        dis1 r2 | % 59
        fis1 r2 | \barNumberCheck #60
        e1. | % 61
        e2 e2. dis4 | % 62
        e1. }
}

PartPThreeVoiceOne =  \relative c' {
    \clef bass \key e \minor \time 3/2
    \repeat volta 2 {
        b1 b2 | % 2
        r4 b4 b2 c2 | % 3
        r4 g4 g2. a4 | % 4
        fis2. fis4 fis2 | % 5
        d'2 c4 ( b4 ) a4 ( d4 ) | % 6
        e2 d1 | % 7
        b1. | % 8
        e2 d4 ( c4 ) b2 | % 9
        c2 b1 | \barNumberCheck #10
        b1. | % 11
        g4. g8 d'4 ( c4 ) b4 ( c8[ b8] )  | % 12
        a4. a8 e'4 ( d4 ) c4 ( d8[ c8] )  | % 13
        b4 ( d4 ) d2. cis4 | % 14
        d1 r2 | % 15
        c2 b2. a4 | % 16
        d4 e4 d1 | % 17
        b1. | % 18
        d4. d8 c4 b4 a4 ( b8[ a8] )  | % 19
        g4. g8 d'4 ( c4 ) b4 ( c8[ b8] )  | \barNumberCheck #20
        a2 r2 r2 | % 21
        b2 a2 g2 | % 22
        fis2 r2 r2 | % 23
        c'4 ( b8[ c8] d4 ) d4 e4 ( a,4 ) | % 24
        b8 (  c8 d4 ) c4 a4 fis4 ( b4 ) | % 25
        b1. | % 26
        b2 b1 | % 27
        b1. }
    | % 28
    \repeat volta 2 {
        b2 d2. e4 | % 29
        d2. d4 d2 | \barNumberCheck #30
        d2 c2. d4 | % 31
        c2. c4 c2 | % 32
        e2 b2. c4 | % 33
        b2. b4 d2 | % 34
        e2 d1 | % 35
        b1. | % 36
        b2 b2. b4 | % 37
        a1 r2 | % 38
        e4 ( fis4 ) g4 -. a4 -. b4 -. c4 -. | % 39
        r1. | \barNumberCheck #40
        a4 ( b4 ) c4 -. d4 -. e4 -. fis4 -. | % 41
        b,2 fis2. g4 | % 42
        fis4 ( g4 ) a4 -. b4 -. c4 -. d4 -. | % 43
        e2 r2 r2 | % 44
        fis,4 ( g4 ) a4 -. b4 -. c4 -.
        d4 -. | % 45
        e2 e2. e4 | % 46
        d2. d4 d2 | % 47
        g,2 c1 | % 48
        fis,1. | % 49
        b2. b4 b2 | \barNumberCheck #50
        b2 b1 | % 51
        b1. | % 52
        b2 b2. b4 | % 53
        a2 a2. a4 | % 54
        g2 g2. g4 | % 55
        fis2 fis2. fis4 | % 56
        e2 c'2. a4 | % 57
        b2 dis2. e4 | % 58
        dis1 r2 | % 59
        b1 r2 | \barNumberCheck #60
        b2. a4 g2 | % 61
        c2 b1 | % 62
        b1. }
}

PartPFourVoiceOne =  \relative as {
    \stemUp
    \clef bass \key e \minor \time 3/2
    \repeat volta 2 {
        g1 g2 | % 2
        r4 b4 g2 g2 | % 3
        r4 e4 e2. e4 | % 4
        b'2. b4 dis,2 | % 5
        g1 fis2 | % 6
        e2 a2 d,2 | % 7
        d1. | % 8
        b'2 a4 ( d,4 ) g4 ( e4 ) | % 9
        e4 ( a4 ) fis1 | \barNumberCheck #10
        gis1. | % 11
        e2 d4 ( a'4 ) d,4. ( e8 )  | % 12
        fis4. fis8 e4 ( g4 ) a2 | % 13
        b2 e,1 | % 14
        fis2 r2 r2 | % 15
        e4 ( d8[ e8] fis4 ) fis4 g4 ( c,4 ) | % 16
        g'2 d1 | % 17
        d1. | % 18
        fis4 ( e8[ fis8] g4 ) g4 a4 ( d,4 ) | % 19
        e2 d4 ( a'4 ) d,2 | \barNumberCheck #20
        d2 r4 b'4 a2 | % 21
        g2 e2. a4 | % 22
        d,4 ( c8[ d8] e4 ) e4 fis4 ( b,4 ) | % 23
        e2 d2 r4 d4 | % 24
        d2 a'2 d,4 ( g4 ) | % 25
        d2. e4 d2 | % 26
        r2 fis2 b2 | % 27
        gis1. }
    | % 28
    \repeat volta 2 {
        g2 b2. e,4 | % 29
        fis2. fis4 fis2 | \barNumberCheck #30
        fis2 a2. d,4 | % 31
        e2. e4 e2 | % 32
        g2 g2. g4 | % 33
        d2. d4 d2 | % 34
        g2 d1 | % 35
        d1. | % 36
        g,4 ( a4 ) b4 -. c4 -. d4 -. e4 -. | % 37
        fis2 fis2. fis4 |  % 38
        e1. | % 39
        d4 ( e4 ) fis4 -. g4 -. a4 -. b4 -. | \barNumberCheck #40
        c,4 ( d4 ) e4 -. fis4 -. g4 -. a4 -. | % 41
        g2 d2 r2 | % 42
        r1. | % 43
        b'2 b2. b4 | % 44
        a2 a2. a4 | % 45
        g2 g2. g4 | % 46
        fis2. a4 d,2 | % 47
        g2 e1 | % 48
        b'1. | % 49
        dis,2. dis4 g2 | \barNumberCheck #50
        g2 b1 | % 51
        gis1. | % 52
        g2 g2. g4 | % 53
        fis2 fis2. fis4 | % 54
        e2 e2. e4 | % 55
        d2 d2. d4 | % 56
        c2 c2. c4 | % 57
        g'2 a2. b4 | % 58
        b1 r2 | % 59
        fis1 r2 | \barNumberCheck #60
        g2. fis4 e2 | % 61
        e2 b'1 | % 62
        gis1. }
}

PartPFourVoiceTwo =  \relative f, {
    \stemDown
    \clef bass \key e \minor \time 3/2
    \repeat volta 2 {
        <e e'>1 <e e'>2 | % 2
        r4 <dis dis'>4 <e e'>2 <c c'>2 | % 3
        r4 e'4 c2. <c, c'>4 | % 4
        <b b'>1. | % 5
        b'2 c2 d2 | % 6
        <c, c'>2 <d d'>1 | % 7
        g1. | % 8
        e2 fis2 g2 | % 9
        a2 b1 | \barNumberCheck #10
        e,1. | % 11
        e2 fis2 g2 | % 12
        d'2 c4 b4 a2 | % 13
        g2 a1 | % 14
        d4 ( c8[ d8] e4 ) e4 fis4 ( b,4 ) | % 15
        c4 ( b8[ c8] d4 ) d4 e4 ( a,4
        ) | % 16
        b4 ( c4 ) d1 | % 17
        g,1. | % 18
        <d d'>4. <d d'>8 a'4 g4 fis4 ( g8[ fis8] )  | % 19
        e4. e8 b'4 a4 g4 ( a8[ g8] )  | \barNumberCheck #20
        fis4 ( e8[ fis8] g4 ) g4 a4 ( <d, d'>4 ) | % 21
        g2 a1 | % 22
        b4 ( a8[ b8] c4 ) c4 d4 ( g,4
        ) | % 23
        a4 ( g8[ a8] b4 ) b4 c4 ( fis,4 ) | % 24
        g4 ( fis8[ g8] a4 ) a4 b4 ( e,4 ) | % 25
        b'2. c4 d2 | % 26
        e2 b1 | % 27
        e,1. }
    | % 28
    \repeat volta 2 {
        e'2 b2. c4 | % 29
        d2. d4 d2 | \barNumberCheck #30
        d2 a2. b4 | % 31
        c2. c4 c2 | % 32
        c2 g2. a4 | % 33
        b2. b4 b2 | % 34
        c2 d1 | % 35
        g,1. | % 36
        r1.| % 37
        <d d'>4 ( e4 ) fis4 -. g4 -. a4
        -. b4 -. | % 38
        c2 g2. ( a4 ) | % 39
        b2 fis2. ( g4 ) | \barNumberCheck #40
        a2 r2 r2 | % 41
        g4 ( a4 ) b4 -. c4 -. d4 -. e4 -. | % 42
        fis2 r2 r2 | % 43
        e2 b2. ( c4 ) | % 44
        d2 a2. ( b4 ) | % 45
        c2 g2. ( a4 ) | % 46
        b2. ( a4 ) g2 | % 47
        e2 <c c'>1 | % 48
        <b b'>1. | % 49
        b'2. ( a4 ) g2 | \barNumberCheck #50
        e2 b'1 | % 51
        e,1. | % 52
        e4 ( fis4 ) g4 -. a4 -. b4 -. c4 -. | % 53
        d2 a2. ( b4 ) | % 54
        c2 g2. ( a4 ) | % 55
        b2 fis2. ( g4 ) | % 56
        a2 e2. ( fis4 ) | % 57
        g2 fis2. ( e4 ) | % 58
        b'1 r2 | % 59
        dis,1 r2 | \barNumberCheck #60
        e2. ( fis4 ) g2 | % 61
        a2 b1 | % 62
        e,1. }
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
        \tempo 4 = 180
    }
}
