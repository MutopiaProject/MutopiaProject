\version "2.18.0"
\language "deutsch"

\header {
  title = "Brich an, o schönes Morgenlicht"
  subtitle = "12. Choral – Weihnachtsoratorium"
  composer = "J. S. Bach"
  shortcomposer = "Bach"
  tagline = \markup \with-url #"http://lilypond.org/"
  \line {
    "Lilypond"
    #(string-join
      (map (lambda (x) (if (symbol? x)
                           (symbol->string x)
                           (number->string x)))
        (list-head (ly:version) 2))
      ".")
    "– www.lilypond.org"
  }
  copyright = \markup {
    \with-url #"http://joramberger.de"
    "© 2014 Joram Berger, joramberger.de"
    "– Lizenz:"
    \with-url #"http://creativecommons.org/licenses/by-sa/4.0/"
    \small "CC-BY-SA"
  }
  maintainer = "Joram Berger"
  maintainerWeb = "http://joramberger.de"
  style = "Baroque"
  source = "Breitkopf & Härtel, Leipzig, 1856"
  mutopiacomposer = "BachJS"
  mutopiapoet = "Johann Rist"
  mutopiaopus = "BWV 248"
  mutopiainstrument = "Choir (SATB)"
  license = "cc-by-sa"
  date = "1734"
  lastupdated = "2013-12-25"
  %footer = "Mutopia-2014/01/00-000"
}

#(set-global-staff-size 18.5)

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
  \override Staff.ClefModifier.font-name = #"Century Schoolbook L italic"
  \override Staff.ClefModifier.extra-offset = #'(-0.3 . 0.07)
  \override Score.BarNumber.font-name = #"Century Schoolbook L"
}

global = {
  \key g \major
  \time 4/4
  \partial 4
  \autoBeamOff
  \accidentalStyle modern-voice
}

fe = \fermata

soprano = \relative c'' {
  \global
  \repeat volta 2 {
    g4 | g a h8[ c] d4 | d cis d\fe
    h4 | c h a h | a2 g4
  } \break
  a4  | \once \override Score.BarNumber.break-visibility = #all-visible
  a h c c | h8[( a]) h4 a\fe
  h4 | h h c8[( d]) e4 | e dis e\fe
  fis4 | g h, c h | a2 a4\fe
  d4 | e d c h8[ c] | a2 g='4\fe
  \bar "|."
}

alto = \relative c' {
  \global
  \repeat volta 2 {
    d4 | e fis d8[ e] fis4 | e8[ fis] g4 fis\fe
    fis4 | e d8[ e] fis4 g | g( fis) d
  }
  fis8[ g] | a4. gis8 a[( gis]) a4 | a gis e\fe
  e8[ dis] | e4 e e8[( fis]) g[( fis]) | fis8[( g]) a4 g\fe
  a4 | g8[ a] h4 h8[( a]) a[( g]) | g2 fis4\fe
  g8[ fis] | e4 fis g8[( a]) d,4 | e( d) d='\fe
}

tenor = \relative c' {
  \global
  \repeat volta 2 {
    h4 | h8[ c] ~ c d h[ a] a4 | a a a\fe
    h8[a] | g[a] h[ c] d4 d | d4.( c8) h4
  }
  d8[ e] | fis[ e] d4 e fis | h, e8[ d] c4\fe
  g8[ a] | h[ c] d[ e] c4 cis | h h h\fe
  d4 | d g g,8[( a]) h4 | e8[( d e cis]) d4\fe
  d4 | d8[( c]) c[( h]) h[( a]) g4 | g8[( fis16 e] fis4) h=\fe
}

bass = \relative c' {
  \global
  \repeat volta 2 {
    g8[ fis] | e4 d g fis8[ g] | a4 a, d\fe
    dis4 | e8[ fis] g[ c,] c'[ h] a[ g] | d'4( d,) g
  }
  d4 | d'8[ c] h4 a dis, | e e a,\fe
  e'8[ fis] | g4 gis a ais | h h, e\fe
  d'8[ c] | h[ a] g[ fis] e[ fis] g[ e] | cis[ h cis a] d4\fe
  h4 | c d e8[ fis] g4 | \shape #'((0 . -0.2) (0 . -0.8) (0 . -0.8) (0 . 0)) Slur c,( d) g,=,\fe
}


text = \lyricmode {
  Brich an, o schö -- nes Mor -- gen -- licht, und lass den Him -- mel ta -- gen!
  dass die -- ses schwa -- che Knä -- be -- lein soll un -- ser Trost und Freu -- de sein,
  da -- zu den Sa -- tan zwin -- gen und letzt -- lich Frie -- den brin -- gen!
}

textB = \lyricmode {
  Du Hir -- ten -- volk, er -- schre -- cke nicht, weil dir die En -- gel sa -- gen:
}


\score {
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Sopran"
    } { \soprano }
    \addlyrics { \text }
    \addlyrics { \textB }
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Alt"
    } { \alto }
    \addlyrics { \text }
    \addlyrics { \textB }
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Tenor"
    } { \clef "treble_8" \tenor }
    \addlyrics { \text }
    \addlyrics { \textB }
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Bass"
    } { \clef "bass" \bass }
    \addlyrics { \text }
    \addlyrics { \textB }
  >>
  \layout { }
}
