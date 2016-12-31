%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....
\version "2.18.2"
\language "english"

\header {
  %title        = "[Promenade-6] Con mortius in lingua mortua"
  composer     = "Modest Moussorgsky (1839 - 1881)"
  style        = "Romantic"
  license      = "Creative Commons Attribution-ShareAlike 4.0"
  enteredby    = "Knute Snortum"
  date         = "1874"
  source       = "Pavel Lamm"

  mutopiatitle       = "Pictures at an Exhibition"
  mutopiacomposer    = "MussorgskyM"
  mutopiainstrument  = "Piano"
  maintainer         = "Knute Snortum"
  maintainerEmail    = "knute (at) snortum (dot) net"
  maintainerWeb      = "http://www.musicwithknute.com/"

 footer = "Mutopia-2016/12/31-475"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " 2016 " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License "\char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}

cantoMarcato = \markup { \italic "il canto marcato" }
cantabileMarcato = \markup { \italic "il canto cantabile, ben marcato" }
tranq = \markup { \italic "tranquillo" }
ritard = \markup { \italic "ritard." }
perden = \markup { \italic "perdendosi" }
markupFermata = \markup { \musicglyph #"scripts.ufermata" }

forceShiftOn = \override NoteColumn.force-hshift = #0.5
forceShiftOff = \override NoteColumn.force-hshift = #0
adjustCantoX = \once \override TextScript.X-offset = #-4
adjustFermata = {
  \once \override TextScript.X-offset = #4.5
  \once \override TextScript.Y-offset = #5.5
}
adjustFermataTwo = \once \override TextScript.X-offset = #5

upper = \relative c''' {
  \tempo "Andante non troppo, con lemento"
  \override Beam.gap-count = #3
  
  \partial 2. \repeat tremolo 12 { fs32 \pp fs, }
  | \repeat tremolo 24 { fs'32 fs, }
  | \repeat tremolo 24 { fs'32 fs, }
  | \repeat tremolo 12 { fs'32 fs, }
    \repeat tremolo 4 { es'32 es, }
    \repeat tremolo 4 { e'32 e, }
    \repeat tremolo 4 { d'32 d, }  
  | \repeat tremolo 4 { b'32 b, }
    \repeat tremolo 4 { as'32 as, }
    \repeat tremolo 4 { a'32 a, }
    \repeat tremolo 4 { gs'32 gs, }
    \repeat tremolo 8 { g'32 g, }
  | \repeat tremolo 8 { es'32 es, }
    \repeat tremolo 4 { fs'32 fs, }
    \repeat tremolo 8 { \adjustFermata fs''32 ^\markupFermata fs, } 
    \repeat tremolo 4 { f'32 f, }
  | \repeat tremolo 4 { e'32 e, }
    \repeat tremolo 4 { cs'32 cs, }
    \repeat tremolo 4 { b'32 b, }
    \repeat tremolo 4 { a'32 a, }
    \repeat tremolo 8 { d'32 d, }
  | \repeat tremolo 4 { cs'32 cs, }
    \repeat tremolo 4 { fs'32 fs, }
    \repeat tremolo 4 { a'32 a, }
    \repeat tremolo 12 { d32 d, }
  | \repeat tremolo 4 { fs'32 fs, }
    \repeat tremolo 8 { e'32 e, }
    \repeat tremolo 4 { cs'32 cs, }
    \repeat tremolo 8 { e'32 e, }
  | \repeat tremolo 4 { cs'32 cs, }
    \repeat tremolo 4 { c'32 c, }
    \repeat tremolo 4 { b'32 b, }
    \repeat tremolo 4 { as'32 as, }
    \repeat tremolo 4 { a'32 a, }
    \repeat tremolo 4 { gs'32 gs, }
  | \repeat tremolo 4 { g'32 g, }
    \repeat tremolo 8 { es'32 es, }
    \repeat tremolo 12 { fs'32 fs, }
  <<
    \new Staff \with { 
      \remove Time_signature_engraver 
      alignAboveContext = "up"
    } {
      \key b \minor
      | \tag #'layout { \repeat tremolo 24 { fs'32 ^\tranq fs, } }
        \tag #'midi   { \repeat tremolo 24 { fs'32 \pp     fs, } }
      | \repeat tremolo 24 { fs'32 fs, } 
      | \repeat tremolo 24 { fs'32 fs, }
      | \repeat tremolo 24 { fs'32 fs, } 
      | \repeat tremolo 24 { fs'32 ^\ritard fs, }
      | \repeat tremolo 24 { fs'32 fs, }
      | \repeat tremolo 24 { fs'32 fs, }
      | \repeat tremolo 24 { fs'32 fs, }
      | \repeat tremolo 24 { fs'32 fs, }
      | \repeat tremolo 24 { \adjustFermataTwo fs'32 ^\markupFermata fs, }
      | \bar "|."
    }
    \\
    {
      << 
        { | e'2. ( css2 bs4 | cs4 ) } 
        \\ 
        { | <fs, bs fs'>1. \pp | <fs as fs'>4 } 
      >>
        r4 r r2 r4
      |
      << 
        { | e'2. ( css2 bs4 | cs4 ) } 
        \\ 
        { | <fs, bs fs'>1. | <fs as fs'>4 } 
      >>
        r4 r r2 r4
      |
      <<
        { \forceShiftOn <cs' ds>2. ( gss2 as4 ) | s2 }
        \\
        { <fs fs'>1. ^\perden | <fs as cs fs>2 }
      >>
        r4 r2 r4
      |
      <<
        { \forceShiftOn <cs' ds>2. ( gss2 as4 ) | s2 }
        \\
        { <fs fs'>1. | <fs as cs fs>2 }
      >>
        r4 r2 r4
      | <fs b ds fs>1.
      | R1 * 6/4 \fermataMarkup
    }
  >>
}

lower = \relative c'' {
  \partial 2. \adjustCantoX r2. _\cantoMarcato
  | r4 
  << 
    {
      g4 ( fs b cs fs | d cs fs d cs b | fs )
    }
    \\
    {
      <b, e>4 <cs as> <d fs> <fs as> ~ q8 r | 
      <g b>4 <es b'> <fs as>8 r b4 fs g | fs 
    }
  >>
    \clef bass
    <g,, g,>4 ( <fs fs,> <b b,> <cs cs,> <fs fs,>
  | <d d,>4 <cs cs,> <fs fs,> <d d,>2 <b b,>4
  | <cs cs,>4 <b b,> <fs fs,> ) r \fermata
    \clef treble
  <<
    { fs''4 ( g | e ) }
    \\
    { <as, cs>4 <b d> | <g c> }
  >>
  <<
    { fs'4 ( g e ) }
    \\
    { <fs, as>4 <g b> <a cs> }
  >>
  <<
    { <fs' a>4 ( <g b> | <cs, fs>2 fs'4 ) }
    \\ 
    { d,2 | as4 fs <a' d> }
  >>
  <<
    { d4 cs b | fs }
    \\
    { b4 fs g | fs }
  >>
    \clef bass
    <fs,, fs,>4 ( <g g,> <e e,> ) <fs fs,> ( <g g,>
  | <e e,> ) <a a,> ( <b b,> <fs fs,>2 <fs' fs,>4 )
  | <d d,>4 ( <cs cs,> <b b,> <fs fs,> ) r r
  |
  <<
    { | e''2. ( css2 bs4 | cs4 ) }
    \\
    { <d, a' bs>1. _\cantabileMarcato | <fs as>4 }
  >>
    fs,4-. ( \sustainOn cs'-. fs-. as-. 
    \tag #'layout { cs-. ) }
    \tag #'midi   { cs-. ) \sustainOff }
  |
  <<
    { | e2. ( css2 bs4 | cs4 ) }
    \\
    { <d, a' bs>1. | <fs as>4 }
  >>
    fs,4-. ( \sustainOn cs'-. fs-. as-. 
    \tag #'layout { cs-. ) }
    \tag #'midi   { cs-. ) \sustainOff } 
  |
  << 
    { ds2. ( ^\perden gss,2 as4) | <fs as cs>2. ~ \ppp q2 r4 }
    \\
    { <b, fs'>1. | r2 r4 <b, fs'>2 ~ q8 r }
  >>
  << 
    { ds''2. ( gss,2 as4) | <fs as cs>2. ~ q2 r4 }
    \\
    { <b, fs'>1. | r2 r4 <b, fs'>2 ~ q8 r }
  >>
  <<
    { <fs'' b ds>1. }
    \\
    { r4 b,,-. ^( \sustainOn fs'-. ds'-. b'-. ds-. ) }
  >>
  | \clef treble <b'' ds fs>1. \fermata
}

global = {
  \clef treble
  \key b \minor
  \time 6/4
  \accidentalStyle piano
}

\bookpart {
  \header {
    subtitle = "[Promenade-6] Con mortius in lingua mortua"
  }
  \score {
    \keepWithTag #'layout
    \new PianoStaff <<
      \new Staff = "up" \with { \remove Time_signature_engraver } {
        \global
        \upper
      }
      \new Staff = "down" \with { \remove Time_signature_engraver } {
        \global
        \lower
      }
    >>
    \layout {
    }
  }
}

% MIDI output only
\score {
  \keepWithTag #'midi
  \unfoldRepeats {
    \new PianoStaff <<
      \new Staff = "up" \with { \remove Time_signature_engraver } {
        \global
        \upper
      }
      \new Staff = "down" \with { \remove Time_signature_engraver } {
        \global
        \lower
      }
    >>
  }
  \midi {
    \tempo 4 = 76
  }
}
