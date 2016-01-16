��    O      �                s        �     �     �     �  /   �  	   �     �     �     �               '     0  /   8      h  m   �     �  /   w  U   �  T   �  +   R  u   ~  6   �  4   +	     `	  *   x	  z   �	  �   
  (   �
  �   �
  R   �  n     \   u  M   �  '     �   H  ;     �   X  �   �  �   �          )  :   D       }   �      ^     �   y  j   9  M   �  I   �  L   <  L   �  `  �  �   7  }   .  8   �  _   �  7   E  U   }  /   �  O     (   S  *   |  �   �  P  �  W   �  0   I  |   z  J   �     B  8   �  M   �  �   I  �   �  �   �   �   �!  �  l"  s   $     �$     �$     �$     �$  /   �$  	   �$     �$      %     %     %     %%     1%     :%  /   B%      r%  m   �%     &  /   �&  U   �&  T   '  +   \'  u   �'  6   �'  4   5(     j(  *   �(  z   �(  �   ()  (   �)  �   �)  R   �*  n   +  \   +  M   �+  '  *,  �   R-  ;   &.  �   b.  �   �.  �   �/     0     30  :   N0     �0  }   �0    1  ^   $2  �   �2  j   C3  M   �3  I   �3  L   F4  L   �4  `  �4  �   A6  }   87  8   �7  _   �7  7   O8  U   �8  /   �8  O   9  (   ]9  *   �9  �   �9  P  �:  W   �;  0   S<  |   �<  J   =     L=  8   �=  M   >  �   S>  �   ?  �   �?  �   �@   (Useful for debugging only.)  Run the Python debugger, :mod:`pdb`, if an unhandled exception occurs while building. **dirhtml** **doctest** **gettext** **html** **htmlhelp**, **qthelp**, **devhelp**, **epub** **latex** **linkcheck** **man** **pseudoxml** **singlehtml** **texinfo** **text** **xml** Additional options for :program:`sphinx-build`. Build Docutils-native XML files. Build HTML files with additional information for building a documentation collection in one of these formats. Build HTML pages, but with a single directory per document.  Makes for prettier URLs (no ``.html``) if served from a webserver. Build HTML pages.  This is the default builder. Build LaTeX sources that can be compiled to a PDF document using :program:`pdflatex`. Build Texinfo files that can be processed into Info files using :program:`makeinfo`. Build a single HTML with the whole content. Build compact pretty-printed "pseudo-XML" files displaying the internal structure of the intermediate document trees. Build gettext-style message catalogs (``.pot`` files). Build manual pages in groff format for UNIX systems. Build plain text files. Check the integrity of all external links. Define the tag *tag*.  This is relevant for :rst:dir:`only` directives that only include their content if this tag is set. Display the full traceback when an unhandled exception occurs.  Otherwise, only a summary is displayed and the traceback information is saved to a file for further analysis. Display usage summary or Sphinx version. Distribute the build over *N* processes in parallel, to make building on multiprocessor machines more effective.  Note that not all parts and not all builders of Sphinx can be parallelized. Do not emit colored output.  (On Windows, colored output is disabled in any case.) Do not output anything on standard output, also suppress warnings.  Only errors are written to standard error. Do not output anything on standard output, only write warnings and errors to standard error. Don't look for a configuration file; only take options via the ``-D`` option. Don't look for the :file:`conf.py` in the source directory, but use the given configuration directory instead.  Note that various other files and paths given by configuration values are expected to be relative to the configuration directory, so they will have to be present at this location too. Don't use a saved :term:`environment` (the structure caching all cross-references), but rebuild it completely.  The default is to only read and parse source files that are new or have changed since the last run. Gives the directory in which to place the generated output. If given, always write all output files.  The default is to only write output files for new and changed source files.  (This may not apply to all builders.) If you document scripts (as opposed to library modules), make sure their main routine is protected by a ``if __name__ == '__main__'`` condition. Increase verbosity (loglevel).  This option can be given up to three times to get more debug logging output.  It implies :option:`-T`. Invocation of sphinx-apidoc Invocation of sphinx-build Make the *name* assigned to *value* in the HTML templates. Makefile options Normally, sphinx-apidoc does not overwrite any files.  Use this option to force the overwrite of all files that it generates. Override a configuration value set in the :file:`conf.py` file.  The value must be a string or dictionary value.  For the latter, supply the setting name and key like this: ``-D latex_elements.docclass=scrartcl``.  For boolean values, use ``0`` or ``1`` as the value. Run all doctests in the documentation, if the :mod:`~sphinx.ext.doctest` extension is enabled. Run in nit-picky mode.  Currently, this generates warnings for all missing references.  See the config value :confval:`nitpick_ignore` for a way to exclude some references as "known missing". See :ref:`builders` for a list of all builders shipped with Sphinx. Extensions can add their own builders. Sets the author name(s) to put in generated files (see :confval:`copyright`). Sets the project name to put in generated files (see :confval:`project`). Sets the project release to put in generated files (see :confval:`release`). Sets the project version to put in generated files (see :confval:`version`). Since Sphinx has to read and parse all source files before it can write an output file, the parsed source files are cached as "doctree pickles". Normally, these files are put in a directory called :file:`.doctrees` under the build directory; with this option you can select a different cache directory (the doctrees can be shared between all builders). The :file:`Makefile` and :file:`make.bat` files created by :program:`sphinx-quickstart` usually run :program:`sphinx-build` only with the :option:`-b` and :option:`-d` options.  However, they support the following variables to customize behavior: The :program:`sphinx-apidoc` generates completely automatic API documentation for a Python package.  It is called like this:: The :program:`sphinx-apidoc` script has several options: The :program:`sphinx-build` script builds a Sphinx documentation set.  It is called like this:: The :program:`sphinx-build` script has several options: The build directory to use instead of the one chosen in :program:`sphinx-quickstart`. The command to use instead of ``sphinx-build``. The most important option: it selects a builder.  The most common builders are: The value can now be a dictionary value. The value for :confval:`latex_paper_size`. This option makes sphinx-apidoc create a full Sphinx project, using the same mechanism as :program:`sphinx-quickstart`.  Most configuration values are set to default values, but you can influence the most important ones using the following options. This option makes sphinx-apidoc follow symbolic links when recursing the filesystem to discover packages and modules. You may need it if you want to generate documentation from a source directory managed by `collective.recipe.omelette <https://pypi.python.org/pypi/collective.recipe.omelette/>`_. By default, symbolic links are skipped. This option selects the file name suffix of output files.  By default, this is ``rst``. This option should be considered *experimental*. This prevents the generation of a table-of-contents file ``modules.rst``. This has no effect when :option:`--full` is given. This sets the maximum depth of the table of contents, if one is generated. Turn warnings into errors.  This means that the build stops at the first warning and ``sphinx-build`` exits with exit status 1. With this option given, no files will be written at all. Write warnings (and errors) to the given file, in addition to standard error. You can also give one or more filenames on the command line after the source and build directories.  Sphinx will then try to build only these output files (and their dependencies). ``sphinx-apidoc`` generates reST files that use :mod:`sphinx.ext.autodoc` to document all found modules.  If any modules have side effects on import, these will be executed by ``autodoc`` when ``sphinx-build`` is run. where *packagedir* is the path to the package to document, and *outputdir* is the directory where the generated sources are placed.  Any *pathnames* given are paths to be excluded ignored during generation. where *sourcedir* is the :term:`source directory`, and *builddir* is the directory in which you want to place the built documentation.  Most of the time, you don't need to specify any *filenames*. Project-Id-Version:  sphinx-doc-1.2.0
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2015-03-11 04:27+0000
PO-Revision-Date: 2014-07-13 04:48+0000
Last-Translator: Takayuki Shimizukawa <shimizukawa@gmail.com>
Language-Team: Portuguese (Brazil) (http://www.transifex.com/sphinx-doc/sphinx-doc-1_2_0/language/pt_BR/)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.2.0
 (Useful for debugging only.)  Run the Python debugger, :mod:`pdb`, if an unhandled exception occurs while building. **dirhtml** **doctest** **gettext** **html** **htmlhelp**, **qthelp**, **devhelp**, **epub** **latex** **linkcheck** **man** **pseudoxml** **singlehtml** **texinfo** **text** **xml** Additional options for :program:`sphinx-build`. Build Docutils-native XML files. Build HTML files with additional information for building a documentation collection in one of these formats. Build HTML pages, but with a single directory per document.  Makes for prettier URLs (no ``.html``) if served from a webserver. Build HTML pages.  This is the default builder. Build LaTeX sources that can be compiled to a PDF document using :program:`pdflatex`. Build Texinfo files that can be processed into Info files using :program:`makeinfo`. Build a single HTML with the whole content. Build compact pretty-printed "pseudo-XML" files displaying the internal structure of the intermediate document trees. Build gettext-style message catalogs (``.pot`` files). Build manual pages in groff format for UNIX systems. Build plain text files. Check the integrity of all external links. Define the tag *tag*.  This is relevant for :rst:dir:`only` directives that only include their content if this tag is set. Display the full traceback when an unhandled exception occurs.  Otherwise, only a summary is displayed and the traceback information is saved to a file for further analysis. Display usage summary or Sphinx version. Distribute the build over *N* processes in parallel, to make building on multiprocessor machines more effective.  Note that not all parts and not all builders of Sphinx can be parallelized. Do not emit colored output.  (On Windows, colored output is disabled in any case.) Do not output anything on standard output, also suppress warnings.  Only errors are written to standard error. Do not output anything on standard output, only write warnings and errors to standard error. Don't look for a configuration file; only take options via the ``-D`` option. Don't look for the :file:`conf.py` in the source directory, but use the given configuration directory instead.  Note that various other files and paths given by configuration values are expected to be relative to the configuration directory, so they will have to be present at this location too. Don't use a saved :term:`environment` (the structure caching all cross-references), but rebuild it completely.  The default is to only read and parse source files that are new or have changed since the last run. Gives the directory in which to place the generated output. If given, always write all output files.  The default is to only write output files for new and changed source files.  (This may not apply to all builders.) If you document scripts (as opposed to library modules), make sure their main routine is protected by a ``if __name__ == '__main__'`` condition. Increase verbosity (loglevel).  This option can be given up to three times to get more debug logging output.  It implies :option:`-T`. Invocation of sphinx-apidoc Invocation of sphinx-build Make the *name* assigned to *value* in the HTML templates. Makefile options Normally, sphinx-apidoc does not overwrite any files.  Use this option to force the overwrite of all files that it generates. Override a configuration value set in the :file:`conf.py` file.  The value must be a string or dictionary value.  For the latter, supply the setting name and key like this: ``-D latex_elements.docclass=scrartcl``.  For boolean values, use ``0`` or ``1`` as the value. Run all doctests in the documentation, if the :mod:`~sphinx.ext.doctest` extension is enabled. Run in nit-picky mode.  Currently, this generates warnings for all missing references.  See the config value :confval:`nitpick_ignore` for a way to exclude some references as "known missing". See :ref:`builders` for a list of all builders shipped with Sphinx. Extensions can add their own builders. Sets the author name(s) to put in generated files (see :confval:`copyright`). Sets the project name to put in generated files (see :confval:`project`). Sets the project release to put in generated files (see :confval:`release`). Sets the project version to put in generated files (see :confval:`version`). Since Sphinx has to read and parse all source files before it can write an output file, the parsed source files are cached as "doctree pickles". Normally, these files are put in a directory called :file:`.doctrees` under the build directory; with this option you can select a different cache directory (the doctrees can be shared between all builders). The :file:`Makefile` and :file:`make.bat` files created by :program:`sphinx-quickstart` usually run :program:`sphinx-build` only with the :option:`-b` and :option:`-d` options.  However, they support the following variables to customize behavior: The :program:`sphinx-apidoc` generates completely automatic API documentation for a Python package.  It is called like this:: The :program:`sphinx-apidoc` script has several options: The :program:`sphinx-build` script builds a Sphinx documentation set.  It is called like this:: The :program:`sphinx-build` script has several options: The build directory to use instead of the one chosen in :program:`sphinx-quickstart`. The command to use instead of ``sphinx-build``. The most important option: it selects a builder.  The most common builders are: The value can now be a dictionary value. The value for :confval:`latex_paper_size`. This option makes sphinx-apidoc create a full Sphinx project, using the same mechanism as :program:`sphinx-quickstart`.  Most configuration values are set to default values, but you can influence the most important ones using the following options. This option makes sphinx-apidoc follow symbolic links when recursing the filesystem to discover packages and modules. You may need it if you want to generate documentation from a source directory managed by `collective.recipe.omelette <https://pypi.python.org/pypi/collective.recipe.omelette/>`_. By default, symbolic links are skipped. This option selects the file name suffix of output files.  By default, this is ``rst``. This option should be considered *experimental*. This prevents the generation of a table-of-contents file ``modules.rst``. This has no effect when :option:`--full` is given. This sets the maximum depth of the table of contents, if one is generated. Turn warnings into errors.  This means that the build stops at the first warning and ``sphinx-build`` exits with exit status 1. With this option given, no files will be written at all. Write warnings (and errors) to the given file, in addition to standard error. You can also give one or more filenames on the command line after the source and build directories.  Sphinx will then try to build only these output files (and their dependencies). ``sphinx-apidoc`` generates reST files that use :mod:`sphinx.ext.autodoc` to document all found modules.  If any modules have side effects on import, these will be executed by ``autodoc`` when ``sphinx-build`` is run. where *packagedir* is the path to the package to document, and *outputdir* is the directory where the generated sources are placed.  Any *pathnames* given are paths to be excluded ignored during generation. where *sourcedir* is the :term:`source directory`, and *builddir* is the directory in which you want to place the built documentation.  Most of the time, you don't need to specify any *filenames*. 