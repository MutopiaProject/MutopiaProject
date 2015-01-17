\version "2.18.2"

\include "english.ly"
\include "defs.ly"

\include "pA.ly"
\include "pB.ly"
\include "pC.ly"
\include "pD.ly"
\include "pE.ly"
\include "pF.ly"

%#(set-default-paper-size "letter")

\header {
                                % LILYPOND HEADERS
    title = "Rondo A Capriccio"
    subtitle = "'Rage Over A Lost Penny'"
    subsubtitle = "G Major"

    composer = "Ludwig van Beethoven (1770-1827)"
    opus = "Op. 129 (1795)"
    
                                % MUTOPIA HEADERS
    mutopiatitle = "Rondo A Capriccio"
    mutopiacomposer = "BeethovenLv"
    mutopiaopus = "Op. 129"
    mutopiainstrument = "Piano"
    date = "1795"
    source = "Augener's Edition"
    style = "Classical"
    enteredby = "Magnus Lewis-Smith"
    maintainer = "Magnus Lewis-Smith"
    maintainerEmail = "mlewissmith@users.sourceforge.net"
    maintainerWeb = "http://magware.sourceforge.net/"
    lastupdated = "2015/01/03" 
    % 2015/01/03 update to LilyPond v2.18.2 (Javier Ruiz-Alma)

    license = "Public Domain"
 footer = "Mutopia-2015/01/17-498"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

\paper {
  top-margin = 8\mm %-minimum top-margin: 8mm
  bottom-margin = 9\mm
  line-width = 192\mm
  top-markup-spacing.basic-distance = #6 %-dist. from bottom of top margin to the first markup/title
  markup-system-spacing.basic-distance = #7 %-dist. from header/title to first system
  system-system-spacing.basic-distance = #15
  top-system-spacing.basic-distance = #12 %-dist. from top margin to system in pages with no titles
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% ALL TOGETHER NOW
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% #(set-global-staff-size 11)	% pocket scores
%% #(set-global-staff-size 13)
%% #(set-global-staff-size 14)
#(set-global-staff-size 16)
%% #(set-global-staff-size 18)	% song books
%% #(set-global-staff-size 20)	% DEFAULT
%% #(set-global-staff-size 23)
%% #(set-global-staff-size 26)
theScore =  {
    \new PianoStaff {
        %% \accidentalStyle piano-cautionary
        % Deleted auto beaming command
        \override Score.RehearsalMark.padding = #2.2
        \override Score.RehearsalMark.self-alignment-X = #-1
        \set PianoStaff.midiInstrument = "bright acoustic"
        \time 2/4
        <<
            \new Staff = "rh" {
                \tupletSpan 4
                \clef treble
                \rhA
                \rhB
                \rhC
                \rhD
                \rhE
                \rhF
            }
            \new Dynamics = "dyn" {
                \dynA \bar "||"
                \dynB \bar "||"
                \dynC \bar "||"
                \dynD
                \dynE
                \dynF \bar "|."
            }
            \new Staff = "lh" {
                \tupletSpan 4
                \clef bass
                \lhA
                \lhB
                \lhC
                \lhD
                \lhE
                \lhF
            }
        >>
    }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% PAPER OUTPUT
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\score
{
     { \theScore }
    \layout{
        \context { \Staff \RemoveEmptyStaves } % Need to keep the dynamic stave alive, though.
        \context {
            \PianoStaff
            \override StaffGrouper.staff-staff-spacing.minimum-distance = #12
        }
    }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% MIDI OUTPUT
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\score
{
     { \applyMusic #unfold-repeats \theScore }
    \midi{
        \tempo 2=72
        %\context { \defMidiDynamics }
        \context {
            \PianoStaff
            \accepts Dynamics
        }
    }
}
