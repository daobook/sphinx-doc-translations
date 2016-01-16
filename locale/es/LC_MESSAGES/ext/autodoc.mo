��    W      �              �  �   �       X  :  B   �  �   �  L   �  N   �    (	  �   0
  �   �
  �   �  V   i  B   �       }     �   �  �   O  �   ,    �  �     �  �  �   \  �  �  a     �   �  Z   �  �   8  M  3  �   �      M      �   n    �  �     �   �  `   �  ^   �  z   Q   5   �   �   !  �   �!  �   P"  �   J#     �#     $  �   ,$  �   �$  S  �%  �   �&  H   �'  2   �'  W   (  x   l(  K   �(  g   1)  }   �)  I   *  Y   a*    �*  �   �+  �   �,  E   )-  S   o-  ;   �-  
   �-     
.  
   .  h   !.  �   �.  1   #/  	   U/  	   _/     i/  u   w/  �   �/     �0  E   �0  &   �0  %   #1     I1  �   [1  �   62  6   �2  s   3     z3  A   �3  �  �3  �   e5     �5  X  6  B   k7  �   �7  L   d8  N   �8     9  �   :  �   �:  �   Z;  V   A<  B   �<     �<  }   �<  �   q=  �   '>  �   ?    �?  �   �@  �  �A  �   4C  �  �C  a   WE  �   �E  Z   �F  �   G  M  H  �   YI    �I  M   �J  �   FK    �K  �   �M  �   �N  `   iO  ^   �O  z   )P  5   �P  �   �P  �   �Q  �   (R  �   "S     �S     �S  �   T  �   �T  S  ]U  �   �V  H   pW  2   �W  W   �W  x   DX  K   �X  g   	Y  }   qY  I   �Y  Y   9Z    �Z  �   �[  �   }\  E   ]  S   G]  ;   �]  
   �]     �]  
   �]  h   �]  �   b^  1   �^  	   -_  	   7_     A_  u   O_  �   �_     p`  E   �`  &   �`  %   �`     !a  �   3a  �   b  6   �b  s   �b     Rc  A   rc   "Private" members (that is, those named like ``_private`` or ``__private``) will be included if the ``private-members`` flag option is given. **Options and advanced usage** :mod:`autodoc` provides several directives that are versions of the usual :rst:dir:`py:module`, :rst:dir:`py:class` and so forth.  On parsing time, they import the corresponding module and extract the docstring of the given objects, inserting them into the page source under a suitable :rst:dir:`py:module`, :rst:dir:`py:class` etc.  directive. :mod:`sphinx.ext.autodoc` -- Include documentation from docstrings :mod:`~sphinx.ext.autodoc` **imports** the modules to be documented.  If any modules have side effects on import, these will be executed by ``autodoc`` when ``sphinx-build`` is run. :rst:dir:`autodata` and :rst:dir:`autoattribute` can now extract docstrings. :rst:dir:`autodata` and :rst:dir:`autoattribute` have an ``annotation`` option :rst:dir:`autodata` and :rst:dir:`autoattribute` support the ``annotation`` option. Without this option, the representation of the object will be shown in the documentation. When the option is given without arguments, only the name of the object will be printed:: :rst:dir:`automodule` also recognizes the ``synopsis``, ``platform`` and ``deprecated`` options that the standard :rst:dir:`py:module` directive supports. :rst:dir:`automodule` and :rst:dir:`autoclass` also has an ``member-order`` option that can be used to override the global value of :confval:`autodoc_member_order` for one directive. All autodoc directives support the ``noindex`` flag option that has the same effect as for standard :rst:dir:`py:function` etc. directives: no index entries are generated for the documented object (and all autodocumented members). Both the class' and the ``__init__`` method's docstring are concatenated and inserted. Comment docs are now allowed on the same line after an assignment. Docstring preprocessing Document a module, class or exception.  All three directives will by default only insert the docstring of the object itself:: Emitted when autodoc has formatted a signature for an object. The event handler can return a new tuple ``(signature, return_annotation)`` to change what Sphinx puts into the output. Emitted when autodoc has read and processed a docstring.  *lines* is a list of strings -- the lines of the processed docstring -- that the event handler can modify **in place** to change what Sphinx puts into the output. Emitted when autodoc has to decide whether a member should be included in the documentation.  The member is excluded if a handler returns ``True``.  It is included if the handler returns ``False``. For Sphinx (actually, the Python interpreter that executes Sphinx) to find your module, it must be importable.  That means that the module or the package must be in one of the directories on :data:`sys.path` -- adapt your :data:`sys.path` in the configuration file accordingly. For classes and exceptions, members inherited from base classes will be left out when documenting all members, unless you give the ``inherited-members`` flag option, in addition to ``members``:: For module data members and class attributes, documentation can either be put into a comment with special formatting (using a ``#:`` to start the comment instead of just ``#``), or in a docstring *after* the definition.  Comments need to be either on a line of their own *before* the definition, or immediately after the assignment *on the same line*.  The latter form is restricted to one line only. For modules, ``__all__`` will be respected when looking for members; the order of the members will also be the order in ``__all__``. For this to work, the docstrings must of course be written in correct reStructuredText.  You can then use all of the usual Sphinx markup in the docstrings, and it will end up correctly in the documentation.  Together with hand-written documentation, this technique eases the pain of having to maintain two locations for documentation, while at the same time avoiding auto-generated-looking pure API documentation. From Python 2.5, :func:`functools.wraps` can be used to create well-behaved decorating functions. Functions imported from C modules cannot be introspected, and therefore the signature for such functions cannot be automatically determined.  However, it is an often-used convention to put the signature into the first line of the function's docstring. If *what* is a sequence of strings, only docstrings of a type in *what* will be processed. If this boolean value is set to ``True`` (which is the default), autodoc will look at the first line of the docstring for functions and methods, and if it looks like a signature, use the line as the signature and remove it from the docstring content. If you document decorated functions or methods, keep in mind that autodoc retrieves its docstrings by importing the module and inspecting the ``__doc__`` attribute of the given function or method.  That means that if a decorator replaces the decorated function with another, it must copy the original ``__doc__`` to the new function. If you document scripts (as opposed to library modules), make sure their main routine is protected by a ``if __name__ == '__main__'`` condition. If you set one of these flags in this config value, you can use a negated form, :samp:`'no-{flag}'`, in an autodoc directive, to disable it once. For example, if ``autodoc_default_flags`` is set to ``['members', 'undoc-members']``, and you write a directive like this:: If you want to automatically document members, there's a ``members`` option:: If you want to make the ``members`` option (or other flag options described below) the default, see :confval:`autodoc_default_flags`. In an :rst:dir:`automodule` directive with the ``members`` option set, only module members whose ``__module__`` attribute is equal to the module name as given to ``automodule`` will be documented.  This is to prevent documentation of imported classes or functions.  Set the ``imported-members`` option if you want to prevent this behavior and document all available members.  Note that attributes from imported modules will not be documented, because attribute documentation is discovered by parsing the source file of the current module. It's possible to override the signature for explicitly documented callable objects (functions, methods, classes) with the regular syntax that will override the signature gained from introspection:: Just as :rst:dir:`py:class` respects the current :rst:dir:`py:module`, :rst:dir:`autoclass` will also do so.  Likewise, :rst:dir:`automethod` will respect the current :rst:dir:`py:class`. Members without docstrings will be left out, unless you give the ``undoc-members`` flag option:: Note that for source order, the module must be a Python module with the source code available. Note: this will lead to markup errors if the inherited members come from a module whose docstrings are not reST formatted. Only the ``__init__`` method's docstring is inserted. Only the class' docstring is inserted.  This is the default.  You can still document ``__init__`` as a separate method using :rst:dir:`automethod` or the ``members`` option to :rst:dir:`autoclass`. Python "special" members (that is, those named like ``__special__``) will be included if the ``special-members`` flag option is given:: Return a listener that either keeps, or if *exclude* is True excludes, lines between lines that match the *marker* regular expression.  If no line matches, the resulting docstring would be empty, so no change will be made unless *keepempty* is true. Return a listener that removes the first *pre* and last *post* lines of every docstring.  If *what* is a sequence of strings, only docstrings of a type in *what* will be processed. Skipping members Support for ``'bysource'``. The "auto" directives can also contain content of their own, it will be inserted into the resulting non-auto directive source after the docstring (but before any automatic member documentation). The :mod:`sphinx.ext.autodoc` module provides factory functions for commonly needed docstring processing in event :event:`autodoc-process-docstring`: The :rst:dir:`automodule`, :rst:dir:`autoclass` and :rst:dir:`autoexception` directives also support a flag option called ``show-inheritance``.  When given, a list of base classes will be inserted just below the class signature (when used with :rst:dir:`automodule`, this will be inserted for every class that is documented in the module). The directives supporting member documentation also have a ``exclude-members`` option that can be used to exclude single member names from documentation, if all members are to be documented. The option can now take arguments, i.e. the special members to document. There are also new config values that you can set: Therefore, you can also mix automatic and non-automatic member documentation, like so:: These work exactly like :rst:dir:`autoclass` etc., but do not offer the options used for automatic member documentation. This can (and should) be used in place of :confval:`automodule_skip_lines`. This can be combined with ``undoc-members`` to document *all* available members of the class or module. This extension can import the modules you are documenting, and pull in documentation from docstrings in a semi-automatic way. This is useful if the signature from the method is hidden by a decorator. This means that in the following class definition, all attributes can be autodocumented:: This value is a list of autodoc directive flags that should be automatically applied to all autodoc directives.  The supported flags are ``'members'``, ``'undoc-members'``, ``'private-members'``, ``'special-members'``, ``'inherited-members'`` and ``'show-inheritance'``. This value selects if automatically documented members are sorted alphabetical (value ``'alphabetical'``), by member type (value ``'groupwise'``) or by source order (value ``'bysource'``).  The default is alphabetical. This value selects what content will be inserted into the main body of an :rst:dir:`autoclass` directive.  The possible values are: Use like this (e.g. in the ``setup()`` function of :file:`conf.py`):: You can also give an explicit list of members; only these will then be documented:: You can tell sphinx what should be printed after the name:: ``"both"`` ``"class"`` ``"init"`` a boolean indicating if autodoc will skip this member if the user handler does not override the decision autodoc allows the user to define a custom method for determining whether a member should be included in the documentation by using the following event: autodoc provides the following additional events: automatic docstring documentation function return annotation as a string of the form ``" -> annotation"``, or ``None`` if there is no return annotation function signature, as a string of the form ``"(parameter_1, parameter_2)"``, or ``None`` if introspection didn't succeed and signature wasn't specified in the directive. the Sphinx application object the directive will be interpreted as if only ``:members:`` was given. the fully qualified name of the object the lines of the docstring, see above the object itself the options given to the directive: an object with attributes ``inherited_members``, ``undoc_members``, ``show_inheritance`` and ``noindex`` that are true if the flag option of same name was given to the auto directive the type of the object which the docstring belongs to (one of ``"module"``, ``"class"``, ``"exception"``, ``"function"``, ``"method"``, ``"attribute"``) will document all module members (recursively), and :: will document all non-private member functions and properties (that is, those whose name doesn't start with ``_``). will produce source like this:: would document both "private" and "special" members of the class. Project-Id-Version:  sphinx-doc-1.2.0
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2015-03-11 04:27+0000
PO-Revision-Date: 2013-01-28 12:43+0000
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language-Team: Spanish (http://www.transifex.com/sphinx-doc/sphinx-doc-1_2_0/language/es/)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.2.0
 "Private" members (that is, those named like ``_private`` or ``__private``) will be included if the ``private-members`` flag option is given. **Options and advanced usage** :mod:`autodoc` provides several directives that are versions of the usual :rst:dir:`py:module`, :rst:dir:`py:class` and so forth.  On parsing time, they import the corresponding module and extract the docstring of the given objects, inserting them into the page source under a suitable :rst:dir:`py:module`, :rst:dir:`py:class` etc.  directive. :mod:`sphinx.ext.autodoc` -- Include documentation from docstrings :mod:`~sphinx.ext.autodoc` **imports** the modules to be documented.  If any modules have side effects on import, these will be executed by ``autodoc`` when ``sphinx-build`` is run. :rst:dir:`autodata` and :rst:dir:`autoattribute` can now extract docstrings. :rst:dir:`autodata` and :rst:dir:`autoattribute` have an ``annotation`` option :rst:dir:`autodata` and :rst:dir:`autoattribute` support the ``annotation`` option. Without this option, the representation of the object will be shown in the documentation. When the option is given without arguments, only the name of the object will be printed:: :rst:dir:`automodule` also recognizes the ``synopsis``, ``platform`` and ``deprecated`` options that the standard :rst:dir:`py:module` directive supports. :rst:dir:`automodule` and :rst:dir:`autoclass` also has an ``member-order`` option that can be used to override the global value of :confval:`autodoc_member_order` for one directive. All autodoc directives support the ``noindex`` flag option that has the same effect as for standard :rst:dir:`py:function` etc. directives: no index entries are generated for the documented object (and all autodocumented members). Both the class' and the ``__init__`` method's docstring are concatenated and inserted. Comment docs are now allowed on the same line after an assignment. Docstring preprocessing Document a module, class or exception.  All three directives will by default only insert the docstring of the object itself:: Emitted when autodoc has formatted a signature for an object. The event handler can return a new tuple ``(signature, return_annotation)`` to change what Sphinx puts into the output. Emitted when autodoc has read and processed a docstring.  *lines* is a list of strings -- the lines of the processed docstring -- that the event handler can modify **in place** to change what Sphinx puts into the output. Emitted when autodoc has to decide whether a member should be included in the documentation.  The member is excluded if a handler returns ``True``.  It is included if the handler returns ``False``. For Sphinx (actually, the Python interpreter that executes Sphinx) to find your module, it must be importable.  That means that the module or the package must be in one of the directories on :data:`sys.path` -- adapt your :data:`sys.path` in the configuration file accordingly. For classes and exceptions, members inherited from base classes will be left out when documenting all members, unless you give the ``inherited-members`` flag option, in addition to ``members``:: For module data members and class attributes, documentation can either be put into a comment with special formatting (using a ``#:`` to start the comment instead of just ``#``), or in a docstring *after* the definition.  Comments need to be either on a line of their own *before* the definition, or immediately after the assignment *on the same line*.  The latter form is restricted to one line only. For modules, ``__all__`` will be respected when looking for members; the order of the members will also be the order in ``__all__``. For this to work, the docstrings must of course be written in correct reStructuredText.  You can then use all of the usual Sphinx markup in the docstrings, and it will end up correctly in the documentation.  Together with hand-written documentation, this technique eases the pain of having to maintain two locations for documentation, while at the same time avoiding auto-generated-looking pure API documentation. From Python 2.5, :func:`functools.wraps` can be used to create well-behaved decorating functions. Functions imported from C modules cannot be introspected, and therefore the signature for such functions cannot be automatically determined.  However, it is an often-used convention to put the signature into the first line of the function's docstring. If *what* is a sequence of strings, only docstrings of a type in *what* will be processed. If this boolean value is set to ``True`` (which is the default), autodoc will look at the first line of the docstring for functions and methods, and if it looks like a signature, use the line as the signature and remove it from the docstring content. If you document decorated functions or methods, keep in mind that autodoc retrieves its docstrings by importing the module and inspecting the ``__doc__`` attribute of the given function or method.  That means that if a decorator replaces the decorated function with another, it must copy the original ``__doc__`` to the new function. If you document scripts (as opposed to library modules), make sure their main routine is protected by a ``if __name__ == '__main__'`` condition. If you set one of these flags in this config value, you can use a negated form, :samp:`'no-{flag}'`, in an autodoc directive, to disable it once. For example, if ``autodoc_default_flags`` is set to ``['members', 'undoc-members']``, and you write a directive like this:: If you want to automatically document members, there's a ``members`` option:: If you want to make the ``members`` option (or other flag options described below) the default, see :confval:`autodoc_default_flags`. In an :rst:dir:`automodule` directive with the ``members`` option set, only module members whose ``__module__`` attribute is equal to the module name as given to ``automodule`` will be documented.  This is to prevent documentation of imported classes or functions.  Set the ``imported-members`` option if you want to prevent this behavior and document all available members.  Note that attributes from imported modules will not be documented, because attribute documentation is discovered by parsing the source file of the current module. It's possible to override the signature for explicitly documented callable objects (functions, methods, classes) with the regular syntax that will override the signature gained from introspection:: Just as :rst:dir:`py:class` respects the current :rst:dir:`py:module`, :rst:dir:`autoclass` will also do so.  Likewise, :rst:dir:`automethod` will respect the current :rst:dir:`py:class`. Members without docstrings will be left out, unless you give the ``undoc-members`` flag option:: Note that for source order, the module must be a Python module with the source code available. Note: this will lead to markup errors if the inherited members come from a module whose docstrings are not reST formatted. Only the ``__init__`` method's docstring is inserted. Only the class' docstring is inserted.  This is the default.  You can still document ``__init__`` as a separate method using :rst:dir:`automethod` or the ``members`` option to :rst:dir:`autoclass`. Python "special" members (that is, those named like ``__special__``) will be included if the ``special-members`` flag option is given:: Return a listener that either keeps, or if *exclude* is True excludes, lines between lines that match the *marker* regular expression.  If no line matches, the resulting docstring would be empty, so no change will be made unless *keepempty* is true. Return a listener that removes the first *pre* and last *post* lines of every docstring.  If *what* is a sequence of strings, only docstrings of a type in *what* will be processed. Skipping members Support for ``'bysource'``. The "auto" directives can also contain content of their own, it will be inserted into the resulting non-auto directive source after the docstring (but before any automatic member documentation). The :mod:`sphinx.ext.autodoc` module provides factory functions for commonly needed docstring processing in event :event:`autodoc-process-docstring`: The :rst:dir:`automodule`, :rst:dir:`autoclass` and :rst:dir:`autoexception` directives also support a flag option called ``show-inheritance``.  When given, a list of base classes will be inserted just below the class signature (when used with :rst:dir:`automodule`, this will be inserted for every class that is documented in the module). The directives supporting member documentation also have a ``exclude-members`` option that can be used to exclude single member names from documentation, if all members are to be documented. The option can now take arguments, i.e. the special members to document. There are also new config values that you can set: Therefore, you can also mix automatic and non-automatic member documentation, like so:: These work exactly like :rst:dir:`autoclass` etc., but do not offer the options used for automatic member documentation. This can (and should) be used in place of :confval:`automodule_skip_lines`. This can be combined with ``undoc-members`` to document *all* available members of the class or module. This extension can import the modules you are documenting, and pull in documentation from docstrings in a semi-automatic way. This is useful if the signature from the method is hidden by a decorator. This means that in the following class definition, all attributes can be autodocumented:: This value is a list of autodoc directive flags that should be automatically applied to all autodoc directives.  The supported flags are ``'members'``, ``'undoc-members'``, ``'private-members'``, ``'special-members'``, ``'inherited-members'`` and ``'show-inheritance'``. This value selects if automatically documented members are sorted alphabetical (value ``'alphabetical'``), by member type (value ``'groupwise'``) or by source order (value ``'bysource'``).  The default is alphabetical. This value selects what content will be inserted into the main body of an :rst:dir:`autoclass` directive.  The possible values are: Use like this (e.g. in the ``setup()`` function of :file:`conf.py`):: You can also give an explicit list of members; only these will then be documented:: You can tell sphinx what should be printed after the name:: ``"both"`` ``"class"`` ``"init"`` a boolean indicating if autodoc will skip this member if the user handler does not override the decision autodoc allows the user to define a custom method for determining whether a member should be included in the documentation by using the following event: autodoc provides the following additional events: automatic docstring documentation function return annotation as a string of the form ``" -> annotation"``, or ``None`` if there is no return annotation function signature, as a string of the form ``"(parameter_1, parameter_2)"``, or ``None`` if introspection didn't succeed and signature wasn't specified in the directive. the Sphinx application object the directive will be interpreted as if only ``:members:`` was given. the fully qualified name of the object the lines of the docstring, see above the object itself the options given to the directive: an object with attributes ``inherited_members``, ``undoc_members``, ``show_inheritance`` and ``noindex`` that are true if the flag option of same name was given to the auto directive the type of the object which the docstring belongs to (one of ``"module"``, ``"class"``, ``"exception"``, ``"function"``, ``"method"``, ``"attribute"``) will document all module members (recursively), and :: will document all non-private member functions and properties (that is, those whose name doesn't start with ``_``). will produce source like this:: would document both "private" and "special" members of the class. 