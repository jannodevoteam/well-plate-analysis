---
- dashboard: well_plate_read_distribution
  title: Well Plate Read Distribution
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: PVu6Q2tc6lx3tg5F08ergV
  elements:
  - title: Well Reads
    name: Well Reads
    model: well-plate-analysis
    explore: well_plate_samples
    type: looker_grid
    fields: [well_row, well_column, max_reads_1]
    pivots: [well_column]
    filters: {}
    sorts: [well_column, well_row 0]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression:
      label: Max Reads
      value_format:
      value_format_name:
      based_on: well_plate_samples.reads
      _kind_hint: measure
      measure: max_reads_1
      type: max
      _type_hint: number
      filters: {}
    - category: dimension
      expression: substring(${well_plate_samples.id}, length(${well_plate_samples.id})
        - 2,1)
      label: Well Row
      value_format:
      value_format_name:
      dimension: well_row
      _kind_hint: dimension
      _type_hint: string
    - category: dimension
      expression: substring(${well_plate_samples.id},length(${well_plate_samples.id})
        - 1, 2)
      label: Well Column
      value_format:
      value_format_name:
      dimension: well_column
      _kind_hint: dimension
      _type_hint: string
    query_timezone: Europe/Amsterdam
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_cell_visualizations:
      max_reads_1:
        is_active: true
        value_display: false
        palette:
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    defaults_version: 1
    hidden_pivots: {}
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    show_null_points: true
    interpolation: linear
    truncate_column_names: false
    listen:
      Sample ID: well_plate_samples.id
    row: 9
    col: 0
    width: 12
    height: 10
  - title: Table Heat Map View
    name: Table Heat Map View
    model: well-plate-analysis
    explore: well_plate_samples
    type: looker_grid
    fields: [well_row, well_column, max_reads_1]
    pivots: [well_column]
    filters: {}
    sorts: [well_column, well_row 0]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression:
      label: Max Reads
      value_format:
      value_format_name:
      based_on: well_plate_samples.reads
      _kind_hint: measure
      measure: max_reads_1
      type: max
      _type_hint: number
      filters: {}
    - category: dimension
      expression: substring(${well_plate_samples.id}, length(${well_plate_samples.id})
        - 2,1)
      label: Well Row
      value_format:
      value_format_name:
      dimension: well_row
      _kind_hint: dimension
      _type_hint: string
    - category: dimension
      expression: substring(${well_plate_samples.id},length(${well_plate_samples.id})
        - 1, 2)
      label: Well Column
      value_format:
      value_format_name:
      dimension: well_column
      _kind_hint: dimension
      _type_hint: string
    query_timezone: Europe/Amsterdam
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: false
    table_theme: unstyled
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
    show_sql_query_menu_options: false
    column_order: []
    show_totals: true
    show_row_totals: true
    truncate_header: true
    minimum_column_width: 75
    series_labels: {}
    series_column_widths:
      well_row: 10
    series_cell_visualizations:
      max_reads_1:
        is_active: false
        value_display: false
        palette:
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_pivots: {}
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    show_null_points: true
    interpolation: linear
    truncate_column_names: false
    listen:
      Sample ID: well_plate_samples.id
    row: 0
    col: 0
    width: 24
    height: 9
  - title: Contribution Per Family Group
    name: Contribution Per Family Group
    model: well-plate-analysis
    explore: well_plate_samples
    type: looker_funnel
    fields: [well_plate_samples.count, well_plate_samples.dominant_family]
    filters: {}
    sorts: [well_plate_samples.count desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - measure: count_of_well
      based_on: well_plate_samples.well
      expression: ''
      label: Count of Well
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    query_timezone: Europe/Amsterdam
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: hidden
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    color_application:
      collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      palette_id: b88b6581-484a-4f48-b65b-6631648f867e
      options:
        steps: 5
        reverse: true
    isStepped: false
    labelOverlap: false
    up_color: false
    down_color: false
    total_color: false
    show_value_labels: false
    show_x_axis_ticks: true
    show_x_axis_label: true
    x_axis_scale: auto
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_gridlines: true
    x_axis_gridlines: false
    show_view_names: false
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    label_density: 25
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_pivots: {}
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    groupBars: true
    labelSize: 10pt
    showLegend: true
    listen:
      Sample ID: well_plate_samples.id
    row: 9
    col: 12
    width: 12
    height: 10
  filters:
  - name: Sample ID
    title: Sample ID
    type: field_filter
    default_value: "%I23-1327%"
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: well-plate-analysis
    explore: well_plate_samples
    listens_to_filters: []
    field: well_plate_samples.id
