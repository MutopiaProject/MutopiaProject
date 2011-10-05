\version "2.14.2"

\header {
  mutopiatitle = "Six Petites Pièces, No. 5"
  mutopiacomposer = "AguadoD"
  source = "Statens musikbibliotek - The Music Library of Sweden"
  title = "Six Petites Pièces"
  composer = "Dionisio Aguado"
  instrument = "Guitar"
  opus = "Op. 4, No. 5"
  style = "Classical"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl at glx.com"
 footer = "Mutopia-2011/10/01-1789"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2011. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\layout {
  indent = 72\pt
  short-indent = 0\pt
}

glissez = \markup{ \italic glissez }

%%%
%%% First part: MINUET
%%%
mUpperVoice = \relative c' {
  \voiceOne
  \slurDown
  \repeat volta 2 {
    d8 b'4 a16[ g] a8[ fis]
    g4 d dis |
    e8[ fis16 gis] a([ b) c b] d([ c) e, a] |
    g4 fis s |
    c16\rest \times 3/5 { a16[ c fis a d]} r8 <fis, c a>4 <fis c a>8 |
    \times 2/3 { <b, g'>16([ b') a g fis e] } d8[ d ees d] |
    r16 \times 3/5 { a16[ c fis a c] } r8 <fis, c a>4 <fis c a>8 |
    \times 2/3 { <g b,>16([ b) a g fis e] } d8[ d ees d] |
    cis8.[ e16] a4. cis,8 |
    e8.[ d16] d4 r |
  }
  \repeat volta 2 {
    r4 r8 <d a fis>8[ <d a fis>8 <d a fis>8] |
    r4 r8 <d bes g>8[ <d bes g>8 <d bes g>8] |
    r4 cis' cis8.[ cis16] |
    <d fis, d>4 r8 \acciaccatura d8 <c e,>8[
      \acciaccatura c8 <b d,>8 \acciaccatura b8 <a c,>8] |
    <g b,>2 <g b,>4 |
    fis2 fis4 |
    <g b,>2 <g b,>4 |
    fis2 fis4 |
    <g b,>4 <a fis c> <b f d> |
    c8.[_\glissez\glissando e16] e8[ gis, gis gis] |
    a8.[_\glissez\glissando d16] d8[ fis, fis fis] |
    <g bes,>2 <g e! bes>4 |
    <g d b!>2 <g c, a>16_([ fis) e fis] |
    <g b,>4 s4 c,4\rest |
  }
}

mLowerVoice = \relative c {
  \voiceTwo
  \repeat volta 2 {
    <b' g>2 <c d,>4 |
    <b g,>2. |
    c4 r r |
    << { \shiftOn b8[ bes] a4 r } \\ { d,2 r4 } >> |
    d4 d d |
    g,4 r8 <g' b>8[ <fis c'> <g b>8] |
    d4 d d |
    b4 r8 <g' b>8[ <e c'> <g b>8] |
    <g a>2 <g a,>4 |
    <d fis>2 r4 |
  }
  \repeat volta 2 {
    \times 2/3 { d16^([ fis) a d a fis] } d2 |
    \times 2/3 { d16^([ g) bes d bes g] } d2 |
    \times 2/3 { ees16[ g bes e g b] } r8 <g e>8 <g e>8[ <g e>8] |
    s4 r8 r8 r4 |
    r8 g,,[ b e d c ] |
    << { \shiftOn c'8.[b16] a_([ gis) a b] c[_( b) c a] } \\ { d,2 d4 } >> |
    r8 g,[ b e d c] |
    << { \shiftOn c'8.[b16] a_([ gis) a b] c[_( b) c a] } \\ { d,2 d4 } >> |
    g8 g g[ g] g g |
    <g' e>8. r16 r4 <d b e,> |
    << { \stemDown\shiftOn c8. c16\rest c4\rest <c a> } \\ { a,4 a\rest d} >> |
    ees4 d cis |
    d d d |
    g4 g, d'4\rest
  }
}

%%%
%%% Second part: WALZE
%%%
% 
% NOTES
% 
% 1. Bar 12 was set poorly in source: the B in the inner voice appears
% to be an eighth but surely must be a fourth. I set it all in the
% lower voice.
% 
vUpperVoice = \relative c' {
  \voiceOne
  \key g \major
  \partial 8 { b'16.[ g32] }
  \repeat volta 2 {
    d8[ d] e16.[ cis32] |
    <d b>4 g16.[ d32] |
    b8[ b] c16[ ais] |
    b4 a16[ g] |
    fis16[ b_(] c[) e] d[ c] |
    b16.[ d32] g8[ g] |
    cis,16.[ e32] a8[ a] |
    <d, fis,>4 r8
  }
  \repeat volta 2 {
    r4 c'16.[ b32] |
    a8[ a] b16[ gis] |
    a4 d16[ b] |
    g8[ g] a16[ fis] |
    <g b,>4 g16.[ fis32] |
    fis16_([ e)] dis[ e fis g] |
    <d g,>8[ b] e16.[ d32] |
    d16_([ c)] b16[ c a d] |
    g,4 r8
  }
  \key bes \major
  \repeat volta 2 {
    d'16.[ ees32] d8[ cis] |
    d8[ bes'] a16[ g] |
    <fis a,>4 <a c,>8 |
    a4_( g8) |
    d16.[ ees32] d8[ d] |
    b8_([ c)] <g' des bes~>8 |
    <f bes,>16.[ d!32] bes8[ \acciaccatura d8 c] |
    <bes d,>4 r8
  }
  \repeat volta 2 {
    d16.[ ees32] f8 g |
    g8_( f4) |
    bes,16.[ c32] d8 ees |
    ees8 d8[ b!] |
    c16.[ d32] ees4 |
    r8 c8[ bes] |
    bes8[ a fis] |
    <g bes,>4 r8
  }
}

vLowerVoice = \relative c' {
  \key g \major
  \voiceTwo
  \partial 8 { b8\rest }
  \repeat volta 2 {
    <b g>4 <bes g>8 |
    g4 b8\rest |
    d,4 e8 |
    d4 c16[ b] |
    a4. |
    <g' g,>4. |
    <g a,>4. |
    d4 r8
  }
  \repeat volta 2 {
    r4 r8 |
    <c' e>4 <d f>8 |
    <c e>4 c8\rest |
    <b d,>4 <c d,>8 |		%bar 12 - see Note 1
    g,4 r8 |
    <g' c,>4. |
    b,4 r8 |
    fis4. |
    g4 r8
  }
  \key bes \major
  \repeat volta 2 {
    <bes' g>4 <bes g>8 |
    <bes g>4 r8 |
    d,16.[ ees32] d4 |
    <bes' g,>4. |
    <bes g>4 <aes f>8 |
    <g ees>4 e8 |
    f4 <ees f,>8 |
    bes4 r8
  }
  \repeat volta 2 {
    bes'4 <d bes>8 |
    <c a>4 <c a>8 |
    g4 <bes g>8 |
    <a fis>4 <aes f>8 |
    <g ees>4 <g ees>8 |
    <fis d>4 <g ees>8 |
    <ees c>4 d8 |
    g,4 r8
  }
}

%%%
%%% SYSTEMS
%%%
\score {			% Minuet
  <<
    \new Staff = "guitar"
    <<
      \set Staff.instrumentName = #"MINUET."
      \key g \major
      \time 3/4
      \clef "treble_8"
      \mergeDifferentlyHeadedOn
      \context Voice = "mUpperVoice" \mUpperVoice
      \context Voice = "mLowerVoice" \mLowerVoice
   >>
 >>
  \layout {}
}

\score {			% Waltz
  <<
    \new Staff = "guitar"
    <<
      \set Staff.instrumentName = #"VALSE."
      \time 3/8
      \clef "treble_8"
      \mergeDifferentlyHeadedOn
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
      \set Staff.midiInstrument = #"acoustic guitar (nylon)"
      \key g \major
      \time 3/4
      \mUpperVoice
      \mLowerVoice
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
      \set Staff.midiInstrument = #"acoustic guitar (nylon)"
      \time 3/8
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
