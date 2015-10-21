\version "2.18.2"

% #(set-default-paper-size "letter")

%--Default staff size is 20
#(set-global-staff-size 18)

\paper {
    top-margin = 8\mm                              %-minimum: 8 mm
    top-markup-spacing.basic-distance = #6         %-dist. from bottom of top margin to the first markup/title
    markup-system-spacing.basic-distance = #5      %-dist. from header/title to first system
    top-system-spacing.basic-distance = #12        %-dist. from top margin to system in pages with no titles
    last-bottom-spacing.padding = #2               %-min #1.5 -pads music from copyright block
    ragged-bottom = ##f
    ragged-last-bottom = ##f
}

\header {
    title = "Prelude VIII"
    composer = "Sergei Rachmaninoff (1873-1943)"
    opus = "Op. 23"
    %piece = "Left-aligned header"
    date = "1901"
    style = "Romantic"
    source = "Gutheil, 1904"

    maintainer = "Glen Larsen"
    maintainerEmail = "glenl.glx at gmail.com"
    license = "Creative Commons Attribution-ShareAlike 4.0"

    mutopiatitle = "Prelude Op. 23, No. 8"
    mutopiaopus = "Op. 23"
    mutopiacomposer = "RachmaninoffS"
    mutopiainstrument = "Piano"

 footer = "Mutopia-2015/10/21-2057"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2015 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " " \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

%--------Definitions
scrCresc = \markup \italic \large "cresc."
scrDim = \markup \italic \large "dim."
scrRit = \markup \italic \large "rit."
scrDimRit = \markup \italic \large "dim. e rit."
mg = \markup \italic \large "m.g."
md = \markup \italic \large "m.d."

shpSlurA = \shape #'((0 . -3.5) (0 . -3.5) (0 . -3.5) (0 . -3.5)) Slur
% This shape is for the cross-staff slurs at bar 40
shpSlurB = \shape #'((0 . 1) (0 . -1) (0 . 1) (-1 . 0.5)) Slur
fullGliss = {
  \override Glissando.bound-details.left.padding = #0
  \override Glissando.bound-details.right.padding = #0
}

setBeatStructureFourth = {
  \set Voice.baseMoment = #(ly:make-moment 1/4)
  \set Voice.beatStructure = #'(1 1 1 1 1 1)
  \set Timing.beamExceptions = #'()
}

global = {
  \key aes \major
  \time 3/2
  \tempo "Allegro vivace. " 2 = 108
}

upperStaffA =   \relative c' {
  \setBeatStructureFourth \slurDown
  \partial 2.
    c16( a' fis a,) des( bes' g bes,) d( b' aes b,)
  | b'4\rest ees,16( c' aes c,) aes'( f' des f,) g( ees'c ees,) b'\rest_\scrCresc c( aes c,) b'\rest des( aes des,)
  | b'16\rest ees( aes, c,) aes'( f' c f,) c'( g' ees g,) c( aes' f aes,) des( bes' g bes,) ees( c' aes c,)
  | b4\rest ees,16( c' aes c,) aes'( ees' des f,) g( ees'c ees,) b'\rest_\scrCresc c( aes c,) b'\rest des( aes des,)
  | b'16\rest ees( aes, c,) aes'( f' c f,) c'( g' ees g,) c( aes' f aes,) des( bes' g bes,) ees( c' aes c,)
  % 5
  | \voiceTwo \slurNeutral c'( aes' ees aes,) ges( des' aes des,) f( des' aes des,) ees( c' ges c,) des( bes' ees, bes) c( aes' ees aes,)
  | aes'16( f' c f,) ees( bes' f bes,) des( bes' f bes,) c( aes' f aes,) bes( g'c, g) aes( f'c f,)
  | f'16( des' aes des,) b\rest g'( c, bes) b\rest f'( bes, aes) f'( c' g c,) b\rest f'( bes, aes) b\rest e( aes, g)
  % page 2, gl begins
  | des'16( bes' f bes,) bes\rest ees16( aes, ges) bes\rest des16( ges, f) c'( g' ees g,) bes\rest ces( f, ees) bes'\rest bes( ees, des)
  | \voiceOne \slurDown c16( a' fis a,) des( bes' g bes,) bes( g' ees g,) c( aes' f aes,) des( bes' g bes,) d( b' aes b,)
  %10
  \repeat unfold 2 {
    | b'4\rest ees,16( c' aes c,) aes'( f' des f,) g( ees'c ees,) b'\rest_\scrCresc c( aes c,) b'\rest des( aes des,)
    | b'16\rest ees( aes, c,) aes'( f' c f,) c'( g' ees g,) c( aes' f aes,) des( bes' g bes,) ees( c' aes c,)
  }
  | \voiceTwo \slurNeutral c'( aes' ees aes,) ges( des' aes des,) f( des' aes des,) ees( c' ges c,) des( bes' ees, bes) c( aes' ees aes,)
  %15
  | gis'16( e' b e,) d( a' e a,) c( a' e a,) b( gis' e gis,) a( fis' b, fis) gis( e' b e,)
  | ees'16_\scrDim( c' g! c,) b\rest f'( bes,! aes!) b\rest ees( aes, g) fes'( c' aes c,) b\rest f'( bes, aes) b\rest fes'( bes, aes)
  | ees'16( c' g c,) b\rest ees( aes, g) b\rest des( aes g) des' aes' ees aes, b\rest des( aes des,) b'\rest c( aes c,)
  %18
  \voiceOne\slurDown
  | d16( b' aes b,) ees( c' aes c,) b( g' ees g,) c( aes' ees aes,) d( b' aes b,) ees( c' aes c,)
  | b'4\rest g16( ees' des! ees,) aes( f' des f,) a( fis' ees fis,) c'( a' fis a,) des( bes' g bes,)
  %20
  \voiceTwo\slurUp
  | d16(_\scrCresc b' aes! b,) f'( d' b d,) g( d' b d,) aes'( d aes d,) g( ees' c ees,) aes( ees' c ees,)
  \voiceOne\slurDown
  | b4\rest g16( ees' des! ees,) aes( f' des f) a,( fis' ees fis,) c'( a' fis a,) des( bes' g bes,)
  %22
  \voiceTwo\slurUp
  | d16( b' aes b,) f'( d' b d,) g( e' b e,) aes( f' b, f) aes( fis' des fis,) bes( g' des g,)
  | b,4\rest c16( aes' ges aes,) des( bes' ges bes,) d( b' aes b,) f'( d' b d,) ges( ees' c ees,)
  %24
  | g!16( e' des! e,) bes'( bes' g g,) c( g' e g,) des'( g e g,) c( aes' f aes,) des( aes' f aes,)
  | bes,4\rest c16( aes' ges aes,) des( bes' ges bes,) d( b' aes b,) f'( d' b d,) ges( ees' c ees,)
  %26
  | g!16( e' des e,) \ottava #1 bes'( g' e  g,) c( a' e a,) des( bes' e, bes) d( b' ges b,) ees( c' ges c,)
  | c16( aes' f aes,) des( bes' f bes,) c( aes' f aes,) des( bes' f bes,) c( aes' f aes,) des( bes' f bes,)
  %28
  | c16( aes' fes aes,) des( beses' fes beses,!) c( aes' fes aes,) des( beses' fes beses,) c( aes' fes aes,) des( beses' fes beses,)
  | c16( aes' ees aes,) bes!( g' c, g) aes( f' c f,) g( ees' c ees,) \ottava #0 ees( c' f, c) des( bes' f bes,)
  %30
  | c16( aes' f aes,) c( g' ees g,) \voiceOne\slurDown aes( f' c f,) g( ees' c ees,) ees( c' aes c,) d( bes' aes bes,)
  | b'4\rest ees,16( d des g) f( ees c aes') fis( ees ces a') g( ees bes bes') ees,( d des g)
  %32
  | f16( ees c aes') fis( ees ces a') g( ees bes bes') g( ees b bes'!) g( ees c bes') g( ees des bes'~
  | <bes g bes,>8) bes\rest e,16( d cis g') f( d c aes'!) fis( d b a') g( d bes bes') e,( d cis g')
  %34
  | f16( d c aes'!) fis( d b a') g( d bes bes') g( d c bes') g( d cis bes') g( ees d bes')
  | b4\rest g16( ees des! a') g( ees des bes') g( ees c c') g( des bes des') g,( ees des a')
  %36
  | c16\rest g( des bes') g( e c c') c16\rest g( bes, des') g,(f des a') g( f c bes') c16\rest g( bes, b')
  | \time 4/4 c16\rest f,( a, c') f,( ees d g) f( ees c a') f( ees bes bes')
  %38
  | f16( ees ces ces') f,( ees ces g') b\rest f( bes, aes') f( d aes a')
  | \voiceTwo \time 3/2 g,4\rest a16\rest ees'([ d ees~] ees d des c) \clef bass r16 bes( a bes~ bes[ a aes g~]) g fis f fis
  %40
  | g16 f! fes ees d des c r r f fes ees d des c! r r f fes ees d des c! r
  | s4 \slurUp g'16( ees' des ees,) aes( f' des f,) a( fis' ees fis,) bes( g' ees g,) \clef treble \voiceOne\slurDown c16( aes'! f aes,)
  %42
  | c16( a' fis a,) des( bes' g bes,) c( a' fis a,) des( bes' g bes,) des( bes' g bes,) d( b' aes b,)
  \repeat unfold 2 {
    | b'4\rest ees,16( c' aes c,) aes'( f' des f,) g( ees' c ees,) b'\rest c( aes c,) b'\rest des( aes des,)
    | b'16\rest ees( aes, c,) aes'( f' c f,) c'( g' ees g,) c( aes' f aes,) des( bes' g bes,) ees( c' aes c,)
  }
  | \voiceTwo\slurUp c'16( aes' ees aes,) ges( des' aes des,) f( des' aes des,) ees( c' ges c,) des( bes' ees, bes) c( aes' ees aes,)
  % 48
  | aes'16( f' c f,) ees( bes' f bes,) des( bes' f bes,) c( aes' f aes,) bes( g' c, g) aes( f' c f,)
  | f'( des' aes des,) bes\rest g'( c, bes) bes\rest f'( bes, aes) f'( c' g c,) bes\rest f'( bes, aes) bes\rest e( aes, g)
  %50
  | des'16( aes' f bes,) bes\rest ees!( aes, ges) bes\rest des( ges, f) c'( g'! ees g,) bes\rest c( f, ees) bes'\rest bes( ees, des)
  | \voiceOne\slurDown c( a' fis a,) des( bes' g bes,) bes( g' ees g,) c( aes' f aes,) des( bes' g bes,) d( b' aes b,)
  %52
  | b'4\rest ees,16( c' aes c,) aes'( f' des f,) g( ees' c ees,) b'\rest c( aes c,) b'\rest des( aes des,)
  | b'16\rest ees( aes, c,) aes'( f' c f,) c'( g' ees g,) c( aes' f aes,) des( bes' g bes,) ees( c' aes c,)
  %54
  \time 4/4
  | bes4\rest c,_\mg des16(^\md bes' g bes,) d( b' aes b,)
  \time 3/2
  | b'4\rest ees,16( c' a c,) a'( f' des f,) c'( ees a, ees) b'\rest c( a c,) b'\rest des( a des,)
  %56
  | b'16\rest ees( a, c,) a'( f' c f,) c'( g' ees g,) c( a' ees a,) ees'( b' f b,) ees( c' a c,)
  \time 4/4
  | c,4_\mg des16(^\md bes' f bes,) d( b' aes b,) ees( c' a c,)
  %58
  \time 3/2
  | bes'4\rest f16( des' bes des,) a'( ges' ees ges,) bes( f' des f,) bes\rest c( bes ees,) bes'\rest des( bes des,)
  | ges16( ees' bes ees,) aes( f' c f,) bes( ges' des ges,) bes( g' des g,) des'( bes' ees, bes) c( aes' ees aes,)
  %60
  | bes4\rest aes16( f' des ees,) c'( bes' ges bes,) des( aes' f aes,) bes\rest  e( des e,) bes'\rest f'( des f,)
  | \voiceTwo\slurUp bes16( g' f g,) c( aes' f aes,) des( a' f a,) des( bes' f bes,) f'( des' g, des) e( c' g c,)
  %62
  | bes4\rest aes'16( c aes c,) bes'( des bes des,) aes'( d aes d,) bes'( des bes d,) aes'( ees' aes, ees)
  | \voiceOne\slurDown \ottava #1 g16( e' g, e) aes( f' aes, f) aes( f' ees f,) a( fis' ees fis,) a( fis' ees fis,) bes( g' ees g,)
  %64
  | \voiceTwo\slurUp bes16( g' ees g,) ces( aes' ees aes,) b( g'! ees g,) c( aes' ees aes,) c( aes' fes aes,) des( aeses' fes beses,)
  | c16( a' f a,) des( bes'! f bes,) f'( bes f bes,) e( b' e, b) ees( b' ees, b) ees( c' ees, c)
  %66
  | ees16( c' ges a,) \ottava #0 ges( ees' c ees,) f( des' bes des,) \ottava #1 des'(^\markup{"a tempo"} bes' e, g,) \ottava #0 f( des' bes des,) e( c' bes c,)
  | \ottava #1 ces'16( bes' ees, bes) \ottava #0 ees,( des' bes des,) ees( ces' aes ces,) \ottava #1 bes'( aes' d, aes) \ottava #0 d,( bes' d, bes) d( aes' d, aes)
  %68
  | aes'16( f' c f, aes f c f) g( ees' c <g-1> <g-4> ees c ees) f( des' aes <f-1> <f-4> des aes des
  | \oneVoice \time 4/4 aes16 fes' des fes, aes  ees' des ees,) ees'( c' g  c, ees des g, des'
  %70
  | \time 3/2 \voiceTwo\slurUp <aes c aes'>4) ees'16( c' aes c,) aes'( f' des f,) g( ees' c ees,) f( c' aes c,) fes( des' aes des,)
  | ees16( ees' bes ees,) des( bes' ges bes,) ges'( ees' bes  ees,) f( des' bes des,) des( bes' f bes,) ees( c' ges c,)
  %72
  | f16( des' aes des,) c( aes' f aes,) f'( c' g c,) e( g c, g) ees'( c' ees, c) des( ees des ees,~)
  | <ees c' aes'>4\arpeggio \voiceOne\slurDown ees16( c' aes c,) r f'( aes, f) r ees'( aes, ees) f( c' aes c,) fes( des' aes des,)
  %74
  | r16 ees'( ees, ges) r16 bes-4( des,-1 ges-2) ges-1( ees' bes ees,) f( des' bes des,) bes'\rest bes( ges des) bes'\rest c( ges ees)
  | f16( des' aes des,) c( aes' f c) bes'\rest c( f, c) bes'\rest g( e c) ees( g ees c) des( ees des c~)
  %76
  | \voiceOne\slurUp\tieUp <c aes'>4 <aes c>--( <f f'>-- <g ees'>-- <aes c>-- <aes bes des>--
  | <aes c ees>4-- <aes des f>-- <bes c e aes>-- <aes ces f aes>--  <des ees g bes ees~>2--)
  <c aes' c ees>1.\fermata
  \bar "|."
}

upperStaffB =   \relative c' {
  \partial 2.
    c4 des des
  | s4 ees aes g s2
  | s4 aes c c des ees
  | s4 ees,\p aes g s2
  | s4 aes c c des ees
  %5
  | \voiceOne c'4 ges f ees des c
  | a'4 ees des c bes aes
  | f'4 s16 g8 s f s16 f4 s16 f8 s e s16
  % page 2, gl begins
  | des4 s16 ees8 s8 des8 s16 c4 s16 c8 s8 bes8 s16
  | \voiceTwo c,4 des bes c des d
  %10
  \repeat unfold 2 {
    | s4 ees4 aes g s2
    | s4 aes c c des ees
  }
  | \voiceOne c'4 ges f ees des c
  % 15
  | gis'4 d c b a gis
  | e'4 s16 f8 s ees8 s16 fes4 s16 f8 s fes s16
  | ees4 s16 ees8 s des8 s16 des4 s16 des8 s c s16
  %18
  | \voiceTwo d,4 ees b c d ees
  | s4 g aes a c des
  %20
  | \voiceOne d4 f g aes g-> aes
  | \voiceTwo s4 g, aes a c des
  %22
  | \voiceOne d4 f g aes a bes
  | s4 c,4 des d f ges
  %24
  | g4 bes c des c des
  | s4 c,4 des d f ges
  %26
  | g4 bes c des d-> ees
  | c4 des c des c des
  %28
  | c4 des c des c des
  | c4 bes aes g ees des
  %30
  | c4 c \voiceTwo aes g ees d
  | s4 ees f fis g ees
  %32
  | f4 fis g g g s
  | s4 e f fis g e
  %34
  | f4 fis g s4 s2
  | s4 s16*3 a16 s16*3 bes16 s16*3 c16 s16*3 des16 s16*3 a16
  %36
  | s16*3 bes16 s16*3 c16 s16*3 des16 s16*3 a16 s16*3 bes16 s16*3 b16
  | s16*3 c16 s16*3 g16 s16*3 a16 s16*3 bes16 % time change to 4/4
  %38
  | s16*3 ces16 s16*3 g16 s16*3 aes16 s16*3 a16
  | \voiceOne\slurDown b16\rest g,( ees' bes') \slurUp fis4--( g) c,4--( des) a--(
  %40
  | bes4) fis--( g) fis--( g) fis--(
  | \once\stemDown f) g aes a bes \voiceTwo c
  %42
  | c4 des c des des d
  | s4 ees aes g s2
  %44
  | s4 aes4 c c des ees
  | s4 ees, aes g s s
  %46
  | s4 aes c c des ees
  | \voiceOne c'4 ges f ees des c
  %48
  | aes'4 ees des c bes aes
  | f'4 s16 g8 s f s16 f4 s16 f8 s e s16
  %50
  | des4 s16 ees8 s des s16 c4 s16 c8 s bes s16
  | \voiceTwo c,4 des bes c des d
  %52
  | s4 ees aes g s2
  | s4 aes c c des ees
  %54
  | s4 \slurUp c,16( aes' f aes,) des4 d % one bar at 4/4
  | s4 ees a c s2
  %56
  | s4 a c c ees ees
  | c,16( a' f a,) des4 d ees
  %58
  %\time 3/2
  | s4 f4 a bes s2
  | ges4 aes bes bes des c
  %60
  | s4 aes c des s2
  | \voiceOne bes4 c des des f e
  %62
  | s4 aes bes aes bes aes
  | \voiceTwo g4 aes aes a a bes
  %64
  | \voiceOne bes4 ces b c c des
  | c4 des f e ees ees
  %66
  | ees4 ges, f des' f, e
  | ces'4 ees, ees bes' d, d
  %68
  | aes'4 s g s f s
  | s1
  %70
  | \voiceOne s4 ees aes g f fes
  | ees4 des ges f des ees
  %72
  | f4 c f e ees des
  | \voiceTwo s4 ees, s16 f'8 s ees s16 f,4 fes
  %74
  | s4*2 g4 f s16 bes8 s c s16
  | f,4 c s s ees des
  %76
  | s1.*3
}


%% This extra voice is just for bar 40 and its cross staff slurs and glissandi.
%%
upperStaffC = {
  %% space to bar 40
  s2. s1.*7 % p1
  s1.*10    % p2
  s1.*10    % p3
  s1.*9 s1  % p4
  s1 s1.    % p5, first system
  %% uncomment \hidenotes to see what is going on underneath
  \voiceFour\slurDown \voiceFourStyle \hideNotes
  \shpSlurB ees,4( s16*2 \stemUp
  \once\fullGliss ees,16\glissando \change Staff="lower" f')
  [g'']                 % this is here to spread the staves vertically
  \stemDown
  \change Staff="upper" \shpSlurB des,16( s16*4
  \stemUp
  \once\fullGliss ees,16\glissando \change Staff="lower" f'16)
  \change Staff="upper" s16*6
  \once\fullGliss ees,16\glissando \change Staff="lower" f'16
}
%% end bar 40

midDynamics = {
  \partial 2.
    s16 s8.\< s4 s16 s8.\f
  | s1.\p
  | s2. s2\< s8. s16\!
  | s1.
  | s2. s2.\<
  %5
  | s2\f s8. s16\> s2 s4\!
  | s2\f s16 s8.\> s2 s16\! s8.
  | s1.-\scrDim
  % page 2, gl begins
  | s1.
  | s2\p s4\< s2 s4\f
  %10
  \repeat unfold 2 {
    | s4 s4\p s1
    | s4*3 s2\< s8 s16 s16\!
  }
  | s2\f s8 s8\> s2 s4\!
  %15
  | s2\f s8 s8\> s2 s4\!
  | s1.*2
  % 18
  | s1\p s2 | s4 s4\p s2 s4\< s16*3 s16\!
  %20
  | s4 s4*3 s4\f s16\> s8 s16\! | s4 s4\p s2 s4\< s16*3 s16\!
  %22
  | s1-\scrCresc s4\f s16\> s8 s16\! | s1-\scrCresc s4\< s8 s16 s16\!
  %24
  | s1 s4\f s16\> s8 s16\! | s4-\tweak X-offset #.1 \mf s4*3 s4\< s4\!
  %26
  | s1-\scrCresc s4\ff s16\> s8 s16\! | s1-\tweak X-offset #.1 \mf s2
  %28
  | s1-\scrDim s2 | s1.
  %30
  | s1. | s4 s4\pp s1
  %32
  | s1. | s4 s4\pp s1
  %34
  | s1.*2
  % 36
  | s16 s16\< s16*4 s16\! s16 s4*3 s16 s16\> s16 s16\!
  | s1                          % \time 4/4
  % 38
  | s1 | s1.
  %40
  | s1. | s1.
  %42
  | s1.
  \repeat unfold 2 {
    | s4 s4\p s2 s4_\scrCresc s
    | s2 s4 s4\< s4 s16*2 s16\! s16
  }
  | s4\f s s16*3 s16\> s4 s16*3 s16\! s4
  %48
  | s2\f s16 s16\> s8 s4 s16*3 s16\! s4 | s1.-\scrDim
  %50
  | s1. | s1.\p
  %52
  | s4 s4\p s1 | s2 s2\< s4 s16 s16\! s8
  %54
  | s16*3 s16\p s8 s16 s16\< s4 s8 s8\f
  | s4\p s4 s1
  %56
  | s2 s4\< s2 s16*3 s16\!
  | s8 s8\< s4 s16*3 s16\! s4
  %58
  | s1.\p
  | s2 s4\< s16*3 s16\! s4\>s4\!
  %60
  | s1.
  | s2 s4\< s16*3 s16\! s8 s8\> s8 s8\!
  %62
  | s1.\mf
  | s1.-\scrCresc
  %64
  | s2\f s1-\scrDim
  | s1 s2-\scrRit
  %66
  | s1.\pp s1.
  %68
  | s1. | s1
  %70
  | s4 s4\mf s1 | s1.
  %72
  | s2 s4 s4-\scrDim s2
  | s4 s4\p s1
  %74
  | s1.
  | s4*3 s4-\scrDim s4*2
  %76
  | s4 s4\mf s1
  | s1.-\scrDimRit
  | s1.
}

lowerStaffA = \relative c, {
  \partial 2. \oneVoice
    r4 r2
  | aes4^> ees''\( aes c f fes
  | ees4 c aes f fes ees\)
  | aes,,4^> ees''\( aes c f fes
  | ees4 c aes f fes ees\)
  %5
  | <aes, aes,>4( ees') \voiceOne <aes aes'>2-- <ges ees'>--
  | \oneVoice <aes,aes,>4( f') \voiceOne f'2-- c--
  | \oneVoice <aes,aes,>4 <bes'des g bes>--( <aes des f aes>) aes, <aes'c f aes>--( <g c e g>)
  % page 2, gl begins
  | <aes, aes,>4 <ges'' ees bes ges>--( <f des bes f>) \voiceOne aes,, ees''--( bes)
  | R1.
  %10
  \oneVoice
  \repeat unfold 2 {
    | aes,,4^> ees''\( aes c f fes
    | ees4 c aes f fes ees\)
  }
  | <aes, aes,>4( ees') \voiceOne <aes aes'>2-- <ges ees'>--
  %15
  | <e, e,>4( b') <e e'>2-- a4( gis)
  | \oneVoice c,,4 <aes'' c f aes>--( <g c e g>) des, <aes'' c f! aes>( <aes des fes aes>)
  | ees,4 <g' c ees g>--( <g des' ees g>) aes, <aes' ees'>--( ees)
  %18
  | R1.
  | \voiceOne e4\rest ees8( d des[ c b c] ees fis g4~)
  %20
  | g8 aes( b d e4--\noBeam f) g->( aes)
  | d,,4\rest ees8( d des[ c b c] ees fis g bes)
  %22
  | b8( d \clef treble f fis g\noBeam aes4) a8-- a4->( bes!)
  | \clef bass d,,4\rest aes'8\( g ges[ f e f] aes b c ees
  %24
  | \clef treble e8 g! bes4~\) bes8[ a( bes c)] c4->( des)
  | \clef bass ees,,4\rest  aes8\( g! ges[ f e f] aes b c ees\)
  %26
  | \clef treble e8( g bes b c\noBeam des4) d8-- d4->( ees!)
  | \clef bass des,,,8_( aes' f' aes \clef treble des[ f bes aes] f des \clef bass aes f)
  %28
  | fes,8( des' fes aes \clef treble des[ fes beses aes] fes des \clef bass aes fes)
  | ees,8 ees' aes_\( c_~ \once\stemDown <c aes>2\) b,8\rest \slurDown c'( aes ees)
  %30
  | \voiceOne\slurUp f'4--( ees--) aes,2\rest aes2\rest
  | \oneVoice <g bes, ees,>4\arpeggio des\rest r2 des'2--~
  %32
  | des1.
  | <d g, d g,>2--\arpeggio r2 d2--( % FIX-THIS-MAYBE: looks like it should be a tie but following note is d-flat
  %34
  | des1.)
  \set Score.connectArpeggios = ##t
  | \voiceOne ees1.--\arpeggio
  %36
  | e2-- f2.--\arpeggio e4--
  | \time 4/4 ees!1~--\arpeggio % FIX-THIS-MAYBE: src has dotted whole after 4/4 time change
  %38
  | ees2 d--\arpeggio
  | \oneVoice <des g, bes, ees,>4--\arpeggio <c a>_-_( <des bes>) \set doubleSlurs = ##t <ees, fis>( <g ees>) <ees c>--(
  %40
  | <des c>)  \set doubleSlurs = ##f \voiceOne\slurDown \repeat unfold 2 { aes8.( ces!16 bes4) } aes8.( ces!16
  | \oneVoice <bes ees,>4) d\rest d2\rest d\rest % FIX-THIS: slur end-point needs tweak
  %42
  | s1.
  \oneVoice
  \repeat unfold 2 {
    | aes,4^> ees''\( aes c f fes % 43 & 45
    | ees4 c aes f fes ees\)    % 44 & 46
  }
  | <aes, aes,>4( ees') \voiceOne <aes aes'>2-- <g ees'>--
  %48
  | <aes, aes,>4( f') f'2-- c--
  | \oneVoice <aes, aes,>4 <bes' des g bes>--( <aes des f aes>) aes, <aes' c f aes>--( <g c e g>)
  %50
  | \voiceOne <aes, aes,>4 s2 aes4  ees''--( des)
  | R1.
  %52
  | \oneVoice aes,,4^> ees''\( aes c f fes
  | ees4 c aes f\) \voiceOne\slurUp fes( ees)
  %54
  | \time 4/4 d4\rest d\rest d2\rest \time 3/2
  | \oneVoice <f, f,>4^> c'4\( f a f' e
  %56
  | ees!4 c a f\) \voiceOne\slurUp des->( c)
  | \time 4/4 d4\rest d\rest d2\rest \time 3/2
  %58
  | \oneVoice bes,4 f''( c' des ges f)
  | r8 des( c aes f ees aes, ees' \voiceTwo ges4 aes)
  %60
  | \oneVoice <f des,>\arpeggio( aes8 des des[ d] ees4 \clef treble bes'4 aes)
  | \clef bass r8 des,( c bes g des c g') \voiceOne\slurUp g'2
  %62
  | f,4( \stemDown c'8 aes') \stemUp\slurDown fes,8( bes ces aes') ees,( b' c aes')
  | \clef treble c,8( g' aes ees') aes,( c,4 b8) ees'( des <g, ees> bes,)
  %64
  | aes8( ees'4 ces'8) ges,( ees'4 c'8) fes,,8( des'4 des'8)
  | \clef bass des,,8( bes' \clef treble f' des') \clef bass c,,( bes' \clef treble <e g> des') \clef bass f,,,( aes'! \clef treble <ees' ges> c')
  %66
  | \clef bass \oneVoice <bes,,, f''>4\arpeggio \clef treble <des'' c'>8\arpeggio[( bes' f des aes g!)] \clef bass c,,4 <bes'' c aes'>8( g')
  | \voiceOne\slurDown f,,4 \clef treble <f'' bes>8[( aes ees ces \clef bass g f)] bes,4 s4
  %68
  | \oneVoice ees,4 f''8[( ees c g)] ees'[( des aes f)] des'[( c
  | aes8 ees)] c'[( bes g ees~] ees ees,)
  %70
  | \voiceOne\slurUp r2 aes''1--~
  | aes2 ges1--
  %72
  | f2--( f4) e ees2--
  | \oneVoice aes,,,4 ees''( des'-- c--) des,\rest aes(
  %74
  | <ees' c'>4-- bes'--) des,\rest aes,( <ges'' bes>-- beses--)
  | des,4\rest aes( aes'-- g--)( g)( ees)(
  %76
  | <aes, ees'>4) f'( des c <aes ees'> <f des'>
  | <ees ees'>4 <des des'> <c c'> <f, f'> <ees ees'>2)
  \slashedGrace{aes8} <ees'' aes ees'>1.\fermata
}

lowerStaffB = \relative c'{
  \partial 2.
    s2.
  | s1.*4
  %5
  | s2 \shpSlurA f4( ees) \shpSlurA des( c)
  | s2 des4( c) bes( aes)
  | s1.
  % page 2, gl begins
  | s1 <g ees>2
  | s1.
  %10
  | s1.*4
  | s2 \shpSlurA f'4( ees) \shpSlurA des( c)
  %15
  | s2 \shpSlurA c4( b) <e, b>2
  | s1.*2
  %18
  \voiceTwo
  | s1.
  | ees,,2 ees'1
  %20
  | ees'2 <aes b> <ees' c ees,>
  | ees,,,2 ees'1
  %22
  | <aes' ees>2 <d b> <ees! des>
  | f,,,2 aes'1
  %24
  | <des' aes>2 <g e> <a f>
  | aes,,,2 aes'1
  %26
  | <des' aes>2 <g e> <aes ges>
  | s1.
  %28
  | s1.
  | s2 \stemUp\slurUp aes4^-( g^-) \stemNeutral f,2\rest
  %30
  | \voiceTwo <c' aes>2 r8 aes( c, ees,) f'4( bes,)
  | s1.
  %32
  | s1.*2
  %34
  | s1.
  | <g' bes, ees,>4\arpeggio des\rest des2\rest des2\rest
  %36
  | r2 <bes' g c, c,>4\arpeggio des,4\rest des2\rest
  | <a' f,>4\arpeggio des,4\rest des2\rest
  %38
  | aes'2 <aes bes,>4\arpeggio r
  | s1.
  %40
  | s4 aes,4 ees aes ees aes
  ! s1.
  %42 - 46
  | s1.*5
  | s2 \shpSlurA f''4( ees) \shpSlurA des( c)
  %48
  | s2 des4( c) bes( aes)
  | s1.
  %50
  | \slurUp s4 <ges bes ees ges>^-( <f bes des f>) s <ees g>2
  | s1.
  %52
  | s1.
  | s1 aes,2
  %54
  | s1
  | s1.
  %56
  | s1 f2
  | s1
  %58
  | s1.
  | s4*4 \voiceOne ees''2
  %60
  | s1.
  | s1 \voiceTwo\slurDown bes4( c)
  %62
  | f,4-- s f-- s ees-- s
  | c'4-- s s1
  %64
  | aes4-- s ges-- s fes-- s
  | des4-- s c-- s f,-- s
  %66
  | s1.
  | s4 ces''4 s4*3 \slurUp <aes bes d g>8( f')
  %68
  | s1.
  | s1
  %70
  | \slurDown aes,,,4( ees'') c'( ees, aes des
  | bes4) aes,,-- <ees'' bes'>( ges bes beses
  %72
  | aes4) aes,-- g'2~( g4 ees4)
  | s1.
  %74
  | s1.*2
  %76
  | s1.*2
  | s1.
}

upperStaff = <<{ \upperStaffA }\\{ \upperStaffB }\\{ \upperStaffC }>>
lowerStaff = <<{ \lowerStaffA }\\{ \lowerStaffB }>>

%-------Typeset music and generate midi
\score {
    \context PianoStaff \with {
      \mergeDifferentlyHeadedOn
      \mergeDifferentlyDottedOn
    } <<
        \set PianoStaff.midiInstrument = "acoustic grand"
        \new Staff = "upper" { \clef treble \global \upperStaff }
        \new Dynamics        { \midDynamics                     }
        \new Staff = "lower" { \clef bass   \global \lowerStaff }
    >>
    \layout{ }
    \midi  { }
}
