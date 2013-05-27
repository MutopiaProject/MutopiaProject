#(set! point-and-click line-column-location)

\header {
    title = "String Quartet KV. 387 (nr. 14)"
    subtitle = "for 2 violins, viola and cello"
    composer = "W. A. Mozart (1756-1791)"
    opus = "KV.~387"
        
    mutopiatitle = "String Quartet KV. 387 (nr. 14)"
    mutopiacomposer = "MozartWA"
    mutopiaopus = "KV. 387"
    mutopiainstrument = "String Quartet"
    date = "December 1782"
    source = "Breitkopf und Härtel (1882)"
    style = "Classical"
    copyright = "Public Domain"
    maintainer = "Maurizio Tomasi"
    maintainerEmail = "zio_tom78@hotmail.com"
    lastupdated = "2002/June/02"

    tagline = "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
    footer = "Mutopia-2002/06/02-245"
}

% Some useful macros

cue = \property Voice.Stem \override #'flag-style = #'()

noCue = \property Voice.Stem \revert #'flag-style

raiseDynamics = \property Voice.DynamicText
    \override #'extra-offset = #'(0 . 1.5)

lowerDynamics = \property Voice.DynamicText
    \override #'extra-offset = #'(0 . -1.5)

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

restoreSlur = \property Voice.Slur
    \revert #'attachment-offset

RaiseText = \property Staff.TextScript
    \override #'extra-offset = #'(0 . 3)

raiseText = \property Staff.TextScript
    \override #'extra-offset = #'(0 . 1)

lowerText = \property Staff.TextScript
    \override #'extra-offset = #'(0 . -1)

LowerText = \property Staff.TextScript
    \override #'extra-offset = #'(0 . -2)

restoreText = \property Staff.TextScript
    \revert #'extra-offset

blankNotes = {
    \property Voice.NoteHead \override #'transparent = ##t
    \property Voice.Stem \override #'transparent = ##t
}

visibleNotes = {
    \property Voice.NoteHead \override #'transparent = ##f
    \property Voice.Stem \override #'transparent = ##f
}


% General markings and annotations for each movement

globalI = {
    \time 4/4
    \partial 8
}

KeyI = \notes \key g \major


globalII = {
    \time 3/4
}

KeyII = \notes \key g \major


globalIII = {
    \partial 4
    \time 3/4
}

KeyIII = \notes \key c \major


globalIV = {
    \time 4/4
}

KeyIV = \notes \key g \major



markingsI = \notes {
    \RaiseText
    s8^#'((Large upright) "Allegro vivace assai.")
    \restoreText
}

markingsII = \notes {
    \RaiseText
    s4^#'((Large upright) "MINUETTO. Allegro.") s2
    \restoreText
    \skip 2.*92
    \RaiseText
    s4^#'((Large upright) "TRIO." ) s2
    \restoreText
    \skip 2.*51
    \RaiseText
    s4^#'(lines (italic "M.D.C.") (italic "senza replica"))
    \restoreText
}

markingsIII = \notes {
    \RaiseText
    s4^#'((Large upright) "Andante cantabile.")
    \restoreText
    \skip 2.*106
    \bar "|."
}

markingsIV = \notes {
    \RaiseText
    s1*4^#'((Large upright) "Molto Allegro.")
    \restoreText
    \skip 1*294
    \bar "|."
}


