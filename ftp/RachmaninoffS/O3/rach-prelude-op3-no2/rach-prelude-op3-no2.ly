%***************************************************************%
%                                                               %
%  Sergei Rachmaninoff (1873-1943)                              %
%  Prelude in C# minor Op.3 No.2                                %
%                                                               %
%  maintained by Petro Kostandy                                 %
%  email: pmkost (at) gmail (dot) com                           %
%                                                               %
%***************************************************************%

\version "2.18.2"
\include "english.ly"

% Default staff size is 20
#(set-global-staff-size 20)

\paper {
    top-margin = 8\mm                              %-minimum top-margin: 8mm
    top-markup-spacing.basic-distance = #6         %-dist. from bottom of top margin to the first markup/title
    markup-system-spacing.basic-distance = #5      %-dist. from header/title to first system
    top-system-spacing.basic-distance = #12        %-dist. from top margin to system in pages with no titles
    %last-bottom-spacing.basic-distance = #12      %-pads music from copyright block on one-page scores only
    ragged-bottom = ##f
    ragged-last-bottom = ##f
}

% Defining a variable to hold the formatted date:
newdate = #(strftime "%m-%d-%Y" (localtime (current-time)))

% ----------------
% Right hand
% ----------------

righthand = { \relative c' {
	\clef treble
	\key cs \minor
	\time 4/4
	
	%-------- Bar RH-001 --------%
	\partial 2
	a4->\ff^\markup {\bold Lento}
	gs->
	
	%-------- Bar RH-002 --------%
	cs,1->~
	
	%-------- Bar RH-003-split --------%
	<< { \voiceTwo
		\octaveCheck c
		%-------- Bar RH-003v1 --------%
		cs2
		a'4-.
		gs-.
		
		%-------- Bar RH-004v1 --------%
		cs,2
		a'4-.
		gs-.
		
		%-------- Bar RH-005v1 --------%
		cs,2
		c'4-.
		b-.
		
		%-------- Bar RH-006v1 --------%
		e,2
		e'4-.
		ds-.
		
		%-------- Bar RH-007v1 --------%
		gs,1~\mf
		
		%-------- Bar RH-008v1 --------%
		gs8
		r8
		r4
		r2
		
		%-------- Bar RH-009v1 --------%
		r2
		a4-.
		gs-.
		
		%-------- Bar RH-010v1 --------%
		cs,2
		a'4-.
		gs-.
		
		%-------- Bar RH-011v1 --------%
		cs,1~
		
		%-------- Bar RH-012v1 --------%
		cs8
		r8
		r4
		fss4-.
		gs-.
		
		\clef bass
		%-------- Bar RH-013v1 --------%
		\once \override DynamicText.X-offset = #0.1
		cs,2\ppp
		a'4 (
		gs )
		
		%-------- Bar RH-014v1 --------%
		cs,2
		a'4 (
		gs )
		
		\clef treble
		%-------- Bar RH-015v1 --------%
		% Changing midi file tempo while keeping text invisible
		\set Score.tempoHideNote = ##t
		\tempo 4 = 192
		\voiceOne
		e'--^\markup {\bold Agitato}\mf (
		ds--
		d--
		cs-- )
		
		%-------- Bar RH-016v1 --------%
		e-- (
		ds--
		d--
		cs-- )
		
		%-------- Bar RH-017v1 --------%
		gs' (
		% Remove dashes from crescendo text
		\override DynamicTextSpanner.style = #'none
		\crescTextCresc
		fs ) \<
		a (
		gs ) \!
		
		%-------- Bar RH-018v1 --------%
		\override TupletNumber.stencil = ##f
		\override TupletBracket.stencil = ##f
		\tuplet 3/2 { fs (
		e8 ) }
		\dimTextDim
		fs4 \>
		\tuplet 3/2 { e (
		ds8 ) }
		e4 \!
		
		%-------- Bar RH-019v1 --------%
		\once \override DynamicText.X-offset = #0.1
		e-- ( \mf
		ds--
		d--
		cs-- )
		
		%-------- Bar RH-020v1 --------%
		e-- (
		ds--
		d--
		cs-- )
		
		%-------- Bar RH-021v1 --------%
		gs' (
		fs )
		a (
		gs )
		
		%-------- Bar RH-022v1 --------%
		cs (
		b )
		d (
		cs )
		
		%-------- Bar RH-023v1 --------%
		fs (
		e )
		d (
		cs )
		
		%-------- Bar RH-024v1 --------%
		d (
		cs )
		b (
		a )
		
		%-------- Bar RH-025v1 --------%
		a (
		gs )
		fs (
		e )
		
		%-------- Bar RH-026v1 --------%
		d-> (
		a' )
		ds,-> (
		as' )
		
		%-------- Bar RH-027v1 --------%
		e-> (
		b' )
		bs-> (
		cs )
		
		%-------- Bar RH-028v1 --------%
		e-> ( \ff
		ds--
		d--
		cs-- )
		
		%-------- Bar RH-029v1 --------%
		e-> (
		ds--
		d--
		cs-- )
		
		%-------- Bar RH-030v1 --------%
		gs' (
		fs )
		a (
		gs )
		
		%-------- Bar RH-031v1 --------%
		\tuplet 3/2 {
			fs \> (
			e8 ) }
		fs4
		
		\tuplet 3/2 {
			e (
			ds8 ) }
		e4 \!
		
		%-------- Bar RH-032v1 --------%
		e-> (
		ds--
		d--
		cs-- )
		
		%-------- Bar RH-033v1 --------%
		e-> (
		ds--
		d--
		cs-- )
		
		%-------- Bar RH-034v1 --------%
		gs' (
		fs )
		a (
		gs )
		
		%-------- Bar RH-035v1 --------%
		b-> ( \<
		a )
		d-> (
		cs \! )
		
		%-------- Bar RH-036v1 --------%
		fs (
		e )
		s2
		
		%-------- Bar RH-037v1 to RH-043v1--------%
		s1 s1 s1 s1 s1 s1 s1
		
		%-------- Bar RH-044v1 --------%
		\voiceTwo
		\tempo 4 = 62
		< a,,, a' >1_\markup {\dynamic sfff}
		
		%-------- Bar RH-045v1 --------%
		< gs gs' >_\markup {\dynamic sfff}
		
		\break
		%-------- Bar RH-046v1 --------%
		\change Staff = upB
		\oneVoice
		< cs, e gs cs >2->
		< a' a' >4->
		< gs gs' >->
		
		%-------- Bar RH-047v1 --------%
		< cs, e gs cs >2->
		< a' a' >4->
		< gs gs' >->
		
		%-------- Bar RH-048v1 --------%
		< cs, e gs cs >2->
		< c' c' >4->
		< b b' >->
		
		%-------- Bar RH-049v1 --------%
		< e, gs b e >2->
		< e' e' >4->
		< ds ds' >->
		
		%-------- Bar RH-050v1 --------%
		< gs,b ds gs >1-> ~
		
		%-------- Bar RH-051v1 --------%
		< gs b ds gs >8->
		r8
		r4
		r2
		
		%-------- Bar RH-052v1 --------%
		< cs, cs' >2-> \arpeggio
		< a' a' >4->
		< gs gs' >->
		
		%-------- Bar RH-053v1 --------%
		< cs, e gs cs >2->
		< a' a' >4->
		< gs gs' >->
		
		%-------- Bar RH-054v1 --------%
		< cs, cs' >2-> ~ \arpeggio
		< cs cs' >8->
		r8
		r4
		
		%-------- Bar RH-055v1 --------%
		r2
		fss4--
		gs--
		
		%-------- Bar RH-056v1 to RH-062v1 --------%
		cs,1--
		cs1--
		cs1--
		cs1--
		cs1--
		cs1-- ~
		cs1-- \fermata \bar "|."
	}
	
	
	
	
	
	
	% Starting the second voice played by the right hand
	\new Voice { \voiceOne
		\octaveCheck c
		%-------- Bar RH-003v2 --------%
		r8
		\once \override DynamicText.X-offset = #0.1
		< cs' gs' cs >-- \ppp
		< e b' e >--
		< ds as' ds >--
		r8
		< d a' d >--
		r8
		< bs fs' bs >--
		
		%-------- Bar RH-004v2 --------%
		r8
		< cs gs' cs >--
		< e b' e >--
		< ds as' ds >--
		r8
		< d a' d >--
		r8
		< bs fs' bs >--
		
		% Bar RH-005v2 %
		r8
		< cs gs' cs >--
		< gs' cs gs' >--
		< fs cs' fs >--
		r8
		< e a e' >--
		r8
		< ds a' ds >--
		
		% Bar RH-006v2 %
		r8
		< e b' e >--
		< b' e b' >--
		< a e' a >--
		r8
		< gs cs gs' >--
		r8
		< fss cs' fss >--
		
		% Bar RH-007v2 %
		r8
		< gs ds' gs >-- (
		< a e' a >-- )
		< fs cs' fs >-- (
		< gs ds' gs ) >-- )
		< e b' e >-- (
		< fs cs' fs ) >-- )
		< ds a' ds >-- (
		
		% Bar RH-008v2 %
		< e b' e >-- )
		< e b' e >-- (
		< fs cs' fs >-- )
		< ds a' ds >-- (
		< e b' e >-- )
		< cs gs' cs >-- (
		< ds a' ds >-- )
		< bs fs' bs >-- (
		
		% Bar RH-009v2 %
		\once \override DynamicText.X-offset = #0.2
		< cs gs' cs >-- ) \ppp
		< cs gs' cs >-- [
		< e b' e >--
		< ds as' ds >-- ]
		r8
		< d a' d >--
		r8
		< bs fs' bs >--
		
		% Bar RH-010v2 %
		r8
		< cs gs' cs >--
		< gs' cs gs' >--
		< fs cs' fs >--
		r8
		< e a e' >--
		r8
		< bs fs' bs >--
		
		% Bar RH-011v2 %
		r8
		< cs gs' cs >-- (
		< d a' d >-- )
		< b fs' b >-- (
		< cs gs' cs >-- )
		< a e' a >-- (
		< b fs' b >-- )
		< gs d' gs >-- (
		
		% Bar RH-012v2 %
		< a fs' a ) >-- )
		< a fs' a >-- [
		< cs fs cs' >--
		< b fs' b >-- ]
		r8
		< a e' a >--
		r8
		< gs ds' gs >--
		
		\clef bass
		% Bar RH-013v2 %
		r8
		< e cs' >--
		< gs e' >--
		< fss ds' >--
		r8
		< fs bs d >--
		r8
		< ds fs bs >-- 
		
		% Bar RH-014v2 %
		r8
		< e cs' >--
		< gs e' >--
		< fss ds' >--
		r8
		< fs bs d >--
		r8
		< ds fs bs >--
		
		\clef treble
		%-------- Bar RH-015v2 --------%
		\voiceTwo
		\tuplet 3/2 { e' [ (
		gs,
		cs ) ] }
		\tuplet 3/2 { ds [ (
		fss,
		cs' ) ] }
		\tuplet 3/2 { d [ (
		fs,
		bs ) ] }
		\tuplet 3/2 { cs [ (
		e,
		gs ) ] }
		
		%-------- Bar RH-016v2 --------%
		% Remove triplet marking
		\override TupletNumber.stencil = ##f
		\tuplet 3/2 { e'_\markup {\italic simile} [ (
		gs,
		cs ) ] }
		\tuplet 3/2 { ds [ (
		fss,
		cs' ) ] }
		\tuplet 3/2 { d [ (
		fs,
		bs ) ] }
		\tuplet 3/2 { cs [ (
		e,
		gs ) ] }
		
		%-------- Bar RH-017v2 --------%
		\tuplet 3/2 { gs' [ (
		gs,
		cs ) ] }
		\tuplet 3/2 { fs [ (
		a,
		cs ) ] }
		\tuplet 3/2 { a' [ (
		fs,
		cs' ) ] }
		\tuplet 3/2 { gs' [ (
		gs,
		cs ) ] }
		
		%-------- Bar RH-018v2 --------%
		\tuplet 3/2 { fs [ (
		fs,
		cs' ) ] }
		\tuplet 3/2 { fs [ (
		fs,
		cs' ) ] }
		\tuplet 3/2 { e [ (
		fs,
		bs ) ] }
		\tuplet 3/2 { e [ (
		e,
		cs' ) ] }
		
		%-------- Bar RH-019v2 --------%
		\tuplet 3/2 { e [ (
		gs,
		cs ) ] }
		\tuplet 3/2 { ds [ (
		fss,
		cs' ) ] }
		\tuplet 3/2 { d [ (
		fs,
		bs ) ] }
		\tuplet 3/2 { cs [ (
		e,
		gs ) ] }
		
		%-------- Bar RH-020v2 --------%
		\tuplet 3/2 { e' [ (
		gs,
		cs ) ] }
		\tuplet 3/2 { ds [ (
		fss,
		cs' ) ] }
		\tuplet 3/2 { d [ (
		fs,
		bs ) ] }
		\tuplet 3/2 { cs [ (
		e,
		gs ) ] }
		
		%-------- Bar RH-021v2 --------%
		\tuplet 3/2 { gs' [ (
		gs,
		cs ) ] }
		\tuplet 3/2 { fs [ (
		a,
		cs ) ] }
		\tuplet 3/2 { a' [ (
		fs,
		cs' ) ] }
		\tuplet 3/2 { gs' [ (
		gs,
		cs ) ] }
		
		%-------- Bar RH-022v2 --------%
		% Remove dashes from crescendo text
		\override DynamicTextSpanner.style = #'none
		\crescTextCresc		
		\tuplet 3/2 { cs' [ (
		cs,
		a' ) ] }
		\tuplet 3/2 { b [ (
		d, \<
		a' ) ] }
		\tuplet 3/2 { d [ (
		d,
		gs ) ] }
		\tuplet 3/2 { cs [ (
		cs,
		a' \! ) ] }
		
		%-------- Bar RH-023v2 --------%
		\tuplet 3/2 { fs' [ (
		a,
		ds ) ] }
		\tuplet 3/2 { e [ (
		gs,
		cs ) ] }
		\tuplet 3/2 { d [ (
		es,
		b' ) ] }
		\tuplet 3/2 { cs [ (
		fs,
		a ) ] }
		
		%-------- Bar RH-024v2 --------%
		\tuplet 3/2 { d [ (
		es,
		b' ) ] }
		\tuplet 3/2 { cs [ (
		fs,
		a ) ] }
		\tuplet 3/2 { b [ (
		d,
		gs ) ] }
		\tuplet 3/2 { a [ (
		cs,
		fs ) ] }
		
		%-------- Bar RH-025v2 --------%
		\dimTextDim
		\tuplet 3/2 { a [ (
		bs,
		fs' \> ) ] }
		\tuplet 3/2 { gs [ (
		cs,
		e ) ] }
		\tuplet 3/2 { fs [ (
		a,
		ds ) ] }
		\tuplet 3/2 { e [ (
		gs,
		cs \! ) ] }
		
		%-------- Bar RH-026v2 --------%
		\tuplet 3/2 { d [ (
		a
		cs ) ] }
		\tuplet 3/2 { a' \< [ (
		a,
		cs ) ] }
		\tuplet 3/2 { ds [ (
		as
		cs ) ] }
		\tuplet 3/2 { as' [ (
		as,
		cs \! ) ] }
		
		%-------- Bar RH-027v2 --------%
		\tuplet 3/2 { e [ (
		b
		ds ) ] }
		\tuplet 3/2 { b' [ (
		b,
		ds ) ] }
		\tuplet 3/2 { bs' [ (
		bs,
		fs' ) ] }
		\tuplet 3/2 { cs' [ (
		cs,
		e ) ] }
		
		%-------- Bar RH-028v2 --------%
		\tuplet 3/2 { e' [ (
		gs,
		cs ) ] }
		\tuplet 3/2 { ds [ (
		fss,
		cs' ) ] }
		\tuplet 3/2 { d [ (
		fs,
		bs ) ] }
		\tuplet 3/2 { cs [ (
		e,
		gs ) ] }
		
		%-------- Bar RH-029v2 --------%
		\tuplet 3/2 { e' [ (
		gs,
		cs ) ] }
		\tuplet 3/2 { ds [ (
		fss,
		cs' ) ] }
		\tuplet 3/2 { d [ (
		fs,
		bs ) ] }
		\tuplet 3/2 { cs [ (
		e,
		gs ) ] }
		
		%-------- Bar RH-030v2 --------%
		\tuplet 3/2 { gs' [ (
		gs,
		cs ) ] }
		\tuplet 3/2 { fs [ (
		a,
		cs ) ] }
		\tuplet 3/2 { a' [ (
		fs,
		cs' ) ] }
		\tuplet 3/2 { gs' [ (
		gs,
		cs ) ] }
		
		%-------- Bar RH-031v2 --------%
		\tuplet 3/2 { fs [ (
		fs,
		cs' ) ] }
		\tuplet 3/2 { fs [ (
		fs,
		cs' ) ] }
		\tuplet 3/2 { e [ (
		fs,
		bs ) ] }
		\tuplet 3/2 { e [ (
		e,
		cs' ) ] }
		
		%-------- Bar RH-032v2 --------%
		\tuplet 3/2 { e [ (
		gs,
		cs ) ] }
		\tuplet 3/2 { ds [ (
		fss,
		cs' ) ] }
		\tuplet 3/2 { d [ (
		fs,
		bs ) ] }
		\tuplet 3/2 { cs [ (
		e,
		gs ) ] }
		
		%-------- Bar RH-033v2 --------%
		\tuplet 3/2 { e' [ (
		gs,
		cs ) ] }
		\tuplet 3/2 { ds [ (
		fss,
		cs' ) ] }
		\tuplet 3/2 { d [ (
		fs,
		bs ) ] }
		\tuplet 3/2 { cs [ (
		e,
		gs ) ] }
		
		%-------- Bar RH-034v2 --------%
		\tuplet 3/2 { gs' [ (
		gs,
		cs ) ] }
		\tuplet 3/2 { fs [ (
		a,
		cs ) ] }
		\tuplet 3/2 { a' [ (
		fs,
		cs' ) ] }
		\tuplet 3/2 { gs' [ (
		gs,
		cs ) ] }
		
		%-------- Bar RH-035v2 --------%
		\tuplet 3/2 { b' [ (
		d,
		gs ) ] }
		\tuplet 3/2 { a [ (
		cs,
		fs ) ] }
		\tuplet 3/2 { d' [ (
		es,
		b' ) ] }
		\tuplet 3/2 { cs [ (
		fs,
		a ) ] }
		
		%-------- Bar RH-036v2 --------%
		\tuplet 3/2 { fs' [ (
		a,
		ds ) ] }
		\tuplet 3/2 { e [ (
		gs,
		cs ) ] }
		
		\oneVoice
		\revert Stem.direction
		\set subdivideBeams = ##t
		\once \override DynamicText.extra-offset = #'(-2 . -1.5)
		\override Voice.Beam.auto-knee-gap = #12
		
		\tuplet 3/2 {
			<< bs8->\fff [ fs' a >>
			\change Staff = downA
			<< ds,, fs >>
			\change Staff = upA
			<< bs-> fs' a ] >> }
		\tuplet 3/2 {
			\change Staff = downA
			<< e,-> [ gs >>
			\change Staff = upA
			<< cs e gs >>
			\change Staff = downA
			<< e, gs ] >> }
			
		%-------- Bar RH-037v2 --------%
		\tuplet 3/2 {
			\change Staff = upA
			<< a-> [ ds fs >>
			\change Staff = downA
			<< bs,, ds >>
			\change Staff = upA
			<< a' ds fs ] >> }
		\tuplet 3/2 {
			\change Staff = downA
			<< cs,-> [ e >>
			\change Staff = upA
			<< gs cs e >>
			\change Staff = downA
			<< cs, e ] >> }
		\tuplet 3/2 {
			\change Staff = upA
			<< es-> [ b' d >>
			\change Staff = downA
			<< gs,, b >>
			\change Staff = upA
			<< es b' d ] >> }
		\tuplet 3/2 {
			\change Staff = downA
			<< a,-> [ cs >>
			\change Staff = upA
			<< fs a cs >>
			\change Staff = downA
			<< a, cs ] >> }
			
		%-------- Bar RH-038v2 --------%
		\tuplet 3/2 {
			\change Staff = upA
			<< d-> [ gs b >>
			\change Staff = downA
			<< es,, gs >>
			\change Staff = upA
			<< d' gs b ] >> }
		\tuplet 3/2 {
			\change Staff = downA
			<< fs,-> [ a >>
			\change Staff = upA
			<< cs fs a >>
			\change Staff = downA
			<< fs, a ] >> }
		\tuplet 3/2 {
			\change Staff = upA
			<< bs-> [ fs' a >>
			\change Staff = downA
			<< ds,, fs >>
			\change Staff = upA
			<< bs fs' a ] >> }
		\tuplet 3/2 {
			\change Staff = downA
			<< e,-> [ gs >>
			\change Staff = upA
			<< cs e gs >>
			\change Staff = downA
			<< e, gs ] >> }
		
		%-------- Bar RH-039v2 --------%
		\tuplet 3/2 {
			\change Staff = upA
			<< a-> [ ds fs >>
			\change Staff = downA
			<< bs,, ds >>
			\change Staff = upA
			<< a' ds fs ] >> }
		\tuplet 3/2 {
			\change Staff = downA
			<< cs,-> [ e >>
			\change Staff = upA
			<< gs cs e >>
			\change Staff = downA
			<< cs, e ] >> }
		\tuplet 3/2 {
			\change Staff = upA
			<< es-> [ b' d >>
			\change Staff = downA
			<< gs,, b >>
			\change Staff = upA
			<< es b' d ] >> }
		\tuplet 3/2 {
			\change Staff = downA
			<< a,-> [ cs >>
			\change Staff = upA
			<< fs a cs >>
			\change Staff = downA
			<< a, cs ] >> }
			
		%-------- Bar RH-040v2 --------%
		\tuplet 3/2 {
			\change Staff = upA
			<< d-> [ gs b >>
			\change Staff = downA
			<< es,, gs >>
			\change Staff = upA
			<< d' gs b ] >> }
		\tuplet 3/2 {
			\change Staff = downA
			<< fs,-> [ a >>
			\change Staff = upA
			<< cs fs a >>
			\change Staff = downA
			<< fs, a ] >> }
		\tuplet 3/2 {
			\change Staff = upA
			<< bs-> [ fs' a >>
			\change Staff = downA
			<< ds,, fs >>
			\change Staff = upA
			<< bs fs' a ] >> }
		\tuplet 3/2 {
			\change Staff = downA
			<< e,-> [ gs >>
			\change Staff = upA
			<< cs e gs >>
			\change Staff = downA
			<< e, gs ] >> }
		
		%-------- Bar RH-041v2 --------%
		\tuplet 3/2 {
			\change Staff = upA
			<< a-> [ ds fs >>
			\change Staff = downA
			<< bs,, ds >>
			\change Staff = upA
			<< a' ds fs ] >> }
		\tuplet 3/2 {
			\change Staff = downA
			<< cs,-> [ e >>
			\change Staff = upA
			<< gs cs e >>
			\change Staff = downA
			<< cs, e ] >> }
		\tuplet 3/2 {
			\change Staff = upA
			<< bs'-> [ fs' a >>
			\change Staff = downA
			<< ds,, fs >>
			\change Staff = upA
			<< bs fs' a ] >> }
		\tuplet 3/2 {
			\change Staff = downA
			<< e,-> [ gs >>
			\change Staff = upA
			<< cs e gs >>
			\change Staff = downA
			<< e, gs ] >> }
		
		%-------- Bar RH-042v2 --------%
		\tuplet 3/2 {
			\change Staff = upA
			<< a-> [ ds fs >>
			\change Staff = downA
			<< bs,, ds >>
			\change Staff = upA
			<< a' ds fs ] >> }
		\tuplet 3/2 {
			\change Staff = downA
			<< cs,-> [ e >>
			\change Staff = upA
			<< gs cs e >>
			\change Staff = downA
			<< cs, e ] >> }
		\tuplet 3/2 {
			\change Staff = upA
			<< a-> [ ds fs >>
			\change Staff = downA
			<< bs,, ds >>
			\change Staff = upA
			<< a' ds fs ] >> }
		\tuplet 3/2 {
			\change Staff = downA
			<< cs,-> [ e >>
			\change Staff = upA
			<< gs cs e >>
			\change Staff = downA
			<< cs, e ] >> }
		
		%-------- Bar RH-043v2 --------%
		\tuplet 3/2 {
			\change Staff = upA
			<< a-> [ ds fs >>
			\change Staff = downA
			<< bs,, ds >>
			\change Staff = upA
			<< a' ds fs ] >> }
		\tuplet 3/2 {
			\change Staff = downA
			<< cs,-> [ e >>
			\change Staff = upA
			<< gs cs e >>
			\change Staff = downA
			<< cs, e ] >> }
		\tuplet 3/2 {
			\change Staff = upA
			<< a-> [ ds fs >>
			\change Staff = downA
			<< bs,, ds >>
			\change Staff = upA
			<< a' ds fs ] >> }
		\tuplet 3/2 {
			\change Staff = downA
			<< cs,-> [ e >>
			\change Staff = upA
			<< gs cs e >>
			\change Staff = downA
			<< cs, e ] >> }
		
		%-------- Bar RH-044v2 --------%
		\change Staff = upA
		\voiceOne
		r2
		< fs' cs' fs > \ff
		
		%-------- Bar RH-045v2 --------%
		r2
		< gs bs gs' > \ff
		
		\break
		%-------- Bar RH-046v2 --------%
		\oneVoice
		r8^\markup {\bold {Tempo primo} }
		< cs e gs cs >->_\markup {\dynamic fff \italic {pesante}}
		< e gs b e >->
		< ds fss as ds >->
		r8
		< d fs bs d >->
		r8
		< bs ds fs bs >->
		
		%-------- Bar RH-047v2 --------%
		r8
		< cs e gs cs >->_\markup {\dynamic sffff}
		< e gs b e >->
		< ds fss as ds >->
		r8
		< d fs bs d >->
		r8
		< bs ds fs bs >->
		
		%-------- Bar RH-048v2 --------%
		r8
		< cs e gs cs >->
		< gs' cs gs' >->
		< fs cs' fs >->
		r8
		< e fs a e' >->
		r8
		< ds fs a ds >->
		
		%-------- Bar RH-049v2 --------%
		r8
		< e gs b e >->
		< b' e b' >->
		< a e' a >->
		r8
		< gs as cs gs' >->
		r8
		< fss as cs fss >->
		
		%-------- Bar RH-050v2 --------%
		r8
		< gs b ds gs >->_\markup {\dynamic sffff}
		< a cs e a >->
		< fs a cs fs >->
		< gs b ds gs >->
		< e gs b e >->
		< fs a cs fs >->
		< ds fs a ds >->
		
		%-------- Bar RH-051v2 --------%
		< e gs b e >->
		< e gs b e >->
		< fs a cs fs >->
		< ds fs a ds >->
		< e gs b e >->
		< cs e gs cs >->
		< ds fs a ds >->
		< bs ds fs bs >->
		
		%-------- Bar RH-052v2 --------%
		< cs e gs cs >-> \arpeggio
		< cs e gs cs >->
		< e gs b e >->
		< ds fss as ds >->
		r8
		< d fs bs d >->
		r8
		< bs ds fs bs >->
		
		%-------- Bar RH-053v2 --------%
		r8
		< cs e gs cs >->
		< gs' cs gs' >->
		< fs cs' fs >->
		r8
		< e fs bs e >->
		r8
		< bs ds fs bs >->
		
		%-------- Bar RH-054v2 --------%
		< cs e gs cs >-> \arpeggio
		< cs, gs' cs >- \> [
		< d a' d >--
		< b fs' b >-- \! ]
		< cs gs' cs >--
		< a e' a >--
		< b fs' b >--
		< gs d' gs >--
		
		% Bar RH-055v2 %
		< a fs' a >--
		< a fs' a >-- [
		< cs fs cs' >--
		< b fs' b >-- ]
		r8 \>
		< a e' a >--
		r8
		< gs fs' gs >-- \!
		
		%-------- Bar RH-056v2 --------%
		r4
		< cs a' cs >2.-- \mf
		
		%-------- Bar RH-057v2 --------%
		r4
		< cs gs' cs >2.--
		
		%-------- Bar RH-058v2 --------%
		r4
		< cs a' cs >2.--
		
		%-------- Bar RH-059v2 --------%
		r4
		< cs fs as cs >2.--
		
		%-------- Bar RH-060v2 --------%
		r4
		< cs fs a cs >2.--
		
		%-------- Bar RH-061v2 --------%
		r2
		< cs e gs cs >4.-- (
		< gs' cs e gs >8 )
		
		%-------- Bar RH-061v2 --------%
		< gs cs e gs >1 \fermata \ppp
		\bar "|."
	}
	>>	
	}
}




lefthand = { \relative c' {
	\clef bass
	\key cs \minor
	\time 4/4
	
	%-------- Bar LH-001 --------%
	\partial 2
	< a,, a' >4->
	< gs gs' >->
	
	%-------- Bar LH-002 --------%
	< cs, cs' >1-> ~
	
	%-------- Bar LH-003 --------%
	<< { \voiceOne
		\octaveCheck c,,
		%-------- Bar LH-003v1 --------%
		< cs cs' >2
		< a' a' >4_.
		< gs gs' >_.
		
		%-------- Bar LH-004v1 --------%
		< cs, cs' >2
		< a' a' >4_.
		< gs gs' >_.
		
		%-------- Bar LH-005v1 --------%
		< cs, cs' >2
		< c' c' >4_.
		< b b' >_.
		
		%-------- Bar LH-006v1 --------%
		< e, e' >2
		< e' e' >4_.
		< ds ds' >_.
		
		%-------- Bar LH-007v1 --------%
		\voiceTwo
		< gs, gs' >1~
		
		%-------- Bar LH-008v1 --------%
		< gs gs' >8
		r8
		r4
		r2
		
		%-------- Bar LH-009v1 --------%
		r2
		< a a' >4_.
		< gs gs' >_.
		
		%-------- Bar LH-010v1 --------%
		< cs, cs' >2
		< a' a' >4_.
		< gs' gs, >_.
		
		%-------- Bar LH-011v1 --------%
		< cs, cs' >1 ~
		
		%-------- Bar LH-012v1 --------%
		< cs cs' >8
		r8
		r4
		< fss fss' >-.
		< gs gs' >-.
		
		%-------- Bar LH-013v1 --------%
		< cs, cs' >2
		< a a' >4 (
		< gs gs' > )
		
		%-------- Bar LH-014v1 --------%
		< cs, cs' >2
		< a' a' >4 (
		< gs gs' > )
		
		%-------- Bar LH-015v1 --------%
		< cs, cs' >1
		
		%-------- Bar LH-016v1 --------%
		cs'1
		
		%-------- Bar LH-017v1 --------%
		\oneVoice
		e4 (
		ds )
		fs (
		e )
		
		%-------- Bar LH-018v1 --------%
		a (
		ds, )
		gs (
		cs,~
		
		%-------- Bar LH-019v1 --------%
		% \voiceTwo should actually be placed before this bar but the slur
		% won't render correctly unless both notes are in the same voice
		cs1 )
		\voiceTwo
		
		%-------- Bar LH-020v1 --------%
		cs
		
		%-------- Bar LH-021v1 --------%
		\oneVoice
		e4 (
		ds )
		fs (
		e )
		
		%-------- Bar LH-022v1 --------%
		\voiceTwo
		a1
		
		%-------- Bar LH-023v1 --------%
		\oneVoice
		< bs' ds >4 (
		< cs e > )
		< gs b > (
		< a cs > ) 
		
		%-------- Bar LH-024v1 --------%
		< gs b > (
		< a cs > )
		< es gs > (
		< fs a > )
		
		%-------- Bar LH-025v1 --------%
		< ds fs > (
		< e gs > )
		< bs ds > (
		< cs e > )
		
		%-------- Bar LH-026v1 --------%
		\voiceTwo
		fs,2->
		fss->
		
		%-------- Bar LH-027v1 --------%
		gs2. (
		cs4 )
		
		%-------- Bar LH-028v1 --------%
		cs,1 \arpeggio
		
		%-------- Bar LH-029v1 --------%
		cs \arpeggio
		
		%-------- Bar LH-030v1 --------%
		\voiceOne
		cs''
		
		%-------- Bar LH-031v1 --------%
		\oneVoice
		a4 (
		ds, )
		gs (
		cs, )
		
		%-------- Bar LH-032v1 --------%
		\voiceTwo
		cs,1 \arpeggio
		
		%-------- Bar LH-033v1 --------%
		cs
		
		%-------- Bar LH-034v1 --------%
		\voiceOne
		cs''
		
		\clef treble
		%-------- Bar LH-035v1 --------%
		\oneVoice
		< es gs >4-> (
		< fs a > )
		< gs ( b >-> (
		< a cs > )
		
		%-------- Bar LH-036v1 --------%
		< bs ds >4-> (
		< cs e > )
		s2
		
		%-------- Bar LH-037v1 to LH-043v1--------%
		s1 s1 \clef bass s1 s1 s1 s1 s1
		
		%-------- Bar LH-044v1 --------%
		\voiceTwo
		< a,,, a' >1
		
		%-------- Bar LH-045v1 --------%
		< gs gs' >
		
		\break
		%-------- Bar LH-046v1 --------%
		\change Staff = downB
		\oneVoice
		< cs, e gs cs >2->
		< a' a' >4->
		< gs gs' >->
		
		%-------- Bar LH-047v1 --------%
		< cs, e gs cs >2->
		< a' a' >4->
		< gs gs' >->
		
		%-------- Bar LH-048v1 --------%
		< cs, e gs cs >2->
		< c' c' >4->
		< b b' >->
		
		%-------- Bar LH-049v1 --------%
		< e, gs b e >2->
		< e' e' >4->
		< ds ds' >->
		
		%-------- Bar LH-050v1 --------%
		< gs, b ds gs >1-> ~
		
		%-------- Bar LH-051v1 --------%
		< gs b ds gs >8->
		r8
		r4
		r2
		
		%-------- Bar LH-052v1 --------%
		< cs, cs' >2-> \arpeggio
		< a' a' >4->
		< gs gs' >->
		
		%-------- Bar LH-053v1 --------%
		< cs, e gs cs >2->
		< a' a' >4->
		< gs gs' >->
		
		%-------- Bar LH-054v1 --------%
		< cs, cs' >2-> ~ \arpeggio
		< cs cs' >8->
		r8
		r4
		
		%-------- Bar LH-055v1 --------%
		r2
		< fss fss' >4--
		< gs gs' >--
		
		%-------- Bar LH-056v1 to LH-062v1--------%
		< cs, cs' >1--
		< cs cs' >1--
		< cs cs' >1--
		< cs cs' >1--
		< cs cs' >1--
		< cs cs' >1-- ~
		< cs cs' >1 \fermata
		\bar "|."
		
	} \new Voice { \voiceTwo
		\octaveCheck c,,
		%-------- Bar LH-003v2 --------%
		r8
		< e'' gs e' >^-
		< gs b gs' >^-
		< fss as fss' >^-
		r8
		< fs bs fs' >^-
		r8
		< ds fs ds' >^-
		
		%-------- Bar LH-004v2 --------%
		r8
		< e gs e' >^-
		< gs b gs' >^-
		< fss as fss' >^-
		r8
		< fs bs fs' >^-
		r8
		< ds fs ds' >^-
		
		%-------- Bar LH-005v2 --------%
		r8
		< e gs e' >^-
		< b' cs b' >^-
		< a cs a' >^-
		r8
		< fs a fs' >^-
		r8
		< fs a fs' >^-
		
		%-------- Bar LH-006v2 --------%
		r8
		< gs b gs' >^-
		< ds' e ds' >^-
		< cs e cs' >^-
		r8
		< as cs as' >^-
		r8
		< as cs as' >^-
		
		%-------- Bar LH-007v2 --------%
		\voiceOne
		r8
		< b ds b' >^- (
		< cs e cs' >^- )
		< a cs a' >^- (
		< b ds b' > )
		< gs b gs' >^- (
		< a cs a' > )
		< fs a fs' >^- (
		
		%-------- Bar LH-008v2 --------%
		< gs b gs' >^- )
		< gs b gs' >^- (
		< a cs a' >^- )
		< fs a fs' >^- (
		< gs b gs' >^- )
		< e gs e' >^- (
		< fs a fs' >^- )
		< ds fs ds' >^- (
		
		%-------- Bar LH-009v2 --------%
		< e gs e' >^- )
		< e gs e' >^- [
		< gs b gs' >^-
		< fss as fss' >^- ]
		r8
		< fs bs fs' >^-
		r8
		< ds fs ds' >^-
		
		%-------- Bar LH-010v2 --------%
		r8
		< e gs e' >^-
		< b' cs b' >^-
		< a cs a' >^-
		r8
		< fs bs fs' >^-
		r8
		< ds fs ds' >^-
		
		%-------- Bar LH-011v2 --------%
		r8
		< e gs e' >^-
		< fs a fs' >^-
		< d fs d' >^-
		< e gs e' >^-
		< cs e cs' >^-
		< d fs d' >^-
		< b fs' b >^-
		
		%-------- Bar LH-012v2 --------%
		< cs fs cs' >^-
		< cs fs cs' >^- [
		< e fs e' >^-
		< d fs d' >^- ]
		r8
		< e cs' >^-
		r8
		< ds fs bs >^-
		
		%-------- Bar LH-013v2 --------%
		r8
		gs,-- [
		b--
		as-- ]
		s2
		
		%-------- Bar LH-014v2 --------%
		r8
		gs-- [
		b--
		as-- ]
		s2
		
		%-------- Bar LH-015v2 --------%
		r4
		as-- (
		a--
		gs-- )
		
		%-------- Bar LH-016v2 --------%
		b-- (
		as--
		a--
		gs-- )
		
		%-------- Bar LH-017v2 --------%
		s1
		
		%-------- Bar LH-018v2 --------%
		s1
		
		%-------- Bar LH-019v2 --------%
		b4-- (
		as--
		a--
		gs-- )
		
		%-------- Bar LH-020v2 --------%
		b-- (
		as--
		a--
		gs-- )
		
		%-------- Bar LH-021v2 --------%
		s1
		
		%-------- Bar LH-022v2 --------%
		e'4-- (
		fs-- )
		f-- (
		e-- )
		
		%-------- Bar LH-023v2 --------%
		s1
		
		%-------- Bar LH-024v2 --------%
		s1
		
		%-------- Bar LH-025v2 --------%
		s1
		
		%-------- Bar LH-026v2 --------%
		r4
		d
		r4
		ds
		
		%-------- Bar LH-027v2 --------%
		r4
		e (
		ds
		cs )
		
		%-------- Bar LH-028v2 --------%
		b'4-- ( \arpeggio
		as--
		a--
		gs-- )
		
		%-------- Bar LH-029v2 --------%
		b-- ( \arpeggio
		as--
		a--
		gs-- )
		
		%-------- Bar LH-030v2 --------%
		\voiceTwo
		e (
		ds )
		fs (
		e )
		
		%-------- Bar LH-031v2 --------%
		s1
		
		%-------- Bar LH-032v2 --------%
		\voiceOne
		b'4-- ( \arpeggio
		as--
		a--
		gs-- )
		
		%-------- Bar LH-033v2 --------%
		b-- (
		as--
		a--
		gs-- )
		
		%-------- Bar LH-034v2 --------%
		\voiceTwo
		e (
		ds )
		fs (
		e )
		
		%-------- Bar LH-035v2 --------%
		s1
		
		%-------- Bar LH-036v2 --------%
		s1
		
		%-------- Bar LH-037v2 to LH-043v2--------%
		s1 s1 \clef bass s1 s1 s1 s1 s1
		
		%-------- Bar LH-044v2 --------%
		\voiceOne
		r2
		< cs fs cs' >
		
		%-------- Bar LH-045v2 --------%
		r2
		< fs bs ds fs >
		
		\break
		%-------- Bar LH-046v2 --------%
		\oneVoice
		\octaveCheck c
		r8
		< e gs cs e >->_\markup {\dynamic fff \italic {pesante}}
		< gs b e gs >->
		< fss as ds fss >->
		r8
		< fs bs d fs >->
		r8
		< ds fs bs ds >->
		
		%-------- Bar LH-047v2 --------%
		r8
		< e gs cs e >_\markup {\dynamic sffff}
		< gs b e gs >
		< fss as ds fss >
		r8
		< fs bs d fs >
		r8
		< ds fs bs ds >
		
		%-------- Bar LH-048v2 --------%
		r8
		< e gs cs e >
		< b' cs gs' b >
		< a cs fs a >
		r8
		< fs a e' fs >
		r8
		< fs a ds fs >
		
		\clef treble
		%-------- Bar LH-049v2 --------%
		r8
		< gs b e gs >
		< ds' e b' ds >
		< cs e a cs >
		r8
		< as cs gs' as >
		r8
		< as cs fss as >
		
		%-------- Bar LH-050v2 --------%
		r8
		< b ds gs b >_\markup {\dynamic sffff}
		< cs e a cs >
		< a cs fs a >
		< b ds gs b >
		< gs b e gs >
		< a cs fs a >
		< fs a ds fs >
		
		%-------- Bar LH-051v2 --------%
		< gs b e gs >->
		< gs b e gs >->
		< a cs fs a >->
		< fs a ds fs >->
		< gs b e gs >->
		< e gs cs e >->
		< fs a ds fs >->
		< ds fs bs ds >->
		
		\clef bass
		%-------- Bar LH-052v2 --------%
		< e gs cs e >-> \arpeggio
		< e gs cs e >->
		< gs b e gs >->
		< fss as ds fss >->
		r8
		< fs bs d fs >->
		r8
		< ds fs bs ds >->
		
		%-------- Bar LH-053v2 --------%
		r8
		< e gs cs e >->
		< b' cs gs' b >->
		< a cs fs a >->
		r8
		< fs bs e fs >->
		r8
		< ds fs bs ds >->
		
		%-------- Bar LH-054v2 --------%
		\override DynamicTextSpanner.style = #'none
		\dimTextDim
		< e gs cs e >->
		
		< e gs e' >-- \> [
		< fs a fs' >--
		< d \! fs d' >-- ]
		
		< e gs e' >--
		< cs e cs' >--
		< d fs d' >--
		< b fs' b >--
		
		%-------- Bar LH-055v2 --------%
		< cs fs cs' >--
		
		< cs fs cs' >-- [
		< e fs e' >--
		< d fs d' >-- ]
		
		r8 \>
		< e cs' >--
		r8
		< ds fs bs >-- \!
		
		%-------- Bar LH-056v2 --------%
		r4
		< e a e' >2.-- \mf
		
		%-------- Bar LH-057v2 --------%
		r4
		< e as e' >2.--
		
		%-------- Bar LH-058v2 --------%
		r4
		< e g e' >2.--
		
		%-------- Bar LH-059v2 --------%
		r4
		< e fs as e' >2.--
		
		%-------- Bar LH-060v2 --------%
		r4
		< ds fs a ds >2.--
		
		%-------- Bar LH-061v2 --------%
		r2
		< gs, cs e gs >4.-- (
		< e' gs cs e >8 )
		
		%-------- Bar LH-061v2 --------%
		< e gs cs e >1 \ppp \fermata
		\bar "|."
		
	}
	>>
	}
}



\header {
	title = "Prelude in C# minor"
	dedication = "to Mr. Anton Arensky"
	composer = \markup { "Sergei Rachmaninoff" \small "(1873-1943)" }
	opus = "Op. 3, No. 2"
	
	mutopiatitle = "Prelude in C# minor"
	mutopiacomposer = "RachmaninoffS"
	mutopiaopus = "Op. 3, No. 2"
	mutopiainstrument = "Piano"
	date = "1892"
	source = "Bosworth & Co. 1896; Universal Edition 1910"
	style = "Romantic"
	license = "Creative Commons Attribution-ShareAlike 4.0"
	maintainer = "Petro Kostandy"
	maintainerEmail = "pmkost-at-gmail-dot-com"
	
	lastupdated = \newdate
	license = "Creative Commons Attribution-ShareAlike 4.0"

	% Footer, tagline, and copyright blocks are included here for reference
	% and spacing purposes only.  There's no need to change these.
	% These blocks will be overridden by Mutopia during the publishing process.
 footer = "Mutopia-2015/07/09-2033"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2015 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " " \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
	}

% To show only the last few bars, helps during editing	
% showLastLength = R1*5

\score {
	
	
	% Four staves are initialized; "upB" and "downB" are kept hidden until they are used in 
	\new PianoStaff  <<
		
		\set PianoStaff.connectArpeggios = ##t
		\set PianoStaff.midiInstrument = "acoustic grand"
		\override PianoStaff.Arpeggio.stencil = #ly:arpeggio::brew-chord-bracket
		
		\new Staff = "upA"
		\with { \override  VerticalAxisGroup.remove-empty = ##f } {
			\righthand
		}
		
		
		
		
		
		\new Staff = "upB"
		\with { \override  VerticalAxisGroup.remove-first = ##t }
			\relative c' {
			
				\clef treble
				\key cs \minor
				\time 4/4
				
				\partial 2
				s2
				s1 s1 s1 s1 s1 s1 s1 s1 s1 s1
				s1 s1 s1 s1 s1 s1 s1 s1 s1 s1
				s1 s1 s1 s1 s1 s1 s1 s1 s1 s1
				s1 s1 s1 s1 s1 s1 s1 s1 s1 s1
				s1 s1 s1 s1
				
				s1
		}
		
		
		
		
		
		\new Staff = "downA"
			\with { \override  VerticalAxisGroup.remove-empty = ##f } {
				\lefthand
		}                    
		
		
		
		
		
		\new Staff = "downB"
		\with { \override  VerticalAxisGroup.remove-first = ##t } {
			\relative c' {
			
				\clef bass
				\key cs \minor
				\time 4/4
				
				\partial 2
				s2
				s1 s1 s1 s1 s1 s1 s1 s1 s1 s1
				s1 s1 s1 s1 s1 s1 s1 s1 s1 s1
				s1 s1 s1 s1 s1 s1 s1 s1 s1 s1
				s1 s1 s1 s1 s1 s1 s1 s1 s1 s1
				s1 s1 s1 s1
				
				s1
		} }
	>>
	
	\layout {
		\context {
			% Remove the two empty staves (upB and downB) until they are used
			\PianoStaff
			\RemoveEmptyStaves
			\remove "Keep_alive_together_engraver"
		}
	}
	
	\midi { }
}
