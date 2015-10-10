\version "2.18.0"
celloThirdMov =  \relative g {
  \key g \major
  \clef bass

  \repeat volta 2 {
    r4
    | g4-.\p r r
    | c,-. r r
    | d-. r r
    | g, r r
    | cis'-. r d-.
    | ais-. r b-.
    | a!-. a-. d-.
    | <g,, g'>8-.\ff <g-. g'> <g-. g'> <g-. g'> d'4-.
    | g-. a-. a,-.

    % 10
    | d-. d-.
  }

  \repeat volta 2 {
    r4 
    | d,\f r r
    | d r r
    | d r r
    | d r r
    | R2.*4
    | r4 r d(
    | d')-\markup { \italic dim. } r d,(
    | d') r d,(
    | d') r r
    | g,-.\p r r
    | c-. r r
    | d-. r r
    | g,-. r d'-.
    | g-. g-. e-.
    | a-. a-. d,-.
    | c'-. c-. d,-.

    % 30
    | b'-. b-. r
    | R2.*3
    | r4 r b-.
    | c-. a-. g-.
    | d8\ff-. d-. d-. d-. e4-.
    | c-. d-. d-.
    | g-. g-. r d-.\p d-. r
    | g,-. g-.
  }

  % Trio

  \repeat volta 2 {
    r4
    | g'4-\mf^\markup { pizz. } r r
    | g r r
    | d r r
    | g, r r
    | g' r r
    | g r r
    | g, r r
    | a r r
    | a r r

    % 50
    | g' r r
    | a r r
    | d, r
  }

  \repeat volta 2 {
    r4
    | fis r r
    | g r r
    | b, r r
    | c r r
    | c' r r
    | c r r
    | c, r r

    % 60
    | d r r
    | g r r
    | g r r
    | d r r
    | g, r r
    | e' r r
    | c r r
    | g' r r
    | g r r
    | c, r r

    % 70
    | d r r
    | d r r
    | c r r
    | d r r
    | g, r
  }

  \bar "|."
}
