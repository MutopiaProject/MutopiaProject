\version "2.11.9"


#(use-modules (srfi srfi-39))

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Paper size
%% 
%% Default is A4
%% -d letter to use letter paper size.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#(define *use-letter-paper* (make-parameter (ly:get-option 'letter)))

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Markup commands
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#(define-markup-command (chapter paper props text) (markup?)
  (interpret-markup paper props (markup #:fill-line (
    #:null
    #:column (#:huge text #:vspace 1)
    #:null))))

#(define-markup-command (section paper props text) (markup?)
  (interpret-markup paper props (markup #:fill-line (
    #:null
    #:column (#:vspace 2 #:large text #:vspace 1)
    #:null))))

#(define-markup-command (paragraphe paper props text) (markup-list?)
  (let ((indentation (markup #:hspace 3)))
   (interpret-markup paper props (make-justify-markup (cons indentation text)))))


%% for book and score titling
#(define-markup-command (when-property layout props symbol markp) (symbol? markup?)
  (if (chain-assoc-get symbol props)
      (interpret-markup layout props markp)
      (ly:make-stencil '()  '(1 . -1) '(1 . -1))))

%% vertical space skip
#(define-markup-command (vspace layout props amount) (number?)
  "This produces a invisible object taking vertical space."
  (let ((amount (* amount 3.0)))
    (if (> amount 0)
        (ly:make-stencil "" (cons -1 1) (cons 0 amount))
        (ly:make-stencil "" (cons -1 1) (cons amount amount)))))

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Layout and paper 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\include "loop-guile.ily"
\include "book-page-layout.ily"
\include "book-toc.ily"


%% Staff size
#(set-global-staff-size 18)
%% Paper size
#(set-default-paper-size (if (*use-letter-paper*)
                             "letter"
                             "a4"))

\paper {
  page-top-space = #(* 5 mm)
  left-margin = 15\mm
  right-margin = 15\mm
  #(define line-width (- paper-width (* 30 mm)))

  \include "titling.ily"
}

\layout {
  noindent = 0\mm
  smallindent = 5\mm
  largeindent = 20\mm
  indent = \smallindent

  \context {
    \Score
    \override BarNumber #'padding = #2 
    \override InstrumentName #'space-alist = #'((left-edge extra-space . 2.0))
    scriptDefinitions = 
    #(append '(("mordent" .
                ((script-stencil . (feta . ("mordent" . "mordent")))
                 (avoid-slur . outside)
                 (padding . 0.20)	   
                 (direction  . 1)))
               ("prall" .
                ((script-stencil . (feta . ("prall" . "prall")))
                 (avoid-slur . outside)
                 (padding . 0.20)	   
                 (direction  . 1))))
      default-script-alist)
  }
  \context {
    \Score
    \accepts "BracketStaffGroup"
  }
  \context {
    \StaffGroup
    \name BracketStaffGroup
    \description "Like StaffGroup, but without spanbar"
    \remove "Span_bar_engraver"
  }
}

%% for date year:
#(use-modules (srfi srfi-19))

\header {
  maintainer = "Nicolas Sceaux"
  maintainerEmail = "nicolas.sceaux@free.fr"
  maintainerWeb = "http://nicolas.sceaux.free.fr"
  copyright = #(markup "Copyright ©" 
                       (if (defined? 'copyrightYear)
                           (format #f "~a-~a" copyrightYear (date-year (current-date)))
                           (format #f "~a" (date-year (current-date))))
                       maintainer)
  longcopyright = \markup \center-align {
    \line { \copyright \hspace #-1 . }
    \line { Licensed under the Creative Commons Attribution 2.5 License }
  }
  
  tagline = \markup { 
    \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7)
    \box \center-align {
      \small \line { 
        \copyright
        \with-url #"http://nicolas.sceaux.free.fr" \teeny "<nicolas.sceaux@free.fr>"
        \hspace #-1 .
        Typeset using \with-url #"http://www.LilyPond.org" 
        \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org }
        #(ly:export (string-append "version " (lilypond-version))) \hspace #-1 .
      }
      \small \line {
        Sheet music from \with-url #"http://www.MutopiaProject.org"
        \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 
                \teeny .org \hspace #0.5 }
        • \hspace #0.5 \italic Free to download, with the \italic freedom
        to distribute, modify and perform. } 
      
      \teeny \line { 
        Licensed under the Creative Commons Attributio 2.5 License, 
        for details see: \hspace #-0.5 
        \with-url #"http://creativecommons.org/licenses/by/2.5" 
        http://creativecommons.org/licenses/by/2.5 }
    }
  }
}