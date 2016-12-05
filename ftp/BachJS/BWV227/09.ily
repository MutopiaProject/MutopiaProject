  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %       No 9: Gute Nacht, o Wesen        %
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  
    % the lyrics
    
      sopINineLyrics = \lyricmode {
        \set stanza = "5."
        Gu -- te Nacht, gu -- te Nacht, gu -- te Nacht,
        gu -- te Nacht, o We -- sen,
        gu -- te Nacht, gu -- te Nacht,
        gu -- te Nacht, __ o We -- sen, 
        das __ die Welt er -- le -- sen,
        gu -- te __ Nacht, das die Welt __ er -- le -- sen,
        mir ge -- fällst __ du nicht,
        mir __ ge -- fällst du nicht.
        Gu -- te Nacht, gu -- te Nacht, 
        gu -- te Nacht, ihr Sün -- den,
        gu -- te Nacht, gu -- te Nacht, gu -- te Nacht, ihr Sün -- den,
        blei -- bet weit da  -- hin -- ten,
        gu -- te Nacht, blei -- bet weit __ da -- hin -- ten,
        blei -- bet weit __ da -- hin -- ten,
        kommt __ nicht mehr, nicht mehr ans Licht!
        Gu -- te Nacht, gu -- te Nacht, 
        du Stolz und Pracht, gu -- te Nacht,
        gu -- te Nacht, gu -- te Nacht,
        du Stolz und Pracht, gu -- te Nacht!
        
        Dir sei ganz, du La -- ster -- le -- ben,
        dir sei ganz, du La -- ster -- le -- ben, gu -- te Nacht,
        dir sei ganz, du La -- ster -- le -- ben,
        gu -- te Nacht, gu -- te Nacht, gu -- te Nacht,
        gu -- te Nacht ge -- ge -- ben!  
      }

      sopIINineLyrics = \lyricmode {
        Gu -- te Nacht, gu -- te Nacht, gu -- te Nacht,
        gu -- te Nacht, __ gu -- te Nacht,
        gu -- te Nacht, gu -- te Nacht,
        gu -- te Nacht, o We -- sen,
        das __ die Welt er -- le -- sen,
        das die Welt __ er -- le -- sen,
        mir ge -- fällst du nicht,
        mir ge -- fällst du nicht,
        mir __ ge -- fällst du nicht,
        
        Gu -- te Nacht, gu -- te Nacht, gu -- te Nacht, __
        gu -- te Nacht, gu -- te Nacht,
        gu -- te Nacht, gu -- te Nacht,
        ihr Sün -- den,
        blei -- bet weit da -- hin -- ten,
        blei -- bet weit __ da -- hin -- ten,
        blei -- bet weit __ da -- hin -- ten,
        kommt nicht mehr ans Licht,
        nicht mehr ans Licht!
        
        Gu -- te Nacht, gu -- te Nacht,
        du Stolz und Pracht, du Stolz und Pracht,
        gu -- te Nacht, __ du Stolz und Pracht
        gu -- te Nacht, du Stolz und Pracht, gu -- te Nacht!
        
        Dir sei ganz, du Las -- ter -- le -- ben
        gu -- te Nacht,
        dir sei ganz, du Las -- ter -- le -- ben
        gu -- te Nacht,
        dir sei ganz, du Las -- ter -- le -- ben
        gu -- te Nacht, gu -- te Nacht, gu -- te Nacht __
        ge -- ge -- ben!
      }

      altNineLyrics = \lyricmode {
        Gu -- te Nacht, o We -- sen,
        das die Welt er -- le -- sen,
        mir ge -- fällst du nicht. __
        Gu -- te Nacht, ihr Sün -- den,
        blei -- bet weit da -- hin -- ten,
        kommt nicht mehr ans Licht! __
        Gu -- te Nacht, du Stolz und Pracht!
        Dir sei ganz, du Las -- ter -- le -- ben
        gu -- te Nacht ge -- ge -- ben. __
      }

      tenNineLyrics = \lyricmode {
        \set stanza = "5."
        Gu -- te Nacht, o We -- sen,
        gu -- te Nacht, o We -- sen,
        gu -- te Nacht, o We -- sen,
        gu -- te Nacht, o __ We -- sen,
        gu -- te Nacht, o We -- sen,
        gu -- te Nacht, o __ We -- sen,
        das die Welt er -- le -- sen,
        das __ die Welt er -- le -- sen,
        mir ge -- fällst __ du nicht, 
        ge -- fällst du nicht,
        ge -- fällst du nicht.
        
        Gu -- te Nacht, ihr Sün -- den,
        gu -- te Nacht, ihr Sün -- den,
        gu -- te Nacht, ihr Sün -- den,
        gu -- te Nacht, ihr Sün -- den,
        gu -- te Nacht, ihr Sün -- den,
        gu -- te Nacht, ihr Sün -- den,
        blei -- bet weit da -- hin -- ten,
        blei -- bet weit da -- hin -- ten,
        blei -- bet weit __ da -- hin -- ten,
        kommt nicht mehr ans Licht!
        
        Gu -- te Nacht, du Stolz und Pracht,
        gu -- te Nacht, du Stolz und Pracht,
        gu -- te Nacht, gu -- te Nacht, 
        du Stolz und Pracht, du Stolz und Pracht,
        gu -- te Nacht, __ du Stolz und Pracht,
        gu -- te Nacht,  du Stolz und Pracht, gu -- te Nacht, 
        gu -- te Nacht! __
        
        Dir sei ganz, du Las -- ter -- le -- ben
        gu -- te Nacht ge -- ge -- ben,
        dir sei ganz, du Las -- ter -- le -- ben
        gu -- te Nacht ge -- ge -- ben,
        du Las -- ter -- le -- ben,
        dir sei ganz, du Las -- ter -- le -- ben
        gu -- te Nacht ge -- ge -- ben.
      }

    % the music
    
      globalNine = {
        \key c \major
        \time 2/4
        \autoBeamOff
        \dynamicUp
        \set Score.currentBarNumber = #300
      }

      artNine = {
        \bar ""
        s2*105 |
        s2\fermata\bar "||"
      }

      sopINineTune = \relative c''
      {
        c4. c8 |
        c([ b]) r4 |
        a4.\p a8 |
        a([ gis]) r4 |
        e'4.\f e8 |
        e([ d]) r4 | \oBreak
        f,4. f8 |
        f e b'4~\melisma |
        b8[ a b cis] |
        d[ e] f4~ |
        f8[ e]\melismaEnd e([ d]) |
        cis([ d]) e4 |
        e8([ d]) r4 | \oBreak
        b8([ c]) d4 |
        d8([ c]) c4~ |
        c8 b b4~ |
        b8 gis a4~ |
        a\melisma gis\melismaEnd |
        a e'~ |
        e8 d c b | \oBreak
        a4.( b16[ c] |
        b4) e, |
        f e8[ d] |
        e c'([ d]) e |
        f2~ |
        f8[ d] g([ f]) |
        e2~\melisma | \oPageBreak
        e8[ f16 g ] f[ e d c] |
        d2~ |
        d8\melismaEnd f e d |
        c[ b]\melisma a4~ |
        a4.\melismaEnd gis8 |
        a4 e'~ |
        e d | \oBreak
        d c |
        b r |
        c4. c8 |
        c([ b]) r4 |
        e4. e8 |
        e([ d]) r4 |
        f,4. f8 | \oBreak
        f e b'4~\melisma |
        b8[ a b cis] |
        d[ e] f4~ |
        f8[ e]\melismaEnd e([ d]) |
        cis([ d]) e4 |
        e8([ d]) r4 |
        b8([ c]) d4 | \oBreak
        d8([ c]) c4~ |
        c8 b b4~ |
        b8 gis a4~ |
        a( gis) |
        a e'4~ |
        e8 d c b |
        a4.\melisma b16[ c] | \oPageBreak
        b4\melismaEnd e,|
        
        f e8[ d] |
        e c'([ d]) e |
        f2~ |
        f8 d g f |
        e2~ |
        e8([ f16 g ] f[ e]) d[ c] | \oBreak
        d2~ |
        d8[ f] e([ d]) |
        c b a4~ |
        a4. gis8 |
        a4 e' |
        e d |
        d8([ cis]) r4 | \oBreak
        
        e4. e8 |
        e([ d]) r4 |
        f,4. f8 |
        f([ e]) r4 |
        r8 gis a b |
        c cis4 cis8 | \oBreak
        d r c!4~ |
        c4. b8 |
        c bes( a16[ g]) a8 |
        g e' f d |
        e c([ d]) b |
        c4 r | \oPageBreak
        R2 |
        r8 b4 cis8 |
        d a d d |
        d8[\melisma c16 b] c8[ b]\melismaEnd |
        b e4 d 8|
        c d c b | \oBreak
        a fis dis8. dis16 |
        e8 e'4 fis8 |
        g d g g |
        g8[\melisma f!16 e] d[ c b a] |
        e'[ d e f] e[ d c d] |
        b[ a b c] b[ a gis fis] | \oBreak
        e[ d c d] e[ g! f! e] |
        d2~ |
        d8\melismaEnd c r4 |
        a'4. a8 |
        a([ gis]) r4 |
        g!4. g8 | \oBreak
        g([ f]) r4 |
        f4. f8 |
        f([ e]) r4 |
        d'4. e8 |
        c4 r8 f8 |
        c4( b) |
        a2 | \oPageBreak
      }

      sopINineFullVoice = <<
        \artNine
        \sopINineTune
      >>

      sopIINineTune = \relative c''
      {
        a4. a8 |
        a([ gis]) r4 |
        c4.\p c8 |
        c([ b]) r4 |
        g!4.\f g8 |
        g([ f]) r4 |
        d4. d8 |
        d2~ |
        d8[ cis] r4 |
        a'4. a8 |
        a([ gis]) r4 |
        g!4. g8 |
        g([ f]) r4 |
        f4. f8 |
        f([ e]) r4 |
        d4. e8 |
        c4 r8 f'8  |
        c4( b) |
        a r |
        R2 |
        r4 e'4~ |
        e8 d c b |
        a gis a b |
        c2~\melisma |
        c8[ a]\melismaEnd d([ c]) |
        b2~\melisma |
        b8[ c16 d] c[ b a gis] |
        a2~ |
        a8\melismaEnd c b a |
        gis4. gis8 |
        a4 a8 g! |
        f([ e]) d4 |
        c g'~ |
        g f |
        e a |
        gis r |
        
        a4. a8 |
        a([ gis]) r4 |
        g!4.\f g8 |
        g([ f]) r4 |
        d4. d8 |
        d2~ |
        d8[ cis] r4 |
        a'4. a8 |
        a([ gis]) r4 |
        g!4. g8 |
        g([ f]) r4 |
        f4. f8 |
        f([ e]) r4 |
        d4. e8 |
        c4 r8 f'8  |
        c4( b) |
        a r |
        R2 |
        r4 e'4~ |
        e8 d c b |
        a gis a b |
        c2~ |
        c8 a d c |
        b2~\melisma |
        b8([ c16 d] c[ b])\melismaEnd a([ gis]) |
        a2~ |
        a8[ c] b([ a]) |
        gis2 |
        a4 a8 g! |
        f([ e]) d4 |
        c g' |
        g f f8([ e]) r4 |
        g4. g8 |
        g([ f]) r4 |
        d4. d8 |
        d gis a b |
        e, e fis gis |
        a a4 g!8 |
        a2~ |
        a8 e' a, g |
        e e([ f]) d |
        e g a f |
        g e([ f]) d |
        e4 r |
        r8 e4 fis8 |
        g d g g |
        g8[\melisma fis16 e] fis8[ gis] |
        a e'4 dis8 |
        e\melismaEnd b g gis |
        a e4 d8 |
        c c' b a |
        g g16[ fis] g8 a |
        d,4 r |
        r8 f!4 gis8 |
        a e a a  |
        a8[\melisma gis16 fis] gis[ a b8~] |
        b[ a16 gis] a[ b c8~] |
        c[ d16 c] b[ a b8~] |
        b a b cis |
        d e f4~ |
        f8[ e]\melismaEnd e([ d]) |
        cis([ d]) e4 |
        e8([ d]) r4 |
        b8([ c!]) d4 |
        d8([ c]) c4~ |
        c8 b b4~ |
        b8 gis a4~ |
        a( gis) |
        a2 |
      }

      sopIINineFullVoice = <<
        \artNine
        \sopIINineTune
      >>


      altNineTune = \relative c'
      {
        R2 | 
        R2 |
        R2 |
        R2 |
        R2 |
        R2 |
        R2 |
        R2 |
        e4 e |
        d c |
        b2 |
        a |
        R |
        R |
        R |
        R |
        R |
        R |
        e'4 e |
        fis gis |
        a2 |
        gis |
        R |
        R |
        R |
        R |
        R |
        R |
        R |
        R |
        a8[ b] c4 |
        b8([ a]) b4 |
        a2~ |
        a |
        R |
        R |
        R |
        R |
        R |
        R |
        R |
        R |
        e4 e |
        d c |
        b2 |
        a |
         R |
        R |
        R |
        R |
        R |
        R |
        e'4 e |
        fis gis |
        a2 |
        gis |
        R |
        R |
        R |
        R |
        R |
        R |
        R |
        R |
        a8([ b]) c4 |
        b8([ a]) b4 |
        a2~ |
        a |
        R |
        R |
        R |
        R |
        R |
        R |
        e4 e |
        f e |
        d8([ c]) d4 |
        c2 |
        R |
        R |
        R |
        R |
        R |
        R |
        e4 fis |
        g e |
        a g |
        fis2 |
        e |
        R |
        R |
        R |
        R |
        R |
        R |
        e4 e |
        d c |
        b2 |
        a~|
        a |
        R |
        R |
        R |  
        R |
        R |
        R |
      }

      altNineFullVoice=  <<
        \artNine
        \altNineTune
      >>

      tenNineTune = \relative c'
      {
        a8 b c d |
        e e, r4 |
        a8\p b c d |
        e e, r4 
        e'8\f d cis a |
        d d, d' c! |
        b([ c]) b([ a]) |
        gis[\melisma e fis gis] |
        a[ g!]\melismaEnd f!([ e]) |
        f([ e]) e([ dis]) |
        e4. e8 |
        a8[\melisma b cis a] |
        d[ c! b a] |
        g[ a b g] |
        c[ b a g] |
        fis\melismaEnd b gis e |
        a([ b]) c([ d]) |
        e[\melisma d e e,] |
        a\melismaEnd b c a |
        d[ b] e[ d] |
        c8[\melisma b c d] |
        e\melismaEnd e, e'4~ |
        e8 d c b |
        a[\melisma g f e] |
        d[ e f d] |
        g[ f e d] |
        c[ c' d e] |
        f[ e d c] |
        b[ c d b] |
        e[ d c b] |
        a\melismaEnd g f e |
        d[\melisma c d e] |
        f\melismaEnd e d cis |
        d([ e]) f([ g]) |
        a b c d e4 r |
        
        a,8 b c d |
        e e, r4 
        e'8 d cis a |
        d d, d' c! |
        b([ c]) b([ a]) |
        gis[\melisma e fis gis] |
        a[ g!]\melismaEnd f!([ e]) |
        f([ e]) e([ dis]) |
        e4. e8 |
        a8[\melisma b cis a] |
        d\melismaEnd c! b a |
        g([ a]) b([ g]) |
        c[\melisma b a g] |
        fis\melismaEnd  b gis e |
        a([ b]) c([ d]) |
        e([\melisma d e e,] |
        a)\melismaEnd b c a |
        d([ b]) e([ d]) |
        c8[\melisma b c d] |
        e\melismaEnd e, e'4~ |
        e8 d c b |
        a g f e |
        d[\melisma e f d] |
        g[ f e d] |
        c[ c' d e] |
        f[ e d c] |
        b[ c d b] |
        e[ d c b] |
        a[g]\melismaEnd f[ e] |
        d([ c]) d([ e]) |
        f([ e]) d([ cis]) |
        d([ e]) f([ g]) |
        a4 r |
        a8([ b]) cis([ a]) |
        d d, d' c! |
        b c([ b]) a |
        gis e e' d |
        c d([ c]) b |
        a g([ f]) e |
        d f a g |
        f e f g |
        a g([ a]) f |
        c2~ |
        c~ |
        c8 e' f d |
        e c([ b]) a |
        g f e a |
        d, d'([ c]) b |
        a g([ a]) b |
        e,2~ |
        e |
        r8 a4 b8 |
        c g c c |
        c[\melisma b16 a b8 cis] |
        d\melismaEnd a d4~ |
        d8 c16[ b] c8 d |
        e e, e' d |
        c e c a |
        fis[\melisma e fis gis] |
        a\melismaEnd g! f! e |
        f([ e]) e([ dis]) |
        e4 e8 e' |
        a,([ b]) cis([ a]) |
        d[\melisma c! b a] |
        g\melismaEnd a b g |
        c b a g |
        fis b gis e |
        a([ b]) c([ d]) |
        e([ d e e,]) |
        a2 |
      }

      tenNineFullVoice  = <<
        \artNine
        \tenNineTune
      >>
