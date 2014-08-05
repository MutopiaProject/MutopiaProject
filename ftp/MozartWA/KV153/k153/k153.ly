\version "2.18.2"

%#(set-default-paper-size "letter")

\header {
    title = "Fugue in E-flat Major KV 153/375f"
    subtitle = "(Completed by Simon Sechter, 1788-1867)"
    composer = "Wolfgang Amadeus Mozart (1756-1791)"

    mutopiatitle = "Fugue in E-flat Major KV 153/375f"
    mutopiacomposer = "MozartWA"
    mutopiaopus = "KV 153/375f"
    mutopiainstrument = "Piano"
    date = "1782"
    source = "Breitkopf und Härtel (1878-1887)"
    style = "Classical"
    license = "Public Domain"
    maintainer = "Maurizio Tomasi"
    maintainerEmail = "zio_tom78@hotmail.com"
    maintainerWeb = "http://ziotom78.jimdo.com/"
    lastupdated = "2014/08/01"

 footer = "Mutopia-2014/08/05-424"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

\paper {
  markup-system-spacing #'basic-distance = #15 %distance from header/title to 1st system
  top-system-spacing #'basic-distance = #15 %dist. from top margin to system (no titles)
  last-bottom-spacing.basic-distance = #15   % pads the last system in each page
  top-margin = 12\mm
}

% These macros are used for the second voice only
staffUp = { \change Staff= "up" \voiceTwo }
staffDown = { \change Staff= "down" \voiceOne }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

voiceI = \relative bes {
    \voiceOne
    \partial 16
    \key es \major

    r16
    | R1*8
    | r2 r4 r8. bes16(

% 10
    | es4) es d r8. es16(
    | as4) as g r8. bes16(
    | es8) d c bes as g f es
    | d c bes as! g bes es g
    | as8 c bes as g a bes d
    | es8 g f es d4 r8. bes'16
    | c4 d, es8 d c a
    | bes f' as! g f es d f
    | es bes' es bes c bes as g
    | f es d c bes as g f

% 20
    | es4 r8. bes'16 c4 f,
    | g r8. c16 des4 g,
    | as! r8. d16 es4 a,
    | b8 g b d f as g f
    | f4 es-\trill d8 f, as4 ~
    | as g ~ g8 g' c bes
    | as g f es d c b as
    | g f es d c2^\markup { \large "(Sechter.)" }
    | b4 b'8.\rest c,16( g'4) g
    | fis r8. g16( c4) c

% 30
    | bes4 r8. d16( g8) f es d
    | c bes a g fis! es d c
    | bes d g bes as! c bes as
    | g f g a bes2
    | c4 bes2 g'8 f
    | es2 f8 es d c
    | bes4 d es8 des c bes
    | as4 bes ~ bes8 des, f es
    | des f bes g es4 c' ~
    | c bes8 c des es f4 ~

% 40
    | f8 bes, es4 ~ es8 c r8. es16
    | f4 bes, c r8. bes16
    | c4 d! es8 bes c d
    | es g f es d c bes as
    | g4 r8. es16( bes'4) bes
    | as r8. bes16( es4) es8. d16
    | c4 r8. c16( f8) es d c
    | bes as g f es d c bes
    | c es as bes c2
    | bes4 r8. bes16 c4 d

% 50
    | es8 bes c d es g f es
    | d es f g as! c bes as
    | g4 b,8.\rest es,16 f8 b\rest bes b\rest
    | es,4 b'8.\rest es,16( as4) as
    | g r8. as16( des4) des
    | c4 r8. es16( as8) g f es
    | d! c bes as g f es d
    | c4 d es b'8.\rest f16
    | g4 a bes r8. bes16
    | c4 d es r8. es,16

% 60
    | f4 as g f
    | es b'8.\rest es,16( as4) as
    | g r8. as16( des4) des
    | c r8. es16( as8) g f es
    | d! c bes as g f es d
    | c4 c' b\rest d,
    | d2( es)
    \bar "|."
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

voiceII = \relative es {
    \voiceTwo
    \partial 16

    r16
    | R1*3
    | r2 r4 r8. \staffDown es16(
    | bes'4) bes a r8. bes16( \staffUp
    | es4) es d r8. \slurUp f16(
    | bes8) a g f es d c bes \staffDown
    | a g f es d es f g
    | as! bes c4. f,8 bes as \staffUp

% 10
    | g f g a bes2
    | d8 es f d es2 ~
    | es d8 es bes a
    | bes \staffDown f g d es4 \staffUp r
    | es' f bes, r8. \staffDown bes16
    | g4 a \once \override Beam.positions = #'(4.4 . 4.8) bes8 \staffUp d f g
    | as c bes as g4 ges
    | f bes2 ces4
    | bes g'4. f8 es d
    | c bes as g f es d c

% 20
    | bes4 r8. es16 es4 d
    | es r8. ges16 f4 e
    | f r8. as16 g4 fis
    | g r r \staffDown r8. g,16(
    | c4) c b r8. \staffUp c16(
    | f4) f es r8. g16(
    | c8) bes as g f es d c
      \once \override Beam.positions = #'(-5.2 . -5.6) 
    | b \staffDown as g f es e f fis \staffUp
    | g2 b!8 d es c
    | d2 fis!8 g a fis

% 30
    | g2 r
    | fis8 g es c a4 \staffDown fis
    | g \staffUp r8. d'16 es4 f
    | es8 d c f bes, f' as g
    | f es d f es bes' es d
    | c bes as g f4 as ~
    | as g8 f es4 r8. \staffDown es,16(
    | as4) as g r8. as16( \staffUp
    | des4) des c r8. es16(
    | as8) g f es \once \override Beam.positions = #'(-4.2 . -5.2) des \staffDown c bes as

% 40
    | g f es des c es as c
    | des f es des c \staffUp d! es g
    | as c bes as g4 r8. f16
    | g4 a bes8 as g f
    | es \staffDown bes g c f, \staffUp f' as g
    | f es d f \staffDown bes, \staffUp es g f
    | g f es g c,4 d8 es
    | f4 d bes \staffDown g
    | as \staffUp c ~ c8 as' f es
    | d es f g as c bes as

% 50
    | g4 r8. f16 g4 a
    | bes r8. \staffDown d,16 es4 f
    | g8 g, as bes c es d c
    | bes as g \staffUp bes es d! es f
    | bes, des f es g as bes g
    | es4 as c2
    | f,4 d es \staffDown g, \staffUp
    | as8 c bes as g bes c d
    | es g f es d4 r8. es16
    | es8 as! g f bes4 r8. bes,16

% 60
    | c4 f ~ f8 es4 d8
    | es8 g, bes des c bes c d
    | es bes des c bes es f g
    | as g as bes c4 as
    | f8 as d, f es bes g bes
    | as4 as' s as,
    | as2( g)
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

voiceIII = \relative bes, {
    \voiceTwo
    \key es \major
    \partial 16

    \slurNeutral

    bes16(
    | es4) es d d8.\rest es16(
    | as4) \slurDown as g d8.\rest bes'16
    | es8 d c bes as g f es
    | d c bes as g f es f
    | g f e c f c' es! d
    | c bes a f bes f' bes a
    | g f es d c bes a g
    | f g a f bes c d es
    | f g f es d bes c d

% 10
    | es d es c bes f' as! g
    | f es d bes es bes' es d
    | c bes as g f es d c
    | bes as! g f es4 b'8.\rest es16
    | c4 d es d\rest
    | R1
    | d4\rest d8.\rest \slurUp bes16( es4) es
    | d d8.\rest es16( as4) as
    | g d8.\rest bes'16( es8) d c bes
    | as g f es d c bes as

% 20
    | g bes es g as c bes as
    | g es g a bes des c bes
    | as f as b c es d c
    | b4 r8. g16 as4 b,
    | c8 d es f g as f d
    | b g a b c c' d e
    | f4 f,8 g as4 d,8 es
    | f4 a,8 b c bes a as
    | g d' f! es! d b c a
    | d a' c bes! a g fis d

% 30
    | g d' g f! es d c bes
    | a g c, es d c bes a
    | g4 r8. g'16 c,4 d8 d16\rest bes(
    | es4) es d d8.\rest es16(
    | as4) as g d8.\rest bes'16(
    | es8) d c bes as g f es
    | d c bes as g bes c des
    | c f, d'! bes es bes des c
    | bes as g es as es' as g
    | f es des c bes c des d

% 40
    | es4 g, as r8. as'16
    | f4 g as r8. g16
    | f4 bes es, r8. d16
    | c4 f bes, r8. bes16_(
    | es4) es d r8. es16(
    | as4) as g r8. bes16(
    | es8) d c bes as g f es
    | d c bes as g4 es'
    | as,2 ~ as8 f as a
    | bes1 ~

% 50
    | bes
    | bes4 r8. bes'16 c4 d
    | es8 es, f g as c bes as
    | g f es des c bes c d
    | es bes des c bes as g bes
    | as bes c as f g as a
    | bes1 ~
    | bes ~
    | \oneVoice bes2 ~ bes8 d f g
    | as c bes as g4 r8. g,16

% 60
    | as4 f bes2
    | es,1 ~
    | es ~
    | es ~
    | es2 ~ es4. g8
    | as4 r bes2
    | es,1

    \bar "|."
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\score {
    \context PianoStaff <<
	\context Staff = "up" <<
	    \context Voice = "one" \voiceI
	    \context Voice = "two" \voiceII
	>>
	\context Staff = "down" <<
	    \clef bass
	    \context Voice = "three" \voiceIII
	>>
    >>
    \layout { }
    
  \midi {
    \tempo 4 = 110
    }


}


