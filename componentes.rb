require_relative 'request'

#request

def request(url, api_key)
    data = get_data("#{url}" + "#{api_key}")
    return data
end

#build_web_page

def head
    head = "<html>\n"+
    '  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

    <title>Mars Rover Photos</title>
  </head>
  <body>'+"\n"
end

def body(api)
    body = "    <h1 class='text-center p-4'>Mars Rover Photos</h1>\n"
    body += "    <div class='row row-cols-1 row-cols-md-3 container m-auto'>\n"
    
    api["photos"].each do |k|
        k.each do |k2, v|
            if k2 == "img_src"
                body += "        <div class='col mb-4'>
                <div class='card h-100'>
                    <img src='#{v}' class='card-img-top' alt='...'>
                </div>
            </div>\n"
            end
        end
    end
    body += "    </div>\n"
end


def foot
    foot = '    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
  </body>
</html>'
end