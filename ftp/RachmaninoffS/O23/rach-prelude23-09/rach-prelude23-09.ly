%%--------------------------------------------------------------------
% LilyPond typesetting of Rachmaninoff Prelude Op. 23 No. 5
%%--------------------------------------------------------------------

\version "2.19.17"
\language "deutsch"
\include "articulate.ly"

%\include "editorial-tools/edition-engraver/definitions.ily"

squeezeNotation = {
  \temporary \override Staff.AccidentalPlacement #'right-padding = #-0.05
  
  % TODO: also override LedgerLineSpanner.minimum-length-fraction
  
  % TODO: should use narrow accidentals when they're available,
  % http://code.google.com/p/lilypond/issues/detail?id=2203
  % TODO: only make the override if the stencil exists
  % (currently the function fails when the stencil is empty).
  \temporary \override Staff.Accidental #'stencil =
  #(lambda (grob)
     (ly:stencil-scale (ly:accidental-interface::print grob) 0.92 1))
  
  % TODO: design a narrow notehead glyph??
  % TODO: only make the override if the stencil exists
  % (currently the function fails when the stencil is empty).
  \temporary \override Staff.NoteHead #'stencil =
  #(lambda (grob)
     (ly:stencil-scale (ly:note-head::print grob) 0.96 1.02))
  
  % also, change tracking between letters (there is some snippet doing this)
  % TODO: only make the override if the stencil exists
  % (currently the function fails when the stencil is empty).
  \temporary \override Lyrics.LyricText #'stencil =
  #(lambda (grob)
     (ly:stencil-scale (lyric-text::print grob) 0.92 1))
}


% values between 17 and 19 look acceptable for A4 paper (some tweaks needed though)
% a compromise has to be found that fits on US letter paper, too
#(set-global-staff-size 18.0)

%----- Notes ---------------------------------------------------------
% - the choice between r and s in voices follows the Gutheil source,
%   however, LilyPond prefers to put them them in the order of the
%   voices, i.e. mostly below the staff.
% - stems and articulations are not always consistent in the source
% - the maintainer does not recommend the original tempo

%----- Known problems ------------------------------------------------
% - midi is not nice
% - quite some slurs would need further adjustments (\shape)
% - some hairpins could be better aligned (extra-offset)
% - there are many semiquaver rests at odd places
% - a larger staff size would be possible if clef changes required
%   less space (cf. m. 69 - 71). This would reduce the white space
%   between staves
% - there are 'Impossible or ambiguous (de)crescendo in MIDI.' errors
% - there may be typos

%--------Definitions and shorthands

%\include "openlilylib"
%\useLibrary Stylesheets
%\useNotationFont Greyerzer
%\displayNotationFonts

% shrink hairpin (like in second measure)
hairpin = {
  \once \override Hairpin.extra-offset = #'(0 . -0.8)
  \once \override Hairpin.height = 0.5
}

% same for the lower voice
hairpinII = {
  \once \override Hairpin.height = 0.5
}

shpeSL =  \shape #'((1 . -0.6) (1 . -0.8) (0 . 0) (0 . 0)) Slur

% switch from upper staff (main droite) to lower (main gauche) and vice versa
mg = { \change Staff = "mg" \voiceOne }
md = { \change Staff = "md" \voiceTwo }

% merge note heads of same pitches from different voices like in measure 41
merge = {
  \once \override Staff.NoteColumn.force-hshift = 0
}

% new dynamic mark: ff with white background for measure 24
whiteff = #(make-dynamic-script #{
  \markup \whiteout \pad-markup #0.4 \dynamic ff
#})

% new dynamic mark: pp leggiero for measure 84
ppLeg = #(make-dynamic-script #{
  \markup {
    \dynamic pp
    \with-dimensions #'(0 . 0) #'(0 . 0)
    \normal-text \italic leggiero
  }
#})

whit = 
\tweak #'extra-offset #'(0 . -4.4)
\tweak #'X-offset #-3.3
\tweak #'color #white
\tweak #'outside-staff-priority ##f
^\markup \rounded-box "  "

% move dynamics (either in x and y by a pair or in y by a number)
dyn =
#(define-music-function (parser location shift) (number-or-pair?)
   (_i "Shift dynamics.")
   (if (pair? shift)
       #{
         \once \override DynamicText.extra-offset = $shift
         \once \override DynamicTextSpanner.extra-offset = $shift
         \once \override Hairpin.extra-offset = $shift
       #}
       #{
         \once \override DynamicText.extra-offset = #(cons 0 shift)
         \once \override DynamicTextSpanner.extra-offset = #(cons 0 shift)
         \once \override Hairpin.extra-offset = #(cons 0 shift)
       #}))


% paper and header -------------------------------------

\paper {
  top-margin = 6\mm                              %-minimum top-margin: 8mm
  bottom-margin = 6\mm
  top-markup-spacing.basic-distance = #6         %-dist. from bottom of top margin to the first markup/title
  markup-system-spacing.basic-distance = #5      %-dist. from header/title to first system
  top-system-spacing.basic-distance = #12        %-dist. from top margin to system in pages with no titles
  last-bottom-spacing.basic-distance = #12       %-pads music from copyright block
  last-bottom-spacing.minimum-distance = #0
  ragged-last = ##f
  ragged-bottom = ##f
  ragged-last-bottom = ##f
  page-count = #4
}

\header {
  % visible headers
  title = "Prelude IX"
  composer = "Sergei Rachmaninoff (1873-1943)"
  opus = "Op. 23, No. 9"

  % meta information and Mutopia headers
  date = "1901"
  style = "Romantic"
  source = "IMSLP - Muzyka and Gutheil editions"
  maintainer = "Joram Berger"
  maintainerEmail = "joram.berger at gmx dot de"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  mutopiatitle = "Prelude Op. 23, No. 9"
  mutopiaopus = "Op. 23"
  mutopiacomposer = "RachmaninoffS"
  mutopiainstrument = "Piano"

 footer = "Mutopia-2015/09/29-2052"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2015 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " " \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

%----- musical content -----------------------------------------------------------

% right hand, upper voice
RHand = \relative c'' {
  % page 1
    \overrideTimeSignatureSettings
        #'(4 . 4)          % timeSignatureFraction
        #'(1 . 16)        % baseMomentFraction
        #'(2 2 4 4 4)         % beatStructure
        #'()                % beamExceptions
  \set fingeringOrientations = #'(up)
  \override Fingering.avoid-slur = #'inside
  %\omit Fingering
  %\fingeringOrientations #'(up) 
  r8 <ges-1 es'-5>16( <b d> <ges-1 es'-5> <a-2 d-4> <f-1 des'-3> <as-2 d-4> 
  <ges-1 es'-5> <b-2 d-3> <ges-1 es'-4> <b-2 f'-5> <b-1 ges'-3> <es-2 as-4> <des-1 b'-5> <es as>) |
  <c-1 b'-5>( <es-2 as-4> <ces-1 g'-5> <es-2 as-4> <b-1 g'-5> <es-2 ges-3> <a,-1 f'-4> <es'-2 ges-3>
  <as,-1 f'-5> <ces-2 fes-4> <g-1 es'-3> <ces-2 fes-5> <ges-1 es'-4> <b-2 d-4> <f-1 des'-3> <as d>
  \once \override Fingering.avoid-slur = #'outside
  <ges-1 es'-5>8)\noBeam <ges es'>16( <b d> <ges es'> <a d> <f des'> <as d> 
  <ges es'> <b d> <ges es'> <b f'> <b ges'> <es as> <des b'> <es as>) |
  <c b'>( <es as> <ces g'> <es as> <b g'> <es ges> <a, f'> <es' ges>
  <as,-1 f'-5> <ces-2 es-4> <g-1 d'-3> <ces-2 es-4> <ges-1 d'-4> <ces-2 des-3> <f,-1 es'-4> <ces' f> |
  \revert Fingering.avoid-slur
  <b ges'>8)\noBeam q16( <des f> <a ges'> <c f> <as es'> <ces f>)
  <b ges'>( <des f>) <b f'>( <des e>) (<as f'> <ces fes> <g e'> fes') |
  <ces es>( ges) <ces es>( <ges d'> <ces es> <f, d'> <as des> <ges d'>)
  <ces-2 es-5>( <ges d'> <ces-2 des-3> <ges-1 d'-5>) <as-2 des-4>( <f-1 c'-5> <as-2 ces-4> <fes c'>)
  <as ces>( es) <as-2 ces-4>( <es-1 b'-3> <as-2 ces-4> <f b> <as ces> <g b>
  <as-2 ces-4>) as-1( <ces-2 es-4> <ges des'> <ces es> <as des> <ces es> <b des> |
  <ces-2 es-4>) 
  \override Fingering.avoid-slur = #'inside
  ces-1( <f-2 as-4> <g-1 b-3> <as-2 ces-4> <g b> <as ces> <b-1 des-3>
  <ces-2 es-4> <b des> <ces es> <ces-1 f-3> <es-2 ges-4> <ces-1 f-4> <es-2 ges-3> as-4
  <d,-1 b'-5>8)\noBeam <d,, b'>16( <f ces'> <d b'> <ges ces> <d b'> <as' ces>)
  \once\set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1/8)
  \set beatStructure = #'(2 2 2 2)
  <d, g>^>( <f as>) <d b'>( <f ces'> <d b'> <ges ces> <d b'> <as' ces>) |
  \set subdivideBeams = ##t
  <d, g>^>( <f as>) <d b'>( <f ces'>) <es b'>( <ges ces>) <es ces'>( <ges c>)
  <es ces'>( <b' des>) <ges d'>( <b es>) <as des>( <ces es>) <as f'>( <b ges'> |
  \set subdivideBeams = ##f
  
  % page 2
  <ges es'>8) q16( <b des> <ges es'> <a d> <f des'> <as d> 
  <ges es'> <b d> <ges es'> <b f'> <b ges'> <es as> <des b'> <es as>) |
  <c b'>( <es as> <ces g'> <es as> <b ges'> <es ges> <a, f'> <es' ges>
  <as, f'> <ces fes> <g es'> <ces fes> <ges es'> <b d> <f des'> <as d> |
  <ges es'>8) q16( <b d> <ges es'> <a d> <f des'> <as d>
  <ges es'> <b d> <ges es'> <b f'> <b ges'> <es-2 as-5> <es-1 b'-3> <ges-2 ces-5>) |
  <fes-1 des'-4>( <as-2 c-5> <es-1 ces'-4> <as-2 c-5> <d,-1 ces'-4> <as'-2 b-3> <des,-1 a'-5> <fes-2 b-4>
  <des-1 as'-5> <fes-2 as-4> <c-1 g'-5> <fes-2 as-4> <ces-1 as'-5> <es g> <b-1 ges'-3> <es-2 g-4> |
  <as, as'>8) <ces as'>16( <es g> <ces as'> <d g> <b ges'> <des g>)
  <ces as'>( <es g>) <ces g'>( <des ges>) <ces g'>( <es ges>) <d ges>( f) |
  <es ges>( ces) <es ges>( <ces f> <eses ges> <ces f> <des fes> <d f>
  <es ges> ges,) <eses' f>( <ces ges'>) <des f>( <b fes'> <ces es> <as fes'>)
  <ces es>( as) <ces es>( <g des'> <ces es> <as des> <ces es> <b des>
  <ces es>) ces( <es ces'> <des g> <es ces'> <des as'> <g ces> <des b'> |
  <as' ces>) ces,( <f as> <g b> <as ces> <g b> <as ces> <b des>
  <ces es> <b des> <ces es> <ces f> <es ges> <ces f> <es ges> as |
  <d, b'>8)\noBeam <d,, b'>16( <f ces'> <d b'> <ges ces> <d b'> <as' ces>
  <d, g>^> <f as>) <d b'>( <f ces'> <d b'> <ges ces> <d b'> <as' ces>) |
  <f des'>( <ces' eses> <f, des'> <as eses'> <f des'> <heses eses> <f des'> <ces' eses>
  <f, b>-> <as ces>) <f des'>( <as eses'> <f des'> <heses eses> <f des'> <ces' eses>) |
  <g-1 d'-4>( <b-2 es-5> <g-1 d'-4> <ces-2 es-5> <g-1 d'-3> <des'-2 es-4>) <as d>( <ces es>)
  
  \squeezeNotation
  
  <a-1 e'-4>( <c-2 f-5> <a e'> <des f> <a-1 e'-3> <es'-2 f-4>) <b e>( <des f>) |
  <<
    {
      \voiceOne
      f16( ges f ges) ges( f ges g) g( as g as) as( a as a)
    }
    \new Voice {
      \voiceTwo
      b,='8( d) ces( es) c( es) es( f)
    }
  >>
  \oneVoice
  \undo \squeezeNotation
  s1
  % page 3
  r8 <d, b'>16( <f ces'>) <es b'>( <ges ces>) <es ces'>( <ges c>)
  <es c'>( <b' des>) <ges d'>( <b es>) <as des>( <ces es>) <as f'>( <b ges'>)
  <ges es'>8 q16( <b d> <ges es'> <a d> <f des'> <as d>
  <ges es'> <b d> <ges es'> <b f'> <b ges'> <es as> <des b'> <es as> |
  <c b'> <es as> <ces g'> <es as> <b g'> <es ges> <a, f'> <es' ges> 
  <as, es'> <ces fes> <g es'> <ces fes> <ges es'> <b d> <f des'> <as d> |
  <ges es'>8) q16( <b d> <ges es'> <a d> <f des'> <as d>
  <ges es'> <b d> <ges es'> <b f'> <b ges'> <es as> <es b'> <ges ces>) |
  <es des'>( <ges ces> <d b'> <ges ces> <d b'> <ges as> <es g> <ges as>
  <ces, b'> <es as> <ces g'> <eses as> <ces g'> <des ges> <ces e> <des f> |
  <b ges'>8) q16( <des f> <a ges'> <c f> <as es'> <ces f>)
  <b-1 ges'-5>( <des-2 f-3> <b-1 ges'-4> <des-2 as'-5> <des-1 b'-3> <ges-2 ces-5> <ges-1 des'-3> d') |
  <b-2 es-3>( <es,-1 d'-5> <b'-2 es-3> <es,-1 fes'-5> <b'-2 es-3> <es,-1 d'-5> <b'-2 des-3> <es,-1 c'-5>
  <as-2 ces-3> <es c'> <b' des> <es, d'> <ces' es> <es, d'> <ces'-2 es-3> <e,-1 e'-4> |
  <c'-2 f-5> <f,-1 e'-4> <c'-2 f-5> <f,-1 ges'-4> <c'-2 f-5> <f,-1 e'-4> <c'-2 es-3> <f,-1 d'-4>
  <b-2 des-3> <f d'> <c' es> <f, e'> <d'-2 f-5> <as-1 es'-4> <d-2 f-5> ges-3) |
  \ottava 1
  <d-2 as'-4>( <as-1 g'-5> <d-2 ges-3> <as-1 f'-5> <d-2 e-3> <as-1 f'-5> <d-2 ges-3> <as g'>)
  <es'-2 as-3>( <as, g'> <es'-2 ges-3> <as, g'> <es'-2 as-3> <as, g'> <es'-2 as-4> <a,-1 a'-5>) |
  <f'-2 b-4>( <b,-1 a'-5> <f'-2 as-3> <b,-1 g'-5> <f'-2 ges-3> <b, g'> <f'-2 as-3> <b, a'>)
  <ges'-2 b-3>( <b,-1 a'-5> <ges'-2 b-3> <b, a'> <ges' b> <b, a'> <ges' b> <b, a'>) |
  r4 << { b'2--( as4) } \\ { b16( <ces, d> b <ces d> d, <ces' d> b <ces d>) as'( <ces, d> as <ces d>) } >> |
  r4 << { g'2--( ges4) } \\ { g16( <ces, es> g <ces es> es, <ces' es> g <ces es>) ges'( <ces, es> as <ces es>) } >> |
  \ottava 0
  \pageBreak
  <<
    {
      \voiceOne
      f4( es) d( des) |
      des4( c2 ces4) |
    }
    \new Voice {
      \oneVoice % TODO: this follows the original (or \voiceTwo here?)
      \shpeSL
      f16( <as, ces> f <as ces>) \shpeSL es'( <ges, b> es <ges b>)
      \shpeSL
      d'( <f, b> d <f b>) \shpeSL des'( <fes, b> d <fes b>) |
      \shpeSL
      des'( <es, a> des <es a>) c'( <es, as> c <es as>)
      r <es g>( c <es g>) ces'( <es, ges> ces <es ges>) |
      
    }
  >>
  \oneVoice
  <b=' es ges b>8\noBeam <es ces'>16( <ges b> <es ces'> <ges b> <es a> <ges b>)
  <es a>16( <ges as> <es g> <ges as> <es a> <ges as> <es g> <ges as>) |
  <ces, g'>16( <es ges> <ces f> <es ges> <ces g'> <es ges> <ces f> <es ges>)
  <as, f'>16( <ces fes> <g es'> <ces fes> <ges es'> <b d> <f des'> <b d> |
  <ges es'>8)\noBeam <ges'-1 es'-5>16( <b d> <ges es'> <b d> <ges-1 des'-3> <b-2 d-5>)
  <f-1 des'-4>16( <as-2 c-5> <es-1 ces'-4> <as-2 c-5> <e-1 des'-4> <as c> <f h> <as-2 c-5>) |
  <es-1 ces'-4>16( <ges-2 b-3> <des-1 a'-5> <ges-2 b-4> <d-1 ces'-5> <ges-2 b-4> <es a> <ges b>)
  <c,-1 a'-5>16( <es as> <ces-1 g'-5> <es as> <b-1 g'-5> <d ges> <as-1 f'-5> <d ges> |
  <as-1 f'-5>16 <ces-2 fes-4> <g-1 es'-3> <ces-2 fes-5> <ges-1 es'-4> <b-2 d-5> <f des'> <b d>)
  <f des'>16( <as c> <es ces'> <as c> <e des'> <as c> <f h> <as c>) |
  <es ces'>16( <ges b> <des a'> <ges b> <d ces'> <ges b> <es a> <ges b>)
  <c, a'>16( <es as> <ces g'> <es as> <b-1 ges-5> <des ges> <as-1 f-3> <des-2 ges-5> |
  <ges,-1 es'-3>8)\noBeam ges16( b <es ges> as, c <es ges> 
  b16 d <ges b> c, es <ges b> d f |
  <es ges b es>8^>)\noBeam ges16( b <es ges> as, c <es ges>
  b d <ges b> c, es <ges b> d f)
  \once \override Beam.positions = #'(-4 . -5)
  \override Beam.damping = 3
  <es'=''' ges>16( <ges, b>)
  \change Staff = "mg" <d f>( <es ges>)
  \change Staff = "md" <ces es>( <b ges'>)
  \change Staff = "mg" <ges b>( es')
  \change Staff = "md" <ges b>( <b, es>)
  \change Staff = "mg" <f a>( <ges b>)
  \change Staff = "md" <d f>( <es ges>)
  \change Staff = "mg" <ces es>( <b ges'>)
  \change Staff = "md"
  \voiceOne
  \break
  <es'='' ges>16( <ges, b>) r8 <ces, es>16( <b ges'>) r8 <ges' b>16( <b, es>)
  \clef bass r8 <d, f>16( <es ges>) \oneVoice r8 |
  \change Staff = "mg"
  \override Staff.Clef.layer = 2
  <es,, es'>8 
  \shape #'((0 . -2) (2 . 1.5) (-3 . 0) (0 . -0.5)) Slur
  b''16( ges' b d es 
  \once \override Staff.Clef.whiteout = ##t
  \override Score.OttavaBracket.padding = 1
  \change Staff = "md" \clef treble <d f>\whit <es ges> b'
  \change Staff = "mg" \clef treble <d f> <es ges> b'
  \change Staff = "md" \ottava 1 es ges b |
  ges'4)
  
  \ottava 0
  r4 r2 |
  <b,,,,= ges'>2.--( \clef bass <d, as' b>4-- | <ges es'>1--)
  \bar "|."
}


% left hand, upper voice
LHand = \relative c, {
  % page 1
  es8( b' a' b) es,( b' f' ges) | as,,( es' b' ces es d b b,) |
  es,8( b' a' b) es,( b' f' ges) | as,,( es' b' ces) ~ ces( b as des,) |
  ges,( des' c' des) ~ des ges,,( as b | ces)  ges'( as b ces) ces,( des d |
  <as es'>)\noBeam es''16( des ces des ces es, as,8)\noBeam as''16( g ges f fes es |
  as,8)\noBeam \clef treble es''16-1( des ces b) 
  <<
    { \voiceTwo as-5 ges'-1^( \voiceOne f-1 fes es des) ces-5 b'-1_( as ges | }
    \new Voice { \voiceOne as,8 _~ \voiceTwo as4 ces } >>
  \oneVoice
  <b f'>8)\noBeam \clef bass b,16( as b ges b f) 
  <<
    { \voiceOne 
      \once\set subdivideBeams = ##t
      \set baseMoment = #(ly:make-moment 1/8)
      \set beatStructure = #'(2 2 2 2)
      ces'->( b) b( as b ges b f) |
      \once\set subdivideBeams = ##t
      ces'->( b) b( as) b( as) as( ges) as( ges f es) ges( f es d) | }
    \new Voice \with { \override Rest.staff-position = #-2 }
    { \voiceTwo b4 ~ b8 r | b4 ~ b8 r b4 b }
  >>
  \oneVoice
  es,8( b' a' b) es,( b ' f' ges) | as,,( es' b' ces es d b b,) |
  es,8( b' a' b) es,( b ' f' ges) | es,,( b' a' des) ~ des es,( es' des) |
  <as, es' ces'>\noBeam es'( d' es) ~ es g,,( as b | ces) ges'( as b ~ b ces des d |
  <as es'>)\noBeam es'16( des ces des ces es, as,8)\noBeam as''16( g ges f fes es |
  as,8)\noBeam \clef treble es''16-1( des ces b) 
  <<
    { \voiceTwo as-5 ges'-1^( \voiceOne f-1 fes es des) ces-5 b'-1_( as ges | }
    \new Voice { \voiceOne as,8 _~ \voiceTwo as4 ces } >>
  \oneVoice
  <b f'>8)\noBeam \clef bass b,16( as b ges b f) 
  <<
    { \voiceOne 
      \once\set subdivideBeams = ##t
      \set baseMoment = #(ly:make-moment 1/8)
      \set beatStructure = #'(2 2 2 2)
      ces'->( b) b( as b ges b f) |
      \once\set subdivideBeams = ##t
      \override Script.avoid-slur = #'inside
      des'( ces des ces ces heses des as eses'-> des) des( ces des heses des as) |
      es'( des es ces es b) fes'( es) \bar "" \break 
      \squeezeNotation
      f( es f des f c) ges'( f) \noBreak
      \clef treble
      g( ges f ges) as( g ges g) a( as g as) b( a as a) | \noBreak
      \change Staff = "md"
      <des b'>16( a' b ces des des b as f d des ces b as f d
      \undo \squeezeNotation
      \pageBreak
      \change Staff = "mg"
      \clef bass
      des ces) b( as) b( as) as( ges) as( ges f es) ges( f es d)
    }
    \new Voice \with { \override Rest.staff-position = #-2 }
    { \voiceTwo b=,4 ~ b8 r | r2 des4 ~ des8 r | es4. as8 f4. b8 |
      des8[( b]) es[( ces]) es[( c]) f[( ces])
      \oneVoice <b f' b>8 r r4 r2 |
      \voiceTwo r4 b,2 b4 |
    }
  >>
  \oneVoice
  es,=,8( b' a' b) es,( b' f' ges) |
  as,,( es' b' ces es d b b,) | es,( b' a' b) es,( b' ges' des,) |
  ces( ges' d' es ges f des des,) | ges,( des' c' des) ges,( des' ges b) |
  g,,\noBeam es'( <b' des> es <as, ces> fes es as,) |
  a\noBeam f'( <c' es> f <b, d> ges f b,) |
  ces\noBeam as'( <d as'> as) c,\noBeam as'( <es' ges as> as,) |
  d, \clef treble b'[( <f' b> b,]) <es, c'>^-[( <ges' b>]) 
  << 
    { 
      \voiceOne
      des--_( <ges b>) |
      \clef bass
      \oneVoice \tuplet 5/4 { fes,,,=,,16( fes' ces' as' d } \voiceOne b'2--) as4 |
      \oneVoice \tuplet 5/4 { f,,,=,,16( f' es' as ces } \voiceOne g'2--) ges4 |
    }
    \new Voice {
      \voiceTwo
      des4 |
      s4 b'8( d, <ces, as'>[ d']) as'( d,) |
      s4 g8( ces,) <es, as>[( ces']) ges'( ces,) |
  } >>
  \oneVoice
  ges,8( d' es b') g, b'[( <des es,> es]) |
  as,,8( es' as b c es ~ <es ges> a,) |
  <b, es ges b>8 f'[( ges b] ces c ~ <ges a c es>4) |
  r8 b,( as' es') r d( b b,) |
  es,8 b''[( es ges]) es, as[( des f]) |
  es,,8 ges'[( ces es]) es,
  << 
    {
      \voiceOne
      s4. |
      es'4 b2-- as4-- ~ |
      as4 ges-- es-- d
    }
    \new Voice {
      \oneVoice
      f=8( as d |
      \voiceTwo
      es[ es,]) b'( b,) es,( b' as' b,) |
      es,( ces') ges'( ces,) es[( as,]) d[( b]) |
    }
  >>
  \oneVoice
  es,=,8( b' es f <b, ges'> as') b4 ~ |
  <es, b'>8-> \clef treble b'[( es f] <b, ges'> as') b4 ~ |
  <es, b'>8 s2.. |
  \clef bass
  \md r8 <d f>16( <es ges>) r8 <ges, b>16( es') r8 <f, a>16( <ges b>) r8
  \change Staff = "mg" \oneVoice a,=,16( b) |
  s1 |
  R1 |
  \clef bass
  <ges des' ges>2.^-^( <b, f' b>4^- |
  <es b' es>1^-)
  
  
}



%------------ Dynamics

dynamics = {
  \tempo "Presto." 4 = 90
  s2\p s8 s4.\< | s2\! s8 s4.\> |
  s2\! s8 s4.\< | s2\! s8 s4.\> | 
  s1\p | s |
  s2 s\cresc | s s4 s\< |
  s8\sf s2..\p | s1 | \pageBreak
  % page 2
  s8 s4.\p s8 s\< s s | s2\! s8. s4\> s16\! |
  s2 s8. s4\< s16 | s2.\f s16 s8.\> |\break
  s8\! s2..\p | s1 |\break
  s2 s\cresc | s2. s4\< |
  s8\sf s\p\< s s s16\> s\! s4. | s8\cresc s s\< s s16\> s\! s4. |
  s1 | s | s4\< s\f s2\dim |\break
  s8\! s2..\p | s8 s4.\p s8 s\< s16 s s\! s | s2 s8 s4\> s16 s\! |
  s2 s8 s4\< s16 s\! | s2 s8 s4\> s16 s\! | s2 s8 s4\< s16 s\! |
  s1\mf |
  s1\cresc |
  s1 | s2 s2\f |
  s1 |
  s1\dim |
  s1 | s1 |
  s1\p |
  s1 | 
  s8 s2..\pp |
  s1*3 |
  s2 s8 s4\< s16 s\! |
  s2 s8 s4\< s16 s\! |
  s1\f |
  s1\dim |
  s1\p |
  s1 |
  \tempo "Adagio."
  s2.\mf s4\p |
  s1  \bar "|."
}


%\editionMod fullscore 2 1/4 edition.Staff.B \once \override NoteHead #'color = #red
%\addEdition fullscore
%-------Typeset music
\score {
  \new PianoStaff <<
    \new Staff = "md"
    %\with { \consists \editionEngraver edition }
    <<
      \clef treble \key es \minor
      \new Voice \RHand
    >>
    \new Dynamics <<
      \dynamics
      %\breaks
    >>
    \new Staff = "mg"
    %\with { \consists \editionEngraver edition }
    <<
      \clef bass \key es \minor
      \new Voice \LHand
    >>
  >>
  \layout {
    \accidentalStyle piano
    \context {
      \Score
      %\omit TupletNumber
      \omit TupletBracket
      \override DynamicTextSpanner.style = #'none
      \override TupletNumber.font-series = #'bold
      \mergeDifferentlyHeadedOff
      \override StaffGrouper.staff-staff-spacing.basic-distance = 11
      \override DynamicLineSpanner.staff-padding = #3.5
      %\consists \editionEngraver my.test % set this to your "global" tag-path
    }
    %\context {
    %  \Voice
      %\consists \editionEngraver ##f % a tag-path of value #f inherits from the parent context
   %}
  }
}
  
% generate midi
\score{
  \unfoldRepeats \articulate 
  \new PianoStaff 
  \with { midiInstrument = "acoustic grand" }
  %\consists \editionEngraver edition }
  <<
    \new Staff = "md" \new Voice << \dynamics \RHand >>
    \new Staff = "mg" \new Voice << \dynamics \LHand >>
  >>
  \midi {
    \tempo 4 = 152
    \context {
      \Score
      midiMinimumVolume = #0.3
      midiMaximumVolume = #1
    }
  }
}
