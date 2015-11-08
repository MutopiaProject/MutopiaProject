\version "2.18.2"

%---------------------------------------------------------------------
%--Paper-size setting must be commented out or deleted upon submission.
%--LilyPond engraves to paper size A4 by default.
%--Uncomment the setting below to validate your typesetting
%--in "letter" sizing.
%--Mutopia publishes both A4 and letter-sized versions.
%---------------------------------------------------------------------
% #(set-default-paper-size "letter")

%--Default staff size is 20
#(set-global-staff-size 20)

\paper {
    top-margin = 8\mm                              %-minimum top-margin: 8mm
    top-markup-spacing.basic-distance = #6         %-dist. from bottom of top margin to the first markup/title
    markup-system-spacing.basic-distance = #7      %-dist. from header/title to first system
    top-system-spacing.basic-distance = #12        %-dist. from top margin to system in pages with no titles
    last-bottom-spacing.basic-distance = #20       %-pads music from copyright block
    system-system-spacing.basic-distance = #18     %-dist. from system to the next one		
}

\header {
  title = "Possum And Taters"
  subtitle = "A Ragtime Feast"
  composer = "Charles Hunter"
  date = "1900"

  mutopiacomposer = "HunterC"
  mutopiainstrument = "Piano"
  style = "Jazz"
  license = "Public Domain"
  source = "Henry A. French, April 20, 1900"
  sourceurl = "http://library.duke.edu/digitalcollections/hasm_b0924/"

  filename = "PossumAndTaters.ly"
  maintainer = "Maxime Sinclair"
  maintainerEmail = "maxime.sinclair at gmail.com"

 % Footer, tagline, and copyright blocks are included here for reference
 % and spacing purposes only.  There's no need to change these.
 % These blocks will be overridden by Mutopia during the publishing process.
 footer = "Mutopia-2015/08/13-2012"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

mbreak = {
  \break
}

topphraseone = \relative c' {
  ees8\p ees' r8 c f,4 g8 bes |
  r aes bes aes f4 e |
  \tag #'firsttime { ees8\< }
  \tag #'secondtime { ees!8\< }
    <c aes'>4 ees8 <des bes'>4 <d b'>\! |
  \tag #'secondtime { \mbreak }
  <ees c'>\f f'8\> ees c aes f e\! |
  \tag #'firsttime { \mbreak }

  ees!8\p ees' r8 c f,4 g8 bes |
  r aes bes aes f4 ees |
  <d bes'>\< <f aes>8 <d bes'>4\! <f aes>8 <d c'>4 |
  << <des! g bes>1 { s4 s s\> s } >> |
  \tag #'secondtime { \mbreak }
  ees8\p ees' r c f,4 g8 bes |
  \tag #'firsttime { \mbreak }

  r8 aes bes aes f4 e |
  ees8 <c aes'>4\< ees8 <des bes'>4 <d b'>\! |
  <ees c'> f'8 ees c aes f e |
  \tag #'secondtime { \mbreak }
  f4 g8 aes bes aes  g f |
  \tag #'firsttime { \mbreak ees8\f }
  \tag #'secondtime { ees8 }
    des ees e f fis g aes |
}

topphraseonealttwo = \relative c'' {
  g8\> bes ees des bes g ees c'\! |
  <c, aes'>4
  \tag #'firsttime { <ees ees'>8 <ees ees'> <ees ees'>4 <ees ees'> }
  \tag #'secondtime { <ees ees'>8-. <ees ees'>-. <ees ees'>4-. <ees ees'>-. }
  |
}

topphrasetwo = \relative c'' {
  g4\f ees'8 f ~ f ees f4 |
  g,2 ~ g8 ees f g |
  aes4 bes8 c ~ c bes c4 |
  ees,2 ~ ees8 ees f ees |
  \tag #'firsttime { \mbreak }

  f4 aes8 <f bes> ~ <f bes> aes <f bes>4 |
  <ees c'>4 b'8 <ees, c'> ~ <ees c'> b'8 <ees, c'>4 |
  r8 aes\< d <aes f'> ~  <aes f'> d <aes f'>4\! |
  \autoBeamOff <g bes ees>2 ~ <g bes ees>8\> \autoBeamOn ees f g\! |
  \mbreak

  aes4 ees'8 f ~ f ees f4 |
  g,2 ~ g8 ees f g |
  aes4 bes8 c ~ c bes c4 |
  ees,2.\< r4\! |
  \tag #'secondtime { \mbreak }

  <aes des aes'>->\ff <g des' g>2-> <f aes f'>4->|
  \tag #'firsttime { \mbreak <ees aes ees'>\> }
  \tag #'secondtime { <ees aes ees'>->\> }
    r r2 |
  r8\! ees g <ees c'> ~ <ees c'> g <des bes'>4
}

topphrasetwoalttwo = \relative c' {
  <c aes'>4 r <aes' c ees aes>-> r
}

top = {
  \tempo "Tempo di Rag."
  \time 4/4
  \clef treble

  \key aes \major
  \relative c' {
    ees4\f aes ~ aes8 e f4 |
    ees4 aes ~ aes8 e f4 |
    ees f'8 ees des bes g f |
    ees4 r <ees g ees'> r
    \mbreak
    \keepWithTag #'firsttime \repeat volta 2 {
      \topphraseone
    }
    \alternative {
      {
        g8\> bes ees des bes g ees c'\! |
        <c, aes'>4 r <aes' c ees aes> r |
      }
      {
        \keepWithTag #'firsttime \topphraseonealttwo
      }
    }
    \mbreak
  }
  \relative c' {
    \keepWithTag #'firsttime \repeat volta 2 {
      \topphrasetwo
    }
    \alternative {
      { <c aes'>4 <ees ees'>8 <ees ees'> <ees ees'>4 <ees ees'> }
      { \topphrasetwoalttwo \mbreak }
    }
    \key des \major
    \repeat volta 2 {
      aes8\p <des f aes> ~ <des f aes> aes <des f aes>2 |
      a8\< <ees' f a> ~ <ees f a> a, <ees' f a>2\! |
      <bes bes'>4 d8 <bes bes'> ~ <bes bes'> d <aes aes'>4 |
      <ges ges'> a8 <ges bes> ~ <ges bes> a <ges bes>4 |
      \mbreak

      <ges c> b8 <ges c> ~ <ges c> b <ges c> b |
      <ges f'>4-. <ges ees'>-. <ges c>-. <ges aes>-. |
      <f bes> aes8 <f bes> ~ <f bes> aes <f bes> aes |
      <f f'>4-. <f des'>-. <f bes>-. <f aes>-. |
      \mbreak

      aes8 <des f aes> ~ <des f aes> aes <des f aes>2 |
      a8\< <ees' f a> ~ <ees f a> a, <ees' f a>2\! |
      <bes bes'>4 d8 <bes bes'> ~ <bes bes'> d <aes aes'>4 |
      <ges ges'> a8 <ges bes> ~ <ges bes> a <ges bes>4 |
      \mbreak

      <ges c> b8 <ges c> ~ <ges c> b <ges c> b |
      <ges f'>4-.\> <ges ees'>-. <ges c>-. <ges aes>-.\! |
    }
    \alternative {
      {
        <f des'>1 ~ |
        <f des'>4 aes \acciaccatura { bes16 [ aes16 ] } ges4 aes |
        \mbreak
      }
      {
        <f des'>4 f'8\f ges g aes bes c |
        <f, f'>2. r4 \bar "||"
      }
    }
    \key aes \major
    \keepWithTag #'secondtime \topphraseone
    \keepWithTag #'secondtime \topphraseonealttwo
    \keepWithTag #'secondtime \topphrasetwo
    \topphrasetwoalttwo \bar ".."
  }
}

bottomphraseone = \relative c {
  aes4 <ees' aes c> ees, <ees' g des'> |
  aes, <ees' aes c> ees, <ees' aes c> |
  aes, <ees' aes> ees, <ees' g des'> |
  <aes, aes'> <ees' aes c> c <ees aes c> |

  aes,4 <ees' aes c> ees, <ees' g des'> |
  aes, <ees' aes c> ees, <ees' aes c> |
  bes <f' aes bes> des <f aes bes> |
  <ees, ees'>_> <e e'>_> <f f'>_> <g g'>_> |
  \tag #'firsttime { <aes aes'> }
  \tag #'secondtime { <aes aes'>^> }
    <ees' aes c> ees, <ees' g des'> |

  aes,4 <ees' aes c> ees, <ees' aes c> |
  aes, <ees' aes c> ees, <ees' g des'> |
  <aes, aes'> <ees' aes c> c <ees aes c> |
  des <f aes des> d <f aes ces> |

  ees4 <aes c> c, <ees aes c> |
}

bottomphraseonealttwo = \relative c {
  bes4 <ees g des'> ees, <ees' g des'> |
  <aes, ees' aes> r r2
}

bottomphrasetwo = \relative c {
  bes4 <ees g des'> ees, <ees' g des'> |
  bes <ees g des'> ees, <ees' g des'> |
  aes, <ees' aes c> ees, <ees' aes c> |
  aes, <ees' aes c> c <ees aes c> |

  des <f aes des> bes, <f' aes des> |
  aes, <ees' aes c> c <ees aes c> |
  d <aes' bes d> bes, <aes' bes d> |
  <ees ees'>-> <des! des'!>-> <c c'>-> <bes bes'>-> |

  <aes aes'> <ees' aes c> c <ees aes c> |
  bes <ees g des'> ees, <ees' g des'> |
  aes, <ees' aes c> ees, <ees' aes c> |
  <aes, aes'> <c c'>-> <des des'>-> <ees ees'>-> |

  \tag #'firsttime { <f f'> <ees ees'>2 <des des'>4 }
  \tag #'secondtime { <f f'>-> <ees ees'>2-> <des des'>4-> }
   |
  <c c'> bes'8 c ~ c bes aes4 |
  <ees, ees'> <e e'> <f f'> <g g'> |
}

bottomphrasetwoalttwo = \relative c {
  <aes ees' aes>4 r <aes, aes'>-> r
}

bottom =  {
  \time 4/4
  \clef bass

  \key aes \major
  \relative c {
    aes4 <ees' aes c>2 <des aes' b>4 |
    aes4 <ees' aes c>2 <des aes' b>4 |
    <ees aes c> r <ees ees,> r |
    <ees, ees,> r <ees' bes' des> r

    \keepWithTag #'firsttime \repeat volta 2 {
      \bottomphraseone
    }
    \alternative {
      {
        bes4 <ees g des'> ees, <ees' g des'> |
        <aes, ees' aes> r <aes, aes'> r
      }
      {
        \bottomphraseonealttwo
      }
    }
  }
  \relative c {
    \keepWithTag #'firsttime \repeat volta 2 {
      \bottomphrasetwo
    }
    \alternative {
      {
        <aes aes'> r r2
      }
      {
        \bottomphrasetwoalttwo
      }
    }
    \key des \major
    \relative c
    \repeat volta 2 {
      des4 <aes' des f> aes, <aes' des f> |
      c, <c' ees f> f,, <c'' ees f> |
      bes, <aes' bes d> f, <aes' bes d> |
      ges, <ges' bes ees> ees, <ges' bes ees> |

      aes, <ges' aes c> ees, <ges' aes c> |
      aes, <ges' aes c> ees, <ges' aes c> |
      des <f aes des> aes, <f' aes des> |
      des <f aes des> aes, <f' aes des> |

      des4 <aes' des f> aes, <aes' des f> |
      c, <a' ees' f> f, <a' ees' f> |
      bes, <aes' bes d> f, <aes' bes d> |
      ges, <ges' bes ees> ees, <ges' bes ees> |

      aes, <ges' aes c> ees, <ges' aes c> |
      aes, <ges' aes c> ees, <ges' aes c> |
    }
    \alternative {
      {
        <des des'>-> <bes bes'>-> <aes aes'>-> <f f'>-> |
        <des des'>-> r r2 |
      }
      {
        <des' aes' des>4 r <aes, aes'> r |
        <des, des'>2. r4 |
      }
    }
    \key aes \major
    \keepWithTag #'secondtime \bottomphraseone
    \bottomphraseonealttwo
    \keepWithTag #'secondtime \bottomphrasetwo
    \bottomphrasetwoalttwo
  }
}


\score {
  \context PianoStaff \with {
  }
  <<
    \context Staff = "up" {
      % Vertical centering of the expression marks
      \override DynamicLineSpanner.staff-padding = #3.5
      \top
    }
    \context Staff = "down" \bottom
  >>

  \layout {}
  \midi { \tempo 4 = 120 }
}
