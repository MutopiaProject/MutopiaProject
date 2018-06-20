% Spacing, paper, and title parameters
% Do not compile

% The variables \thisInstrName, \Part, \thisIdentifier, and \thisTempo
% MUST be defined prior to the inclusion of this file.

\include "version.ily"

\header {
  title = \markup { \abs-fontsize #20 \concat { \thisWork \hspace #1.5 \thisTonality } }
  subtitle = \markup {
    \center-column {
      \abs-fontsize #18 \lower #2
      \concat { \char ##x2014 \hspace #2 \thisIdentifier \hspace #2 \char ##x2014 }
    }
  }
  composer = \markup \center-column { \abs-fontsize #12 \thisComposer }
  opus = \markup \center-column { \abs-fontsize #12 \lower #0 \thisOpus }
  piece = \markup { \abs-fontsize #14 \raise #1 { \hspace #20 \thisTempo } }
}

\paper {
  inner-margin = 12\mm
  outer-margin = 9\mm
  top-margin = 12.6\mm
  bottom-margin = 8\mm
  print-page-number = ##t
  two-sided = ##t

  %#(define page-breaking ly:page-turn-breaking)

  % Default horizontal spacing
  indent = 25\mm  % left indent for first system
  short-indent = 0\mm  % left indent for rest of systems
  horizontal-shift = 0.0  % right indent for all systems

  ragged-bottom = ##f
  ragged-last = ##f
  ragged-last-bottom = ##f
  ragged-right = ##f

  % Determines the spacing between the last system of a part and the
  % first system of the next part, absent any separating title or
  % markup. 120 by default.
  score-system-spacing = #'(
    (basic-distance . 14)
    (minimum-distance . 8)
    (padding . 1)
    (stretchability . 80)
  )

  % Determines the spacing between a title or top-level markup and the
  % subsequent system. 30 by default.
  markup-system-spacing = #'(
    (basic-distance . 8) (padding . 1.5) (stretchability . 15)
  )

  % Determines the spacing between the last system and the subsequent
  % title or markup. 60 by default.
  score-markup-spacing = #'(
    (basic-distance . 12)
    (padding . 0.5)
    (stretchability . 40)
  )

  % Determines the spacing between two titles or top-level markups.
  markup-markup-spacing = #'(
    (basic-distance . 1) (padding . 0.5)
  )

  % Determines the spacing between the top of the printable area and the
  % middle of the first system, absent any title.
  top-system-spacing = #'(
    (basic-distance . 1)
    (minimum-distance . 0)
    (padding . 1)
  )

  % Determines the spacing between the top of the printable area and the
  % first title or top-level markup, absent any system at the top of the
  % page.
  top-markup-spacing = #'(
    (basic-distance . 0)
    (minimum-distance . 0)
    (padding . 1)
  )

  % Determines the vertical inter-system spacing.
  system-system-spacing = #'(
    (basic-distance . 12)
    (minimum-distance . 12)
    (padding . 2)
    (stretchability . 60)
  )

  % Determines the spacing between the last system on a page and the
  % footer.
  last-bottom-spacing = #'(
    (basic-distance . 11)
    (minimum-distance . 10)
    (padding . 1)
    (stretchability . 0)
  )

  % Header settings
  thisPart = \markup { \center-column { \fontsize #3 \bold \Part } }

  oddHeaderMarkup = \markup {
    \column {
      \fill-line {
        { \abs-fontsize #10 \on-the-fly #print-page-number-check-first
        \fromproperty #'page:page-number-string }
        { \center-column {
          \lower #1 \fontsize #-1 \thisPart }
        }
        { " " }
      }
    }
  }

  evenHeaderMarkup = \markup {
    \column {
      \fill-line {
        { " " }
        { \center-column {
          \lower #1 \fontsize #-1 \thisPart }
        }
        { \abs-fontsize #10 \on-the-fly #print-page-number-check-first
        \fromproperty #'page:page-number-string }
      }
    }
  }

  % Footer settings
  referenceFooter = \markup {
    \fill-line {
      \abs-fontsize #10 \concat {
        \thisBigTitle
        \hspace #0.4 \char ##x2014 \hspace #0.4
        \thisInstrName
      }
    }
  }

  evenFooterMarkup = \markup {
    \override #'( baseline-skip . 0.5 )
    \column {
      \fill-line {
        % Copyright header field only on first page.
        \on-the-fly #part-first-page \fromproperty #'header:copyright
      }
      % Footer on all pages except first.
      \fill-line { \on-the-fly #not-part-first-page { \referenceFooter } }
    }
  }

  oddFooterMarkup = \markup {
    \override #'( baseline-skip . 0.5 )
    \column {
      \fill-line {
        % Copyright header field only on first page.
        \on-the-fly #part-first-page \fromproperty #'header:copyright
      }
      % Footer on all pages except the first.
      \fill-line { \on-the-fly #not-part-first-page { \referenceFooter } }
    }
  }

}
