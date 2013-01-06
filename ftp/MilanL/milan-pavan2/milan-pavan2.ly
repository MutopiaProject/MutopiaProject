\header {
  filename =    "milan-pavan2.ly"
  title =       "Pavan 2"
  piece =       "Andante"
  opus =        ""
  composer =    "Luis Milan (1536-1561)"

%{ 
i know that 
  piece = "tempo"
isn't correct, but it looks better than attaching it to the first
note.
%}
    
  % needed by mutopia:

  mutopiainstrument =  "Vihuela, Guitar"
  mutopiacomposer =    "MilanL"
  date =               "16th C."
  style =              "Renaissance"
  source =             "Not known"
  copyright =          "Public Domain"  
  maintainer =         "jeff covey <jeff.covey@pobox.com>"
  mutopiamaintainer =      "Jeff Covey"
  mutopiamaintainerEmail = "jeff.covey@pobox.com"

 footer = "Mutopia-2013/01/06-24"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

\version "2.16.1"


% {{{ global settings

global =  {
  \key d \major \time 3/2
\repeat volta 2 {
  s1.*24
}
}
midiStuff = \context Staff = "guitar" {
  \set Staff.midiInstrument = "acoustic guitar (nylon)"
  \transposition c  % guitar music actually sounds an
                                    % octave lower than written.
}

% }}}
  
% {{{ melody

melody =  \relative c'' {
  \voiceOne
  fis2 fis g |
  fis1 g2 |
  fis e d |
  cis4 d cis b a gis |
  e'2 e d4 cis |
  b1 a2 |
  d1 cis2 |
  d1. |
  fis4 g a fis g2 |
  fis4 g a fis g2 |
  fis2 e d |
  cis1. |
  e2 e d4 cis |
  b a b cis d2 |
  a' a1 |
  d,1.

  fis1 g2 |
  fis1 g2 |
  fis e d |
  cis1.
  e2 e d4 cis |
  b1 e2 |
  d1 cis2 |
  d1. |
}

% }}}
% {{{ middle voice

middlevoice =  \relative c'' {  
\context Voice = "melody" {
  <a d>2 <a d> <b d> |
  <a d>1 <b d>2 |
  <a d> a gis |
}
\context Voice = "bass" {
  <e a>1 r2 |
  \new Voice {\voiceFour a4 d cis b} fis2 |
}
\context Voice = "melody" {
  <d g>1 fis2 |
}
\context Voice = "bass" {
  g <e a>1 |
  <fis a>1.
  
  d'1 \new Voice {\voiceFour b4 cis} |
  d1 \new Voice {\voiceFour b4 cis |
  <a d>2 g s |
  a4 e fis gis a gis |
  a2 a} fis |
}
\context Voice = "melody" {
  g4 s2.
}
\new Voice {\voiceFour
  a4 g
  <<{fis2 e1} \new Voice {d'1 cis2}>>
  
  s1.*2 |
  d1 d2 |
  r4 d cis a2 gis4 |
  a gis fis e fis gis |
  a b cis a fis2 |
  s1 a4 g |
}
\context Voice = "bass" {
  fis2 <a e>1 |
  <a fis>1.
}
}

% }}}
% {{{ bass

bass =  \relative c' {
  \voiceTwo
  
  d2 d g, |
  d'1 g,2 |
  d' cis b |
  a1. |
  a1 d2 |
  g,4 a b c d2 |
  b a1 |
  d1. |
  
  d1 e2 |
  d1 e2 |
  d1 fis2 |
  a,1. |
  a4 b cis a b2 |
  <g d'>1 d'2 |
  s2 a1 |
  d1. |
  
  d'4 cis b a b cis |
  d,4 c b a b c |
  d2 a b |
  a1. |
  s1. |
  g'4 fis e d cis2 |
  d a1 |
  d1. |

}

% }}}
        
\score {
 
      \new Staff = "guitar" << 
        \global 
        \new Voice = "melody"      { \melody      }
        \new Voice = "middlevoice" { \middlevoice }
%\new Voice <<\melody \middlevoice>>
        \new Voice = "bass"        { \bass        }
      >>

  \layout {
  }
}

\score {
  \context Staff = "guitar" << 
    \midiStuff
    \global 
    \melody
    \middlevoice
    \bass
  >>
  
  \midi {
    \tempo 4 = 150
    }
}
