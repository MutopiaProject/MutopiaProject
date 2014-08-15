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
%   occurs there (which is not the case currently)
% * Most staff change lines aren't pretty
% * Staff packing is too agressive
%   - Some hairpins / articulations can be mistaken to belong to
%     staff above / below
% * In Letter size, cresc in bar 29 can collide with tenutos
% * Can't get good looking hairpin in bar 19

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

 footer = "Mutopia-2014/08/15-1990"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2014 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " " \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
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
omitDyn  = { \once \omit DynamicText }
omitHair = { \once \omit Hairpin     }

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
  \omitDyn <bes d e bes'>4--\mf~ q8
  \omitDyn <a cis e a>-.\mp <a d f>-. <bes d g>-. |
  <a d f>8. q16-- q4-- r4 |
  \tag #'(first second) {
    \omitDyn <a c \tag #'second ees \tag #'first f a>4--\mf ~
    \tag #'first \shortenStemLength
    \temporary \stemUp \once \override Beam.damping = 2 q8
    \omitDyn <g bes d g>-.\mp \clef bass <e a cis e>-. <f a d f>-. |
    \stemNeutral
    \tag #'first \restoreStemLength
    <e a cis e>8. q16-- q4-- r4 |
  }
  \tag #'third  {
    \omitDyn <a c d a'>4--\mf~ q8
    \omitDyn <g bes d g>-.\mp <g c e>-. <a c f>-. |
    <g c e>8. q16-- q4-- r |
    <g bes d g>8.-- q16-. q8-. <f c' f>-. <f bes d>4-- \clef bass |
    <f a f'>8.-- q16-. q8-. <e bes' e>-. <e a cis>4-- |
  }

  <<
    \relative c' {
      \temporary \omit DynamicText
      \omitHair d8-.\p\< <d f>16 ( <cis e>
      <d f>4.\tenutoAlt\mf ) <bes cis>8-. |
      \tag #'(first third) {
        \omitHair <\tag #'first a d>8-.\p\< <d f>16 ( <cis e>
        \omitHair <d f>4.\tenutoAlt\mf )
      }
      \tag #'second {
        \omitHair \omitDyn d16\p\< -\tweak height-limit 1.0 (
        <cis e> <d f> <cis e> ) \omitHair <d f>4.--\mf
      }
      <bes cis>8-.\mf |
      s4
      \revert DynamicText.stencil
    }
    \\
    \relative c {
      \temporary \omit Hairpin \temporary \omit DynamicText
      f8\p\< f4.
      bes16\mp\> ( a f g |
      f8\p\< ) f4. -\tag #'second --
      bes16\mp\> ( a f g |
      \oneVoice <f \tag #'(first second) a d>8-.\p[ ) <g a e'>-.]
      \revert Hairpin.stencil
      \revert DynamicText.stencil
    }
  >>
  <f= a \tag #'third d f>4.-- \clef treble
  \tag #'first {
    <c'=' d fis>8-- |
    <<
      \relative c'' {
        \temporary \omit DynamicText
        g8--\p \omitHair gis16\< ( a gis4--\mf a\p )
        \revert DynamicText.stencil
      } \\
      \relative c' {
        \temporary \omit DynamicText
        <bes d>8\p <b d>\mp q4\mf <a cis>\p
        \revert DynamicText.stencil
      }
    >> |
  }
  \tag #'(second third) {
    \temporary \omit DynamicText
    \once \override Slur.ratio = 0.15
    \omitHair <c=' d fis>8\tenutoAlt\p\< ( |
    <bes d g>-- <a d a'>\tenutoAlt )
    % FIXME: for last occurrence, this should be \p
    <cis \tag #'third e g cis>4\tenutoAlt\mf (
    <d f \tag #'second a d>\p ) |
    \revert DynamicText.stencil
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
  \omitDyn <f a b d f>8->\f[ <e gis b d e>-> <cis a' cis>->]
  \omitDyn <f d f,>16--\mf[ ( g <e cis e,>8--] ) r |
  <<
    \relative c'' {
      \temporary \omit DynamicText
      r8
      \shortenStemLength
      f16\p ( e
      \restoreStemLength
      d4--~ d8 ) e ( |
      c4--~ c8 ) d ( bes a ) |
      \omitHair gis8\tenutoAlt\mf\< ( g16 gis
      a4\mp ) r4 |
      \revert DynamicText.stencil
    }
    \\
    \relative c'' {
      \omitDyn r4\p a \( g~ g f8 ees d4 \) |
      d4~ d16 cis ^( e g \omitHair a\< cis e \omitDyn g\f ) |
    }
  >>

  \barNumberCheck 21
  \omitDyn <bes'=' d e g bes>8->\f[
  <a cis e g a>-> <fis c' d fis>->]
  \omitDyn <g c, g>16--\mf[ ( a <fis c fis,>8--] ) r |

  <<
    \relative c''' {
      \temporary \omit DynamicText
      a16\rest
      \shortenStemLength
      c\mf ( bes a
      \restoreStemLength
      g4--~
      \shortenStemLength
      g8 )
      \shape #'(() ((0 . 0) (-1 . 0.5) (0 . 2) (0 . 2))) Slur
      a ( |
      \restoreStemLength
      f4--~ f8 ) g ( ees d ) |
      cis8\tenutoAlt ( c16 cis d4 ) r |

      \barNumberCheck 25
      <d' g, f d>4.--\p c  8-.\noBeam a-. bes-. |
      <c f, ees c>4.--  bes8-.\noBeam g-. a-. |
      <bes g bes,>4.--  a  8-.\noBeam f-. g-. |
      \shortenStemLength
      <<
        {
          \repeat unfold 3 { a16\tenutoAlt ( g ) e-. f-. } |
          \repeat unfold 3 { bes\tenutoAlt ( a ) f-. g-. } |
        }
        {
          \temporary \omit DynamicText
          \temporary \omit Hairpin
          <>\p \skip 4 <>\< \skip 2 |
          <>\f \skip 4 <>\p
          \revert DynamicText.stencil
          \revert Hairpin.stencil
        }
      >>

      \barNumberCheck 30
      \repeat unfold 3 { a\tenutoAlt ( g ) e-. f-. } |
      g\tenutoAlt\f ( f d e   )
      f\tenutoAlt\p ( e cis d )
      e\tenutoAlt   ( d b cis ) |
      d\tenutoAlt   ( c a bes )
      c\tenutoAlt   ( bes g a )
      bes\tenutoAlt ( a f g   ) |
      \restoreStemLength
      \revert DynamicText.stencil
    }
    \\
    \relative c'' {
      \temporary \omit DynamicText
      \set Voice.beamExceptions = #'()
      r4 d\mf ( c~ |
      c bes8 aes g4 ) |
      g4~ g16 f ( a cis d f a cis ) |

      \barNumberCheck 25
      r8 d,16\p -. d  -. g  \tenutoAlt ( f   ) e c~ <c f>8 <bes f'> |
      r8 c16    -. c  -. f  \tenutoAlt ( ees ) d bes~ <bes ees>8 <a ees'> |
      r8 bes16  -. bes-. ees\tenutoAlt ( d   ) cis a~ <a d>8 <g d'> |
      <a e'>4 r r |
      s r r |

      \barNumberCheck 30
      r s \omitHair a8\tenutoAlt\> ( g ) |
      \temporary \override Slur.ratio = 0.15
      e   \tenutoAlt ( d )
      bes'\tenutoAlt ( a )
      gis \tenutoAlt ( g ) |
      \shortenStemLength
      fis \tenutoAlt ( f )
      e   \tenutoAlt ( ees ) d4\f |
      \restoreStemLength

      \revert Slur.ratio
      \unset Voice.beamExceptions
      \revert DynamicText.stencil
    }
  >> |

  \barNumberCheck 33
  a='16\tenutoAlt ( g e f ) <a a'>-> ( g' e f )
  \omitDyn <a a'>->\ff ( g' e )
  \tuplet 3/2 { f32 ( g a } |
  \addArticulation "staccato" {
    <bes, bes'>16 ) <a a'> <g g'> <f f'> <e e'> <d d'> <c c'> <bes bes'>
    <a a'> <g g'> <f f'> <e e'>
  } |

  \barNumberCheck 35
  <<
    \temporary \omit DynamicText
    \relative c' {
      <d d'>4.->\ff <c c'>4.-> |
      a'4-> s2 |
      <c, c'>4.-> <bes bes'>4.-> |
      g'4-> s2 |
      <bes bes,>4-> <a a,>-> f-> |

      \barNumberCheck 40
      \oneVoice <g d bes>-- \omitHair <f c f,>--\>
      \clef bass <d bes d,>-- \voiceOne |
      <cis e,>8\mf r r <b f'>-.[ <cis e>-. a'-.] |
      \omitHair a--\> r r <b f'>-.[ <cis e>-. a'-.] |
      <g a>-.\p r r4 r
      \revert DynamicText.stencil
    }
    \\
    \relative c'' {
      \temporary \override Slur.ratio = 0.15
      \omitDyn <>\ff
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
      \omitDyn a16\mf ( g ) e-. f-. e ( f )
      \addArticulation "staccato" { g gis a \clef treble e' ees d } |
      \omitHair cis\> ( g' ) \addArticulation "staccato" {
        e f e f g gis a e' ees d
      } |
      \omitDyn cis\tenutoAlt\p ( bes ) a-. bes-.
      a  \tenutoAlt ( g   ) e-. g-.
      e  \tenutoAlt ( d   ) cis-. d-.
    }
  >> |

  \barNumberCheck 44
  \omitDyn cis='8\pp \clef bass r16 cis,32 ( d
  e16-. ) d-. cis-. d-. cis8 r \clef treble |
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
      r4 \omitDyn f4\ppp~ ( |
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
      \omitHair f8\tenutoAlt\>( e \omitDyn c\ppp d32) bes\<( c d\! ees8.->) ees16 |
      \omitHair ees8\>( d bes g \omitDyn f\noBeam\p)
    }
  >> r8 |

  \barNumberCheck 63
  \temporary \omit DynamicText
  \temporary \omit Hairpin
  \repeat unfold 2 {
    r8 \addArticulation "staccato" {
      <d''='' f,>16\p\< f q f\mf q\> f q f\p
    } r8
  } |
  \revert Hairpin.stencil
  \revert DynamicText.stencil

  \barNumberCheck 65
  <<
    {
      \keepWithTag #'first \RHpatternB
      \keepWithTag #'second \RHpatternB
    }
    {
      \temporary \omit DynamicText
      \temporary \omit Hairpin
      <>\p \skip 8 <>\< \skip 2 <>\f \skip 4 <>\> \skip 2 <>\p \skip 8
      \revert DynamicText.stencil
      \revert Hairpin.stencil
    }
  >> |

  \barNumberCheck 67
  \temporary \override Beam.breakable = ##t
  \set Timing.baseMoment = #(ly:make-moment 1 8)
  \set Timing.beatStructure = #'(1 2 2 1)
  \set Timing.beamExceptions = #'()
  \omitDyn <f,=' a d>8\p
  \transpose c c' \keepWithTag #'first \RHpatternC r8 |
  r8 \keepWithTag #'second \RHpatternC
  \unset Timing.baseMoment
  \unset Timing.beatStructure
  \unset Timing.beamExceptions

  \barNumberCheck 70
  \repeat unfold 3 {
    \temporary \omit DynamicText \temporary \omit Hairpin
    r8 | r8 <e,= cis>16\p\< ( <f d> <gis e> <a f>\mf
    <gis e>\> <a f> <cis e>[ <d f>\p] )
    \revert DynamicText.stencil
    \revert Hairpin.stencil
  }

  \barNumberCheck 73
  \temporary \omit DynamicText
  <a= cis>\tenutoAlt\p( <bes d>) |

  \change Staff="LH" <e, gis>--\p( <f a>)
  \change Staff="RH" <cis e >--( <d f>)
  \change Staff="LH" <a cis >--( <bes d>)
  \change Staff="RH" <e, gis>--( <f a>)
  r4 |

  \temporary \omit DynamicText
  \clef treble <bes'= d f bes>2--\mf <a c f a>4--\mp |
  <f a d f>2--\p r8
  \revert DynamicText.stencil
  <<
    \relative c'' { \omitDyn a16\pp ( cis | d2.\fermata ) } \\
    \relative c'  { \omitDyn cis8\pp | d2. }
  >>
}

%---------- Left hand parts


% Maybe I shouldn't delve into this tag spaghetti
LHpattern = \relative c {
  \omitDyn <g d' e g>4--\mf~ q8 \omitDyn <a e'>-.\mp
  <d \tag #'first d,>-. <d g,>-. |
  <d d,>8. \tuplet 3/2 { a32\< -\tweak height-limit 1.0 ( b cis\! }
  \addArticulation "staccato" {
    \omitDyn d16->\mf ) c\p bes a bes a g f %% EDITORIAL NOTES: Gutheil missing \p
  } |

  \tag #'(first second) {
    \omitDyn \tag #'first <f c' f>4--\mf~
    \omitDyn \tag #'second <fis ees'>4--\mf~
    q8 \omitDyn <g d'>-.\mp a-. <a d,>-. |
    <a a,>8. \tuplet 3/2 { e32\< -\tweak height-limit 0.8 ( f g\! }
    \addArticulation "staccato" {
      \omitDyn a16->\mf ) g\p f e f e d cis
    } |
  }

  \tag #'third {
    \omitDyn <f d'>4--\mf~ q8 \omitDyn <g d'>-.\mp c-. <c f,>-. |
    <c c,>8. \tuplet 3/2 { g32\< ( a bes\! }
    \addArticulation "staccato" {
      \omitDyn c16->\mf ) bes\p a g a g f e
    } |
    <d' g,>8.-- <d d,>16-. <d g,>8-. <c a>-. bes16-- ( a ) f-. g-. |
    <c f,>8.-- <c c,>16-. <c f,>8-. <bes g>-. a16\tenutoAlt ( g ) e-. f-. |
  }

  \temporary \omit DynamicText
  \temporary \omit Hairpin
  d8-.\p\< <bes bes'>4-- <a a'>8-.\mf\> <f f'>-. <g g'>-. |
  <d' a'>8-.\p\< <bes bes'>4-- <a a'>8-.\mf\> <f f'>-. <g g'>-.\p |
  \revert DynamicText.stencil
  \revert Hairpin.stencil

  \tag #'(first third) {
    <d' a'>8-. d'16 ( cis d ) cis-. -\tag #'first \< d-. \omitDyn cis-.\mp
  }
  \tag #'first {
    <<
      \relative c {
        s4 |
        \once \override Rest.whiteout = ##t
        r4 \omitDyn f--\mf ( \omitDyn e\p ) } \\
      \relative c {
        \oneVoice \omitDyn d16--\mp ^( c
        bes -\tweak to-barline ##f \> a \voiceTwo |
        %% EDITORIAL NOTES: defies engraving practice (2nd voice should
        %% have downward stem / beam), for staff compacting
        %% Gutheil does this too
        \temporary \stemUp \omitDyn g\p f e8 ) \stemNeutral a2
      }
    >> |
  }
  \tag #'third {
    \omitDyn d16--\mp ( c bes a g
  }
  \tag #'second {
    \omitDyn <a=, d,>16\p \tuplet 3/2 { a32\< ( b cis\! }
    \omitDyn d16-.->\mf ) \omitDyn cis-.\p
    d ( cis d cis d c ) bes-. a-. |
    g (
  }
  \tag #'(second third) {
    e16 f8 ) \omitDyn <a e' g>4--\mf ( \omitDyn <d, a' f'>\p ) |
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
      \dynamicUp \omitDyn
      e16\p\< ( f\! |
      g ) \omitDyn cis,\p ( d\< e\!
      f--\> e d\! \omitDyn e\p d8 ) c16\< ( d\! |
      e--\> d c\! \omitDyn d\p c4 ) \absolute { f'\rest } |
      \omitDyn f,4\mf ( \omitDyn e\mp )
      \clef treble \omitHair cis'='16\< ( e g \omitDyn a\f ) |

      \barNumberCheck 21
      % fake staff change line
      \once \omit Stem \once \omit Flag
      \once \override NoteColumn.ignore-collision = ##t
      \once \override VoiceFollower.after-line-breaking = ##t
      \once \override VoiceFollower.bound-details.left.attach-dir = #RIGHT
      \once \override VoiceFollower.bound-details.right.attach-dir = #LEFT
      \showStaffSwitch \change Staff="RH" bes8 \hideStaffSwitch
      \change Staff="LH" s2 \clef treble \omitDyn a='16\mf ( bes |

      \temporary \override Hairpin.height = 0.3
      \temporary \override DynamicLineSpanner.outside-staff-priority = ##f
      c ) fis, ( g^\< a\! bes-- a^\> g \omitDyn a\mf g8 ) f16 g |
      \revert Hairpin.height
      \revert DynamicLineSpanner.outside-staff-priority

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
      s16 \once \mergeDifferentlyDottedOn \omitDyn cis8.\p c4 ( bes~ |
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
      \temporary \omit DynamicText
      \oneVoice <g' d' e g>8->\f[ <a cis e g>->
      \clef bass <d, a' d>->] <a ees'>--\mf[ <d, a' d>--] s |
      \voiceTwo s16 \once \mergeDifferentlyDottedOn fis''8. f4 ( ees~ |
      ees d8 ) c16\< ^( d\! ees\> d bes\! c\mf ) |
      \clef bass d,2
      \revert DynamicText.stencil
    }
  >>
  \clef treble d'='8 ( c |

  \barNumberCheck 25
  \omitDyn <bes d g>4.--\p ) c16-. c-. f\tenutoAlt ( ees d bes ) |
  <a c f>4.-- bes16-. bes-. ees\tenutoAlt ( d c a ) |
  <g d'>4.-- \clef bass a16-. a-.

  <<
    \relative c' {
      \temporary \omit DynamicText
      \set Voice.beamExceptions = #'()
      \oneVoice d16\tenutoAlt\p ( c bes g |
      \voiceOne cis4 ) \clef treble
      \oneVoice \omitHair a'8\tenutoAlt\< ( g ) d'-> ( cis\f ) |

      \once \override VoiceFollower.bound-details.right =
      #'((padding . 3.5) (attach-dir . RIGHT))
      \voiceTwo
      \showStaffSwitch \change Staff="RH" g'-> ( f )
      \hideStaffSwitch \change Staff="LH"
      \clef treble \oneVoice d\tenutoAlt\p ( cis )
      \voiceOne bes\tenutoAlt ( a ) |

      \barNumberCheck 30
      f\tenutoAlt ( e )
      \once \override VoiceFollower.bound-details.left.attach-dir = #RIGHT
      \once \override VoiceFollower.bound-details.right.attach-dir = #LEFT
      \voiceTwo
      \showStaffSwitch \change Staff="RH" cis'\tenutoAlt ( c )
      \hideStaffSwitch \change Staff="LH"
      \voiceOne
      s4 |

      \temporary \override Slur.ratio = 0.15
      \omitHair c,,8\tenutoAlt\< ( bes )
      g   \tenutoAlt ( f )
      e   \tenutoAlt ( e' ) |
      \shortenStemLength
      d   \tenutoAlt ( a' )
      g   \tenutoAlt ( c ) bes->\f d->
      \restoreStemLength

      \revert Slur.ratio
      \unset Voice.beamExceptions
      \revert DynamicText.stencil
    }
    \\
    \relative c' {
      \set Voice.beamExceptions = #'()
      s4 |
      \omitDyn a4\p s s | \clef bass
      <<
        \new Voice { \absolute { \omitDyn a,,2.->\f } }
        { \voiceOne r4 \voiceTwo s \omitDyn g'8\p ( f ) }
      >> |

      \barNumberCheck 30
      \omitDyn d\p ( cis ) \clef bass \oneVoice
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
  \temporary \omit DynamicText
  <a= cis>4->\f a16-> ( g e f ) \clef treble
  a'->\ff ( g e ) \tuplet 3/2 { f32 ( g a } |
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
  <g g,>16-> ) f-. e-. d-.
  \omitHair <c a>\tenutoAlt\> ( bes ) a-. g-.
  <f bes,>\tenutoAlt ( fis ) g-. gis-. |

  \barNumberCheck 41
  <a a,>8\mf r r <d d,>-.[ <e a,>-. <a f>-.] |
  \omitHair <a e a,>\> r r \clef treble <d f>-.[ <e a,>-. <a f>-.] |
  %% EDITORIAL NOTE: Muzyka was wrong in final rest (undotted semiquaver)
  <a e a,>\p r r4 r8. \clef bass g,32 ( a |
  bes16-.\pp ) a-. g-. a-. g8 r16 g,32 ( a bes16-. ) a-. g-. a-. |

  \revert DynamicText.stencil

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
        g32 -\tweak X-offset -4
            -\tweak extra-offset #'(-3.75 . -4.75)
            -\tweak whiteout ##t ^\ppp
        ( a bes
      } c8. ) c16-- |
      c16\tenutoAlt ( bes g a g8. )
      \once \override TupletBracket.padding = 0.5
      \tuplet 3/2 { f32 ( g a } bes8. ) bes16 |
      \tupletNeutral
      bes16 ( a f g f8. ) g16 ( a8 ) \clef bass
      a,,32 -\tweak to-barline ##f \< _( bes c d |
      \oneVoice
      ees8.->\! ) ees16 \omitHair ees8--\> _( d

      %% EDITORIAL NOTES: In Muzyka edition, slur ends at B♭ note and
      %% starts at 1st 32th note on this bar. However, for others bars, as
      %% well as similar passage on right hand, phrasing ends on
      %% 1st 32th note instead. Gutheil edition is consistent in this
      %% aspect. Trusting Gutheil edition here.
      \omitDyn bes\ppp c32 ) a ( bes c | \voiceOne

      \barNumberCheck 60
      d8.-> ) d16 d8-- _( c a bes32 ) g\< ( a bes\! |
      c8.-> ) c16 \omitHair c8--\> _( bes \omitDyn g\ppp a32 ) f\< ( g a\! |
      \omitHair bes8.->\> ) a16 ( g8 \omitDyn a\p~ a\noBeam )
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
    \omitDyn <>\p
    a'=16-.\< cis-.\! |
    <<
      \relative c' { \omitDyn d2->\mf r8 } \\
      \relative c' {
        \temporary \omit DynamicText
        r8 <bes bes'>-.\p[ <bes a'>-.\mp <bes aes'>-.] <bes g'>-.\p
        \revert DynamicText.stencil
      }
    >>
  }
  \clef bass << \relative c' { a16-. cis-. } \\ { r8 } >> |

  \barNumberCheck 65
  <<
    {
      \keepWithTag #'first \LHpatternB
      \keepWithTag #'second \LHpatternB
    }
    {
      \temporary \omit DynamicText
      \temporary \omit Hairpin
      <>\p \skip 8 <>\< \skip 2 <>\f \skip 4 <>\> \skip 2 <>\p \skip 8
      \revert DynamicText.stencil
      \revert Hairpin.stencil
    }
  >> |

  \barNumberCheck 67
  <<
    \relative c' {
      \shortenStemLength
      \omitDyn d2.->\p
      \restoreStemLength |
      s2 s8 a,16-- ( cis-- |
      d2.-- ) |
    }
    \\
    \relative c {
      \temporary \override Beam.breakable = ##t
      \set Timing.baseMoment = #(ly:make-moment 1 8)
      \set Timing.beatStructure = #'(1 2 2 1)
      \set Timing.beamExceptions = #'()
      \omitDyn <d a'>8\p
      \clef treble \transpose c c' \LHpatternC s8 |
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
        \temporary \omit DynamicText
        \temporary \omit Hairpin
        r8 | r8 gis16\p\<( a bes a\mf cis\> d bes[ a\p])
        \revert DynamicText.stencil
        \revert Hairpin.stencil
      }
    }
    \\
    \relative c, {
      \omitDyn a16\p[(-- cis]-- |
      d2~ d8) a16( cis |
      d2~ d8)
      \shape #'(() ((0 . 0) (-1 . 0) (0 . -2) (0 . -2))) Slur
      a16( cis |
      d2~ d8)
    }
  >>

  \barNumberCheck 73
  r8 |
  \change Staff="RH" r8
  \change Staff="LH" r8
  \change Staff="RH" r8
  \change Staff="LH" r8
  \omitDyn d,,=,8\p r |

  \temporary \omit DynamicText
  <bes' d f>2--\mf <f c' f>4--\mp |
  <a a,>2--\p r8
  \revert DynamicText.stencil
  <<
    \absolute { s8 | r4 \omitDyn d,,2\pp\fermata } \\
    { \omitDyn <a g'>8\pp ( | <d, a' f'>2. ) }
  >>

}


%----------- Dynamics & tempo

Dynamics = {
  \tempo \markup \large "Tempo di minuetto" 4 = 66

  \repeat volta 2 {
    % Overcome barNumberCheck problem with MIDI. In MIDI the repeat is
    % unfolded, causing inconsistency in bar numbers.
    \set Score.currentBarNumber = #1

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
  s2.-\tweak extra-offset #'(0 . 1.5) \mf |
  s2.\dim |
  s2.-\tweak extra-offset #'(0 . 1) \p |
  \tempo "rit." 4 = 70
  s4-\tweak extra-offset #'(0 . 0.5) \pp
  \tempo 4 = 64 s4
  \tempo 4 = 58 s8
  \tempo 4 = 50 s8 |

  \barNumberCheck 45
  \tempo "Tempo I" 4 = 66
  s4\mf s8\> s4.\! |
  s2. | \break  % Ensure A4/Letter have same break point, prevent surprises
  s4\mf s8\> s4.\! |
  s2. |
  \repeat unfold 2 { s8. s16\> s2\! } |
  s8\p s8\< s4\! s4\> |
  s8\! s8\< s4\! s4\> |
  s4\! s4\< s4\! |
  s8\> s8\! s2\p |

  \barNumberCheck 55
  s2.*7 |
  s16 s4..\dim s4\p | % shift dim a bit to compact staves, but....
  % for next 2 bars hairpins need to move upward
  \temporary \override Hairpin.extra-offset = #'(0 . 1.5)
  s8 s8.-\tweak extra-offset #'(0 . 1.5) \p\<
  s16\! s8.\> s16\! s8 |
  \revert Hairpin.extra-offset
  \temporary \override Hairpin.extra-offset = #'(0 . -1.5)
  s8 s8\< s8\! s8\> s8\! s8 |
  \revert Hairpin.extra-offset
  s8 s8\cresc s2 |
  s8-\tweak X-offset -1.5 -\tweak whiteout ##t \f s8\dim s2 |

  \barNumberCheck 67
  s2.\p |
  s2.*3 |
  \repeat unfold 3 { s8 s8.\< s16\! s8.\> s16\! s8 | }
  s2. |
  s2\mf s4\> |
  s2\!
  \tempo 4 = 40 s4\pp |
  s2. \bar "|."
}

%-------Typeset music and generate midi
\score {

  \context PianoStaff <<
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

      \override Script.stencil =  % default accent too large
      #(lambda (grob)
         (let ((script (ly:grob-property grob 'script-stencil)))
           (if (equal? script '(feta . ("sforzato" . "sforzato")))
               (ly:stencil-scale (ly:script-interface::print grob) 0.85 0.85)
               (ly:script-interface::print grob))))

      \override DynamicText.Y-extent =
      #(ly:make-unpure-pure-container ly:grob::stencil-height '(-0 . 0))
      \override Stem.Y-extent = % Can't be crueler than this
      #(ly:make-unpure-pure-container ly:stem::height '(-0 . 0))
      \override Slur.Y-extent =
      #(ly:make-unpure-pure-container ly:slur::height '(-0 . 0))
      \override PhrasingSlur.Y-extent =
      #(ly:make-unpure-pure-container ly:slur::height '(-0 . 0))
    }
  }
}

% MIDI handled separately because of repeat
\score {
  \context PianoStaff <<
    \new Staff = "RH" <<
      \clef treble \key d \minor \time 3/4 \unfoldRepeats \RH
    >>
    \new Dynamics << \unfoldRepeats \Dynamics >>
    \new Staff = "LH" <<
      \clef bass   \key d \minor \time 3/4 \unfoldRepeats \LH
    >>
  >>
  \midi {
    \tempo 4 = 66
    \context {
      \Score
      midiInstrument = "acoustic grand"
    }
  }
}

