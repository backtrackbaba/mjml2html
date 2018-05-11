# Cleans the HTML Output Directory
# src/html/
def clean()
    a = `ls src/html/ | wc -l`
    `rm src/html/*` if (a != "0") 
    puts "Cleaned Output Directory"
end

# Compiles the mjml files into HTML
def compile()
    a = Dir["src/mjml/templates/**/*.mjml"]
    for file in a
        loc = file.split('/', 1).last.chomp('.mjml')
        name = file.split('#{loc}').last.chomp('.mjml')
        source = name.split('/').last
        `mjml #{name}.mjml -o src/html/#{source}.html`
        puts "Successfully Compiled #{loc}.mjml"
    end
end

# Automates Opening of Google Chrome at the HTML Source Path
def render()
    a = Dir["src/html/*.html"]
    for file in a 
        name = file.split('/').last
        `open -a "Google Chrome" $PWD/src/html/#{name}`
    end
end

clean
compile
render