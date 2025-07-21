{% snapshot snap_tags %}

{{
    config(
        target_schema='snapshot',
        unique_key=['user_id', 'movie_id', 'tag'],
        strategy='timestamp',
        updated_at='tag_timestamp',
        invalidated_hard_delete=True
    )
}}

SELECT 
    user_id,
    movie_id,
    tag,
    {{ dbt_utils.generate_surrogate_key(['user_id', 'movie_id', 'tag']) }} AS row_key,
    CAST(rating_timestamp AS TIMESTAMP_LTZ) AS tag_timestamp
FROM {{ ref('src_tags') }}

{% endsnapshot %}
