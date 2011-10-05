\version "2.14.2"

\header {
  mutopiatitle = "Six Petites Pièces, No. 3"
  mutopiacomposer = "AguadoD"
  source = "Statens musikbibliotek - The Music Library of Sweden"
  title = "Six Petites Pièces"
  composer = "Dionisio Aguado"
  instrument = "Guitar"
  opus = "Op. 4, No. 3"
  style = "Classical"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl at glx.com"
 footer = "Mutopia-2011/10/01-1787"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2011. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\layout {
  indent = 72\pt
  short-indent = 0\mm
}

%%%
%%% First part: MINUET
%%%
mUpperVoice = \relative c' {
  \voiceOne
  \slurDown
  \repeat volta 2 {
    <cis a'>4 <b d gis>4 r4 |
    <d b'> <cis a'> gis'16([ a]) e16[ cis] |
    a8. gis16 a8[ b] cis[ dis8] |
    <gis, e'>4 c8\rest e8 dis16([ e) fis e] |
    d'4. cis16[ b] a16[ gis fis e] |
    d2 cis4 |
    \times 2/3 { b8[ d fis] } a,8[ \grace { cis16[ b a] } a8] cis8.[ b16] |
    <a cis,>4 r4 r4
  }
  \repeat volta 2 {
    cis'8[ cis16 cis] cis8[ cis] bis8[ b] |
    <fis a>8[ <gis b,>8] <fis a,>4 fis16([ gis) a ais] |
    b8[ b16 b] b8[ b] ais8[ a] |
    gis8[ fis] e4 dis16([ e) fis e] |
    <c a'>4 gis'8.[ e16] dis([ e) fis e] |
    <gis d'>4 <a cis>4\noBeam a8[ b16 c] |
    dis,2. |
    e4. e8 b'8.[ dis,16] |
    e4. e8 b'8.[ dis,16] |
    <e gis,>4 r8 e8^\markup{\italic glissez}\glissando a8.[ a16] |
    gis4 b8.\noBeam b,16^\markup{\italic glissez}\glissando d8.[ d16] |
    cis4 a'8.[ a16] a8[ gis16 fis] |
    e4 a8.[ cis,16] e8[ d16 b] |
    <a cis,>4 r4 r4
  }
}

mLowerVoice = \relative c {
  \voiceTwo
  \repeat volta 2 {
    a4 e' r |
    e, a r |
    r4 r8 <e' gis,>8 <e a,> <fis a,> |
    e,4 c'4\rest c4\rest |
    <e b'>2. |
    r4 <eis gis>4 <fis a> |
    <d fis> e <d e,> |
    a r4 r4
  }
  \repeat volta 2 {
    b'4\rest b8\rest <cis eis>8 <dis fis>8[ <eis gis>8] |
    r8 cis,8 fis4 r4 |
    b4\rest b8\rest <dis b>8 <cis e>8[ <dis! fis>8] |
    e8[ <a, b,>8] <e gis>4 r4 |
    dis4 <e b'> r |
    e fis r |
    r8 c'[ b a gis a] |
    << { \stemDown \shiftOn e,2 b'4 } \\ { gis'8[ b] gis[ b] a[ b] } >> |
    << { \stemDown \shiftOn e,,2 b'4 } \\ { gis'8[ b] gis[ b] a[ b] } >> |
    e,,4 r4 r4 |
    <e' d'>4 r4 r4 |
    a4 r4 <c dis,>4 |
    <cis! e,>4. r8 <d, e,>4 |
    a4 r r
  }
}

%%%
%%% Second part: VALSE
%%%
vUpperVoice = \relative c' {
  \voiceOne
  \partial 8 { e16. a32 }
  \repeat volta 2 {
    a8 gis e |
    a4. |
    b4. |
    cis4 a16._([ cis32]) |
    e,8[ e] e16._([ a32]) |
    cis,8[ cis] \acciaccatura gis'8 fis16.[ e32] |
    e8.\noBeam d16 b16[ gis] |
    <a cis,>4 s8 |
  }
  \repeat volta 2 {
    s4 cis16[ cis] |
    <a cis>8 <a cis> <b d> |
    cis8[ a'] gis16 fis |
    eis4 fis16[ gis] |
    fis8 cis a'16[ gis] |
    gis( fis) eis[ fis] gis fis |
    e8 a8.\noBeam cis,16 |
    e8. d16\noBeam b16[ gis] |
    a4 s8
  }
  \repeat volta 2 {
    <a cis>8 <a cis> <b d> |
    <cis e>4. |
    <d fis>8 <fis a>8.\noBeam <d fis>16 |
    <cis e>4. |
    \acciaccatura b'8 <a fis> <e gis> <d fis> |
    <cis e> <bis dis> <b d> |
    <a cis>8 <a e'>8.\noBeam <a cis>16 |
    <gis b>4. |
    <a cis>8 <a cis> <b d> |
    <cis e>4. |
    <d fis>8 <fis a>8.\noBeam <fis d>16 |
    <cis e>4. |
    a'8 <gis b> <g cis> |
    d' e fis |
    a, cis8.\noBeam fis,16 |
    <cis a'>4.
  }
}

vLowerVoice = \relative c' {
  \voiceTwo
  \partial 8 { r8 }
  \repeat volta 2 {
    <b d>4. |
    << { \stemDown <a cis>4. } \\ { \slurUp e'8\rest e16([ fis]) e8 } >> |
    << { \stemDown <gis, d'>4. } \\ { f'8\rest e16[ e] e8 } >> |
    <a, cis>4 r8 |
    cis4 r8 |
    a4. |
    <d, e,>4. |
    a4 s8
  }
  \repeat volta 2 {
    s4 r8 |
    fis'8[ fis eis]
    <fis a>4 r8 |
    <b cis,>4. |
    <fis a>4 r8 |
    d4. |
    cis4 a8 |
    b8 e,4 |
    a4 s8
  }
  \repeat volta 2 {
    a4. |
    << { \stemDown f'8\rest a16[ a] a8 } \\ { a,4. } >> |
    a4 a'8 |
    << { \stemDown f8\rest a16[ a] a8 | } \\ { a,4. } >> |
    a4. |
    a4. |
    a8 cis a |
    << { d16\rest e16 dis_( e) d b } \\ { e,4. } >> |
    a4. |
    << { e'8\rest \stemDown a16[ a] a8 } \\ { a,4. } >> |
    a4 a'8 |
    << { e8\rest \stemDown a16[ a] a8 } \\ { a,4. } >> |
    << { \stemDown\shiftOn\override Stem #'length-fraction = #(magstep -2)
	 cis'8 d e } \\ { a,,4. } >> |
    <fis'' d,>4. |
    << { \stemDown\shiftOn cis8 e d } \\ { e,,4. } >>  |
    a4.
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
      \key a \major
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
      \key a \major
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
\score {			% Minuet
  \unfoldRepeats {
    <<
      \set Staff.midiInstrument = #"acoustic guitar (nylon)"
      \key a \major
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
\score {			% Waltz
  \unfoldRepeats {
    <<
      \set Staff.midiInstrument = #"acoustic guitar (nylon)"
      \key a \major
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
