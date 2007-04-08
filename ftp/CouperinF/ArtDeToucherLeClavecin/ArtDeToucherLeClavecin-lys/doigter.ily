\markup \chapter \justify {
  Endroits, de mon premier livre de pièces de clavecin, difficiles à doigter
}

\markup \column {
  \fill-line { 
    \null
    \italic \line { 
      à La Milordine, page 6, dans les 2ème et 3ème mesures de 
      la 3ème portée.
    }
    \null
  }
  \fill-line { 
    \null
    \score {
      \new PianoStaff <<
        \new Staff {
          \time 12/8
          \key d \minor
          \clef treble
          cis''4-\prall \appoggiatura bes'8 a'8 r8 a''^5 a'_1 
          bes'_2 a''^5 g''^\markup { \finger "4-5"} bes'^2 g''^5 bes'^2 
          a'_1 g''^5 f''^\markup { \finger "4-5"} a'-2 f''-5 a'-2 
        }
        \new Staff {
          \time 12/8
          \key d \minor
          \clef bass
          a4 g8( f4)-\prall d8 g4 f8( e4)-\prall c8 
          f4-\mordent e8( d4) b,8
        }
      >>
      \layout { 
        indent = 0\mm 
        ragged-right = ##t
      }
    }
    \null
  }
}

\markup \column {
  \fill-line { 
    \null
    \italic \line { 
      à la même pièce, dans les 1ère, 2ème et 3ème mesures 
      des 9ème et 10ème portées.
    }
    \null
  }
  \fill-line { 
    \null
    \score {
      \new PianoStaff <<
        \new Staff {
          \time 12/8
          \key d \minor
          \clef treble
          \partial 8*6
          bes''8^5 d''_1 bes''^5 a''^4 c''_1 a''^5 
          << { s s \hideNotes g'' ~ \unHideNotes 
               g'' s \hideNotes f'' ~ \unHideNotes
               f''^5 s \hideNotes ees'' ~ \unHideNotes
               ees''^5 s \hideNotes d'' ~ \unHideNotes
               d''^5 s \hideNotes c'' ~ \unHideNotes
               c''( bes')^3-\prall a'(^2 bes')-\mordent c'' bes' a'4-\prall g'8 } \\
             { bes'^2 d''^3 g''^5 a'_1 g''^5 f''^4 g'_1 f''^5 es''^4 f'_1  es''^5 d''^4 
               e'_1 d''^5 c''^4 fis'_2 r r } 
           >>
        }
        \new Staff {
          \time 12/8
          \key d \minor
          \clef bass
          \partial 8*6
          g4.( fis)(-\prall g) d(_3 es)_2-\mordent bes,(_\markup { \finger "4-3"}
          c)-\mordent d4(-\mordent d,8) g, a, g, f,4-\prall es,8 
        }
      >>
      \layout { 
        indent = 0\mm 
        ragged-right = ##t
      }
    }
    \null
  }
}

\markup \paragraphe {
  Remarquez quelle liaison les changements de doigts donnent au
  jeu. Mais, on me dira qu'il faut plus d'adresse que dans
  l'ancienne manière. J'en conviens.
}

\markup \column {
  \fill-line { 
    \null
    \italic \line { 
      Dans la seconde partie des Silvains, page 9, à la quatrième mesure 
      de la première portée.
    }
    \null
  }
  \fill-line { 
    \null
    \score {
      \new PianoStaff <<
        \new Staff {
          \time 4/4
          \key d \minor
          \clef tenor
          c'8^4( bes^3) a^3( g^2) bes^4( a^3) g^3( fis^2)
        }
        \new Staff {
          \time 4/4
          \key d \minor
          \clef bass
          g4-\mordent bes,( c-\mordent) d
        }
      >>
      \layout { 
        indent = 0\mm 
        ragged-right = ##t
        \context { \Staff \remove Time_signature_engraver }
      }
    }
    \null
  }
}
    
\markup \paragraphe {
  Comme la deuxième et la quatrième de ces quatre notes coulées,
  sont celles qui supposent la vraie harmonie contre la basse, il
  est nécessaire qu'elles soient touchées des mêmes doigts que si
  le chant était simple, et sans notes d'intervalles.
}

\markup \column {
  \fill-line { 
    \null
    \italic \line { 
      Exemple, ci-après
    }
    \null
  }
  \fill-line { 
    \null
    \score {
      {
        \time 4/4
        \key d \minor
        \clef tenor
        bes^3-\prall g^2 a^3 fis^2
      }
      \layout {
        ragged-right = ##t
        \context { \Staff \remove Time_signature_engraver }
      }
    }
    \null
  }
  \paragraphe {
    Ainsi, des endroits à peu près semblables.
  }
}

\markup \column {
  \fill-line { 
    \null
    \italic \line { 
      Arpègements dans la même page 9, aux neuvième et dixième portées.
    }
    \null
  }
  \fill-line { 
    \null
    \score {
      \new PianoStaff <<
        \new Staff {
          \time 4/4
          \key d \minor
          \clef tenor
          g8^5^\fermata d^3 bes,^2 d^3 g^5 d^1 g^3 bes^5
          a^4 fis^2 a^3 d'^5 a^3 fis^2 d^1 a^3
          g^5 d^3 bes,^2 d^3 g^5 d^1 g^3 bes^5
          a^4 fis^2 d^1 a^4
        }
        \new Staff {
          \time 4/4
          \key d \minor
          \clef bass
          g,2-\prall^\fermata ~ < g, g,, >
          d,^\markup { \finger "4-3"} ~ < d, d >-\mordent
          g,-\prall^\markup { \finger "2-1"} ~ < g,, g, >
          d,^\markup { \finger "4-5"}
        }
      >>
      \layout { 
        indent = 0\mm 
        ragged-right = ##t
        \context { \Staff \remove Time_signature_engraver }
      }
    }
    \null
  }
}

\score {
  \new PianoStaff <<
    \new Staff <<
      \new Voice {
        \time 4/4
        \clef soprano
        \voiceOne
        f'16 f'16 ( e'8 ) ~ e'16 e'16 f'16 -\mordent g'16  ~ g'16 g'16 ^5 fis'8 ^4 ~ fis'4 ^5
        s8 b16 d'16 ^3 ~ d'16 d'16 e'16 -\mordent f'16  ~ f'16 f'16 ^5 e'8 ^4 ~ e'4 ^5
        s8 a16 c'16
      }
      \new Voice {
        \voiceTwo
        s8 e'16 cis'16  ~ cis'16 s8. s8 fis'16 c'16 -2 ~ c'16 c'16 d'16 c'16  ~
        c'16 c'16 -3 b8 -2 ~ b16 s8. s8 e'16 bes16  ~ bes16 bes16 c'16 bes16  ~ 
        bes16 bes16 a8 
      }
    >>
    \new Staff <<
      \new Voice {
        \time 4/4
        \clef bass
        \voiceOne
        a,4 a-\mordent d-\mordent^\markup { \finger "2-1"} d,
        g,^\markup { \finger "2-5"} g 
        c-\mordent^\markup { \finger "2-5"} c,
        f,-\mordent^\markup { \finger "2-5"}
      }
      \new Voice {
        \voiceTwo
        a,2 d g, c f,2*1/2
      }
    >>
  >>
  \header { 
    petitTitre = "Aux idées heureuses, page 32, dans les troisièmes, et quatrièmes portées."
  }
  \layout { 
    indent = 0\mm 
    %%ragged-right = ##t
    \context { \Staff \remove Time_signature_engraver }
  }
}

\markup \paragraphe {
  À la grande reprise de cette même pièce, dans les deux dernières
  mesures des portées 5, et 6, et dans les première, et seconde
  mesures des portées, 7 et 8, qui suivents.
}

\score {
  \new PianoStaff <<
    \new Staff <<
      \new Voice {
        \time 4/4
        \clef soprano
        \voiceOne
        \partial 4*3
        r16 e'16 a'16 -\mordent c''16  ~ c''16 c''16 b'8  ~ b'8. e''16  ~
        e''16 d''16 ^5 cis''16 ^4 a'16 ^3 ~ a'16 a'16 d''8  ~ d''8. d''16  ~ d''16 d''16 ^5 c''8 ^4 ~
        c''8. ^5 a'16  ~ a'16 a'16 bes'8  ~ bes'8. g'16  ~ g'16 g'16 a'8  ~
        a'8. g'16 
      }
      \new Voice {
        \voiceTwo
        \partial 4*3
        s16_" "_" "_\markup \italic "Reprise" e'16 a'8  ~ a'8. a'16  ~ a'16 a'16 g'8  ~
        g'4  ~ g'8. f'16  ~ f'16 f'16 e'8  ~ e'8. a'16  ~
        a'16 g'16 fis'8  ~ fis'8. g'16 -\mordent ~ g'16 f'16 e'8  ~ e'8. f'16 -\mordent ~
        f'16 e'16 d'8 
      }
    >>
    \new Staff <<
      \new Voice {
        \time 4/4
        \clef bass
        \voiceOne
        \partial 4*3
        r8 a e4-\mordent^\markup { \finger "2-1"} e,-\mordent^\markup { \finger "5-3"}
        f,_2-\mordent d, r a-\mordent ~
        a g2 f4 ~
        f
      }
      \new Voice {
        \voiceTwo
        \partial 4*3
        a,4 e2
        s a,-\mordent^\markup { \finger "2-5"}
        d4-\mordent_2 g, c_2-\mordent f,
        bes,_2-\mordent
      }
    >>
  >>
  \layout { 
    indent = 0\mm 
    %%ragged-right = ##t
    \context { \Staff \remove Time_signature_engraver }
  }
}

\markup \paragraphe { 
  Il y a encore quelques endroits assez épineux dans cette pièce ;
  mais ceux qui sont chiffrés, précédemment, faciliteront pour les
  autres.
}


\score {
  \new PianoStaff <<
    \new Staff <<
      \new Voice {
        \voiceOne
        \key a \major
        \time 6/4
        \clef treble
        #(override-auto-beam-setting '(end * * 6 4) 3 4)
        s4 fis''2^\markup { \finger "4-5"} ~ 
        fis''8 fis'' e''2^\markup { \finger "4-5"} ~ |
        e''8 e''^5 d''2^\markup { \finger "4-5"} ~ 
        d''8 d''^5 cis''2^\markup { \finger "4-5"} ~ |
        cis''8 cis''^5 b'2^\markup { \finger "4-5"} ~
        b'8 gis' a'^\mordent b' cis'' d'' |
      }
      \new Voice {
        \voiceTwo
        #(override-auto-beam-setting '(end * * 6 4) 3 4)
        cis''8 ^\mordent ^2 g'' fis'' e'' d'' cis'' b'4 r8 d'' cis'' b' |
        s4 r8 cis'' b' a' gis'4 r8 b' a' gis' |
        fis'4 r8 a' gis' fis' e'
      }
    >>
    \new Staff <<
      \new Voice {
        \voiceOne
        \key a \major
        \time 6/4
        \clef bass
        #(override-auto-beam-setting '(end * * 6 4) 3 4)
        a2 a4 gis2 gis4 |
        fis2 fis4 e2 e4 |
        d2 d4 \oneVoice cis8 d' cis' b a gis
      }
      \new Voice {
        \voiceTwo
        a4 a,2 gis4 gis,2 |
        fis4 fis,2 e4 e,2 |
        d4 d,2
      }
    >>
  >>
  \header {
    petitTitre = \markup \paragraphe {
      Dans la Courante, page 60, à la dernière mesure de la 9ème portée,
      et aux deux premières mesures de la onzième portée.
    }
  }
  \layout { 
    indent = 0\mm 
    \context { \Staff \remove Time_signature_engraver }
  }
}

\markup \paragraphe {
  Dans la Courante page 61, il y a un endroit semblable pour le changement
  du 5 au 6ème doigt.
}

\score {
  \new PianoStaff <<
    \new Staff {
      \key a \major
      \time 3/8
      \clef soprano
      s16 fis'16 fis'8.(^\mordent e'32 fis' |
      e'16.) e'32^1 a'4_\mordent^3 ~ |
      a'16.^5 gis'32 fis'16. e'32 d'16. cis'32 |
      b16. b32^1 b'4_\mordent ^3 ~ |
      b'16.^5 a'32 gis'16. fis'32 e'16. d'32 |
      cis'16. cis'32^1 cis''4_\mordent ^\markup { \finger "3-5"} |
    }
    \new Staff {
      \key a \major
      \time 3/8
      \clef bass
      << \new Voice { \voiceOne a16[ cis'] }
         { \voiceTwo a8 b16 a b b, } >> | \oneVoice
      cis8. a,16 b, cis |
      <d d,>8. cis16 b,16. a,32 |
      gis,8.^\mordent fis,16 e,16. b32 |
      e8.^\mordent d16 cis16. b,32 |
      a,8. gis,16 fis,16. e,32

    }
  >>
  \header {
    petitTitre = \markup \line {
      Dans la Villers, page 68, toute la 13ème portée
    }
  }
  \layout { 
    indent = 0\mm 
    \context { \Staff \remove Time_signature_engraver }
  }
}

\markup \paragraphe {
  À l'égard des \italic Ondes qui est la dernière pièce de mon premier Livre,
  et dont l'intelligence des vrais doigts est presque nécessaire dans
  toute la main droite, je n'ai écrit que la plus grande partie du
  dessus, ou, pour mieux dire, du chant.
}

\markup \column {
  \fill-line {
    \null
    \italic \line { \italic {Aux ondes}, page 72, dans le premier couplet. }
    \null
  }
  \fill-line {
    \null
    \score {
      {
        \key a \major
        \time 6/8
        \clef tenor
        \partial 8*5
        \once \override Voice.TextScript #'extra-offset = #'(-10 . -0.5)
        e8^1_\markup \italic { "P" \super "er" " couplet." } gis-\mordent^3 b4.^5 ~
        b8^4( a^3) gis^2 a4.-\mordent^3 ~
        a8^4( gis-\prall^3) fis^2 gis-\mordent^3 a^4 b^5 
      }
      \layout { 
        indent = 0\mm 
        \context { \Staff \remove Time_signature_engraver }
      }
    }
    \null
  }
}

\score {
  \new Staff <<
    \new Voice {
      \key a \major
      \time 6/8
      \clef tenor
      \partial 8*5
      \voiceOne \slurDown
      \once \override Voice.TextScript #'extra-offset = #'(-10 . -0.5)
      a'8^4(_\markup \italic { "2" \super "eme" } gis'-\prall^3) fis'4.^5 ~
      fis'8 gis'^4( fis'^3-\prall) e'4.^5 ~
      e'8 fis'^5 cis'^3 d'4.^5 ~
      d'8 cis'-\prall b cis'4.^5 ~
      cis'8 fis'4 ~ fis'8 e'4 ~
      e'4 d'8 << { cis'4.-\prall( } { s4 \grace { b8[ cis'] } } >>
      b8) d'4^4 ~ d'8 cis'-\prall^3 b^2
      cis'4.-\mordent^\markup { \finger "3-4"} ~ cis'8( b-\prall) a
    }
    \new Voice {
      \partial 8*5
      \voiceTwo \slurUp
      s4 r8 d'8_3( cis'-\prall_2)
      b4._1 r8 cis'8_3( b-\prall_2)
      a4._1 ~ a8_1 b_4 fis_2
      gis8_3 s4 r8 a_3( gis-\prall_2)
      fis4_1 fis8_1 gis4_2 gis8_2
      ais8_3 fis_1 b ais4.
    }
  >>
  \header {
    petitTitre = "Dans le second couplet."
  }
  \layout { 
    indent = 0\mm 
    \context { \Staff \remove Time_signature_engraver }
  }
}

\markup \paragraphe {
  On verra dans le couplet qui suit qu'on peut faire deux notes de suite
  du même doigt par degrés conjoints, quand la première est aspirée, ou
  lorsque la seconde est dans la dernière partie d'un temps.
}

\markup \column {
  \fill-line {
    \null
    \italic \line { Troisième couplet. }
    \null
  }
  \fill-line {
    \null
    \score {
      {
        \key a \major
        \time 6/8
        \clef tenor
        \partial 8*5
        cis'8_2 d'_3_\mordent^\staccatissimo e'4_3 fis'8_4(
        e'^\prall_3) cis'_2[ d'_\mordent_3^\staccatissimo] e'4_3 fis'8_4^\staccatissimo
        e'4_3 fis'8_4^\staccatissimo e'_4( d'_3^\prall) cis'_2
        d'_4( cis'_3) b_2 cis'_4( b_3) a_2
        b_3
      }
      \layout { 
        indent = 0\mm
        ragged-right = ##t
        \context { \Staff \remove Time_signature_engraver }
      }
    }
    \null
  }
}
\score {
  {
    \key a \major
    \time 6/8
    \clef tenor
    \partial 8*5
    cis'16^5 b^4 a^3 gis^5 fis4.^1
    r8 b16^5 a^4 gis^3 fis^2 e4.^1
    r8 a16^5 gis^4 fis^3 e^2 dis^3 e^4 fis^5 e^4 dis^3 cis^2
    b,8^1 r b^5 gis16^3 a^4 b^5 a^4 gis^3 fis^2
    e8^1 r e' cis'16 d' e' d' cis' b
    a8 r r d'16^3 e'^4 fis'^5 e'^4 d'^3 cis'^4
    b^3 a^2 b^3 cis'^4 d'^5 a^4 g^3 fis^2 << { e4^3( } { s8 \grace { d8[ e] } } >>
    d8^2) fis'16[ e' d' cis'] b4.
    r8 e'16 d' cis' b a4.
    r8 d'16^5 cis'^4 b^3 a^2 gis^3 a^4 b^5 a^4 gis^3 fis^2
    e^1 fis^2 gis^3 a^3 b^4 cis'^3 d'^4 cis'^3 b^2 cis'^3 d'^4 e'^5
    cis'^2 d'^3 e'^4 fis'^3 gis'^4 e'^2 a'^5 gis'^4 fis'^3 e'^2 d'^3 cis'^2
    fis'^5 e'^4 d'^3 cis'^2 b^3 a^2 gis^3 fis^2 e^3 d^2 cis^3 b,^2
    a,^1 s2^\markup \italic "rondeau" 
  }
  \header { petitTitre = "Quatrième couplet" }
  \layout { 
    indent = 0\mm
    \context { \Staff \remove Time_signature_engraver }
  }
}

\markup \italic \fill-line {
  \null
  \line { Fin des renvois du premier livre. }
  \null
}
