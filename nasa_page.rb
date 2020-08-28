require_relative 'componentes'

def build_web_page
    api_end = 'https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000&api_key='
    api_key = 'dJ8J0ttqoVilZVljNXysOYeb1pzwRsewyq3aqxfs'

    index = head() + body(request(api_end, api_key)) + foot()

    return index
end

File.write('./index.html', build_web_page())