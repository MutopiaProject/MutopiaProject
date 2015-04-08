\version "2.18.2"
\language "deutsch"

% Requires Libertine Open Fonts from http://www.linuxlibertine.org/

\header {
  title = "Christ Lag In Todesbanden"
  subtitle = "BWV 277"
  composer = "J. S. Bach"
  shortcomposer = "Bach"
  maintainer = "Tim Schellenberg"
  maintainerWeb = "trschell@gmail.com"
  style = "Baroque"
  source = "Breitkopf & Härtel, Leipzig, 1875"
  mutopiacomposer = "BachJS"
  mutopiapoet = "Martin Luther"
  mutopiaopus = "BWV 277"
  mutopiainstrument = "Choir (SATB)"
  license = "cc-by-sa"
  date = "unknown"
  lastupdated = "2015-02-23"

 mutopialicense = "Creative Commons Attribution-ShareAlike 4.0"
 footer = "Mutopia-2015/04/03-2006"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2015 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " " \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

#(set-global-staff-size 18.1)


\paper {
  ragged-bottom = ##f
  ragged-last-bottom = ##f
  last-bottom-spacing #'basic-distance = 15
  myStaffSize = #18.5
  fonts = #(make-pango-font-tree
            "Linux Libertine O"
            "Linux Biolinum O"
            "Ubuntu Mono"
            (/ myStaffSize 20))
}

\layout {
  \override Staff.ClefModifier.font-name = #"Century Schoolbook L bold italic"
  \override Staff.ClefModifier.extra-offset = #'(-0.3 . 0.07)
  \override Score.BarNumber.font-name = #"Century Schoolbook L"
}

global = {
  \key a \minor
  \time 4/4
  \partial 4
  \autoBeamOff
  \accidentalStyle modern-voice
}

fe = \fermata

soprano = \relative c'' {
  \global
  \repeat volta 2 {
    a4 | gis a8[ h] c4 d | c( h) a\fe
    a4 | f g a g8[ f] | e[( d] e4) d\fe
  } \break
  r4  | \once \override Score.BarNumber.break-visibility = #all-visible
  d8[ e] f4 g d8[ e] | f4 g a\fe
  a4 | d cis d e8[( d]) | c4 h a\fe
  h4 | c a8[ b] c4 g | f( e) d2\fe |
  a'4 g f( e) | d2. \fe
  \bar "|."
}

alto = \relative c' {
  \global
  \repeat volta 2 {
    f4 | f8( e4) gis8 a4 h | h8( a4 gis8) e4\fe
    e4 | e8[ d] cis[ d] e4. d8 | cis8( d4 cis8) a4\fe
  }
  r4 | a4 d d8[ c] b[ c] | d[ a] d[ c] c4\fe
  f8[ g] | a[ b8] b8[ a8] a4 e | e8( f4) e8 e4\fe
  f4 | f8[ e] f4 f e~ | e8 d4( cis8) d2\fe |
  d4. e8 cis( d4 cis8) | a2.\fe
}

tenor = \relative c' {
  \global
  \repeat volta 2 {
    d8[ c] | h4 c8[ d] e4 f8[ e] | e8( f4 e16[ d]) cis4\fe
    a4 | a4 b a a | a8[ f g e] f4\fe
  }
  r4 | f8[ g] a4 g8[ a] b4 | a8[ f'] f[ e8] f4\fe
  c4 | f, g d'8[ c] h4 | h8[ a] a[ gis8] c4\fe
  d4 | g,8[ c] c4 c8[ d] e[ d] | cis8[( a] b8[ a16 g]) f2\fe |
  a8[ c] b4 a( g~ | g fis8[ e]) fis4\fe
}

bass = \relative c' {
  \global
  \repeat volta 2 {
    d,4 | d4 c8[ h] a( a'4) gis8 | a8[ f d e] a,4\fe
    cis4 | d8[ f] e[ d] cis[ a] d4 | a'4( a,) d\fe
  }
  r4 | d4. c8 b[ a] g4 | d'8[ c] b[ c] f,4\fe
  f'8[ e] | d4 e fis gis | a8[ f] d[ e] a,4\fe
  d4 | c f,8[ g] a[ b] c[ b] | a[ f g a] b2\fe |
  fis4 g a2 | d,2.\fe
}


text = \lyricmode {
  Christ lag in To -- des -- ban -- den für un -- ser Sünd ge -- ge -- ben,
  Des wir sol -- len fröh -- lich sein, Gott lo -- ben und ihm dank -- bar sein,
  und sin -- gen Hal -- le -- lu -- ja, Hal -- le -- lu -- ja!
}

textB = \lyricmode {
  der ist wie -- der er -- stan -- den und hat uns bracht das Le -- ben.
}


\score {
  \new ChoirStaff <<
    \new Staff \with {
      instrumentName = "Soprano"
    } { \soprano }
    \addlyrics { \text }
    \addlyrics { \textB }
    \new Staff \with {
      instrumentName = "Alto"
    } { \alto }
    \addlyrics { \text }
    \addlyrics { \textB }
    \new Staff \with {
      instrumentName = "Tenor"
    } { \clef "treble_8" \tenor }
    \addlyrics { \text }
    \addlyrics { \textB }
    \new Staff \with {
      instrumentName = "Bass"
    } { \clef "bass" \bass }
    \addlyrics { \text }
    \addlyrics { \textB }
  >>
  \layout { }
}

\score {
  \unfoldRepeats
  <<
    \soprano
    \alto
    \tenor
    \bass
  >>
  \midi {
    \set Score.midiInstrument = "oboe"
    \tempo 4 = 60
  }
}
