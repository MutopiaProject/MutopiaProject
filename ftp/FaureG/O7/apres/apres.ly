\include "paper16.ly"

\version "2.0.1"

\header {
  dedication = "\`a Madame Margu\\'erite Baugnies"
  title = "Apr\`es un R\^eve"
  poet = "Po\\'esie de Romain Bussine."
  composer = "Gabriel Faur\\'e."
  piece = "\\hspace*{30mm}\\normalfont\\large Andantino."
  mutopiatitle = "Apres un Reve"
  mutopiacomposer = "Gabriel Faure (1845-1924)"
  mutopiapoet = "Romain Bussine"
  mutopiaopus = "0 7"
  mutopiainstrument = "Voice and Piano"
  date = "1877"
  source = "Choudens, 1880"
  style = "Romantic"
  copyright = "Public Domain"
  maintainer = "Tak-Shing Chan"
  maintainerEmail = "chan12@alumni.usc.edu"
  lastupdated = "2003/Nov/10"

  tagline = "\\parbox{\\hsize}{\\thefooter\\quad\\small\\noindent\\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[\\textwidth][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[\\textwidth][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}"
  footer = "Mutopia-2003/11/10-368"
}

chant = \notes \relative c'' {
  \key c \minor
  \time 3/4
  \property Staff.instrument = #"Chant.   "
  \property Staff.autoBeaming = ##f
  \property Staff.Hairpin \override #'minimum-length = #8
  \property Voice.DynamicLineSpanner \override #'direction = #1
  \property Voice.DynamicLineSpanner \override #'padding = #1.2
  \property Voice.TupletBracket \override #'bracket-visibility = ##f
  \property Voice.TupletBracket \override #'direction = #1
  \property Voice.tupletSpannerDuration = #(ly:make-moment 1 4)
  R2. |
  g4^\markup{\italic "dolce."} c\< d\! |
  ees ~ \times 2/3 { ees8 d c ees d c } |
  c2\> bes4\! |
  des8 f, des'4 c8 b |
  c4.\< c8 bes8. aes16\! |
  g4\> ~ \times 2/3 {
    \property Voice.TupletBracket \override #'direction = #-1
    g8([ aes bes]
    \property Voice.TupletBracket \override #'direction = #1
    aes[ bes c])\! } |
  g2. |
  g4 \times 2/3 { ees4 f8 g4 aes8 } |
  bes4 ~ \times 2/3 { bes8 f f f e f } |
  aes2 g4 |
  c\< c4. ces8\! |
  bes4 ees, ees |
  f ~ \times 2/3 {
    \property Voice.TupletBracket \override #'direction = #-1
    f8 ges\> aes
    \property Voice.TupletBracket \override #'direction = #1
    ges aes\! bes } |
  bes2 ees,4 |
  R2. |
  g4\< c d\! |
  ees ~ \times 2/3 { ees8 d c ees d c } |
  c2\> bes4\! |
  des8 f, des'4 c8 b |
  c4. c8 bes aes |
  g4 ~ \times 2/3 {
    \property Voice.TupletBracket \override #'direction = #-1
    g8([ aes bes]
    \property Voice.TupletBracket \override #'direction = #1
    aes[ bes c]) } |
  g2. |
  g4 \times 2/3 { ees4( f8) g4( aes8) } |
  bes4. f8 \times 2/3 { f e f } |
  aes4 g c, |
  des4^\markup{"" \raise #1.8 \italic "cresc. poco a poco"} ~ \times 2/3 { des8([ ees f]) ees([ f]) g } |
  g4 c, e |
  \times 2/3 {
    f4 f8 f([ g]) aes
    \property Voice.TupletBracket \override #'direction = #-1
    bes([ aes]) bes
    \property Voice.TupletBracket \override #'direction = #1 } |
  c4 c, c' |
  f2\f f,4 |
  f \times 2/3 {
    f8 g a
    \property Voice.TupletBracket \override #'direction = #-1
    bes([ c]) des } |
  des4 ~ \times 2/3 { des8\>([ c ees] des[ c bes])\! } |
  des2 bes8.\< bes16\! |
  ees2 des4 |
  des4 ~ \times 2/3 {
    des8([ c]) bes
    \property Voice.TupletBracket \override #'direction = #1
    aes g f } |
  g4\> ~ \times 2/3 { g8([ aes g] f[ g aes])\! } |
  g2 g4 |
  c2^\markup{\italic "cresc."} c4 |
  c2 c8. d16 |
  ees2.\f |
  d2\> d4\! |
  d2\p c4 |
  bes4. g8 ees f |
  g4\pp ~ \times 2/3 { g8([ f ees] f[ g aes] } |
  g2.) |
  c, |
  R |
  \bar "|."
}

poesie = \lyrics {
  Dans un som -- meil que char -- mait ton i -- ma -- ge
  Je r\^e -- vais le bon -- heur,
  ar -- dent mi -- ra -- ge,
  Tes yeux \'e -- taint plus doux,
  ta voix pure et so -- no -- re,
  Tu ray -- on -- nais comme un ciel \'e -- clai -- r\'e par l'au -- ro -- re;
  Tu m'ap -- pe -- lais __ et je quit -- tais la ter -- re
  Pour m'en -- fuir a -- vec toi vers la lu -- mi\`e -- re,
  Les cieux pour nous __ entr' -- ouv -- raient leurs nu -- es splen -- deurs __ in -- con -- nu -- es,
  lu -- eurs di -- vi -- nes en -- tre -- vu -- es,
  H\'e -- las!
  H\'e -- las,
  tris -- te r\'e -- veil des son -- ges
  Je t'ap -- pelle,
  \^o nuit,
  rends moi tes men -- son -- ges,
  Re -- viens,
  re -- viens ra -- di -- eu -- se,
  Re -- viens,
  \^o nuit mys -- t\'e -- ri -- eu -- se!
}

droit = \notes \relative c' {
  \key c \minor
  \time 3/4
  <c ees g>8 <c ees g> <c ees g> <c ees g> <c ees g> <c ees g> |
  <c ees g> <c ees g> <c ees g> <c ees g> <bes d ees g> <bes d ees g> |
  <a c ees g> <a c ees g> <a c ees g> <a c ees g> <a c ees f> <a c ees f> |
  <aes c d f> <aes c d f> <aes c d f> <aes c d f> <aes bes d f> <aes bes d f> |
  <aes des f> <aes des f> <aes des f> <aes des f> <g des' fes> <g des' fes> |
  <aes c e> <aes c e> <aes c e> <aes c e> <aes c f> <aes c f> |
  <f g b d> <f g b d> <f g b d> <f g b d> <f aes c d> <f aes c d> |
  <f g b d> <f g b d> <f g b d> <f g b d> <f g b d> <f g b d> |
  <g c ees> <g c ees> <g c ees> <g c ees> <g c ees> <g c ees> |
  <f bes f'> <f bes f'> <f bes f'> <f bes f'> <f bes f'> <f bes f'> |
  <aes des f> <aes des f> <aes des f> <aes des f> <g des' e> <g des' e> |
  <f c' f> <f c' f> <f c' ees> <f c' ees> <f c' d> <f ces' d> |
  <ees bes' ees> <ees bes' ees> <ees bes' ees> <ees bes' ees> <g c ees> <g c ees> |
  <aes ees' f> <aes ees' f> <aes ees' f> <aes ees' f> <aes d f> <aes d f> |
  <g bes ees g> <g bes ees g> <g bes ees g> <g bes ees g> <g bes ees g> <g bes ees g> |
  <g b ees g> <g b ees g> <g b ees g> <g b ees g> <f b d g>\arpeggio <f b d g>\arpeggio |
  <ees c' g'>\arpeggio <c' ees g> <c ees g> <c ees g> <bes d ees g> <bes d ees g> |
  <a c ees g> <a c ees g> <a c ees g> <a c ees g> <a c ees f> <a c ees f> |
  <aes c d f> <aes c d f> <aes c d f> <aes c d f> <aes bes d f> <aes bes d f> |
  <aes des f> <aes des f> <aes des f> <aes des f> <g des' fes> <g des' fes> |
  <aes c e> <aes c e> <aes c e> <aes c e> <aes c f> <aes c f> |
  <f g b d> <f g b d> <f g b d> <f g b d> <f aes c d> <f aes c d> |
  <f g b d> <f g b d> <f g b d> <f g b d> <f g b d> <f g b d> |
  <g c ees> <g c ees> <g c ees> <g c ees> <g c ees> <g c ees> |
  <f bes f'> <f bes f'> <f bes f'> <f bes f'> <f bes f'> <f bes f'> |
  <aes c> <aes c> <g bes c> <g bes c> <g bes c> <g bes c> |
  <f aes des> <f aes des> <f aes des> <f aes c> <f g c> <f g b> |
  <e g c> <e g c> <e g c> <e g c> <e g c> <e g c> |
  <f c' des> <f c' des> <f c' des> <f c' des> <aes c d> <aes c d> |
  <g c e> <g c e> <g c e> <g c e> <g c e> <g c e> |
  <f c' ees f> <f c' ees f> <f c' ees f> <f c' ees f> <ees' f c'> <ees f c'> |
  <ees f c'> <ees f c'> <des f bes> <des f bes> <c f aes> <c f aes> |
  <bes des f g> <bes des f g> <bes des f g> <bes des f g> <bes des f aes> <bes des f aes> |
  <bes des ees g> <bes des ees g> <ees g> <ees g> <des ees g> <des ees g> |
  <c ees g> <c ees g> <bes ees g> <bes ees g> <aes bes des f> <aes bes des f> |
  <g bes des f> <g bes des f> <g bes des e> <g bes des e> <aes c f> <aes c f> |
  <g d' f> <g d' f> <g d' f> <g d' f> <aes d f> <aes d f> |
  <g d' f> <g d' f> <g b ees> <g b ees> <g b d> <g b d> |
  <g c> <g c> <f c' d> <f c' d> <bes c e> <bes c e> |
  <aes c f> <aes c f> <c g'> <c g'> <c fis a> <c fis a> |
  <bes ees bes'> <bes ees bes'> <ees f c'> <ees f c'> <c ees f> <c ees f> |
  <d f aes> <d f aes> <d f g> <d f g> <aes d f> <aes d f> |
  <aes d f> <aes d f> <g d' f> <g d' f> <g c ees> <g c ees> |
  <g bes ees> <g bes ees> <g bes ees> <g bes ees> <g bes ees> <g bes ees> |
  <f g b ees> <f g b ees> <f g b d> <f g b d> <ees g c> <ees g c> |
  <d g c> <d g c> <d g b> <d g b> <d f g b> <d f g b> |
  <ees g c> <ees g c> <ees g c> <ees g c> <ees g c> <ees g c> |
  <ees g c>2 r4 |
  \bar "|."
}

dynamics = \notes {
  \property Staff.Hairpin \override #'minimum-length = #8
  s2.\pp
  s s s s s s s s s s s s s s
  s8\< s s\! s\> s s\!
  s2. s s s s s s s s s s s s
  s8\< s2 s8\!
  s2.
  s8\> s s2 s s8 s\!
  s8 s4. s8\< s\!
  s2. s
  s8\> s2 s8\!
  s2.
  s8\< s s2 s s8 s\!
  s2. s
  s\p
  s
  s\pp
}

gauche = \notes \relative c,, {
  \clef "F"
  \key c \minor
  \time 3/4
  R2. |
  R |
  <f f'> |
  <bes bes'> |
  <ees, ees'> |
  <aes aes'>2 <d, d'>4 |
  <g g'>2. ~ |
  <g g'> |
  <c c'> |
  <des des'> |
  <bes bes'> |
  <aes aes'> |
  <g g'>2 <c c'>4 |
  <ces ces'> <bes bes'>2 |
  <ees, ees'>2. |
  <g g'> |
  <c c'> |
  <f, f'> |
  <bes bes'> |
  <ees, ees'> |
  <aes aes'>2 <d, d'>4 |
  <g g'>2. ~ |
  <g g'> |
  <c c'> |
  <des des'> |
  e |
  f2 g4 |
  c,2. |
  <aes aes'>2 <f f'>4 |
  <c' c'>2 <bes bes'>4 |
  <a a'>2. |
  <bes bes'> |
  <ees ees'> ~ |
  <ees ees'>4 r r |
  R2. |
  r4 c'\( f, |
  b2 c4 |
  b g f\) |
  ees\( aes g |
  f ees d |
  g a2\) |
  bes4\( b2 |
  c c,4 |
  ees2\) <g, g'>4 ~ |
  <g g'>2. ~ |
  <g g'> |
  <c, c'>2 <c c'>4 |
  <c c'>2 r4 |
  \bar "|."
}

\score {
  <<
    \addlyrics
    \context Staff \chant
    \context Lyrics \poesie
    \context PianoStaff <<
      \property PianoStaff.instrument = #"Piano.   "
      \context Staff = droit \droit
      \context Dynamics = dynamics \dynamics
      \context Staff = gauche \gauche
    >>
  >>
  \paper {
    % The following are taken from LilyPond's piano-dynamics.ly.
    \translator {
      \type "Engraver_group_engraver"
      \name Dynamics
      \consists "Output_property_engraver"

      minimumVerticalExtent = #'(-1 . 1)
      pedalSustainStrings = #'("Ped." "*Ped." "*")
      pedalUnaCordaStrings = #'("una corda" "" "tre corde")

      \consists "Piano_pedal_engraver"
      \consists "Script_engraver"
      \consists "Dynamic_engraver"
      \consists "Text_engraver"

      TextScript \override #'font-relative-size = #1
      TextScript \override #'font-shape = #'italic
      DynamicText \override #'extra-offset = #'(0 . 1.2)
      Hairpin \override #'extra-offset = #'(0 . 1.2)

      \consists "Skip_event_swallow_translator"

      \consistsend "Axis_group_engraver"
    }
    \translator {
      \PianoStaffContext
      \accepts Dynamics
      VerticalAlignment \override #'forced-distance = #7
    }
  }
  \midi {
    \translator {
      \type "Performer_group_performer"
      \name Dynamics
      \consists "Piano_pedal_performer"
      \consists "Span_dynamic_performer"
      \consists "Dynamic_performer"
    }
    \translator {
      \PianoStaffContext
      \accepts Dynamics
    }
  }
}
