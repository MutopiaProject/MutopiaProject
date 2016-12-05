  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %   No. 11: Weicht, ihr Trauergeister    %
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  
  % the lyrics
  
    sopranoElevenLyrics = \lyricmode {
      <<
        {
          \set stanza = "6."
          Weicht, ihr Trau -- er -- gei -- ster,
          denn mein Freu -- den mei -- ster,
          Je -- sus, tritt her -- ein.
        }
        \new Lyrics {
          \set associatedVoice = "sopranoElevenVoice"
          De -- nen, die Gott lie -- ben,
          muss auch ihr Be -- trü -- ben
          lau -- ter Zuk -- ker sein.
        }
      >>
      Duld ich schon hier Spott und Hohn,
      den -- noch bleibst du auch im Lei -- de,
      Je -- su, mei -- ne Freu -- de
    }

    altoElevenLyrics = \lyricmode {
      <<
        {
          \set stanza = "6."
          Weicht, ihr Trau -- er -- gei -- ster,
          denn mein Freu -- den mei -- ster,
          Je -- sus, tritt her -- ein.
        }
        \new Lyrics {
          \set associatedVoice = "altoElevenVoice"
          De -- nen, die Gott lie -- ben,
          muss auch ihr Be -- trü -- ben
          lau -- ter Zuk -- ker sein.
        }
      >>
      Duld ich schon hier Spott und Hohn,
      den -- noch bleibst du auch im Lei -- de,
      Je -- su, mei -- ne Freu -- de
    }

    tenoreElevenLyrics = \lyricmode {
      <<
        {
          \set stanza = "6."
          Weicht, ihr Trau -- er -- gei -- ster,
          denn mein Freu -- den mei -- ster,
          Je -- sus, tritt her -- ein.
        }
        \new Lyrics {
          \set associatedVoice = "tenoreElevenVoice"
          De -- nen, die Gott lie -- ben,
          muss auch ihr Be -- trü -- ben
          lau -- ter Zuk -- ker sein.
        }
      >>
      Duld ich schon hier Spott und Hohn,
      den -- noch bleibst du auch im Lei -- de,
      Je -- su, mei -- ne Freu -- de
    }

    bassoElevenLyrics = \lyricmode {
      <<
        {
          \set stanza = "6."
          Weicht, ihr Trau -- er -- gei -- ster,
          denn mein Freu -- den mei -- ster,
          Je -- sus, tritt her -- ein.
        }
        \new Lyrics {
          \set associatedVoice = "bassoElevenVoice"
          De -- nen, die Gott lie -- ben,
          muss auch ihr Be -- trü -- ben
          lau -- ter Zuk -- ker sein.
        }
      >>
      Duld ich schon hier Spott und Hohn,
      den -- noch bleibst du auch im Lei -- de,
      Je -- su, mei -- ne Freu -- de
    }

  % the music
    globalEleven = {
      \key g \major
      \time 4/4
      \autoBeamOff
      % count the bar numbers from the beginning of the motet
      \set Score.currentBarNumber = #447
    }
                    
  % the articulation (differs from artOne only in the finishing bar)
    artEleven = {
      \repeat volta 2 {
        \bar ""
        s1 |
        s2 s2\fermata |
        s1 |
        s2 s2\fermata\break |
        s1 |
        s2 s2 |
      }
     \set Score.currentBarNumber = #459
     \once \override Score.BarNumber.break-visibility = ##(#t #t #t)
      
      s1 s2 s2\fermata |
      s1\break |
      s1 |
      s2\fermata s2 |
      s1 |
      s1\fermata \bar"|." |
    }

  % the tunes equal No. 1: Jesu, meine Freude

    sopElevenFullVoice = <<
      \artEleven
      \sopranoOneTune
    >>

    altElevenFullVoice = <<
      \artEleven
      \altoOneTune
    >>

    tenElevenFullVoice=  <<
      \artEleven
      \tenoreOneTune
    >>

    basElevenFullVoice  = <<
      \artEleven
      \bassoOneTune
    >>

