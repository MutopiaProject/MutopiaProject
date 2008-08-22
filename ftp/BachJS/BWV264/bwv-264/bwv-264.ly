\version "2.11.43"

#(set-global-staff-size 17)

\paper {
}


\header {
title = "Als der gütige Gott vollenden wollt sein Wort"
composer = "J.S. Bach"
opus = "BWV 264"
instrument = "SATB"
source = "www.jsbchorales.net"
copyright = "Creative Commons Attribution 3.0"
style = "Baroque"
maintainer = "Julián Villegas"

\sourcefilename "BWV-264.tex"
mutopiacomposer = "BachJS"
 footer = "Mutopia-2008/08/22-1529"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/3.0" http://creativecommons.org/licenses/by/3.0 } } } }
}

global = {
\key g \major
\time 4/4
}
sopMusic = \relative c' {
\skip 2. d \bar "|" g a b a g2\fermata r4 a b c b a
 g2\fermata r4 b d d c b a2\fermata r4 b g c b a
 g2 a4\fermata a b c b a g2.\fermata \skip 4 \bar "|."
}

altoMusic = \relative c' {
\skip 2. b4  e8 g4 fis8 g8 fis16 e fis4 d2\fermata r4 fis g g8 a4 g4 fis8 
d2\fermata r4 g g g4. fis8 g4 ~| g4 fis4\fermata r fis4 ~ |fis8 e8 g a4 g4 fis8
g4. fis16 e fis4\fermata fis g g g4. fis8 d2.\fermata \skip 4
}

tenorMusic =   {
\skip 2. g4  b d' d' d'8 c' b2\fermata r4 d' d' e' d'4. d'16 c'
 b2\fermata r4 d' d' b c' d' d'2\fermata r4 b b e'8 d' d'4. d'16 c'
 b8 a b cis' d'4\fermata d' d' c'8 e' d'4 d'8. c'16 b2.\fermata \skip 4
}

bassMusic =  {
\clef bass \skip 2. g4  e d g d g,2\fermata r4 d g c d d,
g,2\fermata r4 g,4 b, g, a, b,8 c d2\fermata r4 dis e4. fis8 g4 d
e2 d4\fermata d g e8 c d4 d, g,2.\fermata \skip 4
}

\score {
\new ChoirStaff <<
\new Staff = S <<
\new Voice =
"sopranos" { \voiceOne << \global \sopMusic >> }
>>
\new Staff = A <<
\new Voice =
"altos" { \voiceTwo << \global \altoMusic >> }
>>
\new Staff = T <<
\clef bass
\new Voice =
"tenors" { \voiceOne <<\global \tenorMusic >> }
>>
\new Staff = B <<
\clef bass
\new Voice =
"basses" { \voiceTwo <<\global \bassMusic >> }
>>
>>
\midi {
\context {
\Score
tempoWholesPerMinute = #(ly:make-moment 85 4)
}
}

\layout {
\context {
\Score
\override SpacingSpanner
#'base-shortest-duration = #(ly:make-moment 1 4)
}
}
}
