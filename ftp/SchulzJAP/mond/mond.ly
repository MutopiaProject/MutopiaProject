% Updated to Lilypond 2.2.5 by Ruud van Silfhout <Ruud.vanSilfhout@mutopiaproject.org>
% convert-ly -> Lilypond 2.4.2 (plus a few layout tweaks) by Chris Sawer <chris@mutopiaproject.org>
% Last changed on 2/Jan/2005

\version "2.16.0"

\header {
    title = "Der Mond ist aufgegangen"
    subtitle = "M. Claudius (1746 - 1815) J. A. P Schulz 1790"
    mutopiatitle = "Der Mond ist aufgegangen"
    mutopiacomposer = "SchulzJAP"
    mutopiainstrument = "Organ"
    style = "Renaissance"
    copyright = "Public Domain"
    maintainer = "Dr. G. Roesler"
    maintainerEmail = "groesle@gwdg.de"
    lastupdated = "2005/Jan/02"

    footer = "Mutopia-2005/01/02-127"
    tagline = "\\raisebox{10mm}{\\parbox{188mm}{\\quad\\small\\noindent " + \footer + " \\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[188mm][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[188mm][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}}"
}

#(set-global-staff-size 24)

global = {
  \time 4/4
  \partial 4    
}

Key =  \key f \major

melody =  \relative f' \context Voice = "melody" {
    \voiceOne
    f4 |
    g f bes a | g2 f4 a | a a d c | bes2 a4 a | a a bes a | g2. f4 |
    g f bes a | g2 f4 a | a a d c | bes2 a4 a | a a bes a | g g f
    \fermata \bar "||"
}
text = \lyricmode {
             \set stanza = "1."
             Der Mond ist auf -- ge -- gan -- gen, die gold -- nen Stern --
             lein pran -- gen am Him -- mel hell und klar; 
             der Wald steht 
             schwarz und schwei -- get, und aus den Wie -- sen stei -- get
             der wei -- ße Ne -- bel wun -- der -- bar.
     }

alt =  \relative f' \context Voice = "alt" {
    \voiceTwo
    c4 | d c f f | f (  e) f c |
    d e f8 g a4 | f8 d e4 f f | 
    f4. e8 d4 f | f (  e2) f4 |
    c c8 d d e f4 | d c8 bes a4 c |
    f e8 f f g a4 | f (  e) f f |
    g a g f | f e c \bar "||"
}
tenor =  \relative f \context Voice = "tenor" {
    \voiceOne
    a4 | bes a bes c | d  c8[ bes ] a4 f |
     f8[ g ] a4  a8[ bes ]  c[ f, ] | bes4 (  c)  c  f,8[ g ] |
     a[ bes ] c4 a8 (  g4) f8 | c'2. a4 |
    g a g f | f (  e) f  f8[ g ] |
     a[ bes ] c4  d8[ e ] f4 | d (  c) c d |
    e f d c | d  c8[ bes ] a4 \bar "||"
}
bass =  \relative f' \context Voice = "bass" {
    \voiceTwo
	f, | f f d c | bes (  c) f  f8[ e] |
	d4 c c a | g (  c) f,  f'8[ e ] |
	d4 c bes b | c2. f4 |
	e f g, a | bes (  c) d f |
	d a bes a | g (  c) f d |
	cis d g, a | bes c f,_\fermata \bar "||"
}

\paper {
	system-system-spacing #'basic-distance = #15
	markup-system-spacing #'basic-distance = #15
}

\score {
  <<
   \global
    \new StaffGroup = "coro" <<
      \new Staff = "women" <<
        \set Staff.midiInstrument = #"choir aahs"
        \set Staff.instrumentName = \markup { \smaller \column { "SOPRANO." "ALTO." } }
        \Key
        \new Voice = "melody" \melody
        \new Voice = "alt" \alt
      >>
      \new Staff = "men" <<
        \clef bass
        \set Staff.midiInstrument = #"choir aahs"
        \set Staff.instrumentName = \markup { \smaller \column { "TENORE." "BASSO." } }
        \set Staff.autoBeaming = ##f
        \Key
        \new Voice = "tenor" \tenor
        \new Voice = "bass" \bass
      >>
      \new Lyrics \lyricsto "melody" \text
    >>
  >>
  \layout {
        indent = 2 \cm
  }
  
  \midi {
    \tempo 4 = 160
    }


}
