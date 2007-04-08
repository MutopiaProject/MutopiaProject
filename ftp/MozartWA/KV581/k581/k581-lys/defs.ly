#(set! point-and-click line-column-location)

\header {
    title = "Quintet KV. 581"
    subtitle = "for Clarinet, 2 violins, viola and cello"
    composer = "W. A. Mozart (1756-1791)"
        
    mutopiatitle = "Clarinet Quintet KV. 581"
    mutopiacomposer = "W. A. Mozart (1756-1791)"
    mutopiaopus = "KV. 581"
    mutopiainstrument = "Clarinet, 2 Violins, Viola, Cello"
    date = "1789"
    source = "Breitkopf und H\"artel (1883)"
    style = "Classical"
    copyright = "Public Domain"
    maintainer = "Maurizio Tomasi"
    maintainerEmail = "zio_tom78@hotmail.com"
    maintainerWeb = "http://www.geocities.com/zio_tom78/"
    lastupdated = "2003/Jul/17"

    tagline = "\\parbox{\\hsize}{\\thefooter\\quad\\small\\noindent\\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[\\textwidth][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[\\textwidth][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}"
    footer = "Mutopia-2003/07/17-337"
}

% Some useful macros

cue = \once \property Voice.Stem \override #'stroke-style = #'()

raiseDynamics = \once \property Voice.DynamicText
    \override #'extra-offset = #'(0 . 1.0)

RaiseDynamics = \once \property Voice.DynamicText
    \override #'extra-offset = #'(0 . 1.5)

lowerDynamics = \once \property Voice.DynamicText
    \override #'extra-offset = #'(0 . -1.0)

LowerDynamics = \once \property Voice.DynamicText
    \override #'extra-offset = #'(0 . -1.5)

cresc = #'(italic "cresc.")
decresc = #'(italic "decresc.")
staccato = #'(italic "staccato")
legato = #'(italic "legato")

raiseSlur = \once \property Voice.Slur
    \override #'attachment-offset = #'((0 . 0.5) 0 . 0.5)

lowerSlur = \once \property Voice.Slur
    \override #'attachment-offset = #'((0 . -0.5) 0 . -0.5)

RaiseSlur = \once \property Voice.Slur
    \override #'attachment-offset = #'((0 . 1.2) 0 . 1.2)

RAISESLUR = \once \property Voice.Slur
    \override #'attachment-offset = #'((0 . 1.8) 0 . 1.8)

LowerSlur = \once \property Voice.Slur
    \override #'attachment-offset = #'((0 . -1.2) 0 . -1.2)

slurStemToStem = \once \property Voice.Slur
    \override #'attachment = #'(stem . stem)

slurHeadToHead = \once \property Voice.Slur
    \override #'attachment = #'(head . head)

slurHeadToStem = \once \property Voice.Slur
    \override #'attachment = #'(head . stem)

slurStemToHead = \once \property Voice.Slur
    \override #'attachment = #'(stem . head)

RaiseText = \once \property Voice.TextScript
    \override #'extra-offset = #'(0 . 3)

raiseText = \once \property Voice.TextScript
    \override #'extra-offset = #'(0 . 1)

lowerText = \once \property Voice.TextScript
    \override #'extra-offset = #'(0 . -1)

LowerText = \once \property Voice.TextScript
    \override #'extra-offset = #'(0 . -2)

raiseBeam = \once \property Voice.Stem
    \override #'beamed-lengths = #'(4)

tupletNum = \property Voice.TupletBracket
    \set #'number-visibility = ##t

noTupletNum = \property Voice.TupletBracket
    \set #'number-visibility = ##f 

tupletBracket = \property Voice.TupletBracket
    \set #'bracket-visibility = ##t

noTupletBracket = \property Voice.TupletBracket
    \set #'bracket-visibility = ##f 

lowerScript = \once \property Voice.Script
    \override #'extra-offset = #'(0.0 . -1.0)

raiseScript = \once \property Voice.Script
    \override #'extra-offset = #'(0.0 . 1.0)

RaiseScript = \once \property Voice.Script
    \override #'extra-offset = #'(0.0 . 1.5)

stemOff = \property Voice.Stem \override #'transparent = ##t
stemOn = \property Voice.Stem \override #'transparent = ##f

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

rf = #'(dynamic "rf")
parentP = #'(columns (large "(") (dynamic "p") (large ")"))
parentF = #'(columns (large "(") (dynamic "f") (large ")"))
parentPP = #'(columns (large "(") (dynamic "pp") (large ")"))
parentFF = #'(columns (large "(") (dynamic "ff") (large ")"))
parentMP = #'(columns (large "(") (dynamic "mp") (large ")"))
parentMF = #'(columns (large "(") (dynamic "mf") (large ")"))
parentFP = #'(columns (large "(") (dynamic "fp") (large ")"))
parentSF = #'(columns (large "(") (dynamic "sf") (large ")"))
parentSFP = #'(columns (large "(") (dynamic "sfp") (large ")"))
parentCresc = #'(columns (upright "(") (italic "cresc.") (upright ")"))
parentDecresc = #'(columns (upright "(") (italic "decresc.") (upright ")"))

parentShift = \once \property Voice.TextScript
    \override #'extra-offset = #'(-1.0 . 0.0)

ParentShift = \once \property Voice.TextScript
    \override #'extra-offset = #'(-1.5 . 0.0)

% General markings and annotations for each movement


markingsI = \notes {
    \once \property Voice.TextScript \override #'extra-offset = #'(-3 . 3)
    s4^#'((Large upright) "Allegro.") s4 s2
%    \skip1*196
%    \bar "|."
}

markingsII = \notes {
    \once \property Voice.TextScript \override #'extra-offset = #'(-3 . 3)
    s4^#'((Large upright) "Larghetto.") s2

    \skip2.*84
    \bar "|."
}

markingsIII = \notes {
    \once \property Voice.TextScript \override #'extra-offset = #'(-3 . 3)
    s4^#'((Large upright) "Menuetto.")
    \skip2.*31

    s2
    \once \property Voice.TextScript \override #'extra-offset = #'(-2 . 3)
    s4^#'((Large upright) "Trio I.")
    \skip2.*40

    s2
    \once \property Voice.TextScript \override #'extra-offset = #'(-2 . 3)
    s4^#'((Large upright) "Trio II.")
}

markingsIIIbis = \notes {
    s4
    \skip2.*72
    s4
    \once \property Voice.TextScript \override #'extra-offset = #'(-4 . -2)
    s2_#'((Large upright) "M.D.C.")
    \skip2.*50

    s4
    \once \property Voice.TextScript \override #'extra-offset = #'(-4 . -2)
    s4_#'((Large upright) "M.D.C.")
}

markingsIV = \notes {
    \once \property Voice.TextScript \override #'extra-offset = #'(-3 . 3)
    s2^#'((Large upright) "Allegretto con Variationi.") s2
    
    \skip1*15

    \once \property Voice.TextScript \override #'extra-offset = #'(-3 . 3)
    s2^#'((Large upright) "Var. I") s2
    
    \skip1*15

    \once \property Voice.TextScript \override #'extra-offset = #'(-3 . 3)
    s2^#'((Large upright) "Var. II") s2
    
    \skip1*15

    \once \property Voice.TextScript \override #'extra-offset = #'(-3 . 4)
    s2^#'((Large upright) "Var. III") s2
    
    \skip1*15

    \once \property Voice.TextScript \override #'extra-offset = #'(-3 . 3)
    s2^#'((Large upright) "Var. IV") s2
    
    \skip1*19

    \once \property Voice.TextScript \override #'extra-offset = #'(-3 . 3)
    s2^#'((Large upright) "Adagio.") s2

    \skip1*20

    \bar "||"

    \once \property Voice.TextScript \override #'extra-offset = #'(-3 . 3)
    s2^#'((Large upright) "Allegro.") s2

    \skip1*35
    \bar "|."
}

rbcOne = \property Voice.stemRightBeamCount = #1
rbcTwo = \property Voice.stemRightBeamCount = #2

