% PaulLiu
%
\version "2.16.1"
\header {
  title = "Kinderscenen"
  subtitle = "Bittendes Kind"
  composer = "Robert Alexander Schumann"
  mutopiatitle = "Kinderscenen - Bittendes Kind"
  mutopiacomposer = "SchumannR"
  mutopiaopus = "Op. 15, No. 4"
  mutopiainstrument = "Piano"
  date = "18th C."
  source = "Leichte Stucke, 1900"
  style = "Romantic"
  copyright = "Creative Commons Attribution 3.0"
  maintainer = "Ying-Chun Liu"
  maintainerEmail = "PaulLiu.bbs@bbs.cis.nctu.edu.tw"
  maintainerWeb = "http://www.cis.nctu.edu.tw/~is86007/"
 footer = "Mutopia-2013/01/05-366"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2013. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/by/3.0" http://creativecommons.org/licenses/by/3.0 } } } } }
}

#(set-global-staff-size 16)
\paper {
  markup-system-spacing #'padding = #4
}
\layout {
  \context {
    \Score
    % add space between staves in piano staff
    \override StaffGrouper #'staff-staff-spacing #'padding = #6
    % stretch measures slightly
    \override SpacingSpanner #'base-shortest-duration = #(ly:make-moment 1 32)
  }
}


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
      <e a cis>4 s4
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
\barNumberCheck #7
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
      s4 s4 \stemNeutral
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
