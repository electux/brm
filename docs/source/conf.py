# -*- coding: utf-8 -*-

project = 'brm'
copyright = '2021, Vladimir Roncevic <elektron.ronca@gmail.com>'
author = 'Vladimir Roncevic <elektron.ronca@gmail.com>'
version = u'1.0.0'
release = 'https://github.com/electux/brm/releases'
extensions = []
templates_path = ['_templates']
source_suffix = '.rst'
master_doc = 'index'
exclude_patterns = []
html_theme = 'sphinx_rtd_theme'
html_static_path = ['_static']
htmlhelp_basename = 'brmdoc'
latex_elements = {}
latex_documents = [(
    master_doc, 'brm.tex', u'brm Documentation',
    u'Vladimir Roncevic \\textless{}elektron.ronca@gmail.com\\textgreater{}',
    'manual'
)]
man_pages = [(
    master_doc, 'brm', u'brm Documentation', [author], 1
)]
texinfo_documents = [(
    master_doc, 'brm', u'brm Documentation', author, 'brm',
    'One line description of project.', 'Miscellaneous'
)]
epub_title = project
epub_exclude_files = ['search.html']
