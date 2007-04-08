\version "2.0.0"
\include "paper13.ly"
\include "corni_di_bassetto.ily"
\include "fagotti.ily"
\include "trombe.ily"
\include "timpani.ily"
\include "violino-1.ily"
\include "violino-2.ily"
\include "viola.ily"
\include "choir.ily"
\include "organo.ily"

\header {
  title = "2. Dies Irae"
  opus = "K 626"
  composer = "W. A. Mozart (1756-1791)"
   
  mutopiatitle = "Dies Irae"
  mutopiacomposer = "W. A. Mozart (1756-1791)"
  mutopiaopus = "KV 626"
  mutopiainstrument = "Orchestra, Voice"
  date = "1791"
  source = "Breitkopf & Haertel, 1877"
  style = "Classical"
  copyright = "Public Domain"
  maintainer = "Martin Norbäck"
  maintainerEmail = "d95mback@dtek.chalmers.se"
  maintainerWeb = "http://norpan.org/cvs/K626/"
  lastupdated = "2003/Oct/27"

  tagline = "\\parbox{\\hsize}{\\thefooter\\quad\\small\\noindent\\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[\\textwidth][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[\\textwidth][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}"
  footer = "Mutopia-2003/10/27-364"
}

\score {
  <<
    \context StaffGroup = all <<
      \corniDiBassettoStaff
      \fagottiStaff
      \trombeStaff
      \timpaniStaff
      \violinoAStaff
      \violinoBStaff
      \violaStaff
    >>
    \choirStaff
    \organoStaff
  >>
  \midi { 
    \tempo 2=90 
  }
  \paper {
    \translator {
      \ScoreContext
	BarNumber \override #'padding = #2
    }
  }
}
