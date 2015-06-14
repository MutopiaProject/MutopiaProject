\version "2.18.2"
\language "english"

\header {
  title        = "Perger Präludium in C-dur"
  composer     = "Anton Bruckner (1824-1896)"
  opus         = "WAB 129"
  style        = "Romantic"
  license      = "Creative Commons Attribution-ShareAlike 4.0"
  enteredby    = "Sam Bivens"
  lastupdated  = "2015/Apr/23"
  date         = "20 August 1884"
  source       = "Composer Manuscript, Austrian National Library, Mus.Hs.44609/1"

  mutopiatitle       = "Perger Präludium"
  mutopiacomposer    = "BrucknerA"
  mutopiaopus        = "WAB 129"
  mutopiainstrument  = "Organ"
  maintainer         = "Sam Bivens"
  maintainerEmail    = "sambivens (at) gmail (dot) com"
  maintainerWeb      = "http://www.sambivens.com"

 footer = "Mutopia-2015/06/14-2017"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2015 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " " \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

global = {
  \key c \major
  \time 2/2
  \tempo "Feierlich langsam. Sempre legato."
  \override DynamicTextSpanner.style = #'none
}

crescS = _\markup {\larger {\italic {cresc. semp}}}
dimS = _\markup {\larger {\italic {dim. semp}}}

right = \relative c'' {
  \global
  
  <<
    {
      c2.\mf b!4\< |
      bf2 a\! |
      bf2. af8 gf |
    }
    \\
    {
      g1 |
      f |
      df |
    }
    \\
    {
      \override NoteColumn.force-hshift = 0 e |
      \stemDown d2 c |
      bf1\f |
    }
  >>
  fs'2.\dim e!4\! |
  e!1 |
  d |
  <<
    {
      ds'2.\mf d4-\crescS |
      df2 c! |
    }
    \\
    {
      fs,1 |
      f!2 ef2 |
    }
  >>
  <<
    {
      gs'2.\ff g4 |
      fs2 f |
    }
    \\
    {
      b,!1 |
      a! |
    }
    \\
    {
      \override NoteColumn.force-hshift = 0 \stemDown gs2. g4 |
      fs2 f |
    }
  >>
  <<
    {
      e'!2. f!4 |
      e!2 d! |
      c!2. b!4 |
      a!1-\dimS |
      gs1 |
    }
    \\
    {
      g!1 |
      f! |
      e! |
      e2 d! |
      e1 |
    }
  >>
  R1 |
  <<
    {
      c'!2.\mf b4\< |
      bf2 a\! |
    }
    \\
    {
      g!1 |
      f |
    }
    \\
    {
      \override NoteColumn.force-hshift = 0 e |
      \stemDown d2 c |
    }
  >>
  <<
    {
      bf'2.\pp cf4 |
      bf2\cresc af\! |
      g!1~\p |
      g~\< |
      g~\!\f |
      \override DynamicTextSpanner.style = #'none g~\dim |
      g~\pp |
      g~-\dimS |
      g4 s s2 \bar "|."
    }
    \\
    {
      bf,1~ |
      bf2 b |
      c!2. d!4 |
      a! b! c! d! |
      <<
        {
          e!1~ |
          e |
        }
        \\
        {
          b!~ |
          b2 a!4 b! |
        }
      >>
      c1~ |
      c~ |
      c4 b'\rest b2\rest \bar "|."
    }
  >>
}

left = \relative c {
  \global
  \clef bass
  
  s1 |
  s
  s
  <<
    {
      \clef bass cs'~ |
      cs |
      d |
    }
    \\
    {
      g,!~ |
      g |
      f! |
    }
  >>
  b!2. a!4 |
  af2 c |
  e!2. d!4 |
  d!2 c! |
  c!1 |
  b!~ |
  b2 a4 b! |
  c!2 b!4 a! |
  b!1 
  R
  s
  s
  \clef bass df,1 |
  d!2. ef4 |
  e!1~ |
  e |
  f1~ |
  f |
  e!1~ |
  e~ |
  e4 r r2 \bar "|."
}

pedal = \relative c {
  \global
  
  c1\mf\< |
  d2 f4\! f, |
  gf1\f |
  a!\dim |
  bf~ |
  bf |
  b!2.\mf d!4-\crescS |
  f!2 af |
  e!2.\ff g!4 |
  d!2 f! |
  c!1 |
  g! |
  a2. g!4 |
  f!1-\dimS |
  e |
  R |
  c'\mf\< |
  d2 f4\! f, |
  gf1\pp( |
  fs)\cresc |
  g!~\p\! |
  g~\< |
  g~\!\f |
  g\dim |
  <c, c'>~\pp |
  <c c'>~-\dimS |
  <c c'>4 r r2 \bar "|."
}

\score {
  <<
    \new PianoStaff \with {
      instrumentName = "Organ"
    } <<
      \new Staff = "right" \with {
        midiInstrument = "church organ"
      } \right
      \new Staff = "left" \with {
        midiInstrument = "church organ"
      } { \clef bass \left }
    >>
    \new Staff = "pedal" \with {
      midiInstrument = "church organ"
    } { \clef bass \pedal }
  >>
  \layout { }
  \midi {
    \tempo 4=82
  }
}
