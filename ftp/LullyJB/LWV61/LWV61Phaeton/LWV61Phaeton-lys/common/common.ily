\version "2.12.2"
#(use-modules (srfi srfi-39))
#(define-public *staff-size*
  (make-parameter (let ((module (ly:output-def-scope
                                 (ly:parser-lookup (eval 'parser (current-module))
                                                   '$defaultpaper))))
                    (/ (module-ref module 'staff-height)
                       (eval 'pt module)))))

\layout { incipit-width = #(* (*staff-size*) (/ 15.0 20.0) mm) }

\include "common/includes.ily"
\include "common/clef-key.ily"
\include "common/titling.ily"
\include "common/music-commands.ily"
\include "common/marks.ily"
\include "common/staff.ily"
\include "common/layout.ily"
\include "common/reduction.ily"

%%% Title page
%%%
\header {
  maintainer = "Nicolas Sceaux"
  maintainerEmail = "nicolas.sceaux@free.fr"
  maintainerWeb = "http://nicolas.sceaux.free.fr"
  copyright = \markup \copyright
  longcopyright = \markup \center-column {
    \line { \copyright }
    \line { Licensed under the Creative Commons Attribution 3.0 License }
  }
  
  tagline = \markup { 
    \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7)
    \box \center-column {
      \small \line { 
        \copyright
        \with-url #"http://nicolas.sceaux.free.fr" \teeny "<nicolas.sceaux@free.fr>"
        \hspace #-1 .
      %% }
      %% \small \line {
        Typeset using \with-url #"http://www.LilyPond.org" 
        \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org }
        #(ly:export (string-append "version " (lilypond-version))) \hspace #-1 
        on \concat { \today . }
      }
      \small \line {
        Sheet music from \with-url #"http://www.MutopiaProject.org"
        \concat { \teeny www. MutopiaProject \teeny .org }
        and \with-url #"http://nicolas.sceaux.free.fr"
        \typewriter \tiny nicolas.sceaux.free.fr
      }
      \small \line {
        \italic Free to download, with the \italic freedom
        to distribute, modify and perform.
      }
      \teeny \line { 
        Licensed under the Creative Commons Attributio 3.0 License,
      %% }
      %% \teeny \line { 
        for details see: \hspace #-0.5 
        \with-url #"http://creativecommons.org/licenses/by/3.0" 
        http://creativecommons.org/licenses/by/3.0 }
    }
  }
}

\paper {
  bookTitleMarkup = \markup \when-property #'header:title \abs-fontsize #12 \column {
    \null \null \null \null \null \null
    \fill-line { \fontsize #6 \italic \fromproperty #'header:composer }
    \when-property #'header:poet \column { \null \null \null }
    \fill-line { \fontsize #6 \italic \fromproperty #'header:poet }
    \null \null \null \null \null \null
    \fill-line { \fontsize #12
                 \apply-fromproperty #make-smallCaps-markup #'header:title }
    \null \null \null \null \null \null
    \fill-line { \postscript #(format #f "~a 0 moveto ~a 0 rlineto stroke"
                               (/ -400 (*staff-size*))
                               (/ 800 (*staff-size*)))
                             }
    \null \null \null \null \null \null
    \fill-line { \fontsize #4 \fromproperty #'header:date }
    \null
    \on-the-fly #(lambda (layout props arg)
                   (if (*part*)
                       (interpret-markup layout props
                         (markup #:column (#:null #:null #:null
                                           #:fill-line (#:fontsize 4 (*part-name*)))))
                       empty-stencil))
    \null \null \null \null \null \null
    \fill-line { \fontsize #2 \fromproperty #'header:editions }
    \fill-line { \fontsize #2 \fromproperty #'header:arrangement }
  }
  shortBookTitleMarkup =  \markup {
    \override #'(baseline-skip . 3.5) \column {
      \huge \larger \bold \fill-line { \larger \fromproperty #'header:title }
      \fill-line {
        \fromproperty #'header:poet
        \on-the-fly #(lambda (layout props arg)
                      (if (*part*)
                       (interpret-markup layout props (markup (*part-name*)))
                       empty-stencil)) \null
        \fromproperty #'header:composer
      }
      \fill-line {
        \null
        \fromproperty #'header:date
      }
    }
  }
  scoreTitleMarkup = #f

  oddFooterMarkup = \markup \column {
    \fill-line {
      %% put copyright only on pagenr. 1 
      \on-the-fly #(lambda (layout props arg)
		     (if (and (= 1 (chain-assoc-get 'page:page-number props -1))
                              (not (and (chain-assoc-get 'page:is-bookpart-last-page props #f)
                                        (chain-assoc-get 'page:is-last-bookpart props #f))))
		         (interpret-markup layout props (make-abs-fontsize-markup 12 arg))
		         empty-stencil))
      \fromproperty #'header:longcopyright
    }
    \fill-line {
      %% put tagline on last page
      \on-the-fly #last-page
      \fill-line { \fromproperty #'header:tagline }
    }
  }
  evenFooterMarkup = \markup \column {
    \fill-line {
      %% put notice on second page
      \on-the-fly #(lambda (layout props arg)
		     (if (= 2 (chain-assoc-get 'page:page-number props -1))
                         (interpret-markup layout props arg)
                         empty-stencil))
       \abs-fontsize #8 \fill-line { \fromproperty #'header:notes }
    }
    \fill-line {
      %% put tagline on last page
      \on-the-fly #last-page
      \fill-line { \fromproperty #'header:tagline }
    }
  }

  tocTitle = "TABLE DES MATIÈRES"
}

%%%
%%% The following hack make regular rests hara-kiri-able
%%%
#(let* ((rest-def (assoc 'Rest all-grob-descriptions))
        (meta-def (assoc 'meta (cdr rest-def)))
        (interfaces-def (assoc 'interfaces (cdr meta-def)))
        (interfaces (filter (lambda (interface)
                              (not (eqv? interface 'rhythmic-grob-interface)))
                            (cdr interfaces-def))))
  (set-cdr! interfaces-def interfaces))

