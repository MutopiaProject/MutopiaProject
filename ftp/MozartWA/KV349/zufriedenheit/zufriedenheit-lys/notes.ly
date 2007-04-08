\version "1.6.6"

Marks = \notes {
  \context Voice = A
  s2.*5 | s4. s4 \mark #'(music "scripts-segno") s8 |
  s2.*15 |
  s2 
  \property Staff.TextScript \set #'self-alignment-X = #1
  s16
  \mark #'(music "scripts-segno")
  s32._"dal segno" s64 \bar "|."
}

% I like slightly dashed lines better than dotted, at least with dot frequency of 1.6.6
slurDashed = \property Voice. Slur \set #'dashed = #5

Voice = \notes \relative c'' {
  \context Voice = A
  \clef "treble"
  \key g\major
  \time 6/8
  R2.*5 |
  %6
  r4 r8 r4 d8 | \slurDashed [d()b] g [e()c'] a |
  [fis()d'] c b4 b8 |
  [a()d] a \slurSolid \grace {\property Voice.Stem \set #'stroke-style = #() a16(} \slurDashed [)g8()fis] e |
  %10
  d4 r8 r4 d'8 |
  a4 a8 \slurSolid [b()a] b |
  c4 d8 [e()c] a |
  fis4 fis8 \slurDashed [g()a] b |
  a4 r8 r4 a8 |
  %15
  [b()g] b [c()a] c |
  [d()b] d e4 e8 |
  [d()b] g [e()a] c |
  \slurSolid g4.~ [g8()b] a |
  g4 r8 r4 r8 | R2.*2 |
  %22
  r4 r8 r4
}

Lyr = \context Lyrics \lyrics {
  Was4 frag' ich viel nach Geld und Gut, wenn ich zu -- frie -- den bin!
  Gibt Gott mir nur__ ge -- sun -- des Blut, so hab' ich fro -- hen Sinn
  und sing' aus dank -- ba -- rem Ge -- m\"ut mein Mor -- gen- und mein A -- bend -- lied.
}

%{
The other five stanzas:
2. So mancher schwimmt im \"Uberflu\ss,
Hat Haus ond Hof und Geld,
Und ist doch immer voll Verdru\ss
Und freut sich nicht der Welt;
Je mehr er hat, je mehr er will,
Nie schweigen seine Klagen still.

3. Da hei\ss_t die Welt ein Jammertal,
Und deucht mir doch so sch\"on,
Hat Freuden ohne Ma\ss und Zahl,
L\"a\ss_t keinen leer ausgeh'n.
Das K\"aferlein, das V\"ogelein
Darf sich ja auch des Maien freu'n.

4. Und uns zuliebe schm\"ucken ja
Sich Wiese, Berg und Wald,
Und V\"ogel singen fern und nah,
Da\ss alles widerhallt;
Bei Arbeit singt die Lerch' uns zu,
Die Nachtigall bei s\"u\ss_er Ruh.

5. Und wenn die gold'ne Sonn' aufgeht,
Und golden wird die Welt,
Und alles in der Bl\"ute steht,
Und \"Ahren tr\"agt das Feld,
Dann denk' ich: Alle diese Pracht
Hat Gott zu meiner Lust gemacht.

6. Dann preis' ich Gott und lob' ich Gott
Und schweb' in hohen Mut
Und denk': Es ist ein lieber Gott,
Und meint's mit Menchen gut!
Drum will ich immer dankbar sein
Und mich der G\"ute Gottes freu'n.
%}

Mand = \notes \relative c''' {
  \context Voice = A
  \clef "treble"
  \key g\major
  \time 6/8

  <{g8 g b g4} {b,8 b d b4}> r8 |
  <{fis fis a fis4} {a,8 a c a4}> r8 |
  b,16 d g <{g g g} {b, b b}> a, d fis <{fis fis fis} {a, a a}> |
  b,16 d g <{g g g} {b, b b}> a, d fis <{fis fis fis} {a, a a}> |
  g fis e d c b [<e8 c> r <fis a,>] |
  <{g g g g4} {b,8 b b b4}> r8 |
  %7
  b,,8 d g c, e a |
  d, fis a g b d |
  fis, a d e, g cis |
  d,16 fis g a b cis d8 r r |
  c, e a d, e gis |
  %12
  c, e a c, e a |
  c, d fis b, d g |
  d16 fis g a b cis d a g fis e d |
  g8 d g a d, a' |
  b g b c g c |
  %17
  b g d c e a |
  d, g b d, fis a |
  <g16 b,> d' g <{g g g} {b, b b}> a, d fis <{fis fis fis} {a, a a}> |
  b,16 d g <{g g g} {b, b b}> a, d fis <{fis fis fis} {a, a a}> |
  g fis e d c b [<e8 c> r <fis a,>] |
  %22
  <{g g g g4} {b,8 b b b4}>  
}

