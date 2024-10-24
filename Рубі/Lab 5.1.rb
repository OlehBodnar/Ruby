def replace_preprocessor_directives(code)
  preprocessor_regex = /^#\s*\w+/i

  code.map! do |line|
    if line =~ preprocessor_regex
      
      line.gsub!('#', '_')
    
      line.upcase!
    end
    line
  end
end
code = [
  "#include <stdio.h>",
  "#define MIN 50",
  "int main() {",
  "  #if MIN <25",
  "    printf(\"MIn is smaller\");",
  "  #endif",
  "  return 0;",
  "}"
]
p "Оригінальний код:"
puts code
replace_preprocessor_directives(code)
puts"\nКод після заміни директив препроцесора:"
puts code
