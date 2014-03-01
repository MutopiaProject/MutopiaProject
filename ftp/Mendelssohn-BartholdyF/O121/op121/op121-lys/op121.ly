\version "2.18.0"
\include "deutsch.ly"
\include "defs.ly"
\include "op121a.ly"
\include "op121b.ly"
\include "op121c.ly"
\include "op121d.ly"
\include "op121e.ly"

\paper {
   ragged-bottom = ##f
   ragged-last-bottom = ##f
}

#(set-global-staff-size 16)

\header {
   title = "Vespergesang"
   subtitle = "für Männerstimmen, Violoncello und Kontrabass"
   composer = "Felix Mendelssohn Bartholdy"
   opus = "op. 121"

   mutopiatitle = "Vespergesang"
   mutopiacomposer = "Mendelssohn-BartholdyF"
   mutopiainstrument = "Voice (TBB)"
   date = "1833"
   source = "Leipzig: Breitkopf & Härtel, 1874-82. Plate M.B. 101."
   style = "Romantic"
   license = "Creative Commons Attribution-ShareAlike 4.0"
   maintainer = "Urs Metzger"
   maintainerEmail = "urs@ursmetzger.de"

 mutopiaopus = "Op. 121"
 footer = "Mutopia-2014/03/01-1940"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2014 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " " \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

\score { \scoreA
         \layout { indent = 1.9 \cm }
}
\score { \scoreB
         \layout { indent = 1.9 \cm ragged-right = ##f }
         \header { opus = " " }
}
\score { \scoreC
         \layout { indent = 1.9 \cm }
         \header { opus = " " }
}
\score { \scoreD
         \layout { indent = 1.9 \cm }
         \header { opus = " " }
}
\score { \scoreE
         \layout { indent = 1.9 \cm }
         \header { opus = " " }
}

% MIDI
\score {
   \new StaffGroup  <<
      \new Staff { \midiFlute
         \new Voice << \tempo 2 = 68  \tenorA >>
         \new Voice << \tempo 4 = 48  \tenorB >>
         \new Voice << \tempo 4 = 120 \tenorIC >>
         \new Voice << \tempo 4 = 52  \tenorID >>
         \new Voice << \tempo 4 = 84  \tenorIE >>
      }
      \new Staff { \midiFlute
         \new Voice << s1 * 108 >>
         \new Voice << s2 * 5 >>
         \new Voice << \tenorIIC >>
         \new Voice << \tenorIID >>
         \new Voice << \tenorIIE >>
      }
      \new Staff { \midiFlute
         \new Voice << \bassIA >>
         \new Voice << s2 * 5 >>
         \new Voice << \bassIC >>
         \new Voice << \bassID >>
         \new Voice << \bassIE >>
      }
      \new Staff { \midiFlute
         \new Voice << \bassIIA >>
         \new Voice << s2 * 5 >>
         \new Voice << \bassIIC >>
         \new Voice << \bassIID >>
         \new Voice << \bassIIE >>
      }
      \new Staff { \midiContrabass
         \new Voice << \transpose c c, \vcbA >>
         \new Voice << \transpose c c, \vcbB >>
         \new Voice << \transpose c c, \vcbC >>
         \new Voice << \transpose c c, \vcbD >>
         \new Voice << \transpose c c, \vcbE >>
      }
   >>
   \midi {}
}

