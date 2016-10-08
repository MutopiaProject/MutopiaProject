  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %      No. 03: Unter deinem Schirmen      %
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % the lyrics

      sopranoIThreeLyrics = \lyricmode {
        <<
          {
            \set stanza = "2. "
            Un -- ter dei -- nem Schir -- men
            bin ich vor den Stür -- men
            al -- ler Fein -- de frei.
          }
          \new Lyrics \lyricsto "sopranoIThreeVoice" {
            Lass den Sa -- tan wit -- tern,
            lass den Feind er -- bit -- tern,
            mir steht Je -- sus bei.
          }
        >>
        Ob es itzt gleich kracht und blitzt,
        ob gleich Sünd und Höl -- le schrek -- ken:
        Je -- sus will mich dec -- ken.
      }

      sopranoIIThreeLyrics = \lyricmode {
        <<
          {
            \set stanza = "2. "
            Un -- ter dei -- nem Schir -- men
            bin ich vor den Stür -- men
            al -- ler Fein -- de frei.
          }
          \new Lyrics \lyricsto "sopranoIIThreeVoice" {
            Lass den Sa -- tan wit -- tern,
            lass den Feind er -- bit -- tern,
            mir steht Je -- sus bei.
          }
        >>
        Ob es itzt gleich kracht, gleich kracht und blitzt,
        ob gleich Sünd und Höl -- le schrek -- ken:
        Je -- sus will mich dec -- ken.
      }


      altoThreeLyrics = \lyricmode {
        <<
          {
            \set stanza = "2. "
            Un -- ter dei -- nem Schir -- men
            bin ich vor den Stür -- men
            al -- ler Fein -- de frei.
          }
          \new Lyrics \lyricsto "alto" {
            Lass den Sa -- tan wit -- tern,
            lass den Feind er -- bit -- tern,
            mir steht Je -- sus bei.
          }
        >>
        Ob es itzt gleich kracht und blitzt, kracht und blitzt,
        ob gleich Sünd und Höl -- le schrek -- ken:
        Je -- sus will mich dec -- ken.
      }

      tenoreThreeLyrics = \lyricmode {
        <<
          {
            \set stanza = "2. "
            Un -- ter dei -- nem Schir -- men
            bin ich vor den Stür -- men
            al -- ler Fein -- de frei.
          }
          \new Lyrics \lyricsto "tenoreThreeVoice" {
            Lass den Sa -- tan wit -- tern,
            lass den Feind er -- bit -- tern,
            mir steht Je -- sus bei.
          }
        >>
        Ob __ es itzt gleich kracht und blitzt, kracht und blitzt
        ob gleich Sünd und Höl -- le schrek -- ken:
        Je -- sus will mich dec -- ken.
      }

      bassoThreeLyrics = \lyricmode {
        <<
          {
            \set stanza = "2. "
            Un -- ter dei -- nem Schir -- men
            bin __ ich vor den Stür -- men
            al -- ler Fein -- de frei.
          }
          \new Lyrics \lyricsto "bassoThreeVoice" {
            Lass __ den Sa -- tan wit -- tern,
            lass __ den Feind er -- bit -- tern,
            mir steht Je -- sus bei.
          }
        >>
        Ob __ es itzt gleich kracht und blitzt,
        ob __ gleich Sünd und Höl -- le schrek -- ken:
        Je -- sus will mich dec -- ken.
      }

    % the music
    
      globalThree = {
        \key g \major
        \time 4/4
        \autoBeamOff
        \set Score.currentBarNumber = #104
      }
      
      artThree = {
        \bar ""
        \repeat volta 2 {
          s1 |
          s2 s2 \fermata |
          s1 s2 s2 \fermata |
          s1 s1 |
        }
        s1 |
        s2 s2 \fermata |
        s1 |
        s1 |
        s2 \fermata s2 |
        s1
        s1\fermata |
        \bar "||"
      }

      sopranoIThreeTune = \relative c'' {
        b4 b a g |
        fis2 e |
        b'4 cis d b |
        e2 dis | \oBreak
        e8([ fis]) g4 fis4. e8 |
        e1 |

        % end of volta
        \set Score.currentBarNumber = #116
        \once \override Score.BarNumber.break-visibility = ##(#t #t #t)
        \alignNotesAfterVolta 
        b4 b c b |
        a4. g8 g2 | \oBreak
        b4 cis d b |
        e d8([ cis]) cis2 |
        b2 g8([ a]) b4 |
        a g8([ fis]) fis2 |
        e1 | \oPageBreak
      }

      sopIThreeFullVoice = <<
        \artThree
        \sopranoIThreeTune
      >>

      sopranoIIThreeTune = \relative c'' {
        g4 g fis e |
        e( dis) e2 |
        d!4 a' a b |
        b( a) b2 |
        e4 e e dis |
        e1

        % end of volta
        \alignNotesAfterVolta 
        g,4 a g8 d! g4 |
        r8 g g fis g2 |
        g8([ fis]) e4 a g |
        g8([ fis]) b4 b( ais) |
        b2 b8([ a!]) g4 |
        fis e e( dis) |
        e1
      }

      sopIIThreeFullVoice = <<
        \artThree
        \sopranoIIThreeTune
      >>

      altoThreeTune = \relative c' {
        e4 b c b8([ e]) |
        c4( b) b2 |
        g'8([ fis]) e4 d d8([ g]) |
        g8([ a16 g fis8 e]) fis2 |
        g8([ a]) b([ c]) fis,([ g]) a4 |
        g1 |

        % end of volta
        \alignNotesAfterVolta 
        e4 fis e8 a d, g |
        e4 d8 d d2 |
        d4 a' d, d8([ g]) |
        e([ cis]) d4 g( fis) |
        fis2 g8([ fis]) e([ d!]) |
        c4 b8([ e]) c4( b) |
        b1 |

      }

      altThreeFullVoice = <<
        \artThree
        \altoThreeTune
      >>

      tenoreThreeTune = \relative c {
        e8([ fis]) g([ e]) a([ fis]) g8([ e)] |
        a8([ g fis a]) g2 |
        g4 a a g |
        c8([ b] c4) fis,2 |
        b8([ a]) g8([ e]) b4 b |
        b1 |

        % end of volta
        \alignNotesAfterVolta 
        b8( e4) dis8 e a, b g |
        c4 c8 a b2 |
        g4 a a b |
        ais8([ cis]) fis8([ b,]) e8([ d) cis( e]) |
        dis2 e4 e, |
        fis g8([ e]) a8([ g) fis( a]) |
        gis1 |
      }

      tenThreeFullVoice=  <<
        \artThree
        \tenoreThreeTune
      >>

      bassoThreeTune = \relative c {
        e2~ e8 dis e c |
        a4( b) e2 |
        g2~ g8 fis g e |
        c2 b |
        g'8([ c]) b([ a]) b4 b, |
        e1 |

        % end of volta
        \alignNotesAfterVolta 
        e2~ e8 fis g e |
        c([ a]) d4 g,2 |
        g'2~ g8 fis g e |
        cis8([ ais']) b([ g]) e4( fis) |
        b,2 e2~ |
        e8 dis e c a4( b) |
        e1 |
      }

      basThreeFullVoice  = <<
        \artThree
        \bassoThreeTune
      >>

