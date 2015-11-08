%{
  ***********************************************************************
  * Bach - Keyboard Concerto No.4 in A major                            *
  *                                                                     *
  * typeset by Javier Ruiz-Alma                                         *
  *                                                                     *
  *                                                                     *
  * Generation of Cover Page to be inserted at the top of the           *
  * Conductor's edition - change the proportions if upon changes        *
  * to 'set-global-staff-size                                           *
  *                                                                     *
  * Construction de la couverture à insérer en en-tête du fichier de    *
  * partition directrice - modifier les proportion si modification de   *
  * set-global-staff-size                                               *
  *                                                                     *
  * Do not compile                                                      *
  *                                                                     *
  ***********************************************************************
%}

\include "version.ily"
\include "variables.ily"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%                                        %%
%%      Cover and header pages            %%
%%                                        %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% General info
% The following variables are initialized in the file variables.ily

Composer = \thisComposer
Dates = \thisDates
Title = \thisWork
FromPublisher = \thisSource
InfoCollection = \thisOpus
DateCollection = \thisDateOfPublication
SubTitle = \thisOrchester
Genre = \combinedPublicationName
catalogIdentification = \thisCatalogIdentification
Tonality = \thisTonality

Toc = "Table of Contents"

Instrument = "Orchestra"

%%%	Markup functions for cover page
%	Title of work
#(define-markup-command (cover_collection_settings layout props name) (string?)
   (interpret-markup layout props (markup #:abs-fontsize 45 #:medium name)))
%	Additional information about the work (Opus Number)
#(define-markup-command (cover_infoCollection_settings layout props name) (string?)
   (interpret-markup layout props (markup #:abs-fontsize 22 #:medium name)))
%	Tonality
#(define-markup-command (cover_infoTonality_settings layout props name) (string?)
   (interpret-markup layout props (markup #:abs-fontsize 22 #:medium name)))
%	Date of work
#(define-markup-command (cover_dateCollection_settings layout props name) (string?)
   (interpret-markup layout props (markup #:abs-fontsize 20 #:medium name)))
%	Title of the piece
#(define-markup-command (cover_title_settings layout props name) (string?)
   (interpret-markup layout props (markup #:abs-fontsize 30 #:medium #:smallCaps name)))
%	Subtitle of the piece
#(define-markup-command (cover_subtitle_settings layout props name) (string?)
   (interpret-markup layout props (markup #:abs-fontsize 16 #:italic #:medium name)))
%	Composer
#(define-markup-command (cover_composer_settings layout props name) (string?)
   (interpret-markup layout props (markup #:abs-fontsize 24 name)))
%	Date of composition
#(define-markup-command (cover_datesComposer_settings layout props name) (string?)
   (interpret-markup layout props (markup #:abs-fontsize 17 name)))
%	Genre
#(define-markup-command (cover_genre_settings layout props name) (string?)
   (interpret-markup layout props (markup #:abs-fontsize 28 name)))


%%%	Table of Contents functions

%	Title of the piece
#(define-markup-command (cover_title_settings_toc layout props name) (string?)
   (interpret-markup layout props (markup #:abs-fontsize 18 #:medium #:smallCaps name)))

#(define-markup-command (toc-line layout props label text) (symbol? markup?)
   (interpret-markup layout props(markup #:abs-fontsize 14  #:fill-line (text #:page-ref label "8" "?"))))

#(define-markup-command (Toc-Header layout props name) (string?)
   (interpret-markup layout props (markup #:abs-fontsize 22 name)))
%	From Publisher
#(define-markup-command (cover_fromPublisher_settings layout props name) (string?)
   (interpret-markup layout props (markup #:abs-fontsize 11 #:medium name)))
%	Instrumentation
#(define-markup-command (instrumentation_settings layout props name) (string?)
   (interpret-markup layout props (markup #:italic #:bold #:abs-fontsize 24 #:medium name)))
%	Composer for TOC
#(define-markup-command (cover_composer_settings_toc layout props name) (string?)
   (interpret-markup layout props (markup #:abs-fontsize 14 name)))
%	Tonality for TOC
#(define-markup-command (cover_infoTonality_settings_toc layout props name) (string?)
   (interpret-markup layout props (markup #:abs-fontsize 14 #:medium name)))


%%% Generation of special pages

coverfromPublisher = \markup \cover_fromPublisher_settings #FromPublisher
coverinfoCollection = \markup \cover_infoCollection_settings #InfoCollection
coverTonality = \markup \cover_infoTonality_settings #Tonality
coverdateCollection = \markup \cover_dateCollection_settings #DateCollection
coverTitle = \markup \cover_title_settings #Title
coverSubtitle = \markup \cover_subtitle_settings #SubTitle
coverComposer = \markup \cover_composer_settings #Composer
coverDates = \markup \cover_datesComposer_settings #Dates
coverVolutesUp = \markup {\epsfile #X #80 #"./common/scroll-one-top.eps"}
coverVolutesDown = \markup {\epsfile #X #80 #"./common/scroll-one-btm.eps"}
coverGenre = \markup \cover_genre_settings #Genre

TocTitle = \markup \cover_title_settings_toc #Title
TocLine = \markup \Toc-Header #Toc
TocComposer = \markup \cover_composer_settings_toc #Composer
TocTonality = \markup \cover_infoTonality_settings_toc #Tonality
Instrumentation = \markup \instrumentation_settings #Instrument

%%% Title Page

CoverA = \markup {
  \override #'(line-width . 145)
  \column {
    \fontsize #3 \bold \override #'(box-padding . 0.0)  \override #'(thickness . 4.0)
    \box
    \column {
      \fill-line {\lower #16 \coverComposer }
      \fill-line {\lower #8 \coverDates}
      \combine \null \vspace #2
      \fill-line {\lower #22 \coverVolutesUp}
      \fill-line {\lower #15 \coverTitle}
      \fill-line {\lower #10 \coverTonality}
      \fill-line {\lower #14 \coverinfoCollection}
      \fill-line {\lower #9 \coverSubtitle}
      \fill-line {\lower #6 \draw-line #'(20 . 0)}
      \fill-line {\lower #9 \coverdateCollection}
      \combine \null \vspace #1
      \fill-line {\lower #19 \coverVolutesDown}
      \fill-line {\lower #14 \coverGenre}
      \combine \null \vspace #3.7
    }
  }
}

%%% Table of Contents

PageToc = \markup {
  \override #'(line-width . 145)
    \fontsize #3
    \column {
      \fill-line {\lower #27  \TocComposer}
      \fill-line {\lower #7 \TocTitle}
      \fill-line {\lower #6 \TocTonality}
      \fill-line {\lower #22 \TocLine}
      \fill-line {\lower #6 \override #'(thickness . 3) \draw-line #'(70 . 0)}
      \fill-line { \null }
      \fill-line {\override #'(line-width . 70) \lower #10 \toc-line #'MvmtI \concat { \hspace #3.2 "I - " \tempoMovI } }
      \fill-line {\override #'(line-width . 70) \lower #6 \toc-line #'MvmtII \concat { \hspace #1.5 "II - " \tempoMovII } }
      \fill-line {\override #'(line-width . 70) \lower #6 \toc-line #'MvmtIII \concat { "III - " \tempoMovIII } }
      \fill-line {\lower #8 \override #'(thickness . 3) \draw-line #'(70 . 0)}
      \fill-line {\lower #20 \concat { "Source: " \coverfromPublisher }}
      \fill-line {\lower #25 \coverGenre}
      \combine \null \vspace #4.4
  }
}

