\include "english.ly"
\include "defs.ly"

\include "1global.ly"
\include "1violino2.ly"

\include "2global.ly"
\include "2violino2.ly"

\include "3global.ly"
\include "3violino2.ly"

\include "4global.ly"
\include "4violino2.ly"

\include "5global.ly"
\include "5violino2.ly"

\include "6global.ly"
\include "6violino2.ly"

\include "7global.ly"
\include "7violino2.ly"

\paper {
	raggedbottom = ##f
	raggedlastbottom = ##f
}

\header {
	instrument = "Violino II"
}

mImyspacing = {
}

mIImyspacing = {
}

mIIImyspacing = {
}

mIVmyspacing = {
}

mVmyspacing = {
}

mVImyspacing = {
}

mVIImyspacing = {
}

\book {
	\header { \include "header.ly" }
	
	\score {
		\new Staff <<
			\set Score.skipBars = ##t
			\parameters
			\mIbarlines
			\mImyspacing
			\new Voice { \mIViolinTwo }
		>>
	}

	\score {
		\new Staff <<
			\set Score.skipBars = ##t
			\parameters
			\mIIbarlines
			\mIImyspacing
			\new Voice { \mIIViolinTwo }
		>>
	}

	\score {
		\new Staff <<
			\set Score.skipBars = ##t
			\parameters
			\mIIIbarlines
			\mIIImyspacing
			\new Voice { \mIIIViolinTwo }
		>>
	}

	\score {
		\new Staff <<
			\set Score.skipBars = ##t
			\parameters
			\mIVbarlines
			\mIVmyspacing
			\new Voice { \mIVViolinTwo }
		>>
	}

	\score {
		\new Staff <<
			\set Score.skipBars = ##t
			\parameters
			\mVbarlines
			\mVmyspacing
			\new Voice { \mVViolinTwo }
		>>
	}
	
	\score {
		\new Staff <<
			\set Score.skipBars = ##t
			\parameters
			\mVIbarlines
			\mVImyspacing
			\new Voice { \mVIViolinTwo }
		>>
	}
	
	\score {
		\new Staff <<
			\set Score.skipBars = ##t
			\parameters
			\mVIIbarlines
			\mVIIkeychange
			\new Voice { \mVIIViolinTwo }
		>>
	}
}
