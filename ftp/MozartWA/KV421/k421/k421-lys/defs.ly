\header {
    title = "String Quartet KV. 421 (nr. 15)"
    subtitle = "for 2 violins, viola and cello"
    composer = "W. A. Mozart (1756-1791)"
    opus = "KV.~421"
        
    mutopiatitle = "String Quartet KV. 421 (nr. 15)"
    mutopiacomposer = "MozartWA"
    mutopiaopus = "KV. 421"
    mutopiainstrument = "String Quartet"
    date = "June 1783"
    source = "Breitkopf und Härtel (1882)"
    style = "Classical"
    copyright = "Public Domain"
    maintainer = "Maurizio Tomasi"
    maintainerEmail = "zio_tom78@hotmail.com"
    lastupdated = "2002/Dec/19"
    
    tagline = "\\parbox{\\hsize}{\\thefooter\\quad\\small\\noindent\\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[\\textwidth][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[\\textwidth][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}"
    footer = "Mutopia-2002/12/19-273"
}

% Some useful macros

cue = \property Voice.Stem \override #'stroke-style = #'()

noCue = \property Voice.Stem \revert #'stroke-style

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
    \property Voice.TextSpanner \set #'edge-height = #'(2 . 2)
    \property Voice.TextSpanner \set #'edge-text = #'((line
    (music "scripts-trill") " ") . "")
}

% General markings and annotations for each movement

globalI = {
    \time 4/4
}


markingsI = \notes {
    \once \property Voice.TextScript \override #'extra-offset = #'(-3 . 3)
    s4^#'((Large upright) "Allegro.") s4 s2
    \skip1*118
    \bar "|."
}


markingsII = \notes {
    \time 6/8
    \once \property Voice.TextScript \override #'extra-offset = #'(-3 . 3)
    s4^#'((Large upright) "Andante.") s8 s4 s8
    \skip2.*86
    \bar "|."
}


markingsIII = \notes {
    \time 3/4
    \partial 4

    \once \property Voice.TextScript \override #'extra-offset = #'(-3 . 3)
    s4^#'((Large upright) "MENUETTO. (Allegretto.)")
    \skip2.*38

    s2
    \once \property Voice.TextScript \override #'extra-offset = #'(0 . 3)
    s4^#'((Large upright) "Trio.")
}


markingsIIIbis = \notes {
    \time 3/4
    \partial 4

    s4
    \skip2.*62
    \once \property Voice.TextScript \override #'extra-offset = #'(-12 . -3)
    s2_#'((Large upright) "Menuetto D.C.")
}


markingsIV = \notes {
    \time 6/8
    \partial 8

    \once \property Voice.TextScript \override #'extra-offset = #'(-3 . 3)
    s8^#'((Large upright) "Allegro ma non troppo.")
    \skip2.*111

    s2 s8
    \once \property Voice.TextScript \override #'extra-offset = #'(-3 . 3)
    s8^#'((Large upright) "Più Allegro.")

    \skip2.*30
    \bar "|."
}
