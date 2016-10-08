  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %     No. 07: Weg mit allen Schätzen     %
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

  % the lyrics
  
    sopranoSevenLyrics = \lyricmode {
      <<
        {
          \set stanza = "4."
          Weg mit al -- len Schät -- zen!
          Du bist mein Er -- göt -- zen,
          Je -- su, mei -- ne Lust!
        }
        \new Lyrics {
          \set associatedVoice = "sopranoSevenVoice"
          Weg ihr eit -- len Eh -- ren,
          ich mag euch nicht hö -- ren,
          bleibt mir un -- be -- wusst!
        }
      >>
      E -- lend, Not, Kreuz, Schmach und Tod
      soll mich, ob ich viel muss lei -- den,
      nicht von Je -- su schei -- den.
    }

    altoSevenLyrics = \lyricmode {
      <<
        {
          \set stanza = "4."
          Weg, weg mit al -- len Schät -- zen,
          mit al -- len Schät -- zen!
          Du, du bist mein Er -- göt -- zen,
          Je -- su, mei -- ne Lust, mei -- ne Lust!
        }
        \new Lyrics {
          \set associatedVoice = "altoSevenVoice"
          Weg, weg ihr eit -- len Eh -- ren,
          ihr eit -- len Eh -- ren,
          ich, ich mag euch nicht hö -- ren,
          bleibt mir un -- be -- wusst, un -- be -- wusst!
        }
      >>
      E -- lend, Not, Kreuz, Schmach und Tod,
      Kreuz, Schmach und Tod
      soll mich, ob __ ich viel muss lei -- den,
      nicht, nicht von Je -- su schei -- den.
    }

    tenoreSevenLyrics = \lyricmode {
      <<
        {
          \set stanza = "4."
          Weg, weg, weg, weg mit al -- len Schät -- zen, mit al -- len Schät -- zen!
          Du, du bist mein Er -- göt -- zen,
          Je -- su, mei -- ne Lust!
        }
        \new Lyrics {
          \set associatedVoice = "tenoreSevenVoice"
          Weg, weg, weg, weg ihr eit -- len Eh -- ren, ihr eit -- len Eh -- ren,
          ich, ich mag euch nicht hö -- ren,
          bleibt mir un -- be -- wusst!
        }
      >>
      E -- lend, Not, Kreuz, Schmach und Tod, Schmach und Tod
      soll mich, ob ich viel muss lei -- den,
      nicht, nicht von Je -- su schei -- den,
      von Je -- su schei -- den.
    }

    bassoevenLyrics = \lyricmode {
      <<
        {
          \set stanza = "4."
          Weg, weg, weg, weg mit al -- len Schät -- zen!
          Du, du bist mein Er -- göt -- zen,
          Je -- su, Je -- su, mei -- ne Lust, mei -- ne Lust!
        }
        \new Lyrics {
          \set associatedVoice = "bassoevenVoice"
          Weg, weg, weg, weg ihr eit -- len Eh -- ren,
          ich, ich mag euch nicht hö -- ren,
          bleibt mir un -- be -- wusst, un -- be -- wusst!
        }
      >>
      E -- lend, Not, Kreuz, Schmach und Tod
      soll mich, ob ich viel muss lei -- den,
      nicht, nicht, nicht, nicht von Je -- su schei -- den.
    }

  % the music
  
    globalSeven = {
      \key g \major
      \time 4/4
      \autoBeamOff
      \set Score.currentBarNumber = #258
    }

    artSeven = {
      \bar ""
      \repeat volta 2 {
        s1 |
        s1 |
        s1 |
        s1 |
        s1 |
        s1 |
      }
     \set Score.currentBarNumber = #270
     \once \override Score.BarNumber.break-visibility = ##(#t #t #t)
      s1 |
      s1 |
      s1 |
      s1 |
      s1 |
      s1 |
      s1\bar"||" |
    }

    sopranoSevenTune = \relative c''
    {
      b4 b a g |
      fis2 e\fermata |
      b'4 cis d b | \oBreak
      e2 dis \fermata |
      e8[ fis] g4 fis4. fis8 |
      e1 |

      % end of volta
      \alignNotesAfterVolta 
      b4 b c b | \oBreak
      a4 a g2 \fermata |
      b4 cis d b |
      e d cis2 | \oBreak
      b2\fermata b4 b |
      a g fis2 |
      e1\fermata | \oPageBreak
    }

    sopSevenFullVoice = <<
      \artSeven
      \sopranoSevenTune
    >>

    altoSevenTune = \relative c''
    {
      \repeat volta 2 {
      r8 g b g g( fis4) e8 |
      e8[\melisma dis16 cis] dis4\melismaEnd e8 dis e fis |
      g16[ fis] g8 r e a4. g16[ fis] |
      g8 a16[ b] a4\trill b r8 c\melisma |
      b([ a])\melismaEnd g([ b]) c([ a]) fis4 |
      b8 gis[ e] a gis2
      }
      \alignNotesAfterVolta 
      g!8([ a]) a([ g]) g([ a]) a([ g]) |
      g4 fis g8 d e fis |
      g d g4 r8 a4\melisma g16[ fis] |
      e8\melismaEnd g fis b b4( ais) |
      b8 fis b a! g2~\melisma |
      g8 fis4\melismaEnd e8 e[\melisma d!16 cis] d4~ |
      d8[ e16 d] c![ b c8]\melismaEnd b2\fermata |
    }

    altSevenFullVoice = <<
      \artSeven
      \altoSevenTune
    >>

    tenoreSevenTune = \relative c'
    {
      \repeat volta 2 {
      r8 b e b e dis e g, |
      c[\melisma b16 a] b8 a\melismaEnd g a g fis |
      e e r4 r8 fis d' a |
      b a16[ g] e'[ dis e8] fis4 r |
      r8 dis\melisma e4.\melismaEnd e8 d4~ |
      d c16[ b c8] b2
    }
      \alignNotesAfterVolta 
      e8([ fis]) fis([ e]) e([ d]) d([ e]) |
      e4 d8([ c]) c([ b]) c a |
      g b e a,4 g16[ fis] d'4~|
      d8 cis d[\melisma e16 fis] g8[ cis, fis e]\melismaEnd |
      dis4 r8 b e e16[ dis] e4~ |
      e8[ dis] e[ g,] c([ a]) fis b |
      b([ gis]) e a4\melisma gis8\melismaEnd gis4\fermata |
    }

    tenSevenFullVoice=  <<
      \artSeven
      \tenoreSevenTune
    >>

    bassoevenTune = \relative c
    {
      \repeat volta 2 {
        r8 e g e c' r r b |
        a fis b[ b,] e4 r |
        r8 e a g fis d g4~\melisma |
        g8[ fis16 e] c'4\melismaEnd b8 c[ b] a |
        g([ fis]) e([ g]) a([ fis]) b([ a]) |
        gis e([ a]) a, e'2
      }
      \alignNotesAfterVolta 
      e8([ dis]) dis([ e]) e([ fis]) g!([ e]) |
      c[ cis] d!4 g,2 \fermata |
      r8 g'4( fis16[ e] fis8) d g fis |
      gis([ ais]) b([ g]) e([ eis] fis4) |
      b,2 r8 e! g e |
      c' r r b a([ fis]) b([ a]) |
      gis[ e a a,] e'2 \fermata |
    }

    bassoevenFullVoice  = <<
      \artSeven
      \bassoevenTune
    >>

