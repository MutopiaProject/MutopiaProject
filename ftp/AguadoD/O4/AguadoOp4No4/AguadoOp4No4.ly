\version "2.18.2"

\header {
  mutopiatitle = "Six Petites Pièces, No. 4"
  mutopiacomposer = "AguadoD"
  source = "Mainz: B. Schott"
  % source = "Statens musikbibliotek - The Music Library of Sweden"
  % http://urn.kb.se/resolve?urn=urn:nbn:se:statensmusikverk-4033
  date = "1830"
  title = "Six Petites Pièces, No. 4"
  composer = "Dionisio Aguado"
  instrument = "Guitar"
  opus = "Op. 4, No. 4"
  style = "Classical"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2015/11/11-1788"
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
  \repeat volta 2 {
    <a cis,>4 <a cis,>4 <b d,>4 |
    <cis e,>4. <b d,>8 <cis, a'>4 |
    <d b'>2 <d b'>4 |
    <d b'>8. a'16 <a cis,>4 b4\rest |
    d2 d4 |
    cis4.. d16 e8[ a] |
    gis2 a4 |
    <b, gis'>4 r4 r4 |
  }
  \repeat volta 2 {
    s2. |
    \slashedGrace { d8} <a c>8.[ b16] <gis b>4 r4 |
    s2.
    fis'8.[ e16] e4 r4 |
    a,,16[ cis e a] <cis a'>4 <b gis'> |
    fis,16[ a cis fis] <a fis'>4 <gis eis'> |
    <a e'!>8 a'4 a gis8 |
    <d gis>2 <cis a'>4
  }
}

mLowerVoice = \relative c {
  \voiceTwo
  \repeat volta 2 {
    a8 a a[ a] a a |
    a a a a a4 |
    e8[ fis] gis[ fis] gis[ e] |
    a4 a4 b4\rest |
    << { \shiftOn fis'4 f e } \\ { a,2 gis4 } >> |
    << { \shiftOn e'4. f8\rest s4 } \\ { a,2 r4 } >> |
    << { \shiftOn b'8 cis d[ b] cis a } \\ { e2 e4 } >> |
    e4 e,4 r4 |
  }
  \repeat volta 2 {
    e'8. gis16 b8[ b] b b |
    dis,4 e r |
    a8.[ cis16] e8 e e[ e] |
    <d gis,>4 <cis a> r4 |
    r8 e,2~ e8 |
    r8 cis2~ cis8 |
    << { \voiceTwo cis4 d8[ dis8] e4 } \\
       { \voiceThree s4 \once\override Beam.positions=#'(2 . 2) b'8[ bis]
          \once\override Beam.positions=#'(-1 . -.75) cis8_[ d] } >> |
    a4 e\noBeam a,
  }
}

%%%
%%% Second part: ALLEGRO
%%%
aUpperVoice = \relative c' {
  \voiceOne
  \repeat volta 2 {
    \partial 8 { e8 }
    e16([ fis) e dis] e16 r cis r |
    d16([ e) d cis] d r b r |
    cis16 r a r b r a r |
    gis16[ fisis gis a] gis r e'8 |
    e16_([ fis e) dis] e8[ cis] |
    d16_([ e) d cis] d8[ b] |
    cis8[ <a e>8] <b fis>8[ gis] |
    <a cis,>4 r8
  }
  \repeat volta 2 {
     e'8 |
     \slashedGrace{e8} d16[ cis d e] d8 gis |
     \slashedGrace{b8} a16[ gis a b] a8 cis~ |
     cis8 b4\noBeam a8 |
     \slashedGrace{a8} gis16([ fis) gis a] gis8[ e] |
     fis16( e) gis([ e]) a16([ e) b'( e,)] |
     cis'8. b16 a16[ gis fis e] |
     r8 b'8 a[ gis] |
     \set Timing.measureLength = #(ly:make-moment 3/8) <a cis, a>4 r8
  }
  \set Timing.measureLength = #(ly:make-moment 2/4)
  e8_.[ fis16_. gis_.] a_.[ b_. cis_. d_.] |
  e8_.[ e16_. cis_.] a8_.[ a16_. cis_.] |
  b8_.[ b16_. d_.] gis,8_.[ gis16_. b_.] |
  a8_.[ cis16_. b_.] a16_.[ gis_. a_. fis_.] |
  e8[ fis16 gis] a[ b cis d] |
  e8[ e16 b] gis8[ gis16 b] |
  a8[ a16 fis] dis8[ dis16 fis] |
  <e gis,>4 r8
  % There source has an ending repeat without a matching beginning
  % mark. A double bar (no repeat marks) is at this location and my
  % assumption is that this is the start of the final repeat. -gl
  \repeat volta 2 {
    e8 |
    fis4 gis |
    a16_([ b) cis d] e8 cis |
    <b d>4 <a cis> |
    <gis b>4. e8 |
    fis a gis[ b] |
    a16_([ b) cis d] e8[ cis] |
    b8[ b] a16_([ gis) fis gis] |
    <a cis,>4 r8
  }
}

aLowerVoice = \relative c' {
  \voiceTwo
  \repeat volta 2 {
    \partial 8 { r8 }
    cis4 r16 r a r |
    b4 r16 r gis r |
    a16 r fis r d r dis r |
    e4 r |
    cis4. fis,8 |
    b4. e,8 |
    a8[ cis] d[ e] |
    a,4 r8
  }
  \repeat volta 2 {
    r8 |
    <b' e,,>2 |
    <cis a,>2 |
    <d fis>4 <dis fis> |
    e4 r4 |
    dis8[ d] cis[ <d gis,>8] |
    <a cis>8. r16 r4 |
    <fis' d d,>4 <e cis e,>8[ <d b e,>8] |
    \set Timing.measureLength = #(ly:make-moment 3/8) a,4 r8 |
  }
  \set Timing.measureLength = #(ly:make-moment 2/4)
  a2 |
  a2 |
  e2 |
  a2 |
  a2 |
  e2 |
  << { \shiftOn s4 a'4 } \\ { b,2 } >> |
  e4 r8
  \repeat volta 2 {
    r8 |
    << { \voiceTwo e4 e4 } \\
       { \voiceThree \stemDown dis'8[ e] d[ e] } >> |
    << { \voiceTwo a,,4 a\rest } \\
       { \voiceThree \stemDown cis'4 c\rest } >> |
    \stemUp b8\rest \slashedGrace{dis8} e4 \slashedGrace{dis8} e8 |
    << { b8\rest \slashedGrace{dis8} \stemDown e4 b8\rest } \\
       { c,4\rest e4 } >> |
    \stemDown <dis' e,>4 <d e,> |
    << { \voiceTwo a,4. fis'8 } \\
       { \voiceThree\stemDown cis'4 b4\rest } >> 
    <fis' d d,>4 <d b e,> |
    a,4 r8
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
\score {			% Allegro
  <<
    \new Staff = "guitar"
    <<
      \set Staff.instrumentName = #"ALLEGRO."
      \key a \major
      \time 2/4
      \clef "treble_8"
      \mergeDifferentlyHeadedOn
      \context Voice = "aUpperVoice" \aUpperVoice
      \context Voice = "aLowerVoice" \aLowerVoice
   >>
 >>
  \layout {}
}

%%%
%%% MIDI
%%%
\score {			% Minuet
  \new Staff="Guitar"
  <<
    \set Staff.midiInstrument = #"acoustic guitar (nylon)"
    \key a \major
    \time 3/4
    \mUpperVoice
    \mLowerVoice
  >>
  \midi {
    \tempo 4 = 100
  }
}

\score {			% Allegro
  \new Staff="Guitar"
  <<
    \set Staff.midiInstrument = #"acoustic guitar (nylon)"
    \key a \major
    \time 2/4
    \aUpperVoice
    \aLowerVoice
  >>
  \midi {
    \tempo 4 = 100
  }
}
