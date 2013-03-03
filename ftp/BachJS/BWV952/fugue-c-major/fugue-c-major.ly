#(set-global-staff-size 20)

\header {
    title = "Fugue in C major"
    composer = "J.S. Bach"
    mutopiatitle = "Fugue in C major"
    mutopiacomposer = "BachJS"
    mutopiainstrument = "Harpsichord, Piano, Clavichord"
    mutopiaopus = "BWV 952"
    mutopiasource = "Unknown"

    style = "Baroque"
    copyright = "Public Domain"
    maintainer = "Jacob Lee"
    maintainerEmail = "alphac@flashmail.com"

 footer = "Mutopia-2013/03/03-254"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

\version "2.16.1"

partone =  \relative c'' {
    \clef treble
    \key c \major
    \voiceTwo
    
    r16 g a b c g f g e a g a f g e f
    d g f g e f d e c8 c'8 b a
    g f e g f e d f
    e f e d c2 ~

    c4. b8 c16 r16 r8 r16 g' fis e
    d4 r16 e d e c4 r16 d c d
    b4 r16 c b c a4 r16 d c d
    b4 r4 r16 d e fis g d c d

    b e d e c d b c a d c d b c a b
    g g' f g e f d e c c' bes c a bes g a
    f f' e f d e c d b!8 a g4 ~
    g8 e a g f d g4 ~

    g16 g f e f8. d16 e2 ~
    e16 e d cis d4 ~ d16 d cis b cis4 ~
    cis8 a d4 ~ d8 gis, c4 ~
    c8 \change Staff = "down" \voiceOne fis, gis a b4 r4

    \change Staff = "up" \voiceTwo r8 c f! e d b e4 ~
    e8 e a g f d g4 ~
    g8 g c b a fis b4 ~
    b16 b cis dis e b a b g c b c a b g a

    fis b a b g a fis g e8 g a g
    fis a g fis e2 ~
    e4. dis8 e4 r8 e
    e g cis,4 d r8 d

    d f b,4 c r8 e
    g bes e,4 f8 r8 r4
    r1
    \change Staff = "down" \voiceOne r16 g, a b c g f g e a g a f g e f

    d g f g e f d e c b' c d \change Staff = "up" \voiceTwo e4 ~
    e8 e a g f d e f
    g4 r16 c b c a4 r16 b a b
    g4 r16 a g a f4 r16 g f g

    e4 r16 a g a d,4 r16 g f g
    e1 \bar "|."
}

parttwo =  \relative c'' {
    \clef treble
    \key c \major
    \voiceOne
    
    r1 |
    r2 r16 c e f g d c d |
    b e d e c d b c a d c d b c a b |
    g2 ~ g8 bes a g |

    f a g f e16 g a b c4 ~ |
    c16 fis, g a b4 ~ b16 e, fis g a4 ~ |
    a16 d, e fis g4 ~ g16 g fis e fis4 |
    g r4 r2 |

    r1 |
    r1 |
    r2 r16 g' a b c g f g |
    e a g a f g e f d g f g e f d e |
    
    cis4 ~ cis16 a d8 ~ d16 d cis b cis a d e |
    f4 ~ f16 a, d f e4 ~ e16 e f g |
    a f e f d b' a b gis b, c d e a, g a |
    f d' c d \oneVoice b c a b gis8 e r16 e fis gis |

    \voiceOne a2 ~ a8 gis a b
    c2 ~ c8 b c d
    e2 ~ e8 dis e fis
    g2 ~ g16 e dis! e c'8 b8

    a fis b a g16 e dis e c e b e
    a, e' c e b e a, e' g, e' dis e a, e' g, e'
    fis, g a c b a g fis g4 r8 g
    g bes ~ bes16 bes a g f4 r8 f

    f a ~ a16 a g f e4 r8 g8
    bes d ~ d16 d c bes a c d e f c bes! c
    a d c d bes c a bes g c bes c a bes g a
    \oneVoice f4 r r16 f e f d e c d

    b8 d g f e4 \voiceOne r16 g a b
    c2 ~ c8 b c d
    e16 d e f g e d e g cis, d e f4 ~
    f16 b, c d e4 ~ e16 a, b c d4 ~

    d16 g, a b c4 ~ c16 c b a b4
    c1
}

partthree =  \relative c' {
    \clef bass
    \key c \major
    
    r1
    r1
    r1
    r16 g a b c g f g e a g a f g e f
    
    d g f g e f d e c8 b' a g
    fis d g fis e g fis d
    g fis e d c a d d,
    g16  d'[ e fis] g d c d b8 c b a

    g b e d c a d c
    b d g f e g c bes
    a c f e d4 e8 d
    c2 ~ c4 bes

    a1 ~
    a2 gis4 a8 g
    f4. f8 e4. c8
    d4 r r16 e fis gis a e d e

    c f! e f d e c d b e d e c d b c
    a a' g a f g e f d g f g e f d e
    c c' b c a b g a fis b a b g a fis g
    e4 r e'2 ~

    e4 dis e2 ~
    e2 ~ e8 g, c b
    a fis b4 e,16 fis g a b g e g
    cis, a' e cis a g' f e d e f g a f d f

    b, g' d b g f' e d c d e f g e c e
    g, c g e c bes' a g f4 r16 c' d e
    f8 d g f e c f e
    \voiceTwo d c16 b a8 b c2 ~

    c4 b c16 g a b \oneVoice c g f g
    e a g a f g e f d g f g e f d e
    c4 r8 e' cis a d c
    b g c b a d b g

    c b a e f d g g
    c1
}

\score {
     \new PianoStaff <<
	\new Staff = "up" <<
	    \partone
	    \parttwo
	>>
	\new Staff = "down" \partthree
    >>
    
    \layout {}
    \midi {}
}

