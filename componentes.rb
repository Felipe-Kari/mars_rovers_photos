require_relative 'request'

url = 'https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000&api_key='
api_key = 'dJ8J0ttqoVilZVljNXysOYeb1pzwRsewyq3aqxfs'

def request(url, api_key)
    photos = get_data("#{url}" + "#{api_key}")
    return photos
end

# puts request(url, api_key)