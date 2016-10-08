  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %      No 1: Jesu, meine Freude          %
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    globalOne = {
      \key g \major
      \time 4/4
      \autoBeamOff
    }

  % the lyrics definitions
    sopranoOneLyrics = \lyricmode {
      <<
        {
          \set stanza = "1."
          Je -- su, mei -- ne Freu -- de,
          mei -- nes Her -- zens Wei -- de,
          Je -- su, mei -- ne Zier,
        }
        \new Lyrics {
          \set associatedVoice = "sopranoOneVoice"
          ach, wie lang, ach lan -- ge,
          ist dem Her -- zen ban -- ge
          und ver -- langt nach dir!
        }
      >>
      Got -- tes Lamm, mein Bräu -- ti -- gam,
      au -- ßer dir soll mir auf Er -- den
      nichts sonst Lie -- bers wer -- den.
    }

    altoOneLyrics = \lyricmode {
      <<
        {
          \set stanza = "1."
          Je -- su, mei -- ne Freu -- de,
          mei -- nes Her -- zens Wei -- de,
          Je -- su, mei -- ne Zier,
        }
        \new Lyrics {
          \set associatedVoice = "altoOneVoice"
          ach, wie lang, ach lan -- ge,
          ist dem Her -- zen ban -- ge
          und ver -- langt nach dir!
        }
      >>
      Got -- tes Lamm, mein Bräu -- ti -- gam,
      au -- ßer dir soll mir auf Er -- den
      nichts sonst Lie -- bers wer -- den.
    }

    tenoreOneLyrics = \lyricmode {
      <<
        {
          \set stanza = "1."
          Je -- su, mei -- ne Freu -- de,
          mei -- nes Her -- zens Wei -- de,
          Je -- su, mei -- ne Zier,
        }
        \new Lyrics {
          \set associatedVoice = "tenoreOneVoice"
          ach, wie lang, ach lan -- ge,
          ist dem Her -- zen ban -- ge
          und ver -- langt nach dir!
        }
      >>
      Got -- tes Lamm, mein Bräu -- ti -- gam,
      au -- ßer dir soll mir auf Er -- den
      nichts sonst Lie -- bers wer -- den.
    }

    bassoOneLyrics = \lyricmode {
      <<
        {
          \set stanza = "1."
          Je -- su, mei -- ne Freu -- de,
          mei -- nes Her -- zens Wei -- de,
          Je -- su, mei -- ne Zier,
        }
        \new Lyrics {
          \set associatedVoice = "bassoOneVoice"
          ach, wie lang, ach lan -- ge,
          ist dem Her -- zen ban -- ge
          und ver -- langt nach dir!
        }
      >>
      Got -- tes Lamm, mein Bräu -- ti -- gam,
      au -- ßer dir soll mir auf Er -- den
      nichts sonst Lie -- bers wer -- den.
    }

  %the voice for the common articulation
    artOne = {
      \repeat volta 2 {
        s1 |
        s2 s2\fermata |
        s1 |
        s2 s2\fermata\break |
        s1 |
        s2 s2 |
      }
     \set Score.currentBarNumber = #13
     \once \override Score.BarNumber.break-visibility = ##(#t #t #t)
      s1 s2 s2\fermata |
      s1\break |
      s1 |
      s2\fermata s2 |
      s1 |
      s1\fermata \bar"||" |
      \pageBreak
    }

    sopranoOneTune = \relative c''
    {
        b4 b a g |
        fis2 e |
        b'4 cis d b |
        e2 dis | \oBreak
        e8([ fis]) g4 fis4. fis8 |
        e1 |

      % end of volta
      \alignNotesAfterVolta 
      b4 b c b |
      a4. a8 g2 |
      b4 cis d b | \oBreak
      e d8[ cis] cis2 |
      b2 b4 b |
      a g8([ fis]) fis2 |
      e1 | \oPageBreak
    }

    sopOneFullVoice = <<
      \artOne
      \sopranoOneTune
    >>

    altoOneTune = \relative c''
    {
      g4 fis e8([ dis]) e4 |
      e( dis) b2 |
      g'8([ fis]) e4 d! d |
      g8([ a] b4) b2 |
      g8([ a]) b4 b4. a8 |
      g1 |

      % end of volta  
      \alignNotesAfterVolta 
      g4 g a g |
      g fis d2 |
      g4 g a g8([ a]) |
      b4 b b( ais) |
      fis2 g4 fis |
      e e e( dis) |
      b1 |
    }

    altOneFullVoice = <<
      \artOne
      \altoOneTune
    >>


    tenoreOneTune = \relative c'
    {
      e4 b c8([ fis,]) g4 |
      c( b8[ a]) g2 |
      e'8([ d]) cis([ b]) a4 g8([ a]) |
      b4( g') fis2 |
      e4 e e dis |
      b1 |

      % end of volta  
      \alignNotesAfterVolta 
      e4 d d d |
      e d8([ c]) b2 |
      d4 e d d |
      g fis g( fis8[ e]) |
      dis2 e4 fis8([ g]) |
      a([ a,]) b4 c( b8[ a]) |
      gis1 |
    }

    tenOneFullVoice=  <<
      \artOne
      \tenoreOneTune
    >>

    bassoOneTune = \relative c
    {
      e4 d c4. b8 |
      a4( b) e2 |
      e4 a8([ g]) fis4 g8([ fis]) e8([ fis g a]) b2 |
      c4 b8([ a]) b4 b, |
      e1 |

      % end of volta  
      \alignNotesAfterVolta 
      e8([ fis]) g4 fis g |
      c, d g,2 |
      g'4 fis8([ e]) fis4 g8([ fis]) |
      e4 b e( fis) |
      b,2 e4 d |
      c b a( b) |
      e1 |
    }

    basOneFullVoice  = <<
      \artOne
      \bassoOneTune
    >>

