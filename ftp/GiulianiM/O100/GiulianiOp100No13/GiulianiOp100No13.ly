\version "2.14.2"

\header {
  title = "24 Studies for the Guitar"
  mutopiatitle = "24 Studies for the Guitar, No. 13"
  source = "Statens musikbibliotek - The Music Library of Sweden"
  composer = "Mauro Giuliani"
  opus = "Op. 100"
  piece = "No. 13. Caprice"
  mutopiacomposer = "GiulianiM"
  mutopiainstrument = "Guitar"
  style = "Classical"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl at glx.com"
 footer = "Mutopia-2011/12/12-1809"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-0.5 MutopiaProject \hspace #-0.5 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-0.5 LilyPond \hspace #-0.5 \teeny .org } by \maintainer \hspace #-0.6 . \hspace #0.5 Copyright © 2011. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\layout {
  indent = 60\pt
  short-indent = 0\pt
  ragged-last-bottom = ##t
}

%showLastLength = r2.*5
%mbreak = \break
mbreak = {}

keyTime = { \key g \major \time 3/4 }

upperVoice = \relative c' {
  \voiceOne
  r8 e,[ g b c_(\> b)\! ] |
  r8 e,[ g b c_(\> b)\! ] |
  r8 dis,[ a' b c\> b\! ] |
  r8 dis,[ a' b c\> b\! ] |
  \mbreak
  r8 e,[ g b c_(\> b)\! ] |
  r8 a[ c fis g_(\> fis)\! ] |
  r8 g,[ b e fis_(\> e)\! ] |
  dis8[ c b a g fis] |
  r8 e[ g b c_(\> b)\! ] |
  r8 e,[ g b c_(\> b)\! ] |
  \mbreak
  r8 d,[ a' c d_(\> c)\! ] |
  r8 d,[ a' c d_(\> c)\! ] |
  r8 d,[ g b c_(\> b)\! ] |
  a8[ b c d e fis] |
  r8 g[ d b d g] |
  \mbreak
  g,2 r4 |
  r8 b[ d d e_(\> d)\! ] |
  r8 b[ d d e_(\> d)\! ] |
  gis,8^\markup{"I"} [ e, b' e g b] |
  e8_( [ f) e d c b] |
  r8 c[ e e f_(\> e)\! ] |
  \mbreak
  r8 cis[ e e fis!_(\> e)\! ] |
  ais,^\markup{"II"} [ fis, cis' fis ais c] |
  fis_( [ g) fis e d cis] |
  r8 <b d>8[ <b d> <b d>8] d,[ <b' d>8] |
  r8 <b d>8[ <b d> <b d>8] fis[ <b d>8] |
  \mbreak
  r8 <b d>8[ <b d>8 <b d>8] d,[ <b' d>8] |
  r8 <b cis>8[ <b cis>8 <b cis>8] fis[ <ais cis>8] |
  r8 b8^\markup{"I"} [ ais b] c![ b] |
  a!8[ b] fis[ b] a[ b] |
  g8[ b] dis,[ b'] e,[ b'] |
  \mbreak
  g8[ b] fis[ b] e,[ b'] |
  r8 b8[ ais b c b] |
  a!8[ b] fis[ b] a[ b] |
  g8[ b] fis[ b] e,[ b'] |
  g8[ b] fis[ b] e,[ b'] |
  r8 dis,8[ fis b ais b] |
  \mbreak
  r8 e,[ g b ais b] |
  r8 dis,[ fis b ais b] |
  r8 e,[ g b ais b] |
  r8 dis,[ fis b ais b] |
  r8 dis,[ fis b ais b] |
  \mbreak
  r8 e,[ g b c_(\> b)\! ] |
  r8 e,[ g b c_(\> b)\! ] |
  r8 dis,[ a'! b c_(\> b)\! ] |
  r8 dis,[ a' b c_(\> b)\! ] |
  r8 e,[ g b c_(\> b)\! ] |
  \mbreak
  r8 a[ c fis g_(\> fis)\! ] |
  r8 g,[ b e fis_(\> e)\! ] |
  dis8[ c b a g fis] |
  r8 e[ g b c_(\> b)\! ] |
  r8 gis[ b e fis_(\> e)\! ] |	% f natural ?
  \mbreak
  r8 a,[ c e f_(\> e)\! ] |
  r8 g,![ cis e fis!_(\> e)\! ] |
  r8 g,[ b e g_(\> e)\! ] |
  r8 fis,[ a dis fis dis] |
  r8 e,[ g b c_(\> b)\! ] |
  \mbreak
  r8 dis,[ a' b c_(\> b)\! ] |
  r8 e,[ g b c_(\> b)\! ] |
  r8 dis,[ a' b c_(\> b)\! ] |
  r8 e,[ g b c_(\> b)\! ] |
  r8 b[ d e f_(\> e)\! ] |
  \mbreak
  r8 a,[ c e fis!_(\> e)\! ] |
  r8 g,[ b e] fis,[ dis'] |
  r8 e[ g b c_(\> b)\! ] |
  r8 dis,[ fis b c_(\> b)\! ] |
  r8 e,[ g b c_(\> b)\! ] |
  \mbreak
  r8 dis,[ fis b c_(\> b)\! ] |
  r8 e,[ g b c_(\> b)\! ] |
  r8 b,[ d e f_(\> e)\! ] |
  r8 a,[ c e fis!_(\> e)\! ] |
  r8 g,[ b e] fis,[ dis'] |
  \mbreak
  r8 g,[ b e fis_(\> e)\! ] |
  r8^\markup{"III"} b[ e g a_(\> g)\! ] |
  r8^\markup{"VII"} e[ g b c_(\> b)\! ] |
  r8^\markup{"XII"} g[ b e fis_(\> e)\! ] |
  r8 g,[ b e g_(\> e)\! ] |
  \mbreak
  b,2\rest b4\rest |
  <g b e>4^\markup{"I"} <g b e>4 <g b e>4 |
  <g b e>2.
  \bar "|."
}

lowerVoice = \relative c {
  \voiceTwo
  e,2.^\markup{"I"} |
  e2. |
  fis2. |
  fis2. |
  %
  g2. |
  a2. |
  b2. |
  b4 b\rest b\rest |
  e,2. |
  e2. |
  %
  fis2. |
  fis2. |
  g2. |
  d'2. |
  g2.^\markup{"III"} |
  %
  g2 r4 |
  g2. |
  f2. |
  r2. |
  r2. |
  a2. |
  %
  g2. |
  r2. |
  r2. |
  b,2 d4 |
  e2 fis4 |
  %
  g2 d4 |
  e2 fis4 |
  b,2. |
  a'4 fis a |
  g4 dis e |
  %
  g4 fis e |
  b2. |
  a'4 fis a |
  g4 fis e |
  g4 fis e |
  b4 a\rest a\rest |
  %
  \repeat unfold 5 { b4 a\rest a\rest | }
  %
  e2. |
  e2. |
  fis2. |
  fis2. |
  g2. |
  %
  a2. |
  b2. |
  b4 a\rest a\rest |
  e2. |
  d'2. |
  %
  c2. |
  ais2. |
  b2. |
  b2.^\markup{"II"} |
  e,2. |
  %
  fis2. |
  e2. |
  fis2. |
  e2. |
  gis2. |
  %
  a2. |
  b2 fis'4 |
  e,2.^\markup{"VII"} |
  b'2. |
  e,2. |
  %
  b'2. |
  e,2. |
  gis2. |
  a2. |
  b2 fis'4 |
  %
  \repeat unfold 5 { e,2. | }
  %
  e2 a4\rest |
  e'4\f b g |
  e2.
}


\score {
  <<
    \new Staff = "Guitar"
    <<
      \set Staff.instrumentName = #"Affettuoso."
      \set Staff.midiInstrument = #"acoustic guitar (nylon)"
      \clef "treble_8"
      \keyTime
      \context Voice = "upperVoice" \upperVoice
      \context Voice = "lowerVoice" \lowerVoice
    >>
%{
    \new TabStaff = "guitar tab"
    <<
      \clef moderntab
      \context TabVoice = "upperVoice" \upperVoice
      \context TabVoice = "lowerVoice" \lowerVoice
    >>
%}
  >>
  \layout {}
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 96 4)
    }
    % Giuliani populated this with lots of decrescendi and no crescendi so ...
    % the dynamic performer is removed so you hear melody after the 3rd bar.
    \context {
      \Voice
      \remove "Dynamic_performer"
    }
  }
}
