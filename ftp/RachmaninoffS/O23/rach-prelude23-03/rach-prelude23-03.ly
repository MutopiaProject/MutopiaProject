%%--------------------------------------------------------------------
% LilyPond typesetting of Rachmaninoff Prelude Op. 23 No. 3
%%--------------------------------------------------------------------

%----- Notes ---------------------------------------------------------
% * Can't find any standard notation reference on how it's done when
%   one staff contains both treble and bass clef notes (bar 56-58).
%   Right now using rehearsal mask pretending to be small clef, and
%   only print on system start. Coped for cases when line break changes.
% * Extensive effort attempted to reduce it to 4 pages. All these
%   accounting for LilyPond's insistance of dynamics vertical aligning
%   and excessive extent estimation:
%   - Some tenuto and staccato marks are redefined
%   - Flatten some slurs
%   - Reduce stem length whenever feasible
%   - Fool Y-extent estimation of various objects
%   - Standard engrave practice in few places are ignored intentionally
% * Other notes are marked "EDITORIAL NOTES" inline

%----- Known problems ------------------------------------------------
% * Slope of staff change line in bar 20 is too steep if line break
%   occurs there
% * Curves to fix: bar 22-23, 73
% * Most staff change lines aren't pretty
% * Staff packing is too agressive
%   - Some hairpins / articulations can be mistaken to belong to
%     staff above / below
%   - A4 and letter paper size have different music layout (!)

%%--------------------------------------------------------------------
% The Mutopia Project
% LilyPond template for keyboard solo piece
%%--------------------------------------------------------------------

%% BEWARE! Possible to be rendered with 2.18.x, but for unknown reason
%% some notes in bar 7 left hand are misaligned.
\version "2.19.10"

%---------------------------------------------------------------------
%--Paper-size setting must be commented out or deleted upon submission.
%--LilyPond engraves to paper size A4 by default.
%--Uncomment the setting below to validate your typesetting
%--in "letter" sizing.
%--Mutopia publishes both A4 and letter-sized versions.
%---------------------------------------------------------------------
% #(set-default-paper-size "letter")

%--Default staff size is 20
% #(set-global-staff-size 20)

\paper {
  top-margin = 8\mm                              %-minimum top-margin: 8mm
  top-markup-spacing.basic-distance = #6         %-dist. from bottom of top margin to the first markup/title
  markup-system-spacing.basic-distance = #5      %-dist. from header/title to first system
  top-system-spacing.basic-distance = #8         %-dist. from top margin to system in pages with no titles
  last-bottom-spacing.basic-distance = #12       %-pads music from copyright block

  ragged-last = ##f
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}

%---------------------------------------------------------------------
%--Refer to http://www.mutopiaproject.org/contribute.html
%--for usage and possible values for header variables.
%---------------------------------------------------------------------
\header {
  title = "Prelude III"
  composer = "Sergei Rachmaninoff (1873-1943)"
  opus = "Op. 23, No 3"
  date = "1903"
  style = "Romantic"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  source = "IMSLP - Muzyka and Gutheil editions"

  maintainer = "Abel Cheung"
  maintainerEmail = "abelcheung at gmail dot com"
  mutopiatitle = "Prelude Op. 23, No. 3"
  mutopiaopus = "Op. 23"
  mutopiacomposer = "RachmaninoffS"
  mutopiainstrument = "Piano"

 footer = "Mutopia-2014/07/27-1990"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2014 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " " \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

%----------- function for adding articulation to all notes

#(define tied? #f)

#(define (check-tie e)
   (if (eq? 'TieEvent (ly:music-property e 'name))
       (set! tied? #t)))

#(define (add-articulation articulation m)
   (let ((ar (make-music 'ArticulationEvent 'articulation-type articulation)))
     (for-some-music
      (lambda (evt)
        (let ((name    (ly:music-property evt 'name))
              (es      (ly:music-property evt 'elements))
              (ar-list (ly:music-property evt 'articulations)))
          (case name
            ((EventChord)
             (if (and (not tied?)
                      (or (ly:duration? (ly:music-property evt 'duration))
                          (memq 'NoteEvent
                            (map (lambda(x) (ly:music-property x 'name)) es))))
                 (ly:music-set-property! evt 'elements (append es (list ar))))
             (set! tied? #f)
             (for-each check-tie es))
            ((NoteEvent)
             (if (not tied?)
                 (ly:music-set-property! evt 'articulations
                   (append ar-list (list ar))))
             (set! tied? #f)
             (for-each check-tie ar-list))
            ((TieEvent) (set! tied? #t))
            ((GraceMusic) #t)
            (else #f))))
      m)))

addArticulation =
#(define-music-function (parser location articulation mus)
   (string? ly:music?)
   "Add same articulation to all notes except rests, grace and tied notes"
   (set! tied? #f)
   (add-articulation articulation mus)
   mus)


%---------- Util macros and shorthands
onceOmitDyn = { \once \omit DynamicText }

shortenStemLength = { \temporary \override Stem.length-fraction = #(magstep -2) }
restoreStemLength = { \revert Stem.length-fraction }

% Default tenuto hides inside slur, pushing slurs outwards and prevent
% staves to be compacted. And padding is too small, so it can stick
% very close to slurs. Some may confuse with ledger line as well.
tenutoAlt =
#(let ((m (make-articulation "tenuto")))
   (ly:music-set-property! m 'tweaks
     (acons 'avoid-slur 'outside
       (acons 'slur-padding 0.4
         (ly:music-property m 'tweaks))))
   m)

%---------- Right hand parts

% bar 1-8, 9-16, 45-54
RHpattern = \relative c' {
  <bes d e bes'>4--~ q8 <a cis e a>-. <a d f>-. <bes d g>-. |
  <a d f>8. q16-- q4-- r4 |
  \tag #'(first second) {
    <a c \tag #'second ees \tag #'first f a>4--~
    \tag #'first \shortenStemLength
    \stemUp \once \override Beam.damping = 2 q8
    <g bes d g>-. \clef bass <e a cis e>-. <f a d f>-. \stemNeutral |
    \tag #'first \restoreStemLength
    <e a cis e>8. q16-- q4-- r4 |
  }
  \tag #'third  {
    <a c d a'>4--~ q8 <g bes d g>-. <g c e>-. <a c f>-. |
    <g c e>8. q16-- q4-- r |
    <g bes d g>8.-- q16-. q8-. <f c' f>-. <f bes d>4-- \clef bass |
    <f a f'>8.-- q16-. q8-. <e bes' e>-. <e a cis>4-- |
  }

  <<
    \relative c' {
      d8-. <d f>16 ( <cis e> <d f>4.\tenutoAlt ) <bes cis>8-. |
      \tag #'(first third) {
        <\tag #'first a d>8-. <d f>16 ( <cis e> <d f>4.\tenutoAlt )
      }
      \tag #'second {
        d16 -\tweak height-limit 1.0 ( <cis e> <d f> <cis e> ) <d f>4.--
      }
      <bes cis>8-. |
      s4
    }
    \\
    \relative c {
      f8 f4. bes16 ( a f g |
      f8 ) f4. -\tag #'second --
      bes16 ( a f g |
      \oneVoice <f \tag #'(first second) a d>8-.[ ) <g a e'>-.]
    }
  >>
  <f= a \tag #'third d f>4.-- \clef treble
  \tag #'first {
    <c'=' d fis>8-- |
    <<
      \relative c'' { g8-- gis16 ( a gis4-- a ) } \\
      \relative c' { <bes d>8 <b d> q4 <a cis> }
    >> |
  }
  \tag #'(second third) {
    \once \override Slur.ratio = 0.15
    <c=' d fis>8\tenutoAlt ( |
    <bes d g>-- <a d a'>\tenutoAlt )
    <cis \tag #'third e g cis>4\tenutoAlt (
    <d f \tag #'second a d> ) |
  }
}

% bar 65-66
RHpatternB = \relative c' {
  \tag #'first { r8 }
  \tag #'second { <f a d>8-> }
  \addArticulation "staccato" {
    <d aes' d>16 <f f'> <ees bes' ees> <g g'> <d bes' d> <f f'>
    <d a' d> <f f'> <cis a' cis> <e e'>
  } |
}

% bar 67-70
RHpatternC = \relative c'' {
  gis16     ( <a f> <cis e  >-- <d f>)
  <e, cis>  ( <f d> <bes cis>-- <a d>)
  <cis, bes>[( <d a> <e gis  >-- <f a>])
  \tag #'second \clef bass
  \tag #'first \temporary \stemUp
  gis,      ( <a f> <cis e  >-- <d f>)
  \tag #'first \stemNeutral
  <e, cis>  ( <f d> <bes cis>-- <a d>)
}

RH = \relative c' {
  \repeat volta 2 {
    \keepWithTag #'first  \RHpattern
    \keepWithTag #'second \RHpattern
  } |

  \barNumberCheck 17
  <f a b d f>8->[ <e gis b d e>-> <cis a' cis>->]
  <f d f,>16--[ ( g <e cis e,>8--] ) r |
  <<
    \relative c'' {
      r8
      \shortenStemLength
      f16 ( e
      \restoreStemLength
      d4--~ d8 ) e ( |
      c4--~ c8 ) d ( bes a ) |
      gis8\tenutoAlt ( g16 gis a4 ) r4 |
    }
    \\
    \relative c'' {
      r4 a \( g~ g f8 ees d4 \) |
      d4~ d16 cis ^( e g a cis e g ) |
    }
  >>

  \barNumberCheck 21
  <bes'=' d e g bes>8->[
  <a cis e g a>-> <fis c' d fis>->]
  <g c, g>16--[ ( a <fis c fis,>8--] ) r |

  <<
    \relative c''' {
      a16\rest
      \shortenStemLength
      c ( bes a
      \restoreStemLength
      g4--~
      \shortenStemLength
      g8 ) a ( |
      \restoreStemLength
      f4--~ f8 ) g ( ees d ) |
      cis8\tenutoAlt ( c16 cis d4 ) r |

      \barNumberCheck 25
      <d' g, f d>4.-- c8-.\noBeam a-. bes-. |
      <c f, ees c>4.-- bes8-.\noBeam g-. a-. |
      <bes g bes,>4.-- a8-.\noBeam f-. g-. |
      \shortenStemLength
      \repeat unfold 3 { a16\tenutoAlt ( g ) e-. f-. } |
      \repeat unfold 3 { bes\tenutoAlt ( a ) f-. g-. } |

      \barNumberCheck 30
      \repeat unfold 3 { a\tenutoAlt ( g ) e-. f-. } |
      g\tenutoAlt ( f d e   ) f\tenutoAlt ( e cis d ) e\tenutoAlt ( d b cis ) |
      d\tenutoAlt ( c a bes ) c\tenutoAlt ( bes g a ) bes\tenutoAlt ( a f g ) |
      \restoreStemLength
    }
    \\
    \relative c'' {
      \set Voice.beamExceptions = #'()
      r4 d ( c~ |
      c bes8 aes g4 ) |
      g4~ g16 f ( a cis d f a cis ) |

      \barNumberCheck 25
      r8 d,16 -. d  -. g  \tenutoAlt ( f   ) e c~ <c f>8 <bes f'> |
      r8 c16  -. c  -. f  \tenutoAlt ( ees ) d bes~ <bes ees>8 <a ees'> |
      r8 bes16-. bes-. ees\tenutoAlt ( d   ) cis a~ <a d>8 <g d'> |
      <a e'>4 r r |
      s r r |

      \barNumberCheck 30
      r s a8\tenutoAlt ( g ) |
      \temporary \override Slur.ratio = 0.15
      e  \tenutoAlt ( d ) bes'\tenutoAlt ( a   ) gis\tenutoAlt ( g ) |
      \shortenStemLength
      fis\tenutoAlt ( f ) e   \tenutoAlt ( ees ) d4 |
      \restoreStemLength

      \revert Slur.ratio
      \unset Voice.beamExceptions
    }
  >> |

  \barNumberCheck 33
  a='16\tenutoAlt ( g e f ) <a a'>-> ( g' e f ) <a a'>-> ( g' e )
  \tuplet 3/2 { f32 ( g a } |
  \addArticulation "staccato" {
    <bes, bes'>16 ) <a a'> <g g'> <f f'> <e e'> <d d'> <c c'> <bes bes'>
    <a a'> <g g'> <f f'> <e e'>
  } |

  \barNumberCheck 35
  <<
    \relative c' {
      <d d'>4.-> <c c'>4.-> |
      a'4-> s2 |
      <c, c'>4.-> <bes bes'>4.-> |
      g'4-> s2 |
      <bes bes,>4-> <a a,>-> f-> |

      \barNumberCheck 40
      \oneVoice <g d bes>-- <f c f,>-- \clef bass <d bes d,>-- \voiceOne |
      <cis e,>8 r r <b f'>-.[ <cis e>-. a'-.] |
      a-- r r <b f'>-.[ <cis e>-. a'-.] |
      <g a>-. r r4 r
    }
    \\
    \relative c'' {
      \temporary \override Slur.ratio = 0.15
      \repeat unfold 3 { bes16\tenutoAlt ( a ) f-. g-. } |
      \revert Slur.ratio
      a ( g e ) \oneVoice \once \tupletUp \tuplet 3/2 { e'32 ( f g }
      \addArticulation "staccato" {
        <a a,>16-> ) <g g,> <f f,> <e e,> <d d,> <c c,> <bes bes,> <a a,>
      } \voiceTwo |
      \repeat unfold 3 { aes\tenutoAlt ( g ) ees-. f-. } |
      g ( f d ) \oneVoice \once \tupletUp \tuplet 3/2 { d'32 ( ees f }
      \addArticulation "staccato" {
        <g g,>16-> ) <f f,> <ees ees,> <d d,> <c c,> <bes bes,> <a a,> <g g,>
      } \voiceTwo |
      g ( f d ) e32 ( g a16 ) g-. f-. <e a,>32 ( c d16-. ) c-. bes-. a-. |

      \barNumberCheck 40
      s2. |
      a16 ( g ) e-. f-. e ( f )
      \addArticulation "staccato" { g gis a \clef treble e' ees d } |
      cis ( g' ) \addArticulation "staccato" {
        e f e f g gis a e' ees d
      } |
      cis\tenutoAlt ( bes ) a-. bes-.
      a  \tenutoAlt ( g   ) e-. g-.
      e  \tenutoAlt ( d   ) cis-. d-.
    }
  >> |

  \barNumberCheck 44
  cis='8 \clef bass r16 cis,32 ( d e16-. ) d-. cis-. d-. cis8 r \clef treble |
  \keepWithTag #'third \RHpattern

  \barNumberCheck 55
  r4
  <<
    \relative c''' {
      \shortenStemLength
      d8-\tweak X-offset -5.5 ^\ppp ( c a bes |
      c4 ) c8 ( bes g a |
      bes4 ) bes8 ( a f g |
      a4 ) a8 ( g

      \restoreStemLength
      cis,4 ) |
      r4 c ( bes |

      \barNumberCheck 60
      a2 ) a4 ( |
      g2 ) g4 ( |
      f4. cis8 d\noBeam )
    }
    \\
    \relative c'' {
      r4 \once \omit DynamicText f4\ppp~ ( |
      f8 e c d ) ees4~ ( |
      ees8 d bes c ) d4~ ( |
      d8 cis a bes ) a[ ( g] |
      fis4~ fis8~ fis32 ) d ( e fis g8. ) g16 |

      \barNumberCheck 60
      %% EDITORIAL NOTES: Somewhat suspicious that G note doesn't have
      %% tenuto, because first note of other semiquaver phrases on
      %% both hands in surrounding bars (59-61) have tenuto.
      %% Adding tenuto here.
      g8\tenutoAlt( f d e32) c\<( d e\! f8.->) f16 |
      f8\tenutoAlt( e c d32) bes\<( c d\! ees8.->) ees16 |
      ees8( d bes g f\noBeam)
    }
  >> r8 |

  \barNumberCheck 63
  \repeat unfold 2 {
    r8 \addArticulation "staccato" { <d''='' f,>16 f q f q f q f } r8
  } |

  \keepWithTag #'first \RHpatternB
  \keepWithTag #'second \RHpatternB

  \barNumberCheck 67
  \temporary \override Beam.breakable = ##t
  \set Timing.baseMoment = #(ly:make-moment 1 8)
  \set Timing.beatStructure = #'(1 2 2 1)
  \set Timing.beamExceptions = #'()
  <f,=' a d>8 \transpose c c' \keepWithTag #'first \RHpatternC r8 |
  r8 \keepWithTag #'second \RHpatternC
  \unset Timing.baseMoment
  \unset Timing.beatStructure
  \unset Timing.beamExceptions

  \barNumberCheck 70
  \repeat unfold 3 {
    r8 | r8 <e,= cis>16 ( <f d> <gis e> <a f> <gis e> <a f> <cis e>[ <d f>] )
  }

  \barNumberCheck 73
  <a= cis>\tenutoAlt( <bes d>) |

  \change Staff="LH" <e, gis>--( <f a>)
  \change Staff="RH" <cis e >--( <d f>)
  \change Staff="LH" <a cis >--( <bes d>)
  \change Staff="RH" <e, gis>--( <f a>)
  r4 |

  \clef treble <bes'= d f bes>2-- <a c f a>4-- |
  <f a d f>2-- r8
  <<
    \relative c'' { a16 ( cis | d2.\fermata ) } \\
    \relative c'  { cis8 | d2. }
  >>
}

%---------- Left hand parts


% Maybe I shouldn't delve into this tag spaghetti
LHpattern = \relative c {
  <g d' e g>4--~ q8 <a e'>-.
  <d \tag #'first d,>-. <d g,>-. |
  <d d,>8. \tuplet 3/2 { a32\< -\tweak height-limit 1.0 ( b cis\! }
  \addArticulation "staccato" {
    d16-> ) c\p bes a bes a g f %% EDITORIAL NOTES: Gutheil missing \p
  } |

  \tag #'(first second) {
    \tag #'first <f c' f>4--~ \tag #'second <fis ees'>4--~ q8
    <g d'>-. a-. <a d,>-. |
    <a a,>8. \tuplet 3/2 { e32\< -\tweak height-limit 0.8 ( f g\! }
    \addArticulation "staccato" { a16-> ) g\p f e f e d cis } |
  }

  \tag #'third {
    <f d'>4--~ q8 <g d'>-. c-. <c f,>-. |
    <c c,>8. \tuplet 3/2 { g32\< ( a bes\! }
    \addArticulation "staccato" { c16-> ) bes\p a g a g f e } |
    <d' g,>8.-- <d d,>16-. <d g,>8-. <c a>-. bes16-- ( a ) f-. g-. |
    <c f,>8.-- <c c,>16-. <c f,>8-. <bes g>-. a16\tenutoAlt ( g ) e-. f-. |
  }

  d      8-. <bes bes'>4-- <a a'>8-. <f f'>-. <g g'>-. |
  <d' a'>8-. <bes bes'>4-- <a a'>8-. <f f'>-. <g g'>-. |
  \tag #'(first third) {
    <d' a'>8-. d'16 ( cis d ) cis-. -\tag #'first \< d-. cis-.\!
  }
  \tag #'first {
    <<
      \relative c { s4 | \once \override Rest.whiteout = ##t r4 f-- ( e ) } \\
      \relative c {
        \oneVoice d16-- ^( c
        bes -\tweak to-barline ##f \> a \voiceTwo |
        %% EDITORIAL NOTES: defies engraving practice (2nd voice should
        %% have downward stem / beam), for staff compacting
        %% Gutheil does this too
        \temporary \stemUp g\! f e8 ) \stemNeutral a2
      }
    >> |
  }
  \tag #'third {
    d16-- ( c bes a g
  }
  \tag #'second {
    <a=, d,>16 \tuplet 3/2 { a32\< ( b cis\! } d16-.-> ) cis-.
    d ( cis d cis d c ) bes-. a-. |
    g (
  }
  \tag #'(second third) {
    e16 f8 ) <a e' g>4-- ( <d, a' f'> ) |
  }
}

% bar 65-66
LHpatternB = {
  <<
    \relative c' { d2-> r8 a16-> cis-> } \\
    \relative c' {
      \tag #'first { r8 }
      \tag #'second { <a d,>8 }
      \addArticulation "staccato" {
        <aes b,>16 d <g, bes,> ees' <f, gis,> d' <f, a,> d'
      } <e, a,> cis'
    }
  >> |
}

% bar 67-70
LHpatternC = \relative c' {
  e(   d a-- d)
  bes( a g-- f)
  g[(  f e-- d])
  \clef bass
  \oneVoice
  e(   d a-- d)
  bes( a g-- f)
  \voiceTwo
}

LH = \relative c {
  \repeat volta 2 {
    \keepWithTag #'first  \LHpattern
    \keepWithTag #'second \LHpattern
  } |

  \barNumberCheck 17
  <d= a' b d>8->[ <e gis b d>-> <a, e' a>->]
  <a d,>--[ <a a,>--] \clef treble
  <<
    \relative c' {
      \dynamicUp \onceOmitDyn
      e16\p\< ( f\! |
      g ) cis, ( d\< e\! f--\> e d\! e d8 ) c16\< ( d\! |
      e--\> d c\! d c4 ) \absolute { f'\rest } |
      f,4 ( e ) \clef treble cis'='16 ( e g a ) |

      \barNumberCheck 21
      \once \omit Stem \once \omit Flag
      \once \override NoteColumn.ignore-collision = ##t
      \once \override VoiceFollower.after-line-breaking = ##t
      \once \override VoiceFollower.bound-details.left.attach-dir = #RIGHT
      \once \override VoiceFollower.bound-details.right.attach-dir = #LEFT
      \showStaffSwitch \change Staff="RH" bes8 \hideStaffSwitch
      \change Staff="LH" s2 \clef treble a='16 ( bes |

      % FIXME How to place hairpin within slur?
      \temporary \override Hairpin.height = 0.3
      \temporary \override Hairpin.extra-offset = #'(0 . -1.9)
      c ) fis, ( g^\< a\! bes-- a^\> g a\! g8 ) f16 g |
      \revert Hairpin.height
      \revert Hairpin.extra-offset

      % EDITORIAL NOTES: Both Gutheil & Muzyka editions have no slur here,
      % though similar passage at bar 19 has slur. Follow the editions.
      a-- g f g f4 r |
      \shortenStemLength
      bes,4\tenutoAlt ( a )
      \restoreStemLength
    }
    \\
    \relative c' {
      s8 |
      s16 \once \mergeDifferentlyDottedOn cis8. c4 ( bes~ |
      bes a8 )
      %% FIXME: default slur / hairpin positions look awkward
      %% though I can't get nice looking hairpin either...
      <<
        {  %% delicate!
          s16.-\tweak extra-offset #'( 0 . -5.8)
              -\tweak height 0.5
              -\tweak whiteout ##t
              -\tweak thickness 1.7
              -\tweak rotation #'(-6 0 0)
              ^\< s32\!
        }
        { g16 ^( a }
      >>
      \clef bass bes-\tweak rotation #'(-6 0 0) \> a f\! g ) |
      a,2 s4 |

      \barNumberCheck 21
      \oneVoice <g' d' e g>8->[ <a cis e g>->
      \clef bass <d, a' d>->] <a ees'>--[ <d, a' d>--] s |
      \voiceTwo s16 \once \mergeDifferentlyDottedOn fis''8. f4 ( ees~ |
      ees d8 ) c16\< ^( d\! ees\> d bes\! c ) |
      \clef bass d,2
    }
  >>
  \clef treble d'='8 ( c |

  \barNumberCheck 25
  <bes d g>4.-- ) c16-. c-. f\tenutoAlt ( ees d bes ) |
  <a c f>4.-- bes16-. bes-. ees\tenutoAlt ( d c a ) |
  <g d'>4.-- \clef bass a16-. a-.

  <<
    \relative c' {
      \set Voice.beamExceptions = #'()
      \oneVoice d16\tenutoAlt ( c bes g |
      \voiceOne cis4 ) \clef treble
      \oneVoice a'8\tenutoAlt ( g ) d'-> ( cis ) |

      \once \override VoiceFollower.bound-details.right =
      #'((padding . 3.5) (attach-dir . RIGHT))
      \voiceTwo
      \showStaffSwitch \change Staff="RH" g'-> ( f )
      \hideStaffSwitch \change Staff="LH"
      \clef treble \oneVoice d\tenutoAlt ( cis )
      \voiceOne bes\tenutoAlt ( a ) |

      \barNumberCheck 30
      f\tenutoAlt ( e )
      %\once \override VoiceFollower.bound-details.left.padding = 2
      %\once \override VoiceFollower.bound-details.right.padding = 2
      \voiceTwo
      \showStaffSwitch \change Staff="RH" cis'\tenutoAlt ( c )
      \hideStaffSwitch \change Staff="LH"
      \voiceOne
      s4 |

      \temporary \override Slur.ratio = 0.15
      c,,8\tenutoAlt ( bes ) g\tenutoAlt ( f ) e\tenutoAlt ( e' ) |
      \shortenStemLength
      d   \tenutoAlt ( a'  ) g\tenutoAlt ( c ) bes-> d->
      \restoreStemLength

      \revert Slur.ratio
      \unset Voice.beamExceptions
    }
    \\
    \relative c' {
      \set Voice.beamExceptions = #'()
      s4 |
      a4 s s | \clef bass
      <<
        \new Voice { \absolute { a,,2.-> } }
        { \voiceOne r4 \voiceTwo s g'8 ( f ) }
      >> |

      \barNumberCheck 30
      d ( cis ) \clef bass \oneVoice
      bes\tenutoAlt ( a ) f\tenutoAlt ( e ) |
      \voiceTwo
      \shortenStemLength
      a,,4 a a |
      \restoreStemLength
      a' a f'
      \unset Voice.beamExceptions
    }
  >> |

  \barNumberCheck 33
  <a= cis>4-> a16-> ( g e f ) \clef treble
  a'-> ( g e ) \tuplet 3/2 { f32 ( g a } |
  \addArticulation "staccato" { bes16 ) a g f e d c bes \clef bass a g f e } |

  \barNumberCheck 35
  <f a, d,>4.->\arpeggio
  \once \stemDown <a c, f,>4.->\arpeggio |
  <c e, a,>8.->\arpeggio\noBeam \tuplet 3/2 { e,32 ( f g }
  \addArticulation "staccato" { a16-> ) g f e d c bes a } |

  \barNumberCheck 37
  <ees' g, c,>4.->\arpeggio <g bes, ees,>4.->\arpeggio |
  <bes d, g,>8.->\arpeggio\noBeam \tuplet 3/2 { d,32 ( ees f }
  \addArticulation "staccato" { g16-> ) f ees d c bes a g } |

  \barNumberCheck 39
  <d' f, bes,>4->\arpeggio <e a, c,>->\arpeggio
  <f a, d,>8.->\arpeggio\noBeam \tuplet 3/2 { d32 ( e f } |
  <g g,>16-> ) f-. e-. d-. <c a>\tenutoAlt ( bes ) a-. g-.
  <f bes,>\tenutoAlt ( fis ) g-. gis-. |

  \barNumberCheck 41
  <a a,>8 r r <d d,>-.[ <e a,>-. <a f>-.] |
  <a e a,> r r \clef treble <d f>-.[ <e a,>-. <a f>-.] |
  %% EDITORIAL NOTE: Muzyka was wrong in final rest (undotted semiquaver)
  <a e a,> r r4 r8. \clef bass g,32 ( a |
  bes16-. ) a-. g-. a-. g8 r16 g,32 ( a bes16-. ) a-. g-. a-. |

  \barNumberCheck 45
  \keepWithTag #'third \LHpattern


  % Here comes the tricky part: independent clef change per voice
  % Pitch_squash_engraver is the key
  \barNumberCheck 55
  <<
    \relative c'' {
      \voiceOne
      s2. |
      \tupletDown
      r4 r8. \clef treble
      \once \override TupletBracket.padding = 0.5
      \tuplet 3/2 {
        g32 -\tweak X-offset -5 ^\ppp ( a bes
      } c8. ) c16-- |
      c16\tenutoAlt ( bes g a g8. )
      \once \override TupletBracket.padding = 0.5
      \tuplet 3/2 { f32 ( g a } bes8. ) bes16 |
      \tupletNeutral
      bes16 ( a f g f8. ) g16 ( a8 ) \clef bass
      a,,32 -\tweak to-barline ##f \< _( bes c d |
      \oneVoice
      ees8.->\! ) ees16 ees8-- _( d

      %% EDITORIAL NOTES: In Muzyka edition, slur ends at B♭ note and
      %% starts at 1st 32th note on this bar. However, for others bars, as
      %% well as similar passage on right hand, phrasing ends on
      %% 1st 32th note instead. Gutheil edition is consistent in this
      %% aspect. Trusting Gutheil edition here.
      bes c32 ) a ( bes c | \voiceOne

      \barNumberCheck 60
      d8.-> ) d16 d8-- _( c a bes32 ) g\< ( a bes\! |
      c8.-> ) c16 c8-- _( bes g a32 ) f\< ( g a\! |
      bes8.-> ) a16 ( g8 a~ a\noBeam )
    }

    \new Voice \with {
      \consists "Pitch_squash_engraver"
    } \relative c, {
      \oneVoice
      d8.--
      -\tweak extra-offset #'(0 . -2)
      -\tweak whiteout ##t
      -\tweak self-alignment-X -0.5 ^\mf
      d16-- d2_~ |
      \voiceTwo
      d2.~ |
      \set squashedPosition = #-7
      \temporary \override Score.RehearsalMark.font-size = -2
      \temporary \override Score.RehearsalMark.direction = #DOWN
      \temporary \override Score.RehearsalMark.self-alignment-X = 1.2
      \temporary \override Score.RehearsalMark.break-visibility = #begin-of-line-visible
      % FIXME probably end of bar immediately following treble clef change
      % should contain an unconditional small bass clef?
      \mark \markup{\musicglyph #"clefs.F"} d2.~ |
      \mark \markup{\musicglyph #"clefs.F"} d2 r4 |
      \unset squashedPosition
      \revert Score.RehearsalMark.font-size
      \revert Score.RehearsalMark.direction
      \revert Score.RehearsalMark.self-alignment-X
      \revert Score.RehearsalMark.break-visibility
      s2. |

      \barNumberCheck 60
      d2. |
      d2. |
      d4 ~ d8[ a'] d,
    }
  >>
  \clef treble \oneVoice
  \repeat unfold 2 {
    a'=16-.\< cis-.\! |
    <<
      \relative c' { d2-> r8 } \\
      \relative c' {
        r8 <bes bes'>-.[ <bes a'>-. <bes aes'>-.] <bes g'>-.
      }
    >>
  }
  \clef bass << \relative c' { a16-. cis-. } \\ { r8 } >> |

  \barNumberCheck 65
  \keepWithTag #'first \LHpatternB
  \keepWithTag #'second \LHpatternB

  <<
    \relative c' {
      \shortenStemLength d2.-> \restoreStemLength |
      s2 s8 a,16-- ( cis-- |
      d2.-- ) |
    }
    \\
    \relative c {
      \temporary \override Beam.breakable = ##t
      \set Timing.baseMoment = #(ly:make-moment 1 8)
      \set Timing.beatStructure = #'(1 2 2 1)
      \set Timing.beamExceptions = #'()
      <d a'>8 \clef treble \transpose c c' \LHpatternC s8 |
      r8 \LHpatternC
      \revert Beam.breakable
      \unset Timing.baseMoment
      \unset Timing.beatStructure
      \unset Timing.beamExceptions
    }
  >>

  \barNumberCheck 70
  <<
    \relative c {
      \repeat unfold 3 {
        r8 | r8 gis16( a bes a cis d bes[ a])
      }
    }
    \\
    \relative c, {
      a16[(-- cis]-- | d2~ d8)
      \repeat unfold 2 { a16( cis | d2~ d8) }
    }
  >>

  \barNumberCheck 73
  r8 |
  \change Staff="RH" r8
  \change Staff="LH" r8
  \change Staff="RH" r8
  \change Staff="LH" r8
  d,,=,8 r |
  <bes' d f>2-- <f c' f>4-- |
  <a a,>2-- r8
  <<
    \absolute { s8 | r4 d,,2\fermata } \\
    { <a g'>8 ( | <d, a' f'>2. ) }
  >>

}


%----------- Dynamics & tempo

Dynamics = {
  \tempo \markup \large "Tempo di minuetto" 4 = 66

  \repeat volta 2 {
    s4-\tweak X-offset -2 \mf s8\> s4.\! |
    s2. |
    s4-\tweak X-offset -4
      -\tweak extra-offset #'(1.5 . -1)
      -\tweak whiteout ##t \mf
    s8\> s4.\! |
    s2. |
    s8\p s8\< s4\! s4\> |
    s8\! s8\< s4\! s4\> |
    s2.\! |
    s8 s8\< s4\mf\> s4\! |

    %% EDITORIAL NOTES: Both Gutheil & Muzyka edition don't have decresc hairpin here.
    %% But out of six similar passages, only this one doesn't have hairpin, that
    %% seems suspicious. Adding hairpin here.
    s4\mf s8\> s4.\! |
    s2. |
    s4-\tweak X-offset -4 \mf s8\> s4.\! |
    s2. |
    s8\p s8\< s4\! s4\> |
    s8\< s4.\! s4\> |
    s2\! s8 s8\< |
    s8 s8\! s4-\tweak self-alignment-X #RIGHT \mf\> s4\p |
  } |

  \set Score.tempoHideNote = ##t
  \override Score.MetronomeMark.font-size = 1

  \barNumberCheck 17
  s2.-\tweak X-offset -2 \f |
  s8 s8\p s2 |
  s2. |
  s8.-\tweak X-offset -4 -\tweak whiteout ##t \mf\> s16\! s4 s8.\< s16\! |
  s2. |
  s2.-\tweak self-alignment-X #LEFT \mf |
  s2. |
  s2-\tweak X-offset -4 -\tweak whiteout ##t \mf
  \tempo 4 = 70 s4 |

  \barNumberCheck 25
  \tempo "Un poco più mosso" 4 = 76
  s2\p s8 s8\<
  s4.\! s16\> s16\! s4 |
  s2. |
  s4 s2\< |
  s4\f s2\p |
  s4 s2\cresc |
  s2.*2 |
  s2.\f |
  s2.-\markup\italic "marcato"

  \barNumberCheck 35
  s2.-\tweak X-offset -3.5 -\tweak whiteout ##t \ff |
  s8. s16*2/3\< s16*1/3\! s2 |
  s2. |
  s8. s16*2/3\< s16*1/3\! s2 |
  s2. |
  s4 s2\dim |
  s2.\mf |
  s2.\dim |
  s2.\p |
  \tempo "rit." 4 = 70
  s4-\tweak self-alignment-X -0.5 \pp
  \tempo 4 = 64 s4
  \tempo 4 = 58 s8
  \tempo 4 = 50 s8 |

  \barNumberCheck 45
  \tempo "Tempo I" 4 = 66
  s4\mf s8\> s4.\! |
  s2. |
  s4\mf s8\> s4.\! |
  s2. |
  \repeat unfold 2 { s8. s16\> s2\! } |
  s8\p s8\< s4\! s4\> |
  s8\! s8\< s4\! s4\> |
  s4\! s4\< s4\! |
  s8\> s8\! s2\p |

  \barNumberCheck 55
  s2.*7 |
  s16 s4..\dim s4\p | % shift dim a bit to compact staves
  s8 s8.\p\< s16\! s8.\> s16\! s8 |
  s8 s8\< s8\! s8\> s8\! s8 |
  s8 s8\cresc s2 |
  s8-\tweak X-offset -1.5 -\tweak whiteout ##t \f s8\dim s2 |

  \barNumberCheck 67
  s2.-\tweak X-offset -2 \p |
  s2.*3 |
  \repeat unfold 3 { s8 s8.\< s16\! s8.\> s16\! s8 | }
  s2. |
  s2-\tweak self-alignment-X #LEFT \mf s4\> |
  s2\!
  \tempo 4 = 40 s4\pp |
  s2. \bar "|."
}

%-------Typeset music and generate midi
\score {

  \context PianoStaff <<
    \set PianoStaff.midiInstrument = "acoustic grand"
    \accidentalStyle PianoStaff.piano
    \new Staff = "RH" << \clef treble \key d \minor \time 3/4 \RH >>
    \new Dynamics << \Dynamics >>
    \new Staff = "LH" << \clef bass   \key d \minor \time 3/4 \LH >>
  >>
  \layout {
    \context {
      \Score
      \omit TupletBracket
      \override TupletBracket.avoid-slur = #'ignore
      \override DynamicTextSpanner.style = #'none
      \override DynamicTextSpanner.font-size = 0
      \override VoiceFollower.after-line-breaking = ##t
      \override Hairpin.height = 0.5  %% default too thick for short hairpins
      \override DynamicText.Y-extent =
      #(ly:make-unpure-pure-container ly:grob::stencil-height '(-0 . 0))
      \override Stem.Y-extent = % Can't be crueler than this
      #(ly:make-unpure-pure-container ly:stem::height '(-0 . 0))
    }
    \context {
      \Voice
      \override Slur.Y-extent =
      #(ly:make-unpure-pure-container ly:slur::height '(-0 . 0))
      \override PhrasingSlur.Y-extent =
      #(ly:make-unpure-pure-container ly:slur::height '(-0 . 0))
    }
  }
  \midi {
    \tempo 4 = 66
    \context {
      \Score
      midiMinimumVolume = #0.3
      midiMaximumVolume = #1
    }
  }
}

