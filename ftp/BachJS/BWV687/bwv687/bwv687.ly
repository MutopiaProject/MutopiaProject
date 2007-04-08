\version "2.6.4"

\header {
 mutopiatitle = "Aus tiefer Noth schrei' ich zu dir."
 mutopiacomposer = "BachJS"
 mutopiaopus = "BWV 687"
 mutopiainstrument = "Organ"
 date = ""
 source = "Bach-Album, Ernst H. Wolfram(editor), C. F. Peters, Leipzig"
 style = "Baroque"
 copyright = "Public Domain"
 maintainer = "Urs Metzger"
 maintainerEmail = "urs@ursmetzger.de"
 lastupdated = ""

 title = "Aus tiefer Noth schrei' ich zu dir."
 composer = "Johann Sebastian Bach"
 opus="BWV 687"

 footer = "Mutopia-2006/03/06-694"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\include "deutsch.ly"

#(set-default-paper-size "a4" 'landscape)

global = {
   \key h \minor
   \time 2/4
   #(set-accidental-style 'default)
   #(revert-auto-beam-setting   '(end * * 2 4) 1 4)
   #(override-auto-beam-setting '(end 1 16 2 4) 1 4)
}

halsup = {
  \stemUp
  \tieUp
}

halsdown = {
  \stemDown
  \tieDown
}

sopran = {
   \new Voice {
      \global
      \halsup
      \relative d'' {
         d2\rest
         \repeat volta 2 {
            d2\rest
            d2\rest
            r2
            %% Takt 5 ==============================================
            r2
            cis2
            fis,2
            cis'2
            d2
            %% Takt 10 =============================================
            cis4. h8
            a2
            h2
            cis2
            r2
            %% Takt 15 =============================================
            r2
            d2\rest
            r2
            r2
            r2
            %% Takt 20 =============================================
            cis2
            d2
            e2
            d4. c8
            h2
            %% Takt 25 =============================================
            a2
            g2
            fis2~
            fis8 r8 r4
         }
         \alternative {
            {
               r2
            }
            {
               \set Score.currentBarNumber = #29
               r2
            }
         }
         %% Takt 30 =============================================
         r2
         r2
         r2
         r2
         h2
         %% Takt 35 =============================================
         a2
         d2
         cis2
         h2
         e4. d8
         %% Takt 40 =============================================
         cis2
         h2
         r2
         r2
         f'2\rest
         %% Takt 45 =============================================
         f2\rest
         r2
         r2
         d2
         cis2
         %% Takt 50 =============================================
         d2
         e2
         a,4. h8
         cis2
         h2
         %% Takt 55 =============================================
         a2
         r2
         r2
         fis'2\rest
         r2
         %% Takt 60 =============================================
         r2
         r2
         a,2
         d2
         cis2
         %% Takt 65 =============================================
         h2
         fis4. g8
         a2
         g2
         \tieDown \shiftOn
         fis2~
         %% Takt 70 =============================================
         fis2~
         fis2~
         fis2~
         fis2~
         fis2~ \bar "|."
      }
   }
}

alt = {
   \new Voice {
      \global
      \relative fis' {
         e2\rest
         \repeat volta 2 {
            e2\rest
            e8\rest fis h, fis'
            g8 fis16 e d8 e
            %% Takt 5 ==============================================
            \halsdown
            fis16 c' h8~ h16 e,8 dis16
            g16 fis e8~ e fis16 e
            d8 e16 d cis8 d16 e
            fis8 g4 fis16 e
            d8 fis h fis
            %% Takt 10 =============================================
            eis8 fis16 gis a8 gis
            fis2~
            fis16 a g fis e d cis h
            ais8 r r ais'16 h
            cis8 d16 cis h ais h8
            %% Takt 15 =============================================
            ais8 r8 r4
            g8\rest g fis e
            fis16 g a8 h cis
            d8 r16 g,~ g fis8 e16
            a8. gis16 a e'8 d16
            %% Takt 20 =============================================
            cis8. h16 a g fis e
            d8. e16 fis gis a h
            cis8 h16 a h d cis h
            a8 fis g a
            g16 fis e8 dis cis
            %% Takt 25 =============================================
            h8. cis16 dis e fis8~
            fis8 h,4 cis8~
            cis16 d e8~ e16 d cis8
            d8. e16 cis8 h
         }
         \alternative {
            {
               ais8 c\rest c4\rest
            }
            {
               ais8\noBeam fis' d g
            }
         }
         %% Takt 30 =============================================
         fis8 e a16 g fis8
         e8. d16 cis8 fis
         e8 a gis fis
         h16 a gis8 fis4~
         fis16 e fis a g fis e d
         %% Takt 35 =============================================
         e8 e d g
         fis8 e a16 g fis8
         e16 fis gis8~ gis16 fis a8~
         a16 a g fis g fis e dis
         e8 fis g d
         %% Takt 40 =============================================
         e8 fis cis16 d e8
         fis16 e fis8~ fis16 h, e fis
         g8. fis16 gis8 ais
         h8 r r4
         r2
         %% Takt 45 =============================================
         r8 cis h cis
         d8 g,16 a h8 a
         g8 d'~ d16 c8 c16~
         c8 h a h
         cis8 fis,16 g a8 g
         %% Takt 50 =============================================
         fis16 e fis g fis e d cis
         h8 e16 fis g fis8 g16~
         g16 d fis8 e fis16 gis
         a8 a gis a
         h8 e,16 fis g8 fis
         %% Takt 55 =============================================
         e4 d16 e fis8~
         fis16 e fis g a8 h16 cis
         d8 r r4
         r8 cis fis, g
         a8 d16 cis h8 cis
         %% Takt 60 =============================================
         d16 d8 cis16 h16 ais h8~
         h16 a8 g16~ g fis8 e16~
         e16 d8 cis16 d8 fis
         h8 a g d16 e
         fis8 e d4~
         %% Takt 65 =============================================
         d8 h e4~
         e16  e d cis d4~
         d8 cis fis e
         d8 ais16 h cis8 h
         ais2
         %% Takt 70 =============================================
         ais8\rest fis'16 gis ais8 h
         \once \override NoteColumn #'force-hshift = #1.5
         cis16 d e8~ e16 d cis d
         <<
            \new Voice {
               \once \override NoteColumn #'force-hshift = #1.5
               \stemDown cis8 h16 ais gis8 ais
               h8 e,8\rest s4
            }
            \new Voice \relative h' {
               \stemUp
               r8 h[ fis' e]
               d8 ais16 h cis8 h
            }
         >>
         ais2 \fermata
      }
   }
}

tenor = {
   \new Voice {
      \global
      \halsup
      \relative d' {
         h8\rest cis fis, cis'
         \repeat volta 2 {
            d8 cis16 h a8 h
            cis8 d16 e fis d e ais,
            d16 h fis8 h e,
            %% Takt 5 ==============================================
            dis8 e16 fis g8 fis
            e8 cis' fis, cis'
            d8 cis16 h ais8 h
            cis16 d e8 ais,4
            h16 fis d e fis h, h'8~
            %% Takt 10 =============================================
            h16 h a gis fis eis cis'8~
            cis16 h a gis fis a d8~
            d8 h e r
            r8 e16 fis g8 r
            r8 fis~\noBeam fis8. e16
            %% Takt 15 =============================================
            fis8 cis d e
            d16 cis h8 a g
            fis8 e16 g fis h8 ais16
            h8 d cis h
            cis16 d e8 fis8 gis
            %% Takt 20 =============================================
            a8 g,! a h
            a8 h a gis
            a16 h cis8 d e
            fis8 r r4
            r8 g, fis e
            %% Takt 25 =============================================
            fis16 g a8 h cis
            dis4 e
            ais,8. ais16 h8. ais16
            h16 a! g8~ g16 fis8 e16
         }
         \alternative {
            {
               fis8\noBeam cis' fis, cis'
            }
            {
               fis,8 h\rest h\rest h
            }
         }
         %% Takt 30 =============================================
         d8 gis, a h
         e,16 fis gis8 a8. h16~
         h16 a gis fis e e' d cis
         dis8 eis fis16 e d cis
         d8 fis, d g~
         %% Takt 35 =============================================
         g16 e d cis fis8 a~
         a16 h8 cis16 d8 a16 h
         cis8 r16 gis a8 e
         fis8 g dis16 e fis8
         g8 fis r16 h16 fis a
         %% Takt 40 =============================================
         g8 cis, r16 g' fis e
         dis8 a' g c
         h8 ais e'16 d cis8
         h8 d cis d
         e8 a,16 h cis8 h
         %% Takt 45 =============================================
         a4~ a16 a8 g16
         a8 e' fis e
         d8 g16 fis e8 fis
         g4~ g16 fis8 e16~
         e8 r r4
         %% Takt 50 =============================================
         r8 a, h a
         gis8 cis16 h a8 h
         cis8. d16 e8 d
         cis8 d16\rest fis~ fis eis8 fis16
         dis8 h e8. d16
         %% Takt 55 =============================================
         cis16 h cis a d8. d16
         cis8 d8~ d16 d g8
         fis8 a, d cis
         h8 fis16 g a8 g
         fis16 e fis a gis h8 ais16
         %% Takt 60 =============================================
         h8 cis e d
         cis8 fis,16 g a8 g
         fis8 g a r
         r16 fis g a h cis d8
         r4 r16 d, e fis
         %% Takt 65 =============================================
         g16 fis8 e16~e16 d8 cis16
         d16 e fis8~ fis16 h8 h16
         a16 gis a8 r16 d8 cis16
         h8 r8 r16 e8 d16
         cis16 d e8~ e16 d8 cis16~
         %% Takt 70 =============================================
         cis16 h fis8~ fis16 e8 d16
         cis8 cis' fis, gis
         ais8 d16 cis h8 cis
         <<
            \new Voice {
               \stemUp \shiftOff
               d8 cis16 d e8 d
               cis2
            }
            \new Voice {
               \stemUp \shiftOff
               s4 fis,8\rest fis
               <<
                  \new Voice {
                     \stemUp \shiftOn fis2
                  }
                  \new Voice {
                     \stemUp \shiftOnn cis2
                  }
               >>
            }
         >>
      }
   }
}

bass = {
   \new Voice {
      \global
      \halsdown
      \relative h, {
         h2\rest
         \repeat volta 2 {
            h8\rest cis fis h,
            ais8 h16 cis d8 cis
            h8 ais h16 a8 g16
            fis8 g16 a h4~
            %% Takt 5 ==============================================
            h8 ais16 gis ais4
            h8 h fis' h,
            ais8 h16 cis d8 cis
            h4~ h8. gis16
            cis4~ cis8. eis16
            %% Takt 10 =============================================
            fis4~ fis8. d16
            g2~
            g16 fis g fis e d cis h
            ais fis h a g fis g8
            fis8 r r4
            %% Takt 15 =============================================
            r2
            r8 cis' d e
            d16 cis h8 a g
            fis8 cis'4 h8
            a8 e'8 fis g
            %% Takt 20 =============================================
            fis16 e d8 cis h
            a8 a'4 g8
            fis16 e d c h a g fis
            g8. a16~ a h8 cis16
            dis16 e fis8~ fis16 e dis cis
            %% Takt 25 =============================================
            h16 c32 h a16 g fis e e'8~
            e8 cis d e
            d16 cis h8 a g
         }
         \alternative {
            {
               fis8 g8\rest g4\rest
            }
            {
               fis8 g8\rest g4\rest
            }
         }
         %% Takt 30 =============================================
         r8 cis a d
         cis8 h fis'16 e d8
         cis8 dis e ais,
         h8 cis fis,16 gis ais8
         h8 d h e
         %% Takt 35 =============================================
         cis8 a d16 cis d e
         fis8 g fis16 e fis gis
         a8 eis fis cis
         dis8 e h4~
         h16 h8 ais16 h4~
         %% Takt 40 =============================================
         h16 h ais gis a8 a'~
         a8 dis, e4~
         e16 fis e d cis8 fis
         h,8 r r4
         r8 d e d
         %% Takt 45 =============================================
         cis8 fis16 e d8 e
         fis8 e~ e16 d8 c16
         h8 h'4 a8
         g16 a h cis d8 gis,
         a16 g! a h a g fis e
         %% Takt 50 =============================================
         d4 r
         r8 e cis d
         e8 a,16 h cis8 h
         a4 f'8\rest a~
         a8 g16 fis e fis g8~
         %% Takt 55 =============================================
         g8 g, fis g
         a8 d,16 e fis8 e
         d8 r r4
         r2
         r4 r8 fis'
         %% Takt 60 =============================================
         h8[ a!] g d16 e
         fis8 e d4~
         d8 e fis16 e d cis
         h4 r8 h'~
         h16 a8 g16 fis8 r
         %% Takt 65 =============================================
         r8 d gis, ais
         h8 fis'16 e d8 e
         fis8 fis, fis'4~
         fis16 fis e d e4~
         e8 cis fis e
         %% Takt 70 =============================================
         d8 ais16 h cis8 h
         ais8 r h r
         fis'2~
         fis8 fis ais, h
         fis2_\fermata
      }
   }
}

right = {
   \clef treble
   <<
   \sopran
   \alt
   >>
}

left = {
   \clef bass
   <<
   \tenor
   \bass
   >>
}

%% for print
\score {
   \new PianoStaff {
      \set PianoStaff.instrument = \markup {"Manualiter." \hspace #1.0 }
         <<
         \context Staff = right {
            \context Voice = right \right
         }
         \context Staff = left {
            \context Voice = left \left
         }
      >>
   }
   \layout{}
}

%% for midi with repeats
\score {
   \unfoldRepeats {
      \new PianoStaff {
         <<
            \context Staff = right {
               \set Staff.midiInstrument = "pan flute"
               \context Voice = right \right
            }
               \context Staff = left {
               \set Staff.midiInstrument = "pan flute"
            \context Voice = left \left
            }
         >>
      }
   }
   \midi{
      \tempo 4 = 50
   }
}
