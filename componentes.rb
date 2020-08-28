require_relative 'request'

# api_end = 'https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000&api_key='
# api_key = 'dJ8J0ttqoVilZVljNXysOYeb1pzwRsewyq3aqxfs'

def request(url, api_key)
    photos = get_data("#{url}" + "#{api_key}")
    return photos
end

# api_roverph = request(api_end, api_key)

#build_web_page

def head
    head = "
    <html>
    <head>
    </head>
    <body>
    "
end

def body
    api_end = 'https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000&api_key='
    api_key = 'dJ8J0ttqoVilZVljNXysOYeb1pzwRsewyq3aqxfs'
    
    body = "#{request(api_end, api_key)}"
end


def foot
    foot = "
    </body>
    </html>
    "
end

File.write('./index.html', (head() + body() + foot()))