guard :ruby do
  watch(%r{.*test\.rb})
  watch(%r{([^/]+)\.rb})     { |m| "#{m[1]}_test.rb" }
end
