#(set! point-and-click line-column-location)

\header {
  title = "Trio in E-flat Major"
  subtitle = "(Kegelstatt Trio)"
  subsubtitle = "for Clarinet, Viola and Piano"
  composer = "W.~A.~Mozart (1756-1791)"
  opus = "KV.~498"

  mutopiatitle = "Trio in E-flat Major KV. 498"
  mutopiacomposer = "W. A. Mozart (1756-1791)"
  mutopiaopus = "KV. 498"
  mutopiainstrument = "Clarinet, Viola and Piano"
  date = "1786"
  source = "Breitkopf und Haertel (1879)"
  style = "Classical"
  copyright = "Public Domain"
  maintainer = "Maurizio Tomasi"
  maintainerEmail = "zio_tom78@hotmail.com"
  lastupdated = "2004/Apr/30"

  tagline = "\\parbox{\\hsize}{\\thefooter\\quad\\small\\noindent\\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[\\textwidth][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[\\textwidth][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}"
  footer = "Mutopia-2004/04/30-250"
}

% Some useful macros

cue = \property Voice.Stem \override #'flag-style = #'()

noCue = \property Voice.Stem \revert #'flag-style

raiseDynamics = \property Voice.DynamicText
    \override #'extra-offset = #'(-2 . 2)

lowerDynamics = \property Voice.DynamicText
    \override #'extra-offset = #'(-2 . -2)

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

smallNatural = #'(music ((font-relative-size . -1) "accidentals-0"))

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
    \property Voice.TextSpanner \set #'padding = #0.5
    \property Voice.TextSpanner \set #'edge-text = #'((music "scripts-trill") . "")
%    \property Voice.TextSpanner \set #'edge-text = #'((line
%    (music "scripts-trill") " ") . "")
}

naturalTurnNatural =
    #'(lines ((music ((font-relative-size . -1) "accidentals-0")))
	     (music "scripts-turn"))

sharpTurnNatural =
    #'(lines ((music ((font-relative-size . -1) "accidentals-1")))
	     (music "scripts-turn")
	     ((music ((font-relative-size . -1) "accidentals-0"))))


markingsI = \notes {
    \property Voice.TextScript \override #'extra-offset = #'(-5 . 2)
    s4^#'((Large upright) "Andante.") s8 s4 s8
    \property Voice.TextScript \revert #'extra-offset
}

markingsII = \notes {
    \property Voice.TextScript \override #'extra-offset = #'(-5 . 2)
    s4^#'((Large upright) "Menuetto.") s8 s4 s8
    \property Voice.TextScript \revert #'extra-offset
    | \skip2.*40
    \property Voice.TextScript \override #'extra-offset = #'(-5 . 2)
    | s4^#'((Large upright) "Trio.") s8 s4 s8
    \property Voice.TextScript \revert #'extra-offset
}

markingsIII = \notes {
    \property Voice.TextScript \override #'extra-offset = #'(-5 . 2)
    s4^#'((Large upright) "Rondo. Allegretto.") s8 s4 s8
    \property Voice.TextScript \revert #'extra-offset
}
