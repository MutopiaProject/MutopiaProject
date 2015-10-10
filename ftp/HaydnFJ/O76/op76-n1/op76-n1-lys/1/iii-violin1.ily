\version "2.18.0"
violinIThirdMov =  \relative d' {
  \key g \major
  \clef violin

  \repeat volta 2 {
    d4-.-\p
    | g-. g-. e-.
    | a-. a-. d,-.
    | c'-. c-. ais-.
    | b-. b-. d,-.
    | ais'-. ais-. b-.
    | e-. e-. d-.
    | g-. g-. fis-.
    | b8-.-\ff b-. b-. b-. a4-.
    | g-. fis-. e-.

    % 10
    | d-. d-.
  }

  \repeat volta 2 {
    d,-.-\f
    | es-. es-. fis-.
    | g-. g-. a-.
    | bes-. bes-. cis-.
    | d-. d-. g-(-\>
    | f es-\! d-)
    | c!-. c-. es-(-\>
    | d c-\! bes-)
    | a-. a-. r
    | g-. g-. r

    % 20
    | fis!-.-\markup { dim. } fis-. r
    | g-. g-. r
    | fis-. fis-. d-.-\p
    | g-. g-. e-.
    | a-. a-. d,-.
    | c'-. c-. ais-.
    | b-. b-. r
    | d2-( e4-)
    | c2-( c'4-)
    | fis,2-( a!4-)

    % 30
    | g4-. r g,-.
    | dis'-. dis-. g,-.
    | e'-. e-. g,-.
    | f'-. f-. r
    | r r f-.
    | e-. fis!-. g-.
    | c8-.-\ff c-. c-. c-. b4-.
    | a-. g-. fis-.
    | g-. g-. r
    | a-.-\p a-. r

    % 40
    | b-. b-.
  }

  % Trio

  \repeat volta 2 {
    d,,4-\mf
    | g8-( b d-) fis-. g-. b-.
    | d4-. g,,-. g-.
    | g8-( a-) d,4-. a'-.
    | a8-( b-) g4-. d-.
    | g8-( b d-) fis-. g-. b-.
    | d4 e,,8-. g-. b-. dis-.
    | e-( g-) b-. g-. e-. d!-.
    | cis-( b'-) gis-( a-) fis-( g-)
    | a,-( a'-) fis-( g-) e-( fis-)

    % 50
    | dis-( e fis-) g-. a-. b-.
    | a,-( cis e-) g-. a-. cis-.
    | d,,4 r
  }

  \repeat volta 2 {
    d'4
    | c!8-( a fis-) d-. c-. a-.
    | g4-. g-. g''-.
    | e8-( f-) g,4-. f'-.
    | dis8-( e-) c,4-. e'-.
    | dis8-( e-) gis-( a-) b-( c-)
    | b-( c-) gis-( a-) b-( c-)
    | b-( c a-) e'-. c-. a-.

    % 60
    | g!-. fis-. e-. d-. c-. a-.
    | g-( b d-) fis-. g-. b-.
    | d4-. g,,-. g-.
    | g8-( a-) d,4-. a'-.
    | a8-( b-) g4-. e8-. g-.
    | c-. e-. g-. e-. c'-. g-.
    | e'-. c-. g'4-. g-.
    | b,,,8-( d-) g-( b-) d-( g-)
    | b-( g-) d-. b-. d-. b-.
    | a-( c e-) c-. a-. g-.

    % 70
    | fis-( e'-) cis-( d-) b-( c-)
    | d,-( d'-) b-( c-) a-( b-)
    | gis-( a b-) c-. d-. e-.
    | d,-( fis a-) c-. d-. fis-.
    | g,,4 r
  }
}
