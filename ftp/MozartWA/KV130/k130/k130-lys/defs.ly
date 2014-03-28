\version "2.17.97"
\header {
    title = "Symphony nr. 18 in F major K. 130"
    composer = "Wolfgang Amadeus Mozart (1756-1791)"
        
    mutopiatitle = "Symphony nr. 18 in F major K. 130"
    mutopiacomposer = "MozartWA"
    mutopiaopus = "KV. 130"
    mutopiainstrument = "Orchestra"
    mutopialastupdated = "2014/Jan/10"
    date = "May 1772"
    source = "Breitkopf und Härtel"
    style = "Classical"
    copyright = "Public Domain"
    maintainer = "Maurizio Tomasi"
    maintainerEmail = "zio_tom78@hotmail.com"
    maintainerWeb = "http://www.geocities.com/zio_tom78/"
    lastupdated = "2014/Jan/04"
    footer = "Mutopia-2003/08/17-346"

    tagline =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
}

% Some useful macros

cue = \once \override Flag.stroke-style = #'()

raiseDynamics = \once \override DynamicText.extra-offset = #'(0 . 1.0)

RaiseDynamics = \once \override DynamicText.extra-offset = #'(0 . 1.5)

lowerDynamics = \once \override DynamicText.extra-offset = #'(0 . -1.0)

LowerDynamics = \once \override DynamicText.extra-offset = #'(0 . -1.5)

cresc = #'(italic "cresc.")
decresc = #'(italic "decresc.")
staccato = #'(italic "staccato")
legato = #'(italic "legato")

aDue = \markup { \bold "a 2." }
solo = \markup { \bold "solo" }

raiseSlur = \once \override Slur.attachment-offset = #'((0 . 0.5) 0 . 0.5)

lowerSlur = \once \override Slur.attachment-offset = #'((0 . -0.5) 0 . -0.5)

RaiseSlur = \once \override Slur.attachment-offset = #'((0 . 1.2) 0 . 1.2)

LowerSlur = \once \override Slur.attachment-offset = #'((0 . -1.2) 0 . -1.2)

raisePhrasingSlur = \once \override PhrasingSlur.attachment-offset = #'((0 . 0.5) 0 . 0.5)

slurStemToStem = \once \override Slur.attachment = #'(stem . stem)

slurHeadToHead = \once \override Slur.attachment = #'(head . head)

slurHeadToStem = \once \override Slur.attachment = #'(head . stem)

slurStemToHead = \once \override Slur.attachment = #'(stem . head)

RaiseText = \once \override TextScript.extra-offset = #'(0 . 3)

raiseText = \once \override TextScript.extra-offset = #'(0 . 1)

lowerText = \once \override TextScript.extra-offset = #'(0 . -1)

LowerText = \once \override TextScript.extra-offset = #'(0 . -2)

raiseBeam = \once \override Beam.shorten = #-1

RaiseBeam = \once \override Beam.shorten = #-1.7

lowerBeam = \once \override Beam.shorten = #1

LowerBeam = \once \override Beam.shorten = #1.7

tupletBracket = \override TupletBracket.bracket-visibility = ##t

noTupletBracket = \override TupletBracket.bracket-visibility = ##f

smartTupletBracket = \override TupletBracket.bracket-visibility = #'if-no-beam

raiseHairpin = \once \override Hairpin.extra-offset = #'(0 . 1)

lowerHairpin = \once \override Hairpin.extra-offset = #'(0 . -1)

raiseScript = \once \override Script.extra-offset = #'(0.0 . 1.0)

RaiseScript = \once \override Script.extra-offset = #'(0.0 . 1.5)

lowerScript = \once \override Script.extra-offset = #'(0.0 . -1.0)

LowerScript = \once \override Script.extra-offset = #'(0.0 . 1.5)

stemOff = \override Stem.transparent = ##t
stemOn = \override Stem.transparent = ##f

blankNotes = {
    \override NoteHead.transparent = ##t
    \override Stem.transparent = ##t
}

visibleNotes = {
    \override NoteHead.transparent = ##f
    \override Stem.transparent = ##f
}

setTrillWave = {
    \override TextSpanner.style = #'trill
    \override TextSpanner.edge-text
    = #(cons (make-musicglyph-markup "scripts.trill")  "")
}

beginTrillWave = $(make-span-event 'TextSpanEvent START)
endTrillWave = $(make-span-event 'TextSpanEvent STOP)

parentP = #'(columns (large "(") (dynamic "p") (large ")"))
parentF = #'(columns (large "(") (dynamic "f") (large ")"))
parentPP = #'(columns (large "(") (dynamic "pp") (large ")"))
parentFF = #'(columns (large "(") (dynamic "ff") (large ")"))
parentMP = #'(columns (large "(") (dynamic "mp") (large ")"))
parentMF = #'(columns (large "(") (dynamic "mf") (large ")"))
parentFP = #'(columns (large "(") (dynamic "fp") (large ")"))
parentCresc = #'(columns (upright "(") (italic "cresc.") (upright ")"))
parentDecresc = #'(columns (upright "(") (italic "decresc.") (upright ")"))

parentShift = \once \override TextScript.extra-offset = #'(-1.0 . 0.0)

ParentShift = \once \override TextScript.extra-offset = #'(-1.5 . 0.0)

cresc = \markup { \large { \italic cresc. } }
decresc = \markup { \large { \italic decresc. } }

% General markings and annotations for each movement

markingsIII =  {
    s4
    \skip 2.*15

    s2
    \once \override TextScript.extra-offset = #'(-8 . 4)
    s4^ \markup{\large "Trio."}
}

markingsIIIbis =  {
    s4
    \skip 2.*37

    \once \override TextScript.extra-offset = #'(-5 . -2.5)
    s2_ \markup{\large "Men.D.C."}
}

rbcOne = \set stemRightBeamCount = #1
rbcTwo = \set stemRightBeamCount = #2
lbcOne = \set stemLeftBeamCount = #1
lbcTwo = \set stemLeftBeamCount = #2

% This avoids strokes with grace notes (Mozart never uses them in KV. 130)
%TODO: #(add-to-grace-init "Voice" 'Stem  'stroke-style '())
