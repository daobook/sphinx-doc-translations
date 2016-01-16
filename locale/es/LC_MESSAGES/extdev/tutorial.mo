��    K      t              �     �     �  
   �     �                5     U     l  �   �  N   X  +  �  �   �  \   �  :  �  �   &
  [  �
  �   ;  �   �     �  �   �     �  �   �  a   �  ?   �  b  9  �   �  T   P  n   �  P        e  �  w  v   +  �   �  �   �  �     #   �  �   �  1   �  �   �  �   �    �    �  �   �  �   =  �  �  �   �   D   �!     �!     �!     �!     "  1   "  ,   Q"  �   ~"  �   U#  �   C$  z   ;%  <   �%  �   �%  (   �&  �   �&  ?   Y'  �   �'  e   1(  *  �(  �  �*  �   O,  \   1-  �   �-  �   u.  $   5/  G   Z/  5   �/  �  �/     a1     q1  
   }1     �1     �1     �1     �1     �1      2  �   2  N   �2  +  ;3  �   g4  \   "5  :  5  �   �6  [  s7  �   �8  �   f9     >:  �   K:     G;  �   X;  a   +<  ?   �<  b  �<  �   0?  T   �?  n   9@  P   �@     �@  �  A  v   �B  �   6C  �   D  �   �D  #   cE  �   �E  1   WF  �   �F  �   dG    H    #I  �   @J  �   �J  �  oK  �   [M  D   !N     fN     |N     �N     �N  1   �N  ,   �N  �   O  �   �O  �   �P  z   �Q  <   JR  �   �R  (   /S  �   XS  ?   �S  �   -T  e   �T  *  +U  �  VW  �   �X  \   �Y  �   "Z  �   	[  $   �[  G   �[  5   6\   **Application** **Builder** **Config** **Environment** **Phase 0: Initialization** **Phase 1: Reading** **Phase 2: Consistency checks** **Phase 3: Resolving** **Phase 4: Writing** :meth:`~Sphinx.add_config_value` lets Sphinx know that it should recognize the new *config value* ``todo_include_todos``, whose default value should be ``False`` (this also tells Sphinx that it is a boolean value). :meth:`~Sphinx.add_directive` adds a new *directive*, given by name and class. :meth:`~Sphinx.add_node` adds a new *node class* to the build system.  It also can specify visitor functions for each supported output format.  These visitor functions are needed when the new nodes stay until phase 4 -- since the ``todolist`` node is always replaced in phase 3, it doesn't need any. A "todo" directive, containing some content that is marked with "TODO", and only shown in the output if a new config value is set.  (Todo entries should not be in the output by default.) A "todolist" directive that creates a list of all todo entries throughout the documentation. A directive class is a class deriving usually from :class:`docutils.parsers.rst.Directive`.  The directive interface is also covered in detail in the `docutils documentation`_; the important thing is that the class has attributes that configure the allowed markup and a method ``run`` that returns a list of nodes. A new config value ``todo_include_todos`` (config value names should start with the extension name, in order to stay unique) that controls whether todo entries make it into the output. An admonition is created using a standard docutils function (wrapped in Sphinx for docutils cross-version compatibility).  The first argument gives the node class, in our case ``todo``.  The third argument gives the admonition title (use ``arguments`` here to let the user specify the title).  A list of nodes is returned from ``make_admonition``. An instance of our ``todolist`` node class is created and returned.  The todolist directive has neither content nor arguments that need to be handled. As an example, we will cover a "todo" extension that adds capabilities to include todo entries in the documentation, and collecting these in a central place.  (A similar "todo" extension is distributed with Sphinx.) Build Phases During reading, the build environment is updated with all meta- and cross reference data of the read documents, such as labels, the names of headings, described Python objects and index entries.  This will later be used to replace the temporary nodes. Extension Design Finally, :meth:`~Sphinx.connect` adds an *event handler* to the event whose name is given by the first argument.  The event handler function is called with several arguments which are documented with the event. Finally, let's look at the event handlers.  First, the one for the :event:`env-purge-doc` event:: For that, we will need to add the following elements to Sphinx: If not, todo nodes just stay where and how they are.  Todolist nodes are replaced by a list of todo entries, complete with backlinks to the location where they come from.  The list items are composed of the nodes from the todo entry and docutils nodes created on the fly: a paragraph for each entry, containing text that gives the location, and a link (reference node containing an italic node) with the backreference.  The reference URI is built by ``app.builder.get_relative_uri`` which creates a suitable URI depending on the used builder, and appending the todo node's (the target's) ID as the anchor name. If the third argument was ``True``, all documents would be re-read if the config value changed its value.  This is needed for config values that influence reading (build phase 1). If you have the application object, the environment is available as ``app.builder``. If you have the application or builder object, the environment is available as ``app.env`` or ``builder.env``. If you have the environment object, the application is available as ``env.app``. Important objects In Phase 1, all source files (and on subsequent builds, those that are new or changed) are read and parsed.  This is the phase where directives and roles are encountered by the docutils, and the corresponding code is executed.  The output of this phase is a *doctree* for each source files, that is a tree of docutils nodes.  For document elements that aren't fully known until all existing files are read, temporary nodes are created. In the last line, the nodes that should be put into the doctree are returned: the target node and the admonition node. In this phase, almost nothing interesting for us happens.  The source directory is searched for source files, and extensions are initialized. Should a stored build environment exist, it is loaded, otherwise a new one is created. It is a bit more involved.  If our new "todo_include_todos" config value is false, all todo and todolist nodes are removed from the documents. Its API provides methods to do with access to metadata, resolving references, etc.  It can also be used by extensions to cache information that should persist for incremental rebuilds. Let's start with the node classes:: Many extensions will not have to create their own node classes and work fine with the nodes already provided by `docutils <http://docutils.sourceforge.net/docs/ref/doctree.html>`__ and :ref:`Sphinx <nodes>`. New directives, called ``todo`` and ``todolist``. New document tree nodes to represent these directives, conventionally also called ``todo`` and ``todolist``.  We wouldn't need new nodes if the new directives only produced some content representable by existing nodes. New event handlers: one for the :event:`doctree-resolved` event, to replace the todo and todolist nodes, and one for :event:`env-purge-doc` (the reason for that will be covered later). Node classes usually don't have to do anything except inherit from the standard docutils classes defined in :mod:`docutils.nodes`.  ``todo`` inherits from ``Admonition`` because it should be handled like a note or warning, ``todolist`` is just a "general" node. Now that the metadata and cross-reference data of all existing documents is known, all temporary nodes are replaced by nodes that can be converted into output.  For example, links are created for object references that exist, and simple literal nodes are created for those that don't. One thing that is vital in order to understand extension mechanisms is the way in which a Sphinx project is built: this works in several phases. Several important things are covered here. First, as you can see, you can refer to the build environment instance using ``self.state.document.settings.env``. Since we store information from source files in the environment, which is persistent, it may become out of date when the source file changes.  Therefore, before each source file is read, the environment's records of it are cleared, and the :event:`env-purge-doc` event gives extensions a chance to do the same. Here we clear out all todos whose docname matches the given one from the ``todo_all_todos`` list.  If there are todos left in the document, they will be added again during parsing. Some builders deviate from this general build plan, for example, the builder that checks external links does not need anything more than the parsed doctrees and therefore does not have phases 2--4. Some checking is done to ensure no surprises in the built documents. The Directive Classes The Event Handlers The Node Classes The Setup Function The ``todo`` directive function looks like this:: The ``todolist`` directive is quite simple:: The application object (usually called ``app``) is an instance of :class:`.Sphinx`.  It controls the most high-level functionality, such as the setup of extensions, event dispatching and producing output (logging). The build environment object (usually called ``env``) is an instance of :class:`.BuildEnvironment`.  It is responsible for parsing the source documents stores all metadata about the document collection and is serialized after each build. The builder object (usually called ``builder``) is an instance of a specific subclass of :class:`.Builder`.  Each builder class knows how to convert the parsed documents into an output format, or otherwise process them (e.g. check external links). The calls in this function refer to classes and functions not yet written.  What the individual calls do is the following: The config is available as ``app.config`` or ``env.config``. The config object (usually called ``config``) provides the values of configuration values set in :file:`conf.py` as attributes.  It is an instance of :class:`.Config`. The handler functions are created later. The new elements are added in the extension's setup function.  Let us create a new Python module called :file:`todo.py` and add the setup function:: The node structure that the directive returns looks like this:: The other handler belongs to the :event:`doctree-resolved` event.  This event is emitted at the end of phase 3 and allows custom resolving to be done:: The parsed doctrees are stored on the disk, because it is not possible to hold all of them in memory. Then, the todo node is added to the environment.  This is needed to be able to create a list of all todo entries throughout the documentation, in the place where the author puts a ``todolist`` directive.  For this case, the environment attribute ``todo_all_todos`` is used (again, the name should be unique, so it is prefixed by the extension name).  It does not exist when a new environment is created, so the directive must check and create it if necessary.  Various information about the todo entry's location are stored along with a copy of the node. Then, to act as a link target (from the todolist), the todo directive needs to return a target node in addition to the todo node.  The target ID (in HTML, this will be the anchor name) is generated by using ``env.new_serialno`` which returns a new unique integer on each call and therefore leads to unique target names.  The target node is instantiated without any text (the first two arguments). There are nodes provided by docutils, which are documented `in the docutils documentation <http://docutils.sourceforge.net/docs/ref/doctree.html>`__. Additional nodes are provided by Sphinx and :ref:`documented here <nodes>`. There are several key objects whose API you will use while writing an extension.  These are: This phase converts the resolved doctrees to the desired output format, such as HTML or LaTeX.  This happens via a so-called docutils writer that visits the individual nodes of each doctree and produces some output in the process. This section is intended as a walkthrough for the creation of custom extensions. It covers the basics of writing and activating an extensions, as well as commonly used features of extensions. Tutorial: Writing a simple extension We need to create the two node classes ``todo`` and ``todolist`` later. We want the extension to add the following to Sphinx: Project-Id-Version:  sphinx-doc-1.2.0
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2015-03-11 04:27+0000
PO-Revision-Date: 2014-05-03 03:30+0000
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language-Team: Spanish (http://www.transifex.com/sphinx-doc/sphinx-doc-1_2_0/language/es/)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.2.0
 **Application** **Builder** **Config** **Environment** **Phase 0: Initialization** **Phase 1: Reading** **Phase 2: Consistency checks** **Phase 3: Resolving** **Phase 4: Writing** :meth:`~Sphinx.add_config_value` lets Sphinx know that it should recognize the new *config value* ``todo_include_todos``, whose default value should be ``False`` (this also tells Sphinx that it is a boolean value). :meth:`~Sphinx.add_directive` adds a new *directive*, given by name and class. :meth:`~Sphinx.add_node` adds a new *node class* to the build system.  It also can specify visitor functions for each supported output format.  These visitor functions are needed when the new nodes stay until phase 4 -- since the ``todolist`` node is always replaced in phase 3, it doesn't need any. A "todo" directive, containing some content that is marked with "TODO", and only shown in the output if a new config value is set.  (Todo entries should not be in the output by default.) A "todolist" directive that creates a list of all todo entries throughout the documentation. A directive class is a class deriving usually from :class:`docutils.parsers.rst.Directive`.  The directive interface is also covered in detail in the `docutils documentation`_; the important thing is that the class has attributes that configure the allowed markup and a method ``run`` that returns a list of nodes. A new config value ``todo_include_todos`` (config value names should start with the extension name, in order to stay unique) that controls whether todo entries make it into the output. An admonition is created using a standard docutils function (wrapped in Sphinx for docutils cross-version compatibility).  The first argument gives the node class, in our case ``todo``.  The third argument gives the admonition title (use ``arguments`` here to let the user specify the title).  A list of nodes is returned from ``make_admonition``. An instance of our ``todolist`` node class is created and returned.  The todolist directive has neither content nor arguments that need to be handled. As an example, we will cover a "todo" extension that adds capabilities to include todo entries in the documentation, and collecting these in a central place.  (A similar "todo" extension is distributed with Sphinx.) Build Phases During reading, the build environment is updated with all meta- and cross reference data of the read documents, such as labels, the names of headings, described Python objects and index entries.  This will later be used to replace the temporary nodes. Extension Design Finally, :meth:`~Sphinx.connect` adds an *event handler* to the event whose name is given by the first argument.  The event handler function is called with several arguments which are documented with the event. Finally, let's look at the event handlers.  First, the one for the :event:`env-purge-doc` event:: For that, we will need to add the following elements to Sphinx: If not, todo nodes just stay where and how they are.  Todolist nodes are replaced by a list of todo entries, complete with backlinks to the location where they come from.  The list items are composed of the nodes from the todo entry and docutils nodes created on the fly: a paragraph for each entry, containing text that gives the location, and a link (reference node containing an italic node) with the backreference.  The reference URI is built by ``app.builder.get_relative_uri`` which creates a suitable URI depending on the used builder, and appending the todo node's (the target's) ID as the anchor name. If the third argument was ``True``, all documents would be re-read if the config value changed its value.  This is needed for config values that influence reading (build phase 1). If you have the application object, the environment is available as ``app.builder``. If you have the application or builder object, the environment is available as ``app.env`` or ``builder.env``. If you have the environment object, the application is available as ``env.app``. Important objects In Phase 1, all source files (and on subsequent builds, those that are new or changed) are read and parsed.  This is the phase where directives and roles are encountered by the docutils, and the corresponding code is executed.  The output of this phase is a *doctree* for each source files, that is a tree of docutils nodes.  For document elements that aren't fully known until all existing files are read, temporary nodes are created. In the last line, the nodes that should be put into the doctree are returned: the target node and the admonition node. In this phase, almost nothing interesting for us happens.  The source directory is searched for source files, and extensions are initialized. Should a stored build environment exist, it is loaded, otherwise a new one is created. It is a bit more involved.  If our new "todo_include_todos" config value is false, all todo and todolist nodes are removed from the documents. Its API provides methods to do with access to metadata, resolving references, etc.  It can also be used by extensions to cache information that should persist for incremental rebuilds. Let's start with the node classes:: Many extensions will not have to create their own node classes and work fine with the nodes already provided by `docutils <http://docutils.sourceforge.net/docs/ref/doctree.html>`__ and :ref:`Sphinx <nodes>`. New directives, called ``todo`` and ``todolist``. New document tree nodes to represent these directives, conventionally also called ``todo`` and ``todolist``.  We wouldn't need new nodes if the new directives only produced some content representable by existing nodes. New event handlers: one for the :event:`doctree-resolved` event, to replace the todo and todolist nodes, and one for :event:`env-purge-doc` (the reason for that will be covered later). Node classes usually don't have to do anything except inherit from the standard docutils classes defined in :mod:`docutils.nodes`.  ``todo`` inherits from ``Admonition`` because it should be handled like a note or warning, ``todolist`` is just a "general" node. Now that the metadata and cross-reference data of all existing documents is known, all temporary nodes are replaced by nodes that can be converted into output.  For example, links are created for object references that exist, and simple literal nodes are created for those that don't. One thing that is vital in order to understand extension mechanisms is the way in which a Sphinx project is built: this works in several phases. Several important things are covered here. First, as you can see, you can refer to the build environment instance using ``self.state.document.settings.env``. Since we store information from source files in the environment, which is persistent, it may become out of date when the source file changes.  Therefore, before each source file is read, the environment's records of it are cleared, and the :event:`env-purge-doc` event gives extensions a chance to do the same. Here we clear out all todos whose docname matches the given one from the ``todo_all_todos`` list.  If there are todos left in the document, they will be added again during parsing. Some builders deviate from this general build plan, for example, the builder that checks external links does not need anything more than the parsed doctrees and therefore does not have phases 2--4. Some checking is done to ensure no surprises in the built documents. The Directive Classes The Event Handlers The Node Classes The Setup Function The ``todo`` directive function looks like this:: The ``todolist`` directive is quite simple:: The application object (usually called ``app``) is an instance of :class:`.Sphinx`.  It controls the most high-level functionality, such as the setup of extensions, event dispatching and producing output (logging). The build environment object (usually called ``env``) is an instance of :class:`.BuildEnvironment`.  It is responsible for parsing the source documents stores all metadata about the document collection and is serialized after each build. The builder object (usually called ``builder``) is an instance of a specific subclass of :class:`.Builder`.  Each builder class knows how to convert the parsed documents into an output format, or otherwise process them (e.g. check external links). The calls in this function refer to classes and functions not yet written.  What the individual calls do is the following: The config is available as ``app.config`` or ``env.config``. The config object (usually called ``config``) provides the values of configuration values set in :file:`conf.py` as attributes.  It is an instance of :class:`.Config`. The handler functions are created later. The new elements are added in the extension's setup function.  Let us create a new Python module called :file:`todo.py` and add the setup function:: The node structure that the directive returns looks like this:: The other handler belongs to the :event:`doctree-resolved` event.  This event is emitted at the end of phase 3 and allows custom resolving to be done:: The parsed doctrees are stored on the disk, because it is not possible to hold all of them in memory. Then, the todo node is added to the environment.  This is needed to be able to create a list of all todo entries throughout the documentation, in the place where the author puts a ``todolist`` directive.  For this case, the environment attribute ``todo_all_todos`` is used (again, the name should be unique, so it is prefixed by the extension name).  It does not exist when a new environment is created, so the directive must check and create it if necessary.  Various information about the todo entry's location are stored along with a copy of the node. Then, to act as a link target (from the todolist), the todo directive needs to return a target node in addition to the todo node.  The target ID (in HTML, this will be the anchor name) is generated by using ``env.new_serialno`` which returns a new unique integer on each call and therefore leads to unique target names.  The target node is instantiated without any text (the first two arguments). There are nodes provided by docutils, which are documented `in the docutils documentation <http://docutils.sourceforge.net/docs/ref/doctree.html>`__. Additional nodes are provided by Sphinx and :ref:`documented here <nodes>`. There are several key objects whose API you will use while writing an extension.  These are: This phase converts the resolved doctrees to the desired output format, such as HTML or LaTeX.  This happens via a so-called docutils writer that visits the individual nodes of each doctree and produces some output in the process. This section is intended as a walkthrough for the creation of custom extensions. It covers the basics of writing and activating an extensions, as well as commonly used features of extensions. Tutorial: Writing a simple extension We need to create the two node classes ``todo`` and ``todolist`` later. We want the extension to add the following to Sphinx: 