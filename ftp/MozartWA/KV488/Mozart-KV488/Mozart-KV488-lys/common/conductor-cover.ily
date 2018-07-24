% Cover page to be inserted at the top of the conductor's edition
% Do not compile

\include "version.ily"
\include "variables.ily"

% Cover and TOC pages

\paper {
  first-page-number = -1  % takes into account 2 cover pages
  left-margin = 12\mm
  top-margin = 12.6\mm
  bottom-margin = 8\mm
}

% Formatting of titles for Cover page and TOC
% All variables in this section are defined in ./common/variables.ily.
coverComposer = \markup { \abs-fontsize #24 \thisComposer }
coverDates = \markup { \abs-fontsize #17 \thisDates }
coverVolutesUp = \markup {\epsfile #X #80 #"./common/scroll-one-top.eps"}
coverTitle = \markup { \abs-fontsize #30 \medium \smallCaps \thisWork }
coverTonality = \markup { \abs-fontsize #22 \medium \thisTonality }
coverOpus = \markup { \abs-fontsize #22 \medium \thisOpus }
coverSubtitle = \markup { \abs-fontsize #16 \italic \medium \thisOrchester }
coverDateCollection = \markup { \abs-fontsize #20 \medium \thisDateOfPublication }
coverVolutesDown = \markup {\epsfile #X #80 #"./common/scroll-one-btm.eps"}
coverGenre = \markup { \abs-fontsize #28 \combinedPublicationName }

TocComposer = \markup { \abs-fontsize #14 \thisComposer }
TocTitle = \markup { \abs-fontsize #18 \medium \smallCaps \thisWork }
TocTonality = \markup { \abs-fontsize #14 \medium \thisTonality }
TocHeading = \markup { \abs-fontsize #22 "Table of Contents" }
TocSource = \markup { \abs-fontsize #11 \medium \thisSource }


% Table of Contents functions
#(define-markup-command (toc-line layout props label text) (symbol? markup?)
  (interpret-markup layout props
    (markup #:abs-fontsize 14  #:fill-line (text #:page-ref label "8" "?"))))


% Title page text layout
% All variables in this section are defined above (in this file).

CoverA = \markup {
  \override #'(line-width . 145)
  \column {
    \fontsize #3 \bold \override #'(box-padding . 0.0)
    \override #'(thickness . 4.0)
    \box
    \column {
      \fill-line { \lower #16 \coverComposer }
      \fill-line { \lower #8 \coverDates }
      \combine \null \vspace #2
      \fill-line { \lower #22 \coverVolutesUp }
      \fill-line { \lower #15 \coverTitle }
      \fill-line { \lower #10 \coverTonality }
      \fill-line { \lower #14 \coverOpus }
      \fill-line { \lower #9 \coverSubtitle}
      \fill-line { \lower #6 \draw-line #'(20 . 0) }
      \fill-line { \lower #9 \coverDateCollection }
      \combine \null \vspace #1
      \fill-line { \lower #19 \coverVolutesDown }
      \fill-line { \lower #14 \coverGenre }
      \combine \null \vspace #3.7
    }
  }
}

% Table of Contents text layout
% All variables in this section are defined above (in this file) except
% where noted.

PageToc = \markup {
  \override #'(line-width . 145)
    \fontsize #3
    \column {
      \fill-line { \lower #27 \TocComposer }
      \fill-line { \lower #7 \TocTitle }
      \fill-line { \lower #6 \TocTonality }
      \fill-line { \lower #22 \TocHeading }
      \fill-line { \lower #6 \override #'(thickness . 3) \draw-line #'(70 . 0) }
      \fill-line { \null }
      \fill-line {
        \override #'(line-width . 70) \lower #10 \toc-line \thisLabelMovI
        \concat { \hspace #3.2 \thisIdentifierMovI \hspace #3 \thisTempoMovI }
      }
      \fill-line {
        \override #'(line-width . 70) \lower #6 \toc-line \thisLabelMovII
        \concat { \hspace #1.5 \thisIdentifierMovII \hspace #3 \thisTempoMovII }
      }
      \fill-line {
        \override #'(line-width . 70) \lower #6 \toc-line \thisLabelMovIII
        \concat { \hspace #0 \thisIdentifierMovIII \hspace #3 \thisTempoMovIII }
      }
      \fill-line { \lower #8 \override #'(thickness . 3) \draw-line #'(70 . 0) }
      \fill-line { \lower #20 \concat { "Source: " \TocSource } }
      \fill-line { \lower #25 \coverGenre }
      \combine \null \vspace #4.4
  }
}

