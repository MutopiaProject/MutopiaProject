\version "2.18.0"
violaThirdMov =  \relative b {
  \key g \major
  \clef alto

  \repeat volta 2 {
    r4
    | b4-.\p r r
    | c-. r r
    | a-. r r
    | d-. r r
    | cis-. r b-.
    | fis-. r d'-.
    | e-. e-. d-.
    | b8\ff b b b d4-.
    | b'-. a-. g-.

    % 10
    | fis-. fis-.
  }

  \repeat volta 2 {
    fis,-.\f
    | g-. g-. a-.
    | bes-. bes-. d-.
    | cis-. cis-. g'-.
    | fis!-. fis-. bes(\>
    | a g\! f)
    | es-. es-. g(\>
    | f es\! d)
    | c-. c-. r
    | bes-. bes-. r
    | a-.-\markup { \italic dim. } a-. r
    | bes-. bes-. r
    | a-. a-. r
    | b!-.\p r r
    | c-. r r
    |a-. r r
    | d-. r r
    | r r b'(
    | e,2) r4
    | d'2( fis,4)

    % 30
    | g-. r r
    | b,-. r r
    | c-. r r
    | b-. r r
    | r r g'-.
    | g-. a-. b-.
    | a8\ff-. a-. a-. a-. g4-.
    | c-. b-. a-.
    | g-. g-. r
    | d-.\p d-. r

    % 40
    | d-. d-.
  }

  % Trio

  \repeat volta 2 {
    r4
    | g,4\mf^\markup { pizz. } r r
    | g r r
    | d' r r
    | d r r
    | <b d> r r
    | <b d> r r
    | <g e'> r r g' fis e
    | fis e d

    % 50
    | e r r
    | <a, e'> r r
    | <a fis'> r
  }

  \repeat volta 2 {
    r4
    | a r r
    | b r r
    | g' r r
    | g r r
    | e r r
    | e r r
    | e r r

    % 60
    | d r r
    | g, r r
    | g r r
    | d' r r
    | d r r
    | c r r
    | g' r r
    | g r r
    | g r r
    | c, r r

    % 70
    | c b a
    | b a g
    | c r r
    | a r r
    | b r
  }
}
