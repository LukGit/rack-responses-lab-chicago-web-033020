class Application
  require 'date'
  def call(env)
    resp = Rack::Response.new
 
    num_1 = Kernel.rand(1..20)
    num_2 = Kernel.rand(1..20)
    num_3 = Kernel.rand(1..20)
 
    # resp.write "#{num_1}\n"
    # resp.write "#{num_2}\n"
    # resp.write "#{num_3}\n"
    # (Time.now.to_i % 2).zero? ?  ["<em>Hello</em>"] : ["<strong>Hello</strong>"]
    dt = Time.now.strftime('%m/%d/%Y %H:%M')
    datetime = DateTime.strptime(dt, '%m/%d/%Y %H:%M')
    if datetime.hour > 12
      resp.write "Good Afternoon! #{Time.now.to_i}"
    else
      resp.write "Good Morning!"
    end
 
    resp.finish
  end
 
end