#(set! point-and-click line-column-location)

\header {
    title = "String Quartet KV. 458 (nr. 17) ``Hunt''"
    subtitle = "for 2 violins, viola and cello"
    composer = "W. A. Mozart (1756-1791)"
        
    mutopiatitle = "String Quartet KV. 458 (nr. 17) \"Hunt\""
    mutopiacomposer = "W. A. Mozart (1756-1791)"
    mutopiaopus = "KV. 458"
    mutopiainstrument = "String Quartet"
    date = "19th November 1784 (Wien)"
    source = "Breitkopf und H\"artel (1882)"
    style = "Classical"
    copyright = "Public Domain"
    maintainer = "Maurizio Tomasi"
    maintainerEmail = "zio_tom78@hotmail.com"
    maintainerWeb = "http://www.geocities.com/zio_tom78/"
    lastupdated = "2002/Dec/22"

    tagline = "\\parbox{\\hsize}{\\thefooter\\quad\\small\\noindent\\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[\\textwidth][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[\\textwidth][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}"
    footer = "Mutopia-2002/12/22-277"
}

% Some useful macros

cue = \once \property Voice.Stem \override #'stroke-style = #'()

% noCue = \property Voice.Stem \revert #'stroke-style

raiseDynamics = \property Voice.DynamicText
    \override #'extra-offset = #'(0 . 1.0)

RaiseDynamics = \property Voice.DynamicText
    \override #'extra-offset = #'(0 . 1.5)

lowerDynamics = \property Voice.DynamicText
    \override #'extra-offset = #'(0 . -1.0)

LowerDynamics = \property Voice.DynamicText
    \override #'extra-offset = #'(0 . -1.5)

cresc = #'(italic "cresc.")
decresc = #'(italic "decresc.")
staccato = #'(italic "staccato")
legato = #'(italic "legato")

restoreDynamics = \property Voice.DynamicText
    \revert #'extra-offset

raiseSlur = \property Voice.Slur
    \override #'attachment-offset = #'((0 . 0.5) 0 . 0.5)

lowerSlur = \property Voice.Slur
    \override #'attachment-offset = #'((0 . -0.5) 0 . -0.5)

RaiseSlur = \property Voice.Slur
    \override #'attachment-offset = #'((0 . 1.2) 0 . 1.2)

LowerSlur = \property Voice.Slur
    \override #'attachment-offset = #'((0 . -1.2) 0 . -1.2)

slurStemToStem = \property Voice.Slur
    \override #'attachment = #'(stem . stem)

slurHeadToHead = \property Voice.Slur
    \override #'attachment = #'(head . head)

slurHeadToStem = \property Voice.Slur
    \override #'attachment = #'(head . stem)

slurStemToHead = \property Voice.Slur
    \override #'attachment = #'(stem . head)

slurDefToDef = \property Voice.Slur
    \revert #'attachment

restoreSlur = \property Voice.Slur
    \revert #'attachment-offset

RaiseText = \property Voice.TextScript
    \override #'extra-offset = #'(0 . 3)

raiseText = \property Voice.TextScript
    \override #'extra-offset = #'(0 . 1)

lowerText = \property Voice.TextScript
    \override #'extra-offset = #'(0 . -1)

LowerText = \property Voice.TextScript
    \override #'extra-offset = #'(0 . -2)

raiseBeam = \property Voice.Stem
    \override #'beamed-lengths = #'(4)

restoreBeam = \property Voice.Stem
    \revert #'beamed-lengths

tupletNum = \property Voice.TupletBracket
    \set #'number-visibility = ##t

noTupletNum = \property Voice.TupletBracket
    \set #'number-visibility = ##f 

tupletBracket = \property Voice.TupletBracket
    \set #'bracket-visibility = ##t

noTupletBracket = \property Voice.TupletBracket
    \set #'bracket-visibility = ##f 

restoreText = \property Voice.TextScript
    \revert #'extra-offset

raiseScript = \property Voice.Script
    \override #'extra-offset = #'(0.0 . 1.0)

RaiseScript = \property Voice.Script
    \override #'extra-offset = #'(0.0 . 1.5)

restoreScript = \property Voice.Script
    \revert #'extra-offset

blankNotes = {
    \property Voice.NoteHead \override #'transparent = ##t
    \property Voice.Stem \override #'transparent = ##t
}

visibleNotes = {
    \property Voice.NoteHead \override #'transparent = ##f
    \property Voice.Stem \override #'transparent = ##f
}

setTrillWave = {
    \property Voice.TextSpanner \set #'type = #'trill
    \property Voice.TextSpanner \set #'edge-height = #'(0 . 0)
    \property Voice.TextSpanner \set #'padding = #1.0
    \property Voice.TextSpanner \set #'minimum-space = #5.0
    \property Voice.TextSpanner \set #'edge-text = #'((line
    (music "scripts-trill") " ") . "")
}

parentP = #'(columns (large "(") (dynamic "p") (large ")"))
parentF = #'(columns (large "(") (dynamic "f") (large ")"))
parentPP = #'(columns (large "(") (dynamic "pp") (large ")"))
parentFF = #'(columns (large "(") (dynamic "ff") (large ")"))
parentMP = #'(columns (large "(") (dynamic "mp") (large ")"))
parentMF = #'(columns (large "(") (dynamic "mf") (large ")"))
parentFP = #'(columns (large "(") (dynamic "fp") (large ")"))
parentCresc = #'(columns (upright "(") (italic "cresc.") (upright ")"))

% General markings and annotations for each movement


markingsI = \notes {
    \once \property Voice.TextScript \override #'extra-offset = #'(-3 . 3)
    s4.^#'((Large upright) "Allegro vivace assai.") s4.
    \skip2.*280
    \bar "|."
}


markingsII = \notes {
    \once \property Voice.TextScript \override #'extra-offset = #'(-3 . 3)
    s4^#'((Large upright) "MENUETTO. Allegro.") s2
    \skip2.*27

    \once \property Voice.TextScript \override #'extra-offset = #'(0 . 3)
    s4^#'((Large upright) "Trio.") s2
}

markingsIIbis = \notes {
    \skip2.*62
    s2
    \once \property Voice.TextScript \override #'extra-offset = #'(-6 . -4)
    s4_#'((Large upright) "M.D.C.")
    \bar "|."
}

markingsIIbisSolo = \notes {
    \skip2.*60
    s2
    \once \property Voice.TextScript \override #'extra-offset = #'(-6 . -4)
    s4_#'((Large upright) "M.D.C.")
    \bar "|."
}

markingsIII = \notes {
    \once \property Voice.TextScript \override #'extra-offset = #'(-3 . 3)
    s4^#'((Large upright) "Adagio.") s4 s2
    \skip1*52
    \bar "|."
}


markingsIV = \notes {
    \once \property Voice.TextScript \override #'extra-offset = #'(-3 . 3)
    s2^#'((Large upright) "Allegro assai.")
    \skip2*334
    \bar "|."
}

rbcOne = \property Voice.stemRightBeamCount = #1
rbcTwo = \property Voice.stemRightBeamCount = #2

