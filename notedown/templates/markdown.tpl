{% extends 'display_priority.tpl' %}

{% block input %}
{{ cell | create_cell_metadata }}
{{ cell | create_input_codeblock }}
{% endblock input %}

{% block markdowncell scoped %}
{{ cell | create_cell_metadata }}
{{ cell.source | wordwrap(80, False) }}
{% endblock markdowncell %}

{% block outputs %}
{{ cell | create_output_block }}
{% endblock outputs %}

{% block headingcell scoped %}
{{ '#' * cell.level }} {{ cell.source | replace('\n', ' ') }}
{% endblock headingcell %}

{% block unknowncell scoped %}
{{ cell | create_cell_metadata }}
```
cell.source
```
{% endblock unknowncell %}

{% block pyerr %}
{{ super() }}
{% endblock pyerr %}

{% block traceback_line %}
{{ line | indent | strip_ansi }}
{% endblock traceback_line %}
