\version "2.18.2"
\language "english"

\header {
  %title        = "Promenade [V]"
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

ritard = \markup { \italic "ritard." }
dimin = \markup { \italic "dimin." }
attacca = \markup { \italic "attacca" }

forceShiftOn = \override NoteColumn.force-hshift = #1.4
forceShiftOff = \override NoteColumn.force-hshift = #0
forceShiftPosition = \override NoteColumn.force-hshift = #-0.2
tiePosition = \override Tie.staff-position = #-7

upper = \relative c'' {
  \tempo "Allegro giusto, nel modo russico, poco sostenuto"

  \time 5/4
  | g4-- \f f-- bf-- c8-- ( f d4-- )
  \bar "||"
  \time 6/4
  | c8-- ( f d4-- ) bf-- c-- g-- f--
  \bar "||"
  \time 5/4
  | <g d bf>4 <f c a> <bf d, bf>
    << { c8 ( f d4 ) } \\ { <a c,>4 <a f> } >>
  \bar "||"
  \time 6/4
  | << { c8 ( f d4 ) } \\ { <a c,>4 <bf f> } >>
    <bf g d>4 <c g e> <g c, g> <f c a>
  \bar "||"
  \time 5/4
  | f4-- g-- d-- f8-- ( g c,4-- )
  \bar "||"
  \time 6/4
  | g'8-- ( a f4-- ) <f' c a f>
    << { <d f, d> ( <c c,>8 <bf bf,> f4 ) } \\ { s4 f f } >>
  \bar "||"
  \time 5/4
  | f4-- g-- d-- f8-- ( g ef4-- )
  \bar "||"
  \time 6/4
  | bf'8-- ( c af4-- ) <af' ef c af>
    << { <f af, f>4 ( <ef ef,>8 <df df,> af4 ) } \\ { s4 af af } >>
  |
  <<
    {
      <af af,>4 <bf bf,> <af af,> <bf bf,>8 <c c,> <ef ef,> <bf bf,> <af af,>4
    } \\ {
      ef2. ef2.
    }
  >>
  | <df' af f df>8 [ <ef c af ef> ] <f df af f> <af af,> <gf ef bf gf> <f df af f>
    <ef c af ef> <gf gf,> <f df bf f> <df df,> <ef c af ef>4
  \bar "||"
  \time 5/4
  | <af, ef af,>4 <bf ef, bf> <af ef af,>
    << 
      { 
        <bf bf,>8 <c c,> <ef ef,> <bf bf,> 
      } \\ { 
        \forceShiftOn \tiePosition ef,4 ~ ef8 r 
      } 
    >>
  \bar "||"
  \time 6/4
  | << 
      { 
        <c' c,>4 <d d,> <c c,> <d d,>8 <f f,> <g g,> <d d,> <c c,>4 
      } \\ { 
        \forceShiftPosition g2. g 
      } 
    >>
  | <f' c a f>8 [ <g e c g> ] <a f c a> <c c,> <bf g d bf> <a f c a>
    <g e c g> <bf bf,> <a f d a> <f f,> <g e c g>4
  \bar "||"
  \time 5/4
  | <c, g c,>4 <d g, d> <c g c,> <d g, d>8 [ <f f,> <g g,> <d d,> ]
  \bar "||"
  \time 6/4
  | <a' cs, a>4 <f d a> <a cs, a> <d, bf e,> <a' c, a> <d, bf e,>
  | << { f8 [ c ] } \\ { <a f>4 } >> <d bf f>4 <f a, f> <d bf f>
    << { f8 c d4 } \\ { <a f>4 <bf f> } >>
  | << { <c g>4 } \\ { ef,8 [ e ] } >> <a f c>4 <bf f d> 
    << { <c g>4 } \\ { ef,8 [ e ] } >> <a f c>4 << { bf8 d } \\ { <f, d>4 } >>
  \bar "||"
  \time 7/4
  | <f' f,>4 <ef bf g ef>8 [ <d d,> <c a f c> <bf bf,> ] <c f, c>4 <d f, d> 
    <f c a f> <g ef bf g>8 <bf bf,>
  | <f f,>4 <ef bf g ef>8 [ <d d,> <c a f c> <bf bf,> ] <c f, c>4 <d f, d> 
    <f c a f> <g e c g>8 <bf bf,>
  \bar "||"
  \time 5/4
  | <f f,>4 <g g,> <f f,> g, f
  \bar "||"
  \time 6/4
  | <bf d, bf>4 << { c8 [ <f f,> ] } \\ { <a, c,>4 } >> <d bf d,>4
    << { c8 [ <f f,> ] } \\ { <a, c,>4 } >> <d bf d,>4 <bf d, bf>
  \bar "||"
  \time 5/4
  | <c g c,>4 <g c, g> <f c a> <g d bf> <f c a>
  \bar "||"
  \time 6/4
  | <bf f d bf>4 << { c8 [ <f f,> ] } \\ { <a, f c>4 } >> <d bf f d>4
    << { c8 [ <f f,> ] } \\ { <a, f c>4 } >> <d bf f d>4 <bf g d bf>
  | <ef c g ef>2 <c a f c> 
    << { bf4^^ ^\sf ~ | bf1 \fermata ~ bf4 } \\ { <f d>8 r | s1 s4 } >>
  \bar "|."
}

lower = \relative c' {
  \time 5/4
  | g4-- f-- bf-- c8-- ( f d4-- )
  \time 6/4
  | c8-- ( f d4-- ) bf-- c-- g-- f--
  \time 5/4
  | <g g,>4 <f a,> <g g,> <f f,> <d d,>
  \time 6/4
  | <f f,>4 <bf bf,> <g g,> <c, c,> <e e,> <f f,>
  \time 5/4
  | f4-- g-- d-- f8-- ( g c,4-- )
  \time 6/4
  | g'8-- ( a f4-- ) <f, f,> <bf bf,> ( <a a,>8 <g g,> <f f,>4 )
  \time 5/4
  | f'4-- g-- d-- f8-- ( g ef4-- )
  \time 6/4
  | bf'8-- ( c af4-- ) <af, af,> <df df,> ( <c c,>8 <bf bf,> <af af,>4 )
  | <gf gf,>4 q <f f,> <gf gf,> q <gf' gf,>8 <ef ef,>
  | <f f,>8 [ <ef ef,> ] <df df,> <df, df,> <ef' ef,> <f f,> 
    <af af,> <af, af,> <bf bf,> <df df,> <c c,> [ <af af,> ]
  \time 5/4
  | <gf gf,>4 q q q <gf' gf,>8 r 
  \time 6/4
  | <bf, bf,>4 <bf bf,> <a a,> <bf bf,> <bf bf,> <bf' bf,>
  | <a a,>8 [ <g g,> ] <f f,> <f, f,> <g' g,> <a a,> 
    <c c,> <c, c,> <d d,> <f f,> <e e,> [ <c c,> ]
  \time 5/4
  | <bf bf,>4 q q q <bf' bf,>8 r
  \time 6/4
  | <a a,>4 <d d,> <a a,> <bf bf,> <f f,> <g g,>
  | <d d,> <g g,> <d d,> <g g,> <d d,> <g g,>
  | <c, c,> <f f,> <g g,> <c, c,> <f f,> <g g,>
  \time 7/4
  | <f, f,>4 <g g,> <a a,>8 <bf bf,> <a a,>4 <bf bf,> <a a,> <g g,>
  | <f f,>4 <g g,> <a a,>8 <bf bf,> <a a,>4 <bf bf,> <a a,> <g g,>
  \time 5/4
  | <f f,>4 <g g,> <f f,> g' f
  \time 6/4
  | <g g,>4 <f f,> <g g,> <a a,> <bf bf,> <g g,>
  \time 5/4
  | <ef ef,> <e e,> <f f,> <bf, bf,> <a a,>
  \time 6/4
  | <g g,> <f f,> <g g,> <a a,> <bf bf,> <g' g,>
  \time 5/4
  | <c, c,>2 <f f,> <bf bf,>8 r
  | R1 * 5/4 _\attacca \fermataMarkup 
}

global = {
  \key bf \major
  \accidentalStyle piano
}

\bookpart {
  \header {
    subtitle = "Promenade [V]"
  }
  \score {
    \new PianoStaff
    <<
      \new Staff = "up" {
        \clef treble
        \global
        \upper
      }
      \new Staff = "down" {
        \clef bass
        \global
        \lower
      }
    >>
    \layout {
    }
    \midi {
      \tempo 4 = 88
    }
  }
}
