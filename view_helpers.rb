module ViewHelpers
  def config
    d||=YAML.load_file(File.join(File.dirname(__FILE__), 'config.yml'))
    return d
  end

  # Relative version image tag
  def ensure_path(source, path)
    if source =~ /^(\/|https?)/
      return source
    end

    File.join('', path, source)[1..-1]
  end

  def image_tag(src, html_options = {})
    src = "#{Compass.configuration.images_dir}/#{src}" unless src =~ /^(https?:|\/)/
    tag(:img, html_options.merge(:src=>src))
  end

  def bower_script_tag(*sources)
    options = extract_options!(sources)

    base_folder = "vendor"
    sources.map do |source|
      content_tag('script', '', {
        'type' => 'text/javascript',
        'src' => ensure_path(ensure_extension(source, 'js'), base_folder)
      }.with_indifferent_access.merge(options))
    end.join("\n")
  end

  def bower_stylesheet_tag(*sources)
    options = extract_options!(sources)

    base_folder = "vendor"
    sources.map do |source|
      tag('link', {
        'rel' => 'stylesheet',
        'type' => 'text/css',
        'media' => 'screen',
        'href' => ensure_path(ensure_extension(source, 'css'), base_folder)
      }.with_indifferent_access.merge(options))
    end.join("\n")
  end
end
