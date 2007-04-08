\header {
title = "Aase's Death"
subtitle = "La Mort D'Ase"
composer = "Edvard Grieg (1843 - 1907)"
meter = "Andante doloroso"
opus = "Op. 46 No. 2 - from Peer Gynt Suite I"
copyright = "Public Domain"
source = "Kunkel Brothers 1891"
filename = "violiniIIpart.ly"
maintainer = "Deborah Lowrey"
maintainerEmail = "drlowrey@karmaresources.com"
% footer = "Public Domain"
 tagline = "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by Deborah Lowrey (\\texttt{http://www.karmaresources.com}).\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
 footer = "Mutopia-2002/07/04-247"
}

\version "1.5.63"

\include "paper20.ly"

\include "violiniII.ly"

\score {
    < 
      \context Staff = violiniII <
	\property Staff.midiInstrument = #"violin"
	\property Staff.instrument = #'(lines "Violini II   " "(con sordini)" )
	\property Staff.instr = #"Vl.II"
	\context Voice=one \partcombine Voice
	\context Thread=one \violinitwoI
	\context Thread=two \violinitwoII
>
>
\include "paper.ly"
\include "midi.ly"
}
