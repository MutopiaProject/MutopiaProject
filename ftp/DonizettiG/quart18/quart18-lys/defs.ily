\version "2.16.0"
\header {
    title = "String Quartet nr. 18 in E minor"
    subtitle = "for 2 violins, viola and cello"
    composer = "Gaetano Donizetti (1797-1848)"
        
    mutopiatitle = "String Quartet nr. 18 in E minor"
    mutopiacomposer = "DonizettiG"
    mutopiaopus = "Nr. 18"
    mutopiainstrument = "String Quartet"
    date = "Napoli, 1836"
    source = "Reproduction of Autograph"
    style = "Classical"
    copyright = "Public Domain"
    maintainer = "Maurizio Tomasi"
    maintainerEmail = "zio_tom78@hotmail.com"

    tagline = ""
    footer = "Mutopia-2003/08/01-342"
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
