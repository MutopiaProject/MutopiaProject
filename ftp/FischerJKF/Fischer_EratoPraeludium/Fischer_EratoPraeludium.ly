\include "paper20.ly"
\include "deutsch.ly"

\header{
filename = 	  "Fischer_EratoPraeludium.ly"
title = 	  "Muse of poetry"
subtitle =	  "Erato"
subsubtitle =	  "Praeludium"
opus =            "Muse of poetry, erotic poetry in particular (Erato)"
composer = 	  "J. K. F. Fischer"
style =	          "Baroque"
maintainer = 	  "Rune Zedeler"
maintainerEmail = "rz@daimi.au.dk"
copyright = 	  "Public Domain"
mutopiatitle =    "Erato Praeludium"
mutopiacomposer = "J. K. F. Fischer (1665 - 1746)"
mutopiainstrument = "harpsichord, piano"

footer = "Mutopia-2001/12/10-128"
tagline = "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part 
of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been 
typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted 
modification and redistribution is permitted and encouraged---copy this music an
d share it!}"
}

\version "1.4.0"

u = \notes {\stemUp \tieUp}
d = \notes {\stemDown \tieDown}
b = \notes {\stemBoth \tieBoth}

su = \notes{ \translator Staff = up}
sd = \notes{ \translator Staff = down}

melone = \notes \relative c'' {
  r16 e16 h a g h g fis e dis e fis g \u fis g a |
  h4 ~ h16 dis e fis g8. fis16 e4 ~ |
  e16 e d cis d4 ~ d16 d c  h c8. c16 | \break
  h4 ~ h16 a h c d g d c h d c h |
  \b a4 ~ a16 d a fis g 4 ~ g16 g fis e |
  fis a fis d s4 r16 d' a fis d fis d a |
  \u r16 d d fis fis a a c c a' a fis fis c c a |
  h2 ~ h16 h a g a c e, g |
  \b fis4 d' ~ d16 d c h c e g, h |
  a e cis e a,4 r16 c'! h a h d g, h |
  a4 g ~ g16 g fis e fis4 ~ |
  fis16 fis g a \u g4 ~ g16 g f e f e a fis |
  dis fis dis h h'4 ~ h16 h a g a4 ~ |
  a16 a g fis g8. g16 fis4 fis8. fis16 |
  e1 \bar "|."
}
meltwo = \notes \relative c' {
  \u r4  \property Voice.Rest \override #'staff-position = #6
  \property Voice.VoiceFollower \set #'type = #'dashed-line
  r16
  \property Voice.Rest \override #'staff-position = #0
  e16 h a g h g fis \u e \su \d dis'! e fis |
  g4 ~ g16 fis g a h8. a16 g4 |
  fis4 ~ fis16 fis g a g4 ~ g16 e d8 |
  d4 ~ d16 fis g a h8. a16 g8 \sd \u d |
  cis16 e cis a d4 ~ d16 d cis h cis4 |
  d a16 d a fis s2 |
  \su s1 |
  \d r16 g' g d d h h d e4 \showStaffSwitch \sd \u c4 ~ \hideStaffSwitch|
  c16 c h a h d fis, a g2 ~ |
  g4 ~ g16 g fis e fis4 g |
  fis16 c' h a h d g, h a4 ~ a16 a h c |
  h4 ~ h16 \su \d e d! e c2 |
  h4 r16 dis e fis e4 ~ e8 fis |
  dis4 ~ dis16 dis e8 ~ e16 cis dis e dis8. dis16 |
  s1
}
melthree = \notes \relative c {
  e1 |
  r16 e16 h a g h g fis e dis' e fis g fis g e |
  h'4. h8 e,4 e,8 fis |
  g16 g' d c h d h a g4. g'8 |
  \d g4 fis e2 |
  d2 d2 |
  fis1 |
  g2 c, |
  d e |
  cis d |
  d1 |
  dis4 e
  <
    {\u a2 | fis4 g ~ g8 e c'4 | h2 ~ h4 ~ h16 h a8 ~ | a16 a h a gis a
  fis a gis2}
    \context Voice=ny {\d a,2 ~ | a4 g c ~ c16 c h a | h2 ~ h | <e,1 e'1>}
  >
}


\score {

\context PianoStaff
\notes 
<
  \property PianoStaff.instrument="\Huge\bf\it 1.      "
  \property PianoStaff.midiInstrument = "harpsichord"
  \property Score.TimeSignature \override #'style = #'C
  \context Staff = up   <
    \time 4/4 \key e \minor \clef G \melone>
  \context Staff = down <
    \time 4/4 \key e \minor \clef F \meltwo \melthree>
>
\midi {\tempo 4=60}
\paper {
	%linewidth = 18.0 \cm
    }
}




