  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %  No. 08: So aber Christus in Euch ist  %
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % the lyrics
    
      altoEightLyrics = \lyricmode {
        So a -- ber Chris -- tus in euch ist,
        so Chris -- tus in __ euch ist,
        so a -- ber Chris -- tus in euch ist,
        so ist der Leib __ zwar tot, __ der Leib zwar tot, __
        so ist der Leib zwar tot
        um der Sün -- de wil -- len,
        so ist der Leib zwar tot
        um der Sün -- de wil -- len;
        der Geist __ a -- ber ist das Le -- ben
        um der Ge -- rech -- tig -- keit wil -- len,
        der Geist __ a -- ber ist das Le -- ben
        um der Ge -- rech -- tig -- keit wil -- len,
        um der Ge -- rech -- tig -- keit wil -- len,
        der Geist __ a -- ber ist das Le -- ben
        um der Ge -- rech -- tig -- keit wil -- len,
        um der Ge -- rech -- tig -- keit wil -- len.
      }

      tenoreEightLyrics = \lyricmode {
        So a -- ber Chris -- tus in euch ist, __
        so Chris -- tus in euch ist,
        so a -- ber Chris -- tus in euch ist,
        so ist der Leib, __ so ist der Leib __ zwar tot, __
        so ist der Leib __ zwar tot, __
        um der Sün -- de wil -- len,
        so ist der Leib zwar tot
        um der Sün -- de wil -- len;
        der Geist __ a -- ber ist das Le -- ben, das Le -- ben,
        der Geist __ a -- ber ist das Le -- ben, das Le -- ben
        um der __ Ge -- rech -- tig -- keit wil -- len,
        der Geist __ a -- ber ist das Le -- ben
        um der Ge -- rech -- tig -- keit wil -- len,
        um der Ge -- rech -- tig -- keit wil -- len,
      }

      bassoEightLyrics = \lyricmode {
        So a -- ber Chris -- tus in euch ist,
        so Chris -- tus in __ euch ist,
        so Chris -- tus in __ euch ist,
        so ist der Leib zwar tot, __ der Leib zwar tot, __
        so ist der Leib __ zwar tot __
        um der Sün -- de wil -- len,
        so ist der Leib zwar tot __
        um der Sün -- de wil -- len;
        der Geist __ a -- ber ist das Le -- ben
        um der Ge -- rech -- tig -- keit wil -- len,
        um der __ Ge -- rech -- tig -- keit wil -- len,
        um der Ge -- rech -- tig -- keit wil -- len,

        der Geist __ a -- ber ist das Le -- ben, das Le -- ben,
        der Geist __ ist das Le -- ben
        um der Ge -- rech -- tig -- keit wil -- len.
      }

    % the music
    
      globalEight = {
        \key c \major
        \time 12/8
        \autoBeamOff
        \set Score.currentBarNumber = #277
      }

      artEight = {
        \bar ""
        \tempo "Adante"
        s1. |
        s1. |
        s1. |
        s1. |
        s1. |
        s1. |
        s1. |
        s1. |
        s1. |
        s1. |
        s1. |
        s1. |
        s1. |
        s1. |
        s1. |
        s1. |
        s1. |
        s1. |
        s1. |
        s1. |
        s1. |
        s1. |
        \override Score.RehearsalMark.break-visibility = #begin-of-line-invisible
        s1. \mark \markup { \musicglyph #"scripts.ufermata" }
        \bar"||"
      }

      altoEightTune = \relative c'' {
        r8 r g e4 f8 g([ a]) b c([ b]) c |
        b4 b8 c([ b]) a g4.~ g4 b,8 | \oBreak
        c4 b8 c4 d8 e([ f]) d e([ g]) fis8 |
        g4 d8 g4 a8 bes4.~ bes8[ a] g |
        fis4.~ fis4 a8 gis4 a8 b!4.~ | \oBreak
        b4 e,8 a4 b8 c4.~ c8[ b] a |
        g4.~ g8 a8 g f4.~ f8([ g]) f |
        e4.~ e8 fis g a[ c] bes c4 es,8 | \oBreak
        es4( d8) r a' c bes([ a]) g fis4( g8) |
        g4 r8 r4. r2. | \oBreak
        r8 r g c16([ d c bes a g] f8) bes a g([ c]) b |
        a16[\melisma g a bes g a] bes[ a b c b a] g[ f g a f g] a[ g a b a g] | \oPageBreak
        f[ e f g e f] g4.~ g16[ f g a f g] a4.~ |
        a8 \melismaEnd g f e([ f]) g f a16[ g] f[ e] f8 d d | \oBreak
        e16[\melisma d e f d e] fis[ e fis g e fis] g4.~ g16[ a g f e d] |
        c8\melismaEnd f e d([ g]) f e16[\melisma d e f g a] b[ a b c a b] | \oBreak
        c8\melismaEnd c, c f([ e]) d g4.~ g8 a g |
        f d e f([ g]) a bes4.~ bes8 c bes | \oBreak
        a b! c f,4.~ f8 d e f([ d]) e |
        f d e f([ a]) g g f e d4. | \oBreak
        c4 r8 r4. r8 r a' g([ f]) e |
        f16[\melisma g f e d f] e4.~ e8\melismaEnd a f d4. |
        e r r2. | \oPageBreak
      }

      altEightFullVoice = <<
        \artEight
        \altoEightTune
      >>

      tenoreEightTune = \relative c' {
        r8 r e c4 d8 e([ f]) d e([ g]) fis |
        g4.~ g4 f!8 e([ d]) c b([ c]) d |
        g,4 f8 e4 f8 g([ a]) b c([ b]) c |
        b4 r8 r r d cis4 d8 e4.~ |
        e4 a,8 d4 e8 f4.~ f8([ e]) d |
        c4.~ c4 e8 dis4 e8 fis4.~ |
        fis4 b,8 e4.~ e8 d! c b4 g8 |
        c4.~ c8 a bes c4 d8 es([ d]) c |
        c bes a d4.~ d8[ c] bes a4( g8) |
        g4 d'8 g16([ a  g f e d] c8) f e d([ g]) f |
        e16[\melisma d e f e d] c[ bes c d bes c] d[ c d e c d] e[ d e f d e] |
        f[ e f g e f] g[ f g a g f] e[ d e f d e] f[ e f g f e] |
        d4.~ d16[ cis d e cis d] e4.~ e16[ d e f d e] |
        f8\melismaEnd e d d4( cis8) d4 a8 d16[\melisma e d c! b a] |
        g8\melismaEnd  c b a[ d] c b16[\melisma a b c d b] e[ f e d c b] |
        a[ g a b g a ] b[ a b c a b] c[ b c d e b] d8\melismaEnd g, g |
        a16[\melisma g a b g a] b[ a b c a b] c[ b c d bes c] a8\melismaEnd b! cis |
        d4.~ d8[ e] f e16[\melisma d e f g e] c!4.~ |
        c8\melismaEnd d e f a, a d b c d([ b]) c |
        d b c d([ c]) b c b c b4. |
        c4 e8 d([ c]) b c16[\melisma d c b a c] b[ a b d cis e] |
        d4.~ d8[ c! b] c\melismaEnd e c a4.\mordent |
        gis r r2. |
      }

      tenEightFullVoice = <<
        \artEight
        \tenoreEightTune
      >>

      bassoEightTune = \relative c {
        c4. c'~ c4 b8 a4 d,8 |
        g4 g,8 a4 b8 c([ d]) e f([ e]) f |
        e([ f]) g c,4.~ c4 b8 a4 d8 |
        g,4 r8 r r f' e4 d8 cis4 cis8 ||
        d4.~ d4 c'8 b4( a8) gis4. |
        a4.~ a4 g!8 fis4 e8 dis4 dis8 |
        e4( d!8) cis4 a8 d([ e]) f! g a b |
        c4 bes8 a4 g8 fis2.~ |
        fis4 r8 r fis d g4 c,8 d4. |
        g,4 r8 r r  g' a16[\melisma g a b g a] b[ a b c a b] |
        c8\melismaEnd c bes a([ g]) f bes16([\melisma a] g4) c16[ b] a4 |
        d8\melismaEnd d, d' bes([ g ]) bes c c, c' a f a |
        bes4.~ bes8[ g] e cis4.~ \melisma cis16[ b! cis d b cis] |
        d8\melismaEnd bes' g a4( a,8) d4 c!8 b!4 g8 |
        c b c d4. g,4 r8 r4. |
        r2. r8 r c g'16[\melisma a g f e d] |
        c8\melismaEnd f e d([ g]) f e16[ \melisma d e f d e] f[ e f g e f] |
        d[ c d e c d] bes[ a bes c a bes] g8\melismaEnd g' f e16[\melisma d e f d e] |
        f[ e f g e f] d8\melismaEnd d' c b16[\melisma a b c a b] g[ f g a g a] |
        g16[ f g a g a] g[ f g a f g] e8\melismaEnd d c g'4( g,8) |
        c4 c'8 b([ a]) gis a2.~\melisma  |
        a8[ d16 c b a] gis[ a gis fis gis e] a8\melismaEnd c a f4.\mordent |
        e4. r r2. |
      }

      basEightFullVoice = <<
        \artEight
        \bassoEightTune
      >>