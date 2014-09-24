guard :rspec, all_after_pass: true, cmd: 'rspec' do
  watch(%r{^lib/(.+)\.rb$})     { "spec" }
  watch(%r{^spec/(.+)\.rb$})     { "spec" }
end