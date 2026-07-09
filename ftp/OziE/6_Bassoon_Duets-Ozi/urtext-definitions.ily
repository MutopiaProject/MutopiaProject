\include "common-defs.ily"
bmDn = {}
bmOn = {}
bmOff = {}
beamFour = {}
beamTwo = {}
closingRepeatBar = \bar ":|." 
cAccOff = #(set-accidental-style 'default)
cAccOn = #(set-accidental-style 'default)

cresc = \cresc
crescDot = \cresc
CresDot = \cresc
Cresc = \cresc
crescMark = _\markup \italic "cresc."
CrescMark = _\markup \italic "cresc."
crescDotMark = \crescMark

dcSegnoBar = {
  \textEndMark \markup \center-column { \line { "D.C." } \line \italic { al. Fine } }
  \bar "||"
}

dolce = _\markup \italic "dolce"
dol = _\markup \italic "dolce"
dolDot=\dolce
F = \f
FF = \ff
Fin = {
 \textEndMark \markup { \italic Fine } 
}
markDC = { }
MF = \mf
MZF = \mf
P = \p
PP = \pp
%% prall not redefined
restStyle = \revert Staff.Rest.style
rinforzando = _\markup \italic { rfz. }
rinf = \rinforzando
smorz = _\markup \left-align { \italic "smorz." }
staccato = -.
st = \staccato
tr = \trill
