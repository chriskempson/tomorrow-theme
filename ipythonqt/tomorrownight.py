# -*- coding: utf-8 -*-
"""
    pygments.styles.autumn
    ~~~~~~~~~~~~~~~~~~~~~~

    Tomorrow Night theme for ipython qtconsole (invoke with
    ipython qtconsole --style=tomorrownight)

    See https://github.com/chriskempson/tomorrow-theme for theme info

    :copyright: Copyright 2012 André Risnes, risnes@gmail.com
    :license: BSD, see LICENSE for details.
"""

from pygments.style import Style
from pygments.token import Keyword, Name, Comment, String, Error, \
     Number, Operator, Generic, Whitespace, Text, Punctuation

class TomorrownightStyle(Style):
    """
    Tomorrow Night theme for ipython qtconsole
    """
    background_color = '#1d1f21'
    highlight_color = '#373b41'

    styles = {
        Whitespace:                 background_color,

        Text:                       '#c5c8c6',
        Punctuation:                '#81a2be',

        Comment:                    '#b5bd68',
        Comment.Preproc:            'italic #b5bd68',
        Comment.Special:            'italic #b5bd68',

        Keyword:                    '#81a2be',
        Keyword.Type:               '#f0c674',
        Keyword.Namespace:          '#de935f',

        Operator.Word:              '#81a2be',

        Name:                       '#de935f',
        Name.Builtin:               '#de935f',
        Name.Function:              '#8abeb7',
        Name.Class:                 '#f0c674',
        Name.Namespace:             '#81a2be',
        Name.Variable:              '#de935f',
        Name.Constant:              '#c5c8c6',
        Name.Entity:                'bold #00aaaa',
        Name.Attribute:             '#de935f',
        Name.Tag:                   'bold #b5bd68',
        Name.Decorator:             '#cc6666',

        String:                     '#b5bd68',
        String.Symbol:              '#b5bd68',
        String.Regex:               '#b5bd68',

        Number:                     '#cc6666',

        Generic.Heading:            'bold #c5c8c6',
        Generic.Subheading:         'bold #c5c8c6',
        Generic.Deleted:            '#de935f',
        Generic.Inserted:           '#8abeb7',
        Generic.Error:              '#cc6666',
        Generic.Emph:               'italic',
        Generic.Strong:             'bold',
        Generic.Prompt:             '#b5bd68',
        Generic.Output:             '#c5c8c6',
        Generic.Traceback:          '#c5c8c6',

        Error:                      '#cc6666'
    }
