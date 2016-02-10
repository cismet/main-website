Encoding.default_external = 'utf-8'

activate :i18n
#  localize :path => "/:locale/", :mount_at_root => :de, :langs => [:de, :en]
set :markdown_engine, :redcarpet
set :markdown, :fenced_code_blocks => true,
              :autolink => true,
               :smartypants => true,
	       :tables => true


         # Per-page layout changes:
         #
         # With no layout
         page '/*.xml', layout: false
         page '/*.json', layout: false
         page '/*.txt', layout: false

         # With alternative layout
         # page "/path/to/file.html", layout: :otherlayout

         # Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
         # proxy "/this-page-has-no-template.html", "/template-file.html", locals: {
         #  which_fake_page: "Rendering a fake page with a local variable" }

         # General configuration

         # Reload the browser automatically whenever files change
         configure :development do
           activate :livereload
         end

         ###
         # Helpers
         ###

         # Methods defined in the helpers block are available in templates
         # helpers do
         #   def some_helper
         #     "Helping"
         #   end
         # end

         # Build-specific configuration
         configure :build do
           # Minify CSS on build
           # activate :minify_css

           # Minify Javascript on build
           # activate :minify_javascript
         end
