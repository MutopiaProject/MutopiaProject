\version "2.18.2"
\language "english"

\header {
  %title        = "[Promenade IV]"
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

cres = \markup { \italic "cresc." }
dimin = \markup { \italic "dim." }
loco = \markup { \italic "loco" }
pocoRit = \markup { \italic "poco rit" }
attacca = \markup { \italic "attacca" }

extendSlur = \shape #'((0 . 0) (0 . -2) (0 . 3) (19 . -2)) Slur
staffDown = \change Staff = "down"
staffUp = \change Staff = "up"

upper = \relative c''' {
  \time 5/4
  \clef treble
  \tempo "Tranquillo"
  
  | r2 \voiceOne \ottava #1 \extendSlur d4 ( \pp e8 a f4 
  \bar "||"
  \time 6/4
  | e8 [ a ] s4 s \ottava #0 s s s ) 
  \bar "||"
  \time 7/4
  \oneVoice
  | r2 \slurUp <g,, bf>4 ( <e a> <f a d> \voiceOne e'8 _\cres a f4
  \bar "||"
  \time 6/4
  | e8 a f4 \oneVoice <d, bf' d> <e g e'> <bf f' bf> <a e' a> )
  \bar "||"
  \time 5/4
  | r2 \clef bass <cs, cs'> <g' g'>4
  \bar "||"
  \time 7/4
  | <e e'>4 <a a'> ~ q8 r 
    \clef treble <a'a'>4 ( \< <bf bf'> \! <a a'> \> <g g'>8 <f f'> \! )
  \bar "||"
  \time 5/4
  | <a a'>4 ( <bf bf'> <e, e'> ) <a a'>8 ( <bf bf'> <e, e'>4 )
  \bar "||"
  \time 6/4
  | <bf' bf'>8 ( <c c'> <a a'>4 <a' a'> <f f'> _\dimin <e e'>8 <d d'> <a a'>4 )
  \bar "||"
  \time 5/4
  | r4 a, \p a' \tieUp \acciaccatura { d'8 } <f, a c>16 \staffDown <f, a c>
    \staffUp <df' f af> \staffDown <f, af b> \staffUp r4
  \bar "||"
  \time 3/4
  | a4 ^\pocoRit r a'8 r
  \bar "|."
}

middle = \relative c''' {
  \time 5/4
  | s2 \voiceFour \ottava #1 <f, a>4 <a c> <a d>
  \time 6/4
  <a c>4  <bf d f>4 <g bf d> \ottava #0 <e g e'> ^\loco <e g bf> <e g a>
  \time 7/4
  | s2 s4 s s <a, cs> <a d>
  \time 6/4
  | <a c> <f d'> s s s s
}

lower = \relative c'' {
  \time 5/4
  \clef treble
  
  | r2 d4 ( <c e> <d f>
  \time 6/4
  | <c e>4 <bf d> <g bf> <e bf' d> <g bf d> <a cs> )
  \time 7/4
  | r2 \clef bass <g, d'>4 ( <a cs> <f d'> <e cs'> <d d'>
  \time 6/4
  | <c c'>4 <bf bf'> <g g'> <c, c'> <d d'> <cs cs'> )
  \time 5/4
  | <a a'>4 ( <bf bf'> <e, e'> <a a'>8 <bf bf'> <e, e'>4 )
  \time 7/4
  | <bf' bf'>8 ( <c c'> <a a'>4 <a' a'> <f f'> <e e'>8 <d d'> <a a'>4 <bf bf'> )
  \time 5/4
  | <f f'>4 ( <g g'>2. <bf bf'>4 )
  \time 6/4
  | <e e'>2 ( <a, a'>4 <bf bf'> <g g'> <a a'> )
  \time 5/4
  | r4 a' a' \clef treble s4 r4
  \time 3/4
  | a4 r a'8 _\attacca r
}

global = {
  \key d \minor
  \accidentalStyle piano
}

\bookpart {
  \header {
    subtitle = "[Promenade IV]"
  }
  \score {
    \new PianoStaff 
    <<
      \new Staff = "up" {
        \global
        <<
          \new Voice \upper
          \new Voice \middle
        >>
      }
      \new Staff = "down" {
        \global
        \lower
      }
    >>
    \layout {
    }
    \midi {
      \tempo 4 = 60
    }
  }
}
