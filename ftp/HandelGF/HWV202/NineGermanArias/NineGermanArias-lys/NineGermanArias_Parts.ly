\version "2.13.3"
%British Library RM 20f 13
\header {
	title = "Deutsche Arien"
	composer = "G.F.Händel"
	tagline = ##f
}
mystaffsize = #18
\include "style.ily"
\include "common.ily"
\paper{
	ragged-last-bottom = ##t
	indent=#0
#(define page-breaking ly:page-turn-breaking)
}
\layout{	
	\context { \Score
%	\override VerticalAlignment #'max-stretch = #ly:align-interface::calc-max-stretch
	}
}
global={\key es \major 
	\set Score.skipBars = ##t
}
\bookpart {
\header { 
	title = "Künft'ger Zeiten eitler Kummer"
	subtitle = "HWV 202" 
	instrument = "Violino" 
	}
\score {
%\transpose es d
<<
	\new Staff 
	<< 
		\new Voice {\include "./hwv_202/layout.ily"}
		\new Voice {\global \clef treble \include "./hwv_202/n_v1.ily"}
	>>
>>
\layout {
	\context { \Score
	\override SpacingSpanner  #'common-shortest-duration = #(ly:make-moment 1 4)
	}
}
}
}
global={\key es \major 
	\set Score.skipBars = ##t
}
\bookpart {
\header { 
	title = "Das zitternde Glänzen der spielenden Wellen"
	subtitle = "HWV 203" 
	instrument = "Violino" 
	}
\paper{
%system-count = #12
}
\score {
%\transpose es d
<<
	\new Staff 
	<< 
		\new Voice {\include "./hwv_203/layout.ily"}
		\new Voice {\global \clef treble \include "./hwv_203/n_v1.ily"}
	>>
>>
\layout {
	\context { \Score
	\override SpacingSpanner  #'common-shortest-duration = #(ly:make-moment 1 4)
	}
}
}
}
global={\key b \major 
	\set Score.skipBars = ##t
}
\bookpart {
\header { 
	title = "Süßer Blumen Ambraflocken"
	subtitle = "HWV 204" 
	instrument = "Violino" 
	}
\paper{
%system-count = #12
}
\score {
%\transpose b g
<<
	\new Staff 
	<< 
		\new Voice {\include "./hwv_204/layout.ily"}
		\new Voice {\global \clef treble \include "./hwv_204/n_v1.ily"}
	>>
>>
\layout {
	\context { \Score
	\override SpacingSpanner  #'common-shortest-duration = #(ly:make-moment 1 8)
	}
}
}
}
global={\key f \major 
	\set Score.skipBars = ##t
}
\bookpart {
\header { 
	title = "Süße Stille, sanfte Quelle"
	subtitle = "HWV 205" 
	instrument = "Violino" 
	}
\paper{
%system-count = #12
}
\score {
%\transpose f es
<<
	\new Staff 
	<< 
		\new Voice {\include "./hwv_205/layout.ily"}
		\new Voice {\global \clef treble \include "./hwv_205/n_v1.ily"}
	>>
>>
\layout {
	\context { \Score
%	\override SpacingSpanner  #'common-shortest-duration = #(ly:make-moment 1 4)
	}
}
}
}
global={\key a \minor 
	\set Score.skipBars = ##t
}
\bookpart {
\header { 
	title = "Singe Seele, Gott zum Preise"
	subtitle = "HWV 206" 
	instrument = "Violino" 
	}
\paper{
%system-count = #12
}
\score {
%\transpose a g
<<
	\new Staff 
	<< 
		\new Voice {\include "./hwv_206/layout.ily"}
		\new Voice {\global \clef treble \include "./hwv_206/n_v1.ily"}
	>>
>>
\layout {
	\context { \Score
	\override SpacingSpanner  #'common-shortest-duration = #(ly:make-moment 1 8)
	}
}
}
}
global={\key b \major 
	\set Score.skipBars = ##t
}
\bookpart {
\header { 
	title = "Meine Seele hört in Sehen"
	subtitle = "HWV 207" 
	instrument = "Violino" 
	}
\paper{
%system-count = #12
}
\score {
%\transpose b g
<<
	\new Staff 
	<< 
		\new Voice {\include "./hwv_207/layout.ily"}
		\new Voice {\global \clef treble \include "./hwv_207/n_v1.ily"}
	>>
>>
\layout {
	\context { \Score
	\override SpacingSpanner  #'common-shortest-duration = #(ly:make-moment 1 8)
	}
}
}
}
global={\key b \major 
	\set Score.skipBars = ##t
}
\bookpart {
\header { 
	title = "Die ihr aus dunklen Grüften"
	subtitle = "HWV 208" 
	instrument = "Violino" 
	}
\paper{
%system-count = #12
}
\score {
%\transpose b g
<<
	\new Staff 
	<< 
		\new Voice {\include "./hwv_208/layout.ily"}
		\new Voice {\global \clef treble \include "./hwv_208/n_v1.ily"}
	>>
>>
\layout {
	\context { \Score
	\override SpacingSpanner  #'common-shortest-duration = #(ly:make-moment 1 8)
	}
}
}
}
global={\key d \minor 
	\set Score.skipBars = ##t
}
\bookpart {
\header { 
	title = "In den angenehmen Büschen"
	subtitle = "HWV 209" 
	instrument = "Violino" 
	}
\paper{
%system-count = #12
}
\score {
%\transpose d h,
<<
	\new Staff 
	<< 
		\new Voice {\include "./hwv_209/layout.ily"}
		\new Voice {\global \clef treble \include "./hwv_209/n_v1.ily"}
	>>
>>
\layout {
	\context { \Score
%	\override SpacingSpanner  #'common-shortest-duration = #(ly:make-moment 1 8)
	}
}
}
}
global={\key a \major 
	\set Score.skipBars = ##t
}
\bookpart {
\header { 
	title = "Flammende Rose, Zierde der Erden"
	subtitle = "HWV 210" 
	instrument = "Violino" 
	}
\paper{
%system-count = #12
}
\score {
%\transpose a f
<<
	\new Staff 
	<< 
		\new Voice {\include "./hwv_210/layout.ily"}
		\new Voice {\global \clef treble \include "./hwv_210/n_v1.ily"}
	>>
>>
\layout {
	\context { \Score
	\override SpacingSpanner  #'common-shortest-duration = #(ly:make-moment 1 8)
	}
}
}
}

%Basso
global={\key es \major 
	\set Score.skipBars = ##t
}
\bookpart {
\header { 
	title = "Künft'ger Zeiten eitler Kummer"
	subtitle = "HWV 202" 
	instrument = "Basso" 
	}
\paper{
%system-count = #12
}
\score {
%\transpose es d
<<
	\new Staff 
	<< 
		\new Voice {\include "./hwv_202/layout.ily"}
		\new Voice {\global \clef bass \include "./hwv_202/n_bc.ily"}
	>>
>>
\layout {
	\context { \Score
	\override SpacingSpanner  #'common-shortest-duration = #(ly:make-moment 1 4)
	}
}
}
}
global={\key es \major 
	\set Score.skipBars = ##t
}
\bookpart {
\header { 
	title = "Das zitternde Glänzen der spielenden Wellen"
	subtitle = "HWV 203" 
	instrument = "Basso" 
	}
\paper{
%system-count = #12
}
\score {
%\transpose es d
<<
	\new Staff 
	<< 
		\new Voice {\include "./hwv_203/layout.ily"}
		\new Voice {\global \clef bass \include "./hwv_203/n_bc.ily"}
	>>
>>
\layout {
	\context { \Score
	\override SpacingSpanner  #'common-shortest-duration = #(ly:make-moment 1 4)
	}
}
}
}
global={\key b \major 
	\set Score.skipBars = ##t
}
\bookpart {
\header { 
	title = "Süßer Blumen Ambraflocken"
	subtitle = "HWV 204" 
	instrument = "Basso" 
	}
\paper{
%system-count = #12
}
\score {
%\transpose b g
<<
	\new Staff 
	<< 
		\new Voice {\include "./hwv_204/layout.ily"}
		\new Voice {\global \clef bass \include "./hwv_204/n_bc.ily"}
	>>
>>
\layout {
	\context { \Score
	\override SpacingSpanner  #'common-shortest-duration = #(ly:make-moment 1 8)
	}
}
}
}
global={\key f \major 
	\set Score.skipBars = ##t
}
\bookpart {
\header { 
	title = "Süße Stille, sanfte Quelle"
	subtitle = "HWV 205" 
	instrument = "Basso" 
	}
\paper{
%system-count = #12
}
\score {
%\transpose f es
<<
	\new Staff 
	<< 
		\new Voice {\include "./hwv_205/layout.ily"}
		\new Voice {\global \clef bass \include "./hwv_205/n_bc.ily"}
	>>
>>
\layout {
	\context { \Score
%	\override SpacingSpanner  #'common-shortest-duration = #(ly:make-moment 1 4)
	}
}
}
}
global={\key a \minor 
	\set Score.skipBars = ##t
}
\bookpart {
\header { 
	title = "Singe Seele, Gott zum Preise"
	subtitle = "HWV 206" 
	instrument = "Basso" 
	}
\paper{
%system-count = #12
}
\score {
%\transpose a g
<<
	\new Staff 
	<< 
		\new Voice {\include "./hwv_206/layout.ily"}
		\new Voice {\global \clef bass \include "./hwv_206/n_bc.ily"}
	>>
>>
\layout {
	\context { \Score
	\override SpacingSpanner  #'common-shortest-duration = #(ly:make-moment 1 8)
	}
}
}
}
global={\key b \major 
	\set Score.skipBars = ##t
}
\bookpart {
\header { 
	title = "Meine Seele hört in Sehen"
	subtitle = "HWV 207" 
	instrument = "Basso" 
	}
\paper{
%system-count = #12
}
\score {
%\transpose b g
<<
	\new Staff 
	<< 
		\new Voice {\include "./hwv_207/layout.ily"}
		\new Voice {\global \clef bass \include "./hwv_207/n_bc.ily"}
	>>
>>
\layout {
	\context { \Score
	\override SpacingSpanner  #'common-shortest-duration = #(ly:make-moment 1 8)
	}
}
}
}
global={\key b \major 
	\set Score.skipBars = ##t
}
\bookpart {
\header { 
	title = "Die ihr aus dunklen Grüften"
	subtitle = "HWV 208" 
	instrument = "Basso" 
	}
\paper{
%system-count = #12
}
\score {
%\transpose b g
<<
	\new Staff 
	<< 
		\new Voice {\include "./hwv_208/layout.ily"}
		\new Voice {\global \clef bass \include "./hwv_208/n_bc.ily"}
	>>
>>
\layout {
	\context { \Score
	\override SpacingSpanner  #'common-shortest-duration = #(ly:make-moment 1 8)
	}
}
}
}
global={\key d \minor 
	\set Score.skipBars = ##t
}
\bookpart {
\header { 
	title = "In den angenehmen Büschen"
	subtitle = "HWV 209" 
	instrument = "Basso" 
	}
\paper{
%system-count = #12
}
\score {
%\transpose d h,
<<
	\new Staff 
	<< 
		\new Voice {\include "./hwv_209/layout.ily"}
		\new Voice {\global \clef bass \include "./hwv_209/n_bc.ily"}
	>>
>>
\layout {
	\context { \Score
%	\override SpacingSpanner  #'common-shortest-duration = #(ly:make-moment 1 8)
	}
}
}
}
global={\key a \major 
	\set Score.skipBars = ##t
}
\bookpart {
\header { 
	title = "Flammende Rose, Zierde der Erden"
	subtitle = "HWV 210" 
	instrument = "Basso" 
	}
\paper{
%system-count = #12
}
\score {
%\transpose a f
<<
	\new Staff 
	<< 
		\new Voice {\include "./hwv_210/layout.ily"}
		\new Voice {\global \clef bass \include "./hwv_210/n_bc.ily"}
	>>
>>
\layout {
	\context { \Score
	\override SpacingSpanner  #'common-shortest-duration = #(ly:make-moment 1 8)
	}
}
}
}
