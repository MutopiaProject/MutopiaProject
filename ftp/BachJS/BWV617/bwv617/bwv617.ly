\version "2.10.33"

\header {
 mutopiatitle = "Herr Gott nun schleuß den Himmel auf"
 mutopiacomposer = "BachJS"
 mutopiaopus = "BWV 617"
 mutopiainstrument = "Organ"
 date = "1715"
 source = "Autograph"
 style = "Baroque"
 copyright = "Creative Commons Attribution-ShareAlike 3.0"
 maintainer = "Urs Metzger"
 maintainerEmail = "urs@ursmetzger.de"
 lastupdated = "2007/Nov/4"

 title = "Herr Gott nun schleuß den Himmel auf"
 composer = "Johann Sebastian Bach"
 opus="BWV 617"
 footer = "Mutopia-2007/11/05-1100"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

global = {
   \key a \minor
   #(set-accidental-style 'default)
   \override Score.MetronomeMark #'transparent = ##t
   \override Score.BarNumber #'break-visibility = #all-invisible
}

\paper {
   head-separation = 0 \cm
   ragged-bottom = ##f
   ragged-last-bottom = ##f

}

#(set-default-paper-size "a4" 'landscape)
#(set-global-staff-size 18)

halsup        = { \stemUp \tieUp \slurUp }
halsdown      = { \stemDown \tieDown \slurDown }
halsneutral   = { \stemNeutral \tieNeutral }
shifttiedown  = { \once \override Tie #'extra-offset = #'( 0 . -0.5 ) }
shifttieup    = { \once \override Tie #'extra-offset = #'( 0 . 0.5 ) }
stemslong     = { \override Stem #'details #'beamed-lengths = #'( 5 ) }
stemsnormal   = { \revert Stem #'details #'beamed-lengths }

sopran = {
   \new Voice \relative c'' {
      \global
      \halsup
      \compressMusic #'( 3 . 2 ) {
         h2\rest c
         \repeat volta 2 {
            h4 c d e
            f4 d e2\fermata
            f4\rest e c h
            %% Takt  5 ==================================================
            a4 e' e( dis)\trill
         }
         \alternative {
            {
               e2 d\rest
               d2\rest c
            }
            {
               e1
            }
         }
         d2\rest c
         %% Takt 10 ==================================================
         d4 d h h\fermata
         d4\rest h c d
         d4 d d\rest h
         e4 c h c
         a4 gis a2
         %% Takt 15 ==================================================
         d2\rest e
         d4 d d c
         h2 c4 \times 4/3 d8 \times 2/3 e
         f4 e e e
         dis2\trill
         <<
            \new Voice {
               \stemUp \tieUp \shifttieup e2~
               \shifttieup \times 10/9 e4. \times 2/3 dis8 e2\fermata
            }
            \new Voice {
               \stemDown \times 4/3 h8\rest \times 2/3 h~ \times 4/3 h \times 2/3 a
               \stemUp \shiftOn \times 10/9 gis4. \times 2/3 fis8 e2
            }
         >>
      }
   }
}

alt = {
   \new Voice \relative e' {
      \global
      \halsdown
      \compressMusic #'( 3 . 2 ) {
         e2\rest e
         \repeat volta 2 {
            e4 e g g
            a4 h c2_\fermata
            g4\rest e e e
            %% Takt  5 ==================================================
            a4 g fis2
         }
         \alternative {
            {
               e2 e\rest
               e2\rest e
            }
            {
               e1
            }
         }
         e2\rest e
         %% Takt 10 ==================================================
         fis4 a g g
         e\rest g g fis
         g4 h e,\rest d
         e4 e e e
         fis4 e e e\rest
         %% Takt 15 ==================================================
         g2\rest \times 4/3 h8 \times 2/3 b \times 4/3 a \times 2/3 g
         f4 f e e
         fis4 e e e\rest
         e4\rest e8 fis g4 fis
         fis2 \shifttiedown e~
         %% Takt 20 ==================================================
         \dotsDown \times 10/9 e4. \times 2/3 a8 gis!2
      }
   }
}

tenor = {
   \new Voice \relative h' {
      \global
      %#(set-time-signature 24 16 '(6 6 6 6))
      #(override-auto-beam-setting '(end * * * *) 6 16)
      #(override-auto-beam-setting '(end * * * *) 12 16)
      #(override-auto-beam-setting '(end * * * *) 18 16)
      #(override-auto-beam-setting '(end * * * *) 24 16)
      r16 h a gis a e c f e d e c \clef "bass" a d c h c a e h' a gis a dis,
      \repeat volta 2 {
         gis a h c d e a, h c d e f \clef "treble" h, c d e f g c, d e f g a
         d, g f e f d h e d c d h \clef "bass" g d' c h c g e a g f g e
         c d e f g a h c d e fis gis a, h c d e f g,! a h c d e
         %% Takt  5 ==================================================
         f, g a h c d e f e d e c a d c h c a fis c' h a h fis
      }
      \alternative {
         {
            gis a h c d e \clef "treble" c d e fis gis a gis a h c d e f! d h d gis,! h
            e, h' a gis a e c f e d e c \clef "bass" a d c h c a e h' a gis a dis,
         }
         {
            gis e' d c d h e, d' c h c a e c' h a h gis e h' a gis a fis
         }
      }
      dis a' gis fis gis d cis e a c, h gis' \stemslong a, \clef "treble" h'' a gis a e \stemsnormal c f! e d e c
      %% Takt 10 ==================================================
      \clef "bass" a d c h c a fis h a g a fis d a' g fis g d h e d c d h
      \stemDown g \clef "treble" e''' d c d h \stemNeutral g c h a h g e fis g a h c fis, g a h c d
      h c h a h g d g f! e f d h e d c d h g h d h f' d
      h c d e fis gis a, h c d e f \clef "bass" gis, a h c d e a, h c gis! a e
      c fis a fis c' a d, gis h gis d' h \clef "treble" cis a' g! f! g e a, g' f e f d
      %% Takt 15 ==================================================
      a f' e d e cis a e' d cis d h \clef "bass" gis d' cis h cis g fis a d f, e cis'!
      \clef "treble" d e f g a h c,! d e fis gis a h, c d e fis! gis! \clef "bass" a, d c h c a
      fis h a gis a fis gis a h c d e \clef "treble" a, h' a gis a a, h a' g f! g cis,
      d gis h gis d' h c! e, fis gis a h cis g e g cis, e ais, h cis d e fis
      a,! dis fis dis a' fis c'! a fis a dis, fis \clef "bass" h, e d! c d h e, d' c h c a
      %% Takt 20 ==================================================
      d, c' h a h d, cis h' a gis a c, h e gis! e h' gis e' \tempo 4=44 h gis \tempo 4=36 h \tempo 4=8 e,8\fermata
   }
}

right = {
   \clef treble
   \time 6/4
   \set Staff.timeSignatureFraction = #'(4 . 4)
   <<
   \alt
   \sopran
   >>
}

left = {
   \set Staff.timeSignatureFraction = #'(24 . 16)
   \clef treble \tenor
}

pedal = {
   \global
   \clef "bass"
   \relative a {
      #(set-time-signature 12 8 '(3 3 3 3))
      #(override-auto-beam-setting '(end * * * *) 6 16)
      #(override-auto-beam-setting '(end * * * *) 12 16)
      #(override-auto-beam-setting '(end * * * *) 18 16)
      #(override-auto-beam-setting '(end * * * *) 24 16)
      a8 a, a'~ a a, a'~ a a, a'~ a a, a'
      \repeat volta 2 {
         e gis e a a, a' g h g c c, c'
         f, a f g g, g' c c, c'~ c c, c'~
         c c, c' gis h e, a a, a' e g e
         %% Takt  5 ==================================================
         f f, f' c e c fis fis, fis' h, dis h
      }
      \alternative {
         {
            e e, e'~ e e, e'~ e e, e'~ gis, gis' e
            a8 a, a'~ a a, a'~ a a, a'~ a a, a'
         }
         {
            e e, e'~ e e, e'~ e e, e'~ e e, e'~
         }
      }
      e e, e'~ e e, e' a a, a'~ a a, g'!
      %% Takt 10 ==================================================
      fis a fis d' d, fis g g, g'~ g g, g'~
      g g, g'~ e g e a a, a' d, fis d
      g g, g'~ g g, g'~ g g, g'~  \stemUp g g, a'
      \stemNeutral gis h e, a a, a' e gis! e a a, a'
      dis, fis dis e e, e' a a, a'~ a a, a'~
      %% Takt 15 ==================================================
      a a, a'~ a a, a'~ a a, a'~ a a, a'~
      h, d h a' a, a' gis h e, a a, a'
      dis, fis dis e e, e' a a, a'~ a a, a'~
      a a, a'~ a a, a' ais ais, ais' fis ais fis
      h8 h, h' a! c fis, gis e gis c, e a,
      %% Takt 20 ==================================================
      \times 6/4 e'2 \times 6/4 e,_\fermata
   }
}


\score {
   <<
      \new PianoStaff {
         <<
            \context Staff = right {
               \context Voice = right \right
            }
            \context Staff = left {
               \context Voice = left \left
            }
         >>
      }
      \context Staff = pedal {
         \context Voice = pedal \pedal
      }
   >>

   \layout{
      indent = 1\cm
   }
}

\score {
   \unfoldRepeats {
      <<
         \context Staff = right {
            \set Staff.midiInstrument = "pan flute"
            \right
         }
         \context Staff = left {
            \set Staff.midiInstrument = "recorder"
            <<
               \left
               \transpose c c'' \left
            >>
         }
         \new Staff {
            \set Staff.midiInstrument = "bassoon"
            \transpose d d, \pedal
         }
      >>
   }
   \midi {
      \context {
         \Score
         tempoWholesPerMinute = #(ly:make-moment 56 4)
      }
   }
}
