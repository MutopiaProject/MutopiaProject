% this is a comment

% --------------------
% --- GENERAL INFO ---
% --------------------

% --- version statement

\version "2.18.2"

% --- language used in the code

\language "english" %  -s/--sharp -f/--flat -ss/-x/--sharpsharp -ff/--flatflat

% --- articulate script for better MIDI output

\include "articulate.ly"

% --- printing info

\header {
  title        =  \markup {  \fontsize #0 "Enfantillages Pittoresques" }
  dedication  = "(1913)"
  composer     = "Érik Satie (1866-1925)"
  style        = "Avant-garde"
  license      = "Creative Commons Attribution-ShareAlike 4.0"
  enteredby    = "Frédéric Duperray"
  lastupdated  = "2016-Aug-09"
  date         = "1890"
  source       = "Paris: E. Demets, 1914. Plate E. 1819 D."

  mutopiatitle       = "Enfantillages Pittoresques"
  mutopiacomposer    = "SatieE"
  mutopiainstrument  = "Piano"
  mutopiastyle       = "Modern"
  maintainer         = "Frédéric Duperray"
  maintainerEmail    = "duperray (dot) fred (at) gmail (dot) com"

 footer = "Mutopia-2016/09/14-2132"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " 2016 " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License "\char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
} % stop header

\paper {
  top-margin = 8\mm                              %-minimum top-margin: 8mm
  top-markup-spacing.basic-distance = #5         %-dist. from bottom of top margin to the first markup/title
  markup-system-spacing.basic-distance = #16     %-dist. from header/title to first system
  top-system-spacing.basic-distance = #12        %-dist. from top margin to system in pages with no titles
  last-bottom-spacing.basic-distance = #11       %-pads music from copyright block

  % --- Set these to false after all editing is finished
  %   ragged-bottom = ##f
  %   ragged-last-bottom = ##f
  %   ragged-right = ##f
} % stop paper

% --- the 3 parts of the piece

\include "prelude.ly"
\include "berceuse.ly"
\include "marche.ly"

% --- the book with the scores

\book {

  % --- sheet music

  \score {
    { \prelude }
    \layout {
      \context {
        \PianoStaff
        \override StaffGrouper.staff-staff-spacing.basic-distance = #12 % space between the treble and bass staffs
      } % stop PianoStaff context
      \context {
        \Score
        \remove "Bar_number_engraver"% there are no barnumbers in the original score
        % \override Score.BarNumber.break-visibility = ##(#t #t #t) % to show all bar numbers while coding
         \remove "Metronome_mark_engraver" % to hide tempo indication
      } % stop Score context
    } % stop layout
    \header { piece = \markup { \hspace #29 \fontsize #4 \bold "I. Petit Prélude à la journée" } }
  } % stop prelude score

  \score {
    { \berceuse }
    \layout {
      \context {
        \PianoStaff
        \override StaffGrouper.staff-staff-spacing.basic-distance = #12 % space between the treble and bass staffs
      } % stop PianoStaff context
      \context {
        \Score
        \remove "Bar_number_engraver"% there are no barnumbers in the original score
        % \override Score.BarNumber.break-visibility = ##(#t #t #t) % to show all bar numbers while coding
         \remove "Metronome_mark_engraver" % to hide tempo indication
      } % stop Score context
    } % stop layout
    \header { piece = \markup { \hspace #41  \fontsize #4 \bold  "II. Berceuse" } }
  } % stop berceuse score

  \score {
    { \marche }
    \layout {
      \context {
        \PianoStaff
        \override StaffGrouper.staff-staff-spacing.basic-distance = #12 % space between the treble and bass staffs
      } % stop PianoStaff context
      \context {
        \Score
        \remove "Bar_number_engraver"% there are no barnumbers in the original score
        % \override Score.BarNumber.break-visibility = ##(#t #t #t) % to show all bar numbers while coding
         \remove "Metronome_mark_engraver" % to hide tempo indication
      } % stop Score context
    } % stop layout
    \header { piece = \markup { \hspace #26  \fontsize #4 \bold  "III. Marche Du Grand Escalier" } }
  } % stop marche score

  % --- midi

  \score  {
    \articulate <<
      \set Score.midiInstrument = #"acoustic grand"
      {
        \tempo 4 = 106 \prelude
        \tempo 4 = 88 \berceuse
        \tempo 4 = 116 \marche
      }
    >> % stop articulate
    \midi {
    } % stop midi
  } % stop score
} % stop book







