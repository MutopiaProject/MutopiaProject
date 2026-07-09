uptoFine = \relative c' {
  \clef bass
  b8. c32 ( b ) g8 a
  | b8. c32 ( b) g8 a
  | b4 g | e fis | g a | b c8 b
  | fis4 r
  | b8. c32 ( b ) g8 a | b8. c32 ( b ) g8 a
  | b4 g | e fis | g2
  | c, | d | \bentKnee g,8 [ g' g, ]	 r

}
uptoSegno = \relative c' {
  d,2 d | d | d8 [ d e fis ] | g4 a
  | b c8 b | b [ a a g ] | g4 fis
  | d8 [ fis a fis ]
  | d [ fis d fis ] | d [ fis d fis] | e [ a e a ]
  | e [ a e a ]
  | cis, [ a' cis, a' ]
  | cis, [ a' cis, a' ]
  | d, [ fis a fis ]
  | d4 fis
  | g2
  | e | fis
  | g8 a g fis
  \tuplet 3/2 4 {
    g8 b a g fis e
  }
  | d4 cis
  \tenorClef
  \hideTuplets
  \tuplet 3/2 4 {
    d8 fis a d a fis | g a e g a e
    | d fis a d a fis
    | g a e g a e
    | d fis a d cis d
    | e d e fis e fis
    | g fis e d cis b
    | a gis a b a g
    | fis d' cis b a g
  }
  | fis4 e\trill
  | d4 r
  \clef bass
  | e8 [ cis e cis ]
  | d4 r
  | e8 [ cis e cis ]
  | d4 fis,
  | g a | b2 | cis2 | d4 fis | g a
  | d,8 [ cis d e] | fis[ e fis g] | a[ gis a b] | c[ b c a]
}



uptoEnd = \relative c' {
  e,8 [ fis g a ]| b [ b c b ]
  | gis [e fis gis] | a [a bes a ]
  | fis [ dis e fis ]
  | g [ e b e ] 
  \bentKnee
  | dis [ fis e e, ]
  | b' b'16 c b a g fis
  | e8 [ fis g a ]
  | b [ b c b ]
  | gis [ e fis gis ]
  | a [ a bes a ]
  | fis [ dis e fis ]
  | g [ e fis dis ]
  | e [ g, a b ]
  | e, e e4
  | b''4. c8 | d4 d | d2
  | e8 [ d c b ]
  | a \grace b8 a16 g a8 b
  | c4 c | c2 | d8 [ c b a] | d4. b8
  | c [ a g fis ]
  | d'4. b8 | c [ a g fis ]
  | d' [ b g' fis] | e [ d c b ]
  | b [ a a a ]
  | a4 r
  | a fis | g r
  | a fis | g r
  | c,2 | b4 b
  | d d, | g8 g' g,4
  | e'2 e | dis | e
  | a,4 b  | c c8 b | a4 ais
  | b r
  | dis'2 | e8 [ b b b ]
  | dis2 | e8 [ b b b] | c[ b c a] | a [ g fis e ]
  | a [ g fis e ]
  | b'2 ~ b
  | c4 c8 c | d16  c b c d8 c | b [ d g fis ]
  | e [ d c b ]
  | d [ c c c ]
  | d16 c b c d8 c
  | ais2
  | b4 g,
  | c d | e d | c d | e d | c2
  | c4 cis | d r
  | r2
}

