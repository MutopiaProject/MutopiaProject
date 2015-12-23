import java.util.*;

/**
 * LicenseMap is a singleton for creating license strings for mutopia pieces.
 * <p>
 * This is implemented such that the map is built on instantiation of
 * the singleton object. Copyright strings are generated when
 * requested from the {@link #getCopyright(String) getCopyright} method.</p>
 * <pre><code>
 *   if (LicenseMap.getInstance().hasCopyright("Public Domain")) {
 *       String cc = LicenseMap.getInstance().getCopyright("Public Domain");
 *       // ... do something with public domain copyright string
 *   }
 * </code></pre>
 * <p><strong>Background:</strong> MutopiaProject pieces have a
 * copyright line at the bottom of the first page of music. This is
 * achieved in LilyPond with a string of formatted text assigned to
 * the <code>copyright</code> field in the header of the piece. The
 * #LicenseMap code attemps to make copyright edits easier by
 * providing a formatted template that is processed into the more
 * complicated copyright string.</p>
 *
 * <p>Privately within this class are defined string arrays
 * (<code>ccPre</code>, <code>ccMid</code>, <code>ccPost</code>) to
 * hold the templates for creating a copyright string targeted for the
 * headers of MutopiaProject pieces. This is typically used at the
 * bottom of the first page of sheet music. These are formatted to be
 * relatively easy to read and edit but are processed by the fetch
 * routine so that leading indent space is trimmed off.
 * <ul>
 * <li><code>ccPre</code> contains the boilerplate intro, the stacked
 *       Mutopia/Project and vertical bar followed by a beginning line
 *       of text that remains the same with all licenses.
 *
 *       Public domain licenses do not have a copyright date, all
 *       others have a date inserted here.</li>
 *
 * <li><code>ccMid</code> contains the middle section that finished
 *       the maintiner info and Mutopia ID. There may be slightly
 *       different wording following this section if public domain.</li>
 *
 * <li><code>ccPost</code> is the final closing section with the
 *       copyright and closing elements of the markup.</li>
 * </ul>
 *
 * @author Glen Larsen
 */
public class LicenseMap implements CCGenerator {

    /** The map of copyright tags to their LilyPond strings.
     *
     *  The key is the copyright tag, the value is the formatted
     *  LilyPond string that will be inserted at the appropriate place
     *  in the copyright text. Note the trailing blank on the value
     *  string.
     */
    private Map<String, String> ccMap;

    /** private ctor, created once by LicenseMapHolder */
    private LicenseMap() {
        ccMap = new HashMap<String, String>();
        ccMap.put("Public Domain",
                  "#\"http://creativecommons.org/licenses/publicdomain\"" +
                  " \"public domain \"");
        ccMap.put("Creative Commons Attribution 3.0",
                  "#\"http://creativecommons.org/licenses/by/3.0/\"" +
                  " \"Creative Commons Attribution 3.0 (Unported) License \"");
        ccMap.put("Creative Commons Attribution-ShareAlike 3.0",
                  "#\"http://creativecommons.org/licenses/by-sa/3.0/\"" +
                  " \"Creative Commons Attribution ShareAlike 3.0 (Unported) License \"");
        ccMap.put("Creative Commons Attribution 4.0",
                  "#\"http://creativecommons.org/licenses/by/4.0/\"" +
                  " \"Creative Commons Attribution 4.0 International License \"");
        ccMap.put("Creative Commons Attribution-ShareAlike 4.0",
                  "#\"http://creativecommons.org/licenses/by-sa/4.0/\"" +
                  " \"Creative Commons Attribution ShareAlike 4.0 International License \"");
        ccMap.put("Creative Commons Public Domain Dedication 1.0",
                  "#\"http://creativecommons.org/publicdomain/zero/1.0/\"" +
                  " \"Creative Commons Public Domain Dedication 1.0 (CC0 Universal) \"");
        ccMap.put("Creative Commons Public Domain Mark 1.0",
                  "#\"http://creativecommons.org/publicdomain/mark/1.0/\"" +
                  " \"Creative Commons Public Domain Mark 1.0 \"");
    }

    /** The license templates.
     *
     */
    private static String[] ccPre = new String[] {
        "copyright = \\markup {",
        "  \\override #'(font-name . \"DejaVu Sans, Bold\") ",
        "  \\override #'(baseline-skip . 0) ",
        "  \\right-column {",
        "  \\with-url #\"http://www.MutopiaProject.org\" {",
        "    \\abs-fontsize #9  \"Mutopia \" \\concat {",
        "      \\abs-fontsize #12 \\with-color #white \\char ##x01C0 ",
        "      \\abs-fontsize #9 \"Project \"",
        "      }",
        "    }",
        "  }",
        "  \\override #'(font-name . \"DejaVu Sans, Bold\") ",
        "  \\override #'(baseline-skip . 0 ) ",
        "  \\center-column {",
        "    \\abs-fontsize #11.9 \\with-color #grey \\bold {",
        "    \\char ##x01C0 \\char ##x01C0 ",
        "    }",
        "  }",
        "  \\override #'(font-name . \"DejaVu Sans,sans-serif\") ",
        "  \\override #'(baseline-skip . 0) ",
        "  \\column { \\abs-fontsize #8 \\concat {",
        "    \"Typeset using \" \\with-url #\"http://www.lilypond.org\" \"LilyPond \" "
    };
    private static String[] ccMid = new String[] {
        "    \"by \" \\maintainer \" \" \\char ##x2014 \" \" \\footer}",
        "    \\concat {",
        "      \\concat {",
        "        \\abs-fontsize #8 { "
    };
    private static String[] ccPost = new String[] {
        "        \\char ##x2014 \" free to distribute, modify, and perform\" ",
        "        }",
        "      }",
        "      \\abs-fontsize #13 \\with-color #white \\char ##x01C0 ",
        "    }",
        "  }",
        "}"
    };


    /** Return a set of copyright keys from the internal map.
     *  @return a set of strings representing all available keys
     */
    public Set<String> keySet() {
        return ccMap.keySet();
    }


    /** Check for the existence of a copyright tag/key in the map.
     *  @param cc - the copyright key to lookup
     *  @return true if the given copyright key exists.
     *  @see CCGenerator
     */
    @Override
    public boolean hasCopyright(String cc) {
        return ccMap.containsKey(cc);
    }


    /** Get the copyright line for insertion into LilyPond footer.
     *  @param cc - the copyright key to lookup
     *  @return the copyright string text
     *  @throws RuntimeException if the license tag is not found
     *  @see CCGenerator
     */
    @Override
    public String getCopyright(String cc) throws RuntimeException {
        if (!ccMap.containsKey(cc)) {
            throw new RuntimeException("No such license found: " + cc);
        }
        StringBuilder sb = new StringBuilder();
        for (String s : ccPre) {
            sb.append(s.replaceAll("^\\s+", ""));
        }

        // If the tag doesn't contain the word "Public" it gets a date.
        if (cc.indexOf("Public") == -1) {
            String year = String.valueOf(Calendar.getInstance().get(Calendar.YEAR));
            sb.append("\\char ##x00A9");
            sb.append(" \" " + year + " \" ");
        }

        for (String s : ccMid) {
            sb.append(s.replaceAll("^\\s+", ""));
        }
        if (cc.equals("Public Domain")) {
            sb.append("\"Placed in the \" ");
            sb.append("\\with-url ");
            sb.append(ccMap.get(cc));
            sb.append(" \"by the typesetter \" ");
        }
        else {
            sb.append("\\with-url ");
            sb.append(ccMap.get(cc));
        }
        for (String s : ccPost) {
            sb.append(s.replaceAll("^\\s+", ""));
        }
        return sb.toString();
    }

    /** A private container for the singleton object. */
    private static class LicenseMapHolder {
        private static final LicenseMap INSTANCE = new LicenseMap();
    }

   /** Access to the singleton
     * @return The single LicenseMap instance
     */
    public static LicenseMap getInstance() {
        return LicenseMapHolder.INSTANCE;
    }
}
