\version "2.12.0"
  \relative { 
    \time 2/4
    \key b \minor
    \set Staff.midiInstrument = "trumpet"
    \set Score.tempoHideNote = ##t

\tempo 8 = 66
    <b= fs' d' as'>16(^\markup { \bold { Pesante } } \ff b''32) r64 b'-> fs32.([ e64)] g( fs e d)
    cs([ d e d cs b as! b)] fs([ e d as b fs d b)] |

%%%%% measure 2 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
as32.([ b64)] a32.([ <fs' ds' c'>64)] g,32([ <g' e' b'>64)] 
	e''(^\markup { \italic sempre \dynamic ff }
   cs'!32.[ b64)] as([ cs fs, e g e cs b)] as( g? fs e d cs b as) |
   <cs e,>32(\> <b d,>) <a! cs,>( <g b,>)\! <fs as,>32.-- fs'64-. fs32.--\< fs'64-- 
      d32.( <b d,>64) <as cs,>32( <b d,>) <d fs,>(\ff <b d,>) <fs d>( <d b>) |

%%%%% measure 4 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
<<
  {
    s2
    %% The following 11 lines are simply to put a turn and a sharp
    %% between the b and the a-sharp:
    \once \override TextScript #'avoid-slur = #'outside
    \once \override TextScript #'outside-staff-priority = ##f
    b8(^\markup \tiny \override #'(baseline-skip . 1) 
        { 
	  \halign #-4
	  \center-column 
	     { 
	       \musicglyph #"scripts.turn"
	       \sharp 
	     } 
	 }
    as)
  }
  \\
  {
    \stemNeutral <cs as>16( <d b>) <e c>(\> <d b>) <d f,>( <c e,>) <c e,>( <b d,>) |
    \stemDown
    d,8( cs)\p
  }
>>

<<
  {
    <a'' fs>32(\downbow <gs es>) <a fs>-.( <cs es,>-.) <a fs>( <gs es>) <a fs>-.( <d d,>-.) |
    <b g>( <a fs>) <g e>-.( <fs d>-.) <e cs>( <d b>) <cs a>-.( <b g>-.)
  }
  \\
  {
    <a d,>16-.\pp\< r <a d,>-. r16*1/2 s32\! |
    <d, g,>16-. r <e a,>-. r 
  }
>>

<g b>32(\> <fs a>) <es d'>-.( <fs a>-.) <fs d>16-.\! r32 d64(\f cs) |

%%%%% measure 7 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
bs64([ gs' ds' gs a gs fs d)] gs([ d e bs cs gs fs e)]
   d([\< cs' fs b,) e,( d' gs cs,)] fs,( e' a d,) gs,( fs' b e,) |
<a, e' cs'>16\ff\downbow\noBeam <as e' cs'>16\downbow <b e cs'>16[\downbow 
<b d b'>16]\downbow <e, d' g>16\downbow cs'32(\upbow b) <d, cs' fs>16\downbow b'\upbow

%%%%% measure 9 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
as16([ b)] es,([\> fs]) d[( b]) as16..[(\startTrillSpan \grace { gs16[ as]\stopTrillSpan } b64)]\p \bar "||"

%% "Allegro con brio" section
\tempo 8 = 80
<b fs' d' as'>16(^\markup { \bold { Allegro con brio } } \ff\< b''32 fs'-.) e32( d cs b)\!
   fs( d fs gs) as16( b32 cs) |
b8--[\trill a16(\> r32 g-.)] fs8-.\p \times 4/6 { d'32\sf\>([ cs b a g fs)] } |

%%%%% measure 12 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
<g e>32-.\p\< b( as b) <fs d>32-. b( as b) <e, cs>32-. b'( as b) <fs d>32-. b( as b)\! |
<g e>(\f\> b) e-. d-. cs( b) a-. g-. <fs d>-.\p\< a( gs a) <e cs>-.  a( gs a) |
<d, b>-.  a'( gs a) <e cs>-.  a( gs a) <fs d>(\f\> a) d-. cs-. b( a) g-. fs-. |
<g e>16-.\p a,,32([\< b] cs e g gs) <a fs'>16-.\f d,32([\p\< e] fs a b cs) |

%%%%% measure 16 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
d32( e fs g) gs( a as b) <c e,>(\f b) <c ef,>( a) <b d,>( a) <b d,>(\> g) |
<a cs,>( gs) <a c,>( fs) <g b, e,>( ds) e( as,)\! b(\p\< cs) d-. cs-. d( fs) d-. fs-. |
b( d) b-. d-. fs( b) fs-. b-.\! g,,,16->(\ff[ r32 <a'' fs'>)] <a fs'>16(

%%%%% measure 18 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  <g e'>) |
<fs d'>16->[ gs,,-> a-> <e'' cs'>->] <d' fs, d,>-> r <d, fs,>-.
  \downbow \p \< <a fs>-. |
<a fs>-.[ <fs d>-.]\! <fs d>-. <e a,>32(\> <d b>) <e cs>16-.\! r 
  <g, d' b' g'>-.\f <b' d>-. |

%%%%% measure 21 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
<b d>16-.[ <g b>-.] <g b>-.[ <fs a>32( <e cs'>)]\> <fs a>16-.\noBeam
   d32(\p\< e \times 8/9 { fs64 g a b c d e fs gs)\! } |
<a c,>32(\f b) c-. b-. <a c,>( fs) g-. a-. <g b,>( a) b-. a-.
   <g b,>( e) fs-. g-. |

%%%%% measure 23 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
<fs a,>32(\> g) a-. g-. <fs a,>( ds) e-. fs-.\! <g b,>(\p\<
   e,) g-. b-. e( g) b-. e-.\! |
g-.\f\< a,,,-. cs-. e-. a-. cs-. e-. es-. fs-. d,-. fs-. a-.
   d-. fs-. a-. d-.\! |

%%%%% measure 25 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
cs(\ff <a fs>) <a fs>( <gs cs,>) <gs cs,>( <fs a,>) <fs a,>( <cs fs,>)
   <cs a>(\> <b g?>) <a fs>( <g e>) <fs d>16-.\! <fs' d'>32([\p\< a)] |
<a fs>16-.[ <fs d>-.]\! <fs d>-. <e a,>32( <d fs,>)\> <e a,>16-.
   \noBeam a,,64([\f b cs d)] e16-. \noBeam e'-. |
<a e fs,>-. d,,64([ e fs g)] a16-. \noBeam fs'-. 
%% the following markup command is to make the 'sempre ff' align in the right place:
<b fs g,>-._\markup 
{ \center-align { \hspace #0 \italic sempre \hspace #1 \dynamic ff } } e,,64([ fs g a)] b16-. \noBeam g'-. |

%%%%% measure 28 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
<g cs a,>16( <fs d'>) <fs a>(\> <d fs>) <cs e>8-. \! r16 cs-.\p^\markup { \italic { poco rit. } } |
<d fs,>(\> <e g,>) <cs e,>( <b d,>) <as cs,>8-. \! r8 |
<as' d, fs, b,>16([\ff\<^\markup { \italic { a tempo } } b32)] fs'-. b16-> \! a!32( g) 
	\times 4/6 { fs([ e d cs b a)] } \times 4/7 { g([ fs e d cs b as)] } |

%%%%% measure 31 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
b16-.\noBeam b,32( cs d fs as b) cs(\> d e d) \! <b d,>16-.\p r32 b-. |

%%%%%%%% The following is to make the 'written-out' crescendo:
\set crescendoText = \markup { \italic { poco a poco crescendo } }  %% sets words for the cresc.
\set crescendoSpanner = #'text
\override DynamicTextSpanner #'style = #'dashed-line		    %% stretches it out with dashes.

<cs as>32(\< fs) <b, gs>( fs') <cs as>( fs) <d b>( gs)
    <cs, a>( a') <d, b>( a') <e cs>( as) <fs d>( b) |
<es, cs>( cs') <fs, ds>( cs') <gs es>( cs) <as fs>( cs) fs(\ff \crescHairpin % back to regular crescendos.
as,) b-. cs-. d!( es,) fs-. gs-. |

%%%%% measure 34 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fs32( a) cs,(\> fs) a,( cs) fs,( a) bs,16([^\markup { \italic { rit. } } cs)] bs16.( cs32) \! |
<<
  { <cs a'>8_- gs'16.( es32) <a, fs'>8_- }
  \\
  { s8\p\> b8 s\pp }
>>
 r \bar "||"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% "Vivace assai" section starts here %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\time 3/8 
\tempo \markup { \bold { Vivace assai. } } 8 = 192   % this makes the midi file change tempo, too.
<d=' a' fs' d'>8-.\ff\downbow a''-.( d-.) |
<b g d, g,>-. <b g>16( <as fs> <b g>8-.) |
<d,, a' fs' d'>-.\pp\< a''-.( <d d,>-.) |
<e,, d' g>-. g'16( fs <cs g'>8) \! |

%%%%% measure 40 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\slurUp
<d, cs' fs>8 fs'16( es <fs b,>8) |
<e b cs,>-.\> e16( ds <e as,>8) \! |
\slurNeutral
<d b>8-.\noBeam \times 4/5 { b,32([ \< d e fs gs] } \times 4/6 { as[ b cs d e fs)]\! } |
<g b, d, g,>8->\ff <b, d,>-.( <b g'>-.) |
<bf' bf, ef, g,>-. g16( a bf8-.) |
\once \override Hairpin #'to-barline = ##f	% this is to make the < end AFTER the barline.
<g b, d, g,>-.\pp\< d-.( <g b,>-.) |
<bf bf, ef, g,>-. \! g16( a bf\> g) |

%%%%% measure 47 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
<cs, e, a,>8-.\noBeam \! \times 4/5 { a32([\< b cs d e] } \times 4/5 { fs g a b \! cs) } |
<d fs, a, d,>8-.\ff <a fs>-.( <d fs,>-.) |
<cs es, gs, d>-. <g es>-.( <cs es,>-.) |
<c e, g, d>-.\> a16( b <c e,>8-.) \! |
<a fs a, d,>8-.\p\noBeam \times 4/6 { d,,32([\< e fs g a b] } \times 4/6 { c d e fs g a) \! } |

%%%%% measure 52 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\stemDown
<b b, d, g,>8-.->\ff <g b,>16( <a c,> <b d,>8-.) |
<bf bf, ef, g,>-. g16( a <bf bf,>8-.) |
<b! b,! d, g,>8-. <g b,>16( <a c,> <b d,>8-.) |
<bf bf, ef, g,>-. g16( a\> <bf bf,>8-.) |
\stemNeutral
<cs, e, a,>8-.\noBeam a32(\p\<[ b cs d] e fs gs a) \! |
<a c, f,>8(\mp gs) <a c,>-.
<a b, d,>(_\markup { \italic { poco a poco } } gs) <a b,>-. |

%%%%%%%% The following is to make the 'written-out' crescendo:
\set crescendoText = \markup { \italic { crescendo } }  %% sets words for the cresc.
\set crescendoSpanner = #'text
\override DynamicTextSpanner #'style = #'dashed-line	%% stretches it out with dashes.

%%%%% measure 59 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
<g b, e,>(\< fs) <g b,>-. |
\slurUp
<g a, cs,>( fs) <g a,>^.
<fs a, d,>( es) <fs a,>^.
<f g, b,>( e) <f d,>^.
<e g, c,>^. ds( <e g,>)
<e g, b,>^. ds( <e g,>)
<e fs, a,>^. ds( \! <e fs,>)
<ds fs, b,>-.\noBeam \ff b16(\p cs 

%%%%%%%% The following is to make the 'written-out' crescendo:
\set crescendoText = \markup { \italic { poco a poco crescendo } }  %% sets words for the cresc.
\set crescendoSpanner = #'text
\override DynamicTextSpanner #'style = #'dashed-line		    %% stretches it out with dashes.
	ds\< fs)

\slurNeutral
<g b, e,>8-.[ b-.] <fs b, d,>-.[ |

%%%%% measure 68 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
b-.] <e, b c,>-.[ gs-.]
<e a, c,>-.[ a-.] <d, a c,>-.[
fs-.] <d g, b,>-.[ g-.]
<c, g a,>-.[ e-.] <c fs, a,>-.[
fs-.] <b, fs g,>-.[ ds-.]
<b e, g,>^([ e^.)] \!

<< { as,='16( cs) 
	d8.( b16) as([ gs)]
	as8.--
   }
   \\
   {
     	fs8
	es4\ff fs16(\> es)
	fs8. \!
   }
 >>

 r16 r16. fs'=''32->\ff
 \bar "||"
 \time 2/4

%%%%% measure 76 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\tempo \markup { \hspace #-4 \bold Pesante } 8 = 66
<as d, fs, b,>16(
   b32) r64 fs'-> b32( a64 g) fs( e d cs) b([ a g fs e d cs b)]
   a( g fs e d cs) b-> a-> |
g16.->( <d' b' b'>32)\ff e''16.([ g32)] <cs, e, a,>8-> <b d,>16( <a cs,>) |

%%%%% measure 78 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
c,,16._>([ <a' fs' d'>32)] bf,16._>([ <g' d' d'>32)] a,16._>([ <fs' d' a'>32)] ds16._>([ <c' a'>32)] |
<<
  {
    %% The following glop in these two voices is all necessary just to have the two voices
    %% both slur to a single grace note! I actually have them each slur to their own note
    %% in their own voice context, but I make the note in voice2 invisible, and I also tell
    %% Lilypond to ignore note collisions for that note, so that it doesn't put the invisible
    %% note AFTER the visible note, rather than on top of it.

    <c a'>16([ <b g'>)] cs8*7/8(\noBeam \startTrillSpan 
        \tiny							% makes the note small, as a grace note.
        \once \override Stem #'stroke-style = "grace"		% puts slash through the stem.
    	b8*1/8)\stopTrillSpan
	\normalsize
  }
  \\
  {
    e,8\noBeam 
        \once \override TrillSpanner #'direction = #-1		% puts trill below the note
    as8*7/8(\noBeam_\startTrillSpan
        \once \override NoteColumn #'ignore-collision = ##t	% puts this note on top of voice1 grace note
        \once \override NoteHead #'transparent = ##t		% make note head invisible
        \once \override Stem #'transparent = ##t		% makes step invisible
    b8*1/8)\stopTrillSpan

  }
>>

b8--\noBeam \times 8/14 { b,64( cs d e fs gs as b cs d e fs gs as) } |
b8--\fermata \bar "|."
}
