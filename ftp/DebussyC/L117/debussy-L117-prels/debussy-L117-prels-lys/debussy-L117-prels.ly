\version "2.18.2"

%#(set-default-paper-size "letter")

% The global staff size affects the book.
% You may override the global staff size for notes within a \score by setting a new
%     staff size within the \layout block for the corresponding \score.
#(set-global-staff-size 18)


%% -- PRINT COLLECTION BOOK
\bookpart {   % --- Cover pages

   \header {
     date = "1910"
     style = "Romantic"
     source = "Durand, 1910"

     maintainer = "Javier Ruiz-Alma"
     maintainerEmail = "javier (at) ruiz-alma.com"
     mutopiatitle = "Debussy Préludes, Book 1"
     mutopiaopus = "CD 125; L.117"
     mutopiacomposer = "DebussyC"
     mutopiainstrument = "Piano"
     license = "Creative Commons Attribution-ShareAlike 4.0"

     %-- the collection has its own PieceID
     footer = "Mutopia-2017/11/06-2207"
     copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white "ǀ" \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {"ǀ" "ǀ"}}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " ©" 2015 ""by " \maintainer " — " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License" " — free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white "ǀ" }}}
     tagline = ##f
  }

  \paper {
    top-margin = 5 \cm
    left-margin = 5 \cm
    right-margin = 5 \cm
    print-page-number = ##f

    %% Larger ToC title:
    tocTitleMarkup = \markup \override #'(baseline-skip . 6 ) \abs-fontsize #16 \bold \column {
                           \line {  "Table of Contents"  }
                           \hspace #1
                      }
    %% Double-spaced content entries
    tocItemMarkup = \markup \huge \column {
                                \fill-line { \fromproperty #'toc:text \fromproperty #'toc:page }
                                \hspace #1
                    }

  }

  %-- Title Page
  \markup {  \center-column {
                 \hspace #1
                 \hspace #1
                 \hspace #1
                 \hspace #1
                 \hspace #1
                 \hspace #1
                 \hspace #1
                 \fill-line { \epsfile #X #42 #"./debussy-L117-prels-lys/scroll-top.eps" }
                 \hspace #1
                 \hspace #1
                 \fill-line { \abs-fontsize #41 \bold "Préludes" }
                 \hspace #1
                 \fill-line { \abs-fontsize #25 "Claude Debussy" }
                 \hspace #1
                 \hspace #1
                 \fill-line { \abs-fontsize #22 "Livre 1" }
                 \hspace #1
                 \hspace #1
                 \fill-line { \epsfile #X #42 #"./debussy-L117-prels-lys/scroll-btm.eps" }
                 \hspace #1
                 \hspace #1
                 \hspace #1
                 \hspace #1
                 \hspace #1
                 \hspace #1
                 \fill-line { \abs-fontsize #12 "CD 125" }
                 \fill-line { \abs-fontsize #12 "L.117" }
             }
  }  \pageBreak

  %-- Table of Contents
  \markuplist \table-of-contents

} % - end cover pages bookpart

%% -- DEFINITIONS AND MUSIC VARIABLES
% Variables may only be declared outside of \book or \bookpart blocks.
% The template includes definitions directly preceding each \bookpart block to
%    allow variables to be re-defined on following \bookparts
% For note sections in different languages, include the language file ahead of the change.

% --- Prelude 1
\include "./L117-prel-1/L117-prel-1-lys/debussy-L117-prel-1-defs.ily"
\include "./L117-prel-1/L117-prel-1-lys/debussy-L117-prel-1-mus.ily"
\bookpart {
   \tocItem \markup { "Prélude 1: Danseuses de Delphes"  }
   \include "./L117-prel-1/L117-prel-1-lys/debussy-L117-prel-1-heads.ily"
   \include "./L117-prel-1/L117-prel-1-lys/debussy-L117-prel-1-lyt.ily"
}

% --- Prelude 2
\include "./L117-prel-2/L117-prel-2-lys/debussy-L117-prel-2-defs.ily"
\include "./L117-prel-2/L117-prel-2-lys/debussy-L117-prel-2-mus.ily"
\bookpart {
   \tocItem \markup { "Prélude 2: Voiles" }
   \include "./L117-prel-2/L117-prel-2-lys/debussy-L117-prel-2-heads.ily"
   \include "./L117-prel-2/L117-prel-2-lys/debussy-L117-prel-2-lyt.ily"
}

% --- Prelude 3
\include "./L117-prel-3/L117-prel-3-lys/shapeII.ily"
\include "./L117-prel-3/L117-prel-3-lys/debussy-L117-prel-3-mus.ily"
\bookpart {
   \tocItem \markup { "Prélude 3: Le vent dans la plaine" }
   \include "./L117-prel-3/L117-prel-3-lys/debussy-L117-prel-3-heads.ily"
   \include "./L117-prel-3/L117-prel-3-lys/debussy-L117-prel-3-lyt.ily"
}
