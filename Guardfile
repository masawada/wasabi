guard :rspec, cmd: 'bundle exec rspec' do
  watch('spec/spec_helper.rb')          { 'spec' }
  watch(%r{^spec/models/(.+)\.rb$})     { |m| "spec/models/#{m[1]}.rb"}
  watch(%r{^app/models/(.+)\.rb$})      { |m| "spec/models/#{m[1]}_spec.rb"}
end
