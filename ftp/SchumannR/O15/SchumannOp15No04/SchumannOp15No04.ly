% PaulLiu
%
\version "2.16.0"
\header {
  title = "Kinderscenen"
  subtitle = "Bittendes Kind"
  composer = "Robert Alexander Schumann"
  mutopiatitle = "Kinderscenen - Bittendes Kind"
  mutopiacomposer = "SchumannR"
  mutopiaopus = "O 15 N 4"
  mutopiainstrument = "Piano"
  date = "18th C."
  source = "Leichte Stucke, 1900"
  style = "Romantic"
  copyright = "MutopiaBSD"
  maintainer = "Ying-Chun Liu"
  maintainerEmail = "PaulLiu.bbs@bbs.cis.nctu.edu.tw"
  maintainerWeb = "http://www.cis.nctu.edu.tw/~is86007/"
  lastupdated = "2003/Nov/01"
  tagline = "\\parbox{\\paper-width}{\\thefooter\\quad\\small\\noindent\\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[\\textwidth][c]{It has been typeset and released under the MutopiaBSD licence by " + \maintainer + ".} \\makebox[\\textwidth][c]{You should have received a copy of the licence with this music. If not, it is available at the above website.}}"
  footer = "Mutopia-2003/11/01-366"
}

% Maintenance note:
%   Lilypond 2.6.1 gives a clash warning in the last bar caused by the
%   <a cis>4 in violaTwo interfering with the e4 in oboes. This could
%   be fixed with a shiftOnn but it would then look different than the
%   original submission. Even though it is named 'oboes' I believe the
%   original typesetter meant it as a piano voice, which means the
%   proper fix is to simply move the oboes' e4 into the chord in violaTwo.
%     -gl Sat Dec  8 11:39:18 2012

#(set-global-staff-size 16)

stemDown = \override Stem   #'direction = #-1
stemUp = \override Stem   #'direction = #1
stemNeutral = \revert Stem #'direction
slurUp = \override Slur   #'direction = #1
pslurUp = \override PhrasingSlur   #'direction = #1
slurDown = \override Slur   #'direction = #-1
pslurDown = \override PhrasingSlur   #'direction = #-1
tripletbr = \override TupletBracket   #'tuplet-bracket-visibility = ##t

repeattr =  {
  \relative c {
    \context Voice = "repeattr" {
      s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2
      \bar "|."
    }
  }
}

dynamictr =  {
  s16\p s16 s4 s16 s16
  s2
  s16\pp s16 s4 s16 s16
  s2
  s16\p s16 s4 s16 s16
  s2
  s16\pp s16 s4 s16 s16
  s2
  s16\p s16 s4 s16 s16
  s2
  s16\pp s16 s4 s16 s16
  s2
  s16\p s16 s4 s16 s16
  s2
  s16\pp s16 s4 s16 s16
  s2
  s2
}

pedaltr =  {
  s2 s2
  s8\sustainOn s16 s16\sustainOff s4
  s2 s2 s2 s2 s2 s2 s2 s2 s2
  s8\sustainOn s16 s16\sustainOff s4
  s2
  s8\sustainOn s16 s16\sustainOff s4
  s4 s4\sustainOn
  s4 s8\sustainOff s8
}

viola =  {
  \relative c'' {
    \context Voice = "viola" {
      \stemUp
      \pslurUp
      \slurUp
      b8 \( [g' fis e]
	    d <gis, b> <a cis>4\)
      b8 \( [g' fis e]
	    d <gis, b> <a cis>4\)
      c8 \( [a b fis]
	    g e <d fis>4\)
      c'8 \( [a b fis]
	     g e <d fis>4\)
      fis8^"ritardando" \( [gis a b]
			   cis <gis b> a4\)
      fis8^"ritardando" \( [gis a b]
			   cis <gis b> a4\)
      b8^"(a tempo)" \( [g' fis e]
			d <gis, b> <a cis>4\)
      b8 \( [g'^"ritardando" fis e]
	    d <gis, b> s4
	    g'4^\fermata \) r4
    }
  }
}

violatwo =  {
  \relative c'' {
    \context Voice = "violatwo" {
      \stemDown
      \pslurUp
      \slurUp
      g16 e s8 bes'16 g s8
      a16 fis s8 a16 e s8
      g16 e s8 bes'16 g s8
      a16 fis s8 a16 e s8

      s2 s2 s2 s2
      s2 s2 s2 s2

      g16 e s8 bes'16 g s8
      a16 fis s8 a16 e s8
      g16 e s8 bes' 16 g s8
      a16 fis s8 \stemUp <a cis>4~ \stemDown
      <a cis>4 s4
    }
  }
}

oboes =  {
  \relative c' {
    \context Voice = "oboe" {
      \stemNeutral
      \change Staff=down
      a8 \change Staff=up b'16 g \change Staff=down cis,8 \change Staff=up a'16 g \change Staff=down \stemUp
      d8 \change Staff=up \stemDown f16 d \change Staff=down \stemUp a8 \change Staff=up \stemDown cis16 a \change Staff=down
      \stemUp a,8 \change Staff=up \stemDown b''16 g \change Staff=down \stemUp cis,8 \change Staff=up \stemDown a'16 g \change Staff=down
      \stemUp d8 \change Staff=up \stemDown f16 d \change Staff=down \stemUp a8 \change Staff=up \stemDown cis16 a16
      \stemDown a'16 e fis \change Staff=down \stemUp ees \change Staff=up \stemDown g d ees \change Staff=down \stemUp c
      \change Staff=up \stemDown d b cis \change Staff=down \stemUp bes \change Staff=up \stemDown d a \change Staff=down \stemUp fis d
      \change Staff=up \stemDown a''16 e fis \change Staff=down \stemUp ees \change Staff=up \stemDown g d ees \change Staff=down \stemUp c
      \change Staff=up \stemDown d b cis \change Staff=down \stemUp bes \change Staff=up \stemDown d a \change Staff=down \stemUp fis d
      \change Staff=up \stemDown d'16 b \change Staff=down \stemUp a gis fis e d \change Staff=up \stemDown fis'
      \change Staff=up \stemDown cis'16 e, \change Staff=down \stemUp dis d \change Staff=up \stemDown a' cis, \change Staff=down \stemUp e, cis
      \change Staff=up \stemDown d'16 b \change Staff=down \stemUp a gis fis e d \change Staff=up \stemDown fis'
      \change Staff=up \stemDown cis'16 e, \change Staff=down \stemUp dis d \change Staff=up \stemDown a' cis, \change Staff=down \stemUp e, cis
      \stemUp a8 \change Staff=up \stemDown b''16 g \change Staff=down \stemUp cis,8 \change Staff=up \stemDown a'16 g \change Staff=down
      \stemUp d8 \change Staff=up \stemDown f16 d \change Staff=down \stemUp a8 \change Staff=up \stemDown cis16 a \change Staff=down
      \stemUp a,8 \change Staff=up \stemDown b''16 g \change Staff=down \stemUp cis,8 \change Staff=up \stemDown a'16 g \change Staff=down \stemUp
      d8 \change Staff=up \stemDown f16 d a'16 e s8
      e4 s4 \stemNeutral
    }
  }
}

oboestwo =  {
  \relative c' {
    \context Voice = "oboetwo" {
      \stemNeutral
      \change Staff=down
      s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2
      s4 \stemUp a8 \slurUp cis16 ( a16 ~ <a cis>4 )  \stemNeutral s4
    }
  }
}


bassvoices =  {
  \relative c' {
    \context Voice = "bassvoice" {
      \stemDown
      \pslurDown
      \slurDown
      a8 r8 cis r
      d r a r
      a, r cis' r
      d r a r
      d,4 d4
      d d
      d, d'
      d d
      b \( cis8 d
	   e4 a \)
      b, \( cis8 d
	    e4 a \)
      a,8 r8 cis' r8
      d r a r
      a, r cis' r
      d r a r
      a,4_\fermata r4
    }
  }
}

bassvoicestwo =  {
  \relative c {
    \context Voice = "bassvoicetwo" {
      \stemDown
      \pslurDown
      \slurDown
    }
  }
}


\score {
  \context PianoStaff  <<
    \context Staff = "up" <<
      \key d \major
      \time 2/4
      \viola
      \violatwo
      \oboes
      \repeattr
    >>
    \context Dynamics = "dynamics" \dynamictr
    \context Staff = "down" <<
      \clef bass
      \key d \major
      \time 2/4
      \oboestwo
      \bassvoicestwo
      \bassvoices
    >>
    \context Dynamics = "pedal" \pedaltr
  >>
  \layout { }
}

\score {
  \context PianoStaff  <<
    \context Staff = "up" <<
      \key d \major
      \time 2/4
      \viola
      \violatwo
      \oboes
      \repeattr
      \dynamictr
    >>
    \context Dynamics = "dynamics" \dynamictr
    \context Staff = "down" <<
      \clef bass
      \key d \major
      \time 2/4
      \oboestwo
      \bassvoicestwo
      \bassvoices
      \dynamictr
    >>
    \context Dynamics = "pedal" \pedaltr
  >>
  \midi {
    \tempo 4 = 60
    \context {
      \type "Performer_group"
      \name Dynamics
      \consists "Piano_pedal_performer"
      \consists "Dynamic_performer"
    }
    \context {
      \PianoStaff
      \accepts Dynamics
    }
  }
}
