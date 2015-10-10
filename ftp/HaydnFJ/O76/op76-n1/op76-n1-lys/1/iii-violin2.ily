\version "2.18.0"
violinIIThirdMov =  \relative d' {
  \key g \major
  \clef violin

  \repeat volta 2 {
    r4
    | d-.\p r r
    | e-. r r
    | fis-. r r
    | g-. r r
    | e-. r fis!-.
    | cis'-. r b
    | cis-. cis-. d-.
    | << { g8 g g g fis4 } \\ { d8\ff d d d d4 } >>
    | e4-. d-. cis-.

    % 10
    | d-. d-.
  }

  \repeat volta 2 {
    a,-.\f
    | bes-. bes-. c!-.
    | d-. d-. fis-.
    | g-. g-. bes-.
    | a-. a-. d(\>
    | c bes\! a)
    | g-. g-. bes(\>
    | a g\! f)
    | es-. es-. r
    | cis-. cis-. r
    | d-.-\markup { \italic dim. } d-. r
    | cis-.cis-. r
    | d-. d-. r
    | d-.\p r r
    | e-. r r
    | fis-. r r
    | g-. g-. r
    | b2( gis4)
    | a2( e'4)
    | a,2( c4)

    % 30
    | b-. r r
    | g-. r r
    | g-. r r
    | d'-. d-. r
    | r r d-.
    | e-. c-. b-.
    | fis'8-.\ff fis-. fis-. fis-. g4-.
    | e-. d-. c-.
    | b-. b-. r
    | fis'-.\p fis-. r

    % 40
    | g-. g-.
  }

  % Trio

  \repeat volta 2 {
    r4
    | <d, b'>\mf^\markup { \italic pizz. } r r
    | <d b'> r r
    | <fis a> r r
    | <d b'> r r
    | <d b'> r r
    | <e b'> r r
    | <e b'> r r
    | cis' d e
    | a, cis d

    % 50
    | b r r
    | cis r r
    | d r
  }

  \repeat volta 2 {
    r4
    | <d, c'!> r r
    | <d b'> r r
    | <d' f> r r
    | <c e> r r
    | a r r
    | a r r
    | a r r

    % 60
    | a r r
    | <d, b'> r r
    | <d b'> r r
    | <fis a> r r
    | <d b'> r r
    | <g c> r r
    | <e c'> r r
    | <d b'> r r
    | <d b'> r r
    | <e a> r r

    % 70
    | fis g a
    | d, fis g
    | e r r
    | <c fis> r r
    | <b g'> r
  }
}
