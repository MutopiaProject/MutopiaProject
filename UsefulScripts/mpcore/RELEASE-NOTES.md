# Release Notes for mpcore

## About mpcore

mpcore is a restructuring of the currently existing java library and
application for facilitating publication of Mutopia Project scores.

## Goal Summary

The primary intent of this restructuring is to,

 1. Transition from a single application to a library + application.
 2. Transition library to a java jar file (this implies a deeper file
    hierarchy.)
 3. Further refactor the library to make it friendly to other
    applications.
 4. Bring aboard a logging facility to allow user control of output.
 5. Use modern industry standard tools for the build.
 6. Add a suite of unit tests.

## Building

Use [gradle](http://gradle.org/) to achieve the build you want. This
is done in a command terminal with the current working folder set to
the top of the `mpcore` hierarchy.

### Quick Start

The first of the next two commands will build both library and
application, then install all jar files and a convenient run-time
script in an install folder. The second command shows an execution of
the script run directly from the bin folder.

```
$ ./gradlew installApp
$ ./Mutopia/build/Mutopia/install/Mutopia/bin/Mutopia
```

### Other build details

If you are not familiar with gradle, please take a look at the
`build.gradle` file. This defines what can be built and the
dependencies needed when building. Any dependency required by the
build will be pulled in as needed. A `gradlew` script is provided that
will do the necessary gradle self-install to get you started.

In the `build.gradle` script you will find,

 * An `allprojects` configuration to set what will be used for all projects.
 * `core` project definition (library).
 * `Mutopia` project definition (application, depends on core).

```
$ ./gradlew installApp # build and install everything
$ ./gradlew build # builds everything, no install
$ ./gradlew :core:build # build only the core project
$ ./gradlew tasks # to see a list of tasks in build.gradle
```

All build artifacts from gradle can be found under the project's build
folder (`./core/build` for the core project, etc.). You can also
specify tasks directly to a project

The `installApp` task is actually directed to the `Mutopia` project
since `core` is a library. The result of `installApp` is a complete
build followed by a move of all the necessary artifacts to an
installation folder. If this command is successful you should be able
to run as,

```
$ ./Mutopia/build/Mutopia/install/Mutopia/bin/Mutopia
$ # or on windows,
$ ./Mutopia/build/Mutopia/install/Mutopia/bin/Mutopia.bat
```

This command script will setup the classpath and execute the main
Mutopia application routine from the jar file. If you move the script,
you have to move and maintain the relative library hierarchy as well.
Gradle provides a distribution task if you are interested in doing
that. Try,

```
$ gradle distTar
$ # or if you prefer zip
$ gradle distZip
```

## Releases
### 0.1 (mutopia-core-0.1.jar & Mutopia.jar)

 * Application has been split into 2 hierarchies:

   * `core/src/main/java/mutopia/core` for the main `mutopia-core`
   library. Java package name is `mutopia.core`

   * `Mutopia/src/main` for the main application.

 * Minimal changes to the original, no tests at this release.

 * [Gradle](http://gradle.org) is the tool used for builds, which will
   support a standard build structure. A gradle wrapper file
   (`gradlew`) is included in the release.
