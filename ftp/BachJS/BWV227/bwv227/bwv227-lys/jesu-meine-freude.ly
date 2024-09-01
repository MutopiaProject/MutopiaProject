\version "2.25.19"

\include "english.ly"
#(set-global-staff-size 15)

% Definition of rehearsal marks surrounded by roundboxes as per https://music.stackexchange.com/questions/131171/lilypond-boxed-rehearsal-marks-with-rounded-corners

#(define (my-rounded-box-stencil stencil thickness padding blot)
  (let* ((xext (interval-widen (ly:stencil-extent stencil 0) padding))
         (yext (interval-widen (ly:stencil-extent stencil 1) padding))
         (min-ext (min (-(cdr xext) (car xext)) (-(cdr yext) (car yext))))
         (ideal-blot blot)
         (ideal-thickness (min thickness (/ min-ext 2)))
         (outer (ly:round-filled-box
                 (interval-widen xext ideal-thickness)
                 (interval-widen yext ideal-thickness)
                 ideal-blot))
         (inner (ly:stencil-in-color
                 (ly:round-filled-box
                  xext yext (- ideal-blot ideal-thickness))
                 "white")))
    (ly:stencil-add outer inner stencil)))

#(define-markup-command (my-rounded-box layout props arg)
  (markup?)
  #:category graphic
  #:properties ((thickness 1)
                (corner-radius 1)
                (font-size 0)
                (box-padding 0.5))
  #:as-string (format #f "[~a]"
                      (markup->string arg #:layout layout #:props props))
  (let ((th (* (ly:output-def-lookup layout 'line-thickness)
               thickness))
        (pad (* (magstep font-size) box-padding))
        (m (interpret-markup layout props arg)))
    (my-rounded-box-stencil m th pad corner-radius)))

#(define-markup-command (wide-dimension layout props mup) (markup?)
  (let* ((m (interpret-markup layout props mup))
         (ext-x (ly:stencil-extent m X))
         (ext-y (ly:stencil-extent m Y))
         (width (interval-length ext-x))
         (height (interval-length ext-y)))
    (if (< width height)
        (ly:make-stencil (ly:stencil-expr m) (interval-widen ext-x (/ (- height width) 2)) ext-y)
        m)))

#(define (format-mark-roundbox-numbers number context)
   #{ \markup \override #'(corner-radius . +inf.0) \my-rounded-box \wide-dimension #(format-mark-numbers number context) #})

% Global header

\header {
  title = "Motette III"
  subtitle = "Jesu, meine Freude"
  opus = "BWV 227"
  composer = "Johann Sebastian Bach (1685-1750)"
  choraletext = \markup { "Text des Chorals:" \caps "Johann Frank (1653)" }
  choralecomposer = \markup { "Musik des Chorals:" \caps "Johann Crüger (1653)" }
  text = "Text: Römer 8, 1-2, 9-11"
  style = "Baroque"
  %mutopia fields
  mutopiatitle = "Motette III, Jesu Meine Freude"
  mutopiacomposer = "BachJS"
  mutopiainstrument = "SSATB"
  mutopiastyle = "Baroque"
  mutopiaopus = "BWV 227"
  %
  source="Edition Peters, 4592"
  copyright = "Public Domain"
  enteredby = "paolo.ribeca@gmail.com"
  maintainer = "Paolo Ribeca"
  maintainerEmail = "paolo.ribeca@gmail.com"
  footer = "Mutopia-2024/09/??-????"
  lastupdated = "2024/Sep/01"
  tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\paper {
  % For debugging purposes
  %annotate-spacing = ##t
  % General definitions
  bookTitleMarkup = \markup {
    \fill-line {
      \null
      \center-column {
        \vspace #6
        \fontsize #8 \fromproperty #'header:title
        \vspace #1
        \fontsize #10 \bold \fromproperty #'header:subtitle
        \vspace #1
        \fontsize #5 \fromproperty #'header:opus
        \vspace #2
        \fontsize #5 \caps \fromproperty #'header:composer
        \vspace #0.5
        \fontsize #3 \fromproperty #'header:choraletext
        \fontsize #3 \fromproperty #'header:choralecomposer
        \fontsize #3 \fromproperty #'header:text
        \vspace #3
        \override #'(line-width . 85) {
          \center-column
            \table-of-contents
        }
        \vspace #6
        \override #'(line-width . 85) {
          \fill-line {
            \center-column {
              \fontsize #0 #"Engraved with Lilypond"
              \qr-code #15.0 #"https://lilypond.org"
            }
            \center-column {
              \fontsize #0 #"From the Mutopia Project"
              \qr-code #15.0 #"https://MutopiaProject.org"
            }
            \center-column {              
              \fontsize #0 #"In the public domain" 
              \qr-code #15.0 #"http://creativecommons.org/licenses/publicdomain"
            }
          }
        }
      }
      \null
    }
  }
  scoreTitleMarkup = \markup {
    \fill-line {
      \null
      \dir-column {
        \center-align \fill-line {
          \null
          \fontsize #6 \bold \fromproperty #'header:piece
          \null
        }
      }
      \null
    }
  }
  % ...and the table of contents
  tocTitleMarkup = \markup {
    \column {
      \fill-line { \null \fontsize #5 \bold "Inhalt" \null }
      \vspace #2
    }
  }
  %tocItemMarkup = \tocItemWithDotsMarkup
  tocItemMarkup = \markup {
    \column {
      \fill-line { \fontsize #3 \fill-with-pattern #1 #RIGHT . \fromproperty #'toc:text \fromproperty #'toc:page }
      \vspace #0.5
    }
  }
  ragged-last-bottom = ##f
}

% General layout definitions
\layout {
  \context {
    \Score
    % Increase the size of the bar number by 2
    \override BarNumber.font-size = 2
    % Draw a box around bar numbers
    \override BarNumber.stencil
      = #(make-stencil-boxer 0.2 0.25 ly:text-interface::print)
    % Move bar numbers to a better place
    \override BarNumber.Y-offset = 4
  }
}

% Title page
\bookpart {
  \header {
    copyright = ""
    tagline = ""
  }
  \paper {
    print-page-number = ##f
  }
  \markup \null
}

% Blank page
\bookpart {
  \header {
    copyright = ""
    tagline = ""
  }
  \paper {
    bookTitleMarkup = \markup \null
    print-page-number = ##f
  }
  \markup \null
}

\include "jmf-I.ly"
\include "jmf-II.ly"
\include "jmf-III.ly"
\include "jmf-IV.ly"
\include "jmf-V.ly"
\include "jmf-VI.ly"
\include "jmf-VII.ly"
\include "jmf-VIII.ly"
\include "jmf-IX.ly"
\include "jmf-X.ly"
\include "jmf-XI.ly"

% Blank page
\bookpart {
  \paper {
    bookTitleMarkup = \markup \null
    print-page-number = ##f
  }
  \markup \null
}
