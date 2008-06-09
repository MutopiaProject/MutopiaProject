\version "2.10.10"

\header {
    title = "Quintet KV. 581"
    subtitle = "for Clarinet, 2 violins, viola and cello"
    composer = "W. A. Mozart (1756-1791)"
        
    mutopiatitle = "Clarinet Quintet KV. 581"
    mutopiacomposer = "MozartWA"
    mutopiaopus = "KV 581"
    mutopiainstrument = "Clarinet, 2 Violins, Viola, Cello"
    date = "1789"
    source = "Breitkopf und Härtel (1883)"
    style = "Classical"
    copyright = "Public Domain"
    maintainer = "Maurizio Tomasi"
    maintainerEmail = "zio_tom78@hotmail.com"
    maintainerWeb = "http://www.geocities.com/zio_tom78/"
    lastupdated = "2008/Jun/09"
 footer = "Mutopia-2008/06/09-337"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

%%% Some useful macros

cue = \once \override Stem   #'stroke-style = #'()

raiseDynamics = \once \override DynamicText
      #'extra-offset = #'(0 . 1.0)

RaiseDynamics = \once \override DynamicText
      #'extra-offset = #'(0 . 1.5)

lowerDynamics = \once \override DynamicText
      #'extra-offset = #'(0 . -1.0)

LowerDynamics = \once \override DynamicText
      #'extra-offset = #'(0 . -1.5)

cresc = #'(italic "cresc.")
decresc = #'(italic "decresc.")
staccato = #'(italic "staccato")
legato = #'(italic "legato")

RaiseText = \once \override TextScript
      #'extra-offset = #'(0 . 3)

raiseText = \once \override TextScript
      #'extra-offset = #'(0 . 1)

lowerText = \once \override TextScript
      #'extra-offset = #'(0 . -1)

LowerText = \once \override TextScript
      #'extra-offset = #'(0 . -2)

raiseBeam = \once \override Stem #'details #'beamed-lengths = #'(4)

tupletNum = \override TupletNumber #'transparent = ##f

noTupletNum = \override TupletNumber #'transparent = ##t

tupletBracket = \override Staff.TupletBracket #'bracket-visibility = ##t

noTupletBracket = \override Staff.TupletBracket #'bracket-visibility = ##f

smartTupletBracket = \override Staff.TupletBracket #'bracket-visibility = #'if-no-beam

lowerScript = \once \override Script
      #'extra-offset = #'(0.0 . -1.0)

raiseScript = \once \override Script
      #'extra-offset = #'(0.0 . 1.0)

RaiseScript = \once \override Script
      #'extra-offset = #'(0.0 . 1.5)

stemOff = \override Stem   #'transparent = ##t
stemOn = \override Stem   #'transparent = ##f

blankNotes = {
    \override NoteHead   #'transparent = ##t
    \override Stem   #'transparent = ##t
}

visibleNotes = {
    \override NoteHead   #'transparent = ##f
    \override Stem   #'transparent = ##f
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

parentShift = \once \override TextScript
      #'extra-offset = #'(-1.0 . 0.0)

ParentShift = \once \override TextScript
      #'extra-offset = #'(-1.5 . 0.0)

%%% General markings and annotations for each movement


markingsI =  {
  \override Score.RehearsalMark #'extra-offset = #'(0.0 . 1.5)
  \mark \markup { \large \bold "Allegro." }
  \skip1*79
  \break

  \skip1*118
  \bar "|."
}

markingsII =  {
  \override Score.RehearsalMark #'extra-offset = #'(0.0 . 1.0)
  \mark \markup { \large \bold "Larghetto." }
  \skip2.*85
  \bar "|."
}

markingsIII =  {
  \override Score.RehearsalMark #'extra-offset = #'(0.0 . 1.5)
  \mark \markup { \large \bold "Menuetto." }
  s4
  \skip2.*7
  s2 \break
  s4
  \skip2.*23

  s2
  s8
  \bar ""
  \mark \markup { \large \bold "Trio I." }
  s8
  \skip2.*40

  s2
  s8
  \bar ""
  \mark \markup { \large \bold "Trio II." }
}

markingsIIIbis =  {
  s4
  \skip2.*72

  s2
  \bar ":|:"
  \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
  \once \override Score.RehearsalMark #'self-alignment-X = #right
  \mark \markup { \large \bold "M.D.C." }

  s4
  \skip2.*50

  s2
  \bar ":|"
  \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
  \once \override Score.RehearsalMark #'self-alignment-X = #right
  \mark \markup { \large \bold "M.D.C." }
}

markingsIV =  {
  \override Score.RehearsalMark #'extra-offset = #'(1.0 . 1.5)
  \mark \markup { \large \bold "Allegretto con Variationi." }
  \skip1*16
  \break

  \mark \markup { \large \bold "Var. I"}
  \skip1*16
  \break

  \mark \markup { \large \bold "Var. II"}
  \skip1*16
  \break

  \mark \markup { \large \bold "Var. III"}
  \skip1*16
  \break

  \mark \markup { \large \bold "Var. IV"}
  \skip1*20
  \break

  \mark \markup { \large \bold "Adagio."}
  \skip1*21

  \bar "||"
  \break

  \mark \markup { \large \bold "Allegro."}
  \skip1*36

  \bar "|."
}

rbcOne = \set stemRightBeamCount = #1
rbcTwo = \set stemRightBeamCount = #2
