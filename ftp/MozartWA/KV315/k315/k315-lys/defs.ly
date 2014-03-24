\version "2.18.0"
\header {
  title = "Andante in C Major K. 315"
  subtitle = "for Flute and Orchestra"
  composer = "Wolfgang Amadeus Mozart (1756-1791)"
  
  mutopiatitle = "Andante in C Major K. 315"
  mutopiacomposer = "MozartWA"
  mutopiaopus = "KV 315"
  mutopiainstrument = "Flute and Orchestra: Violins, Viola, Cello, Horns, Oboes and Bass"
  date = "1778"
  source = "Breitkopf und Härtel"
  style = "Classical"
  license = "Public Domain"
  maintainer = "Maurizio Tomasi"
  maintainerEmail = "zio_tom78@hotmail.com"
  maintainerWeb = "http://www.geocities.com/zio_tom78/"

  moreInfo = "<p>This edition is based on the Breitkopf &amp; Härtel print of the score (1880s), the so-called &ldquo;Alte Mozart Ausgabe&rdquo;. The B&amp;H score lacks any information about the source texts, but it is likely they used the original autograph.  I simplified the parts for the two oboi and two french horns in the complete score, where the each pair share the same staff.  For instance, slurs are never duplicated in the two voices.  On the other side, the solo parts reproduce the unabriged original text.</p><p>The autograph does not state the date nor the place of composition, but it was probably composed when Mozart visited Mannheim in 1778.  According to a number of scholars, it is likely this piece was written as a replacement for the <em>Adagio ma non troppo</em> in the Flute Concerto in G Major KV. 313.  This work was commissioned by a certain De Jean, a rich Hollander merchant and amateur flautist, for whom Mozart composed (transcribed?) the famous Concerto in D Major KV. 314 and some flute quartets as well.</p><p>Supposing this theory is true, De Jean's dislike for the original Adagio could be justified by the fact it was too far beyond his skills, and by the too preminent role of the orchestra.  The two pieces are quite different both in length (the original Adagio lasts about 10 minutes, twice the time of this new Andante) and in the importance of the orchestra: while in the original movement it has a very prominent role, in this Andante simply supports the solo.  The two pieces share the same orchestration (strings, two oboi and two french horns) and the structure (sonata form without repeats).</p><p>This would not be the first case in Mozart's career he was forced to substitute one movement in a concerto by the soloist.  It is a well documented fact (letter by Leopold Mozart dated October 9, 1777) that when Mozart wrote the Violin Concerto nr. 5 KV. 219 (1776) for Antonio Brunetti, he was asked to remove the splendid original <em>Adagio</em> because Brunetti defined it &ldquo;too much affected&rdquo;, and replaced it with the simpler Adagio KV. 261.</p><p>Maurizio Tomasi, August 2003.</p>"

 footer = "Mutopia-2014/03/24-344"
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

raiseSlur = {}%\once \override Slur.attachment-offset = #'((0 . 0.5) 0 . 0.5)

lowerSlur = {}%\once \override Slur.attachment-offset = #'((0 . -0.5) 0 . -0.5)

RaiseSlur = {}%\once \override Slur.attachment-offset = #'((0 . 1.2) 0 . 1.2)

LowerSlur = {}%\once \override Slur.attachment-offset = #'((0 . -1.2) 0 . -1.2)

raisePhrasingSlur = {}%\once \override PhrasingSlur.attachment-offset = #'((0 . 0.5) 0 . 0.5)

slurStemToStem = {}%\once \override Slur.attachment = #'(stem . stem)

slurHeadToHead = {}%\once \override Slur.attachment = #'(head . head)

slurHeadToStem = {}%\once \override Slur.attachment = #'(head . stem)

slurStemToHead = {}%\once \override Slur.attachment = #'(stem . head)

RaiseText = {}%\once \override TextScript.extra-offset = #'(0 . 3)

raiseText = {}%\once \override TextScript.extra-offset = #'(0 . 1)

lowerText = {}%\once \override TextScript.extra-offset = #'(0 . -1)

LowerText = {}%\once \override TextScript.extra-offset = #'(0 . -2)

raiseBeam = {}%\once \override Stem.details.beamed-lengths = #'(4)

tupletNum = { \override TupletBracket.TupletNumber = ##t }

noTupletNum = { \override TupletBracket.TupletNumber = ##f }

tupletBracket = { \override TupletBracket.bracket-visibility = ##t }

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

% General markings and annotations

%rbcOne = \set stemRightBeamCount = #1
%rbcTwo = \set stemRightBeamCount = #2

% This avoids strokes with grace notes (Mozart never uses them in KV. 315)
%#(add-to-grace-init "Voice" 'Stem  'stroke-style '())
