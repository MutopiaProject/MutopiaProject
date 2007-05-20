\version "2.10.23"

\header {
   title = "Fantasia et Fuga"
   composer = "Johann Sebastian Bach, BWV 542"
 mutopiatitle = "Fantasia et Fuga in g"
 mutopiacomposer = "BachJS"
 mutopiaopus = "BWV 542"
 mutopiainstrument = "Organ"
 source = "8657, C. F. Peters, Leipzig"
 style = "Baroque"
 copyright = "Public Domain"
 maintainer = "Urs Metzger"
 maintainerEmail = "urs@ursmetzger.de"
 lastupdated = "2007/may/18"

 title = "Fantasia et Fuga in g"
 composer = "Johann Sebastian Bach, BWV 542"
 footer = "Mutopia-2007/05/20-984"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\include "deutsch.ly"

\paper {
   left-margin = 0.7 \cm
   right-margin = 0.7 \cm
   page-top-space = 0 \cm
   before-title-space = 0 \cm
   after-title-space = 0 \cm
   ragged-bottom = ##f
   ragged-last-bottom = ##f
}

#(set-default-paper-size "a4" 'landscape)
#(set-global-staff-size 18)
#(define set-script-property (lambda (script property value)
   (append! (cdr (assoc script default-script-alist))
      (list (cons property value)))))
#(set-script-property "mordent" 'avoid-slur 'outside)
#(set-script-property "prall" 'avoid-slur 'outside)
#(set-script-property "prallprall" 'avoid-slur 'outside)

diffdot           = { \override Staff.NoteCollision #'merge-differently-dotted = ##t }
forceshift        = { \once \override NoteColumn #'force-hshift = #1 }
halsdown          = { \stemDown \tieDown \slurDown }
halsneutral       = { \stemNeutral \tieNeutral \slurNeutral }
halsup            = { \stemUp \tieUp \slurUp}
mmrestdow         = { \once \override MultiMeasureRest #'extra-offset = #'(0 . -1) }
mmrestdown        = { \once \override MultiMeasureRest #'staff-position = #-2 }
mmrestdownn       = { \once \override MultiMeasureRest #'staff-position = #-4 }
mmrestdownnn      = { \once \override MultiMeasureRest #'staff-position = #-6 }
mmrestdownnnn     = { \once \override MultiMeasureRest #'staff-position = #-8 }
mmrestup          = { \once \override MultiMeasureRest #'staff-position = #4 }
mmrestupp         = { \once \override MultiMeasureRest #'staff-position = #6 }
mmrestuppp        = { \once \override MultiMeasureRest #'staff-position = #8 }
staffdown         = { \change Staff = "left" \halsup }
staffup           = { \change Staff = "right" \halsdown }
shifttiedown      = { \once \override Tie #'extra-offset = #'( 0 . -0.5 ) }
shifttieup        = { \once \override Tie #'extra-offset = #'( 0 . 0.5 ) }
shifttieupp       = { \once \override Tie #'extra-offset = #'( 0 . 1 ) }
shifttieuppp      = { \once \override Tie #'extra-offset = #'( 0 . 1.5 ) }
shifttieupppp     = { \once \override Tie #'extra-offset = #'( 0 . 2 ) }
oben              = { \staffup \halsup }
unten             = { \staffdown \halsdown }

global = {
   \key g \minor
   \time 4/4
   #(set-accidental-style 'default)
   \override DynamicText #'transparent = ##t
   \override TupletNumber #'transparent = ##t
   \override TupletBracket #'transparent = ##t
}

sopranForte = {
   \new Voice \relative g'' {
      \global
      \once \override Script #'extra-offset = #'(0 . 0.7) % Mordent etwas h�her
      g8~[\mordent g32 b a g] fis[ g fis g g16.\prallprall \times 2/3 { fis64 g a] }
               es8~[ es32 f es d] c[ d c d d16.\prallprall \times 2/3 { c64 d es] }
      h8[ g32 h a! g] d'[ c h f' es d as' g] f8[ es32 d c h!] c[ g c d es c d es]
      g,8[ fis32 a c es] d[ c c'16~ c32 b! a g] fis[ g a c, d es a, b] c[ fis,! g a c, es d c] \break
      b32 \unten g[ fis g a b] \oben c d es c \unten g[ a h c] \oben d es
          f! d \unten g,[ h c d] \oben es f g es \unten c[ h! c]\oben es f g
      %% Takt  5 ==================================================
      as32 f d \halsdown c[ h] \halsup d' as g f[ d' g, f es] \halsdown d c h
          c \halsup fis[ c \staffdown b! a!] \halsdown g fis e fis \halsup a[ d, c b] \halsdown a g fis
      g32[ d e fis g a b c] b g b d \halsup g32 b a g
          \oben es'![ g, a h c d es f!] es \halsdown c[ es g] \halsup c[ es d c]
      a'32 \halsdown c,,[ d e] fis \halsup g[ a b] a \halsdown fis[ a c] es! \halsup fis[ g a]
          b[ a g f es d cis d] cis[ e g b a g fis e]
      fis32[ es! d c! a'8~] a g~ g2~
      g8 fis s4 s2
      %% Takt 10 ==================================================
      s1*4
      s4 r8 r32 a,,[ h cis! d e f g a b! a g] \shifttieupppp e'4~
      %% Takt 15 ==================================================
      e8[ d] d32\rest h[ ais h h16.\prallprall ais64 h ] d32[ h ais h h16.\prallprall ais64 h ] \shifttieupp as'4~
      as8[ g]~ g32[ f es d es g h,16] c32[ d c h c es g,16] as32[ b as g as c es16]
      c'8\rest es, \shifttieuppp d4~ d~  \override Stem #'details #'beamed-lengths = #'( 4.5 ) d8 c~ \revert Stem #'details #'beamed-lengths
      c4~c16[ c' b32 a b c] fis,16[ es!8 d16] cis[ b' a32 g a b]
      es,16 d8 c!16 b8 f'32\rest b, a g cis8[ d] e[ g,~]
      %% Takt 20 ==================================================
      g8 fis d'16\rest d,32[ e fis!16 fis32 g] a16[ a32 b c!16 c32 d] e'8\rest ges,~
      ges4~ ges8 f~ f8 es~ as4
      b4 as~ as8 ges16 f ges4~
      ges8 f~ f4~ f8. es16 g4~
      g8 f f16\rest f,32[ g as b! c d!] es![ d c h c fis g a!] g[ fis e d] d'16 fis,
      %% Takt 25 ==================================================
      fis8 g s4 s2
      s1 \break
      s1*3
      %% Takt 30 ==================================================
      s1 \break
      s4 a, b h
      c2~ c4 c
      des4 d es2~
      es2 des
      %% Takt 35 ==================================================
      fes4 fes8\rest fes dis4 \shifttieup e~ \break
      \shifttieup e4~ \override Stem #'details #'beamed-lengths = #'( 3.9 ) e8 dis~ dis~ e~ e[ dis] \revert Stem #'details #'beamed-lengths
      e4 fis~ \override Stem #'details #'beamed-lengths = #'( 4.3 ) fis8 e16 dis \revert Stem #'details #'beamed-lengths e4~
      \override Stem #'details #'beamed-lengths = #'( 3.9 ) e8 d! \revert Stem #'details #'beamed-lengths fis4~ fis8 e16 fis gis4~
      gis16 g! f! as g f es! d \shifttieup es2~ \break
      %% Takt 40 ==================================================
      es4 d~ d16 c b d c b a g
      fis8 a g b~ b16[ \tieDown es~ es32 d c h] c[ b as g as c b as]
      g32[ fis es'8 d32 cis] \halsneutral b'[ as g fis g a fis g~] g[ a b16~ b32 a g fis ] \halsup g[ f e f es d cis! d~] \break
      d16[ c!32 h c8~] c32[ b a16 b32 a g16~] g32[ fis! e! fis g c a16] g8 fis16. g32
      g4 d'32\rest e,![ dis e e16.\prallprall dis64 e ] b'!32[ e, dis e e16.\prallprall dis64 e ] des'4~
      %% Takt 45 ==================================================
      \override Stem #'details #'beamed-lengths = #'( 4.4 ) des8 c~ \revert Stem #'details #'beamed-lengths
            c32[ b as! g as c e,16] f32[ g f e f as c,16] des32[ es des c des f as16] \break
      f'8\rest as, \shifttieupppp g4~ g32[ f' es d es g h,16] c4~
      c32[ b! c d c es fis,16] g32[ b a g a c b a] b[ g a b c d e fis] \shifttieup g4~
      \shifttieup g4~ g8 g\rest g4\rest g8\rest \once \override Stem #'length = #'7.5 fis!
      g1
    }
}

sopranPiano = {
   \new Voice \relative f'' {
      \global
      \halsup
      s1*4
      %% Takt  5 ==================================================
      s1*4
      s4 f8\rest f!16\f d h c d4.~
      %% Takt 10 ==================================================
      d8 c16 h c d es8~ \shifttieup es4~ es8 d16 c
      c8 b!16 a b8 g'16 es! cis d e8~ \shifttieup e4~
      e8 d16 cis d e f8~ f8 e16 d e cis! d8~
      d16 h cis e a,4~ a4 r16 f e! d
      d8[ cis] s4 s2
      %% Takt 15 ==================================================
      s1*5
      %% Takt 20 ==================================================
      s1*5
      %% Takt 25 ==================================================
      s4 f'4\rest f8\rest b!16 g e f! g8
      c,16 e f8~ f16 g as8~ as4. g16 f
      f8 es!16 d es8 c'8\rest c\rest c16 a! fis g a8
      d,8 b'~ b16 a g f! es!2~
      es8 d16 c b c d8~ d8 c4.~
      %% Takt 30 ==================================================
      c4~ c16 c b a b fis! g b cis4
      d4
    }
}

altForte = {
   \new Voice \relative b' {
      \global
      \staffdown
      b4 a'\rest a, a'\rest
      as,4 a'\rest c, a'\rest
      es,4 c\rest es c\rest
      s1
      %% Takt  5 ==================================================
      s1*3
      \staffup \halsup s4 s32 \diffdot d'16.~\noBeam \shiftOn d8 e2~
      e8[ d] \shiftOff \staffdown  s4 s2
      %% Takt 10 ==================================================
      s1*4
      \staffup \halsup \shiftOn s2 s4 g,8\rest cis~
      %% Takt 15 ==================================================
      cis h c,4\rest c\rest d'8\rest f!~
      f8 es!g,4\rest e2\rest
      d'8\rest c b[ c] b4~ b8 a~
      a4 e4\rest e2\rest
      \halsdown e4\rest c32\rest a' g fis g8 r32 b a g r32 b a g g8\rest \halsup es!~
      %% Takt 20 ==================================================
      es8 d c4\rest c\rest a''8\rest \halsdown es16 d
      es4~ \halsdown es8 d~ d es~ es[ d]
      es4 f~ f8 es16 d es4~
      es8 des16 c h4~ h16 h c8~ c des!~
      des8 c e,4\rest r4 r8 r16 c'
      %% Takt 25 ==================================================
      c8 h s4 s2
      s1*4
      %% Takt 30 ==================================================
      s1
      s4 \shiftOn fis g2~
      g4 g as a
      b2~ b2
      \halsup as2~ as2
      %% Takt 35 ==================================================
      \shiftOn des4 b8\rest \halsup des a!4 ais
      h!4 a! g c!
      h!4 c~ \override Stem #'details #'beamed-lengths = #'( 4.0 ) c8 h \revert Stem #'details #'beamed-lengths ais4~
      ais8 h! h\rest c! \tieDown h!4~ \halsdown h8 d~
      d2~ d16 c h d c b a! g
      %% Takt 40 ==================================================
      fis8 a~ a16 c b a g8 fis g es
      d2 es 4 r8 es
      d8 \staffdown a a\rest d cis e \staffup r8 g
      a8 fis d e d4~ d8. es16
      \halsup \shiftOn f!8 e! b4\rest b\rest g'8\rest b~
      %% Takt 45 ==================================================
      b8 as e4\rest s2
      g8\rest f  es[ f] es g\rest c,32\rest \halsdown f[ es d es g c,16]
      d4~ d8 d~ d fis! b\rest \halsup \shiftOff es!16 d
      \shiftOn e4~ e8 b\rest b4\rest b8\rest \shiftOn d
      \shiftOff d1
    }
}

altPiano = {
   \new Voice \relative as' {
      \global
      \halsup
      s1*4
      %% Takt  5 ==================================================
      s1*4
      \staffup s4 e4\rest e8\rest as4\f g16 f
      %% Takt 10 ==================================================
      f8 es16 d es8 e8\rest e8\rest c'16 a fis g a8
      d,16 fis g8~ g8 e8\rest e8\rest g16 e cis d e8
      a,16 cis d8 e8\rest a~ a g~ g4~
      g4~ g16 g f e f cis d f \staffdown h,4
      a4 s4 s2
      %% Takt 15 ==================================================
      s1*5
      %% Takt 20 ==================================================
      s1*5
      %% Takt 25 ==================================================
      s4 \staffup g'4\rest g8\rest des'4 c16 b!
      b8  as16 g as8 f'16 d! h c d4.~
      d8 c16 h c d es c fis, g a!8~ a4~
      a8 d16 b g a b8~ b16 g c8~ c16 b a g
      fis8 g16 a b4~ b8 a16 g a fis! g8~
      %% Takt 30 ==================================================
      g16 e fis a d,4~ d4 e16\rest b' a g~
      g16 e fis8
    }
}

altZweiForte = {
   \new Voice \relative g' {
      \global \halsdown
      s1*4
      %% Takt  5 ==================================================
      s1*5
      %% Takt 10 ==================================================
      s1*4
      s2 s4 c,8\rest g'~
      %% Takt 15 ==================================================
      g8 fis s4 s4 g8\rest h!~
      h8 c s4 s2
      s1*2
      s2 s4 a,8\rest cis~
      %% Takt 20 ==================================================
      cis8 \forceshift d s4 s2
      s1*4
      %% Takt 25 ==================================================
      s1*5
      %% Takt 30 ==================================================
      s1
      s1
      s1
      s1
      c4\rest es fes f
      %% Takt 35 ==================================================
      g!4 e8\rest g fis4 e8 fis
      g4~ g8 fis \staffdown e4 \staffup fis
      g4 << \new Voice { \halsup \shiftOnn a~ \override Stem #'details #'beamed-lengths = #'( 4.0 ) a8[ e] \revert Stem #'details #'beamed-lengths }
            \new Voice { \halsdown fis4 s4 } >> g4~
      g8 fis fis\rest a! gis4 s4
      s1
      %% Takt 40 ==================================================
      s1*4
      \halsdown \forceshift d8 cis! s4 s4 c8\rest e!~
      %% Takt 45 ==================================================
      e8 f s4 s2
      c16 h8. c8 d c c\rest s4
      s2 s4 es8\rest \halsup \halsdown b'~
      b16 a b a b8 es,\rest d4\rest es8\rest << \new Voice { \shiftOnn \stemUp c' }
                                                \new Voice { \stemDown a } >>
      \shiftOff h1
    }
}

tenorForte = {
   \new Voice \relative g' {
      \global
      \halsup \shiftOn
      g4 b\rest fis b\rest
      f!4 b\rest g b\rest
      \clef "bass" c,4 d,\rest c' d,\rest \shiftOff
      s1
      %% Takt  5 ==================================================
      s1*3
      \staffup r8 r32 c'' b a b[ d c b~ b8~] b2~
      b8 a s4 s2 \staffdown
      %% Takt 10 ==================================================
      s1*4
      s4 r r c,8\rest << \new Voice { \halsup \shiftOn g!8 s8 } \new Voice { \halsup b!8~
      %% Takt 15 ==================================================
      b8[ h] } >> a4\rest a\rest c8\rest d~
      d8[ c] a4\rest s2
      \staffup g'16 fis8. g8 a g fis g4
      fis4 s4 \staffdown a,8\rest fis \noBeam g a\rest
      a8\rest a \noBeam b a\rest a4\rest a8\rest b~
      %% Takt 20 ==================================================
      b8 a a4\rest \staffup c\rest es'!16 d \staffdown \clef"treble" c8
      b4 ces b as!
      ges \shifttieup f~ f8 ges! b\rest a!
      b4 r16 as g! f g4 r8 e~
      e8 f s4 s4 s8 d
      %% Takt 25 ==================================================
      d4 s4 s2
      s1*4
      %% Takt 30 ==================================================
      s1
      s4 b4\rest b\rest d
      es4 e f2~
      f4 f es b
      ces4 c des2~
      %% Takt 35 ==================================================
      d4 b\rest s2
      s2. fis'4~
      fis8 e \staffdown <<
         \new Voice { \halsup dis8 a16 c \staffup dis8 \forceshift g16 fis \staffdown e4 }
         \new Voice { \halsdown s8 \shiftOn a,~ \stemUp a a\rest a\rest cis8~
                      cis8[ h] } >> a8\rest fis' h, e! d!4~
      d4 a\rest s2
      %% Takt 40 ==================================================
      s1*4
      s2 s4 a8\rest b
      %% Takt 45 ==================================================
      c4 a\rest f2\rest
      s1
      s2 s4 s8 \staffup \staffdown g'16 f!
      e4~ e8 s8 s4 a,8\rest << \new Voice { \stemUp d8 } \new Voice { \stemUp \shiftOn a8 } >>
      <d g,>1
    }
}

tenorPiano = {
   \new Voice \relative d {
      \global
      \halsup
      s1*4
      %% Takt  5 ==================================================
      s1*5
      %% Takt 10 ==================================================
      s1*3
      s2 s8 s16 d\f \shiftOn gis4
      \shiftOff \halsdown a4 s4 s2
      %% Takt 15 ==================================================
      s1*5
      %% Takt 20 ==================================================
      s1*5
      %% Takt 25 ==================================================
      s1*5
      %% Takt 30 ==================================================
      s2 \halsup g16 a b g e'4
      d4
   }
}

bassForte = {
   \new Voice \relative d' {
      \global
      \halsdown
      d4 c\rest c c\rest
      d4 c\rest c c\rest
      a4 e,\rest a' e,\rest
      s1
      %% Takt  5 ==================================================
      s1
      s1
      s1
      s4 r8 r32 f''! es! d cis[ b! a g e' cis b a] g[ b a g cis e d cis]
      d4 s4 s2
      %% Takt 10 ==================================================
      s1
      s1
      s1
      s1
      s4 r r r8 e,!
      %% Takt 15 ==================================================
      e8 fis b,4\rest b\rest d8\rest f
      g4 b,4\rest r2
      r8 c' d a b d16 c b g c d32 es
      a,4 r b,8\rest d \noBeam e b\rest
      b8\rest fis' \noBeam g b,\rest b4\rest b8\rest g'~
      %% Takt 20 ==================================================
      g8 a b,4\rest r2
      \clef "treble"  r16 es'32[ f ges f es16] as4 ges! \shifttiedown f~
      f8[ es~] es[ d16 es32 c] d8 es es\rest es
      f2 r8 g,~ g16 as b!8~
      b8 as r4 r r8 \clef "bass" a!
      %% Takt 25 ==================================================
      g4 s s2
      s1*4
      %% Takt 30 ==================================================
      s1
      s4 b,\rest b2\rest
      R1
      r4 f' ges g
      as2~ as2
      %% Takt 35 ==================================================
      b4 b,\rest r2
      r16 e32[ fis g fis e16] c'4 h a~
      a8 g fis4~ fis8 h,\rest h\rest e!
      fis4 h,8\rest fis' gis4~ gis16 g f es!
      d4 h4\rest r4 \halsneutral c'~
      %% Takt 40 ==================================================
      c16 b a c b a g fis g4. c8~
      c16 b a c b a g fis g4 r8 c
      a8 fis b,8\rest b' e, g r b
      a4~ a8 g16 a b8 a16 g a b c8
      h8 b r4 r b,8\rest \halsdown g'~
      %% Takt 45 ==================================================
      g8 as b,4\rest b2\rest
      r8 f' g d es r r4
      r4 r8 a g a r g~
      g16 fis g fis g8 r8 r4 b,8\rest d
      d1 \bar "|."
    }
}

bassPiano = {
   \new Voice \relative f' {
      \global
      \halsdown
      s1*4
      %% Takt  5 ==================================================
      s1*4
      s4 r r8 \tieNeutral f16\f d h c d8
      %% Takt 10 ==================================================
      g,16 h c8~ c c16 a fis g a8~ a4~
      a8 g16 fis g a b!8~ b4. a16 g~
      g8 f!16 e f g a f d f g8~ g16 a b g
      e8 a16 g f e d cis d e f \tieDown d~ d4
      e4 s4 s2
      %% Takt 15 ==================================================
      s1*5
      %% Takt 20 ==================================================
      s1*5
      %% Takt 25 ==================================================
      s4 r8 \clef "treble" \halsneutral b''!16 g e f! g8~ g4~
      g8 f16 e f8 r r f16 d h c d8
      \clef "bass" g,16 h c8~ c g c es~ es[ d16 c]
      d2~ d8 es16 c a b c8~
      c16 a d8~ d16 c b a g b c8~ c16 d es c
      %% Takt 30 ==================================================
      a8 d16 c b a g fis \halsdown g4~ g16 g fis g
      a4
    }
}

pedalForte = {
   \new Voice \relative g, {
      \global
      \clef "bass"
      g4 r g r
      g4 r g r
      g4 r g r
      g1~
      %% Takt  5 ==================================================
      g1~
      g1~
      g1
      d'1~
      d4 s4 s2
      %% Takt 10 ==================================================
      s1
      s1
      s1
      s1
      s4 r r r8 b
      %% Takt 15 ==================================================
      d,4 r r r8 d'
      es4 r r2
      r8 a b fis g d es4
      d1~
      d1~
      %% Takt 20 ==================================================
      d4 r r r8 a
      b1~
      b2 ces4 c
      des4 d es e
      as,4 r r r8 d,
      %% Takt 25 ==================================================
      g4 s s2
      s1*4
      %% Takt 30 ==================================================
      s1
      s4 d''8 c b a g f!
      es8 d c' b as g f es
      des8 c b' as ges f es des!
      ces b as' ges fes es des ces!
      %% Takt 35 ==================================================
      b4 r8 b c!4 cis
      h1~
      h2 c4 cis
      d4 dis e eis8 f
      h,8 d h g c d es! c
      %% Takt 40 ==================================================
      d8 fis g b,! es4. c8
      d4 r8 g, c2~
      c4 r8 b a cis, e g
      fis8 d g cis, d2
      g4 r r r8 g c,4 r r2
      %% Takt 45 ==================================================
      r8 d' es h c g as c
      fis, a'! b fis g d es g
      cis,4~ cis16 d es! e f! fis g cis,! d8 d,
      g1
    }
}

pedalPiano = {
   \new Voice \relative d' {
      \global
      s1*4
      %% Takt  5 ==================================================
      s1*4
      s4 d~\f d8 h g h
      %% Takt 10 ==================================================
      es,8 g es c a fis' d fis
      b,!8 d b g e cis' a cis
      f,8 a f d b'2
      \shifttiedown a1~
      a4 s4 s2
      %% Takt 15 ==================================================
      s1*5
      %% Takt 20 ==================================================
      s1*5
      %% Takt 25 ==================================================
      s4 \shifttieup g'~ g8 e c e
      as,8 c as f d' h g h
      es,8 g es c a'! fis d fis
      b8 g e g c a fis a
      d8 b g b es,!2
      %% Takt 30 ==================================================
      d1~
      d4
    }
}

% print
\score {
   <<
      \new PianoStaff
      {
         <<
            \context Staff = right {
               <<
                  \sopranForte
                  \sopranPiano
                  \altForte
                  \altPiano
                  \altZweiForte
               >>
            }
            \context Staff = left {
               <<
                  \tenorForte
                  \tenorPiano
                  \bassForte
                  \bassPiano
               >>
            }
         >>
      }
      \context Staff = pedal {
         <<
            \pedalForte
            \pedalPiano
         >>
      }
   >>

   \layout{
      \context {
         \Score
         % **** Turns off bar numbering
         \remove "Dynamic_engraver"
      }
      indent = 0.6\cm
   }
}

% midi
\score {
   <<
      \new PianoStaff {
         <<
            \context Staff = right {
               \set Staff.midiInstrument = "church organ"
               \set Staff.midiMinimumVolume = #1
               \set Staff.midiMaximumVolume = #1
               <<
                  \sopranForte
                  \altForte
                  \altZweiForte
               >>
            }
            \context Staff = left {
               \set Staff.midiInstrument = "church organ"
               \set Staff.midiMinimumVolume = #1
               \set Staff.midiMaximumVolume = #1
               <<
                  \tenorForte
                  \bassForte
               >>
            }
         >>
      }

      \new PianoStaff {
         <<
            \context Staff = right {
               \set Staff.midiInstrument = "pan flute"
               \set Staff.midiMinimumVolume = #0.4
               \set Staff.midiMaximumVolume = #0.4
               <<
                  \sopranPiano
                  \altPiano>>
            }
            \context Staff = left {
               \set Staff.midiInstrument = "pan flute"
               \set Staff.midiMinimumVolume = #0.4
               \set Staff.midiMaximumVolume = #0.4
               <<
                  \tenorPiano
                  \bassPiano
               >>
            }
         >>
      }

      \new Staff {
         \set Staff.midiInstrument = "church organ"
         \set Staff.midiMinimumVolume = #1
         \set Staff.midiMaximumVolume = #1
         \transpose c c, \pedalForte
      }
      \new Staff {
         \set Staff.midiInstrument = "tuba"
         \set Staff.midiMinimumVolume = #1
         \set Staff.midiMaximumVolume = #1
         \transpose c c, \pedalForte
      }
      \new Staff {
         \set Staff.midiInstrument = "pan flute"
         \set Staff.midiMinimumVolume = #0.6
         \set Staff.midiMaximumVolume = #0.6
         \transpose c c, \pedalPiano
      }
   >>

  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 36 4)
      }
    }
}


globalFuga = {
   \key g \minor
   \time 4/4
   #(set-accidental-style 'default)
   \set tupletSpannerDuration = #(ly:make-moment 1 8)
   \override TupletBracket  #'bracket-visibility = #'if-no-beam
}

sopranFuga = {
   \new Voice \relative d'' {
      \globalFuga
      \halsup
      f4\rest f8\rest d b16 c a b g8 g'
      fis16 g e fis d8 g16 d es8 c f,! f'!
      d16 es c d b8 es16 b c8 a d, d'
      b16 c a b g a b c d8 e f16 g f g
      %% Takt  5 ==================================================
      a8 e f2 e!4~
      e4 d2 cis4
      d4 d8\rest d c!16 d b c a b c d
      b16 c a b g a b c a b g a fis a g b
      a16 c b d c es! d f! e fis g8~ g16 g fis8
      %% Takt 10 ==================================================
      g4 r8 b a g fis g
      c,16 d es!8~ es16 es d c b c d8~ d16 d c b
      a16 b c8~ c16 c b a g8 d' g4~
      g8 f! b4~ b8 a~ a g~
      g8 g fis4 g r8 d16 e
      %% Takt 15 ==================================================
      f!8 g a b a4~ a16 g f e!
      d4 r8 e f4~ f16 f g a
      b16 a g f  e8.^\markup{ \hspace #1 \bracket { \musicglyph #"scripts.prall" } } d16 d4 a'4\rest
      \mmrestup R1
      \mmrestup R1
      %% Takt 20 ==================================================
      \mmrestup R1
      f2\rest f4\rest f8\rest d
      b16 c a b g8 g' fis16 g e fis d8 g16 d
      es8 c f,! f'! d16 es c d b8 es16 b
      c8 a d, d' b16 c a b g a h cis
      %% Takt 25 ==================================================
      d8 e f16 g f g a8 e f4~
      f4 e2 d4~
      d4 cis d r8 d
      c!4 f b, r16 g' fis g
      a,8 es' d16 c b a g8 a b16 c b c
      %% Takt 30 ==================================================
      d4 \halsneutral r16 d es d c d es8~ es16 es d c
      b16c d8~ d16 d c b a b c8~ c16 c b a
      b8 c d16 e d e f2~
      f2~ f16 g es! f d es f g
      es2~ es16 f d es c d es f
      %% Takt 35 ==================================================
      d2~ d16 es c d \halsup b a g b
      a16 b g a b d c d32 es d16 c b c a c b a
      b8 c d16 es d es c d b c a8 d~
      d4 c2 b4~
      b4 a r8 f b b
      %% Takt 40 ==================================================
      a4 b8 h c g c c
      b8 h c cis d a d d
      cis4 d2 cis!4
      d8 f g, e' f,16 a d8 cis16 e a8
      f16 g e f d f e d cis d h cis a8 d16 a
      %% Takt 45 ==================================================
      \halsneutral b!8 g c,! c'! a16 b g a f8 b16 f
      g8 e a, a' f16 g e f d f a d
      cis16 d h cis a cis e g f g e f d f a c!
      b!16 c a b g a f g e f d e c e g b
      a16 b g a f g e f d e c d b d f a
      %% Takt 50 ==================================================
      g16 a f g e f d e cis d h cis a cis e a
      d,16 f a, d f, a d, h' a cis e g f a d, f
      g,16 b! d f e g c, e f, a c e d f b, d
      e,16 g b d cis e a, cis d f a, d f, a d, a'
      b16 c! a b g8 b c16 e g, c e, g c, g'
      %% Takt 55 ==================================================
      a8 b c d g, g'~ g16 e c a'
      b16 c, d8~ d16 d c b a' b, c8~ c16 c b a
      g'16  a, b8~ b16 b a g f4 r
      r8 c' f e f16 es d f es c h d
      c8 r r4 r8 g' c h
      %% Takt 60 ==================================================
      c16 b! a c b g fis a g8 d g fis
      g16 a fis a g a f g es f d f es f d es
      c16 d b d c d b c a b g b a b g a
      fis16 g e fis d8 d' b16 c a b g8 g'
      fis16 g e fis d a' c, a' b, c a b g b es g,
      %% Takt 65 ==================================================
      \halsup fis16 a d8~ d16 c b a b d g8~ g16 cis, e8
      d4 b'2 a4~
      a4 g2 fis4
      g8 d g fis g d b c
      d8 d d d d es f! g
      %% Takt 70 ==================================================
      es8 g c h c g es f
      g8 g g g g4 r
      r4 r8 g es16 f d es c8 c'
      h16 c a h g8 c16  g as8 f b, b'
      g16 as f g es8 as16 es f8 d g, g'
      %% Takt 75 ==================================================
      es16 f d es c es d c h c a! h g f' es d
      c16 g d' g, es' g, f' g, g' g, a' g, h'8 g
      g1~ ^\markup{ \hspace #1 \bracket { \musicglyph #"scripts.trill" } }
      g16 es f g as4~ as16 d, es f g4~
      g16 b as g f es d es d8 f b, d
      %% Takt 80 ==================================================
      es4~ es16 f g a! b2
      r16 es, f g as g f as g2
      r16 c, d es f es d f b,8 d es r
      r8 b es d es f g r
      r2 r8 f b a!
      %% Takt 85 ==================================================
      b8 r r4 r2
      r2 c~
      c4 b8 as b2~
      b4 as8 g as2~
      as4 g8 f es16 f d es c es d f
      %% Takt 90 ==================================================
      es16 f d es c es d f es f d es c es d f
      e16 g fis a \halsneutral g b a c b c a b g b a c
      b16 c a b g b a c b c a b g b a c
      b16 c b a g b a g fis8 d r d
      b16 c a b g8 g' fis16 g e fis d8 g16 d
      %% Takt 95 ==================================================
      es8 c f,! f'! d16 es c d b8 es16 b
      c8 a d, d' b16 c a b g b a g
      fis16 g e fis d fis a c b c a b g b d f!
      es!16 f d es c d b c \halsup a b g a f a c es
      d16 es c d b c a b g a f g es g b d
      %% Takt 100 =================================================
      c16 d b c a b g a fis g e fis d fis a d
      g,16 b d g b, d g, b d, fis a c b d g, b
      c,16 es g b a c f, a b, d f a g b es, g
      a,16 c e g fis a d, fis g8 a b16 c b c
      d4 r8 b c16 d es8~ es16 es d c
      %% Takt 105 =================================================
      b16 c d8~ d16 d c b a b c8~ c16 c b a
      g8 a b c d2~
      d16 es c d b c d es c2~
      c16 d b c a b c d b2~
      b16 c! a b g b a g fis g e fis g b a c
      %% Takt 110 =================================================
      b16 a g a fis8.\prallprall g16 g8 r r es' \break
      d4 r8 d g16 f! es d c8 d16 es
      f16 g es f d8 b es16 d c b a8 b16 c
      d16 es c d b8 fis' g c, b fis'
      g8 c, b fis' << \new Voice { \stemUp             g  a d, fis!      g4.^\fermata }
                      \new Voice { \stemUp   \shiftOn  s4. d8           d4.  }
                      \new Voice { \stemUp   \shiftOnn s4. c8           h4.  }
                      \new Voice { \stemDown           b8\rest c b a    g4.  }
                   >> \bar "|."
    }
}

altFuga = {
   \new Voice \relative g' {
      \globalFuga
      \halsdown
      \mmrestdownn R1
      \mmrestdownn R1
      \mmrestdownn R1
      r4 r8 g f16 g e f d8 d'
      %% Takt  5 ==================================================
      cis16 d h cis a8 d16 a b8 g c,! c'!
      a16 b g a f8 b16 f g8 e a, a'
      f16 g e f d e f g a8 g fis d
      g8 f! es! d c es d e
      fis8 g a b c8. b16 a8. a16
      %% Takt 10 ==================================================
      g8 a b16 c b c d8 a b4~
      b4 a2 g4~
      g4 fis g4 r8 d'
      a4 r8 f' c4 b
      a4. a8 g a b4
      %% Takt 15 ==================================================
      a8 cis d f e d cis! d
      g,16 a b8~ b16 b a g f g a8~ a16 a g f
      e16 f g8~ g16 g f e a4 b16\rest d c! d
      b16 c a b g8 b c4 r16 c b c
      a16 b g a f8 a b4 r16 b a b
      %% Takt 20 ==================================================
      g4~ g16 b a b c4~ c16 b c a
      b16 d g, b a c fis, a g8 b c, a'
      b,8 c d16 d' c es a,8 fis g4~
      g4 b,8\rest a' b4 r
      r2 r4 r8 g
      %% Takt 25 ==================================================
      f16 g e f d8 d' cis16 d h cis a8 d16 a
      b8 g c,! c'! a16 b g a f8 b16 f
      g8 e a, a' f16 g e f d e f g
      es!16 f d es c d es f d es c d b c d es
      c16 d b c \staffdown a8 \staffup d~ d16  es c d b es d es
      %% Takt 30 ==================================================
      \staffdown a,16 b g a b2 a4~
      a4 g2 fis4
      g8 a b16 c b c a b g a b c d es!
      c16 d b c a b c a b2~
      b16 c a b g a b c a2~
      %% Takt 35 ==================================================
      a16 b g a f g a f b8 c \staffup d e
      \shifttiedown f2~ f16 es! d es c8. d16
      d8 es f2 r8 f
      es16 f g8~ g16 g f es d es f8~ f16 f es d
      c16 d es8~ es16 es d c b4 r
      %% Takt 40 ==================================================
      r8 c f f es e f fis
      g8 d g g f! fis g gis
      a16 b! g! a f! g a b g a f g e f g a
      f16 a d, f e g cis, e d f a, d e g a, cis
      d16 f a, d \staffdown f, a d, f a, cis e g f a d, f
      %% Takt 45 ==================================================
      g,16 b! d f e g c, e f, a c e d f b, d
      e,16 g b d cis e a, cis \halsneutral d,8 e f d
      a'8 h cis a d e f d
      g8 a b g c d e c
      \clef "treble" f g a f b16 c a b g a f g
      %% Takt 50 ==================================================
      e16 f d e cis d h cis \clef "bass" a b! g a f g e g
      f16 g e f d8 d' cis16 d h cis a8 d16 a
      b!8 g c,! c'! a16 b g a f8 b16 f
      g8 e a, a' f16 g e f d8 f
      g16 b d, g b, d g, d' e f d e c8 e
      %% Takt 55 ==================================================
      f8 g a16 b a b c d b c \stemUp a8 \clef "treble" a'~
      \stemNeutral a4 g2 \shifttiedown f4~
      f4 e r8 c f e
      f4 r8 b, c16 g' g, g' g, g' g, g'
      g,8 g' c h c4 r8 f,
      %% Takt 60 ==================================================
      g16 d' d, d' d, d' d, d' d,8 c b c
      d16 d' c es d es c d b c a c b c a b
      g16 a f a g a f g es f d f es f d es
      \clef "bass" c16 d b c a c fis, a g b d, g b, d g, c
      \halsup d16 a e' a, fis' g e fis g d a' d, b' d, c' d,
      %% Takt 65 ==================================================
      \staffup d'8. e16 fis!4 g8. a16 \dotsDown b8. \dotsNeutral cis,16
      << \new Voice { \stemDown a'4 }
         \new Voice { \stemUp \shiftOn d,4 } >> r8 d' g16 f! es! d c es d c
      b4 r8 b es16 d c b a c b a
      g4 g4\rest g8\rest d g fis
      g8 fis b16 g a d, g8 g g h
      %% Takt 70 ==================================================
      g4 r r8 g c h
      c8 h es16 c d g, c h! c es d es d c
      h16 a! h c d c d h c8 h c g'
      g8 r r4 r2
      \mmrestdown R1
      %% Takt 75 ==================================================
      \mmrestdownn R1
      \mmrestdownn R1
      R1
      R1
      r2 r4 r8 b,
      %% Takt 80 ==================================================
      g16 as f g es8 es' d16 es c d b8 es16 b
      c8 as d, d' b16 c as b g8 c16 g
      as8 f b, as' g16 as f g es g f as
      g16 as f g es g f as g as f g es g f as
      g16 b a! c b d c es d es c d b d c es
      %% Takt 85 ==================================================
      d16 es c d b d c es d es c d b d c es
      d16 f e g f as g b as b g as f g es f
      des2 g16 as f g es f des es
      c2 f16 g es f des es c des
      h4 c8 d! g,4 r8 g
      %% Takt 90 ==================================================
      g8 g c h c h g g
      g4 \staffdown r8 d d r r d'
      d8 d g fis g fis d d
      d4 f8\rest es d a r4
      \clef "bass" \mmrestup R1
      %% Takt 95 ==================================================
      \mmrestuppp R1
      \mmrestupp R1
      \mmrestupp R1
      \staffup \mmrestdownn R1
      \mmrestdownn R1
      %% Takt 100 =================================================
      \mmrestdownnn R1
      \mmrestdownnnn R1
      \once \override MultiMeasureRest #'staff-position = #-8 \once \override MultiMeasureRest #'extra-offset = #'(-1 . 0) R1
      r4 r8 d, \staffdown b16 c a b g8 \staffup g'
      fis16 g e fis d8 g16 d es8 c \staffdown f,! \staffup f'!
      %% Takt 105 =================================================
      d16 es c d b8 es16 b c8 \staffdown a d, \staffup d'16 c
      \staffdown b16 c b a g b a g fis g fis e d \staffup r16 fis'8
      g2~ g16 a f! g es f g a
      f2~ f16 g es f d e fis g
      cis,2 d8 c b d~
      %% Takt 110 =================================================
      d16 c b c \staffdown a8. g16 g8 r \staffup r b'
      a4 r8 b b4~ b16 b a g
      a4~ a16 a g fis g4~ g16 g fis! e
      d8 fis g es! d fis g es
      d8 fis g es d \staffdown es b d
      %% Takt 115 =================================================
      d4.
    }
}

tenorFuga = {
   \new Voice \relative d' {
      \globalFuga
      \halsneutral
      R1*4
      %% Takt  5 ==================================================
      R1*4
      r2 r4 r8 d
      %% Takt 10 ==================================================
      b16 c a b g8 g' fis16 g e fis d8 g16 d
      es!8 c f,! f'! d16 es c d b8 es16 b
      c8 a d, d' b16 c a b g a b c
      d16 es c d b c d es f g es f d f es d
      c16 d b c a b c d b c a b g a b c
      %% Takt 15 ==================================================
      d8 e \clef "treble" f16 g f g a8 e! \shifttiedown f4~
      f4 e2 d4~
      d4 cis d \clef "bass" r16 f es! f
      d16 es c d b8 d g,4 r16 es' d es
      c16 d b c a8 c f,4 \clef "treble" r16 d' c d
      %% Takt 20 ==================================================
      b16 d c d es4~ es16 g fis g a g a fis
      g8 d \clef "bass" c16 es a, c b d g, b a c fis, a
      g4. es' 8 d c b g
      c16 d es8~ es16 es d c b c d8~ d16 d c b
      a16 b c8~ c16 c b a g8 a b[ a16 g]
      %% Takt 25 ==================================================
      a4. d,8 e a d, f
      g16 a b8~ b16 b a g f g a8~ a16 a g f
      e16 f g8~ g16 g f e d8 f b4~
      b4 a2 g4~
      g4 fis g r
      %% Takt 30 ==================================================
      \mmrestdow R1
      \mmrestdow R1
      \mmrestdow R1
      \mmrestdow R1
      \mmrestdow R1
      %% Takt 35 ==================================================
      \mmrestdow R1
      r2 r4 r8 \halsneutral f
      d16 es c d b8 b' a16 b g a f8 b16 f
      g8 es a, a' f16 g es f d8 g16 d
      es8 c f, f' d16 es c d b c d es
      %% Takt 40 ==================================================
      f16 g es f d es f g c, d b c a b c d
      g,16 a f g e f g a d, d' c! d h c d e
      a,8 a' b d, e g a a,
      d8 r r4 r2
      \mmrestdownnn R1
      %% Takt 45 ==================================================
      \mmrestdownnn R1
      s1
      s1
      s1
      s1
      %% Takt 50 ==================================================
      s1*5
      %% Takt 55 ==================================================
      s1*5
      %% Takt 60 ==================================================
      s1
      s1
      s1
      s1
      \mmrestdownn R1
      %% Takt 65 ==================================================
      r4 r8 d' b16 c a b g8 g'
      fis16 g e fis d8 g16 d es8 c f,! f'!
      d16 es c d b8 es16 b c8 a d, d'
      b16 c a b g b a c b c a b g b a c
      b16 c a b g b a c \clef "treble" b d c es d f es d
      %% Takt 70 ==================================================
      c16 d h d c es d f es f d es c es d f
      es16 f d es c es d f es d es g as g f es
      d16 c d es f d g8~ g4~ g16 g f es
      d es c d es2 d4~
      d4 c2 h4
      %% Takt 75 ==================================================
      c4 r16 g' f es d4~ d16 as' g f
      es16 f d es c es d c h c a h g h a h
      c16 g d' g, es' g, f' g, g' g, a' g, h' g a h
      c4~ c16 f, g as b4~ b16 es, f g
      \shifttiedown as2~ as16 c b as g as f g
      %% Takt 80 ==================================================
      es16 f d es c8 f \clef "bass" b,16 c as b g4~
      g4 f2 es4~
      es4 d es8 f g b
      b8 r r4 r8 d b b
      b8 es d f f r r4
      %% Takt 85 ==================================================
      r8 f, b a b a d f
      b,2 \clef "treble" f'8 g as f
      b16  c as b g as f g es8 f g es
      as16 b g as f g es f des8 es f des
      g8 d! es h c g c h
      %% Takt 90 ==================================================
      c4 r8 g' g f es g,
      c4 \halsdown c8\rest a! g d' g fis
      g4 r8 d' d c b d,
      g4 g8\rest c16 b a g fis e d c b a
      \clef "bass" g f! es! d c b a g d'8 d, r16 \halsneutral g' a b
      %% Takt 95 ==================================================
      c,16 es g b a c f, a b, d f a g b es, g
      a,16 c es g fis a d, fis g,8 a b g
      d'8 e fis d g a b g
      c8 d es c f,! g a f
      b8 c d b es16 f d es c d b c
      %% Takt 100 =================================================
      a16 b g a fis g e fis d es c d b c a c
      b16 c a b g8 g' fis16 g e fis d8 g16 d
      es!8 c f,! f'! d16 es c d b8 es16 b
      c8 a d, d' g f! es!4
      d4 b'2 a4~
      %% Takt 105 =================================================
      a4 g2 fis4
      g4 r r g,16\rest d'' c d
      b16 c a b g a f! g es f d es c c' b c
      a16 b g a f g es f d es c d b b' a b
      g16 a fis g e8 a d,4 e8 fis
      %% Takt 110 =================================================
      g8 c, d4 d8 r r g'
      d4 r8 d c2
      b2 a2
      b8 c d c g a d c
      g8 a d c g c d a
      %% Takt 115 =================================================
      g4._\fermata
    }
}

pedalFuga = {
   \new Voice \relative g {
      \globalFuga
      \clef "bass"
      R1*4
      %% Takt  5 ==================================================
      R1*5
      %% Takt 10 ==================================================
      R1*4
      r2 r4 r8 g
      %% Takt 15 ==================================================
      f16 g e f d8 d' cis16 d h cis a8 d16 a
      b!8 g c,! c'! a16 b g a f8 b16 f
      g8 e a, a' f16 g e f d8 f
      g4 r16 g f g es! f d es c8 es
      f4 r16 f es f d es c d b8 d
      %% Takt 20 ==================================================
      es8 d c b a g fis d
      g8 b c d g,4 r8 d
      g8 a b c d a b4~
      b4 a2 g4~
      g4 fis g8 f e e'
      %% Takt 25 ==================================================
      d8 c b4 a r
      R1
      R1
      R1
      r4 r8 d b16 c a b g8 g'
      %% Takt 30 ==================================================
      fis16 g e fis d8 g16 d es8 c f,! f'!
      d16 es c d b8 es16 b c8 a d, d'
      b16 c a b g8 g' f16 g es! f d8 b'
      a16 b g a f g es f d es c d b b' a b
      g16 a f g es f d es c d b c a a' g a
      %% Takt 35 ==================================================
      f16 g es f d es c d b c a b g c b c
      f,8 f' g a b es, f f,
      b4 r r2
      R1
      R1
      %% Takt 40 ==================================================
      R1*5
      %% Takt 45 ==================================================
      R1*5
      %% Takt 50 ==================================================
      R1
      R1
      R1
      R1
      r2 r4 r8 c
      %% Takt 55 ==================================================
      a16 b g a f8 f' e16 f d e c8 f16 c
      d8 b e, e' c16 d b c a8 d16 a
      b8 g c, c' a16 b g a f a g b
      a16 b g a f a g b a c h d c es! d f
      es16 f d es c es d f es16 f d es c es d f
      %% Takt 60 ==================================================
      e16 g fis a g b a c b c a b g b a c
      b16 c a c b c a b g a fis a g a f g
      es16 f d f es f d es c d b d c d b c
      a16 b g a fis8 d g f es!4
      d1~
      %% Takt 65 ==================================================
      d1~
      d8 fis g b c es f! a,
      b8 d es g, a c d d,
      g4 r8 d g4 r8 d
      g d' g fis g es h g
      %% Takt 70 ==================================================
      c4 r8 g' c,4 r8 g
      c8 g' c h c as f d
      g8 d h g c g es c
      g'8 g' c, es f16 c as'8~ as16 b, d b
      es16 b g'8~ g16 as, c as d as f'8~ f16 g, h g
      %% Takt 75 ==================================================
      c16 g d' g, es' g, f' g, g' g, a' g, h' g, g' g,
      c'4 r r r16 g f g
      es16 f d es c d c d h c a h g8 g'
      es8 c f es d b es d
      c8 b c as b4 r8 b
      %% Takt 80 ==================================================
      es,4 r r2
      R1
      r2 r8 b' es d
      es4 r r8 b es d
      es8 f g a! b r r4
      %% Takt 85 ==================================================
      r2 r8 f, b a
      b8 c d e f4 r
      b,8 c des b es4 r
      as,8 b c as des4 r
      g16 as f g es f d! es c4 r8 g
      %% Takt 90 ==================================================
      c4 r8 g c, g' c h
      c8 d e fis g4 r8 d
      g4 r8 d g, d' g fis
      g8 a b c d d, r4
      R1
      %% Takt 95 ==================================================
      R1*5
      %% Takt 100 =================================================
      R1*5
      %% Takt 105 =================================================
      R1*5
      %% Takt 110 =================================================
      r4 r8 d b16 c a b g8 g'
      fis16 g e fis d8 g16 d es8 c f,! f'!
      d16 es c d b8 es16 b c8 a d, d'
      b16 c a b g b a c b c a b g b a c
      b16 c a b g b a c b d c es d8 d,
      %% Takt 115 =================================================
      g4._\fermata
    }
}

right = {
   \clef treble
   <<
      \sopranFuga
      \altFuga
   >>
}

left = {
   \clef bass
   <<
      \tenorFuga
   >>
}

\score {
   <<
      \new PianoStaff
      {
         <<
            \context Staff = right {
               \context Voice = right \right
            }
            \context Staff = left {
               \context Voice = left \left
            }
         >>
      }
      \context Staff = pedalFuga {
         \context Voice = pedalFuga \pedalFuga
      }
   >>

   \layout{
      indent = 0.6\cm
   }
}

\score {
   <<
      \new Staff = right {
         \set Staff.midiInstrument = "pan flute"
         \right
      }
      \new Staff {
         \set Staff.midiInstrument = "recorder"
         \transpose c c' \right
      }

      \new Staff = left {
         \set Staff.midiInstrument = "pan flute"
         \context Voice = left \left
      }
      \new Staff {
         \set Staff.midiInstrument = "recorder"
         \transpose c c' \left
      }

      \new Staff {
         \set Staff.midiInstrument = "pan flute"
         \pedalFuga
      }
      \new Staff {
         \set Staff.midiInstrument = "recorder"
         \transpose c c, \pedalFuga
      }
      \new Staff {
         \set Staff.midiInstrument = "recorder"
         \transpose c c' \pedalFuga
      }
   >>

  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 80 4)
      }
    }
}
