# DocPad Configuration File
# http://docpad.org/docs/config

# Define the DocPad Configuration
docpadConfig = {
  plugins:
    handlebars:
        helpers:
            # Expose docpads 'getBlock' function to handlebars
            getBlock: (type, additional...) ->
                additional.pop() # remove the hash object
                @getBlock(type).add(additional).toHTML()
        partials:
            title: '<h1>{{document.title}}</h1>'
            goUp: '<a href="#">Scroll up</a>'             	
}

# Export the DocPad Configuration
module.exports = docpadConfig