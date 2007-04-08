
global = {
  \time 4/4
  \repeat volta 2 {
    \partial 16*11
    s16*11 s1*2 \noPageBreak
    s1*3 \noPageBreak
    s16*5
  }
  \repeat volta 2 {
    s16*11 s1*2 \noPageBreak
    s1*2 \noPageBreak
    s1*2 s16*5 
  }
}

\score {
  \context PianoStaff <<
    \new Staff <<
      \global
      { s16*11^\markup { \null \translate #'(-4 . 2) \italic Légèrement }
        s1*5 s16*5 s4_\markup \italic \large "Reprise" }
      { \clef treble
        a'16 b' cis'' d'' a' f' a' d' f'' e'' d'' |
        cis''8-\prall a' r16 e'' a'' cis'' d'' g'' f'' g'' e'' a'' g'' a'' |
        f''8-\prall d'' r16 a' bes' a' g' bes' f' bes' e' d'' c'' bes' |
        a'8-\prall f' r16 cis'' d'' e'' f'' e'' d'' f'' b' f'' a' f'' |
        gis'-\prall b' c'' d'' e''8 g'8 ( fis'16 )-\prall a'16 b' c'' d''8 f'8 |
        e'16 c'' b' d'' c'' b' a' gis' a' e'' a'' c'' b' a'' d'' gis'' |
        a'' e'' cis'' e'' a' a'' g'' a'' fis''8-\prall d'' g''16 d'' b' f''16 |
        e''8-\prall c'' r16 c''' g'' bes'' a'' e'' f'' a' g' f'' bes' e'' |
        f'' e'' f'' g'' a''8 a' bes'16 d'' bes' d'' g'' g' g'' g' |
        a' c'' a' c'' f''8 f' g'16 b' g' b' e'' e' e'' e' |
        f' a' f' a' d'' f'' e'' d'' cis''8.(-\prall d''16 d''8.-\prall cis''32 d'') |
        e''8 a' r16 e'' fis'' d'' g''8.(-\prall a''16 a''8.-\prall g''32 a'') |
        bes''8. a''16 g'' f'' e'' d'' cis''-\prall a' d'' f' e' d'' g' cis'' |
        d'' a' f' a' d'
      }
    >>
    \new Staff <<
      \global
      { \clef bass
        r16 r8 r4 r16 d f g |
        a e cis e a,8 a b d'( cis')-\prall a |
        d'16 a f a d8 d' e' d' c' c |
        f16 g a g f a e a d8 e f d |
        e16 f e d cis e a cis d e d c b, c b, a, |
        gis,8-\prall e a, b, c d e e, |
        a,4-\prall ~ <a, a,,>16 r16 r8 r16 d' c' d' b8-\prall g |
        c'16 g e bes a8 e f a, bes, c |
        f-\prall r8 fis16 a d' d g a g fis e g c' c |
        f g f e d f bes bes, e f e d cis e a a, |
        d8 c bes, g, a,16 a g a f a f a |
        cis e a e c8 a bes,16 d g b, a, g fis d |
        g, d g f e d cis b, a,8 f, g, a, |
        d4-\prall ~ <d d,>16 
      }
    >>
  >>
  \header {
    piece = "Allemande"
    titre = "Allemande"
    breakbefore = ##t
  }
  \layout {
  %%  indent = 3.0\cm 
  }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 80 4) } }
}
