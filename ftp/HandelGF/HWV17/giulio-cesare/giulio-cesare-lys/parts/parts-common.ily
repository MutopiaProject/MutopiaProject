\version "2.7.13"
#(use-modules (ice-9 optargs))
#(ly:set-option 'point-and-click #f)

%% #{ ... #} syntax redefinition, in order to allow text substitution
\include "../common/sharp-curly.ily"

%% Custom figured bass
\include "../common/figured-bass.ily"

%% Misc commands
%% Shortcuts for including notes, lyrics, figures
%% Shortcuts for defining staves
\include "../common/commands.ily"

#(define *part-name* (make-parameter ""))

setPartScore = #(def-music-function (parser location name) (string?)
                 (*current-piece* (string-append "../" name))
                 (make-music 'SequentialMusic))

includePartScore = #(def-music-function (parser location score-id part-name) (string? string?)
                     (parameterize ((*current-piece* (string-append "../" score-id))
                                    (*part-name* (if (string-null? part-name)
                                                  ""
                                                  (string-append "-" part-name))))
                      (ly:parser-parse-string (ly:clone-parser parser) 
                       (string-append "\\include \"" 
                        (*current-piece*) "/score" (*part-name*) ".ily\""))
                      (make-music 'SequentialMusic)))

includePageTweaks = #(def-music-function (parser location) ()
                      (let ((filename (string-append 
                                       (*current-piece*) "/tweaks" (*part-name*) ".ily")))
                        (if (and (*use-page-tweaks*) (access? filename R_OK))
                            #{ \include "@filename" #}
                            (make-music 'SequentialMusic))))

%% Tempo markups and rehearsal marks
%% Da Capo markups and rehearsal marks
%% Various markups and titling commands
\include "../common/marks.ily"

#(def-markup-command (piece paper props arg) (markup?)
  (interpret-markup paper props 
   (markup #:fill-line (#:fontsize 3 arg))))

#(def-markup-command (opus paper props arg) (markup?)
  (interpret-markup paper props 
   (markup #:fill-line (#:fontsize 2 arg #:null))))

%% Staff size
#(set-global-staff-size 16)

\paper {
  raggedbottom = ##f
  raggedlastbottom = ##t
  betweensystemspace = 1.0
  printpagenumber = ##t

  %% paper width: 210mm
  linewidth = 170\mm
  leftmargin = 20\mm
  rightmargin = 20\mm

  scoreTitleMarkup = \markup \column {
    \fill-line { \when-property #'header:piece
                 \piece \fromproperty #'header:piece 
               }
    \fill-line { \when-property #'header:opus
                 \opus \fromproperty #'header:opus 
               }
  }
}

\layout {
  noindent = 0\mm
  smallindent = 10\mm
  largeindent = 25\mm
  indent = \largeindent

  \context {
    \Score
    \remove "Mark_engraver" 
    \override BarNumber #'padding = #2 
    \override InstrumentName #'space-alist = #'((left-edge extra-space . 2.0))
    \accepts "OrchestraStaffGroup"
  }
  \context {
    \StaffGroup
    \name OrchestraStaffGroup
    \description "Like StaffGroup, but without spanbar"
    \remove "Span_bar_engraver"
    \accepts "InstrumentStaffGroup"
  }
  \context {
    \StaffGroup
    \name InstrumentStaffGroup
    \description "Like StaffGroup, but withut brackets"
    \remove "System_start_delimiter_engraver"
  }
  \context {
    \Staff
    \consists "Mark_engraver"
  }
  \context {
    \Lyrics
    \consists "Bar_engraver"
    minimumVerticalExtent = #'(-0 . 0)
  }
}
