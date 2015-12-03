/*
 * Filename:         MutopiaMaps.java
 * Original author:  Chris Sawer
 *
 * Description:
 *   Class to set up licence, composer and style maps.
 */

import java.io.*;
import java.util.*;
import java.nio.file.FileSystems;
import java.nio.file.FileSystem;
import java.nio.file.Path;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;

/** Container class for access to various maps.
 *
 *  Holds mappings for copyright licenses, composers, and styles.
 *
 * @author Chris Sawer
 */
public class MutopiaMaps
{
    /** Very old license map.
     * <p>Can be deprecated when the archive no longer has LilyPond
     * versions less than 2.11.57
     * </p>
     */
   public static Map<String, String> licenceMapVOld = new HashMap<String, String>();

    /** Old license map
     * <p>Can be deprecated when the archive no longer has LilyPond
     * versions less than 2.14.
     * </p>
     */
   public static Map<String, String> licenceMapOld = new HashMap<String, String>();

    /** New license map */
   public static Map<String, String> licenceMapNew = new HashMap<String, String>();

    /** Map of composers.
     *
     *  The key is the MutopiaProject composer tag; the value is
     *  the description associated with the author. This information
     *  is read from the <code>datafiles/composers.dat</code> file.
     */
    public static Map<String, String> composerMap;

    /** Map of valid styles. */
    public static Map<String, String> styleMap;

   static
   {
      initialiseLicenceMap();

      // FIXME: Should just throw the exception.
      try {
          composerMap = readDataFile("composers.dat");
          styleMap = readDataFile("styles.dat");
      }
      catch (IOException ioe) {
          System.err.println(ioe.getMessage());
      }
   }

   private static void initialiseLicenceMap()
   {
      Calendar now = Calendar.getInstance();

      licenceMapVOld.put("Public Domain",
                     "tagline = \\markup { \\override #'(box-padding . 1.0) \\override #'(baseline-skip . 2.7) \\box \\center-align { \\small \\line { " +
                     "Sheet music from \\with-url #\"http://www.MutopiaProject.org\" \\line { \\teeny www. \\hspace #-1.0 MutopiaProject \\hspace #-1.0 " +
                     "\\teeny .org \\hspace #0.5 } \u2022 \\hspace #0.5 \\italic Free to download, with the \\italic freedom to distribute, modify and perform. " +
                     "} \\line { \\small \\line { Typeset using \\with-url #\"http://www.LilyPond.org\" \\line { \\teeny www. \\hspace #-1.0 LilyPond " +
                     "\\hspace #-1.0 \\teeny .org } by \\maintainer \\hspace #-1.0 . \\hspace #0.5 Reference: \\footer } } \\line { \\teeny \\line { This sheet " +
                     "music has been placed in the public domain by the typesetter, for details see: \\hspace #-0.5 \\with-url " +
                     "#\"http://creativecommons.org/licenses/publicdomain\" http://creativecommons.org/licenses/publicdomain } } } }");
      licenceMapVOld.put("Creative Commons Attribution 3.0",
                     "tagline = \\markup { \\override #'(box-padding . 1.0) \\override #'(baseline-skip . 2.7) \\box \\center-align { \\small \\line { " +
                     "Sheet music from \\with-url #\"http://www.MutopiaProject.org\" \\line { \\teeny www. \\hspace #-1.0 MutopiaProject \\hspace #-1.0 " +
                     "\\teeny .org \\hspace #0.5 } \u2022 \\hspace #0.5 \\italic Free to download, with the \\italic freedom to distribute, modify and perform. " +
                     "} \\line { \\small \\line { Typeset using \\with-url #\"http://www.LilyPond.org\" \\line { \\teeny www. \\hspace #-1.0 LilyPond " +
                     "\\hspace #-1.0 \\teeny .org } by \\maintainer \\hspace #-1.0 . \\hspace #0.5 Copyright \u00A9 " + now.get(Calendar.YEAR) + ". \\hspace " +
                     "#0.5 Reference: \\footer } } \\line { \\teeny \\line { Licensed under the Creative Commons Attribution 3.0 (Unported) License, for details see: " +
                     "\\hspace #-0.5 \\with-url #\"http://creativecommons.org/licenses/by/3.0\" http://creativecommons.org/licenses/by/3.0 } } } }");
      licenceMapVOld.put("Creative Commons Attribution-ShareAlike 3.0",
                     "tagline = \\markup { \\override #'(box-padding . 1.0) \\override #'(baseline-skip . 2.7) \\box \\center-align { \\small \\line { " +
                     "Sheet music from \\with-url #\"http://www.MutopiaProject.org\" \\line { \\teeny www. \\hspace #-1.0 MutopiaProject \\hspace #-1.0 " +
                     "\\teeny .org \\hspace #0.5 } \u2022 \\hspace #0.5 \\italic Free to download, with the \\italic freedom to distribute, modify and perform. " +
                     "} \\line { \\small \\line { Typeset using \\with-url #\"http://www.LilyPond.org\" \\line { \\teeny www. \\hspace #-1.0 LilyPond " +
                     "\\hspace #-1.0 \\teeny .org } by \\maintainer \\hspace #-1.0 . \\hspace #0.5 Copyright \u00A9 " + now.get(Calendar.YEAR) + ". \\hspace " +
                     "#0.5 Reference: \\footer } } \\line { \\teeny \\line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details " +
                     "see: \\hspace #-0.5 \\with-url #\"http://creativecommons.org/licenses/by-sa/3.0\" http://creativecommons.org/licenses/by-sa/3.0 } } } }");

      licenceMapOld.put("Public Domain",
                     "tagline = \\markup { \\override #'(box-padding . 1.0) \\override #'(baseline-skip . 2.7) \\box \\center-column { \\small \\line { " +
                     "Sheet music from \\with-url #\"http://www.MutopiaProject.org\" \\line { \\teeny www. \\hspace #-1.0 MutopiaProject \\hspace #-1.0 " +
                     "\\teeny .org \\hspace #0.5 } \u2022 \\hspace #0.5 \\italic Free to download, with the \\italic freedom to distribute, modify and perform. " +
                     "} \\line { \\small \\line { Typeset using \\with-url #\"http://www.LilyPond.org\" \\line { \\teeny www. \\hspace #-1.0 LilyPond " +
                     "\\hspace #-1.0 \\teeny .org } by \\maintainer \\hspace #-1.0 . \\hspace #0.5 Reference: \\footer } } \\line { \\teeny \\line { This sheet " +
                     "music has been placed in the public domain by the typesetter, for details see: \\hspace #-0.5 \\with-url " +
                     "#\"http://creativecommons.org/licenses/publicdomain\" http://creativecommons.org/licenses/publicdomain } } } }");
      licenceMapOld.put("Creative Commons Attribution 3.0",
                     "tagline = \\markup { \\override #'(box-padding . 1.0) \\override #'(baseline-skip . 2.7) \\box \\center-column { \\small \\line { " +
                     "Sheet music from \\with-url #\"http://www.MutopiaProject.org\" \\line { \\teeny www. \\hspace #-1.0 MutopiaProject \\hspace #-1.0 " +
                     "\\teeny .org \\hspace #0.5 } \u2022 \\hspace #0.5 \\italic Free to download, with the \\italic freedom to distribute, modify and perform. " +
                     "} \\line { \\small \\line { Typeset using \\with-url #\"http://www.LilyPond.org\" \\line { \\teeny www. \\hspace #-1.0 LilyPond " +
                     "\\hspace #-1.0 \\teeny .org } by \\maintainer \\hspace #-1.0 . \\hspace #0.5 Copyright \u00A9 " + now.get(Calendar.YEAR) + ". \\hspace " +
                     "#0.5 Reference: \\footer } } \\line { \\teeny \\line { Licensed under the Creative Commons Attribution 3.0 (Unported) License, for details see: " +
                     "\\hspace #-0.5 \\with-url #\"http://creativecommons.org/licenses/by/3.0\" http://creativecommons.org/licenses/by/3.0 } } } }");
      licenceMapOld.put("Creative Commons Attribution-ShareAlike 3.0",
                     "tagline = \\markup { \\override #'(box-padding . 1.0) \\override #'(baseline-skip . 2.7) \\box \\center-column { \\small \\line { " +
                     "Sheet music from \\with-url #\"http://www.MutopiaProject.org\" \\line { \\teeny www. \\hspace #-1.0 MutopiaProject \\hspace #-1.0 " +
                     "\\teeny .org \\hspace #0.5 } \u2022 \\hspace #0.5 \\italic Free to download, with the \\italic freedom to distribute, modify and perform. " +
                     "} \\line { \\small \\line { Typeset using \\with-url #\"http://www.LilyPond.org\" \\line { \\teeny www. \\hspace #-1.0 LilyPond " +
                     "\\hspace #-1.0 \\teeny .org } by \\maintainer \\hspace #-1.0 . \\hspace #0.5 Copyright \u00A9 " + now.get(Calendar.YEAR) + ". \\hspace " +
                     "#0.5 Reference: \\footer } } \\line { \\teeny \\line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details " +
                     "see: \\hspace #-0.5 \\with-url #\"http://creativecommons.org/licenses/by-sa/3.0\" http://creativecommons.org/licenses/by-sa/3.0 } } } }");

      // The new map is populated by using copyrights generated by
      // the LicenseMap singleton object. Once old and very old
      // licenses are deprecated, the new map can be replaced with a
      // simple call to LicenseMap.getCopyright().
      LicenseMap lm = LicenseMap.getInstance();
      for (String k: lm.keySet()) {
          licenceMapNew.put(k, lm.getCopyright(k));
      }
   }

    /** Read a pair file into a map.
     *  Pair files are simply files that contain data in pairs,
     *  typical of a flattened hash map. This routine generically
     *  reads the file and returns a map of the key:value pairs.
     *
     *  @param inPath                a Path pointing to the actual file
     *  @return                      Map containing hashed
     *                               representation of file
     *  @throws RuntimeException     on file format error, probably a
     *                               mal-formed file. Files should
     *                               contain an even number of lines.
     *  @throws IOException          on read failure
     */
    public static Map<String, String> readPairFile(Path inPath)
        throws RuntimeException, IOException
    {
        Map<String, String> pairMap = new HashMap<String, String>();

        BufferedReader dataFile = Files.newBufferedReader(inPath, StandardCharsets.UTF_8);

        // Read key/value pairs
        String key = dataFile.readLine();
        String value = dataFile.readLine();
        while (key != null) { // key == null at end of file
            // Check value and put into map
            if (value != null) {
                pairMap.put(key, value);
            }
            else {
                throw new RuntimeException("Inconsistency in data file: " + inPath);
            }

            key = dataFile.readLine();
            value = dataFile.readLine();
        }

        dataFile.close();
        return pairMap;
    }

    /** Reads a Mutopia datafile into a map.
     *  Mutopia data files are simply pair files. This method builds a
     *  full path to the location of the Mutopia datasets by
     *  translating the MUTOPIA_BASE environment variable.
     *
     *  @param datFile               the name of the input file
     *  @return Map                  containing hashed representation of file
     *  @throws RuntimeException     on file format error
     *  @throws IOException          from readPairFile(...)
     */
    public static Map<String, String> readDataFile(String datFile)
        throws RuntimeException, IOException
    {
        // Get directory
        String mutopiaDir = System.getenv("MUTOPIA_BASE");
        if (mutopiaDir == null) {
            throw new RuntimeException("MUTOPIA_BASE not set");
        }

        Path path = FileSystems.getDefault().getPath(mutopiaDir, "datafiles", datFile);
        return MutopiaMaps.readPairFile(path);
    }

}
