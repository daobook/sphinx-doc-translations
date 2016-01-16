��    +      t              �  3   �  �     6   �  7   �  6   $  �   [  �   :  P   2  V   �  Z   �  I   5  �     �   o  N   `	  �   �	  �   h
     ,  R  C  ,   �  u   �  &   9  �   `  �   �  �   �  �   `  �     �   �  V   �  �   �  w   �  k   B  V   �  R     �   X  �   (  �   �  |   y  �   �  �   �  V     D   ^  �  �  �  Q  3   �  �     6   �  7   �  6   1  �   h  �   G  P   ?  V   �  Z   �  I   B   �   �   �   |!  N   m"  �   �"  �   u#     9$  R  P$  ,   �%  u   �%  &   F&  �   m&  �   �&  �   �'  �   m(  �   )  �   �)  V   �*  �   +  w   �+  k   O,  V   �,  R   -  �   e-  �   5.  �   �.  |   �/  �   0  �   �0  V   1  D   k1  �  �1   :mod:`.mathbase` defines these new markup elements: :mod:`.mathbase` is not meant to be added to the :confval:`extensions` config value, instead, use either :mod:`sphinx.ext.pngmath` or :mod:`sphinx.ext.mathjax` as described below. :mod:`sphinx.ext.jsmath` -- Render math via JavaScript :mod:`sphinx.ext.mathjax` -- Render math via JavaScript :mod:`sphinx.ext.pngmath` -- Render math as PNG images Additional LaTeX code to put into the preamble of the short LaTeX files that are used to translate the math snippets.  This is empty by default.  Use it e.g. to add more packages whose commands you want to use in the math. Additional arguments to give to dvipng, as a list.  The default value is ``['-gamma', '1.5', '-D', '110', '-bg', 'Transparent']`` which makes the image a bit darker and larger then it is by default, and produces PNGs with a transparent background. Additional arguments to give to latex, as a list.  The default is an empty list. Because MathJax (and the necessary fonts) is very large, it is not included in Sphinx. Default: true.  If false, do not add the LaTeX code as an "alt" attribute for math images. Directive for displayed math (math that takes the whole line for itself). For example, if you put JSMath into the static path of the Sphinx docs, this value would be ``jsMath/easy/load.js``.  If you host more than one Sphinx documentation set on one server, it is advisable to install jsMath in a shared location. For example, if you put MathJax into the static path of the Sphinx docs, this value would be ``MathJax/MathJax.js``.  If you host more than one Sphinx documentation set on one server, it is advisable to install MathJax in a shared location. For more details, look into the documentation of the `AmSMath LaTeX package`_. In addition, each single equation is set within a ``split`` environment, which means that you can have multiple aligned lines in an equation, aligned at ``&`` and separated by ``\\``:: Keep in mind that when you put math markup in **Python docstrings** read by :mod:`autodoc <sphinx.ext.autodoc>`, you either have to double all backslashes, or use Python raw strings (``r"raw"``). Math support in Sphinx Normally, equations are not numbered.  If you want your equation to get a number, use the ``label`` option.  When given, it selects an internal label for the equation, by which it can be cross-referenced, and causes an equation number to be issued.  See :rst:role:`eqref` for an example.  The numbering style depends on the output format. Now includes ``-bg Transparent`` by default. Role for cross-referencing equations via their label.  This currently works only within the same document.  Example:: Role for inline math.  Use like this:: Since mathematical notation isn't natively supported by HTML in any way, Sphinx supports math in documentation with several extensions. Since this setting is not portable from system to system, it is normally not useful to set it in ``conf.py``; rather, giving it on the :program:`sphinx-build` command line via the :option:`-D` option should be preferable, like this:: The basic math support is contained in :mod:`sphinx.ext.mathbase`. Other math support extensions should, if possible, reuse that support too. The command name with which to invoke LaTeX.  The default is ``'latex'``; you may need to set this to a full path if ``latex`` is not in the executable search path. The command name with which to invoke ``dvipng``.  The default is ``'dvipng'``; you may need to set this to a full path if ``dvipng`` is not in the executable search path. The default is the ``http://`` URL that loads the JS files from the `MathJax CDN <http://docs.mathjax.org/en/latest/start.html>`_.  If you want MathJax to be available offline, you have to donwload it and set this value to a different path. The directive supports multiple equations, which should be separated by a blank line:: The input language for mathematics is LaTeX markup.  This is the de-facto standard for plain-text math notation and has the added advantage that no further translation is necessary when building LaTeX output. The path can be absolute or relative; if it is relative, it is relative to the ``_static`` directory of the built docs. The path to the JavaScript file to include in the HTML files in order to load JSMath.  There is no default. The path to the JavaScript file to include in the HTML files in order to load MathJax. There are various config values you can set to influence how the images are built: There is also an option ``nowrap`` that prevents any wrapping of the given math in a math environment.  When you give this option, you must make sure yourself that the math is properly set up.  For example:: This extension puts math as-is into the HTML files.  The JavaScript package MathJax_ is then loaded and transforms the LaTeX markup to readable math live in the browser. This extension renders math via LaTeX and dvipng_ into PNG images.  This of course means that the computer where the docs are built must have both programs available. This extension works just as the MathJax extension does, but uses the older package jsMath_.  It provides this config value: This value should only contain the path to the latex executable, not further arguments; use :confval:`pngmath_latex_args` for that purpose. Unfortunately, this only works when the `preview-latex package`_ is installed.  Therefore, the default for this option is ``False``. When the math is only one line of text, it can also be given as a directive argument:: You can also give a full ``http://`` URL different from the CDN URL. ``dvipng`` has the ability to determine the "depth" of the rendered text: for example, when typesetting a fraction inline, the baseline of surrounding text should not be flush with the bottom of the image, rather the image should extend a bit below the baseline.  This is what TeX calls "depth".  When this is enabled, the images put into the HTML document will get a ``vertical-align`` style that correctly aligns the baselines. Project-Id-Version:  sphinx-doc-1.2.0
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2015-03-11 04:27+0000
PO-Revision-Date: 2013-01-28 12:44+0000
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language-Team: Spanish (http://www.transifex.com/sphinx-doc/sphinx-doc-1_2_0/language/es/)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.2.0
 :mod:`.mathbase` defines these new markup elements: :mod:`.mathbase` is not meant to be added to the :confval:`extensions` config value, instead, use either :mod:`sphinx.ext.pngmath` or :mod:`sphinx.ext.mathjax` as described below. :mod:`sphinx.ext.jsmath` -- Render math via JavaScript :mod:`sphinx.ext.mathjax` -- Render math via JavaScript :mod:`sphinx.ext.pngmath` -- Render math as PNG images Additional LaTeX code to put into the preamble of the short LaTeX files that are used to translate the math snippets.  This is empty by default.  Use it e.g. to add more packages whose commands you want to use in the math. Additional arguments to give to dvipng, as a list.  The default value is ``['-gamma', '1.5', '-D', '110', '-bg', 'Transparent']`` which makes the image a bit darker and larger then it is by default, and produces PNGs with a transparent background. Additional arguments to give to latex, as a list.  The default is an empty list. Because MathJax (and the necessary fonts) is very large, it is not included in Sphinx. Default: true.  If false, do not add the LaTeX code as an "alt" attribute for math images. Directive for displayed math (math that takes the whole line for itself). For example, if you put JSMath into the static path of the Sphinx docs, this value would be ``jsMath/easy/load.js``.  If you host more than one Sphinx documentation set on one server, it is advisable to install jsMath in a shared location. For example, if you put MathJax into the static path of the Sphinx docs, this value would be ``MathJax/MathJax.js``.  If you host more than one Sphinx documentation set on one server, it is advisable to install MathJax in a shared location. For more details, look into the documentation of the `AmSMath LaTeX package`_. In addition, each single equation is set within a ``split`` environment, which means that you can have multiple aligned lines in an equation, aligned at ``&`` and separated by ``\\``:: Keep in mind that when you put math markup in **Python docstrings** read by :mod:`autodoc <sphinx.ext.autodoc>`, you either have to double all backslashes, or use Python raw strings (``r"raw"``). Math support in Sphinx Normally, equations are not numbered.  If you want your equation to get a number, use the ``label`` option.  When given, it selects an internal label for the equation, by which it can be cross-referenced, and causes an equation number to be issued.  See :rst:role:`eqref` for an example.  The numbering style depends on the output format. Now includes ``-bg Transparent`` by default. Role for cross-referencing equations via their label.  This currently works only within the same document.  Example:: Role for inline math.  Use like this:: Since mathematical notation isn't natively supported by HTML in any way, Sphinx supports math in documentation with several extensions. Since this setting is not portable from system to system, it is normally not useful to set it in ``conf.py``; rather, giving it on the :program:`sphinx-build` command line via the :option:`-D` option should be preferable, like this:: The basic math support is contained in :mod:`sphinx.ext.mathbase`. Other math support extensions should, if possible, reuse that support too. The command name with which to invoke LaTeX.  The default is ``'latex'``; you may need to set this to a full path if ``latex`` is not in the executable search path. The command name with which to invoke ``dvipng``.  The default is ``'dvipng'``; you may need to set this to a full path if ``dvipng`` is not in the executable search path. The default is the ``http://`` URL that loads the JS files from the `MathJax CDN <http://docs.mathjax.org/en/latest/start.html>`_.  If you want MathJax to be available offline, you have to donwload it and set this value to a different path. The directive supports multiple equations, which should be separated by a blank line:: The input language for mathematics is LaTeX markup.  This is the de-facto standard for plain-text math notation and has the added advantage that no further translation is necessary when building LaTeX output. The path can be absolute or relative; if it is relative, it is relative to the ``_static`` directory of the built docs. The path to the JavaScript file to include in the HTML files in order to load JSMath.  There is no default. The path to the JavaScript file to include in the HTML files in order to load MathJax. There are various config values you can set to influence how the images are built: There is also an option ``nowrap`` that prevents any wrapping of the given math in a math environment.  When you give this option, you must make sure yourself that the math is properly set up.  For example:: This extension puts math as-is into the HTML files.  The JavaScript package MathJax_ is then loaded and transforms the LaTeX markup to readable math live in the browser. This extension renders math via LaTeX and dvipng_ into PNG images.  This of course means that the computer where the docs are built must have both programs available. This extension works just as the MathJax extension does, but uses the older package jsMath_.  It provides this config value: This value should only contain the path to the latex executable, not further arguments; use :confval:`pngmath_latex_args` for that purpose. Unfortunately, this only works when the `preview-latex package`_ is installed.  Therefore, the default for this option is ``False``. When the math is only one line of text, it can also be given as a directive argument:: You can also give a full ``http://`` URL different from the CDN URL. ``dvipng`` has the ability to determine the "depth" of the rendered text: for example, when typesetting a fraction inline, the baseline of surrounding text should not be flush with the bottom of the image, rather the image should extend a bit below the baseline.  This is what TeX calls "depth".  When this is enabled, the images put into the HTML document will get a ``vertical-align`` style that correctly aligns the baselines. 