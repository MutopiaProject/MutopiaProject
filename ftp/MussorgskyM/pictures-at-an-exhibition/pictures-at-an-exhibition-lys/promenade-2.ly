\version "2.18.2"
\language "english"

\header {
  %title        = "[Promenade II]"
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

moderato = {
  \once
  \override Score.RehearsalMark.self-alignment-X = #LEFT
  \mark "Moderato commodo assai e con delicatezza" 
}

ritard = \markup { \italic "ritard." }
dimin = \markup { \italic "dimin." }
attacca = \markup { \italic "attacca" }

innerSlurAdjust = \shape #'((0.9 . 1.8) (0.6 . 2.1) (0.3 . 2.1) (0 . 1.8)) (

upper = {
  \time 5/4
  \clef treble
  \moderato 
  | R1 * 5/4 \p
  \time 6/4
  \bar "||"
  | R1 * 6/4
  \time 5/4
  \bar "||"
  | <df' f' af'>4 ( <bf g' bf'> \< <ef' af' c''> <g' bf' ef''> \!
    <c'' ef'' af''>
  \time 6/4
  \bar "||"
  | <bf' ef'' g''>4 <g' 'c'' ef''> <af' c'' f''> \> <df'' f'' bf''>
    <f'' af'' c'''> <g'' bf'' ef'''>8 ) \! r
  \time 5/4
  \bar "||"
  | R1 * 5/4 \p
  \time 6/4
  \bar "||"
  | R1 * 6/4
  \time 5/4
  \bar "||"
  | <g' bf' ef'' g''>4 ( <f' af' df'' f''>  <af' c'' ef'' af''>
    <bf' ef'' g'' bf''> <df'' f'' bf'' df'''>
  \time 6/4
  \bar "||"
  | <f'' bf'' df''' f'''>4 \< <g'' bf'' ef''' g'''> \! 
    <c'' ef'' g'' c'''> <af' c'' ef'' af''> \> <bf' df'' f'' bf''> 
    <g' bf' ef'' g''>8 ) \! r
  \time 5/4
  \bar "||"
  | <af df' f'>4 <g bf ef'> <c' ef' af'> 
    << 
      { bf'8 ( [ ef'' ] c'' ) } 
      \\ 
      {
        <<
          { g'4-\innerSlurAdjust af'8 ) } 
          { ef'4 ~ ef'8 }
        >>
      }
    >> 
    r8
  \time 6/4
  \bar "||"
  | << { bf'8 ( [ ef'' ] c''4 ) } \\ { <df' f'>4 <ef' g'> } >> 
    <c' ef' af'>4 <d' f' bf'> <bf d' f'> <g bf ef'>
  \time 5/4
  \bar "||"
  | <bf' bf''>2 ^^ ^ \ritard <ef'' ef'''>2. ^^
  \time 6/4
  \bar "||"
  | \ottava #1 <g'' g'''>2 ^^ ( <af'' af'''>4 ) 
    <bf'' bf'''>2 ^^ ~ q8 \pp r
  \bar "|."
}

lower = {
  \time 5/4
  \clef bass
  | f4 ( ef af bf8 ef' c'4
  \time 6/4
  | bf8 ef' c'4 af bf f ef )
  \time 5/4
  | f4 ( ef af bf8 ef' c'4
  \time 6/4
  | bf8 ef' c'4 af bf f ef8 ) r
  \time 5/4
  | ef4 ( f c ef8 f bf,4
  \time 6/4
  | f8 g ef4 ef' c' bf8 af ef4 )
  \time 5/4
  | ef4 ( f c ef8 f bf,4
  \time 6/4
  | f8 g ef4 ef' c' bf8 [ af ] ef8 ) r
  \time 5/4
  | ef2. ^^ af,2 _^
  \time 6/4
  | ef,2. _^ af,,2 _^ r4
  \clef treble
  | <af df' f'>4 <g bf ef'> <c' ef' af'> 
    << 
      { bf'8 ( [ ef'' ] c'' ) } 
      \\ 
      {
        <<
          { g'4-\innerSlurAdjust af'8 ) } 
          { ef'4 ~ ef'8 }
        >>
      }
    >> 
    r8
  \time 6/4
  \bar "||"
  | << { bf'8 ( [ ef'' ] c''4 ^ \dimin ) } \\ { <df' f'>4 <ef' g'> } >> 
    <c' ef' af'>4 <d' f' bf'> <bf d' f'> <g bf ef'>8 _ \attacca r
}

global = {
  \key af \major
  \accidentalStyle piano
}

\bookpart {
  \header {
    subtitle = "[Promenade II]"
  }
  \score {
    \new PianoStaff 
    <<
      \new Staff = "up" {
        \global
        \upper
      }
      \new Staff = "down" {
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
