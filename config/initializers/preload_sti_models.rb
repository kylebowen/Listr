# Rails lazy loads models in development
# this loads our STI models so dev functions like prod & test environs
if Rails.env.development?
  %w[list basic grocery instructional todo].each do |c|
    require_dependency File.join("app","models","#{c}.rb")
  end
end
