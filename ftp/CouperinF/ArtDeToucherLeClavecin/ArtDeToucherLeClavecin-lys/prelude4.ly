global = {
  \time 2/2
  \key f \major
  s1*23
  \bar "|."
}

forceBeamedStemLength = 
#(define-music-function (parser location length) (number?)
  #{
  \override Voice.Stem #'details #'beamed-lengths = #(list $length)
  \override Voice.Stem #'details #'beamed-minimum-free-lengths = #(list $length)
  \override Voice.Stem #'details #'beamed-extreme-minimum-free-lengths = #(list $length)
  #})

revertBeamedStemLength = {
  \revert Voice.Stem #'details #'beamed-lengths
  \revert Voice.Stem #'details #'beamed-minimum-free-lengths
  \revert Voice.Stem #'details #'beamed-extreme-minimum-free-lengths
}

shiftOnce = { \once \override NoteColumn #'horizontal-shift = #1 }

\score {
  \context PianoStaff <<
    \context Staff = dessus <<
      \global
      \clef alto
      \new Voice {
        \override Staff.NoteCollision #'merge-differently-dotted = ##t
        s1 
        s2 \voiceOne es'4.^\markup { \finger "3-4"} f'8^5
        \appoggiatura es'8 d'2^\markup { \finger "3-4"} ~ d'8 d'^3 \appoggiatura d' es'^4 f'^5 
        c'4.^\markup { \finger "3-4"} d'8 \oneVoice bes4.^\prall( a16 bes 
        a4.) bes16 a \appoggiatura a8 bes4.^\mordent c'8 
        \appoggiatura c'8 d'4.^\mordent e'16 d' \appoggiatura d'8 e'4.^\mordent f'8 
        \voiceOne e'4.^\prall e'8 \oneVoice \appoggiatura e' f'4.^\mordent g'8 
        \appoggiatura g' a'4.^\mordent g'8 f' e' d' c' 
        b4^\prall \voiceOne g' ~ g'4 f' ~ |
        f'4 e' ~ e'4 d' ~ |
        d' c' ~ c'2 ~
        c'2 ~ c'4 c'8 b 
        \appoggiatura b c' s4. g'2^5 ~
        g'8 e' f'4 ~ f'8 f'^5 e'4^\markup { \finger "4-5"} ~
        e'8 e'^3 f'^4 e'^3 r8 a'^4 bes'^5 a'^4 
        g'2^\markup { \finger "3-5"} ~ g'8 g'^4 a'^5 g'^4 
        fis' d' g'2 <c' g'>8 fis' |
        \appoggiatura fis' g'\noBeam \oneVoice bes'16^5 a'^4 g'^3 f'^2 e'^3 d'^2
        c'8^1 c''16 bes' a' g' f' e' |
        d'8 d''16 c'' bes' a' g' f' e'^\prall d' c' d' e' f' g' a' 
        \voiceOne <g' bes'>2 ~ <g' bes'>16 bes' a' g' <f' a'>4 ~ |
        <f' a'>16 a' g' f' g'4 ~ g'16 g' f' e' f'4 ~
        f'2 ~ f'4 f'8. e'16 
        \appoggiatura e'8 f'2 ~ f'2 
      }
      \new Voice {
        r2 r4 \oneVoice r8 f'8-4
        \appoggiatura f'8 e'4-3 f'8-4 d'-2 
        \appoggiatura d' \voiceTwo es'_\markup \finger "2-1" d' c'4 ~
        c'4. c'8 \appoggiatura c'8 bes2 ~
        bes8 bes \appoggiatura bes a4 s2
        s1
        s1
        r8 c'4 s8 s2
        s1
        s4 \stemUp c'8\rest
        \override Voice.Stem #'details #'lengths = #'(3.0)
        \tieDown c'8 ~ \revert Voice.Stem #'details #'lengths 
        \forceBeamedStemLength #1.5 \tieUp c'4 ~ \shiftOnce c'8 b ~ |
        \shiftOnce b4 ~ \forceBeamedStemLength #1.0
        \shiftOnce b8 a ~ \shiftOnce a4 ~ \shiftOnce a8 g ~ |
        \shiftOnce g4. 
        \override Voice.Stem #'details #'lengths = #'(2.5)
        \tieDown g8 ~ \revert Voice.Stem #'details #'lengths 
        \voiceTwo \revertBeamedStemLength g \tieUp a ~ a g ~ |
        \voiceTwo
        g f ~ f e ~ e d ~ d4 |
        e8 c''[ b' a' g' f' e' d'] |
        c'4. c'8 bes4. bes8 |
        a4 r d'2-\markup \finger "2-1" ~ |
        d'8 c'-2 b-1 d'-3 c'2-\markup \finger "2-1" ~ |
        c'4. bes8-2 ~ bes a-1 ~ a4 |
        bes8 s8 s4 s2 |
        s1 |
        d'4 c' ~ c'16 r16 r8 c'4 |
        bes16 r16 r8 r16 bes c' d' a r r8 \voiceOne c'4 ~ |
        c'2 ~ \shiftOnce c'8\noBeam g16 bes ~ bes4 |
        s4 a8 c' ~ c'2
      }
      \new Voice {
        s1*8
        s4 \voiceTwo s4 c'8 a ~ a4 ~ |
        a8 g ~ g4 ~ g8 f ~ f4 ~ |
        f8 e ~ e4 s2 |
        s1*8 |
        s1 |
        s2. a4 ~ |
        a2 ~ a8 g ~ g4 |
        r8 bes a4 ~ a2
      }
    >>
    \context Staff = basse <<
      \global
      \clef bass
      \new Voice {
        \voiceTwo f2 f,_5 |
        \voiceOne g^3 a^\markup \finger "2-1" ~ |
        a g ~ |
        g4 s g2 |
        f2  g4 a |
        bes s2. |
        r4 bes-2 a-1 g-2 |
        f-\markup \finger "3-4" g a2 |
        g f |
        e d |
        c s2 |
        a,2^\mordent g, |
        s2. bes4^2 |
        a2^1 g |
        f2 ~ f( |
        e)^\prall ees^\mordent |
        d ~ d | \oneVoice
        g,8 g16-1 f-2 e-3 d-4 c-3 bes,-4 a,8-5 a16 g f e d c
        bes,8 bes16 a g f e d \tieUp c4 ~ c8 \tieNeutral bes,16^\prall a, |
        g,16 a g f d16.^\prall c32 d e f g a4^\mordent r16 a, bes, c |
        d,4 e,-\prall f,8 g, a,16 bes, a, bes, |
        \set tupletNumberFormatFunction = ##f
        c4.( \times 2/3 { bes,32 a, g, f, e, d, } c,2) |
        f,1
      }
      \new Voice {
        \voiceOne f2-\mordent ~ f2 ~ |
        \voiceTwo f1_4 |
        bes,1 |
        e4 f2 ees4 ~ |
        ees d2 c4 |
        bes, a, g,-\mordent f, |
        c1 |
        f2. fis4 |
        g4 e2 d4 ~ |
        d c2 b,4 |
        c4 \voiceOne e, f, g, |
        \voiceTwo a, f, g, \voiceOne g,, |
        c, \voiceTwo c-1 ~ c2-5 ~ |
        c1 |
        f2_\mordent f, |
        s1 |
        s2 \voiceOne d,2 |
        s1 |
        s2 \voiceTwo c8 \voiceOne c,4 \voiceTwo r8 |
        s1 |
        s1 |
        s2 \oneVoice f4\rest c4 |
        f2\rest \stemUp f-\mordent
      }
    >>
  >>
  \header {
    piece = "Quatrième prélude"
    titre = "Quatrième prélude"
    breakbefore = ##t
  }
  \layout { indent = 1.0\cm }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 108 4) } }
}
