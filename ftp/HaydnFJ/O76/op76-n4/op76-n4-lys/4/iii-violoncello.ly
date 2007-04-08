\version "2.6.0"
celloThirdMov =  \relative bes, {
  \key bes \major
  \clef bass

  \repeat volta 2 {
    r4
    | bes\f-| d'-| r
    | a,-| c'-| r
    | g,-| bes'-| r
    | f,-| a'-| r
    | es es es
    | d2.
    | <c, c'>4\fz c' c
    | f r
  }

  \repeat volta 2 {
    r4
    | r r f,

    % 10
    | f f r
    | r r d
    | d d r
    | R2.*3
    | r4 r d8( es)
    | d( es) d( es) g( es)
    | d4-| d'-| r
    | R2.*5
    | f2. ~
    | f ~
    | f
    | a,8( bes) a( bes) r4
    | R2.
    | bes4-| bes-| bes-|

    % 30
    | a-| a-| r
    | as-| as-| as-|
    | g-| g-| r
    | es'-| es-| es-|
    | d2.
    | es4 es f
    | bes8( f) d( bes) a( bes)
    | a( bes) a( bes) es-. bes-.
    | d-. bes-. d-. bes-. a( bes)
    | a( bes) a( bes) es-. bes-.

    % 40
    | d-. bes-. d-. bes-. r4
    | d\p r r
    | es r r
    | f r r
    | bes-. f-. d-.
    | bes-. f-. d-.
    | es r f
    | bes'\f-. f-. d-. 
    | bes-. f-. d-.
    | es r f
  }

  \alternative {
    {
      % 50
      | bes4 r s
    }

    {
      | bes2.\fz ~
    }
  }

  \bar "||"

  % Trio

  | bes-\> ~
  | bes ~
  | bes ~
  | bes ~
  | bes-\!\fz ~
  | bes2 as4
  | ges( f es)
  | f2.-\> ~

  % 60
  | f-\!
  | bes2.-\>\fz ~
  | bes ~
  | bes ~
  | bes\fz-\! ~
  | bes2 as4
  | ges( f es)
  | f2.-\> ~
  | f2-\!

  \repeat volta 2 {
    r4
    | f'2.\fz ~

    % 70
    | f4 g! f
    | bes2.\fz ~
    | bes4 c bes
    | es2.\fz ~
    | es4( d) r
    | R2.*4
    | bes,2.\fz ~

    % 80
    | bes
    | bes2.\fz-\> ~
    | bes ~
    | bes-\!
    | bes\fz ~
    | bes2 as4
    | ges( f es)
    | f2.-\> ~
    | f2-\! r4
    | bes2.\fz ~

    % 90
    | bes
    | bes'2.\fz ~
    | bes2 r4
    | bes2 r4
    | bes2 r4
    | bes2 r4
    | f,2. ~
    | f ~
    | f2\fermata\fz r4
    | bes2.\p ~

    % 100
    | bes2 r4
    | R2.*2
    | f'4 r r
    | bes r r
    | f, r r
    | bes r
  }
}
