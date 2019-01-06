\header {
   title             = "Fughetta"
   subtitle          = "for two guitars"
   piece             = "Allegro"
   composer          = "Ferdinando Carulli (1770-1841)"
   
   mutopiatitle      = "Fughetta"
   mutopiacomposer   = "CarulliF"
   mutopiainstrument = "Guitar Duet"
   date              = "19th C."
   source            = "Manuscript"
   style             = "Classical"
   license           = "Creative Commons Attribution-ShareAlike 4.0"
   maintainer        = "jeff covey"
   maintainerEmail   = "jeff.covey@pobox.com"
   maintainerWeb     = "http://pobox.com/~jeff.covey/"
   lastupdated       = "2005/June/22"
   footer = "Mutopia-2018/12/04-568"
   copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white "ǀ" \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {"ǀ" "ǀ"}}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " ©" 2006 ""by " \maintainer " — " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License" " — free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white "ǀ" }}}
   tagline = ##f
}

\version "2.18.0"

global =  {
   % lilytidy template: guitar
   \transposition c
   \set Staff.midiInstrument = "acoustic guitar (nylon)"
   % lilytidy template end
   \key d \major
   \time 2/4
   \skip 2*48
   \bar "|."
}

guitarone = \relative c'' {
   a4 g                           | % 1
   fis8 e fis d                   | % 2
   cis b cis a                    | % 3
   d4 fis                         | % 4
   b a                            | % 5
   cis d                          | % 6
   b8 a g fis                     | % 7
   fis4 e                         | % 8
   a cis                          | % 9
   <<d, d'>> d8 fis               | % 10
   <<a,,4 e''>> e8 g              | % 11
   <<d,4 fis'>> d                 | % 12
   g fis                          | % 13
   e fis                          | % 14
   g8 fis e d                     | % 15
   <<a,4 d'>> cis                 | % 16
   b dis                          | % 17
   <<e,, e''>> e8 g               | % 18
   fis4 fis8 a                    | % 19
   <<e,,4 g''>> e                 | % 20
   a, g                           | % 21
   fis8 e fis d                   | % 22
   cis b cis a                    | % 23
   d4 fis                         | % 24
   fis ais                        | % 25
   b b8 d                         | % 26
   cis4 cis8 e                    | % 27
   d4 b                           | % 28
   e, d                           | % 29
   cis8 b cis a                   | % 30
   gis fis gis e                  | % 31
   a4 cis                         | % 32
   a' cis                         | % 33
   <<d,4 d'>> d8 fis              | % 34
   <<a,,4 e''>> e8 g              | % 35
   <<d,4 fis'>> d                 | % 36
   a' a                           | % 37
   b8 b, b'4                      | % 38
   g g                            | % 39
   a8 a, a'4                      | % 40
   fis fis                        | % 41
   g8 g, g'4                      | % 42
   e e                            | % 43
   fis8 fis, fis'4                | % 44
   d d                            | % 45
   <<g,8 b>> g' fis e             | % 46
   <<a,, d'>> fis <<a,, e''>> cis | % 47
   <<d4 d,>> r                    | % 48
}

guitartwo = \relative c'' {
   r2                             | % 1
   r2                             | % 2
   r2                             | % 3
   r2                             | % 4
   r2                             | % 5
   r2                             | % 6
   r2                             | % 7
   r2                             | % 8
   a4 g                           | % 9
   fis8 e fis d                   | % 10
   cis b cis a                    | % 11
   d4 fis                         | % 12
   b a                            | % 13
   cis d                          | % 14
   b8 a g fis                     | % 15
   fis4 e                         | % 16
   b' a                           | % 17
   g8 fis g e                     | % 18
   dis cis dis b                  | % 19
   e4 g                           | % 20
   a cis                          | % 21
   <<d, d'>> d8 fis               | % 22
   <<a,,4 e''>> e8 g              | % 23
   <<d,4 fis'>> d                 | % 24
   fis, e                         | % 25
   d8 cis d b                     | % 26
   ais gis ais fis                | % 27
   b4 d                           | % 28
   e gis                          | % 29
   <<a, a'>> a8 cis               | % 30
   <<e,,4 b''>> b8 d              | % 31
   <<a,4 cis'>> a                 | % 32
   a g                            | % 33
   fis8 e fis d                   | % 34
   cis b cis a                    | % 35
   d4 fis                         | % 36
   d8 d' fis d                    | % 37
   g, dis e d                     | % 38
   cis cis' e cis                 | % 39
   fis, cis d cis                 | % 40
   b b' d b                       | % 41
   e, bis cis b                   | % 42
   a a' cis a                     | % 43
   d, d' a fis                    | % 44
   b, fis' b, fis'                | % 45
   g, b' a g                      | % 46
   fis a g e                      | % 47
   d4 r                           | % 48
}

\score {
   \new StaffGroup <<
      \new Staff << \global \guitarone >>
      \new Staff << \global \guitartwo >>
   >>
   \layout { }
   
  \midi {
    \tempo 4. = 76
    }


}

