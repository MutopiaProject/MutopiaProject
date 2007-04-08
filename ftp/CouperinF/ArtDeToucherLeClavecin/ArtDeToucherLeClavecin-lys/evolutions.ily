\markup \column {
  \chapter \justify {
    Évolutions ou petits exercices pour former les mains
  }
  \paragraphe {
    Tous ces progrès se doivent exercer sur tous les tons et demi-tons du
    clavier.
  }
}

\score {
  { \clef soprano
    \time 4/4
    \partial 8*7
    c'16( d'16 e'8 ) d'16 ( e'16 
    f'8 ) e'16 ( f'16 g'8 ) f'16 ( g'16  |
    a'8 ) g'16 ( a'16 b'8 ) a'16 ( b'16 
    c''8 ) b'16 ( c''16 d''8 ) c''16 ( d''16  |
    e''8 ) d''16 ( e''16 f''8 ) e''16 ( f''16 
    g''8 ) c''8 b'8.^\mordent ( a'32 b'32 ) |
    <e' g' c''>8 s8 \bar "||"
  }
  \header { petitTitre = "Progrès de tierces en montant" }
  \layout { indent = 0\mm }
}

\score {
  { \clef treble
    \time 4/4
    \partial 8*7
    c''16 ( b'16 a'8 ) bes'16 ( a'16  
    g'8 ) a'16 ( g'16 f'8 ) g'16 ( f'16
    e'8 ) f'16 ( e'16 d'8 ) e'16 ( d'16  
    c'8 ) d'16 ( c'16 b8 ) c'16 ( b16
    a8. ) f'16 e'8. ^\mordent d'16  
    e'4 ( d'8. ^\mordent c'32 d'32
    c'8 )  s8 \bar "||"
  }
  \header { petitTitre = "En descendant" }
  \layout { indent = 0\mm }
}

\score {
  { \clef soprano
    \time 4/4
    \partial 16*15
    c'16( d' e' f') d'( e' f' g') e'( f' g' a') f'( g' a' 
    b') g'( a' b' c'') b' a' g' a' g' f' e' d'8.( c'32 d') 
    c'4 \bar "||"
  }
  \header { petitTitre = "Progrès de quartes en montant" }
  \layout { indent = 0\mm }
}

\score {
  { \clef soprano
    \time 4/4
    \partial 16*15
    c'''16  ( b''16 a''16 g''16 ) bes''16 ( a''16 g''16  
    f''16 ) a''16 ( g''16 f''16 e''16 ) g''16 ( f''16 e''16    
    d''16 ) f''16 ( e''16 d''16 c''16 ) e''16 ( d''16 c''16  
    b'16 ) g'16 c''16 d''16 b'8. (^\mordent a'32 b'32 )
    <e' g' c''>16 s8 \bar "||"
  }
  \header { petitTitre = "En descendant" }
  \layout { indent = 0\mm }
}

\score {
  { \clef soprano
    \time 3/4
    \partial 4*2
    c'8 d' e' f'  
    g'4 d'8 e' f' g'  
    a'4 f'8 g' a' b'  
    c''4( b'4) -\mordent c''  
    g'4 e''8 d'' c'' b'  
    a'4 d''8 c'' b' a'  
    g'4 c''8 b' a' g'  
    f' e' d'4.(-\mordent c'16 d' ) 
    c'4 s8 \bar "||"
  }
  \header { petitTitre = "Progrès de quintes en montant et en descendant" }
  \layout { indent = 0\mm }
}

\score {
  { \clef treble
    \time 3/4
    \partial 8*5
    g'8[ a' b' c'' d''] 
    e'' a' b' c'' d'' e'' 
    f'' b' c'' d'' e'' f'' 
    g''4 ( f''4 )-\mordent e''4 
    d''8-\mordent g'' f'' e'' d'' c'' 
    b'-\mordent f'' e'' d'' c'' b' 
    a' e'' d'' c'' b' a' 
    g' c'' b'4.-\mordent ( a'16 b' ) 
    c''8 s8 \bar "||"
  }
  \header { petitTitre = "Progrès de sixième" }
  \layout { indent = 0\mm }
}

\score {
  { \clef treble
    \time 2/2
    \partial 4*3
    g''8[ f''8 e''8 d''8 c''8 b'8] 
    a'4 f''8[ e''8 d''8 c''8 b'8 a'8] 
    g'4 e''8[ d''8 c''8 b'8 a'8 g'8] 
    f'8 g'8 e'8 f'8 d'4. g'8 
    e'4-\mordent g'8[ a'8 b'8 c''8 d''8 e''8] 
    f''4 a'8[ b'8 c''8 d''8 e''8 f''8] 
    g''4 c''8[ d''8 e''8 f''8 g''8 a''8] 
    b''4 c'''4 d''4.-\mordent c''8 
    <e' g' c''>4 s8 \bar "||"
  }
  \header { petitTitre = "Progrès de septièmes" }
  \layout { indent = 0\mm }
}

\score {
  { \clef treble
    \time 2/2
    \partial 8*7
    g'8[_1 a'_2 b'_3 c''_4 d''_3 e''_4 f''_3 ]
    g''_4 g''[_5 f''_4 e''_3 d''_2 c''_3 b'_2 a'_3]
    g'_2 s8 \bar "||"
  }
  \header { petitTitre = "Progrès d'octaves" }
  \layout { indent = 0\mm }
}

\score {
  { \key a \major
    \clef treble
    \time 2/2
    \partial 8*7
    a'8 [_1 b'8 _2 cis''8 _3 d''8 _4 e''8 _2 fis''8 _3 gis''8 _4 ]
    a''8 _5 a''8 [_5 gis''8 _4 fis''8 _3 e''8 _2 d''8 _4 cis''8 _3 b'8 _2]
    a'8 _1 s8  \bar "||" 
  }
  \header { petitTitre = "Manière plus commode pour les tons dièsés et bémolisés." }
  \layout { indent = 0\mm }
}

\score {
  \new Staff <<
    \clef treble
    \time 3/4
    \new Voice {
      \voiceOne
      g''8 ^4 a''8^4 g''8^4 a''8^4 g''8^4 a''8^4 
      f''8^4 g''8^4 f''8^4 g''8^4 f''8^4 g''8^4 
      e''2^3-\mordent r8 g''8^4 
      f''8^4 e''8^4 d''4.^3-\mordent c''8^2 
      c''2. \bar "||" 
    }
    \new Voice {
      \voiceTwo
      e''8_2 f''8_2 e''8_2 f''8_2 e''8_2 f''8_2
      d''8_2 e''8_2 d''8_2 e''8_2 d''8_2 e''8_2
      c''2_2 r8 e''8_2
      d''8_2 c''8_2 b'4._2 c''8_2
      < e' g' >2.
    }
  >>
  \header { petitTitre = "Manière ancienne de faire plusieurs tierces de suite" }
  \layout { indent = 0\mm }
}

\markup \paragraphe {
  Cette manière ancienne n'aurait nulle liaison. Celle qui suit est la 
  vraie.
}

\score {
  \new Staff <<
    \clef treble
    \time 3/4
    \new Voice {
      \voiceOne
      g''8 ^4 a''8^5 g''8^4 a''8^5 g''8^4 a''8^5 
      f''8^4 g''8^5 f''8^4 g''8^5 f''8^4 g''8^5 
      e''2^3-\mordent r8 g''8^5 
      f''8^4 e''8^3 d''4.^3-\mordent c''8^2 
      c''2. \bar "||" 
    }
    \new Voice {
      \voiceTwo
      e''8_2 f''8_3 e''8_2 f''8_3 e''8_2 f''8_3
      d''8_2 e''8_3 d''8_2 e''8_3 d''8_2 e''8_3
      c''2_1 r8 e''8_3
      d''8_2 c''8_1 b'4._2 c''8
      < e' g' >2.
    }
  >>
  \header { petitTitre = "Façon moderne pour couler ces mêmes tierces." }
  \layout { indent = 0\mm }
}

\markup \paragraphe {
  Je suis persuadé que peu de personnes dans Paris restent entêtés des
  vieilles maximes, Paris étant le centre du bon, mais comme il n'a
  encore paru jusqu'ici aucune méthode de clavecin, et que celle-ci
  pourra passer ailleurs, j'ai cru n'y devoir rien omettre.
}
\markup \fill-line {
  \null
  \center-align {
    \italic \line {
      Autre progrès de tierces coulées.
    }
    \score {
      \new Staff <<
        \clef treble
        \time 2/2
        \new Voice {
          \voiceOne \partial 8*7
          g''8[^5 f''8^4 e''8^3 d''8^4 c''8^3 b'8^4 a'8^3]
          g'8^4 g'8^4[ a'8^5 b'8^4 c''8^5 d''8^4 e''8^5 f''8^4]
          g''8^5 
          \bar "||" 
        }
        \new Voice {
          \voiceTwo \partial 8*7
          e''8_3[ d''8_2 c''8_3 b'8_2 a'8_3 g'8_2 f'8_3]
          e'8_2 e'8_2[ f'8_3 g'8_2 a'8_3 b'8_2 c''8_3 d''8_2]
          e''8_3 
        }
      >>
      \layout { ragged-right = ##t }
    }
  }
  \null
}

\markup \paragraphe {
  À propos de ces tierces coulées à la moderne, je dirai en deux mots,
  qu'un jour en les faisant exercer à une jeune personne, j'essayais de
  lui faire battre deux tremblements à la fois, de la même main. L'heureux
  naturel, les excellentes mains, et la grande habitude qu'elle en avait
  acquise, l'avaient fait arriver au point de les batre très
  également. J'ai perdu cette jeune personne de vue. En vérité, si l'on
  pouvait gagner cette pratique, cela donnerait un grand ornement au
  jeu. J'en ai entendu faire, cependant depuis, à un homme d'ailleurs
  fort habile, mais, soit qu'il s'y fut pris trop tard, son exemple ne
  m'a point encouragé à me donner la torture pour arriver à les faire
  comme je souhaiterais qu'ils fussent faits. Je m'en tiens, simplement,
  à exhorter les jeunes gens à s'y prendre de bonne heure. Si cet usage
  s'introduisait, cela ne causerait nul inconvénient pour la plupart des
  pièces qui sont déjà composées, puisqu'il ne serait question (dans
  certains endroits) que d'augmenter un tremblement à la tierce de celui
  qui serait marqué naturellement.
}

\markup \paragraphe {
  \bold { Progrès de tremblements enchaînés, } par la manière de changer de
  doigt sur une même note.
}

\score {
  { \clef soprano
    \time 2/2
    e'4.(_2^\mordent f'8 f'4._3^\mordent e'16 f' | \noPageBreak
    g'4)(_\markup { \finger "4-3" } g'8.^\mordent f'32 g' 
    a'4)(_\markup { \finger "4-3" } a'8.^\mordent g'32 a'32 | \noPageBreak
    b'4)(_\markup { \finger "4-3" } b'8.^\mordent a'32 b'32 
    c''4^4) ~ c''8.^5 b'16 | \noPageBreak
    a'8 g'8 f'8 e'8 d'8 e'8 c'8 d'8 | \noPageBreak
    b4.*13/12(^\mordent c'32 b32 c'32 c'4.^\mordent b16 c'16 | \noPageBreak
    d'4.*13/12)(^\markup { \finger "4-2" } e'32 d'32 e'32 
    e'4.*13/12^\mordent d'32 e'32 f'32 | \noPageBreak
    e'2)(^\markup { \finger "3-4" } d'4.)^\mordent c'16 d'16 | \noPageBreak
    c'1 \bar "||"
  }
  \header {
    petitTitre = "Exemple"
  }
  \layout { indent = 0\mm }
}

\markup \paragraphe {
  Ces deux chiffres, sur une même note, marquent le changement d'un
  doigt à un autre, avec la différence que le chiffre le plus
  considérable étant posé le premier, indique qu'il faut monter en
  suite, et que le moindre, au contraire, sert à descendre.
}

\markup \fill-line {
  \null
  \score {
    { \clef soprano
      \time 3/4
      s4 c''^\markup { \finger "4-3" } s4 \bar "|." 
      s4 g'^\markup { \finger "3-4" } s4 \bar "|." 
    }
    \layout {
      ragged-right = ##t
      indent = 0\mm
      \context { \Staff \remove Time_signature_engraver }
    }
  }
  \null
}
\score {
  { \clef bass
    \time 6/8
    \partial 8*5
    d8[( e] f)[ e( f]  | \noPageBreak
    g) f( g a) g a  | \noPageBreak
    d d'( c' bes) c'( bes  | \noPageBreak
    a) bes( a g) c' c  | \noPageBreak
    f a( bes c') a( g  | \noPageBreak
    fis) a( bes c')( bes^\prall a)  | \noPageBreak
    bes g( a bes) g( f8  | \noPageBreak
    e8) g( a bes)( a^\prall g)  | \noPageBreak
    a f( e8 d) bes( a  | \noPageBreak
    g) e( d cis) a g | \noPageBreak
    f(^\prall e8 d) g( f e8)  | \noPageBreak
    a( g f) b( a g)  | \noPageBreak
    cis'( b a) d'( e' f')  | \noPageBreak
    g( a bes) c'( d' e')  | \noPageBreak
    f( g a) bes( c' d')  | \noPageBreak
    e8( f g) a( b cis')  | \noPageBreak
    d( e8 f) g,( a, bes,)  | \noPageBreak
    e,( f, g,) a, g, a,  | \noPageBreak
    d, \bar "||" 
  }
  \header { petitTitre = "Progrès de tierces pour la main gauche" }
  \layout { indent = 0\mm }
}

\score {
  { \clef bass
    \time 4/4
    \partial 4*3
    r16 d( e f g) e( f g a) a,( b, cis   | \noPageBreak
    d8)-\mordent d,8 r16 d'( c' bes a) g( a bes c'8) c8  | \noPageBreak 
    f8-\mordent f,8 r16 g( a bes c') f( e d c) c'( bes a  | \noPageBreak 
    g) c( bes, a, g,) g( f e d) d'( c' bes a) d( c bes,   | \noPageBreak
    a,8) a,8 r16 a,( b, cis d) b,( cis d e) cis( d e   | \noPageBreak
    f) d( e f g) e( f g a) f( g a b) g( a b   | \noPageBreak
    cis') a( b cis' d') f( g a bes8) g8-\turn a8 a,8  | \noPageBreak
    d4-\mordent \bar "||"
  }
  \header { petitTitre = "Progrès de quartes" }
  \layout { indent = 0\mm }
}

\score {
  { \clef bass
    \time 6/8
    \partial 8*5
    d16([ c bes, a,] g,8)[ c16( bes, a, g,]  | \noPageBreak
    f,8) f16([ e d c] b,8)[ g16( f e d ] | \noPageBreak
    cis8)-\prall a16([ g f e] d)[ cis16 bes,8.(-\prall a,32 bes,) ] | \noPageBreak
    a,8 c'16([ bes a g] fis8)-\prall d16([ c bes, a,]  | \noPageBreak
    g,8) bes16([ a g f] e8)-\prall c16([ bes, a, g,]  | \noPageBreak
    f,8) a16([ g f e] d8) bes,16([ a, g, f,]  | \noPageBreak
    e,8) g16([ f e d] cis8)-\prall a,16([ g, f, e,]  | \noPageBreak
    d,8) d16([ e f g] a)[ g a b cis' a]  | \noPageBreak
    d'8.[ f16 g8] bes[ a a,]  | \noPageBreak
    d4-\prall \bar "||"
  }
  \header { petitTitre = "Progrès de quintes" }
  \layout { indent = 0\mm }
}
\score {
  { \clef bass
    \time 4/4
    r8 r16 a( g[ f e d] cis8)-\prall r16 a,( b,[ cis d e ] | \noPageBreak
    f8[)-\mordent d16] d'( c'[ bes a g]) fis8.[-\prall d16] e[( fis g a]  | \noPageBreak
    bes8[)-\mordent g16] c'( bes[ a g f] e8.[)-\prall f16]( e[ d cis bes,]  | \noPageBreak
    a,)_\markup \italic "bateries" c f a, bes, d g bes, c e a c d f bes d  | \noPageBreak
    e g c' e f c a, f bes, d g bes, c8 c,  | \noPageBreak
    f, r16 g( f[ e d c] b,8)-\prall r16 a( g[ f e d]  | \noPageBreak
    cis) e a e c a c a b, d g d bes, g bes, g  | \noPageBreak
    a, d f a, g, cis e g, f, a, d a, fis, a, d fis,  | \noPageBreak
    g, bes, e b, gis, e gis, e a, cis f16 a, b, d g b,  | \noPageBreak
    cis8.[-\prall d16] cis[ b, a, g,] f,8[ g,]-\turn a,[ a,8]  | \noPageBreak
    d,4 \bar "||"
  }
  \header { petitTitre = "Progrès de sixièmes" }
  \layout { indent = 0\mm }
}

\markup \paragraphe {
  Je dirai deux mots ci-après à l'occasion des batteries.
}

\score {
  { \clef bass
    \time 4/4
    \partial 8*7
    d'16[( c'] bes[ a g f] e8[) c'16( bes a g f e]  | \noPageBreak
    d8[) bes16( a] g[ f e d] 
    cis8[)-\prall_" "_" "_\markup \italic "cadence imparfaite" d a a,]  | \noPageBreak
    bes,[ bes16( a g f e d] c8[) c'16( bes a g f e]  | \noPageBreak
    d8[) d'16( c' bes a g f]_\markup \italic "autre cadence" e8[) f c' c]  | \noPageBreak
    d8.[( e16 f g a bes] c'8[) f' c' c16_\markup \italic "autre" bes,]  | \noPageBreak
    a, f, f e d c bes, a, g,8[ g16 f e d cis b,]  | \noPageBreak
    a,8[ a16 g f e d c] bes,8[ g] a,[ f]  | \noPageBreak
    g,[ e f, d] e,16 g, f, g, a,8[ a,8]  | \noPageBreak
    d,4 \bar "||"
  }
  \header { petitTitre = "Progrès de septième" }
  \layout { indent = 0\mm }
}

\markup \paragraphe {
  Il est bon que ceux qui instruisent les jeunes gens leurs insinuent
  insensiblement la connaissance des intervalles, des modes, de leurs
  cadences, tant parfaites, qu'imparfaites, des accords, des
  suppositions. Cela leur forme une espèce de mémoire locale qui les
  rend plus sûrs, et qui sert à les remettre, avec connaissance,
  lorsqu'ils ont manqué.
}
\markup \paragraphe {
  À propos des batteries, ou arpègements dont j'ai promis de parler 
  ci-devant, et dont l'origine vient des sonades, mon avis serait qu'on
  se bornât un peu sur la quantité qu'on en joue sur le clavecin.
  Cet instrument a ses propriétés, comme le violon a les siennes.
  Si le clavecin n'enfle point ses sons, si les battements redoublés
  sur une même note ne lui conviennent pas extrêmement, il a
  d'autres avantages qui sont la précision, la netteté, le brillant,
  et l'étendue. On devrait donc prendre un milieu qui serait de
  pratiquer quelques fois les légèretés des sonades, et d'éviter les
  morceaux lents qui si rencontrent dont les basses ne sont point
  faites pour y joindre les parties lutées, et syncopées qui
  conviennent au clavecin. Mais les Français dévorent volontiers
  les nouveautés aux dépens du vrai qu'ils croient saisir mieux que
  les autres nations. Après tout, il faut demeurer d'accord que les
  pièces faites exprès pour le clavecin y conviendront toujours
  mieux que les autres. Cependant dans les légèretés des sonades,
  il y a des morceaux que réussissent assez bien sur cet instrument.
  Ce sont ceux où le dessus et la basse travaillent toujours.
  Comme, par exemple, l'allemande ci-après.
}

\markup \paragraphe {
  Ce qui détermine les personnes médiocrement habiles à s'attacher
  aux sonades, c'est qu'il y entre peu d'agréments, surtout dans
  les batteries. Mais qu'en arrive-t'il, ces mêmes personnes se
  rendent incapables pour toujours de pouvoir jouer les vraies
  pièces de clavecin. Au contraire, celles qui ont bien joué des
  pièces d'abord, exécutent les sonades parfaitement.
}

\markup \paragraphe {
  Avant que de passer aux remarques sur la manières de bien doigter,
  relatives aux endroits équivoques de mon premier Livre de
  clavecin, j'ai cru qu'il ne serait pas inutile de dire un mot
  sur les mouvements français, et la différence qu'ils ont avec ceux
  des italiens.
}

\markup \paragraphe {
  Il y a selon moi dans notre façon d'écrire la musique, des
  défauts qui se rapportent à la manière d'écrire notre langue.
  C'est que nous écrivons différemment de ce que nous exécutons,
  ce qui fait que les étrangers jouent notre musique moins bien
  que nous ne faisons la leur. Au contraire les Italiens écrivent
  leur musique dans les vraies valeurs qu'ils l'ont pensée. Par
  exemple, nous pointons plusieurs croches de suites par
  degrés-conjoints, et cependant nous les marquons égales.
  Notre usage nous a asservis, et nous continuons.
}
\markup \bold \line { Examinons donc d'où vient cette contrariété : }

\markup \paragraphe {
  Je trouve que nous confondons la mesure avec ce qu'on nomme
  cadence, ou mouvement. Mesure définit la quantité, et l'égalité
  des temps, et cadence, est proprement l'esprit, et l'âme qu'il
  y faut joindre. Les sonades des Italiens ne sont point
  susceptibles de cette cadence. Mais, tous nos airs de violons,
  nos pièces de clavecin, de violes, etc, désignent, et semblent
  vouloir exprimer quelque sentiment. Ainsi, n'ayant point
  imaginés de signes, ou caractères pour communiquer nos idées
  particulières, nous tâchons d'y remédier en marquant au
  commencement de nos pièces par quelques mots, comme
  \italic Tendrement, \italic Vivement, etc, à peu près ce que
  nous voudrions faire entendre. Je souhaite que quelqu'un se
  donne la peine de nous traduire, pour l'utilité des étrangers,
  et puisse leur procurer les moyens de juger de l'excellence de
  notre musique instrumentale.
}

\markup \paragraphe {
  A l'égard des pièces tendres qui se jouent sur le clavecin,
  il est bon de ne les pas jouer tout à fait aussi lentement
  qu'on le ferait sur d'autres instruments, à cause du peu de
  durée de ses sons, la cadences et le goût pouvant s'y
  conserver indépendamment du plus ou du moins de lenteur.
}

\markup \paragraphe {
  Je finis ce discours par donner un conseil à ceux qui veulent
  réussir parfaitement dans les pièces : c'est d'être deux ou
  trois ans avant que d'apprendre l'accompagnement. Les raisons que
  j'en donne sont fondées. 1° Les basses continues qui ont un
  progrès chantant, devant
  être exécutées de la main gauche avec autant de propreté
  que les pièces, il est nécessaire d'en savoir fort bien
  jouer. 2° La main droite dans l'accompagnement n'étant occupée qu'à
  faire des accords, est toujours dans une extension capable
  de la rendre très raide ; ainsi les pièces qu'on aura
  apprises d'abord serviront à prévenir cet inconvénient.
}
\markup \paragraphe {
  Enfin la vivacité avec laquelle on se porte à exécuter la
  musique à l'ouverture du Livre entraînant avec soi une façon de
  toucher ferme, et souvent pesante, le jeu court risque de s'en
  ressentir, à moins qu'on n'exerce les pièces alternativement
  avec l'accompagnement.
}
\markup \paragraphe {
  S'il était question d'opter entre l'accompagnement, et les
  pièces pour porter l'un ou l'autre à la perfection, je sens
  que l'amour propre me ferait préférer les pièces à
  l'accompagnement. Je conviens que rien n'est plus amusant pour
  soi-même, et ne nous lie plus avec les autres que d'être bon
  accompagnateur ; mais, quelle injustice ! c'est le dernier
  qu'on loue dans les concerts. L'accompagnement du clavecin
  dans ces occasions, n'est considéré que comme les fondements
  d'un édifice qui cependant soutiennent tout, et dont on ne parle
  presque jamais ; au lieu de quelqu'un qui excelle dans les pièces
  jouit seul de l'attention, et des applaudissements de ses
  auditeurs.
}
\markup \paragraphe {
  Il faut surtout se rendre très délicat en claviers, et avoir 
  toujours un instrument bien emplumé. Je comprends cependant
  qu'il y a des gens à qui cela peut être indifférent, parcequ'ils
  jouent également mal sur quelque instrument que ce soit.
}

\include "allemande.ly"
