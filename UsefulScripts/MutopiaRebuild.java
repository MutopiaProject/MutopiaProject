/*
 * Filename:         MutopiaRebuild.java
 * Original author:  Chris Sawer
 * Subversion:       $Revision$
 * Last changed:     $Date$
 *
 * Description:
 *   Program to rebuild (parts of) the Mutopia archive where necessary.
 *
 * Options:
 *   $1 - Switch(es) to use, comprising:
 *        n - Non-interactive (don't prompt before doing things)
 */

import java.io.*;
import java.util.*;

public class MutopiaRebuild
{
   private boolean interactive = true;
   private String mutopiaFtpBase;
   private List<String> updateList = new ArrayList<String>();

   public static void main(String[] args)
   {
      int returnCode = 0;
      MutopiaRebuild rebuild = new MutopiaRebuild();
      /*rebuild.mutopiaFtpBase = System.getenv("MUTOPIA_BASE");
      if (rebuild.mutopiaFtpBase == null)
      {
         throw new RuntimeException("MUTOPIA_BASE not set");
      }

      rebuild.mutopiaFtpBase = rebuild.mutopiaFtpBase + "/ftp";*/

      if ((args.length > 0) && (args[0].equals("-n")))
      {
         rebuild.interactive = false;
      }

      rebuild.searchForNewFiles();

      System.exit(returnCode);
   }

   private void searchForNewFiles()
   {
      // Search for .ly files with outdated or missing RDF file from current dir
      System.out.println("Searching for new/updated .ly files");
      findNextLyFile(new File("."));
   }

   private void findNextLyFile(File startDirectory)
   {
      if (!startDirectory.isDirectory())
      {
         throw new RuntimeException("File passed when directory expected");
      }

      // Check to see if directory ends in -lys, ie. is multiple .ly file container
      if (startDirectory.getName().endsWith("-lys"))
      {
	 recompileLyDirectory(startDirectory);
      }

      // Search recursively for all .ly files
      File[] fileList = startDirectory.listFiles();
      for (File file : fileList)
      {
         if (file.isDirectory())
         {
            findNextLyFile(file);
         }
         else if (file.getName().endsWith(".ly"))
         {
            // Search for matching .rdf file
            String filePath = file.getAbsolutePath();
            File rdfFile = new File(filePath.substring(0, filePath.length() - 3) + ".rdf");

            // Recompile .ly file if .rdf if missing or out of date
            if (!rdfFile.exists() || (file.lastModified() > rdfFile.lastModified()))
            {
               // TODO: Check for compile flags and warn if not present
               recompileLyFile(file, startDirectory);
            }
         }
      }
   }

   private void recompileLyDirectory(File lyDirectory)
   {
      // TODO
   }

   private void recompileLyFile(File lyFile, File workingDirectory)
   {
      try
      {
         if (interactive)
         {
            System.out.println("Recompile file " + lyFile.getName() + "? (Y/N)");
            // TODO: ? Cat line to see if date has been updated ?
            Scanner scanner = new Scanner(System.in);
            if (!scanner.next().equalsIgnoreCase("Y"))
               return;
         }

         System.out.println("Recompiling file " + lyFile.getName());

         // TODO: Check file headers using java Mutopia -c

         // Clean directory
         Process cleanProcess = Runtime.getRuntime().exec("mutopia-clean.sh", null, workingDirectory);
         try { cleanProcess.waitFor(); } catch (Exception ex) {}

         // Compile file
         Process compileProcess = Runtime.getRuntime().exec("mutopia-compile.sh " + lyFile.getName(), null, workingDirectory);
         try { compileProcess.waitFor(); } catch (Exception ex) {}

         // TODO: Check for successful exit

         // Create zip files (if necessary) and RDF
         Process combineProcess = Runtime.getRuntime().exec("mutopia-combine.sh " + lyFile.getName().substring(0, lyFile.getName().length() - 3), null, workingDirectory);
         try { combineProcess.waitFor(); } catch (Exception ex) {}

         System.out.println("Finished recompiling file " + lyFile.getName());
         // TODO: Was it successful?
      }
      catch (IOException ex)
      {
         System.err.println("Caught IOException: " + ex);
      }
   }

   private void listDirectory(File directory)
   {
      // TODO
   }
}
