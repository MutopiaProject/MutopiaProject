\version "2.18.0"

contrabassiStaffSettings = \with {
  midiInstrument = "pizzicato strings"
  instrumentName = "Contrabassi"
  shortInstrumentName = "Cb."
}

contrabassi =  \relative c {
  \time 3/4
  \key c\major
  \clef "bass"
  R2.\fermataMarkup
  r4 r\fermata r
  a\p^"pizz." r r
  a r r
  a r r
  a r r
  % volta (1)
  \repeat volta 2 {
    \grace {s16 s} % to match acciaccatura in violiniI
    a4 r r
    a r r
    a r r

    a r r
    a\crM r r
    a r r
    a\diM r r
    b r r
    b r r
    b\< r r\!
    b\> r r\!
    b r r
    % 2
    e4 r r
    R2.
    r4 r4 b'4^\accent\f
  }

  \alternative {
    { e^\accent r r } { e^\accent r r }
  }

  \repeat volta 2 {
    e,4\p r r
    e\< r r\!
    e r r
    e\> r r\!
    e r r

    R2.*3
    a4 r r
    a\< r r\!
    a r r
    a\> r r\!
    a r r
    R2.*3
    d,4\mp r r
    R2.*2
    d4 r r
    R2.*3

    d4\pp r r
    R2.*2
    d4 r r
    R2.*3
    ees4 r r
    ees r r
    % 4
    ees r r
    ees r r
    fis\crM r r
    fis r r
    fis\piucM r r
    fis r r
    b,\ff r r
    b r r

    b r r
    b r r
    e,\diM r r
    e r r
    e^"poco rit." r r
    e r r
    a\p^"a tempo" r r
    a r r
    a r r
    % 5
    a r r
    a\crM r r
    a r r
    a\diM r r
    b r r
    d\crM r r
    d r r
    d\diM r r
    e r r
    e r r

    e\< r r\!
    e\> r r\!
    e r r
    a r r
    R2.*2
  }
  \alternative {
    {R2. } {r4 r e\pp a, r r R2.\fermataMarkup R }
  }
}
