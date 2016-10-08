  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %   No. 04: Denn das Gesetz des Geistes   %
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % the lyrics
      sopranoIFourLyrics = \lyricmode {
        Denn das Ge -- setz des Gei -- stes,
        der da le -- ben -- dig mach -- et
        in Chris -- to Je -- su, in Chris -- to Je -- su,
        hat mich frei ge -- macht,
        hat mich frei ge -- macht
        von dem Ge -- setz, __ von dem Ge -- setz der Sün -- de und des To -- des,
        von dem Ge -- setz der Sün -- de,
        von dem Ge -- setz der Sün -- de und des To -- des.
      }

      sopranoIIFourLyrics = \lyricmode {
        Denn das Ge -- setz des Gei -- stes,
        der da le -- ben -- dig mach -- et
        in Chris -- to Je -- su, in Chris -- to Je -- su,
        hat mich frei __ ge -- macht,
        hat mich frei ge -- macht,
        hat mich frei ge -- macht
        von dem Ge -- setz der Sün -- de und des To -- des,
        von dem Ge -- setz der Sün -- de und des To -- des.
      }

      altoFourLyrics = \lyricmode {
        Denn, denn das Ge -- setz des Gei -- stes,
        der da le -- ben -- dig mach -- et
        in Chris -- to Je -- su,
        hat mich frei ge -- macht,
        hat mich frei ge -- macht,
        hat mich frei __ ge -- macht
        von dem Ge -- setz, von dem Ge -- setz der Sün -- de,
        der Sün -- de und des To -- des,
        von dem Ge -- setz der Sün -- de und des To -- des, und des To -- des.
      }

    % the music
    
      globalFour = {
        \key g \major
        \time 3/4
        \autoBeamOff
        \set Score.currentBarNumber = #123
      }
      
      artFour = {
        \bar ""
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. \fermata \bar"||" |
      }

      sopranoIFourTune = \relative c'' {
        b4 g a |
        b2 c4 |
        d8([ c]) e d c b |
        a8[ g fis a] g([ b]) |
        a4 a8 a a b | \oBreak
        c2.~ |
        c4 b b |
        e( fis) g |
        fis8([ e fis e]) d4 |
        d8 b e4. d8 | \oBreak
        c4 a8 fis b4~ |
        b8 a g4. a8 |
        b4. g8 c4~ |
        c8 e e([ d]) d([ c]) | \oBreak
        b cis dis[ \melisma e dis e] |
        fis2. ~ |
        fis8 \melismaEnd  b, cis[ b] ais[ b] |
        e4\melisma g,8[ fis] g4\melismaEnd |
        fis r r | \oBreak
        r8 b cis dis e fis |
        g[ fis] e4 r8 ais, |
        b ais d cis cis g' |
        fis e d4( cis8[ b]) |
        b2. | \oPageBreak
      }

      sopIFourFullVoice = <<
        \artFour
        \sopranoIFourTune
      >>

      sopranoIIFourTune = \relative c'' {
        g4 e fis |
        g2 a4 |
        b8([ a]) c b a g |
        fis[ e d fis] e8([ g]) |
        fis4 fis8 fis fis g |
        a2.~ |
        a4 g g |
        g( a) b |
        a8([ g a g]) fis4 |
        r g8 e a4~ |
        a8 g fis4 fis'8 d |
        g4. fis8 e4 |
        d8 b e4. d8 |
        c b a8([ fis]) g([ a]) |
        b a c2~ |
        c8 b a([ g]) a([ fis]) |
        g2.~\melisma |
        g8[ fis e dis] e4 \melismaEnd |
        dis r r |
        R2. |
        r8 fis gis ais b cis |
        d cis b ais b4~\melisma |
        b2 ais4 \melismaEnd |
        b2. |
      }

      sopIIFourFullVoice = <<
        \artFour
        \sopranoIIFourTune
      >>

      altoFourTune = \relative c' {
        e2 r4 |
        e d c |
        b2 c4 |
        d2.~ |
        d8[ c] e d c b |
        a[ \melisma e' a g fis e] |
        fis\melismaEnd d g8([ fis]) e d |
        c8[ d c b] a([ g]) |
        d'2 d8([ c]) |
        b g c4. b8 |
        a4 d4. b8 |
        e4. d8 c4 |
        g'4. e8 a4~ |
        a8 g fis d e fis |
        g fis a g fis e |
        dis4 dis4. dis8 |
        e fis e[ d!] cis[ b] |
        ais2 ais4 |
        r8 b cis dis e fis |
        g4. a8 g fis |
        e2.~ |
        e2 e8([ cis]) |
        d e fis2 |
        b2. |
      }

      altFourFullVoice = <<
        \artFour
        \altoFourTune
      >>

