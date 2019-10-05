\version "2.18.2"
\include "deutsch.ly"

skipOn = \set Score.skipTypesetting = ##t
skipOff = \set Score.skipTypesetting = ##f

\header {
  mutopiatitle = "Praeludium et Fuga E-flat major"
  mutopiacomposer = "BachJS"
  mutopiaopus = "BWV 552"
  mutopiainstrument = "Organ"
  date = ""
  source = "Edition Peters 8658"
  style = "Baroque"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  maintainer = "Urs Metzger"
  maintainerEmail = "urs@ursmetzger.de"
  lastupdated = "2019/Oct/05"
}

#(set-default-paper-size "a4" 'landscape)

\paper {
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}

mmr  = #(define-music-function (parser location pos) (number?)
          #{ \once \override MultiMeasureRest.staff-position = #pos #})
mmro = #(define-music-function (parser location offset) (number?)
          #{ \once \override MultiMeasureRest.extra-offset = #(cons offset 0) #})
mmrs = #(define-music-function (parser location pos) (number?)
          #{ \override MultiMeasureRest.staff-position = #pos #})
ncs  = #(define-music-function (parser location offset) (number?)
          #{ \once \override NoteColumn.force-hshift = #offset #})
rsto = #(define-music-function (parser location offset) (number?)
          #{ \once \override Rest.extra-offset = #(cons offset 0) #})
stl  = #(define-music-function (parser location stemLength) (number?)
          #{ \once \override Stem.length = #stemLength #})
tpos = #(define-music-function (parser location pos) (number?)
          #{ \once \override Tie.staff-position = #pos #})

down   = { \change Staff = "left" }
downs  = { \change Staff = "left" \stemUp \tieUp \slurUp }
forte  = \markup { \italic "forte" }
hh     = { \ncs #0 }
hr     = { \ncs #0.4 }
hrr    = { \ncs #0.8 }
hrrr   = { \ncs #1.2 }
piano  = \markup { \italic "piano" }
tbe    = { \set Timing.beamExceptions = #'((end . (((1 . 8) . (4))))) }
tbeOff = { \set Timing.beamExceptions = #'() }
up     = { \change Staff = "right" }
ups    = { \change Staff = "right" \stemDown \tieDown \slurDown }

globalP = {
  \key es \major
  \time 4/4
  \mergeDifferentlyDottedOn
  \tbe
}

sopranP = \new Voice {
  \relative b' {
    \globalP
    \stemUp \tieUp \slurUp b4~ \mordent b16 as g f es4. es'8
    es2( d)
    f8.( es16) d8.( c16)
    b4. <<
      \new Voice { \hh \stl #7 as8 \hh \slurUp \once \override Slur.extra-offset = #'(0 . 1.5) as2( g) }
      \new Voice { \hr \stl #5 f8 \hr \stl #6.1 f2 s}
    >>
    \barNumberCheck 5
    \stemDown \slurUp g'8.( \mordent as16) g8.( f16) g8.( es16) d8.( \prall c16)
    \stemDown \slurUp f8.( \mordent g16) f8.( es16) f8.( d16) c8.( \prall b16)
    \stemUp es8.( f16) es8.( d16) es2~
    es8. f16 es8. d16 es2~
    es8. f16 es8. d16 es2~
    \barNumberCheck 10
    es8. f16 es8. d16 es2~
    es8. es16 d8. c16 d2~
    d c~
    c8. c16 d8. es16 f2~
    f2 \hh \tpos #7.5 es~
    \barNumberCheck 15
    \hh es2 s
    a8\rest a16\rest d,( es8. g16 f8. es16 d8. es16)
    \hh d2 a'4\rest a8\rest \hh \stl #7 f
    \hh \tpos #7 f1~
    \hh f2 a4\rest a8\rest \hh d,
    \barNumberCheck 20
    d2( c~)
    c2 b~
    b1~
    b4. d16\rest b as4. \prall d16\rest g,
    g2 f4. r16 g
    \barNumberCheck 25
    \slurDown as8.( b16 as8. g16) as8.( f'16 b,8. as16)
    g8.( as16 g8. f16) g8.( es'16 g,8. f16)
    es8.( f16 es8. d16) es8.( c'16 f,8. es16)
    d8.( es16 d8. c16) d8. b16 d8. f16
    b8.( c16 b8. as16) b8. es,16 g8. b16
    \barNumberCheck 30
    es4~ es16 d c b as8. f'16 b,8. as16
    g8. as16 b8. es,16 g8. f16 es8. \prall d16
    \slurUp d2( es4~) es16 g( f es)
    b'4^. c^. as^. \prall g^.
    r2 r4 as16( ^\piano g f es)
    \barNumberCheck 35
    b'4^. c^. as^. \prall g^.
    r2 r4 es'16( ^\forte d c b)
    f'4^. g^. es^. \prall d^.
    d2\rest d4\rest es16( ^\piano d c b)
    f'4^. g^. es^. \prall d^.
    \barNumberCheck 40
    \tbeOff d2\rest d4\rest d8\rest d~ ^\forte
    d8 h4 c8~ c16 es f g f es d c~
    c8 a4 b!8~ b16 d es f es d c b~
    b8 g4 a8~ a16 b c d c b a \tieDown g~
    g8 e4 f8~ f es'4 des8~
    \barNumberCheck 45
    des16 b a b \acciaccatura b8 f'4~ f8 e16 f ges f e f
    b,8 a~ a16 b c a f8 es'!4 \tieUp des8~
    des16 b a b \acciaccatura b8 f'4~ f8 e16 f ges f e f
    b,8 a~ a16 b c a f8 es'!4 des8~
    \tbe des8 c16 b c8 g b4( a8.) \prall b16
    \barNumberCheck 50
    \tpos #3.8 b1~
    b2 h\rest
    g'8. f16 es8. d16 c4. a'16\rest <<
      \new Voice { \stemUp \slurUp \hh \stl #7 c16 b2( a)}
      \new Voice { \stemUp \ncs #0.3 f16 f1 }
    >> \shiftOff b8 a16 g f es d c b8 a16 g f es d c
    \barNumberCheck 55
    b4 r a''\rest f
    f4( es) r16 es d c b as g f
    es4 r c''\rest b
    b4( as) a\rest es~
    es4. f16\rest es d2~
    \barNumberCheck 60
    d4. f16\rest d c2~
    c2~ c8. h16 a8. g16
    c2~ c8. es16 d8. c16
    d2~ d8. c16 h8. a16
    h2~ h8. h16 c8. d16
    \barNumberCheck 65
    g,2~ g8. g16 f8. g16
    a2~ a8. a16 g8. a16
    h2~ h8. h16 c8. d16
    c2~ c8. c16 d8. es16
    d2~ d8. h16 c4~
    \barNumberCheck 70
    c2 h
    c8 a'\rest a4\rest f2\rest
    \mmr #6 R1
    f8\rest g4 g8~ g16 f es d c b a g
    fis16 a fis a g b g b g c g c fis, c' fis, c'
    \barNumberCheck 75
    b16 a g fis g b g b es2~
    es16 b a g a c a c f2~
    f16 as! g f g f es d es f es d es d c h
    c4 d es f~
    f4 es d g8 d
    \barNumberCheck 80
    es2~ es8[ es c f]
    d2. des4
    c2~ c16 c b as b as g f
    es16 g f es c'4~ c16 es d c f8 as,
    g4 as b c
    \barNumberCheck 85
    b2 c4 b~
    b4 f'\rest f2\rest
    \mmr #6 R1
    c'8\rest b4 b8~ b16 a g f es d c b
    a16 c a c b d b d b es b es a,! es' a, es'
    \barNumberCheck 90
    d16 c b a b d c b g' as! g f g f es d
    c16 d c b c es d c a' b a g fis e d c
    b16 d b d c es! c es d4 es
    d2 es4 d~
    d2~ d16 f! es d es g es g
    \barNumberCheck 95
    as!1
    g1
    f1
    e2 e'4\rest e8\rest \hh g,
    \tbe g2 f~
    \barNumberCheck 100
    f2 es~
    es1~
    es4. a16\rest \stl #7.3 es des4. a'16\rest \stl #7.3 c,
    c2 \hh b4. f'16\rest es
    es1~ \startTrillSpan
    \barNumberCheck 105
    es~
    es2~ es8. \stopTrillSpan d!16 es8. f16
    b,1~
    \stemNeutral b4. r16 b as4. r16 c
    a'8\rest a16\rest \stemUp f g8. as16 b2~
    \barNumberCheck 110
    b4 as f4. a16\rest es
    des2( c4~) c16 c b as
    es'4^. f^. des^. ^\prall c^.
    h2\rest h4\rest des16 ^\piano c b as
    es'4^. f^. des^. ^\prall c^.
    \barNumberCheck 115
    \mmr #4 R1
    f4\rest es^. d!^. es^.
    \mmr #4 R1
    f4\rest es^. d!^. es^.
    d2\rest f4\rest a8\rest g~ ^\forte
    \barNumberCheck 120
    \tbeOff g8 e4 f8~ f16 as b c b as g f~
    f8 d4 es8~ es16 g as b as g f es~
    es8 c4 d8~ d16 es f g f es d c~
    c8 a4 b8~ b8 as'!4 ges8~
    ges16 es d es b'4~ b8 a16 b ces b a b
    \barNumberCheck 125
    es,8 d~ d16 es f d b8 as'!4 ges8~
    ges16 es d es b'4~ b8 a16 b ces b a b
    es,8 d~ d16 es f d \stl #7 b8 as'!4 ges8~
    \tbe ges8 f16 es f8 c es4( d8.) \prall es16
    \tpos #6.85 es1~
    \barNumberCheck 130
    \hh es4 d\rest d2\rest
    \mmr #4 R1
    \mmr #4 R1
    \mmr #4 R1
    \mmr #4 R1
    \barNumberCheck 135
    \mmr #4 R1
    f8\rest es4 es8~ es16 d c b as g f es
    d16 f d f es g es g es as es as d, as' d, as'
    g16 f es d es g es g c2~
    c16 es, d c d f d f b2~
    \barNumberCheck 140
    b16 d, c b c es c es a b a g a c a c
    d16 es d c d f d f b a g f es d c b
    a16 c a c b d b d b es b es a, es' a, es'
    d16 es d c d c b a b c b a b as g f
    g8 d'\rest d4\rest d2\rest
    \barNumberCheck 145
    d2\rest as'
    g2 f
    es16 f es d es d c h c d c h c b a g
    a8 f'\rest f4\rest f2\rest
    f2\rest g
    \barNumberCheck 150
    f2 es
    d4 b' as!2
    g4 h\rest c2\rest
    c2\rest f,
    es2 des
    \barNumberCheck 155
    c2 d!
    es2 f~
    f16 b, es8~ es16 d es8~ es16 d c b as g f es
    d16 f d f es g es g es as es as d, as' d, as'
    g2~ g16 g f es f es d c
    \barNumberCheck 160
    b16 d c b \tieDown g'4~ g16 b a g! c8 es,
    des4 es f ges
    f2 ges4 \tieUp f~
    f4 d'\rest d2\rest
    \mmr #4 R1
    \barNumberCheck 165
    f8\rest f4 f8~ f16 es des c b as g f
    e16 g e g f as f as f b f b e,! b' e, b'
    as16 g f e f as g f d'! es! d c d c b as
    g16 as g f g a h c h c d es f as! g f
    es16 g es g f as f as g4 as
    \barNumberCheck 170
    g2 as4 g8 f
    es1
    des1
    c1
    h2 <<
      { \stemUp a'4\rest a8\rest \stl #6.5 \hh d,8 \hh d2( c) \mordent }
      \\
      { h4\rest h8\rest \stemUp \stl #5 \ncs #0.3 h!8 \hr h2 }
    >>
    \barNumberCheck 176
    f'8. es16 d8. c16
    b4. <<
      \new Voice { \hh \stl #7 \stemUp as8 \hh \slurUp as2( g) }
      \new Voice { \hr \stl #5 \stemUp f8 \hr f2 s}
    >>
    \stemDown \slurUp g'8.( as16) g8.( f16) g8.( es16) d8.( \prall c16)
    \stemDown \slurUp f8.( g16) f8.( es16) f8.( d16) c8.( \prall b16)
    \barNumberCheck 180
    \stemUp es8.( f16) es8.( d16) es2~
    es8. f16 es8. d16 es2~
    es8. f16 es8. d16 es2~
    es8. f16 es8. d16 es2~
    es8. es16 d8. c16 d2~
    \barNumberCheck 185
    d2 c~
    c8. c16 d8. es16 f2~
    f2 \hh \tpos #7.7 es~
    \hh es2 s
    a8\rest a16\rest d, es8. g16 f8. es16 d8. es16
    \barNumberCheck 190
    \hh d2 a'4\rest a8\rest \hh \stl #7 f
    \hh \tpos #7 f1~
    \hh f2 a4\rest a8\rest \hh d,
    d2( c~)
    c2 b~
    \barNumberCheck 195
    b1~
    b4. d16\rest b as4. d16\rest g,
    g2 f4. r16 g
    \slurDown as8.( b16 as8. g16) as8.( f'16 b,8. as16)
    g8.( as16 g8. f16) g8.( es'16 g,8. f16)
    \barNumberCheck 200
    es8.( f16 es8. d16) es8.( c'16 f,8. es16)
    d8.( es16 d8. c16) d8.( b16 d8. f16)
    b8.( c16 b8. as16) b8.( es,16 g8. b16)
    es4~ es16 d c b as8. f'16 b,8. as16
    g8. as16 b8. es,16 g8. f16 es8. d16
    \barNumberCheck 205
    \slurUp d2( es) \fermata
  }
}

altP = \new Voice {
  \relative es' {
    \globalP
    \stemDown \tieDown \slurDown es2 g,4\rest h8\rest b'
    as1~
    as2 c,4\rest e8\rest d
    d2( es) _\mordent
    \barNumberCheck 5
    s1
    s1
    r2 r8 r16 c' b8. a16
    g2~ g8. b16 a8. g16
    f2~ f8. g16 a8. b16
    \barNumberCheck 10
    a2~ a8. a16 b8. c16
    f,1~
    f4. r16 f es4. _\prall r16 d
    c4 r e8\rest e16\rest f g8. a16
    \tieUp \stl #5 b2~ \stemUp \hr b8. b16 c8. d16
    \barNumberCheck 15
    \hr c2 f8\rest f16\rest c d8. es16
    c1
    \hr b2 h4\rest h8\rest \ncs #0.3 \stl #5 d
    \hrr \stl 4.8 d2~ \stl #5 d4. d16\rest c
    \once \override Script.extra-offset = #'(2 . -4) \hr h2 \prall h4\rest h8\rest \ncs #0.3 \stl #4.7 g
    \barNumberCheck 20
    \stemDown g1
    as!8. b16 as8. g16 as8. f16 es8. d16
    g1~
    g4. e16\rest g f4. e16\rest es
    es2 d
    \barNumberCheck 25
    s1 * 5
    \barNumberCheck 30
    e8\rest e16\rest c d8. es16 \tieDown f2~
    f4 es c b
    b1
    r4 es_. d_. es_.
    s1
    \barNumberCheck 35
    c4\rest es_. d_. es_.
    s1
    g4\rest b_. a_. b_.
    es,_. _\prall d_. e2\rest
    g4\rest b_. a_. b_.
    \barNumberCheck 40
    es,4_. _\prall d_. e4\rest f
    g4 f g g\rest
    f4 es f e\rest
    es4 d es e\rest
    s1
    \barNumberCheck 45
    s1
    s2 s4 f
    f4 c\rest c\rest des
    es4 des s2
    f4 es des c
    \barNumberCheck 50
    e8\rest g16\rest <<
      \new Voice { \stemUp g16 f8. es16 f8. es16 d8. c16 }
      \new Voice { \stemDown es d!8. c16 d8. c16 \down \stemUp b8. a16}
    >>
    d2 c4\rest c8\rest d
    h'2\rest e,4\rest g8\rest g16\rest c
    c1
    \shiftOn \stemUp f8 s2..
    \barNumberCheck 55
    s2 h,4\rest d
    d4 b s2
    s2 d4\rest g
    g es h\rest \stemDown b
    \dotsDown as8. b16 as8. g16 as8. f16 es8. d16
    \barNumberCheck 60
    g8. as16 g8. f16 g8. es16 d8. c16
    f8. g16 f8. es16 f2~
    f8. g16 f8. es16 f2~
    f8. g16 f8. es16 f2~
    f8. g16 f8. es16 f2~
    \barNumberCheck 65
    f8. f16 es8. d16 es2~
    es2 d~
    d8. d16 es8. f16 g2~
    g2 \tieUp \tpos #-1.99 f~
    f2 es
    \barNumberCheck 70
    d8. es16 f8. as16 g8. f16 es8. d16
    \tbeOff es8 c'4 \tieDown c8~ c16 b! as g \stemNeutral f es d c
    h16 d h d c es c es c f c f h, f' h, f'
    \stemDown es4 d c d
    es4 d c d~
    \barNumberCheck 75
    d2~ d16 \down \stemUp d c h c b! a g
    a4 \tieUp c~ c16 es d c d c h a
    h8[ c d h] c16 \up \stemDown as'! g f g f es d
    es4 f g as
    g2 as4 \tieDown g~
    \barNumberCheck 80
    g4 c8 g as2~
    as8[ as f b] g2~
    g16 b as g as g f es d!4 r
    \mmr #-4 R1
    c8\rest es'4 \tieUp es8~ es16 d c b as g f es
    \barNumberCheck 85
    d16 f d f es g es g es as es as d, as' d, as'
    g16 as g f g b g b es, d' c b c es c es
    a,!16 b a g a c a c f, es' d c d f d f
    b,4 c d \tieDown \tpos #-0.2 es~
    es e,8\rest f g4 f8 es
    \barNumberCheck 90
    f2~ f4 es~
    es2 d~
    d4 a' b c~
    c4 b a2
    b16 a g fis g b g b es,8 e\rest e4\rest
    \barNumberCheck 95
    r16 g' f es f4~ f16 es d c d4~
    d16 f es d es4~ es16 d c h c4~
    c16 es des c des4~ des16 c b! as b4~
    b16 c b as g f e d f'4\rest f8\rest \stemUp \ncs #0.3 \stl #6 c
    \stemDown c1
    \barNumberCheck 100
    \dotsDown des8. es16 des8. c16 des8. b16 as8. g16
    \tieUp \stemUp \tpos #2 \shiftOff c1~
    \shiftOn c4. h16\rest c \dotsNeutral b4. h16\rest as
    \stemUp as2 \shiftOff \hrr g
    \stemDown g8\rest g16\rest c b8. as16 b8 h\rest h4\rest
    \barNumberCheck 105
    g8\rest g16\rest b as8. g16 as8 h\rest h4\rest
    e,8\rest e16\rest des c8. b16 c8 e\rest e4\rest
    e8\rest e16\rest f es8. d16 es4 e\rest
    s1
    des'2 h\rest
    \barNumberCheck 110
    h4\rest \tieDown es~ es8. des16 c8. b16
    b2 as4 e\rest
    e4\rest as_. g_. as_.
    des,_. _\prall c_. c2\rest
    e4\rest as_. g_. as_.
    \barNumberCheck 115
    des,_. _\prall c_. c\rest as'16 ^\forte g f es
    b'4_. c_. as_. _\prall g_.
    s2. as16 ^\piano g f es
    b'4_. c_. as_. _\prall g_.
    s2. \stemUp b4
    \barNumberCheck 120
    \shiftOn c4 b c d\rest
    b4 as b h\rest
    as4 g as g\rest
    f4 es f d
    \stemDown es e\rest e\rest es
    \barNumberCheck 125
    f4 e\rest c\rest b'
    b4 d\rest d\rest \stemUp \shiftOff ges,!
    \shiftOn as4 ges f d
    b'4 as \stemDown ges f
    g8\rest g16\rest <<
      \new Voice{ \stemUp c16 b8. as16 b8. as16 g8. f16 \hr g4 }
      \new Voice{ \stemDown as16 g!8. f16 g8. f16 es8. d16 es8 c\rest}
    >> e4\rest e2\rest
    \barNumberCheck 131
    \mmr #-2 R1
    \stemDown r8 b'4 b8~ b16 a g f es d c \down \stemUp b
    a16 c a c b d b d b es b es a, es' a, es'
    d16 c b a b d b d \up \stemDown g2~
    \barNumberCheck 135
    g16 g f e f as! f as d, f es d es g es g
    c,4 as' g f16 es d c
    \down \stemUp b2 c4 b
    \tieUp b2~ b16 b as g as c as c
    f,2~ f16 as g f g b g b
    \barNumberCheck 140
    es,2~ es16 g f es f a f a
    b16 c b a b d b d es2~
    es4 d c2
    b8 a\rest a\rest es f a\rest a\rest b~
    b16 \up \stemDown as' g f g f es d es f es d es d c h
    \barNumberCheck 145
    g'2\rest g4\rest \tieDown f'~
    f4 es \stemUp d2
    c8 s2..
    s1
    h2\rest h4\rest es~
    \barNumberCheck 150
    es d c2
    b4 g'~ g8 f \tieUp des!4~
    des8 c4 c8 \stl #5 des4. c8~
    \tpos #2 c2~ c8[ es des c]
    b4 as \tieDown \tpos #0.2 b2~
    \barNumberCheck 155
    b16 b as g f as f as \stemDown d,!8 f b4~
    b16 des c b as c as c f,8 g as4
    \dotsDown g8. as16 b8. \down \stemUp b,16 c2
    b4 es, c' \tieUp b~
    b16 \up \stemDown f' es d es d c \down \stemUp b as4 c\rest
    \barNumberCheck 160
    \mmr #6 R1
    \up \stemDown g8\rest b'4 b8~ b16 as! ges f es des! c b
    a16 c a c b des b des b es b es a,! es' a, es'
    des16 es des c des f des f b, as' g! f g b g b
    e,16 f e d! e g e g c, b' as g as c as c
    \barNumberCheck 165
    f,4 g as \tieDown \tpos #-3 b~
    b c, des \down \stemUp c8 b
    c2 b
    \up \stemDown \mmr #-4 R1
    c'4 d es f~
    \barNumberCheck 170
    f4 es d2~
    d16 d c h c4~ c16 b as g as4~
    as16 c b as b4~ b16 as g f g4~
    g16 b as g as4~ as16 g f es f4~
    f16 g f es d \down \stemUp c h a \up \stemDown c4\rest c8\rest g'
    \barNumberCheck 175
    g2 c
    \stemUp b!2 c,4\rest e8\rest \stemDown d
    \slurDown d2( es) _\mordent
    s1
    s1
    \barNumberCheck 180
    r2 r8 r16 c' b8. a16
    g2~ g8. b16 a8. g16
    f2~ f8. g16 a8. b16
    a2~ a8. a16 b8. c16
    f,1~
    \barNumberCheck 185
    f4. r16 f es4. _\prall r16 d
    c4 r r8 r16 f g8. a16
    \tieUp \stl #5 b2~ \stemUp \hr b8. b16 c8. d16
    \hr c2 f8\rest f16\rest c d8. es16
    c1
    \barNumberCheck 190
    \hr b2 h4\rest h8\rest \ncs #0.3 \stl #5 d
    \hrr \stl 4.8 d2. d8\rest d16\rest c
    \once \override Script.extra-offset = #'(2 . -4) \hr h2 \prall h4\rest h8\rest \ncs #0.3 g
    \stemDown g1
    as!8. b16 as8. g16 as8. f16 es8. d16
    \barNumberCheck 195
    g1~
    g4. e16\rest g f4. e16\rest es
    es2 d
    s1 * 5
    r8 r16 c d8. es16 \tieDown f2~
    f4 es c b
    \barNumberCheck 205
    b1
  }
}

tenorP = \new Voice {
  \relative b {
    \globalP
    \stemUp \tieUp
    b2 s4 s8 es8
    f1~
    f2 \down s4 s8 b,
    b1
    \barNumberCheck 5
    c4\rest c8\rest c16\rest g c2~
    c4. c16\rest c b2~
    b2~ b8. a16 g8. f16
    b2~ b8. d16 c8. b16
    c2~ c8. b16 a8. g16
    \barNumberCheck 10
    f2~ f8. es16 d8. c16
    f2 a8\rest a16\rest f es8. f16
    g2~ g8. g16 f8. g16
    a2 a\rest
    \up \stemDown a8\rest c16\rest d es8. f16 g2
    \barNumberCheck 15
    r8 r16 f g8. a16 \tieDown b2~
    b2 a
    f2 c4\rest c8\rest f
    \slurDown f2( g~)
    g2 c,4\rest c8\rest d
    \barNumberCheck 20
    \down \hh g,1
    \hh \stemUp f2 a4\rest a8\rest a16\rest f
    g8. \up \stemDown f'16 es8. d16 es8. \down \stemUp b16 as8. g16
    \tieUp c2~ c4. e16\rest c
    b4. e16\rest c d2
    \barNumberCheck 25
    s1 * 5
    \barNumberCheck 30
    s2 a4\rest a8\rest c16\rest b
    b4 b as as
    \slurUp as2( g)
    s1
    as4^. \prall g^. a2\rest
    \barNumberCheck 35
    s1
    as4^. \prall g^. a2\rest
    s1 * 3
    \barNumberCheck 40
    s1 * 4
    c4 b c a!
    \barNumberCheck 45
    b4 c\rest c\rest b
    c4 e\rest e\rest s
    s1
    s2 c4 a!
    s1
    \barNumberCheck 50
    b2~ \stemDown b8. g16 f8. es16
    \stemUp b'2 s
    \up \stemDown \tieDown es1~
    es2 e\rest
    b'8 r r4 s2
    \barNumberCheck 55
    s2 c,4\rest b'
    b4 g s2
    s2 e4\rest es'
    es4 c \down \stemUp g4\rest es
    f2 c4\rest c8\rest c16\rest h
    \barNumberCheck 60
    h2 c4\rest c8\rest c16\rest c
    \tieUp d2~ d8. d16 c8. h16
    c2 e8\rest e16\rest c d8. es16
    d1~
    d8. es16 d8. c16 d4. c16\rest g
    \barNumberCheck 65
    g1~
    g2 f~
    f2 c'8\rest c16\rest g a8. h16
    c2~ \hh c4 f,\rest
    d8\rest d16\rest \stemDown g a8. h16 c2
    \barNumberCheck 70
    \stemUp d1
    c4 r r2
    s1 * 23
    \barNumberCheck 95
    s1 * 3
    \up s2 g'4\rest g8\rest \ncs #0.6 \stl #5 g
    c,1
    \barNumberCheck 100
    \down b2 d4\rest c8\rest c16 \rest b
    c8. \up \stemDown b'16 as8. g16 as8. es16 des8. c16
    \tieDown f2~ f4. c16\rest f
    \dotsDown es4. e16\rest f \hrr g2
    s1 * 6
    \barNumberCheck 110
    \down \stemUp s2... es16
    es1
    s1 * 3
    \barNumberCheck 115
    s1
    s1
    as,4^. ^\prall g^. a4\rest s
    s1
    as4^. ^\prall g^. a\rest \up \stemDown es'
    \barNumberCheck 120
    as4 g as f
    g4 f g es
    f4 es f c
    d4 c d \down b
    es,4 f ges es
    \barNumberCheck 125
    b'4 c d b
    \up es4 f ges es
    f4 es d b
    es4 \down as, b2
    \stemUp \tieUp es2~ es8. c16 b8. as16
    \barNumberCheck 130
    s1 * 15
    \barNumberCheck 145
    c2~ c4 h8 c
    \up \stemDown d4 es f <<
      \new Voice { \stemDown g~ g8 g8\rest g4\rest }
      \new Voice { \down \stemUp s4 c,8[ h c \up \stemDown d] es[ c d e] }
    >> f16 b a! g a g f e f g f e f es d c
    \tieDown d2~ d8[ f es d]
    \barNumberCheck 150
    c4 d es f~
    f16 g f e \stemUp \shiftOnn des'4 c4. \tieDown \stemDown b8~
    b4 as g8\rest b g4
    f2~ f8[ f g as]
    \ncs #1 b4 es, f es~
    \barNumberCheck 155
    es4 \down \stemUp c b16 a'\rest a8\rest s4
    s1 * 18
    s2.. f8
    \barNumberCheck 175
    f2( es)
    \up \stemDown \dotsNeutral f2 \down \stemUp s4 s8 b,
    b1
    c4\rest c8\rest c16\rest g \tieUp c2~
    c4. c16\rest c b2~
    \barNumberCheck 180
    b2~ b8. a16 g8. f16
    b2~ b8. d16 c8. b16
    c2~ c8. b16 a8. g16
    f2~ f8. es16 d8. c16
    f2 a8\rest a16\rest f es8. f16
    \barNumberCheck 185
    g2~ g8. g16 f8. g16
    a2 a\rest
    \up \stemDown a8\rest c16\rest d es8. f16 g2
    e8\rest e16\rest f g8. a16 \tieDown b2~
    b2 a
    \barNumberCheck 190
    f2 c4\rest c8\rest f
    \slurDown f2( g~)
    g2 c,4\rest c8\rest d
    \down \hh g,1
    \hh \stemUp f2 a4\rest a8\rest a16\rest f
    \barNumberCheck 195
    g8. \up \stemDown f'16 es8. d16 es8. \down \stemUp b16 as8. g16
    \tieUp c2~ c4. e16\rest c
    b4. e16\rest c d2
    s1 * 5
    s2 a4\rest a8\rest c16\rest b
    b4 b as <<
      { \stemUp \shiftOff as4 \slurUp as2( g) \fermata }
      \\
      { \stemUp \shiftOn f4 \shiftOff es1 }
    >>

  }
}

bassP = \new Voice {
  \relative g {
    \globalP
    \stemDown \tieDown
    g2 r4 r8 b8
    b1~
    b2 r4 r8 f
    es1
    \barNumberCheck 5
    r2 r4 r8 r16 g
    f2 r4 r8 r16 f
    g4. r16 f g4 h,\rest
    h4\rest h8\rest h16\rest f' g4 d\rest
    d4\rest d8\rest d16\rest f c4 h\rest
    \barNumberCheck 10
    g4\rest g8\rest g16\rest f f'4 r8 r16 \stl #9.1 f
    b,2 g\rest
    h8\rest h16\rest b c8. d16 es2~
    es2 \tieUp d~
    d4 r r8 r16 g a8. b16
    \barNumberCheck 15
    c2 f~
    f1
    f,4~ f16 es d c \stemUp b4. \stemDown as'!8
    as2( g)
    d'4~ d16 c h a g4. f8
    \barNumberCheck 20
    \slurDown \tieDown \hrrr f2( es~)
    \hrr es4. d16\rest es d2
    es2 r
    r8 r16 g f8. es16 f8. c16 d8. es16
    b8. es16 g8. a16 b4. r16 b
    \barNumberCheck 25
    \tieUp b1~ \startTrillSpan
    b1~
    b8. \stopTrillSpan as16 g8. f16 g8. es16 d8. \prall c16
    b8. g'16 f8. es16 f2~
    f4. r16 f es4. r16 g
    \barNumberCheck 30
    as2 h,4\rest h8\rest h16 \rest f'
    g4 g es b
    b1
    r4 as'-. f-. es-.
    d4_. es_.d2\rest
    \barNumberCheck 35
    r4 as'-. f-. es-.
    \stemDown d4_. es_.d2\rest
    r4 es'-. c-. b-.
    a4-. b-. r2
    r4 es-. c-. b-.
    \barNumberCheck 40
    a4-. b-. r4 b
    es4 d es c
    d4 c d b
    c4 b c g
    a4 g a f
    \barNumberCheck 45
    b,4 c des b
    f'4 g a f
    b4 c des b
    c4 b a f
    b4 es, f2
    \barNumberCheck 50
    b,2 r
    \tieDown f'4~ f16 es d c \stemUp b4. \stemDown b'8
    b2 a \prall
    c8. b16 a8. g16 f4. es8
    \slurUp es2( d) \prall
    \barNumberCheck 55
    r8 b16 c d es f g \tieUp as!2~
    as8 g16 as b as g f g4 r
    r8 es16 f g as b c des2~
    des8 c16 des es des c b c8. d16 b4
    c2 d,4\rest d8\rest d16\rest as'
    \barNumberCheck 60
    g2 r4 d8 \rest d16 \rest g
    f2 r4 d8 \rest d16 \rest g
    as4. f16\rest g \tieDown as2~
    as4. f16\rest g as4. f16\rest f
    g2 h,4\rest h8\rest h16\rest d
    \barNumberCheck 65
    es2 r
    h8\rest h16\rest c d8. es16 f4. d16\rest es
    d2 es~
    es8. es16 f8. g16 \stemUp \hr \dotsDown as!8. \up \stemDown es'16 d8. c16
    g'8. \down \stemUp \dotsUp h,16 c8. d16 g,2~
    \barNumberCheck 70
    g1~
    \stemDown g4 d es f~
    f4 es d g
    c4 b! a b
    c4 b a d,
    \barNumberCheck 75
    g4^\markup { \with-color #white \fontsize #4 "M"} b c, h\rest % some extra space between systems
    f'4 es d r
    g2~ g8 r r4
    \stemNeutral \tieNeutral r8 c4 c8~ c16 b! as g f es d c
    h16 d h d c es c es c f c f h, f' h, f'
    \barNumberCheck 80
    c16 f es d es g es g f, g' f es f as f as
    b,16 es d c d f d f es, f' es d es g es g
    as,16 g' f es f es d c b as' g f g f es d
    c16 b' as g as g f es d c' b as b as g f
    es4 f g as~
    \barNumberCheck 85
    as 4 g f b
    es,8[ b' es d] c[ es a, c]
    f,8[ c' f es] d[ f b, d]
    g,4 es f g
    f8 b, d'2 c4
    \barNumberCheck 90
    b4 r8 d es[ d c b]
    a8[ b a g] fis[ d e fis]
    g8 g'4 g8~ g16 f! es! d c b a g
    fis16 a fis a g b g b g c g c fis, c' fis, c'
    g16 c b a b d b d c, d' c b c es c es
    \barNumberCheck 95
    f,16 b as! g as c as c b, c' b as b d b d
    es,16 as g f g b g b as, b' as g as c as c
    des,16 g f e f as f as g, as' g f g b g b
    c,4 r \up \stemDown \dotsDown c'4. \down b8
    b2 \tieDown as~
    \barNumberCheck 100
    as4. f16\rest as g2
    as2 r
    r8 r16 \dotsNeutral c b8. as16 b8. f16 g8. as16
    es8. as16 c8. d!16 es4. r16 \clef "treble" \stemNeutral c
    des8. es16 des8. c16 des8. b'16 es,8. des16
    \barNumberCheck 105
    c8. des16 c8. b16 c8. as'16 c,8. b16
    \clef "bass" as8. b16 as8. g16 as8. f'16 b,8. as16
    g8. as16 g8. f16 g8. es16 g8. b16
    \clef "treble" es8. f16 es8. des16 es8. as,16 c8. es16
    as4~ as16 g f es des8. b'16 es,8. des16
    \barNumberCheck 110
    c8. des16 es8. as,16 \clef "bass" c8. b16 as8. g16
    \slurDown g2( as)
    r4 des-. b-. as-.
    g4-. as-. r2
    r4 des-. b-. as-.
    \barNumberCheck 115
    g4-. as-. r2
    r4 as-. f-. es-.
    d4_. es_. h2\rest
    r4 as'-. f-. es-.
    d4_. es_. b4\rest s
    \barNumberCheck 120
    s1 * 9
    es2 d\rest
    \barNumberCheck 130
    \tbeOff \stemDown b'8 es4 \tieUp es8~ es16 d c b as g f es
    d16 f d f es g es g es as es as d, as' d, as'
    g4 f \tieDown es2~
    es4 d c2
    b4 f'~ f16 f es d es g es g
    \barNumberCheck 135
    c2 b
    as2 b4 c
    f,4 g as f
    es1
    d1
    \barNumberCheck 140
    c2~ c4 h8\rest f'~
    f2 d4\rest g
    f4 b g f~
    f8[ a, b c] d[ b c d]
    es[ d es f] g[ es f g]
    \barNumberCheck 145
    as2 ~as4 d,\rest
    r4 g as g~
    g8 d\rest d4\rest d2\rest
    r8 c'[ f, g] a[ f g a]
    \tieUp b2~ b8[ g a b]
    \barNumberCheck 150
    c4 f, g f
    b4 <<
      \new Voice { \up \stemDown \shiftOff f'16 g f e f es des c \down \stemUp b as g f }
      \new Voice { r r2 }
    >> e16 g e g f as f as f b f b e,! b' e, b'
    \tieUp as2~ as4 des~
    des4 c b2
    \barNumberCheck 155
    c4 \tieDown as~ as16 c b as g b g b
    es,8 g \tieUp c4~ c16 es d! c b as g f
    es8. f16 g4 \tieDown as2~
    as4 g f2
    es16 d c b c b as g f16 es' d c d c b as
    \barNumberCheck 160
    g16 f' es d es d c b a ges' f es f es des c
    \stemNeutral \tieNeutral b4 c des es~
    es des c f
    b,8[ f' b as!] g![ b e, g]
    c,8[ g' c b] as[ c f, as]
    \barNumberCheck 165
    des,4 b c des
    c8 f, \stemDown \tieDown as'2 g4
    f4 r8 as~ as[ as g f]
    \stemNeutral es16 f es d es g f es d c h a g f es d
    c8 c''4 \tieUp c8~ c16 b! as! g f es d c
    \barNumberCheck 170
    h16 d h d c es c es c f c f h, g' h, g'
    c,16 f es d es g es g f, g' f es f as f as
    b,16 es des c des f des f es, f' es des es g es g
    as,16 des c b c es c es d,! es' d! c d f d f
    g,4 r \stemUp g'4. \stemDown g8
    \barNumberCheck 175
    g1
    b2 r4 r8 f
    es1
    r2 r4 r8 r16 g
    f2 r4 r8 r16 f
    g4. r16 f g4 r
    r4 r8 r16 f g4 r
    r4 r8 r16 f c4 r
    r4 r8 r16 f, f'4 r8 r16 \stl #9 f
    b,2 r
    r8 r16 b c8. d16 \tieDown es2~
    es2 \tieUp d~
    d4 r r8 r16 g a8. b16
    c2 f~
    f1
    f,4~ f16 es d c \stemUp b4. \stemDown as'!8
    \slurUp as2( g)
    d'4~ d16 c h a g4. f8
    \slurDown \tieDown \hrrr f2( es~)
    \hrr es4. d16\rest es d2
    es2 r
    r8 r16 g f8. es16 f8. c16 d8. es16
    b8. es16 g8. a16 b4. r16 b
    \tieUp b1~ \startTrillSpan
    b1~
    b8. \stopTrillSpan as16 g8. f16 g8. es16 d8. c16
    b8. g'16 f8. es16 f2~
    f4. r16 f es4. r16 g
    as2 h,4\rest h8\rest h16 \rest f'
    g4 g es b
    b1
  }
}

rightP = {
  \clef "treble"
  <<
    \sopranP
    \altP
  >>
}

leftP = {
  \clef "bass"
  <<
    \tenorP
    \bassP
  >>
}

pedalP = {
  \globalP
  \clef "bass"
  \relative es {
    es2 r4 r8 g
    f2~ f8.( as16) g8.( as16)
    d,2 r4 r8 b
    es2~ es8. b16 g8. b16
    \barNumberCheck 5
    es,2 r4 r8 r16 es'
    d2 r4 r8 r16 d
    c2 r4 r8 r16 c
    b2 r4 r8 r16 b
    a2 r4 r8 r16 c
    \barNumberCheck 10
    f,2 r4 r8 r16 a
    b4. r16 a b4. r16 d,
    es4. r16 b' c4. r16 es,
    f4. r16 c' d4. r16 f,
    g4. r16 d' es4. r16 g,
    \barNumberCheck 15
    a4. r16 f' d4. r16 b
    f'2 f,
    b2 r4 r8 b
    h2~ h8. d16( c8. d16)
    g,2 r4 r8 h
    \barNumberCheck 20
    c2~ \stemUp c8. es16( d8. es16)
    \stemNeutral f,2 r4 r8 r16 b
    es,2 r4 r8 r16 es'
    as,2 r4 r8 r16 a
    b2~ b8.( d16) c8.( es16)
    \barNumberCheck 25
    d2 r4 r8 r16 b
    es2 r4 r8 r16 b
    g'2 r4 r8 r16 a,
    b2 r4 r8 r16 as!
    g2 r4 r8 r16 g
    \barNumberCheck 30
    c2 r4 r8 r16 d
    es4 g, as b
    es,1
    R1
    r2 es4-. r
    \barNumberCheck 35
    R1
    r2 es4-. r
    R1
    r2 b'4-. r
    R1
    \barNumberCheck 40
    r2 b4-. r
    R1 * 9
    \barNumberCheck 50
    R1
    b2 r4 r8 b
    c2~ c8. es16 d8. es16
    f,2 r4 r8 f
    b2~ b8. d16 c8. es16
    \barNumberCheck 55
    d2~ d8. c16 d8. b16
    es2~ es8. g16 f8. as16
    g2~ g8. f16 g8. es16
    as2~ as8. b16 g8. as16
    f2 r4 r8 r16 f
    \barNumberCheck 60
    es2 r4 r8 r16 es
    d2 r4 r8 r16 d
    c2 r4 r8 r16 c
    h2 r4 r8 r16 d
    g,2 r4 r8 r16 h
    \barNumberCheck 65
    c4. r16 h c4. r16 es,
    f4. r16 c' d4. r16 f,
    g4. r16 d' es4. r16 g,
    as4. r16 es' f4. r16 a,
    h4. r16 g' es4. r16 c
    \barNumberCheck 70
    g'2 g,
    c4 r r2
    R1 * 23
    \barNumberCheck 95
    R1 * 3
    r2 r4 r8 e
    f2~ f8. as16 g8. as16
    \barNumberCheck 100
    b,2 r4 r8 r16 es
    as,2 r4 r8 r16 as'
    des,2 r4 r8 r16 d
    es2~ es8. g16 f8. as16
    g2 r4 r8 r16 es
    \barNumberCheck 105
    as2 r4 r8 r16 des,
    c2 r4 r8 r16 d
    es2 r4 r8 r16 des
    c2 r4 r8 r16 c
    f,2 r4 r8 r16 f
    \barNumberCheck 110
    as4 c des es
    as,1
    R1
    r2 as4-. r
    R1
    \barNumberCheck 115
    r2 as4-. r
    R1
    r2 es4-. r
    R1
    r2 es4-. r
    \barNumberCheck 120
    R1 * 10
    \barNumberCheck 130
    es4 f g as~
    as4 g f b
    es,4 d c c'
    f,4 g c, f
    b4 d, es g
    \barNumberCheck 135
    as!4 as'2 g4~
    g4 f g as~
    as4 g f b,
    es g, as c
    d4 f, g b
    \barNumberCheck 140
    c4 es, f r
    as!4 r g c
    f, g c, f
    b4 r r2
    R1
    \barNumberCheck 145
    \tbeOff r16 c' b c as b g as f g es f d es c d
    h16 d h d c es c es c f c f h, g' h, g'
    es4 r r2
    R1
    r16 b' a b g a f g es f d es c d b c
    \barNumberCheck 150
    a16 c a c b d b d b es b es a, f' a, f'
    b,4 r r2
    R1
    r16 as' g as f g es! f des es c des b c as b
    g16 b g b as c as c as des as des g, es' g, es'
    \barNumberCheck 155
    as,2 b
    c2 d!
    es4 d c f
    b,4 c f, b
    es,4 r r2
    \barNumberCheck 160
    R1 * 14
    r2 r4 r8 g
    \barNumberCheck 175
    \tbe c2~ c8. c16 d8. es16
    d2 r4 r8 b
    es2~ es8. b16 g8. b16
    es,2 r4 r8 r16 es'
    d2 r4 r8 r16 d
    \barNumberCheck 180
    c2 r4 r8 r16 c
    b2 r4 r8 r16 b
    a2 r4 r8 r16 c
    f,2 r4 r8 r16 a
    b4. r16 a b4. r16 d,
    \barNumberCheck 185
    es4. r16 b' c4. r16 es,
    f4. r16 c' d4. r16 f,
    g4. r16 d' es4. r16 g,
    a4. r16 f' d4. r16 b
    f'2 f,
    \barNumberCheck 190
    b2 r4 r8 b
    h2~ h8. d16( c8. d16)
    g,2 r4 r8 h
    c2~ \stemUp c8. es16( d8. es16)
    \stemNeutral f,2 r4 r8 r16 b
    \barNumberCheck 195
    es,2 r4 r8 r16 es'
    as,2 r4 r8 r16 a
    b2~ b8. d16 c8. es16
    d2 r4 r8 r16 b
    es2 r4 r8 r16 b
    \barNumberCheck 200
    g'2 r4 r8 r16 a,
    b2 r4 r8 r16 as!
    g2 r4 r8 r16 g
    c2 r4 r8 r16 d
    es4 g, as b
    \barNumberCheck 205
    es,1 \fermata \bar "|."
  }
}

globalFuga = {
  \key es \major
  \time 4/2
  \mergeDifferentlyDottedOn
  \set Score.tempoHideNote = ##t
}

sopranFuga = \new Voice {
  \relative b' {
    \globalFuga
    \stemUp \tieUp \mmrs #2 R\breve
    R\breve
    \mmro #-0.8 R\breve
    R\breve
    \barNumberCheck 5
    R\breve
    \mmro #-1 R\breve
    b1 g2 c
    b2 es1 d2
    es2 b~ b4 as g as
    \barNumberCheck 10
    b4 c d2 c1
    b4c d es f2 c4 d
    es4 f g2~ g2. f4
    es4 c f es d b es2~
    es2 d es1
    \barNumberCheck 15
    a4\rest b as g as f b as
    g2 as1 g2~
    g2 f~ f4 as g f
    es1~ es2 d~
    d2 es f1~
    \barNumberCheck 20
    f4 a b es, d2 c
    b2 \shiftOff \rsto #-0.5 f'\rest \rsto #-0.5 f\rest es
    d2 g f b~
    b2 as1 g2 f1~
    f4 es d c
    \barNumberCheck 25
    d4 b es d c1
    b1 as
    g2 c b es~
    es2 d e f~
    f2 es!1 d2
    \barNumberCheck 30
    c1 b~
    b4 b c d es d es f
    g4 f g as b c b as
    g4 es as2~ as g~
    g2 f~ f es~
    \barNumberCheck 35
    es2 des1 c4 f
    d!4 b es1 d2
    \bar "||" \time 6/4 %\tempo 2. = 50
    es2. f\rest
    \mmrs #4 R1. * 7
    \barNumberCheck 45
    f4\rest b,8 a b c d c d es d es
    c8 b c d c d es d es f es f
    d8 c d es f d es4 b' des,~
    des4 c8 h c es d4 as' c,~
    c4 b8 d c b es2.~
    \barNumberCheck 50
    es4 f es d2.~
    d8 g, c4 h c d c
    b!2.~ b4 c b
    as2 b4 c2 d!4
    es2. d4 g2
    \barNumberCheck 55
    f2.~ f~
    f8 es f g f g as! g as b as b
    g8 f g a g a b a b c b c
    a2 b a \prall
    b2. f\rest
    \barNumberCheck 60
    R1. * 3
    \mmrs #6 R1.
    R1.
    \barNumberCheck 65
    R1.
    \mmrs #4 R1.
    d2.\rest h4\rest f8 e! f g
    as8 g as b as b c b c des c b
    as8 g as b as b c b c d! c d
    \barNumberCheck 70
    es d es f es f g f g as g f
    es8 d es f g4~ g f es~
    es8 c d es f4~ f es as~
    as4 g fis g8 f g as g f
    es8 f es d es d c b c es d c
    \barNumberCheck 75
    b2 b4 es2 e4
    f2 c4 f2 fis4
    g2.~ g4 c2
    b4 \tpos #9 as2~ as4 \tpos #8.9 g2~
    g4 as g~ g f es~
    \barNumberCheck 80
    es4 d! c f2.~
    f8 f es d es4. f8 d4. c8
    \bar "||" \time 12/8
    c4. a'\rest f2.\rest
    \mmro #0.9 R1.
    R1.
    \barNumberCheck 85
    \mmr #8 R1.
    \mmr #6 R1.
    f2.\rest a4.\rest g8 f! g
    c,8 e16 d e c f8 es f b, d16 c d b es4.~
    es4. d g2.
    \barNumberCheck 90
    f4. b2. a4.
    b8 \once \override Rest.extra-offset = #'(0.5 . 0) c\rest c\rest b8 as! b es, g16 f g es as8 g as
    d,8 f16 es f d g2. f4 es8
    d4. d'4.\rest f,2.
    es4.~ es8 des es as, c16 b c as des8 c des
    \barNumberCheck 95
    g,8 b16 as b g c8 b c f, as16 g as f b8 as b
    es,8 f16 g as b c as b c d! e f e f g as f b c b as g f
    e16 g f e d c f4.~ f e
    f4. c'\rest a\rest es~
    es4. des2. c4.
    \barNumberCheck 100
    b8 c16 d! es f g as g f es d c8 d16 es f g as g f es d c
    h16 d c h a g es'4. d2.~
    d4. c16 g a h c d es4.~ es8 d es
    a,8 c16 b c a d c d es d c b4. f'16\rest b, c d es f
    g4.~ g16 b as g f es d c d f es d es d es g f es
    \barNumberCheck 105
    as2. g16 as b as b g c4.~
    c4. b2. as4.~
    as4. g8 f g c, es16 d es c f8 es f
    b,8 d16 c d b \stl #7 es8 a\rest a\rest e'4.\rest es,~
    es4. d! g2.
    \barNumberCheck 110
    f4. b2. a4.
    b2.~ b4. as!~
    as4. g as2.
    g4.~ g16 b as g f es d es f es f d g as g f es d
    c16 d es d es c f g f es d c b c d c d b es4.~
    \barNumberCheck 115
    es2. f4. es
    as2.~ as8 g f~ f es f
    \hh \dotsUp b,4. \mordent d \downmordent es2. \fermata
  }
}

altFuga = \new Voice {
  \relative es' {
    \globalFuga \stemDown \tieDown \dotsDown
    \mmrs #-2 R\breve
    R\breve
    \mmro #-0.8 R\breve
    R\breve
    \barNumberCheck 5
    R1 * 2
    \mmro #-1 R\breve
    \mmro #-1 R\breve
    \mmro #-1 R\breve
    es1 d2 g
    \barNumberCheck 10
    es2 b'1 a2
    b1~ b2 as!~
    as2 g4 as b c d2
    g,2 f2~ f g
    f4 es f2 g f4 es
    \barNumberCheck 15
    d2 es f1
    es4 es' d c d b es d
    c1 d~
    d2 c4 b c1
    b2 c~ c4 es d c
    \barNumberCheck 20
    d2. c4~ c b2 a!4
    b2 \stemUp \shiftOn b g c
    b2 \hh es1 d2
    \stemDown es4 g f es f d es2
    c2 b1 as2~
    \barNumberCheck 25
    as2 g~ g4 g f es
    f4 d g f es2 f~
    f2 es d g
    f2 b1 as2
    g1 f~
    \barNumberCheck 30
    f1~ f4 d es f
    g2 f es4 f g as
    \stemUp b4 as b c d es f2
    \hh es1 f2 \tieUp es~
    es2 b~ \hr b4 \stemDown d es b
    \barNumberCheck 35
    \stemUp c2 \hh b1 as4 c
    b2 b b1
    \bar "||" \time 6/4
    b2. h\rest
    \mmrs #0 R1. * 2
    \barNumberCheck 40
    \mmrs #0 R1. * 3
    \stemDown e,4\rest es8 d es f g f g as g as
    f8 es f g f g as g as b as b
    \barNumberCheck 45
    g4 g2 f4 b a!
    \tieDown g2.~ g4 f2~
    f4 b8 c b as! g as g f g es
    as8 b as g as g f g f es f d
    g8 as g2~ g4 as g
    \barNumberCheck 50
    f2.~ f4 g f
    es4 f g as2.
    g2.~ g~
    g8 g f e f g as g as b as b
    g8 f g a g a b2 es4~
    \barNumberCheck 55
    es4 f, a c8 b c d c d
    b2 g4\rest g\rest f'2
    es4 g,\rest g\rest g\rest g'2~
    g8 g f es d c d es c2
    d2. h\rest
    \barNumberCheck 60
    R1.
    R1.
    e,4\rest es2 d4 g2
    \stemUp \tieUp f4 b2~ b4 a2
    b2 d4\rest b2 as!4
    \barNumberCheck 65
    g2 d'4\rest c2 b4~
    b4 as g f2.~
    \stemDown \tieDown f4 e g c,2 b4
    c2 f4 g2.~
    g4 f2 es!4 as2
    \barNumberCheck 70
    g4 c2~ c4 h2
    c4 c8 d c b! as b as g as g
    f4 b8 c b as g as g f g f
    es8 f es d es c d4 e\rest g
    c2 b!4 a2.~
    \barNumberCheck 75
    a4 g2~ g4 c2~
    c4 a2~ a4 d2~
    d8 c d es c d es d es f es f
    \hh g4. \stemUp c,8 f es d4. f8 es d
    \tpos #0.01 c2.~ \tpos #0.01 c~
    \barNumberCheck 80
    \stemDown c4 h c~ c h d
    g,4 h c2 h
    \bar "||" \time 12/8
    \stemUp g4. h\rest h2.\rest
    \mmro #0.9 R1.
    R1.
    \barNumberCheck 85
    d4.\rest c8 b c f, as16 g as f b8 as b
    es,8 g16 f g es \tieUp as4.~ as \dotsUp g~
    \stl #4.9 g4. fis g g\rest
    \mmr #-2 R1.
    g2.\rest d'16\rest g, as b c d \tieDown es4.~
    \barNumberCheck 90
    \stemDown \stl #4.5 es4. d8 es d~ d es c~ c b c
    f,8 g16 a b c d4. \stemUp c2.
    b4. es2. c4.
    b4. c16 d es d c b \once \override Beam.positions = #'(4.1 . 4.1) a b c b c a b c des c b as
    \stemDown g16 as b as b g as8 e\rest e\rest c2.\rest
    \barNumberCheck 95
    h4.\rest es' \tpos #6.2 \tieUp des2.~
    des8 c c,8\rest c4.\rest g'\rest \tpos #0.5 \stemUp b~
    b4. as \hr g2.
    f4. des'2. \tpos #2 c4.~
    c4. b2. \tieDown as4.~
    \barNumberCheck 100
    as4. \stemDown g2. f4.~
    f4. es f8 as!16 g as f d8 g4~
    g4. c,\rest e2.\rest
    c4.\rest a'!~ a g
    c2. b4. es~
    \barNumberCheck 105
    es4. d es~ es16 d es f d es
    \dotsDown f4.~ f16 es f g f g es4.~ es16 d es f es f
    d16 es f es d c b8 as b g4. as8 g as
    \stemUp f4. \tieUp \dotsUp b~ b16 des c b as g \stl #4.2 as4.
    as2. h16\rest f' es des c b c4.
    \barNumberCheck 110
    \stemDown d!4. d16\rest as' g f es d es2.
    d16 b c d es f g8 f g c, es16 d es c f8 es f
    b, d16 c d b es2. d4.
    es16 f es d es g c,4. b2.
    c2. \stemUp f,8 \override Rest.extra-offset = #'(0.3 . -0.2) h\rest h\rest b4.~
    \barNumberCheck 115
    b4. as~ as g
    f'2.~ f8 es d~ \stemDown \hh d es c
    \hh \dotsUp b4 s8 \stemUp as4. g2.
  }
}

tenorFuga = \new Voice {
  \relative b {
    \globalFuga
    \stemUp b1 g2 c
    b2 \ups es1 d2
    es4 f g as b b, es f
    g4 f es d es c f es
    \barNumberCheck 5
    d2 b'1 as2~
    as2 g~ g4 c, f es
    d4 b c d es2 as
    g1 f
    \downs b,4 as b c d2 b~
    \barNumberCheck 10
    b4 as g f g2 f~
    f1~ f4 g as b
    c2 b es d
    c1 b~
    b1~ b2 c
    \barNumberCheck 15
    b1 c2 b~
    b2 f\rest f1\rest
    \clef "treble" r4 b' as g as f b as
    g1 f
    g1 f2 a
    \barNumberCheck 20
    b4 a g2 f1~
    f4 \ups b, c d es d es f
    g4 f g as! b f2 d4
    \downs b2 es d \clef "treble" d'4\rest b
    as4 g as f g2 f~
    \barNumberCheck 25
    f2 \clef "bass" es2~ es4 es d c
    d4 b es d c2 d~
    d4 f, g as b as b c
    d4 es f2 g4 g, as b
    c4 g c b a2 b~
    \barNumberCheck 30
    b2 as!1 g4 as
    b1~ b2 es
    d2 \ups g f b
    b2 c b1
    as1 g
    \barNumberCheck 35
    f1 es2. as4
    f2 g f1
    \bar "||" \time 6/4
    es2. e\rest
    \mmr #-4 R1.
    \downs d4\rest b8 a b c d c d es d es
    \barNumberCheck 40
    c8 b c d c d es d es f es f
    d8 es d c d b c b c d c d
    b8 c b as b g as g as b as b
    g8 f g as g f es4 es'2~
    es2.~ es4 d2
    \barNumberCheck 45
    es4 es2 d4 g f
    es8 d es f es d c2.
    b4 c\rest c\rest a2.\rest
    \mmr #4 R1.
    c4\rest es8 f es d c d c h c a
    \barNumberCheck 50
    d8 es d c d c h c h a h g
    c4 d es as, f'2~
    f4 es d c2.~
    c2 des4 c f2
    b,8 a b c b c d c d es d es
    \barNumberCheck 55
    c8 b c d c d es d es f es f
    d8 c d es d es f4 b,2~
    b4 es8 f es f g4 c,2~
    c2 b4 g c8\rest a c f~
    f4 c\rest c\rest c\rest b2
    \barNumberCheck 60
    g4 c2 b4 es2~
    es4 d2 \prall es4 es,8 d es f
    g8 f g a g a b a b c b c
    \ups d8 c d es d es f es f g f es
    d8 c d es f4~ f es d
    \barNumberCheck 65
    es8 d es f g4~ g f e
    f4 c2~ c4 \downs b as
    g2.~ g4 f2
    e4 f des' g,2 c4~
    c4 d\rest d\rest c2.\rest
    \barNumberCheck 70
    \mmr #6 \mmro #0.8 R1.
    \mmr #4 R1.
    \mmr #4 R1.
    c4\rest c2 h4 es2
    c4 g'2~ g4 fis2
    \barNumberCheck 75
    g8 f! es f es d c d c b c b
    a8 c f g f es d es d c d c
    h8 a h c a h c h c d c d
    \ups es d es f es f g f g as g f
    es8 f es d es d \downs c des c b c b
    \barNumberCheck 80
    as8 b as g as g f g f es f es
    d4 g2 as4 c8\rest h \ups d f
    \bar "||" \time 12/8
    es4. c\rest e2.\rest
    e4.\rest g8 f g c, es16 d es c f8 es f
    b,8 d16 c d b es8 e\rest e\rest d16 c b c d es f8 e\rest e\rest
    \barNumberCheck 85
    es16 f g f es d c8 des es des4.~ des8 c b
    \dotsDown c4.~ c4 c8 d! f16 es f d b4.
    c8 es16 d es c \downs a4 c8~ c b a b4.~
    b8 as! g as4.~ as8 g f g16 f es f g as
    b16 as b c \ups d es f es f g as b es,4. e\rest
    \barNumberCheck 90
    \downs e4.\rest h'4.\rest d4.\rest es,~
    es4. d \ups g2.
    f4. b2. as4.~
    as4. g8 f g c, es16 d es c f8 es f
    \downs b,4.es16 es, f g as b c4.~ c16 des, es f g as
    \barNumberCheck 95
    b16 c des c des b c des es des es c b2.
    as2.~ as8 c \ups f~ f8 e f
    g4. f c' b
    as2. g
    f2. es4. h4.\rest
    \barNumberCheck 100
    \downs \mmr #8 R1.
    \mmr #8 R1.
    c16\rest g a h c d \clef "treble" es d c d es f g as g f es d c d c b a b
    c8 d es \clef "bass" \stemNeutral a,4. b16 g a b c d \clef "treble" es4.~
    es16 c d es f g as!2. g4.
    \barNumberCheck 105
    f2. \clef "bass" \stemUp \dotsUp es
    d2. c
    b4 c8 d4. es c
    d4. \ups \dotsDown g~ g2.
    f2. b,4 c8\rest e16\rest b' as g f es
    \barNumberCheck 110
    \downs b'4. h\rest d16\rest d c b a g c4.
    f,8 d'\rest d\rest d4.\rest d2.\rest
    h4.\rest c8 b c f, as16 g as f b8 as b
    es,8 g16 f g es as2. g4.~
    g4. f4 es8 \ups d16 es f es f d g4.~
    \barNumberCheck 115
    g4. f4 es8 b'2.
    as4. b~ b16 d, es f g as \ncs #-0.8 b4 as8
    \hrr \dotsDown g4. f4. es2.
  }
}

bassFuga = \new Voice {
  \relative es {
    \globalFuga
    \stemDown \mmr #-2 R\breve
    \mmr #-2 R\breve
    es1 d2 g
    es2 b'1 a2
    \barNumberCheck 5
    b4 c d es f f, c' d
    es4 es, f g as1~
    as4 g as b c b c d
    es4 d c b as f b as
    g4 f g as b b, es f
    \barNumberCheck 10
    g4 f es d es c f es
    d4 c b c d es f2
    c4 d es f g as \tieDown \dotsDown b2~
    b2 as2~ as g4 es
    f2. b,4 es f g a
    \barNumberCheck 15
    f2 d\rest d1\rest
    \mmr #-4 R\breve
    \mmr #-6 \mmro #-0.6 R\breve
    \mmr #-6 \mmro #-0.5 R\breve
    a'4\rest f' es d es c f es
    \barNumberCheck 20
    d2. g,4 a b c2
    d2 r r1
    r1 \clef "bass" b1
    g2 c b es2~
    es2 d es f
    \barNumberCheck 25
    b,2 c4 b as1~
    as2 g~ g4 f es d
    es2. f4 g2. as4
    b2. as4 g2 f
    c1 d4 c d es
    \barNumberCheck 30
    f4 c f es d b es2~
    es4 d es f g2 es
    b'1 ~b
    es2. as,4 f2 g
    c2 r4 f, g as b es
    \barNumberCheck 35
    c4 as des c b g c as
    \tieUp b1~ b4 c b as
    \bar "||" \time 6/4
    g4 es8 d es f g f g as g as
    f8 es f g f g as g as b as b
    g8 f es f g a! b4 f \tieDown b~
    \barNumberCheck 40
    b4 a8 g a b c4 g a
    b4 f8 es f g as!4 es f
    g4 d8 c d es f4 c d
    es2 d4 c c' b
    as g as f b b,
    \barNumberCheck 45
    es8 d es f g a b2.~
    b2.~ b4 a2
    b4 d,\rest d\rest d2.\rest
    \mmrs #-2 R1.
    R1.
    \barNumberCheck 50
    R1.
    d4\rest as'!8 b! as g f g f es f d
    g8 as g f g f e f e d e c
    f2.~ f2 f4
    g2.~ g
    \barNumberCheck 55
    a2.~ a
    b2. d,4\rest d b
    es4 d\rest d\rest d\rest e c
    f4 d g es! f2
    b4 b,8 a b c d c d es c d
    \barNumberCheck 60
    es8 d es f es f g f g as g as
    b8 as b c b as g as b4 g
    es 4 h\rest c g' d\rest es
    b'4 r g d es f
    \stemUp b,4 \stemDown b'8 c b as! g as g f g f
    \barNumberCheck 65
    es8 g c des c b as b as g as g
    f8 g f es f es des es des c des c
    b8 as b des c b as4 des2
    c4 f2~ f4 e!2
    f2 g 4 as r f
    \barNumberCheck 70
    c'4 r as es f g
    c,4 h\rest h\rest h2.\rest
    \mmrs #0 R1. * 3
    \barNumberCheck 75
    R1. * 2
    h4\rest g'2 es4 as2
    g4 c2~ c4 h2
    c2 b!4 as2 g4
    \barNumberCheck 80
    f2 es4 d2 c4
    h4 g c f g2
    \bar "||" \time 12/8 \tempo 4. = 64
    c,8 es g c b! c f, as16 g as f b8 as b
    es,8 g16 f g es b'2. \tieUp as4.~
    as4. g16 f es f g as b8 r r as16 g f g as b
    \barNumberCheck 85
    c4 b8 as4.~ as8 g f g4.~
    g8 f es f es f \stemNeutral b, d16 c d b es8 d es
    a,8 c16 b c a \stemDown d8 c d g,4. h\rest
    R1.
    d2.\rest r4. r16 f' es d c b
    \barNumberCheck 90
    a16 f g a b c \clef "treble" d b c d es f g as! g f es d \clef "bass" c4.
    \tieDown b2.~ b4. as~
    as4. g8 as b c4 g8 as g as
    b4. r r2.
    R1.
    \barNumberCheck 95
    R1.
    R1.
    r4. d!8 c d g, b16 as b g c8 b c
    f,8 as16 g as f b8 as b es,!8 g16 f g es as8 g as
    des,8 es16 f g a b c b as g f g es f g as b c b as b c des
    \barNumberCheck 100
    es2. as,
    g4. as8 g as d,8 f16 es f d g8 f g
    c,8 h\rest h\rest f'4.\rest a2.\rest
    \mmr #-4 R1.
    \mmr #-4 R1.
    \barNumberCheck 105
    a2.\rest d,4.\rest c'8 b c
    f, as16 g as f b8 as b es, g16 f g es as8 g as
    f8 g as b2. as4.~
    as4. g16 es f g as b \tieUp \dotsUp c4.~ c16 des c b as g
    as16 b as g f es f as g f es d es4. r
    \barNumberCheck 110
    \clef "treble" e'16\rest g f es d c b4. c\rest e16\rest g f es d c
    d8 e\rest e\rest e4.\rest e2.\rest
    \mmr #-6 R1.
    g,4.\rest f'8 es f b, d16 c d b es8 d es
    as,2. b4. \clef "bass" b8 as b
    \barNumberCheck 115
    es,8 g16 f g es as8 g as d,16 b c d es f g es f g as b
    c16 as b c d es f g f es d c b4.~ b8 es4~
    es8 g, as b4. b2. \fermata
  }
}

rightFuga = {
  \clef "treble"
  <<
    \sopranFuga
    \altFuga
  >>
}

leftFuga = {
  \clef "bass"
  <<
    \tenorFuga
    \bassFuga
  >>
}

pedalFuga = {
  \globalFuga
  \clef "bass"
  \relative b, {
    R\breve * 9
    \barNumberCheck 10
    R\breve * 4
    b1 g2 c
    \barNumberCheck 15
    b2 es1 d2
    es2 f b, c
    as1 b
    c4 b' a g a f b a
    g2 c a f
    \barNumberCheck 20
    b4 f g es f2 f,
    b2 r r1
    R\breve * 8
    \barNumberCheck 30
    R\breve
    b1 g2 c
    b2 es1 des2~
    des4es des c des b es des
    c4 b c d! es f g es
    \barNumberCheck 35
    as4 f b as g es as2~
    as2 g4 es b'2 b,
    \bar "||" \time 6/4
    es,2. r
    R1. * 44
    \bar "||" \time 12/8
    \barNumberCheck 82
    R1. * 10
    r4. g'8 f g c, es16 d es c f8 es f
    b,8 d16 c d b es2. des4.~
    des4. c f2.
    \barNumberCheck 95
    es4. as2. g4.
    as4. f des2.
    c4.~ c4 h8 c4. c,
    f4. r r2.
    R1.
    \barNumberCheck 100
    R1.
    r4. c'2. h4.
    es2. c4. g'~
    g4. fis g r
    r2. r4. c8 b c
    \barNumberCheck 105
    f, as16 g as f b8 as b es, g16 f g es as8 g as
    d,8 f16 es f d g8 f g c, es16 d es c f8 es f
    b,4. r r2.
    r4. es2. c4.
    f2. es4. as~
    \barNumberCheck 110
    as4. g c2.
    b4. r r2.
    R1.
    R1.
    r4. as,2. g4.
    \barNumberCheck 115
    c2. b4. es~
    es4. d es4 f8 g4 as8
    b4. b, es,2. \fermata \bar "|."
  }
}

\bookpart {
  \header {
    title = "Praeludium"
    subtitle = "pro Organo pleno"
    composer = "Johann Sebastian Bach"
    opus="BWV 552"
  }

  \score {
    <<
      \new PianoStaff {
        <<
          \context Staff = right {
            <<
              \context Voice = right \rightP
            >>
          }
          \context Staff = left {
            <<
              \context Voice = left \leftP
            >>
          }
        >>
      }
      \context Staff = pedalP {
        \context Voice = pedalP \pedalP
      }
    >>

    \layout{
      indent = 1.0\cm
    }
  }
}

% Midi outpout Praeludium
\score {
  <<
    \new Staff {
      \set Staff.midiInstrument = "church organ"
      \set Staff.midiPanPosition = #-0.5
      \rightP
    }
    \new Staff {
      \set Staff.midiInstrument = "trumpet"
      \set Staff.midiPanPosition = #0.3
      \rightP
    }
    \new Staff {
      \set Staff.midiInstrument = "church organ"
      \set Staff.midiPanPosition = #0.5
      \leftP
    }
    \new Staff {
      \set Staff.midiInstrument = "trumpet"
      \set Staff.midiPanPosition = #-0.3
      \leftP
    }
    \new Staff {
      \set Staff.midiInstrument = "tuba"
      \set Staff.midiPanPosition = #-0.3
      \transpose c c, \pedalP
    }
    \new Staff {
      \set Staff.midiInstrument = "church organ"
      \set Staff.midiPanPosition = #0.4
      \transpose c c, \pedalP
    }
  >>

  \midi {
    \tempo 4. = 68
  }
}

\bookpart {
  \header {
    title = "Fuga"
    composer = ""
    opus = ""
    copyright = ""
  }

  \score {
    <<
      \new PianoStaff {
        <<
          \context Staff = right {
            <<
              \context Voice = rightFuga \rightFuga
            >>
          }
          \context Staff = left {
            <<
              \context Voice = leftFuga \leftFuga
            >>
          }
        >>
      }
      \context Staff = pedalFuga {
        \context Voice = pedalFuga \pedalFuga
      }
    >>

    \layout{
      indent = 1.0\cm
    }
  }
}

% Midi output Fuga
\score {
  <<
    \new Staff {
      \set Staff.midiInstrument = "recorder"
      \set Staff.midiPanPosition = #-0.5
      \set Staff.midiMaximumVolume = #0.8
      \rightFuga
    }
    \new Staff {
      \set Staff.midiInstrument = "pan flute"
      \set Staff.midiPanPosition = #0.3
      \set Staff.midiMaximumVolume = #0.7
      \transpose c c' \rightFuga
    }
    \new Staff {
      \set Staff.midiInstrument = "recorder"
      \set Staff.midiPanPosition = #0.5
      \set Staff.midiMaximumVolume = #0.8
      \leftFuga
    }
    \new Staff {
      \set Staff.midiInstrument = "pan flute"
      \set Staff.midiPanPosition = #-0.3
      \set Staff.midiMaximumVolume = #0.7
      \transpose c c' \leftFuga
    }

    \new Staff {
      \set Staff.midiInstrument = "recorder"
      \set Staff.midiPanPosition = #-0.3
      \set Staff.midiMaximumVolume = #1
      \transpose c c, \pedalFuga
    }
    \new Staff {
      \set Staff.midiInstrument = "pan flute"
      \set Staff.midiPanPosition = #0.4
      \set Staff.midiMaximumVolume = #0.9
      \pedalFuga
    }
    \new Staff {
      \set Staff.midiInstrument = "recorder"
      \set Staff.midiPanPosition = #-0.7
      \set Staff.midiMaximumVolume = #0.8
      \transpose c c' \pedalFuga
    }
  >>

  \midi {
    \tempo 2 = 90
  }
}