\version "2.18.2"

\header {
  mutopiatitle = "Six Petites Pièces, No. 3"
  mutopiacomposer = "AguadoD"
  source = "Mainz: B. Schott"
  % source = "Statens musikbibliotek - The Music Library of Sweden"
  % http://urn.kb.se/resolve?urn=urn:nbn:se:statensmusikverk-4033
  date = "1830"
  title = "Six Petites Pièces"
  composer = "Dionisio Aguado"
  instrument = "Guitar"
  opus = "Op. 4, No. 3"
  style = "Classical"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2015/11/11-1787"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2015 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " " \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
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
    \tuplet 3/2 { b8([ d) fis] } a,8[ \grace { cis16[ b a] } a8] cis8.[ b16] |
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
    << {\voiceTwo \once\override Beam.positions=#'(-.75 . -2.5) e8[ a,] <e gis>4 r4 } \\ { b8\rest \voiceThree\stemDown b s2 } >> |
    dis4 <e b'> r |
    e fis r |
    r8 c'[ b a gis a] |
    \repeat unfold 2 {
      << { \stemDown \shiftOn e,2 b'4 } \\ { gis'8[ b] gis[ b] \once\override Beam.positions=#'(-2.5 . -2) a[ b] } >> |
    }
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
  \repeat volta 2 {
    \partial 8 { e16. a32 }
    a8 gis e |
    a4. |
    b4. |
    cis4 a16._([ cis32]) |
    e,8[ e] e16._([ a32]) |
    cis,8[ cis] \slashedGrace gis'8 fis16.[ e32] |
    e8.\noBeam d16 b16[ gis] |
    <a cis,>4
  }
  \repeat volta 2 {
    cis16[ cis] |
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
  \repeat volta 2 {
    \partial 8 { r8 }
    <b d>4. |
    << { \stemDown <a cis>4. } \\ { \slurUp e'8\rest e16([ fis]) e8 } >> |
    << { \stemDown <gis, d'>4. } \\ { f'8\rest e16[ e] e8 } >> |
    <a, cis>4 r8 |
    cis4 r8 |
    a4. |
    <d, e,>4. |
    a4
  }
  \repeat volta 2 {
    r8 |
    fis'8[ fis eis] |
    <fis a>4 r8 |
    <b cis,>4. |
    <fis a>4 r8 |
    d4. |
    cis4 a8 |
    b8 e,4 |
    a4 s8 |
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
    << { \stemDown\shiftOn\override Stem.length-fraction = #(magstep -2)
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
    \new Staff="Guitar"
    <<
      \set Staff.midiInstrument = #"acoustic guitar (nylon)"
      \key a \major
      \time 3/4
      \mUpperVoice
      \mLowerVoice
   >>
  }
  \midi {
    \tempo 4 = 100
  }
}
\score {			% Waltz
    \new Staff="Guitar"
    <<
      \set Staff.midiInstrument = #"acoustic guitar (nylon)"
      \key a \major
      \time 3/8
      \vUpperVoice
      \vLowerVoice
   >>
  \midi {
    \tempo 4 = 100
  }
}
