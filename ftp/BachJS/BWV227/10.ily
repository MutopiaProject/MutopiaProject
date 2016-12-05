  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %        No 10: So nun der Geist         %
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % the lyrics

      sopITenLyrics = \lyricmode {
        So nun der Geist des, der Je -- sum 
        von den To -- ten auf -- er -- wec -- ket hat,
        in euch woh -- net,
        so wird auch der -- sel -- bi -- ge, der Chris -- tum von den
        To -- ten auf -- er -- wec -- ket hat,
        eu -- re sterb -- lich -- e Lei -- ber le -- ben -- dig ma -- chen
        um des wil -- len, dass sein Geist
        in euch woh -- net,
        um des wil -- len, dass sein Geist in euch woh -- net,
        um des wil -- len, dass sein Geist in euch woh -- net,
        sein Geist in euch woh -- net,
        um des wil -- len, dass sein Geist __ in __ euch woh -- net.
      }

      sopIITenLyrics = \lyricmode {
          So nun der Geist des, der Je -- sum 
        von den To -- ten auf -- er -- wec -- ket hat,
        in euch woh -- net,
        so wird auch der -- sel -- bi -- ge, der Chris -- tum von den
        To -- ten auf -- er -- wec -- ket hat,
        eu -- re sterb -- lich -- e Lei -- ber le -- ben -- dig ma -- chen
        um des wil -- len, dass sein Geist, sein Geist
        in euch woh -- net,
        um des wil -- len, dass sein Geist in euch woh -- net,
        dass sein Geist in __ euch woh -- net,
        sein Geist in euch woh -- net,
        um des wil -- len, dass sein Geist in euch woh -- net.
      }

      altTenLyrics = \lyricmode {
        So nun der Geist des, der Je -- sum 
        von den To -- ten auf -- er -- wec -- ket hat,
        in euch woh -- net,
        so wird auch der -- sel -- bi -- ge, der Chris -- tum von den
        To -- ten auf -- er -- wec -- ket hat,
        eu -- re sterb -- lich -- e Lei -- ber le -- ben -- dig ma -- chen
        um __ des wil -- len, um __ des wil -- len, dass sein Geist
        in euch woh -- net,
        dass sein Geist in euch woh -- net,
        dass sein Geist in euch woh -- net,
        sein Geist in euch woh -- net,
        um des wil -- len, dass sein Geist in euch woh -- net.
      }

      tenTenLyrics = \lyricmode {
          So nun der Geist des, der Je -- sum 
        von den To -- ten auf -- er -- wec -- ket hat,
        in euch woh -- net,
        so wird auch der -- sel -- bi -- ge, der Chris -- tum von den
        To -- ten auf -- er -- wec -- ket hat,
        eu -- re sterb -- lich -- e Lei -- ber le -- ben -- dig ma -- chen
        um des wil -- len, dass sein Geist
        in __ euch woh -- net,
        dass sein Geist in euch woh -- net,
        um des wil -- len, dass sein Geist,
        dass sein Geist in euch woh -- net,
        um des wil -- len, dass sein Geist in euch woh -- net.
      }

      basTenLyrics = \lyricmode {
          So nun der Geist des, der Je -- sum 
        von den To -- ten auf -- er -- wec -- ket hat,
        in euch woh -- net,
        so wird auch der -- sel -- bi -- ge, der Chris -- tum von den
        To -- ten auf -- er -- wec -- ket hat,
        eu -- re sterb -- lich -- e Lei -- ber le -- ben -- dig ma -- chen
        um des wil -- len, dass sein Geist in euch woh -- net,
        um des wil -- len, dass sein Geist in __ euch woh -- net,
        um des wil -- len, dass sein Geist in euch woh -- net.
      }

      % the music
      
      globalTen = {
        \key g \major
        \time 3/2
        \autoBeamOff
        \dynamicUp
        % count the bar numbers from the beginning of the motet
        \set Score.currentBarNumber = #406
      }

      artTen = {
        \bar ""
        s1. * 40 |
        s1. \fermata \bar"||" |
      }

    %the voice definitions
      sopITenTune = \relative c''
      {
        %20
        b2 e dis |
        e r r |
        d! r r  |
        c c4 c c c |
        c2. c4 b a |
        g fis g( a) b2~  | \oBreak
        b4 g' e2.( dis4)  |
        dis2 r r |

        b4 d! g2 fis |
        g2. fis8([ e]) d4 e |
        f2. f4 f f | \oBreak
        f2. f4 e d |
        c2. b4 a( b) |
        cis b cis( dis) cis dis |
        e( dis) e g fis2~ | \oPageBreak
        fis4 e d!2( cis) |
        b r r |
        r d f |
        e4 d d( c) c( b) | \oBreak
        b( a8[ gis] a4) e' dis( e) |
        fis2 b, r |
        b4 b b b cis d |
        e ais,2( b) cis4 | \oBreak
        d1.~\melisma |
        d4 b\melismaEnd gis2 a4 b |
        c2 b a4 b |
        g( b) e fis g2\melisma | \oPageBreak
        fis4 e2 dis4 e fis |
        b, cis8[ d!] e1~ |
        e4 fis8[ g] fis4 e d cis |
        b1.~ | \oBreak
        b4\melismaEnd b b b cis dis |
        e1.~\melisma |
        e4 fis8[ g] fis4 e2 dis8[ cis] |
        dis4 e8[ fis] e1~ | \oBreak
        e2\melismaEnd dis r |
        r e2. d!4 |
        c b c a e'8([ dis cis b |
        g' fis e dis] e2) e~ |
        e4 cis dis2.( e4) |
        e1. | \oBreak
      }

      sopITenFullVoice =
      <<
        \artTen
        \sopITenTune
      >>

      sopIITenTune = \relative c''
      {
        g2 b a |
        b r r |
        b r r |
        a a4 a a a |
        a2. a4 b fis
        e2. dis4 e( fis) |
        b, b' b2( a) |
        b r r |
        d!2. b4 c a |
        b2. c4 d a |
        a d, d'2 d |
        d2. d4 e b |
        a2. gis4 a2 |
        e4 d e( fis) e fis |
        g( a) b e e2 |
        d4( cis) b2( ais) |
        b r r |
        r b b |
        b4 e, b'( a) a( gis) |
        e'2. e,4 c'2~ |
        c4 b2( c4) b( a) |
        g\melisma fis e b' ais b |
        cis2\melismaEnd fis, r |
        R1. |
        e4 e e e fis gis |
        a dis,2( e) fis4 |
        g\melisma a b a g fis8[ e] |
        b'2\melismaEnd fis r4 fis |
        g e'2 d4( cis) b |
        ais\melisma e' d cis b cis |
        d1.~ |
        d4\melismaEnd fis, g a g fis |
        e1.~\melisma |
        e4 a8[ b] c4 b a g |
        fis e8[ dis] e[ fis g a] b[ c a b] |
        c[ b] c4\melismaEnd b2 r |
        r b4 a b gis |
        a gis a2 r |
        r r fis |
        g4( a) fis2.( e4) |
        e1. |
      }

      sopIITenFullVoice =
      <<
        \artTen
        \sopIITenTune
      >>

      altTenTune = \relative c'
      {
        e2 e fis |
        e r r |
        e r r |
        a, e'4 e dis e |
        fis2. fis4 fis dis |
        b2. fis'4 e( dis) |
        e b e\melisma g fis e\melismaEnd |
        fis2 r r |
        b2. g4 a d, |
        d2. d4 g g |
        f! a gis( a) gis( a) |
        b2. b4 b gis |
        e2. d4 c2 |
        a'2. a4 a a8 a |
        g4( fis) e b' cis( ais) |
        b( g) fis2.\melisma e4\melismaEnd |
        d2 r r |
        r fis4( gis2) a4 |
        b2 e, e~ |
        e4 e e e fis g |
        a dis,2( e) fis4 |
        g\melisma a g fis e d! |
        cis d8[ e] d4 cis b ais |
        b fis'2 b a4 |
        gis d'2 c b4 |
        a2\melismaEnd g! r4 fis |
        b,2 b4 cis dis( e)
        fis\melisma g a c b a |
        g2\melismaEnd fis g |
        fis4 ais, b2. fis'4 |
        fis1.~ |
        fis4 d e fis g a |
        b1.~\melisma |
        b4 a8[ g] a4 e a2~ |
        a4 g8[ fis] g1~ |
        g4 e\melismaEnd fis2 r |
        r e4 a gis b |
        a f e2 r |
        r r fis! |
        b b( a) |
        gis1.
      }

      altTenFullVoice =
      <<
        \artTen
        \altTenTune
      >>

      tenTenTune = \relative c'
      {
        b2 b c |
        b r r |
        b r r |
        e4 d( c) b a g |
        fis2. fis4 fis b |
        b( dis e) c b a |
        g2 g\melisma a8([ b]) c4\melismaEnd |
        fis,2 r r |
        g2. d'4 fis a |
        g2 d b4 e |
        d2~ d4 c d c |
        b2. b4 b e |
        e( d) c( d) e2 |
        e2. a,4 a a8 a |
        b4( a) g b ais( cis) |
        b( cis) d(\melisma e) fis2\melismaEnd |
        fis r r |
        b,4 b b b b c |
        d gis,2( a) b4 |
        c\melisma d c b a g! |
        fis a g fis g a |
        b cis8[ dis] e4 d! cis b |
        ais fis fis' e d cis |
        b d8[ cis] b4 a! gis fis |
        e gis b e2\melismaEnd e,4 |
        a b2 c4 cis dis |
        e,\melisma fis g a b cis |
        dis e fis a g fis |
        e2\melismaEnd cis r |
        fis,4 fis fis fis gis ais |
        b1.~ |
        b4 a g dis e fis |
        g1.~\melisma |
        g8[ g' fis e] dis4 e c2~ |
        c4 b8[ a] b2. e,4 |
        e'2\melismaEnd b r |
        r b4 c b e |
        e d c2 r |
        r r cis |
        b b1 |
        b1.
      }

      tenTenFullVoice =
      <<
        \artTen
        \tenTenTune
      >>

      basTenTune = \relative c
      {
        e2 g fis |
        g r r |
        gis r r |
        a a4 g! fis e |
        dis2. dis4 dis b |
        e2. fis4 g( fis) |
        g e c1 |
        b2 r r |
        g'2. b4 a c |
        b( a) g( a) b cis |
        d c! b( c) b( a) |
        gis2. gis4 gis e |
        a2. a4 a2 |
        g!4 a g( fis) g fis |
        e( fis) g e ais( fis) |
        b( e,) << { \voiceOne fis1 } \new Voice {\voiceTwo fis2\melisma fis,\melismaEnd }>>\oneVoice |
        b2 r r |
        r b' a |
        gis e e'4 e, |
        a( b) a( g!) fis( e) |
        dis\melisma b b' a g fis |
        e2\melismaEnd e r |
        R1. |
        R1. |
        R1. |
        R1. |
        R1. |
        b4 b b b cis dis |
        e ais,2( b) cis4 |
        d1.~\melisma |
        d4 cis8[ b] cis4 d e fis |
        g1.~ |
        g4 fis8[ e] fis4 g a b |
        c fis,2 g a4 |
        b e,2 fis g4 |
        a g\melismaEnd a2 r |
        r gis4 fis gis e |
        a a, a'2 r |
        r r ais |
        b b,1 |
        e1. |
      }

      basTenFullVoice =
      <<
        \artTen
        \basTenTune
      >>
