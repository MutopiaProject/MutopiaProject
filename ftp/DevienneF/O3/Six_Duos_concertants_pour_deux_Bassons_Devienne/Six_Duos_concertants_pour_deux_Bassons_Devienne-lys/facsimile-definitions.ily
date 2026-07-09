facsimile=##t
\include "common-defs.ily"
bmOn = [
bmDn = _[
bmOff = ]
beamFour =
\set Timing.beamExceptions =
\beamExceptions { 8 [ 8 8 8 ] | 16 [ 16 16 16] 16 [ 16 16 16 ] }

beamTwo =
\set Timing.beamExceptions =
\beamExceptions { 8 [ 8 ] 8 [ 8 ] | 16 [ 16 16 16] 16 [ 16 16 16 ] }

cAccOff = #(set-accidental-style 'default)
cAccOn = #(set-accidental-style 'dodecaphonic)
closingRepeatBar = {  \bar ":|.|:" s32 }

cresc = _\markup \left-align "cres"
crescDot = _\markup \left-align "cres."
crescDotMark = \crescDot
CresDot = _\markup \left-align "Cres."
Cresc = _\markup \left-align "Cres"
CrescMark = _\markup \left-align "Cres"
crescMark = _\markup \left-align { "cres" }

dolce = _\markup \center-align { Dol }
dol = _\markup \center-align { dol }
dolDot = _\markup \center-align { Dol. }
F = _\markup { \teeny "F" }
FF= _\markup { \teeny "FF" }

Fin = \textEndMark \markup \right-align { \tiny \bold { Fin }}
markDC = _\markup \left-align { DC }
MF= _\markup { \teeny "mezzo F" }
MZF= _\markup { \teeny "mezo F" }
P = _\markup { \teeny "P" }
PP= _\markup { \teeny "PP" }

prall = ^"+"
restStyle = \override Staff.Rest.style = #'classical
rinforzando = _"rinf"

rinf = \rinforzando
tr = ^\markup { tr }
smorz = _\markup \left-align { "Smorz." }
staccato = -!
st = \staccato
tupletBracketStyle = \override TupletBracket.tuplet-slur = ##t
bentKnee = {
  \once \override Beam.auto-knee-gap = #0.25
  \once \override Beam.damping = #0.4
}
tenorClef = \clef tenorvarC

