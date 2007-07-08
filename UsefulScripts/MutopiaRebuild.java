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
 *        i - Interactive (prompt before doing things)
 */

import java.io.*;
import java.util.*;

public class MutopiaRebuild
{
   private boolean interactive = false;
   private String mutopiaFtpBase;
   private List<String> updateList = new ArrayList<String>();

   public static void main(String[] args)
   {
      int returnCode = 0;
      MutopiaRebuild rebuild = new MutopiaRebuild();
      rebuild.mutopiaFtpBase = System.getenv("MUTOPIA_BASE");
      if (rebuild.mutopiaFtpBase == null)
      {
         throw new RuntimeException("MUTOPIA_BASE not set");
      }

      rebuild.mutopiaFtpBase = rebuild.mutopiaFtpBase + "/ftp";

      if ((args.length > 0) && (args[0].equals("-i")))
      {
         rebuild.interactive = true;
      }

      rebuild.searchForNewFiles();

      System.exit(returnCode);
   }

   private void searchForNewFiles()
   {
      System.out.println("Searching for new/updated .ly files");
      findNextLyFile(new File(mutopiaFtpBase));
   }

   private void findNextLyFile(File startDirectory)
   {
      if (!startDirectory.isDirectory())
      {
         throw new RuntimeException("File passed when directory expected");
      }

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
            
            if (rdfFile.exists())
            {
               // Compare timestamps
               if (file.lastModified() > rdfFile.lastModified())
               {
                  recompileLyFile(file);
               }
            }
            else
            {
               // TODO: Multiple .ly files
            }
         }
      }
   }

   private void recompileLyFile(File lyFile)
   {
      try
      {
         if (interactive)
         {
            System.out.println("Recompile file " + lyFile.getName() + "? (Y/N)");
            Scanner scanner = new Scanner(System.in);
            if (!scanner.next().equalsIgnoreCase("Y"))
               return;
         }

         System.out.println("Recompiling file " + lyFile.getName());
      
         // Clean directory
         Process cleanProcess = Runtime.getRuntime().exec("mutopia-clean.sh", null, lyFile.getParentFile());
         try { cleanProcess.waitFor(); } catch (Exception ex) {}

         // TODO: Check file headers

         // Compile file
         Process compileProcess = Runtime.getRuntime().exec("mutopia-compile.sh " + lyFile.getName(), null, lyFile.getParentFile());
         try { compileProcess.waitFor(); } catch (Exception ex) {}

         // TODO: Check for successful exit

         // Create zip files (if necessary) and RDF
         Process combineProcess = Runtime.getRuntime().exec("mutopia-combine.sh " + lyFile.getName().substring(0, lyFile.getName().length() - 3), null, lyFile.getParentFile());
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
