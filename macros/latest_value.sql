{% macro get_highest_value(model_ref, value_column) %}
    {% set query %}
        select max({{ value_column }}) as max_value
        from {{ ref(model_ref) }}
    {% endset %}

    {% set results = run_query(query) %}
    {% if results and results.columns[0].values() %}
        {% set max_value = results.columns[0].values()[0] %}
        {{ max_value }}
    {% else %}
        NULL
    {% endif %}
{% endmacro %}
