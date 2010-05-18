\version "2.12.0"

\relative c'' {
      \global
      \set Staff.midiInstrument = "violin"
      \compressFullBarRests
      % The following makes the rehearsal marks show up as letters within a box:
      \set Score.markFormatter = #format-mark-box-letters
      \partial 4 r4
      R2.*7
      r4 r4 r8 c~( \p                                 % V 1
      c8. d16) b4 r8 ef~(
      %% Takt 10 ======================================================
      ef8. f16) d4 r8 d~(
      d8. ef16) c4 r8 c~(
      c8. d16) b4 r8 af'~(
      af8. bf!16) g4 r8 f~(
      f8. g16) ef4 r8 ef~(
      %% Takt 15 ======================================================
      ef8. f16) d4 r8 d~(
      d8. ef16) c4 r8 c~(\mp
      c8. d16) b4 r8 bf~(
      bf8. c16) af4 r8 g~(
      g8. af16) f4 r8 af~
      %% Takt 20 ======================================================
      af8 g g4\mordent r8 f~(\<
      f8. g16) ef4 r8 d~(-2
      d8. ef16) c4 r8 c~(-2
      c8. d16) \grace { c8( } b4.)\trill b8\upbow
      c8\f g' c d ef-2 f                                  % V 3
      %% Takt 25 ======================================================
      d2\> g4~\mp
      g4 f ef~
      ef8 g\< f ef d c
      b4\mf r r8 af'
      g8 f ef4 r8 af-2 |
      %% Takt 30 ======================================================
      g8 f ef4 r8 af-2
      g8 <f af,> <ef g,> <d f,> <c ef,> <b d,>
      <c ef,>4 r r8 g16\mp a |                                   % V 4 
      b8 b16 c d8 c16 d ef4~
      ef4. d16 c b4
      %% Takt 35 ======================================================
      r8 c16-2 d ef8 f16 g af8-3 d,16-4 c-2
      b4 r8 g'16-1\< a b8 a16 b |
      c8\f g16-2 f g8 ef d8[ c16 d]
      ef8-2 c16 b c8 g-1 af[-1 af']
      g8-3 c,16-3\> b c8 ef,16-2 d \grace { ef16(-3 } d8.)\trill c16
      %% Takt 40 ======================================================
      c8\mp g''16 g, c8 d16 ef \grace { \stemDown f16^( } ef4)\trill \stemNeutral
      d8 r8 r d16\p b ef4~ |
      
      %%%%%%%% The following is to make the 'written-out' crescendo,
      %%% using the \< for the 'hairpin' crescendo:
      \set crescendoText = \markup { \italic { crescendo poco a poco } }  %% sets words for the cresc.
      \set crescendoSpanner = #'text
      \override DynamicTextSpanner #'style = #'dashed-line                %% stretches it out with dashes.

      ef8\< ef16 c f4~ f8 ef16 g
      c,8-1 c'16 c, f8-4 g16 af \grace { \stemDown bf16^( } af8.)\trill \stemNeutral g32 af
      g8-1 d16-2 d,-0 g8-3 a16 b! \grace { \stemDown c8^( } b4)\trill \stemNeutral
      %% Takt 45 ======================================================
      c8\f \crescHairpin g'16-4 g, c8 d ef[ d16(-2 f)] | %% \crescHairpin is to go back to the regular < symbol.
      ef8 c'16 c, f8-2 g af f~
      f8 g16 d-1 ef8. f16 \grace { ef16(-3 } d8.)\trill ef16
      c4 r4 r16 a\mp b c                                  % V 6
      b4 r4 r16 ef f g
      %% Takt 50 ======================================================
      af!4 r4 r16 g a b |
      c4 r4 r16 d, ef f
      b,4 r4 r16 ef,\p f g |
      ef4 r4 r16 b'\mp c d
      ef4 r4 r16 b\mf c d|
      %% Takt 55 ======================================================
      ef16 g f ef \appoggiatura ef8 \afterGrace d2(\< \trill { c16[ d] }
      c16) c\f bf af g af g f ef8 r                                 % V 7
      r16 g' f ef d ef d ef c4~
      c16 bf' af g f ef d c b4
      c16 f ef d c bf! af g af4
      %% Takt 60 ======================================================
      g16 g' f ef d ef d ef f4~
      f16 ef d c b a b c d4~
      d16 f ef d c8.\> bf16 af4~
      af16 af g f ef32[( f g16]) f[( g32 af]) \acciaccatura ef8 d='8.\trill ef16 |
      c4\p r2 |                                      % V 8
      %% Takt 65 ======================================================
      r4 r16 d' ef f g f ef d |
      c16 df c bf af f' g af b,4
      r16 
      
      %%%%%%%% The following is to make the 'written-out' crescendo,
      %%% using the \< for the 'hairpin' crescendo:
      \set crescendoText = \markup { \italic { crescendo poco a poco } }  %% sets words for the cresc.
      \set crescendoSpanner = #'text
      \override DynamicTextSpanner #'style = #'dashed-line                %% stretches it out with dashes.

          c\< d! ef f g f ef d a' b c |
      b16 c b a g8 f16 ef f4~
      f16 af g f ef g f ef d4~
      %% Takt 70 ======================================================
      d16 f ef d c ef d c df ef df c
      b16\f \crescHairpin c d8~ d16 ef d c~ c8 b\trill
      c4 r2 |                                           % V 9
      r16 g\mf b g d'4 ef~
      ef4 r16 df\upbow f df~ df4~ |
      %% Takt 75 ======================================================
      df4 c d
      b4 r2
      r4 r16 c ef c f d f d |
      ef4 r16 c ef c f d f d |
      ef4 r16 c ef c f d f d |
      %% Takt 80 ======================================================
      ef16 c' bf! af g f ef d c ef d c                            % V 10
      b16 c b a g\> f ef d c\! bf''!\mf af! g
      af16 bf af g f ef d c b d c b
      c16 d c bf! af g f ef d ef\< d c
      b16 c b a g\f a b c b d c b
      %% Takt 85 ======================================================
      c16 d ef f g a b c d f ef d
      ef16 g c bf af g f ef d ef\> d c
      b16 c d\! ef d c b! a g af g f
      ef16\> f g af g f ef d c\! r r8 |
      R2.*7
      r2 c'=''4\f                                 % V 12
      g'2 ef4
      f2 g4
      af4.( g8) f4
      %% Takt 100 =====================================================
      g2 d4
      ef2 b4
      c2 f,4
      g2.\>
      c,2*1/2 s4\! r4                                              % V 13
      %% Takt 105 =====================================================
      r4 c'16(\mp ef d c) g'4
      c,16 e( d c) f4. e8
      f16 af( g f) c'4~ c16 ef,!( d c)
      b4 c d
      g,8 c~ c16 c( b a) g8 f
      %% Takt 110 =====================================================
      ef8 af!~\downbow af16 g( c bf!) af f'( g af)
      b,4 c16( ef d c) g'4~\>
      g16\p b( a g) c8 c, r16 g'\mp ef c                                % V 14
      b8 g r2
      r4 r16 af='\mf c f r g ef b
      %% Takt 115 =====================================================
      c8 af, r2
      r4 r16 b'=' d g r af f bf,
      g'8 ef r2
      r4 r16 ef,=' g c r af f d |
      ef8\mordent c r2 | 
      %% Takt 120 =====================================================
      r4^\markup { \italic { on the string } } r8 g'='16-.\mf c-. r8 g'16-. c-. |                       % V 15
      r4 r8 d,16-. g-. r8 g16-. c-. |
      r4 r8 c,16-. f-. r8 g16-. b-.
      r4 r8 ef,16-. af-. r8 af16-. c-. |
      r4 r8 d,16-. g-. r8 f16-. b-.
      %% Takt 125 =====================================================
      r4 r8 c,16-. ef-. r8 d16-. f-.
      r4 r8 g,16-. c-. r8 af16-. f'-.
      r4 r8 ef16-. g-. r16 d-. f-. b-. |
      r4 r8 g16-. c-. r8 <c, ef,>->\f\upbow |
      <<
        { r8 d4.~\downbow d8 c->\upbow | }
        \\
        { r4 r8 g8~\noBeam g ef-> | } 
      >>
      %% Takt 130 =====================================================
      r8 c'4.~ c8 \shiftOn <b f>-> \shiftOff
      r8 ef4.-2~ ef8 <c d>->
      r8 d4.-3~ d8 <b f'>->
      r8 g'4.~ g8 <f b,>->
      r8 g4.-4~ g8 <f af,>->
      %% Takt 135 =====================================================
      r8 g4.~ g8 <f b,>->
      r8 g4.-2~\>\( \times 2/3 { \triolen g16 f( ef)\) ef( d c) |
        c16(\mp b a) a( b c) b^\markup { \italic simile } c d d-1 ef f ef f g g-2 af! bf!
       af16 g f f-3 ef d d ef f f-2 g af } b,4-1\trill
      \times 2/3 { \triolen c'16-3 bf! af af g f f ef d d ef f f g a a b c }
      %% Takt 140 =====================================================
      b8.[ a16] b8 r8 r \shiftOff b,,-2\p
      \times 2/3 { \shiftOff \triolen c16-. d-. ef-. ef-. f-. g-. g-. a-. b-. b^\markup { \italic simile } c d d-1 ef f ef f d }
      \duolen ef8 \times 2/3 { \triolen g16 f ef ef-3 d c c' bf af af g f f ef d |
      d16-3 c b b c d d-1 ef f f-2 g af } b,!8.-1\trill c16
      c8 \times 2/3 { \triolen g16-3(\mf f ef) ef[( d c]) } \duolen c8 c'4~ % V 18
      %% Takt 145 =====================================================
      c8 b16 a b8 c16 d ef4~
      ef8 d16 c d8 ef16 f b,4~
      b8 c16 b c8 d16 ef f4~
      f8 ef16 d ef8 f16 g d4~
      d8 c16 b c8 d16 ef f4~
      %% Takt 150 =====================================================
      f8 ef16 d ef8-1 f16 g af4~
      af8 g16 f g8\> f16 ef ef8-3\downbow d16( c)                              % V 19
      c4~ c8 c'16\p b c8 c,~
      c4~ c16 d( c b) c4~
      c16 d( c b) c4~ c16 d( c b)
      %% Takt 155 =====================================================
      
      %%%%%%%% The following is to make the 'written-out' crescendo,
      %%% using the \< for the 'hairpin' crescendo:
      \set crescendoText = \markup { \italic { crescendo poco a poco } }  %% sets words for the cresc.
      \set crescendoSpanner = #'text
      \override DynamicTextSpanner #'style = #'dashed-line                %% stretches it out with dashes.

      c4~\< c16 d( c b) c4~
      c16 d( c b) c8 b16( a) b4~
      b16 d( c b) c8. ef16-2 d f( ef d)
      ef4~ ef16 g(-3 f ef) af4
      d,4~\downbow d16 ef( d) c~ c d( c b)
      %% Takt 160 =====================================================
      c4\! \crescHairpin r r8 ef~-2\f |
      ef16 f( ef d) ef4~ ef16 f( ef d)
      ef4~ ef16 f( ef d) ef4~
      ef16 f( ef d) ef4~ ef16 f( ef d)
      ef4~ ef16 g(\< f ef) d8 af'-3^\markup { I }
      %% Takt 165 =====================================================
      g4~\ff g16 af( g f) 
      << {  g4~
            g16 af( g f) 
         } 
        \\ 
         { s4
           c=''4 
         } 
      >> 
      ef=''4~ ef16 f( ef d)
      ef4~ ef16 f( ef d) <ef g,>^\markup { \italic rit. } <f af,> <ef g,> <d f,>
      c16 d c b c <b af> <c g> <d f,> <ef ef,>4\fermata \bar "||"
        \partial 4 r4 |
      R2.*4       % Thema fugatum
      r4 r g,\mf
      d'2 bf4
      %% Takt 175 =====================================================
      c2 d4
      ef2 c4
      d2\> r16 g\mp f! g
      ef4 r16 d c d b4
      r16 c bf! c af c bf c f, f' ef f
      %% Takt 180 =====================================================
      b,16 d c d g, g' f g ef4
      r8 ef b b c c
      r8 af'-3 d,-4 d e-3 e
      r8 f c c d d
      r8 ef b b g'16\> af f g
      %% Takt 185 =====================================================
      ef16 f d ef c d bf! c a\p bf g a
      fs16 a g bf a d c d g, g' f! g
      ef16 g ef g ef f ef f d f d f
      c16 ef d  f ef f ef f ef f ef f
      d16 ef d ef d ef c d bf d c ef
      %% Takt 190 =====================================================
      d8 g,16\< bf a c bf c\mp \grace { bf8( } a8.)\trill g16
      g16\> b a c b g'\p f g ef g f af!
      b,16 d c ef d ef d ef c ef d ef
      c4 bf!~\mp bf8 bf
      af8[ c f8. ef16 d8 c]
      %% Takt 195 =====================================================
      bf4 ef f |
      g=''16 af bf ef, ef4( d8.)\trill ef16
      ef16 bf' af bf g af f g ef g f ef
      d16 f ef g f af g f bf ef, d ef
      c16 ef c ef c df c df bf df bf df
      %% Takt 200 =====================================================
      af16 c bf df c ef d ef c f ef f
      d16 f ef g f bf af bf g c bf c
      af16 c bf c af bf g af f bf af bf
      g16 bf af bf g\< af f g ef f d ef
      c8->-.\mf ef->-. af->-. c,->-. bf->-. af'->-.
      %% Takt 205 =====================================================
      bf,8->-. d->-. g->-. bf,->-. af->-. g'->-.
      af,-> c-> f-> af,-> g-> f'->
      g,-- bf-- ef-- g,-- f-- ef'--
      d16 f d f bf,8\> a16 g f8 g\!
      a8\mp d a a bf bf
      %% Takt 210 =====================================================
      r8 g' c, c d d
      r8 ef bf bf c c
      r16 d\f c d ef4 f
      r16 g f g af4 bf
      r16 c bf c f,4 g
      %% Takt 215 =====================================================
      r16 af g af d,8 d ef ef
      r16 f ef f c8\> c d d\!
      r16 ef\p d ef r ef d ef r ef d ef
      r16 d c d r c bf c r c bf c |
      r16 bf a bf r bf a bf r c bf c |
      %% Takt 220 =====================================================
      r16 a g a r a g a bf c bf c
      d4 r16 d c d g, g' f! g |
      ef16 g ef g ef f ef f d ef d ef
      c16 ef d f ef g fs a g bf a g
      fs16 a g bf a8 d, r4
      %% Takt 225 =====================================================
      R2.*16
      <<
         {
           % These are 2nd violin cues:
           \set fontSize = #-5
           \stemNeutral
           c'='''8^\markup { \hspace #-6 \raise #-1 { violin 2: } } \noBeam d,,=' ef f g af |
           bf c d ef f g |
           af \noBeam bf,,= c d ef f |
           g4. g8 a16 bf g a |
           fs g e fs d2*1/4_( s)
         }
         \\
         {
           r2.
           r2.
           r2.
           r2.
           %% Takt 245 =====================================================
           r4 r 
         }
       >>
        g='\f
      d'2 bf4
      c2 d4
      ef2 c4
      d2~ d16 d\mp c d
      %% Takt 250 =====================================================
      ef16 f! d e f g e fs g a d, f
      ef!16 f c ef d ef bf d c d a c
      bf16 c a b c d ef a, \grace { b8( } a8.)\trill g16
      g16 b a c b d c ef d f ef d
      ef4 r r8 e\mf |
      %% Takt 255 =====================================================
      f16 af g bf af8 bf16(\trill af32 bf) c16 af g f
      e16 g f af g bf af g af4~
      af4\> g gf
      f2.~
      f16\! f g f e8 f g4~
      %% Takt 260 =====================================================
      g16 g af g f8 g af4~
      af16 af bf af g bf af c bf4~
      bf16 c g bf af4~\< af16 c af c
      fs,2\> r16 g\mf f g
      ef4  r16 d\mp c d bf4
      %% Takt 265 =====================================================
      r16 a\p g a fs4 r16 g f g
      ef4\> d r16 d c d~
      d8\! r r2 |
      R2.*3
      r2 c'4\f
      g'2 ef4 |
      f2 g4
      af2 f4
      %% Takt 275 =====================================================
      g2.~\>
      g2.~\mf
      g4 f2~\>
      f4 ef2~
      ef4 d2~
      %% Takt 280 =====================================================
      d4\! c16 ef c ef d f d f
      \grace { \stemDown c8^( } b='4)\trill \stemNeutral r16 g'\< f g ef g c, ef
      b4 r8 b c c
      d4 r8 d ef ef\!
      d4 r8 d^\markup { \italic rit. }\f g ef
      %% Takt 285 =====================================================
      af8\fermata r^\markup { \italic { meno mosso } } r b,8 c4~
      c16 ef d f ef g f af \grace { \stemDown ef8^( } \stemNeutral d=''8.)\trill c16
      c4^\markup { \italic { à tempo } } r16 c'\< bf c af c f, af
      e4 r8 e f f\!
      g4 r8 g^\markup { \italic rit. }\ff af af
      %% Takt 290 =====================================================
      g16 bf af bf 
      <<
        { 
          g4. f8~^\eyeglasses
          f16^\markup { \italic Adagio } f e f 
        }
        \\
        {
          % The following are cello cues:
          \set fontSize = #-5
          \once \override TextScript #'extra-offset = #'(-1.5 . 2)
          r16_\markup { cello: } c,=' bf c af c f, af |
          c,2.*1/6( s8) 
        }
      >>
          b''='4~ b16 d b d
      c2.\fermata \bar "|."
}