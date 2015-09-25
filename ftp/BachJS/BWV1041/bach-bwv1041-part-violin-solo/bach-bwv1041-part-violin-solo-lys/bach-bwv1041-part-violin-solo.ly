%{
  ***********************************************************************
  * BachJS - Violin Concerto No.1 in A minor                            *
  * typeset by Federico Bruni and Javier Ruiz-Alma                      *
  *                                                                     *
  * Parts : Violin Solo                                                 *
  *                                                                     *
  * *******************************                                     *
  * *   Main file                 *                                     *
  * *******************************                                     *
  *                                                                     *
  ***********************************************************************
%}

%#(set-default-paper-size "letter")
#(ly:set-option 'relative-includes #t)

\include "common/version.ily"
\include "common/variables.ily"
%\include "mutopia-header.ily"  %-----included in this file
\include "common/definitions.ily"
\include "common/parts-dimension.ily"


\header {
  date = "1730"
  style = "Baroque"
  source = "Breitkopf and Härtel"
  % - Violin Solo source IMSLP# 56551
  maintainer = "Federico Bruni and Javier Ruiz-Alma"
  maintainerEmail = "javier (at) ruiz-alma (dot) com"
  license = "Creative Commons Attribution-ShareAlike 4.0"

  mutopiatitle = "Violin Concerto Nº 1 - Violin Solo"
  mutopiaopus = "BWV 1041"
  mutopiacomposer = "BachJS"
  mutopiainstrument = "Violin"
  
 
 footer = "Mutopia-2015/09/25-2051"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2015 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " " \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}


%--------Part-specific settings

% ---------- cleared instrument name
thisInstrName = " " %\thisInstrNameI  %----------- /common/variables.ily
Part = \thisInstrNameI  %\thisInstrName %------------[fixed for parts]
thisClef = \clef treble          %----------- [manual entry]

\include "common/paper.ily"

%---------------MOVEMENTS 
%---------------First Mov: Allegro
\include "mov1/music.ily"
theseNotes = \soloviolin       %--------------- /mov_/music.ily
thisTempo = \thisTempoMovI  %--------------- /common/variables.ily
thisIdentifier = \thisIdentifierMovI %------ /common/variables.ily
\bookpart { \include "common/parts-staff-single-instr.ily" }
%---------------Second Mov: Andante
\include "mov2/music.ily"
theseNotes = \soloviolin       %--------------- /mov_/music.ily
thisTempo = \thisTempoMovII  %-------------- /common/variables.ily
thisIdentifier = \thisIdentifierMovII %----- /common/variables.ily
\bookpart { \include "common/parts-staff-single-instr.ily" }
%--------------Third Mov: Allegro assai
\include "mov3/music.ily"
theseNotes = \soloviolin       %--------------- /mov_/music.ily
thisTempo = \thisTempoMovIII  %------------- /common/variables.ily
thisIdentifier = \thisIdentifierMovIII %---- /common/variables.ily
\bookpart { \include "common/parts-staff-single-instr.ily" }

