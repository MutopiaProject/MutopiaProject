\version "2.12.0"

\relative ef' {
      \global
      \set Staff.midiInstrument = "violin"
      \compressFullBarRests
      % The following makes the rehearsal marks show up as letters within a box:
      \set Score.markFormatter = #format-mark-box-letters
      \clef alto
      \partial 4 r4
      R2.*7
      r4 r4 \breathe r8 ef~-3 \p            |                       % V 1
      ef8 d8~ d4 r8 g~ |
      %% Takt 10 ======================================================
      g8 f~ f4 r8 b,8~ |
      b4 c r8 ef~-3 |
      ef8 d~ d4 r8 f~-4 |
      f8 ef~ ef4 r8 d~ |
      d8 c~ c4 r8 c~ |
      %% Takt 15 ======================================================
      c4~ c8. d16 b4 |
      c8 g~ g4 r8 ef'~\mp |                                            % V 2
      ef8 d~ d4r8 df~ |
      df8 c~ c4 r8 b~ |
      b8 c~ c4 r8 c~ |
      %% Takt 20 ======================================================
      c8. d!16 b4 r8 af!~\< |
      af8 g~ g4 r8 f~ |
      f4 ef r8 ef~ |
      ef8 d~ d8. f16 ef8. d16 |
      ef4\f r8 g c d                                               % V 3
      %% Takt 25 ======================================================
      b4. c8 df ef
      c8 f d! c b4
      c8 bf! af c f ef
      d4. ef8 f4
      ef8\mf f g4 d
      %% Takt 30 ======================================================
      r8 af g f ef d
      ef8 f g af g4~
      g8 c,16\mp d ef8 ef16 f g8 c                                   % V 4
      d8 g,16 a b8 a16 b c4~
      c8 d16 ef f8 f16 ef d4
      %% Takt 35 ======================================================
      c4 r4 r8 f16 ef
      d8 b16\< c d8 d16 ef f4
      g4\f r8 g16 f g8 g,
      c8 ef16 d ef8 c16 b c8 ef,16 d
      ef4 r8 g16\> f g8 d
      %% Takt 40 ======================================================
      ef4\mp r8 g'16\p g, c4                                           % V 5
      b4 r8 
      
      %%%%%%%% The following is to make the 'written-out' crescendo,
      %%% using the \< for the 'hairpin' crescendo:
      \set crescendoText = \markup { \italic { crescendo poco a poco } }  %% sets words for the cresc.
      \set crescendoSpanner = #'text
      \override DynamicTextSpanner #'style = #'dashed-line                %% stretches it out with dashes.

          b16\< g c4~
      c4 r8 d16 a b4
      c4 r8 c'16-4 c,-1 f4
      d4 r8 d16 d, g8 d'
      %% Takt 45 ======================================================
      c4\f r8 g'16 \crescHairpin g, c8 b16( d) | %% \crescHairpin is to go back to the '>'-type cresc.
      c4 r8 c'16 c, f8. ef16
      d4 r4 r8 g16 d
      ef16 g,\mp a b c8. d16 ef4                                     % V 6
      r16 d ef f g2
      %% Takt 50 ======================================================
      r16 c, d ef f8. ef16 d8 f
      ef16 c d ef f8. g16 af8 f
      d16 d,\p ef f g8. a16 b!4
      r16 g\mp a b c4 d
      r16 g,\mf a b c2~
      %% Takt 55 ======================================================
      c4~\< c16 c b a b4
      c4\f r r16 g f ef                                             % V 7
      d4 r r16 f' ef d
      c4 r16 g' f ef d f ef d
      c4 r16 g' f ef d ef d c
      %% Takt 60 ======================================================
      b4 r r16 af'! g f
      g4 r d16 c b a
      g4 r r16 ef'\mf d c
      b4 r r16 af\mp\> g f
      ef16 c'\p bf! af g f ef d c ef'=' d c                            % V 8
      %% Takt 65 ======================================================
      b4~ b16 c b a g ef f g
      af!8. bf!16 c4 r16 g a b
      c16
             
      %%%%%%%% The following is to make the 'written-out' crescendo,
      %%% using the \< for the 'hairpin' crescendo:
      \set crescendoText = \markup { \italic { crescendo poco a poco } }  %% sets words for the cresc.
      \set crescendoSpanner = #'text
      \override DynamicTextSpanner #'style = #'dashed-line                %% stretches it out with dashes.

          df\< c bf! af c d ef f g f ef
      d4~ d16 ef d c b c b a
      g4 r16 c d ef f af! g f
      %% Takt 70 ======================================================
      ef4 r16 ef, f g af4
      g8\f \crescHairpin a16 b c c, d ef f af! g f
      ef8 c r16 g'\mf b g c4\mordent                                 % V 9
      b4 r16 g b g c4
      r16 c ef c f2
      %% Takt 75 ======================================================
      r4 r16 c ef c f4
      d16 g, b g d' b d b f'4
      g16 g, b g c4 r
      r16 g b g c4 r
      r16 g b g c4~ c8. b16
      %% Takt 80 ======================================================
      c4\mp r ef                                                    % V 10
      d4 r c
      c4 r g'
      c,4 r af
      g4 r f
      %% Takt 85 ======================================================
      g4 r g
      c4 r af
      g4 r b
      g4 r r16 ef'='\mp d c               |     % starts middle c
      b16 c b  a g f ef d c bf''!-3 af! g |
      %% Takt 90 ======================================================
      af16-2 bf af g f ef d c b r16 r8 |
      R2.*2
      r2 r16 f'='\mp ef d |
      ef16 g c bf af g f ef d ef d c |
      %% Takt 95 ======================================================
      b16 c d ef d c b!\< a g af! g f |
      ef16\f f g af g f ef d c ef'='\mf d c   | 
      b8 g r g= af! bf! |
      c2 df8 c~ |
      c16 df bf c af8 c f16 g ef f |
      %% Takt 100 =====================================================
      d!4~ d16 ef c d b c a b |
      c16 d bf! c af! bf g af f g ef d |
      c8 r r ef'=' f16 g ef f |
      d16 ef c d b8 d,= ef f |
      g16 af f g ef f d ef c8 r                                |   % V 13
      %% Takt 105 =====================================================
      g'16(\mp b a g) c4~ c16 df( c bf) |
      af4. df8 bf c |
      f4 r2
      R2.*2
      %% Takt 110 =====================================================
      r4 r16 bf,=16(\mf af g) f( af g f) |
      g4~ g16 g( f ef) d( f ef d)
      ef4~ ef16 f( ef d) c8 r |
      r16 g'=\mp b d g r r8 ef,16\< g c ef\!   |% V 14
      r16 f,\mf af c f r r8 g,16 b ef g |
      %% Takt 115 =====================================================
      r16 af, c ef af r r8 f,16 af d f |
      r16 g, b d g r r8 d,16 f bf d |
      R2.*3
      %% Takt 120 =====================================================
      r8^\markup { \italic { on the string } } ef,=16-.[\mf g-.] r2                           |  % V 15
      r8 b16-. d-. r2 |
      r8 af16-. c-. r2 |
      r8 c16-. ef-. r2 |
      r8 b16-. d-. r2 |
      %% Takt 125 =====================================================
      r8 g,16-. c-. r2 |
      r8 ef,16-. g-. r4 f=16-. d'-. r8 |
      r8 c16-. ef-. r4 g,=16-. r16 r8 |
      r8 ef'='16-. g-. r4 r8 c,->\f\upbow |
      r4 r16 fs( g d) ef8 c->  |                          % V 16
      %% Takt 130 =====================================================
      r4 r16 << { s16 f8( ef) d-> } \\ { e16_( f c~ c8) g-> } >> |
      r4 r16 g'='( af ef) f8 <f d>-> |
      r4 r16 << { s16 s8 f='8 f-> } \\ { fs='16( g d~ d8) g,-> } >> |
      r4 r16 << { s16 c'=''8\noBeam g d-> } \\ { b'='16( c fs,) g8 g,-> } >> |
      r4 r16 << { s16 c'=''8~\noBeam c c-> } \\ { b='16( c g af!8) d,-> } >> |
      %% Takt 135 =====================================================
      r4 r16 << { s16 c'=''8~ \noBeam c b-> } \\ { b='16( c fs, g8) d-> | } >>
      r4 r16 
        << 
          {  % These are the violin 1 cue notes:
            \teeny { s16 s8( g'=''16*2/3^\markup { v1 } f=''[ ef)] ef( d c) }
          }
          \\
          { b='16_(\> c fs, g8~ \times 2/3 { g16) f( ef)\! } | } 
%           \\ 
%           { s16 c'=''8~ \noBeam c s } 
        >>
      \times 2/3 { \triolen \tupletDown
         ef='16(\mp d c) c( b a)
            \once \override TupletBracket #'staff-padding = #-3 g( a b)
            \once \override TupletBracket #'staff-padding = #-3 b^\markup { \italic simile } c d c d ef ef f g
            f16 g af af g f f ef d d ef f f g af } \times 2/3 { g8\noBeam f16 } |
      ef8[ \times 2/3 { \triolen c'16 bf af] af g f f ef d d ef f f g af
      %% Takt 140 =====================================================
      g16 a b b c d d ef f f g af af g f \shiftOff f ef d }
      g4 r4 r8 g,~\p
      \times 2/3 { g16 f-. ef-. ef-. d-. c-. c-. bf-. af-. af^\markup { \italic { simile } } g f f'=' ef d d c b
      \stemNeutral b16 a g g a b b c d d ef f f g af! g af f
      ef16-.[ f-. d-.] } c8 \times 2/3 { g16(\mf f ef) ef( d c) } 
        \duolen ef'='4~  |
      %% Takt 145 =====================================================
      ef8 d16 c d8 ef16 f g4~
      g8 f16 ef f8 g16 af d,4~
      d8 c~ c4 r8 d
      \appoggiatura c16 b8 c16 b c8 d16 ef b!4~
      b8 c16 d ef4 r8 d
      %% Takt 150 =====================================================
      c4. d16 e f4~
      f8 ef!16 d ef8\> d16 c g'8 f~ |
      f8 ef16 d ef8\! ef16\p d c8 ef~                                % V 19
      ef16 f( ef d) ef4~ ef16 f( ef d)
      ef4~ ef16 f( ef d) ef4~
      %% Takt 155 =====================================================
      ef16 
             
      %%%%%%%% The following is to make the 'written-out' crescendo,
      %%% using the \< for the 'hairpin' crescendo:
      \set crescendoText = \markup { \italic { crescendo poco a poco } }  %% sets words for the cresc.
      \set crescendoSpanner = #'text
      \override DynamicTextSpanner #'style = #'dashed-line                %% stretches it out with dashes.

          f(\< ef d) ef4~ ef16 f( ef d)
      ef4~ ef16 ef( d c) d4~
      d16 f( ef d) c4 d~
      d4 c2
      b4 c  d='8 g,~
      %% Takt 160 =====================================================
      g4~ g16 af( g f) ef8 c'~\f | \crescHairpin
      c16 d( c b) c4~ c16 d( c b)
      c4~ c16 d( c b) c4~
      c16 d( c b) c4~ c16 d( c b) |
      c4~ c16 c(\< d ef) f8 f,
      %% Takt 165 =====================================================
      c'4~\ff c16 c( b a) d4
      g,4~ g16 bf!( af g) f4
      ef16( f ef d) ef8. f16 g^\markup { \italic rit. } f g af
      g4~ g16 f ef <d b'> <c c'>4 \fermata \bar "||" 
      
        \partial 4 r4 |
      r8 ef'='(\mf b) b c c  |      % Thema fugatum
      %% Takt 170 =====================================================
      r8 af'( d,) d e e
      r8 f( c) c d d
      r8 ef( b) b c c~
      c16 c\> bf! a bf4~ bf16\mp bf a g
      fs16 d g c, d d' c d g, g' f! g
      %% Takt 175 =====================================================
      ef16 g ef g ef f ef f d f d f
      c16 ef d  f ef f ef f ef f ef f
      d16 ef d ef d ef c d b8 b
      c8 c f, f g g
      af8 g f4~ f8 f
      %% Takt 180 =====================================================
      g4. g4 c8
      b16 d c ef d8 g,4 c8~
      c4 f bf,
      c4 f8 ef d c
      b8 c d4 g,~
      %% Takt 185 =====================================================
      g4 r g\mf
      d'2 bf4
      c2 d4
      ef2 c4
      d4.\> d4 a8\p
      %% Takt 190 =====================================================
      d8 c4 d a8
      b8 c d g, c af!
      g8 ef' b b c c
      r8 af' d, d e e
      r8 f c c d d
      %% Takt 195 =====================================================
      r8 ef bf bf c c
      d8 bf r4 r
      r4 r ef,4\f
      bf'2 g4
      af2 bf4
      %% Takt 200 =====================================================
      c2 af4
      bf2 c4
      f,2 bf4
      ef,4. r8 r4 |
      R2.*8
      r8 bf'=8\f c c d d
      ef8 ef, f f g g
      af8\noBeam af' d, d e e
      %% Takt 215 =====================================================
      f4 r16 g f g ef! af g af
      d,4 r16 f\> ef f d g f g\!
      c,4->\mf a'-> f->
      bf,4-> c-> d->
      ef4-> d-> c->
      %% Takt 220 =====================================================
      d4-> c->\> bf16 a g a
      bf16\mp d c ef d4 d~
      d8 g, c4 fs,
      g4 c8 d ef4
      d2.~\<
      %% Takt 225 =====================================================
      d16\! f! ef g f g ef f g8-. c,~
      c16 ef d f ef f d ef f8-. bf,~
      bf16 d c ef d ef c d ef8-. a,~
      a8 c-. bf-. a-. g16 bf g bf
      c16 ef c ef a, c bf d c8-. f,~
      %% Takt 230 =====================================================
      f8 g af4~ af16 g d f
      ef16 g f af g\> af f g af4
      d,8\mp r r4 r
      r4 r c\mf
      g'2 ef4
      %% Takt 235 =====================================================
      f2 g4
      af2 f4
      g16 bf\mp af bf r c bf c r d c d
      r16 ef f ef r d c d r b a b
      c8 r r4 r8 f\mp
      %% Takt 240 =====================================================
      bf,16 d c\< ef d f ef g f af! g bf\!
      af8 r r4 r8 d,\mp
      g,16 bf a\< c bf d c ef d f e g\!
      f8 r r bf,~ bf16 c bf af!
      g16 bf af c bf4 c16 d bf c
      %% Takt 245 =====================================================
      a16 bf g a fs4\mf g16 a fs g
      a8-. bf-. fs-. fs-. g-. g-.
      r8 ef'-. a,-. a-. b-. b-.
      r8 c-. g-. g-. a-. a-.
      bf8. a32 g a16 d c d bf8 b\f
      %% Takt 250 =====================================================
      c4. d4 bf8~
      bf8 a4 g fs8
      g4~ g16 bf! a g \grace { g8( } fs8.)\trill g16
      g4.\> a8 b4\!
      c16 ef d f ef g f af! g bf af g
      %% Takt 255 =====================================================
      af8 e f16 af g bf af8 r
      r4 r16 c,\mf bf c f, f' ef! f
      df f df f df ef df ef c ef c ef
      bf16 df c ef df ef df ef df ef df ef
      c2.~\>
      %% Takt 260 =====================================================
      c16 e\mp f g af8 g16 f c'4
      bf8 f g4~ g16 g af g
      f2 ef!4~
      ef8 d16\mf ef c ef d c bf4
      r16 c\mp bf c a bf a bf g4
      %% Takt 265 =====================================================
      r16 c\p bf c a bf a bf g4
      r16 a\> g a fs8 g4 fs8\!
      g4 r r
      c,16\< ef d f ef g f af g bf( af g)\!
      <<
         \new Voice {
           \grace { g8( } f2.)~
      %% Takt 270 =====================================================
            f2.
         }
         \new Voice {
            s2.\startTrillSpan
            s2 s8. s16\stopTrillSpan
         }
      >>
      f16 f( ef d) ef8\> ef'~ ef16 ef d c\!
      b16 d c ef d4 r16 ef d ef
      c4 bf! bf
      c4 f16 g f ef d8 c~
      %% Takt 275 =====================================================
      c16 b c8~ c16 b c d ef g f ef
      d4\mp g8 g ef ef
      c4 f8\> f d d
      b4 ef8 ef c c
      a4 d8 d b b
      %% Takt 280 =====================================================
      g4\! c8 c af! af
      d,4 r8 g g\< g
      g4 r8 g g g
      g4 r8 b c c
      b4\f r8 b^\markup { \italic rit. } c ef
      %% Takt 285 =====================================================
      df8\fermata r^\markup { \italic { meno mosso } } r d ef4
      c2 b4
      c8^\markup { \italic { à tempo } } d e g\< f f
      g4 r8 c, c c\!
      c4 r8 e^\markup { \italic rit. }\ff f f
      %% Takt 290 =====================================================
      << {  
            e4 r16 e d e~( e8 f)
          }
          \\
          {
            s2 c='4_\eyeglasses
          }
      >>
      
      r4^\markup { \italic Adagio } r16  af=16 g af~ af8. b16
      
      <c=' c,>2.\fermata \bar "|."
}