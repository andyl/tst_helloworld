require 'sinatra'

set :bind, '0.0.0.0'

get '/' do
  vhost = ENV["VIRTUAL_HOST"] || "NA"
  url   = "https://github.com/andyl/tst_helloworld"
  link  = "<a href='#{url}' target='_blank'>#{url}</a>"
  <<-HTML
  <style>
    table {border-collapse: collapse;}
    table, th, td {border: 1px solid black;}
    th, td {padding: 10px;}
  </style>
  <h2>TST_HELLOWORLD</h2>
  <table>
  <tr><td>TIME</td><td>#{Time.now.strftime("%m-%d %H:%M:%S")}</td></tr>
  <tr><td>VHOST</td><td>#{vhost}</td></tr>
  <tr><td>SOURCE</td><td>#{link}</td></tr>
  </table>
  HTML
end

