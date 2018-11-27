%---------------------------------------------------------------------
%--Paper-size setting must be commented out or deleted upon submission.
%--LilyPond engraves to paper size A4 by default.
%--Uncomment the setting below to validate your typesetting
%--in "letter" sizing.
%--Mutopia publishes both A4 and letter-sized versions.
%---------------------------------------------------------------------
% #(set-default-paper-size "letter")

%--Default staff size is 20
#(set-global-staff-size 20)

\paper {
    top-margin = 8\mm                              %-minimum: 8 mm
    top-markup-spacing.basic-distance = #6         %-dist. from bottom of top margin to the first markup/title
    top-system-spacing.basic-distance = #12        %-dist. from top margin to system in pages with no titles
    last-bottom-spacing.padding = #2               %-min #1.5 -pads music from copyright block 
    ragged-bottom = ##f
    ragged-last-bottom = ##f
}



%-------Typeset music and generate midi


\layout {
  \context {
    \PianoStaff \override VerticalAxisGroup.staff-staff-spacing = % .basic-distance = #50
      #'((basic-distance . 2) 
         (minimum-distance . 2)
         (padding . 1)
         (stretchability . 5)) % default 60
  }
  \context {
    \FiguredBass \override VerticalAxisGroup.staff-affinity = #CENTER
  }
  
}

\score {
    \context PianoStaff  <<
        \set PianoStaff.midiInstrument = "church organ"
        \new Staff { \clef treble \global \upperStaff }
        \new FiguredBass { \figs }
        \new Staff { \clef bass \global \lowerStaff }
    >>
    \layout{}
    \midi  { \tempo 4 = 42 }
}
