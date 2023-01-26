class NumbersController < ApplicationController
  def winners
    @zebra = Array.new

    5.times do
      giraffe = rand(1...100)
      
      @zebra.push(giraffe)
    end

    render({ :template => "lottery_stuff/woohoo.html.erb"})
  end 

  def losers
    @hippo = Array.new

    5.times do
      giraffe = rand(1...100)

      @hippo.push(giraffe)
    end
  
    render({ :template => "lottery_stuff/darn.html.erb"})
  end
end
