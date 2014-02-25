\version "2.18.0"

triangoloStaffSettings = \with {
  midiInstrument = "tinkle bell"
  instrumentName = "Triangolo"
  shortInstrumentName = "Tr."
}

triangolo =  \relative c'' {
  \time 3/4
  \key c\major
  \compressFullBarRests
  c2.:16\p\fermata
  c4 r\fermata r
  R2.*4
  % volta (1)
  \repeat volta 2 {
    \grace {s16 s} % to match acciaccatura in violiniI
    c4\p r r
    R2.
    c4 r r

    R2.
    c4 r r
    R2.
    c4 r r
    R2.
    c4 r r
    c4 r r
    c4 r r
    c4 r r
    % 2
    c4 r r
    R2.*2
  }
  \alternative { {R2.}{R2.} }
  \repeat volta 2 {
    c4 r r
    R2.
    c4 r r
    R2.*5
    c4 r r
    R2.
    c4 r r
    R2.*8
    c4 r r
    R2.
    c4 r r
    R2.*4
    c4 r r
    R2.
    c4 r r
    R2.*15
    R2.^"poco rit." R
    c4\p^"a tempo" r r
    R2.
    c4 r r
    % 5
    R2.
    c4 r r
    R2.
    c4 r r
    R2.
    c4 r r
    R2.
    c4 r r
    R2.
    c4 r r

    c r r
    c r r
    c r r
    c r r
    R2.*2 }
  \alternative {
    {R2.}
    {R2.*2
     c2.:16\fermata c4 r r
    }
  }
}