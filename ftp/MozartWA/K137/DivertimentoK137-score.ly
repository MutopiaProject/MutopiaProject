\version "2.18.2"
#(ly:set-option 'relative-includes #t)
\include "defs.ily"
\include "music.ily"

\layout {
  \context {
    \Score
    \override SpacingSpanner.uniform-stretching = ##t
  }
}

\book {
  \header {
    TPcomposer = "Wolfgang Amadeus Mozart"
    instrument = "Score"
  }
  \pageBreak
  \markuplist \table-of-contents
  \pageBreak
  \tocItem \markup "I. Andante"
  \score {
    % First Movement
    \header {
      %    title = ##f
      %  subtitle = ##f
      % composer = ##f
      instrument = ##f
    }
      \new StaffGroup = "Strings" <<
        \new Staff = "violinI" \with {
          % Violin I
          instrumentName = "Violin I"
          shortInstrumentName = "Vln. I"
          midiInstrument = #"violin"
        }
        \new Voice {

          \keepWithTag #'scoreOnly
          \violinIFirstMov
        }
        \new Staff = "violinII" \with {
          % Violin II
          instrumentName = "Violin II"
          shortInstrumentName = "Vln. II"
          midiInstrument = #"violin"
        }
        \new Voice {

          \keepWithTag #'scoreOnly
          \violinIIFirstMov
        }
        \new Staff = "viola" \with {
          % Viola
          instrumentName = "Viola"
          shortInstrumentName = "Vla."
          midiInstrument = #"viola"
        }
        \new Voice {

          \keepWithTag #'scoreOnly
          \violaFirstMov
        }

        \new Staff = "violoncello" \with {
          % Cello
          instrumentName = "Violoncello"
          shortInstrumentName = "Vc."
          midiInstrument = #"cello"
        }
        \new Voice {
          \keepWithTag #'scoreOnly
          \celloFirstMov
        }
      >>

    \layout {}
    \midi {}
  }
%  \pageBreak
  \tocItem \markup "II. Allegro di molto"
  \score {
    % Second Movement
    \header {
      title = ##f
      subtitle = ##f
      composer = ##f
      opus = ##f
      instrument = ##f
    }
      \new StaffGroup = "Strings" <<
        \new Staff = "violinI" \with {
          % Violin I
          instrumentName = "Violin I"
          shortInstrumentName = "Vln. I"
          midiInstrument = #"violin"
        }
        \new Voice {

          \keepWithTag #'scoreOnly
          \violinISecondMov
        }
        \new Staff = "violinII" \with {
          % Violin II
          instrumentName = "Violin II"
          shortInstrumentName = "Vln. II"
          midiInstrument = #"violin"
        }
        \new Voice {

          \keepWithTag #'scoreOnly
          \violinIISecondMov
        }
        \new Staff = "viola" \with {
          % Viola
          instrumentName = "Viola"
          shortInstrumentName = "Vla."
          midiInstrument = #"viola"
        }
        \new Voice {

          \keepWithTag #'scoreOnly
          \violaSecondMov
        }
        \new Staff = "violoncello" \with {
          % Cello
          instrumentName = "Violoncello"
          shortInstrumentName = "Vc."
          midiInstrument = #"cello"
        }
        \new Voice {

          \keepWithTag #'scoreOnly
          \celloSecondMov
        }
      >>

    \layout {}
    \midi {}
  }
 % \pageBreak
  \tocItem \markup "III. Allegro assai"
  \score {
    % Third Movement
    \header {
      title = ##f
      subtitle = ##f
      composer = ##f
      opus = ##f
      instrument = ##f
    }
      \new StaffGroup = "Strings" <<
        \new Staff = "violinI" \with {
          % Violin I
          instrumentName = "Violin I"
          shortInstrumentName = "Vln. I"
          midiInstrument = #"violin"
        }
        \new Voice {
          \keepWithTag #'scoreOnly
          \violinIThirdMov
        }
        \new Staff = "violinII" \with {
          % Violin II
          instrumentName = "Violin II"
          shortInstrumentName = "Vln. II"
          midiInstrument = #"violin"
        }
        \new Voice {

          \keepWithTag #'scoreOnly
          \violinIIThirdMov
        }
        \new Staff = "viola" \with {
          % Viola
          instrumentName = "Viola"
          shortInstrumentName = "Vla."
          midiInstrument = #"viola"
        }
        \new Voice {

          \keepWithTag #'scoreOnly
          \violaThirdMov
        }
        \new Staff = "violoncello" \with {
          % Cello
          instrumentName = "Violoncello"
          shortInstrumentName = "Vc."
          midiInstrument = #"cello"
        }
        \new Voice {
          \compressFullBarRests
          \keepWithTag #'scoreOnly
          \celloThirdMov
        }
      >>

    \layout {}
    \midi {}
  }
  \paper {

    %   page-breaking =  #ly:page-turn-breaking
    %  first-page-number = #2
    print-all-headers = ##t
    %  ragged-last-bottom = ##f
    bookTitleMarkup = \titlePage
     tocItemMarkup = \markup{
    \fill-line{
    \override #'(line-width . 75)
    \fill-with-pattern #1 #RIGHT .
    \fromproperty #'toc:text
    \fromproperty #'toc:page
    }
  }

%   #(set-paper-size "letter")
    top-margin = 0.35\in
    left-margin = 0.4\in
    right-margin = 0.4\in
    bottom-margin = 0.5\in

    %  Uncomment this block and comment above
    % margin settings to output a standard 9.5x12.5in part
    % (fitting easily on a 9x12 or 10x13 page size as well)
    %{
    #(set-paper-size "Standard Part")
    top-margin = 0.5\in
    left-margin = 0.5\in
    right-margin = 0.5\in
    bottom-margin = 0.75\in
    %}
 #(layout-set-staff-size 16)
    indent = 0.85\in
    short-indent = 0.35\in

  }
}

