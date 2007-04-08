\header {
    title = "String Quartet nr. 18 in E minor"
    subtitle = "for 2 violins, viola and cello"
    composer = "Gaetano Donizetti (1797-1848)"
        
    mutopiatitle = "String Quartet nr. 18 in E minor"
    mutopiacomposer = "Gaetano Donizetti (1797-1848)"
    mutopiaopus = "Nr. 18"
    mutopiainstrument = "String Quartet"
    date = "Napoli, 1836"
    source = "Reproduction of Autograph"
    style = "Classical"
    copyright = "Public Domain"
    maintainer = "Maurizio Tomasi"
    maintainerEmail = "zio_tom78@hotmail.com"
    maintainerWeb = "http://www.geocities.com/zio_tom78/"
    lastupdated = "2002/Jul/18"

    tagline = "\\parbox{\\hsize}{\\thefooter\\quad\\small\\noindent\\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[\\textwidth][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[\\textwidth][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}"
    footer = "Mutopia-2003/08/01-342"
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

LowerSlur = \once \property Voice.Slur
    \override #'attachment-offset = #'((0 . -1.2) 0 . -1.2)

raisePhrasingSlur = \once \property Voice.PhrasingSlur
    \override #'attachment-offset = #'((0 . 0.5) 0 . 0.5)

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

smartTupletBracket = \property Voice.TupletBracket
    \set #'bracket-visibility = #'if-no-beam

raiseHairpin = \once \property Voice.Hairpin
    \override #'extra-offset = #'(0 . 1)

lowerHairpin = \once \property Voice.Hairpin
    \override #'extra-offset = #'(0 . -1)

raiseScript = \once \property Voice.Script
    \override #'extra-offset = #'(0.0 . 1.0)

RaiseScript = \once \property Voice.Script
    \override #'extra-offset = #'(0.0 . 1.5)

lowerScript = \once \property Voice.Script
    \override #'extra-offset = #'(0.0 . -1.0)

LowerScript = \once \property Voice.Script
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

parentP = #'(columns (large "(") (dynamic "p") (large ")"))
parentF = #'(columns (large "(") (dynamic "f") (large ")"))
parentPP = #'(columns (large "(") (dynamic "pp") (large ")"))
parentFF = #'(columns (large "(") (dynamic "ff") (large ")"))
parentMP = #'(columns (large "(") (dynamic "mp") (large ")"))
parentMF = #'(columns (large "(") (dynamic "mf") (large ")"))
parentFP = #'(columns (large "(") (dynamic "fp") (large ")"))
parentCresc = #'(columns (upright "(") (italic "cresc.") (upright ")"))
parentDecresc = #'(columns (upright "(") (italic "decresc.") (upright ")"))

parentShift = \once \property Voice.TextScript
    \override #'extra-offset = #'(-1.0 . 0.0)

ParentShift = \once \property Voice.TextScript
    \override #'extra-offset = #'(-1.5 . 0.0)


% General markings and annotations for each movement

markingsI = \notes {
    \once \property Voice.TextScript \override #'extra-offset = #'(-6 . 2)
    s4^#'((Large upright) "Allegro") s2
}


markingsII = \notes {
    \once \property Voice.TextScript \override #'extra-offset = #'(-6 . 2)
    s4^#'((Large upright) "ADAGIO")
}


markingsIII = \notes {
    \once \property Voice.TextScript \override #'extra-offset = #'(-6 . 2.5)
    s4^\markup { \large { \bold { \column << MINUETTO Presto >> } } }
    \skip2.*94

    \once \property Voice.TextScript \override #'extra-offset = #'(-4 . 3)
    s4^#'((Large upright) "Trio.") s2

    % [R] This is to fake an unopened repeat sign with alternatives
    \skip2.*65
    \property Score.repeatCommands = #'((volta "1"))
    s2.*2
    \property Score.repeatCommands = #'((volta #f) end-repeat (volta "2"))
    s2
    \property Score.repeatCommands = #'((volta #f))    
}

markingsIIIbis = \notes {
    s4
    \skip2.*93

    s2
    \once \property Voice.TextScript \override #'extra-offset = #'(-6 . -3)
    s4_#'(Large "FINE")

    \skip2.*67

    \once \property Voice.TextScript \override #'extra-offset = #'(-5 . -3)
    s4_\markup { \large { \italic "D.C. il Minuetto al Fine" } }
}


markingsIV = \notes {
    \once \property Voice.TextScript \override #'extra-offset = #'(-6 . 3)
    s2^#'((Large upright) "ALL. GIUSTO") s2
}

rbcOne = \property Voice.stemRightBeamCount = #1
rbcTwo = \property Voice.stemRightBeamCount = #2

