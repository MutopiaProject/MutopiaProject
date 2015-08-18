% Updated to Lilypond 2.4.2 by Ruud van Silfhout <Ruud.vanSilfhout@mutopiaproject.org>
% Last changed on 31/Jan/2005
\version "2.18.2"

\header {
    title =       "Etude 3"
    opus =        "Op. 60, No. 3"
    composer =    "Matteo Carcassi"

    mutopiatitle = "Etude 3"
    mutopiacomposer = "CarcassiM"
    mutopiaopus = "O 60"
    mutopiainstrument = "Guitar"
    date = "19th C."
    source = "Mayence, B. Schott's Söhne"
    % From Boije 94
    style = "Classical"
    copyright = "Public Domain"
    maintainer = "Jeff Covey"
    maintainerEmail = "jeff.covey@pobox.com"
    maintainerWeb = "http://pobox.com/~jeff.covey/"
    lastupdated = "2005/Jan/31"
    footer = "Mutopia-2005/01/31-14"
}

\paper {
  % add space between composer/opus markup and first staff
  markup-system-spacing #'padding = #3
  % add a little space between composer and opus
  markup-markup-spacing #'padding = #1.2
  top-margin = #8
  bottom-margin = #10
}

% {{{ global settings

global =  {
  \key a \major
  \time 4/4
  \skip 1*8
  \bar ":..:"
  \skip 1*16
  \bar ":|."
}
midiStuff = {
  \set Staff.midiInstrument = "acoustic guitar (nylon)"
  \transposition c  % guitar music actually sounds an
                    % octave lower than written.
}

% }}}

% {{{ melody

melody =  \relative c'' {
  \stemUp

  % section a
  \skip 4*1  fis4 e
  \skip 4*2  fis e
  \skip 4*2  a gis
  \skip 4*2  b a
  \skip 4*2  gis fis
  \skip 4*2  fis e
  \skip 4*2  e \skip 4*1  dis
  \skip 4*2  e, r

  % section b
  \skip 4*1  fis' e
  \skip 4*2  gis fis
  \skip 4*2  g fis
  \skip 4*2  a gis
  \skip 4*2  a gis
  \skip 4*2  a \skip 4*1 a
  \skip 4*1  b \skip 4*1 bis
  \skip 4*1  cis
   cis,8[ d b e]
  \skip 4*1  fis4 e
  \skip 4*2  a gis
  \skip 4*2  fis e
  \skip 4*2  b' a
  \skip 4*2  b ais
  \skip 4*2  cis b d
  \skip 4*1  f, \skip 4*1 e
  \skip 4*1  a a, r
}

% }}}
% {{{ middle voice

middlevoice =  \relative c'' {

  % section a
  \stemUp
  \tuplet 3/2 {  a,8[ a' cis] }
  \stemDown
  \tuplet 3/2 {  fis[ a, cis ] } \tuplet 3/2 {  e[ a, cis ] }
  \stemUp
  \tuplet 3/2 {  a,[ a' cis ] }

  \stemUp
   gis,8*2/3[ b'8*2/3 d8*2/3]
  \stemDown
   fis8*2/3[ b,8*2/3 d8*2/3 ]  e8*2/3[ b8*2/3 d8*2/3 ]
  \stemUp
   gis,,8*2/3[ b'8*2/3 d8*2/3 ]

   e,,8*2/3[ b''8*2/3 d8*2/3 ]
  \stemDown
   a'8*2/3[ b,8*2/3 d8*2/3 ]  gis8*2/3[ b,8*2/3 d8*2/3 ]
  \stemUp
   e,,8*2/3[ b''8*2/3 d8*2/3 ]

   a,8*2/3[ cis'8*2/3 e8*2/3 ]
  \stemDown
   b'8*2/3[ cis,8*2/3 e8*2/3 ]  a8*2/3[ cis,8*2/3 e8*2/3 ]
  \stemUp
   a,,8*2/3[ cis'8*2/3 e8*2/3 ]

   a,,8*2/3[ a'8*2/3 cis8*2/3 ]
  \stemDown
   gis'8*2/3[ a,8*2/3 cis8*2/3 ]  fis8*2/3[ a,8*2/3 cis8*2/3 ]
  \stemUp
   a,8*2/3[ a'8*2/3 cis8*2/3 ]

   ais,8*2/3[ g'8*2/3 cis8*2/3 ]
  \stemDown
   fis8*2/3[ g,8*2/3 cis8*2/3 ]  e8*2/3[ g,8*2/3 cis8*2/3 ]
  \stemUp
   ais,8*2/3[ g'8*2/3 cis8*2/3 ]

   b,8*2/3[ fis'8*2/3 a8*2/3 ]
  \stemDown
   e'8*2/3[ fis,8*2/3 a8*2/3 ]
  \stemUp
   b,8*2/3[ fis'8*2/3 a8*2/3 ]
  \stemDown
   dis8*2/3[ fis,8*2/3 a8*2/3 ]

  \stemUp
   e,8*2/3[ gis'8*2/3 b8*2/3 ]
   e8*2/3[ gis,8*2/3 b8*2/3 ]
  \stemDown
  e,4 \skip 4*1

  % section b
  \stemUp
   e,8*2/3[ gis'8*2/3 b8*2/3 ]
  \stemDown
   fis'8*2/3[ gis,8*2/3 b8*2/3 ]  e8*2/3[ gis,8*2/3 b8*2/3 ]
  \stemUp
   e,8*2/3[ gis8*2/3 b8*2/3 ]

   e,,8*2/3[ a'8*2/3 cis8*2/3 ]
  \stemDown
   gis'8*2/3[ a,8*2/3 cis8*2/3 ]  fis8*2/3[ a,8*2/3 cis8*2/3 ]
  \stemUp
   e,8*2/3[ a8*2/3 cis8*2/3 ]

   e,,8*2/3[ ais'8*2/3 cis8*2/3 ]
  \stemDown
   g'8*2/3[ ais,8*2/3 cis8*2/3 ]  fis8*2/3[ ais,8*2/3 cis8*2/3 ]
  \stemUp
   e,8*2/3[ ais8*2/3 cis8*2/3 ]

   e,,8*2/3[ b''8*2/3 d8*2/3 ]
  \stemDown
   a'8*2/3[ b,8*2/3 d8*2/3 ]  gis8*2/3[ b,8*2/3 d8*2/3 ]
  \stemUp
   e,8*2/3[ b'8*2/3 d8*2/3 ]

   eis,8*2/3[ b'8*2/3 d8*2/3 ]
  \stemDown
   a'8*2/3[ b,8*2/3 d8*2/3 ]  gis8*2/3[ b,8*2/3 d8*2/3 ]
  \stemUp
   eis,8*2/3[ b'8*2/3 d8*2/3 ]

   fis,8*2/3[ a8*2/3 cis8*2/3 ]
  \stemDown
   a'8*2/3[ a,8*2/3 cis8*2/3 ]
  \stemUp
   fis,8*2/3[ a8*2/3 cis8*2/3 ]
  \stemDown
   a'8*2/3[ a,8*2/3 cis8*2/3 ]

  \stemUp
   d,8*2/3[ d'8*2/3 fis8*2/3 ]
  \stemDown
   b8*2/3[ d,8*2/3 fis8*2/3 ]
  \stemUp
   d,8*2/3[ d'8*2/3 fis8*2/3 ]
  \stemDown
   bis8*2/3[ d,8*2/3 fis8*2/3 ]

  \stemUp
   cis,8*2/3[ eis'8*2/3 gis8*2/3 ]
  \stemDown
   cis8*2/3[ eis,8*2/3 gis8*2/3 ]
  \skip 2*1

  %17
  \stemUp
   a,,8*2/3[ a'8*2/3 cis8*2/3 ]
  \stemDown
   fis8*2/3[ a,8*2/3 cis8*2/3 ]  e8*2/3[ a,8*2/3 cis8*2/3 ]
  \stemUp
   a,8*2/3[ a'8*2/3 cis8*2/3 ]

   a,8*2/3[ b'8*2/3 d8*2/3 ]
  \stemDown
   a'8*2/3[ b,8*2/3 d8*2/3 ]  gis8*2/3[ b,8*2/3 d8*2/3 ]
  \stemUp
   a,8*2/3[ b'8*2/3 d8*2/3 ]

   a,8*2/3[ gis'8*2/3 b8*2/3 ]
  \stemDown
   fis'8*2/3[ gis,8*2/3 b8*2/3 ]  e8*2/3[ gis,8*2/3 b8*2/3 ]
  \stemUp
   a,8*2/3[ gis'8*2/3 b8*2/3 ]

   a,8*2/3[ cis'8*2/3 e8*2/3 ]
  \stemDown
   b'8*2/3[ cis,8*2/3 e8*2/3 ]  a8*2/3[ cis,8*2/3 e8*2/3 ]
  \stemUp
   a,8*2/3[ cis8*2/3 e8*2/3 ]

   fis,8*2/3[ cis'8*2/3 e8*2/3 ]
  \stemDown
   b'8*2/3[ cis,8*2/3 e8*2/3 ]  ais8*2/3[ cis,8*2/3 e8*2/3 ]
  \stemUp
   fis,8*2/3[ cis'8*2/3 e8*2/3 ]

  \stemUp
   d,8*2/3[ d'8*2/3 fis8*2/3 ]
  \stemDown
   cis'8*2/3[ d,8*2/3 fis8*2/3 ]  b8*2/3[ d,8*2/3 fis8*2/3 ]
   d'8*2/3[ d,8*2/3 fis8*2/3 ]

  \stemUp
   dis,8*2/3[ a'8*2/3 b8*2/3 ]
  \stemDown
   f'8*2/3[ a,8*2/3 b8*2/3 ]
  \stemUp
   e,8*2/3[ gis8*2/3 d'8*2/3 ]
  \stemDown
   e8*2/3[ gis,8*2/3 d'8*2/3 ]

  \stemUp
   a,8*2/3[ cis'8*2/3 e8*2/3 ]
  \stemDown
   a8*2/3[ cis,8*2/3 e8*2/3 ]
  \skip 2*1

}

% }}}
% {{{ bass

bass =  \relative c' {
  \stemDown

  %section a
  a2. a4 gis2. gis4 e2. e4 a2. a4 a2. a4 ais2. ais4 b2 b e,2. \skip 4*1
  %section b
  e e'4 e,2. e'4 e,2. e'4 e,2. e'4
  eis2. eis4 fis2 fis d d cis2. r4
  a2. a4 a2. a4 a2. a4 a2. a'4
  fis2. fis4 d1 %original has dotted half why?
  dis2 e2 a,2 a'4 \skip 4*1
}

% }}}

\score {
      \context Staff = "guitar" <<
        \global
        \context Voice = "melody"      { \melody      }
        \context Voice = "middlevoice" { \middlevoice }
        \context Voice = "bass"        { \bass        }
      >>
  \layout {
        line-width = 18.0 \cm
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
    \tempo 4 = 60
    }

}
