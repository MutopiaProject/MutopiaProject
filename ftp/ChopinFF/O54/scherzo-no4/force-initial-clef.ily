%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Force the initial clef %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% http://lsr.di.unimi.it/LSR/Item?id=792
%% see also http://lilypond.org/doc/stable/Documentation/notation/displaying-pitches

% Append markup in the text property to the grob
#(define (append-markup grob old-stencil)
  (ly:stencil-combine-at-edge
    old-stencil X RIGHT (ly:text-interface::print grob)))

trebleToBass = {
  \clef bass
  % Fake staff clef appearance
  \once \override Staff.Clef.glyph-name = #"clefs.G"
  \once \override Staff.Clef.Y-offset = #-1
  % Make sure any key signatures will printed with respect to
  % correct middle c position expected for treble clef
  \once \set Staff.middleCClefPosition = -6
  % Append change clef to the time signature
  \once \override Staff.TimeSignature.text = \markup {
    \hspace #1.2
    \raise #1
    \musicglyph "clefs.F_change"
  }
  \once \override Staff.TimeSignature.stencil = #(lambda (grob)
    (append-markup grob (ly:time-signature::print grob)))
}

bassToTreble = {
  \clef treble
  % Fake staff clef appearance
  \once \override Staff.Clef.glyph-name = #"clefs.F"
  \once \override Staff.Clef.Y-offset = #1
  % Make sure any key signatures will printed with respect to
  % correct middle c position expected for bass clef
  \once \set Staff.middleCClefPosition = 6
  % Append change clef to the time signature
  \once \override Staff.TimeSignature.text = \markup {
    \hspace #1.2
    \lower #1
    \musicglyph "clefs.G_change"
  }
  \once \override Staff.TimeSignature.stencil = #(lambda (grob)
    (append-markup grob (ly:time-signature::print grob)))
}

% Usage:

% \relative c {
%   \trebleToBass
%   \key f \major
%   c4 d e f
%   % This should not be visible
%   \clef bass
%   g a b c
%   % This should be visible
%   \clef treble
%   d e f g
% }

