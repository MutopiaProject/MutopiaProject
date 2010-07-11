\version "2.12.3"

\header {
  mutopiatitle = "Prelude"
  mutopiacomposer = "ChopinFF"
  mutopiaopus = "Op. 45"
  mutopiainstrument = "piano"
  source = "Edition by Herrmann Scholtz (1845-1918)"
  style = "Romantic"
  copyright = "Public Domain"
  maintainer = "Keith OHara"

  title = "Prelude, Opus 45"
  composer = "Frederic Chopin (1810-1849)"
 footer = "Mutopia-2010/07/11-1776"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\paper {
  %{ comment out for mutopiaproject }
    % #(set-paper-size "letter") 
    % bottom-margin = 13
    % annotate-spacing = ##t
    % ragged-right = ##t
  %{ %}
  page-count = 4
  #(layout-set-staff-size 19)
  between-system-space = 5
  between-system-padding = 0
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}
\pointAndClickOff

% Definitios to override page-breaking 
myExplicitBreak = {
  \break
}
myExplicitPageBreak = {
  \pageBreak
}

\include "chopin_prelude_op45.notes.ly"

%%% Definitions affecting typesetting style
% shaping for the long slurs on the rising cross-staff phrases
bigSlur = {
  \override PhrasingSlur  #'height-limit = #10
  \override PhrasingSlur  #'eccentricity = #2
}
% upward slanting dynamics, if desired
%% Place dynamics in last priority, otherwise the pedal marks are
%%  set outside where the hairpins would have been before rotation
rotDyn = {
  \override DynamicLineSpanner #'outside-staff-priority = #2000
  \override Hairpin #'rotation = #'(20 -1.2 0)
}

%%% Score block
% showLastLength = R1*16
\score {
  \new PianoStaff
  <<
    \override Score.RehearsalMark #'self-alignment-X = #LEFT
    \override Score.SpacingSpanner #'shortest-duration-space = #1.5
    \override Score.Fingering #'staff-padding = #'()
    \set PianoStaff.extraNatural = ##f
    \new Staff = "upper" {
      % space dynamics uniformly away from staff
      \override Staff.DynamicLineSpanner #'staff-padding = #2.5
      \time 2/2
      \clef treble
      \key cs \minor
      #(set-accidental-style 'piano 'Score)
      <<
	\new Voice = "primary" \relative c'' {
	  \shiftOff  
	  \mark "Sostenuto"
	  \rhPrimaryA
	  \mark \markup{\italic\normalsize "Cadenza, a piacere"}
	  % Supress the key signature at breaks within the cadenza, 
	  %  as it is not helpful in this dodecaphonic section.
	  % Note that all sharps and flats been entered as forced
	  %  accidentals so they are printed even if in the key sig
	  % Alternatively, this section could be set in C major
	  %  with no change in the accidentals printed
	  \override PianoStaff.KeySignature #'break-visibility = #all-invisible
	  \small
	  \rhCadenza
	  \normalsize
	  \revert PianoStaff.KeySignature #'break-visibility
	  % Remind the reader of the key, and supress accidentals 
	  %  that merely cancel those in the cadenza
	  \key cs \minor 
	  \rhPrimaryB
	  \bar "|."
	}
	\new Voice ="green" \relative c {
	  %{colorize} \override NoteHead #'color = #green %}
	  \shiftOn
	  \mergeDifferentlyHeadedOn
	  \mergeDifferentlyDottedOn
	  \rhGreenA
	  #(ly:export (skip-of-length rhCadenza))
	  \rhGreenB
	}
      >>
    }
    \new Staff = "lower" {
      \clef bass
      \key cs \minor
      <<
	\new Voice = "red" \relative c' {
	  %{colorize} \override NoteHead #'color = #red %}
	  \shiftOn
	  \bigSlur
	  \lhRedA
	  \small
	  \lhCadenza
	  \normalsize
	  % Remind the reader of the key, and supress accidentals 
	  %  that merely cancel those in the cadenza
	  \key cs \minor 
	  \key cs \minor
	  \lhRedB
	}
	\new Voice = "blue" \relative f  {
	  %{colorize}  \override NoteHead #'color = #blue %}
	  \shiftOn
	  \mergeDifferentlyHeadedOn
	  \mergeDifferentlyDottedOn
	  \bigSlur
	  \lhBlueA
	  #(ly:export (skip-of-length lhCadenza))
	  \lhBlueB
	}
	\new Voice = "pedal" \relative c {
	  % Problem: pedaling brackets need a placed note or rest 
	  %    at the pedal release point (i.e., not R1 or s8)
	  % Workaround: place dummy r8 rests in the pedal voice
	  %    Make these rests invisible and take no space
	  \override Rest #'stencil = ##f
	  \override Rest #'Y-extent = #'(+inf.0 . -inf.0)
	  \set Staff.pedalSustainStyle = #'bracket
	  \rotDyn
	  \pedalA
	  #(ly:export (skip-of-length lhCadenza))
	  \pedalB
	}
      >>
    }
  >>
  \layout {
  }
  \midi {
    %% Remove the dynamics from the midi output
    \context {
      \Voice
      \remove "Dynamic_performer"
      \remove "Piano_pedal_performer"
    }
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 60 2)
    }
  }
}


