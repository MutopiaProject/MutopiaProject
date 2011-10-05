\version "2.14.2"

\header {
  mutopiatitle = "Six Petites Pièces, No. 2"
  mutopiacomposer = "AguadoD"
  source = "Statens musikbibliotek - The Music Library of Sweden"
  title = "Six Petites Pièces"
  composer = "Dionisio Aguado"
  instrument = "Guitar"
  opus = "Op. 4, No. 2"
  style = "Classical"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl at glx.com"
 footer = "Mutopia-2011/10/01-1786"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2011. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\layout {
  indent = 72\pt
  short-indent = 0\mm
}

%{ NOTES
   -----
   1. Both parts of this piece starts with the markup '6° en Pu.' (or
   Pue.?). I suspect it has something to do with drop-D tuning since
   both parts would require the E (6th) string to be detuned. Since I
   cannot be entirely accurate with the markup, it has been omitted.

   Other scans of the source (Boije 4) are no better.
%}

%%%
%%% First part: MINUET
%%%
mUpperVoice = \relative c'' {
  \voiceOne
  \slurDown
  \repeat volta 2 {
    d8 d16 d d8[ d] d d |
    d4 cis r |
    d8 d16 d d8[ d] d d |
    bis4 a r |
    g8 g16 g16 g8[ g] g g |
    <a, g'>2 <a f'>4 |
    f'8([ e]) e([ d]) d([ cis)] |
    <g e'>2 <f d'>4 |
  }
  \repeat volta 2 {
    <e cis'>8 <g e'> <e cis'>8[ <g e'>8] <e cis'> <g e'> |
    <f d'>16([ cis') d e] \acciaccatura { g8 } f16[ e f g] gis[ a bes a] |
    <e, cis'>8 <g e'> <e cis'>8[ <g e'>8] <e cis'> <g e'> |
    <f d'>16([ cis') d e] \acciaccatura { g8 } f16[ e f g] a4 |
    d8 d16 d d8[ d] c4 |
    <g bes>4 <f a> <e g> |
    <d fis>4 <d e> <cis e> |
    <d f,>2 r4 |
  }
}

mLowerVoice = \relative c, {
  \voiceTwo
  \stemDown
  \repeat volta 2 {
    d2. |
    a'2 r4 |
    bes2. |
    <f' c'>2 c4\rest |
    e2 d4 |
    cis2 d4 |
    a2 a4( |
    a4) a d |
  }
  \repeat volta 2 {
    \slurUp
    a8 bes a[ bes] a4 |
    d,2 g'4\rest |
    a,8[ bes16( a16]) a8[ bes16( a16]) a4 |
    d,2. |
    d'2 fis4 |
    g4 a bes |
    a,2 a4 |
    d2 r4 |
  }
}

mInnerVoice = \relative c' {
  \voiceThree
  \stemDown
  \slurDown
  \repeat volta 2 {
    <d f>4 <d f> <d f> |
    <e g>2 r4 |
    d4 d d |
    s2 b4\rest |
    bes4 bes bes |
    s2. |
    \stemUp g4 f e( |
    e2) s4 |
  }
  \repeat volta 2 {
    \stemDown
    \slurUp
    \repeat unfold 4 { s2. }
    fis'8 fis fis[ fis] a4 |
    s2. |
    a,8( bes) a8[ gis] a g |
    s2.
  }
}

%%%
%%% Second part: VALSE
%%%
vUpperVoice = \relative c' {
  \voiceOne
  \slurDown
  \key f \major
  \repeat volta 2 {
    d16.[^\segno e32] f8 d |
    cis16.[ e32] a4 |
    g16.[ bes32] a8 g |
    f16.[ a32] d4 |
    <fis, a>4 <fis a>8 |
    g16.[ a32] bes8 g |
    <b, d gis>4 <b d gis>8 |
    <cis a'>4 s8 |
  }
  \repeat volta 2 {
    a'16.[ b32] a8 a |
    gis16.[ b32] d4 |
    g,16.[ a32] g8 a8 |		% g8 g8 or g8 a8 ? source is not clear
    f16.[ a32] d4 |
    f,16.[ g32] f8 f |
    <ees g,>8^\markup{ \italic glissez }\glissando bes'4 |
    d,4 cis16[ e] |
  }
  \alternative {
    { <d f,>4 r8 | }
    { <d f,>8 s4 | }
  }
  \key d \major
  \repeat volta 2 {
    r16 a16([ b]) cis[ d e] |
    fis4 e16[ d] |
    e4 d16[ cis] |
    d4 s8 |
    a16\rest a16([ b]) \times 2/3 { cis[ d e] } \times 1/3 { fis([ g) gis] } |
    a4 gis16[ a] |
    b4 cis16[ b] |
    a4 r8 |
    r16 a16 gis([ a]) g([ a]) |
    fis4 g16[ fis] |
    e4 fis16[ e] |
    e4 d8 |
    \times 2/3 { b16([ cis) dis] } \times 2/3 { e([ fis) g] } \times 2/3 { g([ a) b] } |
    d,4 e16[ d] |
    \grace { b16[ cis d] } cis4 b16[ cis] |
    <fis, d'>4 r8 |
    b4\rest b8\rest^\segno
  }
  \bar "|."
}

vLowerVoice = \relative c, {
  \voiceTwo
  \key f \major
  \repeat volta 2 {
    d4. |
    a' |
    cis |
    d |
    s4. |
    s4. |
    e16.[ f32] e8 e |
    a,4 s8 |
  }
  \repeat volta 2 {
    a4. |
    a4 a8 |
    a4. |
    a4 a8 |
    a4. |
    bes8 r8 r8 |
    a4. |
  }
  \alternative {
    { d4 r8 | }
    { d4 s8 | }
  }
  \key d \major
  \repeat volta 2 {
    c8\rest r8 s8 |
    d,4. |
    a' |
    d, |
    d |
    a' |
    e' |
    a, |
    s4. |
    d,4. |
    ais' |
    b |
    s4. |
    a4. |
    a4. |
    d4 r8 |
    s4. |
  }
}

vInnerVoice = \relative c {
  \voiceThree
  \key f \major
  \repeat volta 2 {
    f4 f8 |
    e4. |
    \stemDown
    e'4 e8 |
    d4. |
    d16.[ ees32] d8 c |
    bes4 bes8 |
    s4. |
    s4. |
  }
  \repeat volta 2 {
    cis4 cis8 |
    d4 d8 |
    <cis e>4 <cis e>8 |
    d4. |
    <d a>4 <d a>8 |
    s4. |
    f,8 e4 |
  }
  \alternative { {s4.} {s4.} }
  \key d \major
  \repeat volta 2 {
    s4. |
    g8\rest <fis a>8 <fis a> |
    g8\rest <g a>8 <g a> |
    g8\rest \stemUp <fis a>8 <fis a> |
    s4. |
    \stemDown b8\rest <a cis>8[ <a cis>8] |
    c8\rest <d e>8[ <d e>8] |
    c8\rest <a cis>8[ <a cis>8] |
    <a cis>16 g16\rest g8\rest g8\rest |
    g8\rest <fis a>8[ <fis a>8] |
    g8\rest <g b>8[ <g b>8] |
    fis4. |
    g4. |
    g8\rest <fis a>8[ <fis a>8] |
    g8\rest <e g>8[ <e g>8] |
    s4. |
    s4.
  }
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
      \key b \major
      \mergeDifferentlyHeadedOn
      \mergeDifferentlyDottedOn
      \context Voice = "mUpperVoice" \mUpperVoice
      \context Voice = "mLowerVoice" \mLowerVoice
      \context Voice = "mInnerVoice" \mInnerVoice
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
      \key b \major
      \time 3/4
      \mergeDifferentlyHeadedOn
      \context Voice = "vUpperVoice" \vUpperVoice
      \context Voice = "vLowerVoice" \vLowerVoice
      \context Voice = "vInnerVoice" \vInnerVoice
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
      \key a \major
      \set Staff.midiInstrument = #"acoustic guitar (nylon)"
      \mUpperVoice
      \mLowerVoice
      \mInnerVoice
   >>
  }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 120 4)
    }
  }
}

\score {
  \unfoldRepeats {
    <<
      \time 3/4
      \set Staff.midiInstrument = #"acoustic guitar (nylon)"
      \vUpperVoice
      \vLowerVoice
      \vInnerVoice
   >>
  }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 100 4)
    }
  }
}
