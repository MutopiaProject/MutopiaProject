\version "2.18.2"

% ---------------------------
%  Nested folder collection
% ---------------------------

% The global staff size affects the book.
% You may override the global staff size for notes in a \score by setting a new 
%     staff size within the \layout block for the corresponding \score.
#(set-global-staff-size 18)


%% -- DEFINITIONS AND MUSIC VARIABLES
% LilyPond supports variables only outside of \book and \bookpart blocks.
% This means variable names need to be globally unique within the collection.
% For note sections in different languages, include the language file ahead of the change.
\include "./L117-prel-1/L117-prel-1-lys/debussy-L117-prel-1-defs.ily"
\include "./L117-prel-1/L117-prel-1-lys/debussy-L117-prel-1-mus.ily"

\include "./L117-prel-2/L117-prel-2-lys/debussy-L117-prel-2-defs.ily"
\include "./L117-prel-2/L117-prel-2-lys/debussy-L117-prel-2-mus.ily"

\include "./L117-prel-3/L117-prel-3-lys/shapeII.ily"
\include "./L117-prel-3/L117-prel-3-lys/debussy-L117-prel-3-mus.ily"

%% -- PRINT COLLECTION BOOK
\book {
  \bookOutputName "debussy-L117-prels"
  \bookpart {   % --- Collection cover pages
     \header {     
       date = "1910"
       style = "Romantic"
       source = "Durand, 1910"
  
       maintainer = "Javier Ruiz-Alma"
       maintainerEmail = "javier (at) ruiz-alma.com"
       mutopiatitle = "Debussy 10 Préludes"
       mutopiaopus = "CD 125; L.117"
       mutopiacomposer = "DebussyC"
       mutopiainstrument = "Piano"
       license = "Creative Commons Attribution-ShareAlike 4.0"
  
       %-- the collection has its own PieceID
       footer = "Mutopia-2015/01/20-2100"
       copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2014 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " " \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
       tagline = ##f
    }
    \paper { 
      top-margin = 10 \cm
      print-page-number = ##f
    }
    
    %-- Titlepage
    \markup {  \center-column {
                   \fill-line { \abs-fontsize #35 \bold "10 Préludes" }
                   \fill-line { " " }
                   \fill-line { \abs-fontsize #25 "Claude Debussy" }
                   \fill-line { " " }
                   \fill-line { \larger "CD 125; L.117" }
               }
    }
    \pageBreak
    
    %-- Table of Contents
    \markuplist \table-of-contents
    
  } % - end cover pages bookpart
  
  \bookpart {    % --- Prelude 1
     \tocItem \markup { "Prélude 1: Danseuses de Delphes"  }
     \include "./L117-prel-1/L117-prel-1-lys/debussy-L117-prel-1-heads.ily"
     \include "./L117-prel-1/L117-prel-1-lys/debussy-L117-prel-1-lyt.ily"
  }
  
  \bookpart {    % --- Prelude 2
     \tocItem \markup { "Prélude 2: Voiles" }
     \include "./L117-prel-2/L117-prel-2-lys/debussy-L117-prel-2-heads.ily"
     \include "./L117-prel-2/L117-prel-2-lys/debussy-L117-prel-2-lyt.ily"
  }

  \bookpart {    % --- Prelude 3
     \tocItem \markup { "Prélude 3: Le vent dans la plaine" }
     \include "./L117-prel-3/L117-prel-3-lys/debussy-L117-prel-3-heads.ily"
     \include "./L117-prel-3/L117-prel-3-lys/debussy-L117-prel-3-lyt.ily"
  }

} % - end collection book

%%--- Generate MIDI files
\book {
    \bookOutputName "L117-prel-1"
    \include "./L117-prel-1/L117-prel-1-lys/debussy-L117-prel-1-mid.ily"
}
\book {
    \bookOutputName "L117-prel-2"
    \include "./L117-prel-2/L117-prel-2-lys/debussy-L117-prel-2-mid.ily"
}
\book {
    \bookOutputName "L117-prel-3"
    \include "./L117-prel-3/L117-prel-3-lys/debussy-L117-prel-3-mid.ily"
}