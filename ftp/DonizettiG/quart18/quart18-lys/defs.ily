\version "2.16.0"
\header {
    title = "String Quartet nr. 18 in E minor"
    subtitle = "for 2 violins, viola and cello"
    composer = "Gaetano Donizetti (1797-1848)"
        
    mutopiatitle = "String Quartet nr. 18 in E minor"
    mutopiacomposer = "DonizettiG"
    mutopiainstrument = "String Quartet: Two Violins, Viola, 'Cello"
    date = "1836 (Napoli)"
    source = "Reproduction of Autograph"
    style = "Classical"
    copyright = "Public Domain"
    maintainer = "Maurizio Tomasi"
    maintainerEmail = "zio_tom78@hotmail.com"

 footer = "Mutopia-2013/12/21-342"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \abs-fontsize #10 \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 MutopiaProject \abs-fontsize #8 .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \abs-fontsize #10 \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 LilyPond \abs-fontsize #8 .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \abs-fontsize #8 \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

% Some useful macros

cresc = \markup {\italic "cresc."}
decresc = \markup {\italic "decresc."}
staccato = \markup {\italic "staccato."}
legato = \markup {\italic "legato."}

tupletNum = \revert TupletNumber #'stencil

noTupletNum = \override TupletNumber #'stencil = ##f

tupletBracket = \override TupletBracket
      #'bracket-visibility = ##t

noTupletBracket = \override TupletBracket
      #'bracket-visibility = ##f

smartTupletBracket = \override TupletBracket
      #'bracket-visibility = #'if-no-beam

includeEdition=
#(define-void-function (parser location)()
   (cond
        ((ly:get-option 'autograph)
             (ly:parser-include-string parser "\\include \"autograph.ily\"\n"))
        (else (ly:parser-include-string parser "\\include \"edited.ily\"\n"))
   )
)

\includeEdition
