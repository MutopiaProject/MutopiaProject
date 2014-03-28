\version "2.18.2"
\header {
    title = "Symphony nr. 18 in F major K. 130"
    composer = "Wolfgang Amadeus Mozart (1756-1791)"
        
    mutopiatitle = "Symphony nr. 18 in F major K. 130"
    mutopiacomposer = "MozartWA"
    mutopiaopus = "KV 130"
    mutopiainstrument = "Orchestra: Flutes, Horns, Violins, Viola, Cello and Bass"
    date = "May 1772"
    source = "Breitkopf und Härtel"
    style = "Classical"
    license = "Public Domain"
    maintainer = "Maurizio Tomasi"
    maintainerEmail = "zio_tom78@hotmail.com"
    maintainerWeb = "http://www.geocities.com/zio_tom78/"

    moreInfo = "<p>This edition is based on the Breitkopf &amp; Haertel print of the score (1880), the so-called “Alte Mozart Ausgabe”.  The original autograph is kept in the Staatsbibliothek Preussischer Kulturbesitz-Musikabteilung, Berlin.</p><p>Mozart composed this piece between the second journey to Italy (December 13, 1769 - March 28, 1771) and the third one (October 24, 1772 - March 13, 1773).  It is considered by many scholars his first symphonic masterpiece.  Each of its four movements deserves some attention: the Allegro shows an unprecedented rythmic power, the Andantino Grazioso has a peaceful pastoral timbre, the Menuetto shows a clever use of counterpoint, the Trio contains a reference to the Menuetto in the rythm of bars 29-32.  Expecially worth of mention is the fourth movement, Allegro Molto.  It is full of musical ideas (no less than five themes!) and masterly passages, and is the starting point of a series which will lead to the closing Allegro Molto of the “Jupiter” symphony KV. 551.</p><p>The orchestra used in this work is unique in Mozart's symphonies: apart from the traditional string quintet, there are two flutes and four horns (winds in Mozart's early symphonies are often limited to two oboi and two french horns).  In no other symphony Mozart used the same instrumentation.</p><p>On the first page of the autograph Mozart wrote, “del Sig. Cavaliere Amadeo Wolfg. Mozart à Salisburgo nel Maggio 1772” (by Mr. Squire Amadeo Wolfgang Mozart, in Salzburg, May 1772).  It seems that Mozart added the two french horns in C at a later stage, since these are written in the bottom staff and are not included within the vertical line which Mozart drew to group the other staves.  The order of the staves in the autograph is the following: french horns in F (“Corni”, 1st staff), flutes (“2 flauti”, 2nd and 3rd staff), violins (“Violini”, 4th and 5th staff), viola (“Viola”, 6th staff), bassi (“Bassi”, 7th staff) and horns in C major (“Corni in C Alto”, 8th staff).</p><p>Maurizio Tomasi, August 2003.</p>"

 footer = "Mutopia-2014/03/28-346"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
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
