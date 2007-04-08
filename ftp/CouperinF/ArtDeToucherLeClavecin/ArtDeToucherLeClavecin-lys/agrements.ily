\markup \column {
  \chapter \justify { 
    Petite dissertation, sur la manière de doigter,
    pour parvenir à l'intelligence des agréments qu'on y a trouvé
  }
  \paragraphe {
    J'établis par rapport à cette méthode (séparément de mon usage) qu'on
    commencera par compter le pouce de chaque main, pour le premier
    doigt, en sorte que les chiffres iront ainsi :
  }
}
\markup \fill-line {
  \null
  \line { \hspace #6 main gauche : 5. 4. 3. 2. 1. }
  \null
  \line { \hspace #6 main droite : 1. 2. 3. 4. 5. }
  \null
}

\markup \paragraphe {
  Cette intelligence servira pour les renvois de beaucoup d'endroits de
  mon livre, (équivoque pour les doigts) que je tâche d'éclaircir. On
  connaîtra par la pratique, combien le changement d'un doigt à un
  autre, sur la même note, sera utile, et quelle liaison cela donne au
  jeu.
}
\markup \paragraphe {
  Les sons du clavecin étant décidés, chacun en particulier, et par
  conséquent ne pouvant être enflés, ni diminués, il a paru
  presqu'insoutenable jusqu'à présent, qu'on put donner de l'âme à cet
  instrument ; cependant, par les recherches dont j'ai appuyé le peu de
  naturel que le ciel m'a donné, je vais tâcher de faire comprendre par
  quelles raisons j'ai su acquérir le bonheur de toucher les personnes
  de goût qui m'ont fait l'honneur de m'entendre, et de former des
  élèves qui peut-être, me surpassent.
}
\markup \paragraphe {
  L'impression sensible que je propose, doit son effet à la cessation,
  et à la suspension des sons, faites à propos, et selon les caractères
  qu'exigent les chants des preludes, et des pièces. Ces deux agréments
  par leur opposition, laissent l'oreille indéterminée, en sorte que
  dans les occasions où les instruments à archet enflent leurs sons, la
  suspension de ceux du clavecin semble (par un effet contraire)
  retracer à l'oreille la chose souhaitée.
}
\markup \paragraphe {
  J'ai déjà expliqué, par des valeurs de notes, et par des silences,
  l'aspiration et la suspension, dans la table des agréments qui est à la
  fin de mon premier livre ; mais, j'espère que l'idée que j'en viens de
  donner (quoi que succincte) ne sera pas inutile aux personnes
  susceptibles de sentiments.
}
\markup \paragraphe {
  Ces deux noms (d'aspiration et de suspension) auront, sans doute, paru
  nouveaux ; mais, au moins si quelqu'un se vante d'avoir pratiqué
  l'une, et l'autre, je ne crois pas qu'on me sache mauvais gré, en
  général, d'avoir rompu la glace, en appropriant à ces deux sortes
  d'agréments, des noms qui conviennent à leurs effets. D'ailleurs j'ai
  jugé qu'il était mieux de s'entendre les uns, et les autres dans un
  art aussi estimé, et aussi pratiqué qu'est celui de toucher le
  clavecin.
}
\markup \paragraphe {
  Quant à l'effet sensible de l'aspiration, il faut détacher la note sur
  laquelle elle est posée, moins vivement dans les choses tendres, et
  lentes, que dans celles qui sont légères, et rapides.
}
\markup \paragraphe {
  A l'égard de la suspension, elle n'est guère visitée que dans les
  morceaux tendres, et lents. Le silence qui précède la note sur
  laquelle est est marquée doit être réglé par le goût de la personne
  qui exécute.
}

\markup \section "Agréments qui servent au jeu."

\markup \fill-line {
  \null
  \line {
    \score {
      \new BracketStaffGroup <<
        \new Staff {
          \clef treble
          s4
          c''8^\mordent^\markup \center-align { \italic "Signe" }
          _\markup \center-align { \italic "pincé simple" }
          s4
          \bar "|" 
        }
        \new Staff {
          \clef treble
          s4
          \acciaccatura { c''8[ b'] } 
          c''8_\markup \center-align { \italic "effet" }
          s4
        }
      >>
      \layout { 
        ragged-right = ##t
        indent = 0\mm
        \context { \Staff \remove Time_signature_engraver }
      }
    }
    \hspace #2
    \column {
      \vspace #2
      \override #'(box-padding . 1) \box 
      \override #'(line-width . 40) \justify{
        C'est la valeur des notes qui doit, en général, déterminer la durée
        des pincés doubles, des ports-de-voix doubles, et des
        tremblements.
      }
    }
    \hspace #2
    \score {
      \new BracketStaffGroup <<
        \new Staff {
          \clef treble
          s4
          c''2*1/2^\mordent^\markup \italic \hspace #1
          _\markup \center-align { \italic "pincé double" }
          s2
          \bar "|" 
        }
        \new Staff {
          \clef treble
          s4 
          \acciaccatura { c''8[ b' c'' b' c'' b'] } 
          c''2*1/2_\markup \center-align { \italic "effet" }  
          s2
        }
      >>
      \layout {
        ragged-right = ##t
        indent = 0\mm
        \context { \Staff \remove Time_signature_engraver }
      }
    }
  }
  \null
}
\markup \paragraphe {
  Tout pincé doit être fixé sur la note où il est posé, et pour me
  faire entendre, je me sers du terme de \italic { Point-d'arrêt }, qui est
  marqué ci-dessous par une petite étoile. Ainsi les battements, et la
  note où l'on s'arrête, doivent tous être compris dans la valeur de la
  note essentielle.
}
\markup \fill-line {
  \null
  \center-align {
    \italic Exemple
    \score {
      \new Staff {
        \clef treble
        s4
        \acciaccatura { c''8[
          _\markup \italic "pincé double"
          b' c'' b' c'' b' c'' b'] }
        c''4^\markup \large "*"
        s4 \bar "|." 
      }
      \layout {
        ragged-right = ##t
        indent = 0\mm
        \context { \Staff \remove Time_signature_engraver }
      }
    }
  }
  \null
}

\markup \paragraphe {
  Le pincé double, dans le toucher de l'orgue, et de clavecin, tient
  lieu du martèlement dans les instruments à archet.
}

\markup \fill-line {
  \null
  \line {
    \score {
      \new BracketStaffGroup <<
        \new Staff {
          \clef soprano \slurUp \stemUp
          c'2(^\mordent_\markup { \finger "3-2" }
          _\markup \italic "1er progrès en montant"
          d')(^\mordent_\markup { \finger "3-2" }
          e')(^\mordent_\markup { \finger "3-2" }
          f')(^\mordent_\markup { \finger "3-2" }
          g'1)^\mordent_3
        }
        \new Staff {
          \clef soprano \slurUp \stemUp
          c'2(^\mordent_\markup { \finger "4-3" }
          _\markup \italic "2ème progrès en montant"
          d')(^\mordent_\markup { \finger "4-3" }
          e')(^\mordent_\markup { \finger "4-3" }
          f')(^\mordent_\markup { \finger "4-3" }
          g'1)^\mordent_4
        }
      >>
      \layout {
        ragged-right = ##t
        indent = 0\mm
        \context { \Staff \remove Time_signature_engraver }
      }
    }
    \hspace #2
    \column {
      \vspace #2
      \override #'(box-padding . 1) \box 
      \override #'(line-width . 30) \justify {
        Manière pour lier plusieurs pincés de suite par degrés conjoints, en
        changeant de doigt sur la même note.
      }
    }
    \hspace #2
    \score {
      \new BracketStaffGroup <<
        \new Staff {
          \clef soprano \slurUp \stemUp
          g'2(^\mordent_\markup { \finger "3-4" }
          _\markup \italic "1er progrès en descendant"
          f')(^\mordent_\markup { \finger "3-4" }
          e')(^\mordent_\markup { \finger "3-4" }
          d')(^\mordent_\markup { \finger "3-4" }
          c'1)^\mordent_3
        }
        \new Staff {
          \clef soprano \slurUp \stemUp
          g'2(^\mordent_\markup { \finger "4-5" }
          _\markup \italic "2ème progrès en descendant"
          f')(^\mordent_\markup { \finger "4-5" }
          e')(^\mordent_\markup { \finger "4-5" }
          d')(^\mordent_\markup { \finger "4-5" }
          c'1)^\mordent_3
        }
      >>
      \layout {
        ragged-right = ##t
        indent = 0\mm
        \context { \Staff \remove Time_signature_engraver }
      }
    }
  }
  \null
}

\markup \fill-line {
  \null
  \line {
    \score {
      \new BracketStaffGroup <<
        \new Staff {
          \clef bass \slurDown \stemDown
          g2(_\mordent ^\markup { \finger "2-1" }
          _\markup \italic "1er progrès en descendant"
          f)(_\mordent^\markup { \finger "2-1" }
          e)(_\mordent^\markup { \finger "2-1" }
          d)(_\mordent^\markup { \finger "2-1" }
          c1)_\mordent^2
        }
        \new Staff {
          \clef bass \slurDown \stemDown
          g2(_\mordent^\markup { \finger "3-2" }
          _\markup \italic "2ème progrès en descendant"
          f)(_\mordent^\markup { \finger "3-2" }
          e)(_\mordent^\markup { \finger "3-2" }
          d)(_\mordent^\markup { \finger "3-2" }
          c1)_\mordent^3
        }
      >>
      \layout {
        ragged-right = ##t
        indent = 0\mm
        \context { \Staff \remove Time_signature_engraver }
      }
    }
    \hspace #2
    \column {
      \vspace #2
      \override #'(box-padding . 1) \box 
      \override #'(line-width . 30) \justify{
        Même manière pour les pincés-liés de la main gauche.
      }
    }
    \hspace #2
    \score {
      \new BracketStaffGroup <<
        \new Staff {
          \clef bass \slurDown \stemDown
          c2(_\mordent^\markup { \finger "1-2" }
          _\markup \italic "1er progrès en montant"
          d)(_\mordent^\markup { \finger "1-2" }
          e)(_\mordent^\markup { \finger "1-2" }
          f)(_\mordent^\markup { \finger "1-2" }
          g1)_\mordent^\markup { \finger "1-2" }
        }
        \new Staff {
          \clef bass \slurDown \stemDown
          c2(_\mordent^\markup { \finger "2-3" }
          _\markup \italic "2ème progrès en montant"
          d)(_\mordent^\markup { \finger "2-3" }
          e)(_\mordent^\markup { \finger "2-3" }
          f)(_\mordent^\markup { \finger "2-3" }
          g1)_\mordent^2
        } 
      >>
      \layout {
        ragged-right = ##t
        indent = 0\mm
        \context { \Staff \remove Time_signature_engraver }
      }
    }
  }
  \null
}
\markup \paragraphe {
  Les pincés dièsés et bémolisés que j'ai introduis dans la gravure de
  mes pièces, ne sont pas inutiles, d'autant qu'on pourrait souvent
  faire les uns pour les autres, contre mon intention.
}
\markup \paragraphe {
  Le  port-de-voix étant composé de deux notes de valeur, et d'une
  petite note perdue, j'ai trouvé qu'il y a deux manières de le doigter,
  dont, selon moi l'une est préférable à l'autre.
}
\markup \paragraphe {
  Les notes de valeur des ports-de-voix sont marquées par de petites
  croix dans les exemples ci-après.
}

\markup \fill-line {
  \null
  \line {
    \column {
      "Façons modernes"
      \score {
        <<
          \new Staff {
            \clef treble
            \stemUp
            g'8[_1 _\markup \column { \null "premier progrès" }
                a'_2
                b']_3_"x"
            s8
            \bar "|"
            s8
            \appoggiatura { b'8_2 }
            c''4^\mordent_3_"x"
            s8
            \bar "|"
          }
          \new Staff {
            \clef treble
            \stemUp
            g'8[_2 _\markup \column { \null "second progrès" }
                a'_3
                b']_4_"x"
            s8
            \bar "|"
            s8
            \appoggiatura { b'8_3 }
            c''4^\mordent_4_"x"
            s8
            \bar "|"
          }
        >>
        \layout {
          ragged-right = ##t
          indent = 0\mm
          \context { \Staff \remove Time_signature_engraver }
        }
      }
    }
    \hspace #2
    \column {
      \vspace #2
      \override #'(box-padding . 1) \box 
      \override #'(line-width . 40) \justify {
        Je ne passe la manière ancienne que dans les occasions où la main se
        trouve obligée de faire deux parties différentes. Alors on est trop
        gêné, surtout quand les parties sont éloignées l'une de l'autre.
      }
    }
    \hspace #2
    \column {
      "Façons anciennes"
      \score {
        <<
          \new Staff {
            \clef treble
            \stemUp
            g'8[_1 _\markup \column { \null "troisième progrès" }
                a'_2
                b']_3_"x"
            s8
            \bar "|"
            s8
            \appoggiatura { b'8_3 }
            c''4^\mordent_4_"x"
            s8
            \bar "|"
          }
          \new Staff {
            \clef treble
            \stemUp
            g'8[_2 _\markup \column { \null "quatrième progrès" }
                a'_3
                b']_4_"x"
            s8
            \bar "|"
            s8
            \appoggiatura { b'8_4 }
            c''4^\mordent_5_"x"
            s8
            \bar "|"
          }
        >>
        \layout {
          ragged-right = ##t
          indent = 0\mm
          \context { \Staff \remove Time_signature_engraver }
        }
      }
    }
  }
  \null
}
\markup \bold \line {
  Raisons de préférence pour la façon nouvelle des ports-de-voix
}
\markup \paragraphe {
  Le doigt marqué 3 dans le troisième progrès, et le doigt marqué 4
  dans le quatrième, étant obligés de quitter la dernière croche de
  valeur où il y a une petite croix, pour rebattre la petite note perdue,
  laissent moins de liaison qu'au premier progrès, où le doigt marqué 3
  est plutôt remplacé par le doigt 2, et au second progrès où le doigt
  4 l'est aussi plutôt par le doigt marqué 3.
}
\markup \paragraphe {
  J'ai éprouvé que sans voir les mains de la personne qui joue, je
  distingue si les deux battements en question ont été faits d'un même
  doigt ou de deux doigts différents. Mes élèves le sentent comme moi. De
  là je conclus qu'il y a un vrai, dont je me rapporte à la pluralité de
  sentiments.
}
\markup \paragraphe {
  Il faut que la petite note perdue d'un port-de-voix, ou d'un coulé,
  frappe avec l'harmonie, c'est-à-dire dans le temps qu'on devrait
  toucher la note de valeur qui la suit.
}
\markup \paragraphe {
  Il serait très utile de pouvoir exercer les jeunes personnes à faire
  des tremblements de tous les doigts, mais comme cela dépend en partie
  de la disposition naturelle, et que quelques unes ont plus ou moins de
  liberté, et de force, de certains doigts, il faut laisser ce choix
  aux personnes qui les instruisent.
}
\markup \paragraphe {
  Les tremblements les plus usités de la main droite se font du
  troisième doigt avec le second, et du 4ème avec le 3ème. Ceux de la
  main gauche se font du premier doigt avec le second, et du 2 avec le
  3.
}
\markup \paragraphe {
  Quoi que les tremblements soient marqués égaux, dans la table des
  agréments de mon livre de pièces, ils doivent cependant commencer plus
  lentement qu'ils ne finissent ; mais, cette gradation doit être
  imperceptible.
}
\markup \paragraphe {
  Sur quelque note qu'un tremblement soit marqué, il faut toujours le
  commencer sur le ton, ou sur le demi-ton au dessus.
}
\markup \paragraphe {
  Les tremblements d'une valeur un peu considérable referment trois 
  objets, qui dans l'exécution ne paraissent qu'un même chose.
}
\markup \column {
  \line { \hspace #6 1. L'appui qui se soit former sur la note au dessus 
          de l'essentielle. }
  \line { \hspace #6 2. Les battements. }
  \line { \hspace #6 3. Le point d'arrêt. }
}

\markup \fill-line {
  \null
  \center-align {
    \italic Exemple
    \score {
      \new BracketStaffGroup <<
        \new Staff {
          \time 7/2 
          \clef treble
          s4
          s4.
          d''1*1/2
          _\markup { tremblements \hspace #2 }
          s8 \bar "|" 
        }
        \new Staff {
          \clef treble
          \stemDown
          s4
          e''2(^\markup { \null \raise #0.5 "1" }
          \grace { d''16[ e'' d''_\markup \center-align { \italic "effet" }
                          e''^"2" d'' e''] }
          d''8)^\markup { \null \raise #0.5 "3" }
          s4. 
        } 
      >>
      \layout {
        ragged-right = ##t
        indent = 0\mm
        \context { \Staff \remove Time_signature_engraver }
      }
    }
  }
  \null
}

\markup \paragraphe {
  A l'égard des autres tremblements ils sont arbitraires. Il y en a
  d'appuyés, d'autres si courts qu'ils n'ont ni appui, ni point d'arrêt, on
  en peut faire même d'aspirés.
}
\markup \paragraphe {
  Je renvoie le lecteur aux pages 74 et 75 de mon livre de pièces pour
  le reste des agréments qui servent au jeu ; ils y sont suffisamment
  détaillés, et expliqués.
}
\markup \paragraphe {
  Il m'arrivera peut-être dans les remarques que je ferai dans la suite,
  sur les endroits de mon livre (difficiles à doigter) de reparler des
  agréments, de redire les mêmes choses, et de répéter les mêmes termes
  ; mais, comme ce sera toujours à l'occasion de quelque progrès
  différent, je préférerai l'utilité qui en resultera à la grande
  précision du discours.
}
\markup \paragraphe {
  Avant de passer aux petits exercices qu'il faut pratiquer pour
  parvenir aux pièces, on fera attention, que les tremblements, pincés,
  ports-de-voix, batteries, et passages, doivent d'abord être pratiqués
  très lentement, que les pièces même ne sauraient être apprises avec
  trop de soin. En jouant six pièces (de différents caractères) avec
  régularité, on se met en état d'en jouer beaucoup d'autres ; et au
  contraire, la quantité (aux jeunes personnes surtout) entraîne après
  soi un désordre dont on a beaucoup de peine à les faire revenir.
}
\markup \paragraphe {
  Il serait bon que les parents ou ceux qui ont l'inspection générale sur
  les enfants eussent moins d'impatience, et plus de confiance en celui
  qui enseigne (sûrs d'avoir fait un bon choix en sa personne) et que
  l'habile maître de son côté, ait moins de condescendance.
}
