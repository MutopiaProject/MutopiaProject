\version "2.18.2"

\header {
  mutopiatitle = "Six Petites Pièces, No. 2"
  mutopiacomposer = "AguadoD"
  source = "Mainz: B. Schott"
  % source = "Statens musikbibliotek - The Music Library of Sweden"
  % http://urn.kb.se/resolve?urn=urn:nbn:se:statensmusikverk-4033
  date = "1830"
  title = "Six Petites Pièces, No. 2"
  composer = "Dionisio Aguado"
  instrument = "Guitar"
  opus = "Op. 4, No. 2"
  style = "Classical"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2015/08/14-1786"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2015 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " " \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

\layout {
  indent = 72\pt
  short-indent = 0\mm
}
\header{ piece = \markup{"Tuning: D-A-D-G-B-E"} } % {\italic "6° en Re"}
%%%
%%% First part: MINUET
%%%
mUpperVoice = \relative c'' {
  \voiceOne
  \slurDown
  \key d \minor
  \repeat volta 2 {
    d8 d16 d d8[ d] d d |
    d4 cis r |
    bis8 bis16 bis bis8[ bis] bis bis |
    bis4 a r |
    g8 g16 g16 g8[ g] g g |
    <a, g'>2 <a f'>4 |
    f'8([ e]) e([ d]) d([ cis)] |
    <g e'>2 <f d'>4 |
  }
  \repeat volta 2 {
    <e cis'>8 <g e'> <e cis'>8[ <g e'>8] <e cis'> <g e'> |
    \barNumberCheck #10
    <d' f,>16([ cis) d e] \slashedGrace { g8 } f16[ e f g] gis[ a bes a] |
    <e, cis'>8 <g e'> <e cis'>8[ <g e'>8] <e cis'> <g e'> |
    <f d'>16([ cis') d e] \slashedGrace { g8 } f16[ e f g] a4 |
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
    \barNumberCheck #10
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
    s2. |
    \barNumberCheck #10
    s2. |
    s2. |
    s2. |
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
    { \set Timing.measureLength = #(ly:make-moment 1/4)
      <d f,>8 s8
      \set Timing.measureLength = #(ly:make-moment 3/8)
    }
  }
  \key d \major
  \repeat volta 2 {
    r16 a16([ b]) cis[ d e] |
    fis4 e16[ d] |
    e4 d16[ cis] |
    d4 s8 |
    a16\rest a16([ b]) \tuplet 3/2 { cis[ d e] } \tuplet 3/1 { fis([ g) gis] } |
    a4 gis16[ a] |
    b4 cis16[ b] |
    a4 r8 |
    r16 a16 gis([ a]) g([ a]) |
    fis4 g16[ fis] |
    e4 fis16[ e] |
    e4 d8 |
    \tuplet 3/2 { b16([ cis) dis] } \tuplet 3/2 { e([ fis) g] } \tuplet 3/2 { g([ a) b] } |
    d,4 e16[ d] |
    \grace { b16[ cis d] } cis4 b16[ cis] |
    <fis, d'>4 r8 |
    R4.
  }
  \bar "|."
}

vLowerVoice = \relative c, {
  \voiceTwo
  \repeat volta 2 {
    d4. |
    a'4. |
    cis4. |
    d4. |
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
    { \set Timing.measureLength = #(ly:make-moment 1/4)
      d4
      \set Timing.measureLength = #(ly:make-moment 3/8)
    }
  }
  \repeat volta 2 {
    c8\rest r8 s8 |
    d,4. |
    a'4. |
    d,4. |
    d4. |
    a'4. |
    e'4. |
    a,4. |
    s4. |
    d,4. |
    ais'4. |
    b4. |
    s4. |
    a4. |
    a4. |
    d4 r8 |
    s4.^\segno |
  }
}

vInnerVoice = \relative c {
  \voiceThree
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
  \alternative {
    {s4.}
    { \set Timing.measureLength = #(ly:make-moment 1/4)
      s4
      \set Timing.measureLength = #(ly:make-moment 3/8)
    }
  }
  \repeat volta 2 {
    s4. |
    g8\rest <fis a>8 <fis a> |
    g8\rest <g a>8 <g a> |
    g8\rest \stemUp <fis a>8 <fis a> |
    s4. |
    \stemDown b8\rest <a cis>8[ <a cis>8] |
    c8\rest <d e>8[ <d e>8] |
    c8\rest <a cis>8[ q8] |
    <a cis>16 g16\rest g8\rest g8\rest |
    g8\rest <fis a>8[ <fis a>8] |
    g8\rest <g cis>8[ q8] |
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
    \new Staff = "minuet" \with {
      instrumentName = #"MINUET."
      midiInstrument = #"acoustic guitar (nylon)"
    } <<
      \clef "treble_8"
      \time 3/4
      \mergeDifferentlyHeadedOn
      \mergeDifferentlyDottedOn
      \context Voice = "mUpperVoice" \mUpperVoice
      \context Voice = "mLowerVoice" \mLowerVoice
      \context Voice = "mInnerVoice" \mInnerVoice
   >>
 >>
  \layout {}
  \midi {
    \tempo 4 = 120
  }
}

\score {
  <<
    \new Staff = "valse" \with {
      instrumentName = #"VALSE."
      midiInstrument = #"acoustic guitar (nylon)"
    } <<
      \clef "treble_8"
      \time 3/8
      \mergeDifferentlyHeadedOn
      \context Voice = "vUpperVoice" \vUpperVoice
      \context Voice = "vLowerVoice" \vLowerVoice
      \context Voice = "vInnerVoice" \vInnerVoice
   >>
 >>
  \layout {}
  \midi {
    \tempo 4 = 100
  }
}
