\version "2.18.2"
\language "nederlands"

\header {
  title = \markup \normal-text "Oboe Sonata No. 5 in D minor"
  opus = "Opus 71"
  composer = "François Devienne"
  piece = "Allegro con gusto"

  date = "1798"
  license = "Public Domain"
  source = "Sieber, 1798"

  mutopiatitle = "Oboe Sonata No. 5 in D minor"
  mutopiacomposer = "DevienneF"
  mutopiainstrument = "Oboe and Bassoon"
  style = "Classical"

  maintainer = "Jeremy Visser"
  maintainerEmail = "jeremy@visser.name"

  footer = "Mutopia-2018/06/17-2228"
  copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white "ǀ" \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {"ǀ" "ǀ"}}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " "by " \maintainer " — " \footer}\concat {\concat {\abs-fontsize #8 { "Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "Public Domain" " by the typesetter " " — free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white "ǀ" }}}
  tagline = ##f
}

global = {
  \time 2/4
  \key d \minor
  #(set-accidental-style 'modern-cautionary)

  % Global anacrusis
  \partial 8
}

oboe = \relative c'' {
  \global

  a16. a32
  | d4( e8) f-!
  | e8.(\rfz cis16 d8) d16 a
  | bes8 bes bes d16 bes

  \barNumberCheck #4
  | bes16\trill( a) a8 r16 a-! d-! f-!
  | a4( g8) f-!
  | e( bes'4) g16( e)
  | d8.( f16) e8.( a16)

  \barNumberCheck #8
  | g4( f16\noBeam) a,-! d-! f-!
  | a4. g16 f
  | es16( g bes4) g16( es)
  | d8.( f16) e8.( cis16)

  \barNumberCheck #12
  | d4
    \tuplet 3/2 8 {
      r16 a( d)
      f( e) d
  |   cis( e) cis-!
      bes( a) a
      a-! cis( d
      e f g)
  |   f( e d)
    }
    d8
    \tuplet 3/2 8 {
      r16 a' g
      f e d
  |   cis e cis
      bes( a) a-!
      a-! cis( d
      e f g)
    }

  \barNumberCheck #16
  | \tuplet 3/2 8 {
      f( e) d
      \acciaccatura e d( cis d)
      a-! cis( d
      e f g)
  |   f( e) d-!
      a'( g) f-!
      bes( a) g-!
      f( e) d-!
    }
  | cis8 a' a, r
  | f'4~ f16 a( g) e-!

  \barNumberCheck #20
  | f4~ f16 a( c) e,(
  | f) a-! b,( c) f-! gis,( a) d
  | c8( bes\trill) a r
  | g'4~ g16 bes( a) fis

  \barNumberCheck #24
  | g4~ g16 bes( g) f-!
  | dis( e) g e-. b( c) d-. bes-.
  | gis4 a8 r
  | c'4 e,

  \barNumberCheck #28
  | f8.(\turn a16) c,8 a'16 a
  | a4 cis,
  | d8.(\turn f16) a,8 f'16 f
  | f4 \afterGrace es\trill { d16 es }

  \barNumberCheck #32
  | d8.(\cresc fis16)\! g8.( f16)
  | e8.( gis16) a8.( g16)
  | f16 f8 a bes a16
  | a16 g8 b c bes16

  \barNumberCheck #36
  | a8 \tuplet 3/2 8 {
      c16( b bes) a g f e d c
  |   bes a g f e g c e f g a bes
    }
  | a8 \tuplet 3/2 8 {
      c16 b bes a g f e d c
  |   bes a g f e g c e f g a bes
    }

  \barNumberCheck #40
  | a8 \tuplet 3/2 8 {
      c16 gis( a) a e( f) f cis( d)
  |   d a( bes) bes fis( g) g( a) bes bes( c) d
    }
  | c4 \afterGrace g'\trill { f16 g }
  | f4 r8 c16. c32

  \barNumberCheck #44
  | f4( g8) as-!
  | g4. bes16( g)
  | f( e) des( c) c8\turn( d16) e-!
  | f8.( as16) c,8 f16( as)

  \barNumberCheck #48
  | g4 as16( g f g)
  | as8.( g16) f( es) des( c)
  | bes des8 f es g,16
  | as4 r8 c16 c

  \barNumberCheck #52
  | c8 f4 es8
  | es16( des) des4 g16 g
  | g8( as4)\> g16(\! f)
  | f4( e8) g16( as)

  \barNumberCheck #56
  | bes8.( g16) f( e) g( bes)
  | as8 as4 g8\trill
  | \acciaccatura g16 f( e f g as a bes b
  | c8) c,-! r4

  \barNumberCheck #60
  | cis32( d e d cis d e d) d-. g( bes a g f e d)
  | b( c d c b c d c) c-. f( a g f e d c)
  | c( bes) bes-. bes-. a( bes) bes-. bes-. bes-. (e g f e d c bes)
  | a( f) c'-. c-. c( a) f'-. f-. f( c) a'-. a-. a( f) c'-. c-.

  \barNumberCheck #64
  | bes( a g a) g( f e f) e( f g f e d c bes)
  | a( f) c'-. c-. c( a) f'-. f-. f( c) a'-. a-. a( f) c'-. c-.
  | bes( a g a) g( f e f) e( f g f e d c bes)
  | a8 es'4\sfz d16( cis)

  \barNumberCheck #68
  | d8 bes'4(\sfz a8)
  | g c4 b16( bes)
  | \acciaccatura bes32 a( g a bes c bes a g a g f e f e d cis)
  | \acciaccatura e d( cis d e f e d cis d c bes a g f e d

  \barNumberCheck #72
  | c4) g''\trill
  | f8 r fis4(\sfz
  | g16) \acciaccatura a g32( fis g16) bes-! d,16.( f32) e16.( g32)
  | f8 r fis4(\sfz

  \barNumberCheck #76
  | g16) \acciaccatura a g32( fis g16) bes d,16.( f32) e16.( g32)
  | g4( f8)

  \bar ":..:"

  c16. c32
  | a'4( g8) f-!
  | e8.( g16 f8) c16. c32

  \barNumberCheck #80
  | c'4( bes8) a-!
  | g8. bes16 a8 c16. c32
  | c8( d,) \tuplet 3/2 8 { r16 bes'( a g a bes) }
  | bes8( c,) \tuplet 3/2 8 { r16 a'( g f g a)

  \barNumberCheck #84
  |   g( fis g) bes( a) g-! f( e) d-! c( d) e-!
    }
  | f4 r
  | f16[( \tuplet 3/2 { g32 f e] } f16) c'-. bes a g f
  | \acciaccatura g16 f( es) es4 es8(

  \barNumberCheck #88
  | d16) \acciaccatura e d32( cis d16) fis-! a( fis) d c
  | \acciaccatura d c( bes) bes4 g'16. bes32
  | a8( g16.) bes32 a8( g16.) bes32
  | bes16( as as4) g32( f) es( d)

  \barNumberCheck #92
  | c( bes d c) bes( d f es) d( f as g) f( c' bes as)
  | as4( g8) g16. g32
  | b8(\> g16.)\! g32-! c8(\> g16.)\! g32
  | g8.( f16 es8) es16. es32

  \barNumberCheck #96
  | es8( d16.) fis32-! fis8( a16. c,32)-!
  | \acciaccatura d16 c( bes) bes8 r16 bes'-. bes-. bes-.
  | bes(\> a) cis,8.\! bes'16 bes bes
  | bes\> a d,8.\! bes'16( a) a

  \barNumberCheck #100
  | a( gis) gis( f) f( e) e( d)
  | cis8\noBeam \tuplet 3/2 8 { cis16( d) e-! e( f) g-! g( f) e-!
  |   f-! cis( d \acciaccatura e d cis d) a'( g) f-! f( e) d-!
    }
  | cis8 a32( b cis d e f g f a g f e)

  \barNumberCheck #104
  | f ( e d cis \acciaccatura e d cis d e f e d cis d e f) g
  | a8 a, r a16. a32
  | d4( e8) f
  | e8.( cis16 d8) d16( a)

  \barNumberCheck #108
  | bes8 bes bes\turn( d16 bes)
  | \acciaccatura c bes( a) a8 r16 a-! d-! f-!
  | a4( g8) f-!
  | e( bes'4) g16( e)

  \barNumberCheck #112
  | d8.( f16) e8.( a16)
  | g4( f16\noBeam) a,-! d-! f-!
  | a4( f8) d-!
  | es16( g bes4) g16( es)

  \barNumberCheck #116
  | d8.( f16) e8.( cis16)
  | d8 \tuplet 3/2 8 { a16( b) cis-!
      \acciaccatura e d( cis d) e-! f-! g-!
  |   \acciaccatura g f( e f) g-! a-! bes-! a( g) f-! e( d) cis-!
    }
  | d8 \tuplet 3/2 8 { a16( b) cis-!
      \acciaccatura e d( cis d) e-! f-! g-!

  \barNumberCheck #120
  |   \acciaccatura g f( e f) g-! a-! bes-! a( g) f-! e( d) cis-!
  |   d( f a) \acciaccatura bes a( g a) bes( a g)
        \acciaccatura a g( f g)
  |   a( g f) \acciaccatura g f( e f) g( f e) \acciaccatura f e( d e)
  |   f( g) a \acciaccatura g a( g a) bes( a) g
        \acciaccatura a g( f g)

  \barNumberCheck #124
  |   a( g f) \acciaccatura g f( e f) g( f e) \acciaccatura f e( d e)
    }
  | \tuplet 3/2 8 { f-!\noBeam d( e f e d) bes-!\noBeam d( e f e d)
  |   a-!\noBeam d( e f e d) gis,-!\noBeam d'( e f e d)
  |   a f a d a d f d f a f d
    }

  \barNumberCheck #128
  | e2\trill
  | \tuplet 3/2 8 { d16( f a) \acciaccatura bes a( g a) bes( a g)
        \acciaccatura a g( f g)
  |   a( g f) \acciaccatura g f( e f) g( f e) \acciaccatura f e( d e)
  |   f( g) a \acciaccatura g a( g a) bes( a) g
        \acciaccatura a g( f g)

  \barNumberCheck #132
  |   a( g f) \acciaccatura g f( e f) g( f e) \acciaccatura f e( d e)
    }
  | \tuplet 3/2 8 { f-!\noBeam d( e f e d) bes-!\noBeam d( e f e d)
  |   a-!\noBeam d( e f e d) gis,-!\noBeam d'( e f e d)
  |   a f a d a d f d f a f d
    }

  \barNumberCheck #136
  | e2\trill
  | d4 r16 cis( d e\cresc
  | f\! fis g a) bes g( e cis)
  | e8( d) r16 cis( d e

  \barNumberCheck #140
  | f fis g a) bes g( e cis)
  | e4( d8)

  \bar ":|."
}

bassoon = \relative c {
  \global

  r8
  | r8 f( e d)
  | g4(\rfz f8) fis
  | g g g, g

  \barNumberCheck #4
  | d'8 d d r
  | r d( e f)
  | g g g g
  | a r a, r

  \barNumberCheck #8
  | d a' d r
  | r d,( e f)
  | g g g g
  | a a a, a

  \barNumberCheck #12
  | \tuplet 3/2 8 {
      d16-! f( g
      a b cis
    }
    d8) d,
  | e e cis cis
  | \tuplet 3/2 8 {
      d16-! f( g
      a b cis
    }
    d8) d,
  | e e cis cis

  \barNumberCheck #16
  | d f e cis
  | d f g g
  | a a a, r
  | r16 f a c f8 g

  \barNumberCheck #20
  | a16 f( a c f8) r
  | f, r f r
  | e c f g16( a
  | bes c d c bes8) c

  \barNumberCheck #24
  | bes16( c d c bes8) b
  | c r e, r
  | f c f, r
  | r e'16 g c8 bes

  \barNumberCheck #28
  | a a a r
  | r cis,16 e a8 g
  | f f f r
  | r16 a,32[ bes] c16[ d] es f g f

  \barNumberCheck #32
  | bes8(\cresc a\! bes b)
  | c( bes a cis)
  | d( c bes d)
  | e( d c e)

  \barNumberCheck #36
  | f r f, r
  | g r e r
  | f r f r
  | g r e r

  \barNumberCheck #40
  | f r f r
  | bes r bes, r
  | c4:16 c:
  | f16 a c a f8 r

  \barNumberCheck #44
  | r as g f
  | bes bes bes bes
  | c4( bes)
  | as8 as as f(

  \barNumberCheck #48
  | es4 des
  | c2:8)
  | des8 des es es
  | as as, as' r

  \barNumberCheck #52
  | a2
  | bes
  | b
  | c

  \barNumberCheck #56
  | e,2:8
  | f4 c
  | des2:8
  | c8 c'16 c c8 c

  \barNumberCheck #60
  | c4( bes8) bes
  | bes4( a8) f
  | d d e e
  | f r f r

  \barNumberCheck #64
  | g r c, r
  | f r f r
  | g r c, r
  | f4 a,

  \barNumberCheck #68
  | bes8 d4(\sfz c8)
  | bes16 a g f e8 c'
  | f r f r
  | bes, r bes r

  \barNumberCheck #72
  | c c c, c
  | f16( a c f a bes c a)
  | bes8 bes bes c
  | f,16 e( f g a bes c a)

  \barNumberCheck #76
  | bes8 bes bes c
  | f, c f,

  \bar ":..:"

  r
  | r f'( g a)
  | bes4 a8 r

  \barNumberCheck #80
  | r a( g f)
  | e c f a16( g)
  | fis4( g)
  | e( f)

  \barNumberCheck #84
  | bes8 bes c c,
  | f16( a c bes a bes g a)
  | f8 f f f
  | f16( a c bes a bes g a)

  \barNumberCheck #88
  | fis2:8
  | g16( bes d bes g8) bes
  | c bes c bes
  | c c c c

  \barNumberCheck #92
  | d d d, d
  | es es es r
  | f f es es
  | b4( c8) r

  \barNumberCheck #96
  | fis fis d d
  | g g g r
  | r g g g
  | r f f f

  \barNumberCheck #100
  | bes2
  | a8 r cis,4
  | d8 f d f
  | a r cis,4

  \barNumberCheck #104
  | d bes
  | a8 a' r4
  | r8 f( e d)
  | g4 f8 r

  \barNumberCheck #108
  | r g g bes
  | d d, d' r
  | r d, e f
  | g2:8

  \barNumberCheck #112
  | a8 a a, a
  | d a d r
  | r f f f
  | g2:8

  \barNumberCheck #116
  | a8 a a, a
  | d g f e
  | d cis d e
  | f g f e

  \barNumberCheck #120
  | d cis d e
  | f fis g e
  | f d e cis
  | d fis g e

  \barNumberCheck #124
  | f d e cis
  | d r bes' r
  | a r gis r
  | a r r4

  \barNumberCheck #128
  | a4:16 a,4:16
  | d8 fis g e
  | f d e cis
  | d fis g e

  \barNumberCheck #132
  | f d e cis
  | d r bes' r
  | a r gis r
  | a r r4

  \barNumberCheck #136
  | a4:16 a,4:16
  | d16 a( d f a g f\cresc e)\!
  | d( c bes a g8 a)\p
  | d16 a( d f a g\cresc f\! e)

  \barNumberCheck #140
  | d( c bes a g8) a-!
  | d a d

  \bar ":|."
}
